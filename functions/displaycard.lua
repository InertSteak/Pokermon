PokeDisplayCard = Card:extend()

local get_default_args_from_existing = function(key, set)
  local defaults = {
    ['Seal'] = {
      existing_obj = G.P_SEALS[key],
      display_text = localize({type = 'name_text', set = 'Other', key = key .. '_seal'}),
    },
    ['Tag'] = {
      existing_obj = G.P_TAGS[key],
      w = 0.8,
      h = 0.8,
    },
    ['Blind'] = {
      existing_obj = G.P_BLINDS[key],
      w = 1.3,
      h = 1.3,
    },
    ['Booster'] = {
      w = G.CARD_W*1.27,
      h = G.CARD_H*1.27,
      display_text = localize({type = 'name_text', set = 'Other', key = key}),
      shader = 'booster',
    },
    ['Sticker'] = {
      display_text = localize({type = 'name_text', set = 'Other', key = key}),
    },
    ['Voucher'] = {
      shader = 'voucher',
    },
    ['Spectral'] = {
      shader = 'booster',
    },
  }

  local args = defaults[set] or {}

  args.existing_obj = args.existing_obj or G.P_CENTERS[key] or {}
  args.display_text = args.display_text or localize({type = 'name_text', set = set, key = key})

  args.atlas = args.existing_obj.atlas
  args.pos = args.existing_obj.pos
  args.soul_pos = args.existing_obj.soul_pos

  return args
end

