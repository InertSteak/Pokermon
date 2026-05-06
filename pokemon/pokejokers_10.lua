-- Lombre 271
-- Ludicolo 272
-- Seedot 273
-- Nuzleaf 274
-- Shiftry 275
-- Taillow 276
local taillow={
  name = "taillow",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0,mult_mod = 4,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return 
      {
        mult = card.ability.extra.mult
      }
    end
  
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      for i = 1, #SMODS.drawn_cards do
        if SMODS.drawn_cards[i]:get_id() == 14 then
          SMODS.scale_card(card, {
            ref_value = 'mult',
            scalar_value = 'mult_mod',
            message_colour = G.C.MULT
          })
        end
      end
    end
    
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.mult = 0
      return {
        message = localize('k_reset'),
        colour = G.C.CHIPS
      }
    end
    return level_evo(self, card, context, "j_poke_swellow")
  end,
  attributes = {"rank", "ace", "mult", "scaling", "reset", "round_evo"},
}
-- Swellow 277
local swellow={
  name = "swellow",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0,mult_mod = 6,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, }}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 3,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and context.blind.boss then
      card.ability.extra.active = true
    end
    if context.drawing_cards and not context.blueprint and card.ability.extra.active then
      for i = 1, 2 do
        local top = G.deck.cards[#G.deck.cards - i + 1]
        if top then
          SMODS.change_base(top, nil, "Ace")
        end
      end
      card.ability.extra.active = nil
    end
  
    if context.joker_main then
      return 
      {
        mult = card.ability.extra.mult
      }
    end
  
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      for i = 1, #SMODS.drawn_cards do
        if SMODS.drawn_cards[i]:get_id() == 14 then
          SMODS.scale_card(card, {
            ref_value = 'mult',
            scalar_value = 'mult_mod',
            message_colour = G.C.MULT
          })
        end
      end
    end
    
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.mult = 0
      return {
        message = localize('k_reset'),
        colour = G.C.CHIPS
      }
    end
  end,
  attributes = {"rank", "ace", "mult", "scaling", "reset", "boss_blind", "modify_card"},
}
-- Wingull 278
local wingull={
  name = "wingull",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 4,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money_mod, center.ability.extra.rounds, localize(G.GAME.current_round.wingullcard and G.GAME.current_round.wingullcard.rank or "Ace", 'ranks')}}
  end,
  rarity = 1,
  cost = 4,
  gen = 3,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.discard and not context.other_card.debuff and context.other_card:get_id() == G.GAME.current_round.wingullcard.id then
      local earned = ease_poke_dollars(card, "wingull", card.ability.extra.money_mod, true)
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + earned
      return {
        dollars = earned,
        func = function() -- This is for timing purposes, it runs after the dollar manipulation
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollar_buffer = 0
                    return true
                end
            }))
        end
      }
    end
    return level_evo(self, card, context, "j_poke_pelipper")
  end,
  attributes = {"rank", "discard", "economy", "round_evo"},
}
-- Pelipper 279
local pelipper={
  name = "pelipper",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 4, water_money = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money_mod, center.ability.extra.water_money, localize(G.GAME.current_round.wingullcard and G.GAME.current_round.wingullcard.rank or "Ace", 'ranks')}}
  end,
  rarity = "poke_safari",
  cost = 6,
  gen = 3,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.discard and not context.other_card.debuff and context.other_card:get_id() == G.GAME.current_round.wingullcard.id then
      local earned = ease_poke_dollars(card, "wingull", card.ability.extra.money_mod, true) + #find_pokemon_type("Water")
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + earned
      return {
        dollars = earned,
        func = function() -- This is for timing purposes, it runs after the dollar manipulation
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollar_buffer = 0
                    return true
                end
            }))
        end
      }
    end
    return level_evo(self, card, context, "j_poke_pelipper")
  end,
  attributes = {"rank", "discard", "economy", "types", "joker"},
}
-- Ralts 280
local ralts={
  name = "ralts",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 5,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Psychic Energy"}}
    local energized = 0
    if G.jokers then
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
    end
    local total = center.ability.extra.mult_mod * energized
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.rounds, total}}
  end,
  rarity = 2,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex3",
  knockoff_pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and next(context.poker_hands['Pair']) then
      local energized = 0
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
      local total = card.ability.extra.mult_mod * energized
      return 
      {
        mult = total
      }
    end
    return level_evo(self, card, context, "j_poke_kirlia")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local energy = SMODS.add_card{ set = 'Energy', key = 'c_poke_psychic_energy'}
      SMODS.calculate_effect({ message = localize('poke_plus_energy') }, energy)
    end
  end,
  attributes = {"holding", "mult", "energy_count", "joker", "hand_type", "round_evo"},
}
-- Kirlia 281
local kirlia={
  name = "kirlia",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 8, e_limit = 1, planets_used = 0}, evo_rqmt = 15},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local energized = 0
    if G.jokers then
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
    end
    local total = center.ability.extra.mult_mod * energized
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.e_limit, total, math.max(0, self.config.evo_rqmt - center.ability.extra.planets_used)}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  item_req = "dawnstone",
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and next(context.poker_hands['Pair']) then
      local energized = 0
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
      local total = card.ability.extra.mult_mod * energized
      return 
      {
        mult = total
      }
    end
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' and not context.blueprint then
      card.ability.extra.planets_used = card.ability.extra.planets_used + 1
    end
    local evo = item_evo(self, card, context, "j_poke_gallade")
    if not evo then
      return scaling_evo(self, card, context, "j_poke_gardevoir", card.ability.extra.planets_used, self.config.evo_rqmt)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = card.ability.extra.e_limit
    else
      G.GAME.energy_plus = G.GAME.energy_plus + card.ability.extra.e_limit
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - card.ability.extra.e_limit
    end
  end,
  attributes = {"mult", "energy_count", "joker", "hand_type", "passive", "energy_limit", "item_evo", "condition_evo"},
}
-- Gardevoir 282
local gardevoir={
  name = "gardevoir",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult_mod = 0.3, e_limit = 1, hand_level = 6}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_black_hole'}
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    local energized = 0
    if G.jokers then
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
    end
    local hands = 0
    for k, v in pairs(G.GAME.hands) do
      local level = v.level
      if (SMODS.Mods["Talisman"] or {}).can_load then
        level = to_number(level)
      end
      if level >= center.ability.extra.hand_level then
        hands = hands + 1
      end
    end
    local total = 1 + (center.ability.extra.Xmult_mod * (hands + energized))
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.e_limit, total, center.ability.extra.hand_level}}
  end,
  rarity = "poke_safari",
  cost = 10,
  gen = 3,
  stage = "Two",
  ptype = "Psychic",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      local energized = 0
      for k, v in ipairs(G.jokers.cards) do
        if get_total_energy(v) > 0 then
          energized = energized + 1
        end
      end
      local hands = 0
      for k, v in pairs(G.GAME.hands) do
        local level = v.level
        if (SMODS.Mods["Talisman"] or {}).can_load then
          level = to_number(level)
        end
        if level >= card.ability.extra.hand_level then
          hands = hands + 1
        end
      end
      local total = 1 + (card.ability.extra.Xmult_mod * (hands + energized))
      return 
      {
        Xmult = total
      }
    end
    if context.selling_card and context.card.config.center.set == 'Joker' and get_total_energy(context.card) > 0 then
      local bhole = SMODS.add_card{ set = 'Spectral', key = 'c_black_hole', edition = 'e_negative'}
      SMODS.calculate_effect({ message = localize('k_plus_spectral') }, bhole)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = card.ability.extra.e_limit
    else
      G.GAME.energy_plus = G.GAME.energy_plus + card.ability.extra.e_limit
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - card.ability.extra.e_limit
    end
  end,
  attributes = {"mult", "xmult", "energy_count", "joker", "passive", "energy_limit", "generation", "spectral"},
}
-- Surskit 283
-- Masquerain 284
-- Shroomish 285
local shroomish={
  name = "shroomish",
  pos = {x = 3, y = 3},
  config = {extra = {hands = 1, d_size = 1, h_size = 1, boss_defeated = 0}, evo_rqmt = 2},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.d_size, center.ability.extra.h_size, math.max(0, self.config.evo_rqmt - center.ability.extra.boss_defeated)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  knockoff_starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      local message_card = context.blueprint_card or card
      if bonus > .66 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hands}}, colour = G.C.CHIPS})
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'poke_discards', vars = {card.ability.extra.d_size}}, colour = G.C.MULT})
        ease_discard(card.ability.extra.d_size)
      else
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
      end
      card:juice_up()
    end
    if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
      card.ability.extra.boss_defeated = card.ability.extra.boss_defeated + 1
    end
    return scaling_evo(self, card, context, "j_poke_breloom", card.ability.extra.boss_defeated, self.config.evo_rqmt)
  end,
  attributes = {"hands", "discard", "hand_size", "condition_evo"},
}
-- Breloom 286
local breloom={
  name = "breloom",
  pos = {x = 4, y = 3},
  config = {extra = {hands = 2, d_size = 2, h_size = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.d_size, center.ability.extra.h_size}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      local message_card = context.blueprint_card or card
      if bonus > .66 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hands}}, colour = G.C.CHIPS})
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'poke_discards', vars = {card.ability.extra.d_size}}, colour = G.C.MULT})
        ease_discard(card.ability.extra.d_size)
      else
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
      end
      card:juice_up()
    end
  end,
  attributes = {"hands", "discard", "hand_size"},
}
-- Slakoth 287
local slakoth={
  name = "slakoth",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 15, hands = 1, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.hands, center.ability.extra.money}}
  end,
  rarity = 2,
  cost = 4,
  gen = 3,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  knockoff_pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.before then
      ease_hands_played(-card.ability.extra.hands)
    end
    if context.joker_main then
      return
      {
        mult = card.ability.extra.mult
      }
    end
    return level_evo(self, card, context, "j_poke_vigoroth")
  end,
  attributes = {"mult", "hands", "round_evo"},
}
-- Vigoroth 288
local vigoroth={
  name = "vigoroth",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult_mod = 0.5, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, 1 + math.max(0, (center.ability.extra.Xmult_mod * G.GAME.current_round.hands_left)), center.ability.extra.rounds}}
  end,
  rarity = "poke_safari",
  cost = 6,
  gen = 3,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = 1 + (card.ability.extra.Xmult_mod * G.GAME.current_round.hands_left)
      }
    end
    if G.GAME.current_round.discards_used <= 0  then
      return level_evo(self, card, context, "j_poke_slaking")
    end
  end,
  attributes = {"xmult", "hands", "condition_evo"},
}
-- Slaking 289
local slaking={
  name = "slaking",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 4, hands = 1, }},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.hands}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "Two",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.before then
      ease_hands_played(-card.ability.extra.hands)
    end
    if context.joker_main then
      return
      {
        Xmult = card.ability.extra.Xmult
      }
    end
  end,
  attributes = {"xmult", "hands"},
}
-- Nincada 290
local nincada={
  name = "nincada",
  pos = {x = 0, y = 0},
  config = {extra = {chips = 65, chips_minus = 5, num = 1, dem = 2}, },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'multi_evolution'}
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'nincada')
    return {vars = {center.ability.extra.chips, center.ability.extra.chips_minus, num, dem}}
  end,
  rarity = 2,
  cost = 7,
  gen = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.before then
      local has_nine_or_jack = false
      for k, v in ipairs(context.scoring_hand) do
        if v:get_id() == 9 or v:get_id() == 11 then
          has_nine_or_jack = true
          break
        end
      end

      if has_nine_or_jack then
        if not context.blueprint and card.ability.extra.chips > 0 then
          SMODS.scale_card(card, {
            ref_value = 'chips',
            scalar_value = 'chips_minus',
            operation = function(ref_table, ref_value, initial, modifier)
              ref_table[ref_value] = math.max(0, initial - modifier)
            end,
            message_key = 'a_chips_minus',
            message_colour = G.C.CHIPS
          })
        end

        if SMODS.pseudorandom_probability(card, 'nincada', card.ability.extra.num, card.ability.extra.dem, 'nincada') and
            #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local set = pseudorandom_element(SMODS.ConsumableTypes, pseudoseed('adacnin'))
          SMODS.add_card { set = set.key }
        end
      end
    end

    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end

    local evo = scaling_evo(self, card, context, "j_poke_ninjask", (card.ability.extra.chips <= 0) and 1 or 0, 1)
    if evo and type(evo) == "table" then
      if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
        G.GAME.joker_buffer = G.GAME.joker_buffer + 1
        G.E_MANAGER:add_event(Event({
          func = function()
            local copy = copy_card(card)
            copy:add_to_deck()
            G.jokers:emplace(copy)
            poke_evolve(copy, 'j_poke_shedinja', true)
            copy.states.visible = nil
            G.GAME.joker_buffer = 0
            G.E_MANAGER:add_event(Event({
              func = function()
                copy:start_materialize()
                return true
              end
            }))
            return true
          end
        }))
      end
    end
    return evo
  end,
  attributes = {"chips", "chance", "rank", "nine", "jack", "scaling", "scaling_evo"},
}
-- Ninjask 291
local ninjask={
  name = "ninjask",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 13, num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'tag_skip', set = 'Tag', specific_vars = {5, 5 * G.GAME.skips}}
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'ninjask')
    return {vars = {center.ability.extra.mult_mod, num, dem}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind and SMODS.pseudorandom_probability(card, 'ninjask', card.ability.extra.num, card.ability.extra.dem, 'ninjask') then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_skip'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_played == 0 then
      if context.other_card:get_id() == 9 or context.other_card:get_id() == 11 then
        local earned = ease_poke_dollars(card, "ninjask", card.ability.extra.money_mod, true)
        return {
          mult = card.ability.extra.mult_mod,
          dollars = earned,
          card = card
        }
      end
    end
  end,
  attributes = {"chance", "tag", "rank", "nine", "jack", "mult", "hands"},
}
-- Shedinja 292
local shedinja={
  name = "shedinja",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 1, Xmult_mod = 0.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "???",
  ptype = "Psychic",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if (context.end_of_round and not G.GAME.blind.boss) and context.game_over and not context.blueprint then
      G.E_MANAGER:add_event(Event({
          func = function()
              G.hand_text_area.blind_chips:juice_up()
              G.hand_text_area.game_chips:juice_up()
              play_sound('tarot1')
              return true
          end
      }))
      
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      
      return {
          message = localize('k_saved_ex'),
          saved = localize('poke_saved_by')..' '..(G.localization.descriptions.Joker[card.config.center.key].name),
          colour = G.C.RED
      }
    end
    
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    
    if context.ending_shop and not context.blueprint then
      local fire_count = #find_pokemon_type("Fire", nil, "shedinja")
      local earth_count = #find_pokemon_type("Earth", nil, "shedinja")
      local dark_count = #find_pokemon_type("Dark", nil, "shedinja")
      local psychic_count = #find_pokemon_type("Psychic", nil, "shedinja")
      if fire_count > 0 or earth_count > 0 or dark_count > 0 or psychic_count > 0 then
        G.E_MANAGER:add_event(Event({
          func = function()
            remove(self, card, context, true)
            return true
          end
        }))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_screech_ex")})
      end
    end
  end,
  attributes = {"prevents_death", "xmult", "scaling", "types"},
}
-- Whismur 293
-- Loudred 294
-- Exploud 295
-- Makuhita 296
local makuhita={
  name = "makuhita",
  pos = {x = 0, y = 0},
  config = {extra = {hands = 1, rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 4,
  gen = 3,
  stage = "Basic",
  ptype = "Fighting",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      ease_hands_played(card.ability.extra.hands)
      card:juice_up()
    end
    return level_evo(self, card, context, "j_poke_hariyama")
  end,
  attributes = {"hands", "round_evo"},
}
-- Hariyama 297
local hariyama={
  name = "hariyama",
  pos = {x = 0, y = 0},
  config = {extra = {hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands}}
  end,
  rarity = 2,
  cost = 7,
  gen = 3,
  stage = "One",
  ptype = "Fighting",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local hands = card.ability.extra.hands * #find_pokemon_type("Fighting")
      ease_hands_played(hands)
      card:juice_up()
    end
  end,
  attributes = {"hands", "types", "joker"},
}

-- Azurill 298
local azurill ={
  name = "azurill",
  pos = {x = 6, y = 4},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_heirophant
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}},
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      G.E_MANAGER:add_event(Event({
        func = function()
          SMODS.add_card{set = 'Tarot', key = 'c_heirophant', edition = 'e_negative'}
          return true
        end
      }))
    end
    return level_evo(self, card, context, "j_poke_marill")
  end,
  attributes = {"baby", "tarot", "generation", "round_evo"},
}
-- Nosepass 299
local nosepass={
  name = "nosepass",
  pos = {x = 7, y = 4},
  config = {extra = {Xmult_multi = 2.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = 2,
  cost = 6,
  item_req = "thunderstone",
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if context.other_card == card.ability.extra.first then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.XMULT,
            card = card
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        if not card.ability.extra.first then
          for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:is_face() then
              context.scoring_hand[i]:set_ability(G.P_CENTERS.m_stone, nil, true)
              card.ability.extra.first = context.scoring_hand[i];
              break
            end
          end
        end
      end
      if context.after then
        card.ability.extra.first = nil
      end
    end
    return item_evo(self, card, context, "j_poke_probopass")
  end,
  attributes = {"face", "modify_card", "enhancements", "xmult", "item_evo"},
}
-- Skitty 300
local skitty={
  name = "skitty",
  pos = {x = 0, y = 0},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)

    local cattype = G.GAME.current_round.cattype or "Grass"

    local highlight_colour = cattype ~= "Lightning" and G.C.WHITE or G.C.BLACK
    local type_colour = G.ARGS.LOC_COLOURS[string.lower(cattype)]
    local main_end

    if card.area and card.area == G.jokers then
      local found_pos = get_index(G.jokers.cards, card) + 1
      local other_joker = G.jokers.cards[found_pos]
      main_end = poke_blueprint_compat_ui(is_type(other_joker, cattype) and other_joker)
    end

    return {vars = {cattype, colours = {type_colour, highlight_colour}}, main_end = main_end}
  end,
  rarity = 3,
  cost = 7,
  gen = 3,
  item_req = "moonstone",
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    local evo = item_evo(self, card, context, "j_poke_delcatty")
    if evo then return evo end

    local found_pos = get_index(G.jokers.cards, card) + 1
    local other_joker = G.jokers.cards[found_pos]
    if is_type(other_joker, G.GAME.current_round.cattype or "Grass") then
      local ret = SMODS.blueprint_effect(card, other_joker, context)
      if ret then ret.colour = G.C.BLUE end
      return ret
    end
  end,
  attributes = {"copying", "types", "item_evo"},
}
return {name = "Pokemon Jokers 271-300", 
        list = {taillow, swellow, wingull, pelipper, ralts, kirlia, gardevoir, shroomish, breloom, slakoth, vigoroth, slaking, nincada, ninjask, shedinja, 
                makuhita, hariyama, azurill, nosepass, skitty},
}
