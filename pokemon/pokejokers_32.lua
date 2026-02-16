-- Squawkabilly 931
-- Nacli 932
-- Naclstack 933
-- Garganacl 934
-- Charcadet 935
local charcadet={
  name = "charcadet",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0,mult_mod = 5, mult_original = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_dawnstone
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_duskstone
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, }}
  end,
  rarity = 2,
  cost = 5,
  gen = 9,
  item_req = {"dawnstone", "duskstone"},
  evo_list = {dawnstone = "j_poke_armarouge", duskstone = 'j_poke_ceruledge'},
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        mult = card.ability.extra.mult
      }
    end
    if context.after and not context.blueprint then
      SMODS.scale_card(card, {
        ref_value = 'mult',
        scalar_value = 'mult_mod',
        message_colour = G.C.MULT
      })
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.mult = card.ability.extra.mult_original
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset'), colour = G.C.RED})
    end
    return item_evo(self, card, context)
  end,
}
-- Armarouge 936
local armarouge={
  name = "armarouge",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 3, Xmult_mod = 1, Xmult2 = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, }}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 9,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.after and card.ability.extra.Xmult > 1 and not context.blueprint then
      SMODS.scale_card(card, {
        ref_value = 'Xmult',
        scalar_value = 'Xmult_mod',
        operation = function(ref_table, ref_value, initial, modifier)
          ref_table[ref_value] = math.max(1, initial - modifier)
        end,
        message_key = 'a_xmult_minus',
        message_colour = G.C.RED
      })
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult2
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
}
-- Ceruledge 937
local ceruledge={
  name = "ceruledge",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 1, Xmult_mod = 0.75, Xmult2 = 1, money_minus = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_drain'}
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.money_minus}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 9,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.after and not context.blueprint then
      G.E_MANAGER:add_event(Event({
        func = function()
          local drain_jokers = {}
          for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] ~= card and G.jokers.cards[i].sell_cost > 1 then
              drain_jokers[#drain_jokers+1] = G.jokers.cards[i]
            end
          end
          if #drain_jokers > 0 then
            poke_drain(card, pseudorandom_element(drain_jokers, 'ceruledge'), card.ability.extra.money_minus)
          end
          return true
        end
      }))

      SMODS.scale_card(card, {
        ref_value = 'Xmult',
        scalar_value = 'Xmult_mod',
        message_colour = G.C.MULT
      })
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult2
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
}
-- Tadbulb 938
-- Bellibolt 939
-- Wattrel 940
-- Kilowattrel 941
-- Maschiff 942
-- Mabosstiff 943
-- Shroodle 944
-- Grafaiai 945
-- Bramblin 946
local bramblin={
  name = "bramblin",
  pos = {x = 0, y = 0},
  config = {extra = {cards_drawn = 0, seed_added = 0, rank_scored = 0}, evo_rqmt = 160},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    return {vars = {localize(G.GAME.current_round.bramblincard and G.GAME.current_round.bramblincard.rank or "Ace", 'ranks'), math.max(0, self.config.evo_rqmt - center.ability.extra.cards_drawn)}}
  end,
  rarity = 1,
  cost = 6,
  gen = 9,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      card.ability.extra.cards_drawn = card.ability.extra.cards_drawn + #SMODS.drawn_cards
    end
    if context.before and not context.blueprint and card.ability.extra.seed_added <= 0 then
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == G.GAME.current_round.bramblincard.id then
          card.ability.extra.rank_scored = card.ability.extra.rank_scored + 1
          if card.ability.extra.rank_scored == 2 then
            context.scoring_hand[i]:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                context.scoring_hand[i]:juice_up()
                return true
              end
            }))
            card.ability.extra.seed_added = card.ability.extra.seed_added + 1
            break
          end
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.rank_scored = 0
      card.ability.extra.seed_added = 0
    end
    return scaling_evo(self, card, context, "j_poke_brambleghast", card.ability.extra.cards_drawn, self.config.evo_rqmt)
  end,
}
-- Brambleghast 947
local brambleghast={
  name = "brambleghast",
  pos = {x = 0, y = 0},
  config = {extra = {chip_mod = 2, seed_added = 0, rank_scored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    return {vars = {center.ability.extra.chip_mod, center.ability.extra.chip_mod * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)),
        localize(G.GAME.current_round.bramblincard and G.GAME.current_round.bramblincard.rank or "Ace", 'ranks')}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 9,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      local dollars = (SMODS.Mods["Talisman"] or {}).can_load and to_number(G.GAME.dollars) or G.GAME.dollars
      return {
          chips = card.ability.extra.chip_mod * math.max(0, (dollars + (G.GAME.dollar_buffer or 0)))
      }
    end
    if context.before and not context.blueprint and card.ability.extra.seed_added <= 0 then
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == G.GAME.current_round.bramblincard.id then
          card.ability.extra.rank_scored = card.ability.extra.rank_scored + 1
          if card.ability.extra.rank_scored == 2 then
            context.scoring_hand[i]:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
            context.scoring_hand[i].ability.extra.level = 2
            G.E_MANAGER:add_event(Event({
              func = function()
                context.scoring_hand[i]:juice_up()
                return true
              end
            }))
            card.ability.extra.seed_added = card.ability.extra.seed_added + 1
            break
          end
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.rank_scored = 0
      card.ability.extra.seed_added = 0
    end
  end,
}
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
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkatink'..card.unique_val); end
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
        SMODS.debuff_card(v,false, 'tinkatink'..card.unique_val)
      end
    end
    return level_evo(self, card, context, "j_poke_tinkatuff")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatink'..card.unique_val)
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
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkatuff'..card.unique_val) end
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
        SMODS.debuff_card(v,false, 'tinkatuff'..card.unique_val)
      end
    end
    return level_evo(self, card, context, "j_poke_tinkaton")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatuff'..card.unique_val)
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
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkaton'..card.unique_val) end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkaton', add_con = add, mod_func = modify}
      pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_steel') then
          return {m_glass = true}
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkaton'..card.unique_val)
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkaton'..card.unique_val)
      end
    end
  end
}
-- Wiglett 960
local wiglett={
  name = "wiglett", 
  pos = {x = 3, y = 4}, 
  config = {extra = {rounds = 4, chips = 60, mult = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds, center.ability.extra.chips, center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex9",
  gen = 9,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local score_chips = false
        local score_mult = false
        if next(context.poker_hands['Three of a Kind']) then score_mult = true end
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 5 or v:get_id() == 6 or v:get_id() == 7 then
            score_chips = true
            break
          end
        end
        if score_mult and score_chips then
          return {
            message = localize('poke_dig_ex'), 
            colour = G.C.MULT,
            chip_mod = card.ability.extra.chips,
            mult_mod = card.ability.extra.mult,
            card = card
          }
        elseif score_chips then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif score_mult then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult,
            card = card
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_wugtrio")
  end
}
return {name = "Pokemon Jokers 931-960", 
        list = {charcadet, armarouge, ceruledge, bramblin, brambleghast, tinkatink, tinkatuff, tinkaton, wiglett},
}
