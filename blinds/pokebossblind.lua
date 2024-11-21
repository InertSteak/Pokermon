determine_type = function()
  local poketype
  local pokemon
  local possible = {}
  for l,v in pairs(G.jokers.cards) do
    if (v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype) or type_sticker_applied(v) then
      table.insert(possible, v)
    end
  end
  pokemon = pseudorandom_element(possible, pseudoseed('chart'))
  if pokemon and type_sticker_applied(pokemon) then
    local ptype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth", "Bird"}
    for x, y in pairs(ptype_list) do
      if pokemon.ability[string.lower(y).."_sticker"] then
        return y
      end
    end
  elseif pokemon then
    return pokemon.ability.extra.ptype
  else
    return "Colorless"
  end
end

goose_disable = function(card, btype)
  if (card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype and card.ability.extra.ptype == btype) then
    return true
  elseif btype and card.ability[string.lower(btype).."_sticker"] then
    return true
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
  config = {},
  set_blind = function(self)
    self.config.ptype = determine_type()
  end,
  recalc_debuff = function(self, card, from_blind)
    return goose_disable(card, self.config.ptype)
  end,
  press_play = function(self)
    G.GAME.blind.triggered = true
    G.GAME.blind.prepped = true
    self.config.ptype = determine_type()
  end,
  drawn_to_hand = function(self)
    if G.GAME.blind.prepped then
      for x,y in pairs(G.jokers.cards) do
        y:set_debuff(false)
      end
      for l,v in pairs(G.jokers.cards) do
        if goose_disable(v, self.config.ptype) then
          v:set_debuff(true)
					v:juice_up()
					G.GAME.blind:wiggle()
        end
      end
    end
  end
}

return {name = "Blinds",
        list = {cgoose}
}