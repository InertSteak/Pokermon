-- hacky way to use the dt variable from `Game:update` in `Moveable:update`
local poke_dt = 0
local upd = Game.update
function Game:update(dt)
  poke_dt = dt
  upd(self, dt)
end

PokeDisplayCard = Moveable:extend()

function PokeDisplayCard:init(args, x, y, w, h)
  self.display_text = args.display_text
  self.pos = args.pos
  self.soul_pos = args.soul_pos

  self.animation_key = args.anim_key
  self.t = 0

  w = w or args.w or G.CARD_W
  h = h or args.h or G.CARD_H

  Moveable.init(self, x, y, w, h)

  self.atlas = args.atlas
  self.shiny = false

  self:set_sprites()

  -- These are required so that CardArea doesn't crash the game
  self.ability = {}
  self.set_card_area = function() end
  self.remove_from_area = function() end
  self.highlight = function() end
  self.update_alert = function() end
end

function PokeDisplayCard:update()
  if pokermon_config.poke_enable_animations and self.animation_key then
    -- Animation code modified from Aura
    local dt = poke_dt

    local next_frame = false
    local anim = AnimatedPokemon[self.animation_key]
    self.t = self.t + dt
    if self.t > 1 / (anim.fps or 10) then
      self.t = self.t - 1 / (anim.fps or 10)
      next_frame = true
    end
    if next_frame then
      local loc = self.pos.y * (anim.frames_per_row or anim.frames) + self.pos.x
      loc = loc + 1
      if loc >= anim.frames then loc = anim.start_frame or 0 end
      self.pos.x = loc % (anim.frames_per_row or anim.frames)
      self.pos.y = math.floor(loc / (anim.frames_per_row or anim.frames))
      self.children.center:set_sprite_pos(self.pos)
      if self.soul_pos then
        self.soul_pos.x = self.pos.x
        self.soul_pos.y = self.pos.y
        self.children.floating_sprite:set_sprite_pos(self.soul_pos)
      end
    end
  end
end

function PokeDisplayCard:toggle_shiny()
  if self.atlas then
    if self.shiny then
      self.shiny = false
      self.children.center.atlas = G.ASSET_ATLAS[self.atlas]
      if self.children.floating_sprite then
        self.children.floating_sprite.atlas = G.ASSET_ATLAS[self.atlas]
      end
      self:juice_up(0.05, 0.03)
    else
      local shiny_atlas = self.atlas .. 'Shiny'
      if G.ASSET_ATLAS[shiny_atlas] then
        self.shiny = true
        self.children.center.atlas = G.ASSET_ATLAS[shiny_atlas]
        if self.children.floating_sprite then
          self.children.floating_sprite.atlas = G.ASSET_ATLAS[shiny_atlas]
        end
        self:juice_up(0.05, 0.03)
      end
    end
  end
end

function PokeDisplayCard:set_sprites()
  self.children.center = Sprite(self.T.x, self.T.y, self.T.w, self.T.h, G.ASSET_ATLAS[self.atlas], self.pos)
  self.children.center.states.hover = self.states.hover
  self.children.center.states.click = self.states.click
  self.children.center.states.drag = self.states.drag
  self.children.center.states.collide.can = false
  self.children.center:set_role({ major = self, role_type = 'Glued', draw_major = self })

  if self.soul_pos then
    self.children.floating_sprite = Sprite(self.T.x, self.T.y, self.T.w, self.T.h, G.ASSET_ATLAS[self.atlas], self.soul_pos)
    self.children.floating_sprite.role.draw_major = self
    self.children.floating_sprite.states.hover.can = false
    self.children.floating_sprite.states.click.can = false
  end
end

-- CardArea calls this without arguments, which messes with Moveable's implementation
function PokeDisplayCard:hard_set_T(X, Y, W, H)
  local x = (X or self.T.x)
  local y = (Y or self.T.y)
  local w = (W or self.T.w)
  local h = (H or self.T.h)
  Moveable.hard_set_T(self, x, y, w, h)
  self.children.center:hard_set_T(x, y, w, h)
end

function PokeDisplayCard:hover()
  self:juice_up(0.05, 0.03)
  play_sound('paper1', math.random() * 0.2 + 0.9, 0.35)

  if self.display_text then
    self.config.h_popup = {
      n = G.UIT.ROOT,
      config = { align = 'cm', colour = G.C.CLEAR },
      nodes = {
        {
          n = G.UIT.R,
          config = { align = "cm", padding = 0.05, r = 0.12, colour = lighten(G.C.JOKER_GREY, 0.5), emboss = 0.07 },
          nodes = {
            {
              n = G.UIT.R,
              config = { align = "cm", minw = G.CARD_W, r = 0.1, padding = 0.07, colour = adjust_alpha(darken(G.C.BLACK, 0.1), 0.8) },
              nodes = {
                { n = G.UIT.T, config = { text = self.display_text, colour = G.C.UI.TEXT_LIGHT, scale = 0.55 - 0.004 * #self.display_text, shadow = true } },
              }
            }
          }
        }
      }
    }

    self.config.h_popup_config = {
      major = self,
      parent = self,
      xy_bond = 'Strong',
      r_bond = 'Weak',
      wh_bond = 'Weak',
      type = 'bm',
      offset = { x = 0, y = 0.1 },
    }
  end

  Node.hover(self)
end

function PokeDisplayCard:draw(layer)
  layer = layer or 'both'

  G.shared_shadow = self.children.center

  if G.SETTINGS.GRAPHICS.shadows == 'On' and (layer == 'shadow' or layer == 'both') then
    self.shadow_height = 0 * (0.08 + 0.4 * math.sqrt(self.velocity.x ^ 2)) + (self.states.drag.is and 0.35 or 0.1)
    G.shared_shadow:draw_shader('dissolve', self.shadow_height)
  end

  if layer == 'card' or layer == 'both' then
    self.children.center:draw_shader('dissolve')

    if self.children.floating_sprite and not self.hide_soul_layer then
      -- For more on what this is about, ask LocalThunk
      local scale_mod = 0.07 + 0.02 * math.sin(1.8 * G.TIMERS.REAL) + 0.00 * math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL)) * math.pi * 14) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 3
      local rotate_mod = 0.05 * math.sin(1.219 * G.TIMERS.REAL) + 0.00 * math.sin((G.TIMERS.REAL) * math.pi * 5) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 2

      self.children.floating_sprite:draw_shader('dissolve', 0, nil, nil, self.children.center, scale_mod, rotate_mod, nil, 0.1 + 0.03 * math.sin(1.8 * G.TIMERS.REAL), nil, 0.6)
      self.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, self.children.center, scale_mod, rotate_mod)
    end
  end

  add_to_drawhash(self)
  self:draw_boundingrect()
end

function PokeDisplayCard:click()
  self.hide_soul_layer = not self.hide_soul_layer
end

poke_input_manager:add_listener('right_click', function(target)
  if target and target.toggle_shiny and type(target.toggle_shiny) == 'function' then
    target:toggle_shiny()
  end
end)
