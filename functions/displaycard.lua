-- hacky way to use the dt variable from `Game:update` in `Moveable:update`
local poke_dt = 0
local upd = Game.update
function Game:update(dt)
  poke_dt = dt
  upd(self, dt)
end

PokeDisplayCard = Moveable:extend()

function PokeDisplayCard:init(args, x, y, w, h)
  if args.existing_key then
    return self:init_from_existing(args.existing_key, args, x, y, w, h)
  end

  self.display_text = args.display_text
  self.pos = args.pos
  self.soul_pos = args.soul_pos

  if self.soul_pos then
    self.can_hide_center = args.layer ~= 'center'
    self.can_hide_soul = args.layer ~= 'soul'
  end

  self.animation_key = args.anim_key
  self.t = 0

  w = w or args.w or G.CARD_W
  h = h or args.h or G.CARD_H

  Moveable.init(self, x, y, w, h)

  self.atlas = args.atlas
  self.has_shiny = G.ASSET_ATLAS[self.atlas .. 'Shiny'] ~= nil
  self.shiny = false

  self.shader = args.shader

  self:set_sprites()

  self.highlighted = false

  -- These are required so that CardArea doesn't crash the game
  self.ability = {}
  self.update_alert = function() end
end

function PokeDisplayCard:highlight(is_highlighted)
  self.highlighted = is_highlighted
end

function PokeDisplayCard:set_card_area(area)
  self.area = area
  self.parent = area
end

function PokeDisplayCard:remove_card_area()
  self.area = nil
  self.parent = nil
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

  if not self.states.focus.is and self.children.focused_ui then
    self.children.focused_ui:remove()
    self.children.focused_ui = nil
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
    elseif self.has_shiny then
      self.shiny = true
      local shiny_atlas = self.atlas .. 'Shiny'
      self.children.center.atlas = G.ASSET_ATLAS[shiny_atlas]
      if self.children.floating_sprite then
        self.children.floating_sprite.atlas = G.ASSET_ATLAS[shiny_atlas]
      end
      self:juice_up(0.05, 0.03)
    end
  end
end

