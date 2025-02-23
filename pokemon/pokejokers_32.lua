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
  pos = {x = 0, y = 4},
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
      local modify = function(v) SMODS.debuff_card(v, true, card); end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatink', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
    return level_evo(self, card, context, "j_poke_tinkatuff")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
  end
}
-- Tinkatuff 958
local tinkatuff={
  name = "tinkatuff",
  pos = {x = 1, y = 4},
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
      local modify = function(v) SMODS.debuff_card(v, true, card) end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatuff', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
    return level_evo(self, card, context, "j_poke_tinkaton")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
  end
}
-- Tinkaton 959
local tinkaton={
  name = "tinkaton",
  pos = {x = 2, y = 4},
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
      local modify = function(v) SMODS.debuff_card(v, true, card) end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkaton', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card.ability.name == 'Steel Card' then
        return {
          x_mult = 2,
          mult = card.ability.extra.mult,
          card = card
        }
      else
        return {
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
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,'reset', card)
      end
    end
  end
}
-- Wiglett 960
return {name = "Pokemon Jokers 931-960", 
        list = {tinkatink, tinkatuff, tinkaton},
}
