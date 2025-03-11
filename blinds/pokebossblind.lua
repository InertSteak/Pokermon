determine_type = function()
local ptype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
pseudoshuffle(ptype_list, pseudoseed('chart'))
local count = 1

local increase = pseudorandom('increasetypes')

if increase > .66 then
  count = count + 2
elseif increase > .33 then
  count = count + 1
end

local ptypes = {}
for i = 1, count do
  ptypes[#ptypes+1] = ptype_list[i]
end

return ptypes
end

goose_disable = function(disabled, card, btypes)
  if disabled then return false end
  if (card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype) then
    local match = false
    for k, v in pairs(btypes) do
      if v == card.ability.extra.ptype then
        match = true
        break
      end
    end
    return match
  elseif btypes then
    local match = false
    for k, v in pairs(btypes) do
      if card.ability[string.lower(v).."_sticker"] then
        match = true
        break
      end
    end
    return match
  end
  return false
end

local cgoose={
  key = "cgoose",
  dollars = 8,
  mult = 2,
  boss = { showdown = true, min = 8, max = 80 },
  boss_colour = HEX("7A9616"),
  pos = { x = 0, y = 0 },
  atlas = "pokeboss",
  discovered = true,
  debuff = {},
  config = {disabled = false},
  set_blind = function(self)
    self.config.ptypes = determine_type()
  end,
  recalc_debuff = function(self, card, from_blind)
    --return goose_disable(self.config.disabled, card, self.config.ptypes)
  end,
  press_play = function(self)
    G.GAME.blind.triggered = true
    G.GAME.blind.prepped = true
    self.config.ptypes = determine_type()
  end,
  drawn_to_hand = function(self)
    if G.GAME.blind.prepped then
      for x,y in pairs(G.jokers.cards) do
        y:set_debuff(false)
      end
      for l,v in pairs(G.jokers.cards) do
        if goose_disable(self.config.disabled, v, self.config.ptypes) then
          v:set_debuff(true)
					v:juice_up()
					G.GAME.blind:wiggle()
        end
      end
    end
  end,
  disable = function(self)
    self.config.disabled = true
  end
}

return {name = "Blinds",
        list = {cgoose}
}