function PokeDisplayCard:cycle_layer_visibility()
  if self.can_hide_soul and self.can_hide_center then
    if not self.hide_center and not self.hide_soul then
      self.hide_soul = not self.hide_soul
    elseif not self.hide_center then
      self.hide_soul = not self.hide_soul
      self.hide_center = not self.hide_center
    elseif not self.hide_soul then
      self.hide_center = not self.hide_center
    end
  elseif self.can_hide_soul then
    self.hide_soul = not self.hide_soul
  elseif self.can_hide_center then
    self.hide_center = not self.hide_center
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

  local h_popup_nodes = {}

  if self.display_text then
    table.insert(h_popup_nodes, {
      n = G.UIT.R, config = { align = "cm" }, nodes = {
        {
          n = G.UIT.T,
          config = {
            text = self.display_text,
            colour = G.C.UI.TEXT_LIGHT,
            scale = 0.55 - 0.004 * #self.display_text,
            shadow = true
          }
        }
      }
    })
  end

  if self.has_shiny then
    table.insert(h_popup_nodes, {
      n = G.UIT.R, config = { align = "cm" }, nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize("poke_artist_credits_toggle_shiny"),
            colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.65),
            scale = 0.30,
            shadow = true
          }
        }
      }
    })
  end

  if self.can_hide_center or self.can_hide_soul then
    local localize_key =
        (not self.can_hide_soul and "poke_artist_credits_toggle_center_layer")
        or (not self.can_hide_center and "poke_artist_credits_toggle_soul_layer")
        or "poke_artist_credits_cycle_draw_layers"

    table.insert(h_popup_nodes, {
      n = G.UIT.R, config = { align = "cm" }, nodes = {
        {
          n = G.UIT.T,
          config = {
            text = localize(localize_key),
            colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.65),
            scale = 0.28,
            shadow = true
          }
        }
      }
    })
  end

  if #h_popup_nodes > 0 then
    self.config.h_popup = {
      n = G.UIT.ROOT,
      config = { align = 'cm', colour = G.C.CLEAR },
      nodes = {
        {
          n = G.UIT.R,
          config = { align = "cm", padding = 0.05, r = 0.12, colour = lighten(G.C.JOKER_GREY, 0.5), emboss = 0.07 },
          nodes = {
            {
              n = G.UIT.C,
              config = { align = "cm", minw = G.CARD_W, r = 0.1, padding = 0.07, colour = adjust_alpha(darken(G.C.BLACK, 0.1), 0.8) },
              nodes = h_popup_nodes
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

  if self.states.focus.is and not self.children.focused_ui then
    self.children.focused_ui = G.UIDEF.card_focus_ui(self)
  end
end

function PokeDisplayCard:draw(layer)
  layer = layer or 'both'

  G.shared_shadow = self.children.center

  if not self.hide_center and G.SETTINGS.GRAPHICS.shadows == 'On' and (layer == 'shadow' or layer == 'both') then
    self.shadow_height = 0 * (0.08 + 0.4 * math.sqrt(self.velocity.x ^ 2)) + (self.states.drag.is and 0.35 or 0.1)
    G.shared_shadow:draw_shader('dissolve', self.shadow_height)
  end

  if layer == 'card' or layer == 'both' then
    if self.children.focused_ui then
      self.children.focused_ui:draw()
    end

    if self.states.hover.is then
      self.hover_tilt = 1
      self.tilt_var = {mx = 0, my = 0, dx = 0, dy = 0, amt = 0}
      self.tilt_var.mx, self.tilt_var.my = G.CONTROLLER.cursor_position.x, G.CONTROLLER.cursor_position.y
      self.tilt_var.amt = math.abs(self.hover_offset.y + self.hover_offset.x - 1)*0.3
    else
      self.hover_tilt = nil
    end

    if not self.hide_center then
      self.children.center:draw_shader('dissolve')

      if self.shader then
        self.ARGS.send_to_shader = self.ARGS.send_to_shader or {}
        self.ARGS.send_to_shader[1] = math.min(self.VT.r * 3, 1) + G.TIMERS.REAL / 28 + (self.juice and self.juice.r * 20 or 0)
        self.ARGS.send_to_shader[2] = G.TIMERS.REAL
        self.children.center:draw_shader(self.shader, nil, self.ARGS.send_to_shader)
      end
    end

    if self.children.floating_sprite and not self.hide_soul then
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

function PokeDisplayCard:init_from_existing(key, args, x, y, w, h)
  -- There is a very good argument for just using a regular game object instead if the item already exists, but just don't think about it
  args = args or {}
  local new_args = {}
  local existing_obj

  if args.set == 'Seal' then
    existing_obj = G.P_SEALS[key]
  elseif args.set == 'Tag' then
    existing_obj = G.P_TAGS[key]
  else
    existing_obj = G.P_CENTERS[key]
  end

  new_args.atlas = existing_obj.atlas
  new_args.pos = existing_obj.pos
  new_args.soul_pos = existing_obj.soul_pos

  if args.set == 'Booster' or args.set == 'Sticker' then
    new_args.display_text = localize { type = 'name_text', set = 'Other', key = key }
  elseif args.set == 'Seal' then
    new_args.display_text = localize { type = 'name_text', set = 'Other', key = key..'_seal' }
  else
    new_args.display_text = localize { type = 'name_text', set = args.set, key = key }
  end

  if args.set == 'Booster' or args.set == 'Spectral' or key == 'poke_silver' then
    new_args.shader = 'booster'
  end
  if args.set == 'Voucher' then
    new_args.shader = 'voucher'
  end

  if args.set == 'Booster' then
    w = G.CARD_W*1.27
    h = G.CARD_H*1.27
  end

  if args.set == 'Tag' then
    w = 0.8
    h = 0.8
  end

  self:init(new_args, x, y, w, h)
end

poke_input_manager:add_listener({ 'right_click', 'right_stick' }, function(target)
  if target and target:is(PokeDisplayCard) then
    target:toggle_shiny()
  end
end)

poke_input_manager:add_listener('double_click', function(target)
  if target and target:is(PokeDisplayCard) then
    target:cycle_layer_visibility()
  end
end)

-- Controller support
local is_node_focusable_ref = G.CONTROLLER.is_node_focusable
function G.CONTROLLER:is_node_focusable(node)
  if not self.screen_keyboard and node:is(PokeDisplayCard) then
    return true
  end
  return is_node_focusable_ref(self, node)
end

local game_draw_ref = Game.draw
function Game:draw()
  game_draw_ref(self)
  local target = self.CONTROLLER.focused.target
  if target and target:is(PokeDisplayCard) then
    love.graphics.push()
    target:translate_container()
    target:draw()
    love.graphics.pop()
  end
end
