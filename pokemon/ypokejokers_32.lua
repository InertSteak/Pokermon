-- Squawkabilly 931
-- Nacli 932
-- Naclstack 933
-- Garganacl 934
-- Charcadet 935
-- Armarouge 936
-- Ceruledge 937
-- Tadbulb 938
-- Bellibolt 939
-- Wattrel 940
-- Kilowattrel 941
-- Maschiff 942
-- Mabosstiff 943
-- Shroodle 944
-- Grafaiai 945
-- Bramblin 946
-- Brambleghast 947
-- Toedscool 948
-- Toedscruel 949
-- Klawf 950
-- Capsakid 951
-- Scovillain 952
-- Rellor 953
-- Rabsca 954
-- Flittle 955
-- Espathra 956
-- Tinkatink 957
local tinkatink={
  name = "tinkatink",
  pos = {x = 9, y = 3},
  config = {extra = {mult = 5,rounds = 5, cards_debuffed = 12}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return v.ability.name ~= 'Steel Card' end
      local modify = function(v) v.debuff = true end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatink', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
        colour = G.C.MULT,
        mult = card.ability.extra.mult,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_tinkatuff")
  end
}
-- Tinkatuff 958
local tinkatuff={
  name = "tinkatuff",
  pos = {x = 10, y = 3},
  config = {extra = {mult = 10,rounds = 5, cards_debuffed = 16}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return v.ability.name ~= 'Steel Card' end
      local modify = function(v) v.debuff = true end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatuff', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
        colour = G.C.MULT,
        mult = card.ability.extra.mult,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_tinkaton")
  end
}
-- Tinkaton 959
local tinkaton={
  name = "tinkaton",
  pos = {x = 11, y = 3},
  config = {extra = {mult = 15,rounds = 5, cards_debuffed = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Fairy",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return v.ability.name ~= 'Steel Card' end
      local modify = function(v) v.debuff = true end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkaton', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if context.other_card.ability.name == 'Steel Card' then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {2}}, 
          colour = G.C.XMULT,
          x_mult = 2,
          mult = card.ability.extra.mult,
          card = card
        }
      else
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after then
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i].ability.name == 'Steel Card' and pseudorandom('tinkaton') < G.GAME.probabilities.normal/4 then
            context.scoring_hand[i].shattered = true
            local destroyed = context.scoring_hand[i]
            G.E_MANAGER:add_event(Event({
              trigger = 'after',
              delay = 0.2,
              func = function() 
                context.scoring_hand[i]:shatter()
              return true end }))
            delay(0.3)
            for i = 1, #G.jokers.cards do
              G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = {destroyed}})
            end
          end
        end
      end
    end
  end
}
-- Wiglett 960
return {name = "Pokemon Jokers 931-960", 
        list = {tinkatink, tinkatuff, tinkaton},
}
