local pokedex={ 
  name = "pokedex",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, mult_mod = 2}},
  loc_txt = {      
    name = 'Pokedex',      
    text = {
        "{C:mult}+#2#{} Mult for each",
        "Joker with a {C:pink}Type{} you have",
        "Pokemon may appear",
        "multiple times",
        "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
      } 
  }, 
  loc_vars = function(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Other",
  atlas = "pokedex",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local pokemon_amount = 0
      for k, v in pairs(G.jokers.cards) do
        if (v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype) or type_sticker_applied(v) then
          pokemon_amount = pokemon_amount + 1
        end
      end
      card.ability.extra.mult = pokemon_amount * card.ability.extra.mult_mod
    end
  end
}

return {name = "Other Jokers",
        list = {pokedex}
}