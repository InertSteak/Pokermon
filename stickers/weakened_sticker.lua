
local weakened = { 
  key = 'weakened',
  badge_colour = HEX('c497c4'),
  order = 5,
  pos = {x = 7, y = 1},
  atlas = 'AtlasStickersBasic',
  rate = 0.3,
  needs_enable_flag = true,
  default_compat = false,
  apply = function(self, card, val)
    card.ability[self.key] = val
    if card.ability.extra then
      if type(card.ability.extra) == "table" then
        increment_energy(card, get_type(card), -1, true)
        card.ability.extra.e_limit_up = card.ability.extra.e_limit_up and (card.ability.extra.e_limit_up - 1) or -1
      end
    end
  end,
  should_apply = function(self, card, center, area, bypass_roll)
    return (area == G.shop_jokers or area == G.pack_cards)
        and SMODS.Sticker.should_apply(self, card, center, area, bypass_roll)
  end,
}

return {name = "Stickers",
      list = {weakened}
}