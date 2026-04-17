PokeDisplayCard = Card:extend()

function PokeDisplayCard:init(args, x, y, w, h)
  if args.existing_key then
    local default_args = self:get_defaults_from_existing(args.existing_key, args.set)
    args = SMODS.merge_defaults(args, default_args)
  end

  local properties = {
    atlas = args.atlas,
    pos = args.pos,
    soul_pos = args.soul_pos,
  }

  x = x or args.x or 0
  y = y or args.y or 0
  w = w or args.w or G.CARD_W
  h = h or args.h or G.CARD_H

  local fake_center = setmetatable({}, {__index = function(_table, key)
    return properties[key] or G.P_CENTERS.c_base[key]
  end})

  Card.init(self, x, y, w, h, nil, fake_center)
end

function PokeDisplayCard:get_defaults_from_existing(key, set)
  local defaults = {
    ['Seal'] = {
      existing_obj = G.P_SEALS[key]
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
    },
    ['Voucher'] = {
      shader = 'voucher',
    },
    ['Spectral'] = {
      shader = 'booster',
    },
  }

  local args = defaults[set] or {}

  if not args.existing_obj then
    args.existing_obj = G.P_CENTERS[key] or {}
  end

  args.atlas = args.existing_obj.atlas
  args.pos = args.existing_obj.pos
  args.soul_pos = args.existing_obj.soul_pos

  return args
end

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
