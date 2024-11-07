-- Wugtrio 961
-- Bombirdier 962
-- Finizen 963
-- Palafin 964
-- Varoom 965
-- Revavroom 966
-- Cyclizar 967
-- Orthworm 968
-- Glimmet 969
-- Glimmora 970
-- Greavard 971
-- Houndstone 972
-- Flamigo 973
-- Cetoddle 974
-- Cetitan 975
-- Veluza 976
-- Dondozo 977
-- Tatsugiri 978
-- Annihilape 979
local annihilape={
  name = "annihilape", 
  pos = {x = 3, y = 5}, 
  config = {extra = {mult = 11, chips = 13}},
  loc_txt = {      
    name = 'Annihilape',      
    text = {
      "Each played {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
      "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored",
      "for each hand played this round",
      "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Chips)",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.mult * (1 + G.GAME.current_round.hands_played), 
                    center.ability.extra.chips * (1 + G.GAME.current_round.hands_played)}}
  end,
  rarity = "poke_safari", 
  cost = 11, 
  stage = "Two", 
  ptype = "Fighting",
  atlas = "Pokedex9",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 then
        return {
            chips = card.ability.extra.chips * (1 + G.GAME.current_round.hands_played),
            mult = card.ability.extra.mult * (1 + G.GAME.current_round.hands_played),
            card = card
        }
      end
    end
  end
}
-- Clodsire 980
-- Farigiraf 981
-- Dudunsparce 982
-- Kingambit 983
-- Great Tusk 984
-- Scream Tail 985
-- Brute Bonnet 986
-- Flutter Mane 987
-- Slither Wing 988
-- Sandy Shocks 989
-- Iron Treads 990
return {name = "Pokemon Jokers 961-990", 
        list = {annihilape},
}