function PokeDisplayCard:init(args, x, y, w, h)
  if args.existing_key then
    local default_args = get_default_args_from_existing(args.existing_key, args.set)
    args = SMODS.merge_defaults(args, default_args)
  end

  self.properties = {
    atlas = args.atlas,
    pos = args.pos,
    soul_pos = args.soul_pos,
  }

  self.display_text = args.display_text
  self.shader = args.shader

  -- To disable automatic `no_ui` while using vanilla tooltip functionality, set `display_text` to false
  if self.display_text == nil then self.no_ui = true end

  x = x or args.x or 0
  y = y or args.y or 0
  w = w or args.w or G.CARD_W
  h = h or args.h or G.CARD_H

  local base = args.base_center or 'c_base'
  local fake_center = setmetatable({}, {__index = function(_table, key)
    return self.properties[key] or G.P_CENTERS[base][key]
  end})

  self.components = {}

  for _, v in ipairs(args.components or {}) do
    v.display_card = self
    v:apply(args)
    self.components[#self.components+1] = v
  end

  Card.init(self, x, y, w, h, nil, fake_center)
end

function PokeDisplayCard:remove()
  for _, v in ipairs(self.components) do
    v.display_card = nil
  end

  Card.remove(self)
end

function PokeDisplayCard:get_component(component)
  for _, v in ipairs(self.components) do
    if v:is(component) then return v end
  end
end

function PokeDisplayCard:has_component(component)
  return self:get_component(component) ~= nil
end

function PokeDisplayCard:get_popup_UI()
  return {n=G.UIT.ROOT, config = {align="cm", colour = G.C.CLEAR}, nodes={
    {n=G.UIT.R, config={padding = 0.05, r = 0.12, colour = lighten(G.C.JOKER_GREY, 0.5), emboss = 0.07}, nodes={
      {n=G.UIT.R, config={align = "cm", padding = 0.07, r = 0.1, colour = adjust_alpha(darken(G.C.BLACK, 0.1), 0.8)}, nodes=self:get_popup_content()}
    }}
  }}
end

function PokeDisplayCard:get_popup_content()
  local text = self.display_text

  local content = {
    name_from_rows({{n=G.UIT.T, config={text = text, colour = G.C.UI.TEXT_LIGHT, scale = 0.55 - 0.004 * #text, shadow = true}}})
  }

  for _, v in ipairs(self.components) do
    if type(v.get_popup_content) == 'function' then
      local component_content = v:get_popup_content()
      if component_content then
        content[#content+1] = component_content
      end
    end
  end

  return content
end

function PokeDisplayCard:hover()
  Card.hover(self)

  if self.display_text and not self.no_ui then
    if self.children.h_popup then
      self.children.h_popup:remove()
      self.children.h_popup = nil
    end

    self.config.h_popup = self:get_popup_UI()

    Node.hover(self)
  end
end

SMODS.DrawStep {
  key = 'display_card_shader',
  order = 19,
  func = function(self, layer)
    if self.shader and self:is(PokeDisplayCard) then
      self.children.center:draw_shader(self.shader, nil, self.ARGS.send_to_shader)
    end
  end,
  conditions = {vortex = false, facing = 'front'},
}

-- Controller support
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

-- Components
PokeDisplayCardComponent = Object:extend()

local Component = PokeDisplayCardComponent

function Component:apply(args) return true end

-- -- Toggle Shiny Sprite
local ShinyToggleComponent = Component:extend()

function ShinyToggleComponent:apply(args)
  self.shiny = false

  self.atlas = args.atlas
  self.shiny_atlas = args.atlas .. 'Shiny'
end

function ShinyToggleComponent:get_popup_content()
  local text = localize("poke_artist_credits_toggle_shiny")
  local colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.65)

  return {n=G.UIT.R, config={align = "cm"}, nodes={
    {n=G.UIT.T, config={text = text, colour = colour, scale = 0.30, shadow = true}}
  }}
end

function ShinyToggleComponent:toggle()
  self.shiny = not self.shiny

  local card = self.display_card

  local atlas_key = self.shiny and self.shiny_atlas or self.atlas
  local atlas = SMODS.get_atlas(atlas_key)

  card.children.center.atlas = atlas
  if card.children.floating_sprite then
    -- Remember to update this when `soul_atlas` is implemented
    card.children.floating_sprite.atlas = atlas
  end

  card:juice_up(0.05, 0.03)
end

poke_input_manager:add_listener({ 'right_click', 'right_stick' }, function(target)
  if target and target:is(PokeDisplayCard) then
    local shiny_toggle = target:get_component(ShinyToggleComponent)
    if shiny_toggle then
      shiny_toggle:toggle()
    end
  end
end)

-- -- Toggle Visible Layer
local LayerToggleComponent = Component:extend()

function LayerToggleComponent:init(layer)
  self.can_hide_center = layer ~= 'center'
  self.can_hide_soul = layer ~= 'soul'
end

function LayerToggleComponent:apply()
  local card_soul_pos = self.display_card.properties.soul_pos
  if card_soul_pos then
    self.orig_soul_pos_draw = card_soul_pos.draw
  end
end

function LayerToggleComponent:get_popup_content()
  local localize_key = (not self.can_hide_soul and "poke_artist_credits_toggle_center_layer")
      or (not self.can_hide_center and "poke_artist_credits_toggle_soul_layer")
      or "poke_artist_credits_cycle_draw_layers"

  local text = localize(localize_key)
  local colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.65)

  return {n=G.UIT.R, config={align = "cm"}, nodes={
    {n=G.UIT.T, config={text = text, colour = colour, scale = 0.28, shadow = true}}
  }}
end

function LayerToggleComponent:toggle()
  local card = self.display_card
  local center = card.children.center
  local soul = card.children.floating_sprite

  if self.can_hide_soul and self.can_hide_center then
    -- Cycles through each permutation of hiding soul and center sprites except hiding both
    soul.states.visible, center.states.visible = center.states.visible ~= soul.states.visible, soul.states.visible
  elseif self.can_hide_soul then
    soul.states.visible = not soul.states.visible
  elseif self.can_hide_center then
    center.states.visible = not center.states.visible
  end

  -- floating_sprite doesn't actually respect `states.visible` so we're gonna have to get creative
  if card.properties.soul_pos then
    card.properties.soul_pos.draw = not soul.states.visible
        and function() end
        or self.orig_soul_pos_draw
  end
end

poke_input_manager:add_listener('double_click', function(target)
  if target and target:is(PokeDisplayCard) then
    local layer_toggle = target:get_component(LayerToggleComponent)
    if layer_toggle then
      layer_toggle:toggle()
    end
  end
end)

function poke_create_art_display_card(args, ...)
  if args.existing_key then
    -- here we grab default args early so we can decide which components to add
    -- you can still pass `existing_key` directly to the PokeDisplayCard constructor
    -- -- if you need values from existing_obj in your component, consider setting them in `Component:apply()`
    local default_args = get_default_args_from_existing(args.existing_key, args.set)
    args = SMODS.merge_defaults(args, default_args)
    args.existing_key = nil
  end

  args.components = {}

  if SMODS.get_atlas(args.atlas .. 'Shiny') then
    args.components[#args.components+1] = ShinyToggleComponent()
  end

  if args.soul_pos then
    args.components[#args.components+1] = LayerToggleComponent(args.layer)
  end

  return PokeDisplayCard(args, ...)
end
