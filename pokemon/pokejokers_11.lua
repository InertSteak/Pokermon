-- Delcatty 301
local delcatty={
  name = "delcatty",
  pos = {x = 0, y = 0},
  config = {extra = {energy_buff = 1}},
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

    return {vars = {cattype, card.ability.extra.energy_buff, colours = {type_colour, highlight_colour}}, main_end = main_end}
  end,
  rarity = "poke_safari",
  cost = 9,
  gen = 3,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    local found_pos = get_index(G.jokers.cards, card) + 1
    local other_joker = G.jokers.cards[found_pos]
    if other_joker and other_joker.config.center.blueprint_compat and not context.no_blueprint
        and is_type(other_joker, G.GAME.current_round.cattype or "Grass") then
      local fake_card = {config = other_joker.config}
      fake_card.ability = setmetatable({}, {__index = other_joker.ability})
      fake_card.ability.extra = other_joker.ability.extra
      if type(other_joker.ability.extra) == 'table' then
        fake_card.ability.extra = setmetatable({}, {__index = other_joker.ability.extra})
      end
      energize(fake_card, nil, nil, true, card.ability.extra.energy_buff)

      other_joker.gone = true --prevent evolution
      local true_ability = other_joker.ability
      other_joker.ability = fake_card.ability
      local ret = SMODS.blueprint_effect(card, other_joker, context)
      other_joker.ability = true_ability
      other_joker.gone = nil

      if ret then ret.colour = G.C.BLUE end
      return ret
    end
  end,
  attributes = {"copying", "types", "energy_count"},
}
-- Sableye 302
-- Mawile 303
-- Aron 304
local aron = {
  name = "aron",
  pos = { x = 2, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .25, eaten = 0 }, evo_rqmt = 2 },
  rarity = 2,
  cost = 6,
  stage = "Basic",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  enhancement_gate = 'm_steel',
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if SMODS.has_enhancement(v, 'm_steel') and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          SMODS.scale_card(card, {
            ref_value = 'Xmult',
            scalar_value = 'Xmult_mod',
            no_message = true,
          })
          v.aron_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    end
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.destroying_card and context.destroying_card.aron_target and not context.blueprint
        and SMODS.has_enhancement(context.destroying_card, 'm_steel') then
      return true
    end
    return scaling_evo(self, card, context, "j_poke_lairon", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
  attributes = {"xmult", "enhancements", "destroy_card", "scaling", "scaling_evo"},
}
-- Lairon 305
local lairon = {
  name = "lairon",
  pos = { x = 3, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .4, eaten = 0 }, evo_rqmt = 4 },
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (SMODS.has_enhancement(v, 'm_steel') or SMODS.has_enhancement(v, 'm_stone')) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          SMODS.scale_card(card, {
            ref_value = 'Xmult',
            scalar_value = 'Xmult_mod',
            no_message = true,
          })
          v.lairon_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    end
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.destroying_card and context.destroying_card.lairon_target and not context.blueprint
        and (SMODS.has_enhancement(context.destroying_card, 'm_steel')
          or SMODS.has_enhancement(context.destroying_card, 'm_stone')) then
      return true
    end
    return scaling_evo(self, card, context, "j_poke_aggron", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
  attributes = {"xmult", "enhancements", "destroy_card", "scaling", "scaling_evo"},
}
-- Aggron 306
local aggron = {
  name = "aggron",
  pos = { x = 4, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .4, eaten = 0 } },
  rarity = "poke_safari",
  cost = 12,
  stage = "Two",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (SMODS.has_enhancement(v, 'm_steel') or SMODS.has_enhancement(v, 'm_stone') or SMODS.has_enhancement(v, 'm_gold')) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          SMODS.scale_card(card, {
            ref_value = 'Xmult',
            scalar_value = 'Xmult_mod',
            no_message = true,
          })
          v.aggron_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    end
      if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.destroying_card and context.destroying_card.aggron_target and not context.blueprint
        and (SMODS.has_enhancement(context.destroying_card, 'm_steel')
          or SMODS.has_enhancement(context.destroying_card, 'm_stone')
          or SMODS.has_enhancement(context.destroying_card, 'm_gold')) then
      return true
    end
  end,
  attributes = {"xmult", "enhancements", "destroy_card", "scaling"},
}
-- Meditite 307
local meditite={
  name = "meditite",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 7,rounds = 5, d_remaining = 0,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local total = 0
    if G.consumeables and G.GAME and G.GAME.current_round and G.GAME.current_round.discards_left == center.ability.extra.d_remaining then
      total = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards) * center.ability.extra.mult_mod
    end
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.rounds, center.ability.extra.d_remaining, total}}
  end,
  rarity = 1,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Fighting",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
      local total = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards) * card.ability.extra.mult_mod
      return {
        mult = total
      }
    end
    return level_evo(self, card, context, "j_poke_medicham")
  end,
  attributes = {"mult", "discard", "round_evo"},
}
-- Medicham 308
local medicham={
  name = "medicham",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 12, d_remaining = 0,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_sixth_sense', config={}}
    local total = 0
    if G.consumeables and G.GAME and G.GAME.current_round and G.GAME.current_round.discards_left == center.ability.extra.d_remaining then
      total = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards) * center.ability.extra.mult_mod
    end
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.rounds, center.ability.extra.d_remaining, total}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 3,
  stage = "One",
  ptype = "Fighting",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
      local total = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards) * card.ability.extra.mult_mod
      return {
        mult = total
      }
    end
    if context.destroy_card and not context.blueprint then
      if #context.full_hand == 1 and context.destroy_card == context.full_hand[1] and context.full_hand[1]:get_id() == 6 and G.GAME.current_round.hands_played == 0 then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        SMODS.add_card { set = 'Spectral'}
                        G.GAME.consumeable_buffer = 0
                        return true
                    end)
                }))
                return {
                    message = localize('k_plus_spectral'),
                    colour = G.C.SECONDARY_SET.Spectral,
                    remove = true
                }
            end
            return {
                remove = true
            }
        end
      end
  end,
  attributes = {"mult", "discard", "applies"},
}
-- Electrike 309
-- Manectric 310
-- Plusle 311
-- Minun 312
-- Volbeat 313
local volbeat={
  name = "volbeat",
  pos = {x = 0, y = 0},
  config = {extra = {chips = 0, chip_mod = 6, Xmult_mod = 0.1, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = 2,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult,
        chips = card.ability.extra.chips
      }
    end
    if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
      SMODS.scale_card(card, {
        ref_value = 'chips',
        scalar_value = 'chip_mod',
        message_key = 'a_chips',
        message_colour = G.C.CHIPS
      })
      if #find_pokemon_type("Grass", card) > 0 then
        SMODS.scale_card(card, {
          ref_value = 'Xmult',
          scalar_value = 'Xmult_mod',
          message_key = 'a_xmult',
          message_colour = G.C.XMULT,
        })
      end
    end
  end,
  attributes = {"chips", "planet", "types", "joker", "xmult"},
}
-- Illumise 314
local illumise={
  name = "illumise",
  pos = {x = 0, y = 0},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = 1,
  cost = 4,
  gen = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local grass_count = #find_pokemon_type("Grass")
      for i = 1, grass_count do
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          G.E_MANAGER:add_event(Event({
            func = (function()
                local planet = SMODS.add_card{set = 'Planet'}
                SMODS.calculate_effect({ message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet}, planet)
                G.GAME.consumeable_buffer = 0
                return true
            end)}))
        end
      end
    end
  end,
  attributes = {"planet", "types", "joker"},
}
-- Roselia 315
local roselia={
  name = "roselia",
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    return {vars = {center.ability.extra.retriggers, }}
  end,
  rarity = 2,
  cost = 7,
  gen = 3,
  item_req = "shinystone",
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_played == 0 and context.other_card == context.scoring_hand[1]
      and poke_is_odd(context.other_card) then
      return {
        repetitions = card.ability.extra.retriggers
      }
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 and not poke_is_odd(context.scoring_hand[1]) then
        local _card = context.scoring_hand[1]
        _card:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                _card:juice_up()
                return true
            end
        })) 
      end
    end
    return item_evo(self, card, context, "j_poke_roserade")
  end,
  attributes = {"rank", "ace", "three", "five", "seven", "nine", "retrigger", "enhancements", "item_evo"},
}
-- Gulpin 316
-- Swalot 317
-- Carvanha 318
local carvanha={
  name = "carvanha",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 2, eaten = 0,}, evo_rqmt = 3},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult,  math.max(0, self.config.evo_rqmt - center.ability.extra.eaten)}}
  end,
  rarity = 2,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  knockoff_starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      card.ability.extra.selected = false
      local eval = function() return not card.ability.extra.selected end
      juice_card_until(card, eval, true)
    end
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      card.ability.extra.selected = true
      local my_pos = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then
        local sliced_card = G.jokers.cards[my_pos + 1]
        sliced_card.getting_sliced = true
        
        card.ability.extra.eaten = card.ability.extra.eaten + 1
        
        G.GAME.joker_buffer = G.GAME.joker_buffer - 1
        G.E_MANAGER:add_event(Event({
          func = function()
            G.GAME.joker_buffer = 0
            card:juice_up(0.8, 0.8)
            sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
            play_sound('slice1', 0.96 + math.random() * 0.08)
            return true
          end
        }))
      end
    end
    if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
      return 
      {
        xmult = card.ability.extra.Xmult
      }
    end
    return scaling_evo(self, card, context, "j_poke_sharpedo", card.ability.extra.eaten, self.config.evo_rqmt)
  end,
  attributes = {"destroy_card", "xmult", "hand_type", "condition_evo"},
}
-- Sharpedo 319
local sharpedo={
  name = "sharpedo",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      card.ability.extra.selected = false
      local eval = function() return not card.ability.extra.selected end
      juice_card_until(card, eval, true)
    end
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      card.ability.extra.selected = true
      local my_pos = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then
        local sliced_card = G.jokers.cards[my_pos + 1]
        sliced_card.getting_sliced = true
        
        G.GAME.joker_buffer = G.GAME.joker_buffer - 1
        G.E_MANAGER:add_event(Event({
          func = function()
            G.GAME.joker_buffer = 0
            card:juice_up(0.8, 0.8)
            sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
            play_sound('slice1', 0.96 + math.random() * 0.08)
            return true
          end
        }))
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local spectral = SMODS.add_card{set = 'Spectral'}
          SMODS.calculate_effect({ message = localize('k_plus_spectral') }, spectral)
        end
      end
    end
    if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
      return 
      {
        xmult = card.ability.extra.Xmult
      }
    end
  end,
  attributes = {"destroy_card", "xmult", "hand_type", "generation", "spectral"},
}
-- Wailmer 320
-- Wailord 321
-- Numel 322
local numel={
  name = "numel",
  pos = {x = 0, y = 7},
  config = {extra = {Xmult = 3, rounds = 4, cards_scored = 0, score_goal = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.rounds, center.ability.extra.score_goal, math.max(0, center.ability.extra.score_goal - center.ability.extra.cards_scored)}}
  end,
  designer = "xtremepolymath",
  rarity = 2,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex3",
  knockoff_starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.active then
        card.ability.extra.cards_scored = 0
      end
      if context.joker_main and card.ability.extra.active then
        card.ability.extra.active = false
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after and card.ability.extra.cards_scored >= card.ability.extra.score_goal then
        card.ability.extra.active = true
        local eval = function(card) return card.ability.extra.active and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.blueprint then
      card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
    end
    return level_evo(self, card, context, "j_poke_camerupt")
  end,
  attributes = {"xmult", "round_evo"},
}
-- Camerupt 323
local camerupt={
  name = "camerupt",
  pos = {x = 1, y = 7},
  config = {extra = {Xmult = 4, cards_scored = 0, score_goal = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.score_goal, math.max(0, center.ability.extra.score_goal - center.ability.extra.cards_scored)}}
  end,
  designer = "xtremepolymath",
  rarity = "poke_safari",
  cost = 9,
  gen = 3,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.active then
        card.ability.extra.cards_scored = 0
      end
      if context.joker_main and card.ability.extra.active then
        card.ability.extra.active = false
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after and card.ability.extra.cards_scored >= card.ability.extra.score_goal then
        card.ability.extra.active = true
        local eval = function(card) return card.ability.extra.active and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.blueprint then
      card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
      if SMODS.has_enhancement(context.other_card, 'm_mult') then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
      end
    end
  end,
  megas = { "mega_camerupt" },
  attributes = {"xmult", "enhancements"},
}
-- Mega Camerupt 323-1
local mega_camerupt={
  name = "mega_camerupt",
  pos = {x = 6, y = 4},
  soul_pos = {x = 7, y = 4},
  config = {extra = {Xmult = 1, Xmult2 = 1, Xmult_mod = 0.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  designer = "xtremepolymath",
  rarity = "poke_mega",
  cost = 12,
  gen = 3,
  stage = "Mega",
  ptype = "Fire",
  atlas = "Megas",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.individual and context.cardarea == G.play and not context.blueprint and SMODS.has_enhancement(context.other_card, 'm_mult') then
      SMODS.scale_card(card, {
        ref_value = 'Xmult',
        scalar_value = 'Xmult_mod',
        message_colour = G.C.XMULT
      })
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.Xmult = card.ability.extra.Xmult2

      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
  attributes = {"xmult", "enhancements", "scaling", "reset"},
}
-- Torkoal 324
local torkoal={
  name = "torkoal",
  pos = {x = 0, y = 0},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {}}
  end,
  rarity = 3,
  cost = 7,
  gen = 3,
  enhancement_gate = "m_mult",
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_mult') then
      if G.GAME.current_round.discards_left > 0 then
        return {
          repetitions = G.GAME.current_round.discards_left
        }
      end
    end
  end,
}
-- Spoink 325
-- Grumpig 326
-- Spinda 327
local spinda={
  name = "spinda",
  pos = {x = 0, y = 0},
  config = {extra = {enhancements = {"m_bonus", "m_mult", "m_wild"}, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local card_vars = {}
    for i = 1, #center.ability.extra.enhancements do
      local enhance_name = localize('poke_'..center.ability.extra.enhancements[i])
      card_vars[#card_vars + 1] = enhance_name
    end
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Wheel of Fortune"}}
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 7,
  gen = 3,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.before and not context.blueprint then
      local natures = 0
      for _, scored_card in ipairs(context.scoring_hand) do
        for i=1, #card.ability.extra.targets do
          if scored_card:get_id() == card.ability.extra.targets[i].id then
              natures = natures + 1
              local enhancement = pseudorandom_element(card.ability.extra.enhancements, pseudoseed('spinda'))
              scored_card:set_ability(enhancement, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      scored_card:juice_up()
                      return true
                  end
              }))
          end
        end
      end
      if natures > 0 then
        return {
            message = localize('poke_teeter_dance_ex'),
            colour = G.ARGS.LOC_COLOURS["colorless"]
        }
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      self:set_nature(card)
    end
  end,
  set_nature = function(self,card)
    card.ability.extra.enhancements = get_poke_target_card_enhancements("spinda", 3, {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_gold", "m_lucky", "m_poke_seed"})
    card.ability.extra.targets = get_poke_target_card_ranks("spinda", 3, card.ability.extra.targets)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune'}
    end
  end,
  attributes = {"holding", "modify_card", "nature", "rank", "enhancements"},
}
-- Trapinch 328
-- Vibrava 329
-- Flygon 330
return {
  name = "Pokemon Jokers 301-330",
  list = {delcatty, aron, lairon, aggron, meditite, medicham, volbeat, illumise, roselia, carvanha, sharpedo, numel, camerupt, mega_camerupt, torkoal, spinda},
}
