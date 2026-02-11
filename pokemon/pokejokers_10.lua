-- Lombre 271
-- Ludicolo 272
-- Seedot 273
-- Nuzleaf 274
-- Shiftry 275
-- Taillow 276
-- Swellow 277
-- Wingull 278
-- Pelipper 279
-- Ralts 280
-- Kirlia 281
-- Gardevoir 282
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
  end
}
-- Slakoth 287
-- Vigoroth 288
-- Slaking 289
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
  end
}
-- Skitty 300
local skitty={
  name = "skitty",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 6,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local highlight_colour = center.ability.extra.change_to_type ~= "Lightning" and G.C.WHITE or G.C.BLACK
    local type_colour = G.ARGS.LOC_COLOURS[string.lower(G.GAME.current_round.cattype or "Grass")]
    return {vars = {G.GAME.current_round.cattype or "Grass", colours = {type_colour, highlight_colour}}}
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
    if not evo then
      local other_joker = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card and G.jokers.cards[i + 1] and (is_type(G.jokers.cards[i + 1], G.GAME.current_round.cattype)) then 
          other_joker = G.jokers.cards[i + 1] 
        end
      end
      local ret = SMODS.blueprint_effect(card, other_joker, context)
      if ret then
          ret.colour = G.C.BLUE
      end
      return ret
    else
      return evo
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers then
      local other_joker = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card and G.jokers.cards[i + 1] and (is_type(G.jokers.cards[i + 1], G.GAME.current_round.cattype)) then 
          other_joker = G.jokers.cards[i + 1] 
        end
      end
      card.ability.blueprint_compat = (other_joker and other_joker ~= card and other_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
    end
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    type_tooltip(self, info_queue, card)
    local highlight_colour = (G.GAME.current_round.cattype or "Grass") ~= "Lightning" and G.C.WHITE or G.C.BLACK
    local type_colour = G.ARGS.LOC_COLOURS[string.lower(G.GAME.current_round.cattype or "Grass")]
    local _c = card and card.config.center or card
    if not full_UI_table.name then
      full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
    end
    card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ''
    card.ability.blueprint_compat_check = nil
    local main_end = (card.area and card.area == G.jokers) and {
      {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
        {n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
          {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
        }}
      }}
    } or nil
    localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {G.GAME.current_round.cattype or "Grass", colours = {type_colour, highlight_colour}}}
    desc_nodes[#desc_nodes+1] = main_end
  end,
}
return {name = "Pokemon Jokers 271-300", 
        list = {shroomish, breloom, nincada, ninjask, shedinja, makuhita, hariyama, azurill, nosepass, skitty},
}
