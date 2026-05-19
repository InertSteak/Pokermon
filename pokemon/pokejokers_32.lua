-- Squawkabilly 931
-- Nacli 932
local nacli = {
  name = "nacli",
  config = {extra = {Xmult_mod = 0.2, Xmult = 1, numerator = 1, denominator = 2}, evo_rqmt = 2},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator, 'nacli')
		return {vars = {card.ability.extra.Xmult_mod, card.ability.extra.Xmult, numerator, denominator}}
  end,
  designer = "Sonfive",
  rarity = 3,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  gen = 9,
  blueprint_compat = true,
  
  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
      local abbr = card.ability.extra
      local odds
      local rightmost = G.jokers.cards[#G.jokers.cards]

      if rightmost ~= card and not rightmost.ability.eternal then 
        if is_type(rightmost, "Metal") or is_type(rightmost, "Water") then
          odds = SMODS.pseudorandom_probability(card, 'nacli', abbr.numerator, (abbr.denominator / 2), 'nacli')
        else
          odds = SMODS.pseudorandom_probability(card, 'nacli', abbr.numerator, abbr.denominator, 'nacli')
        end
        if odds then
          abbr.Xmult = abbr.Xmult + abbr.Xmult_mod
          G.E_MANAGER:add_event(Event({
          remove(self, rightmost, context)
          }))
          return{
            message = localize('poke_saltcure_ex'), colour = HEX('A8F2FF')
          }
        end
      end
    end


    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_naclstack", card.ability.extra.Xmult, self.config.evo_rqmt)
  end
}
-- Naclstack 933
local naclstack = {
  name = "naclstack",
  config = {extra = {Xmult = 2, Xmult_mod = 0.5, numerator = 1, denominator = 4}, evo_rqmt = 4},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator, 'nacli')
		return {vars = {card.ability.extra.Xmult_mod, card.ability.extra.Xmult, numerator, denominator, (denominator/2)}}
  end,
  designer = "Sonfive",
  rarity = "poke_safari",
  cost = 6,
  stage = "One",
  ptype = "Earth",
  gen = 9,
  blueprint_compat = true,
  
  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
      local abbr = card.ability.extra
      local odds
      local rightmost = G.jokers.cards[#G.jokers.cards]

      if rightmost ~= card and not rightmost.ability.eternal then 
        if is_type(rightmost, "Metal") or is_type(rightmost, "Water") then
          odds = SMODS.pseudorandom_probability(card, 'naclstack', abbr.numerator, (abbr.denominator / 2), 'naclstack')
        else
          odds = SMODS.pseudorandom_probability(card, 'naclstack', abbr.numerator, abbr.denominator, 'naclstack')
        end
        if odds then
          abbr.Xmult = abbr.Xmult + abbr.Xmult_mod
          G.E_MANAGER:add_event(Event({
          remove(self, rightmost, context)
          }))
          return{
            message = localize('poke_saltcure_ex'), colour = HEX('A8F2FF')
          }
        end
      end
    end


    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_garganacl", card.ability.extra.Xmult, self.config.evo_rqmt)
  end
}
-- Garganacl 934
local garganacl = {
  name = "garganacl",
  config = {extra = {Xmult_multi = 1.1, Xmult = 4, numerator = 1, denominator = 8}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
		local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator, 'nacli')
		return {vars = {card.ability.extra.Xmult_multi, card.ability.extra.Xmult, numerator, denominator, (denominator/2)}}
  end,
  designer = "Sonfive",
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Earth",
  gen = 9,
  blueprint_compat = true,
  
  calculate = function(self, card, context)
    local abbr = card.ability.extra
    if context.setting_blind and not context.blueprint then
      local abbr = card.ability.extra
      local odds
      local rightmost = G.jokers.cards[#G.jokers.cards]

      if rightmost ~= card and not rightmost.ability.eternal then 
        if is_type(rightmost, "Metal") or is_type(rightmost, "Water") then
          odds = SMODS.pseudorandom_probability(card, 'garganacl', abbr.numerator, (abbr.denominator / 2), 'garganacl')
        else
          odds = SMODS.pseudorandom_probability(card, 'garganacl', abbr.numerator, abbr.denominator, 'garganacl')
        end
        if odds then
          abbr.Xmult = abbr.Xmult * abbr.Xmult_multi
          G.E_MANAGER:add_event(Event({
          remove(self, rightmost, context)
          }))
          return{
            message = localize('poke_saltcure_ex'), colour = HEX('A8F2FF')
          }
        end
      end
    end
    
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
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
  attributes = {"mult", "scaling", "reset", "item_evo"},
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
  attributes = {"xmult", "scaling", "reset"},
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
  attributes = {"xmult", "scaling", "reset", "drain"},
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
  attributes = {"rank", "modify_card", "enhancements", "condition_evo"},
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
  attributes = {"rank", "modify_card", "enhancements", "chips"},
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
  knockoff_pseudol = true,
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
  end,
  attributes = {"mult", "enhancements", "round_evo"},
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
  end,
  attributes = {"mult", "enhancements", "round_evo"},
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
  end,
  attributes = {"mult", "enhancements", "passive", "modify_card"},
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
  end,
  attributes = {"mult", "chips", "hand_type", "rank", "five", "six", "seven", "round_evo"},
}
return {name = "Pokemon Jokers 931-960", 
        list = {nacli, naclstack, garganacl, charcadet, armarouge, ceruledge, bramblin, brambleghast, tinkatink, tinkatuff, tinkaton, wiglett},
}
