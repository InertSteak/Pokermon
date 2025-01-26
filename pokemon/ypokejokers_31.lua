-- Ursaluna 901
-- Basculegion 902
-- Sneasler 903
-- Overqwil 904
-- Enamorus 905
-- Sprigatito 906
-- Floragato 907
-- Meowscarada 908
-- Fuecoco 909
-- Crocalor 910
-- Skeledirge 911
-- Quaxly 912
-- Quaxwell 913
-- Quaquaval 914
-- Lechonk 915
-- Oinkologne 916
-- Tarountula 917
-- Spidops 918
-- Nymble 919
-- Lokix 920
-- Pawmi 921
-- Pawmo 922
-- Pawmot 923
-- Tandemaus 924
-- Maushold 925
-- Fidough 926
local fidough={
  name = "fidough",
  pos = {x = 8, y = 1},
  config = {extra = {chips = 0,chip_mod = 8, rank = "2", id = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, localize(center.ability.extra.rank or "2", 'ranks')}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex9",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local contains = false
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == card.ability.extra.id then
            contains = true
            break
          end
        end
        if contains then
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          card.ability.extra.id, card.ability.extra.rank = poke_next_highest_rank(card.ability.extra.id, card.ability.extra.rank)
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
          }
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dachsbun", #find_pokemon_type("Fire"), 1)
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.id, card.ability.extra.rank = poke_lowest_rank(14, "Ace")
    end
  end
}
-- Dachsbun 927
local dachsbun={
  name = "dachsbun",
  pos = {x = 9, y = 1},
  config = {extra = {chips = 0,chip_mod = 12, rank = "2", id = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, localize(center.ability.extra.rank or "2", 'ranks')}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex9",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local contains = false
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == card.ability.extra.id then
            contains = true
            break
          end
        end
        if contains then
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod + (#find_pokemon_type("Fire") * 2)
          card.ability.extra.id, card.ability.extra.rank = poke_next_highest_rank(card.ability.extra.id, card.ability.extra.rank)
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
          }
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.id, card.ability.extra.rank = poke_lowest_rank(14, "Ace")
    end
  end
}
-- Smoliv 928
-- Dolliv 929
-- Arboliva 930
return {name = "Pokemon Jokers 901-930", 
        list = {fidough, dachsbun},
}
