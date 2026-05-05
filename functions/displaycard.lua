PokeDisplayCard = Card:extend()

function PokeDisplayCard:init(args, x, y, w, h)
  if args.existing_key then
    local default_args = self:get_defaults_from_existing(args.existing_key, args.set)
    args = SMODS.merge_defaults(args, default_args)
  end

  self.properties = {
    atlas = args.atlas,
    pos = args.pos,
    soul_pos = args.soul_pos,
  }

  self.display_text = args.display_text
  self.shader = args.shader

  if self.display_text == nil then self.no_ui = true end

  x = x or args.x or 0
  y = y or args.y or 0
  w = w or args.w or G.CARD_W
  h = h or args.h or G.CARD_H

  local base = args.base_center or 'c_base'
  local fake_center = setmetatable({}, {__index = function(_table, key)
    return self.properties[key] or G.P_CENTERS[base][key]
  end})

  Card.init(self, x, y, w, h, nil, fake_center)
end

local function create_h_popup(nodes)
  return {n=G.UIT.ROOT, config = {align="cm", colour = G.C.CLEAR}, nodes={
    {n=G.UIT.R, config={padding = 0.05, r = 0.12, colour = lighten(G.C.JOKER_GREY, 0.5), emboss = 0.07}, nodes={
      {n=G.UIT.R, config={align = "cm", padding = 0.07, r = 0.1, colour = adjust_alpha(darken(G.C.BLACK, 0.1), 0.8)}, nodes=nodes}
    }}
  }}
end

function PokeDisplayCard:hover()
  Card.hover(self)

  if self.display_text and not self.no_ui then
    if self.children.h_popup then
      self.children.h_popup:remove()
      self.children.h_popup = nil
    end

    self.config.h_popup = create_h_popup({
      name_from_rows({{n=G.UIT.T, config={text = self.display_text, colour = G.C.UI.TEXT_LIGHT, scale = 0.55 - 0.004 * #self.display_text, shadow = true}}})
    })

    Node.hover(self)
  end
end

function PokeDisplayCard:get_defaults_from_existing(key, set)
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
