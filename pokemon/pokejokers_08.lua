-- Qwilfish 211
local qwilfish = {
  name = "qwilfish", 
  pos = {x = 9, y = 5},
  config = {extra = {hazards = 4, chips = 0, chip_mod = 25}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    
    return {vars = {abbr.hazards, abbr.chip_mod, abbr.chips}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  hazard_poke = true,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.remove_playing_cards and not context.blueprint then
      for _, removed_card in ipairs(context.removed) do
        if removed_card.config.center ~= G.P_CENTERS.c_base then
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
        end
      end
    end
  end,
}
-- Scizor 212
local scizor={
  name = "scizor", 
  pos = {x = 0, y = 6},
  config = {extra = {mult = 0, scizor_chips = 0, scizor_Xmult = 1, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    end
    local emult = 0 
    local echips = 0 
    local eXmult = 1
    if center.edition and center.edition.holo then
      emult = center.edition.mult or 0
    end
    if center.edition and center.edition.foil then
      echips = center.edition.chips or 0
    end
    if center.edition and center.edition.polychrome then
     eXmult = center.edition.x_mult or 1
    end
    return {vars = {center.ability.extra.mult + emult, center.ability.extra.scizor_chips + echips, center.ability.extra.scizor_Xmult * eXmult, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  poke_custom_values_to_keep = {"mult", "scizor_chips", "scizor_Xmult", "mult_mod"},
  calculate = function(self, card, context)
    if context.ending_shop then
      card.ability.extra.selected = false
      local eval = function() return not card.ability.extra.selected end
      juice_card_until(card, eval, true)
    end
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          if (sliced_card.config.center.rarity ~= 1 and sliced_card.config.center.rarity ~=2) then
            if card.edition then
              if card.edition.chips then
                card.ability.extra.scizor_chips = card.ability.extra.scizor_chips + card.edition.chips
              end
              if card.edition.mult then
                card.ability.extra.mult = card.ability.extra.mult + card.edition.mult
              end
              if card.edition.x_mult then
                card.ability.extra.scizor_Xmult = card.ability.extra.scizor_Xmult * card.edition.x_mult
              end
            end
            local edition = nil
            if sliced_card.edition and (sliced_card.edition.foil or sliced_card.edition.holo or sliced_card.edition.polychrome) then
              edition = sliced_card.edition
            else
              edition = poll_edition('wheel_of_fortune', nil, true, true)
            end
            card:set_edition(edition, true)
          end
          
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.RED, no_juice = true})
      end
      card.ability.extra.selected = true
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_x_scissor_ex"),
          colour = G.ARGS.LOC_COLOURS.metal,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.scizor_chips,
          Xmult_mod = card.ability.extra.scizor_Xmult
        }
      end
    end
  end,
  megas = { "mega_scizor" },
}

local mega_scizor={
  name = "mega_scizor",
  pos = {x = 4, y = 2},
  soul_pos = {x = 5, y = 2},
  config = {extra = {Xmult_multi = 4, mult = 0, scizor_chips = 0, scizor_Xmult = 1, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Metal",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  poke_custom_values_to_keep = {"mult", "scizor_chips", "scizor_Xmult", "mult_mod"},
  calculate = function(self, card, context)
    if context.other_joker and context.other_joker.config.center.rarity == 1 then
      G.E_MANAGER:add_event(Event({
        func = function()
            context.other_joker:juice_up(0.5, 0.5)
            return true
        end
      })) 
      return {
        message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult_multi
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card:juice_up()
      for k, v in pairs(G.jokers.cards) do
        if v.config.center.rarity == 1 and not v.ability.eternal then
          v:start_dissolve({HEX("57ecab")}, nil, 1.6)
          play_sound('slice1', 0.96+math.random()*0.08)
        end
      end
    end
  end,
}
-- Shuckle 213
local shuckle={
  name = "shuckle",
  pos = {x = 1, y = 6},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_berry_juice
    end
    return {vars = {}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced and not context.blueprint and G.consumeables and G.consumeables.cards and #G.consumeables.cards > 0 then
      local sliced_card = G.consumeables.cards[1]
      if not sliced_card.getting_sliced and not sliced_card.config.center.berry_juice then
        sliced_card.getting_sliced = true
        G.E_MANAGER:add_event(Event({func = function()
            card:juice_up(0.8, 0.8)
            sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
            play_sound('slice1', 0.96+math.random()*0.08)
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, pokermon.juice_list[sliced_card.config.center.set] or 'c_poke_berry_juice_mystery')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
        return true end }))
      end
    end
  end,
}
-- Heracross 214
local heracross = {
  name = "heracross", 
  pos = {x = 2, y = 6},
  config = {extra = {Xmult = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        if G.hand and G.hand.cards then
          local found_ranks = {}
          for _, played_card in pairs(context.scoring_hand) do
            found_ranks[played_card:get_id()] = true
          end
          for _, hand_card in pairs(G.hand.cards) do
            if found_ranks[hand_card:get_id()] then return end
          end
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}},
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        end
      end
    end
  end,
  megas = { "mega_heracross" },
}
local mega_heracross={
  name = "mega_heracross",
  pos = {x = 6, y = 2},
  soul_pos = {x = 7, y = 2},
  config = {extra = {retriggers = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Grass",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.no_score = nil
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and not card.ability.extra.no_score then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.before and #context.full_hand < 5 then
        card.ability.extra.no_score = true
        G.E_MANAGER:add_event(Event({
          func = function()
              card:juice_up()
              card.ability.fainted = G.GAME.round
              card:set_debuff()
              return true
          end
        })) 
      end
    end
    if context.pre_discard and #G.hand.highlighted < 5 and not context.hook and not context.blueprint then
        G.E_MANAGER:add_event(Event({
          func = function()
              card:juice_up()
              card.ability.fainted = G.GAME.round
              card:set_debuff()
              return true
          end
        })) 
    end
  end,
}
-- Sneasel 215
local sneasel = {
  name = "sneasel",
  pos = {x = 3, y = 6},
  config = {extra = {money = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_duskstone
    end
    return {vars = {localize(G.GAME.current_round.sneaselcard and G.GAME.current_round.sneaselcard.rank or "Ace", 'ranks'), card.ability.extra.money}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  item_req = "duskstone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.final_scoring_step and #context.full_hand == 1 and context.full_hand[1]:get_id() == G.GAME.current_round.sneaselcard.id and not context.blueprint then
      context.full_hand[1].to_be_removed_by = card
      ease_poke_dollars(card, "sneasel", card.ability.extra.money)
      card:juice_up()
    end
    if context.destroy_card and context.destroy_card.to_be_removed_by == card and not context.blueprint then
      context.destroy_card.to_be_removed_by = nil
      return {
        remove = true
      }
    end
    return item_evo(self, card, context, "j_poke_weavile")
  end
}
-- Teddiursa 216
local teddiursa={
  name = "teddiursa",
  pos = {x = 4, y = 6},
  config = {extra = {mult = 0,mult_mod = 2,},evo_rqmt = 12},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, self.config.evo_rqmt}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.skipping_booster and not context.blueprint then
      card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MULT})
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult, 
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_ursaring", card.ability.extra.mult, self.config.evo_rqmt)
  end,
}
-- Ursaring 217
local ursaring={
  name = "ursaring",
  pos = {x = 5, y = 6},
  config = {extra = {mult = 0,mult_mod = 3,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2,
  cost = 8,
  item_req = "moonstone",
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.skipping_booster then
      if not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MULT})
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult, 
          card = card
        }
      end
    end
    return item_evo(self, card, context, "j_poke_ursaluna")
  end,
}
-- Slugma 218
local slugma={
  name = "slugma",
  pos = {x = 6, y = 6},
  config = {extra = {chips = 0,chip_mod = 12, hands = 4, hand_reset = 4}, evo_rqmt = 60},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,self.config.evo_rqmt, center.ability.extra.hands}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and card.ability.extra.hands == 1 then
      local eval = function(card) return card.ability.extra.hands <= 1 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.hands = card.ability.extra.hands - 1
        if card.ability.extra.hands == 1 then
          local eval = function(card) return card.ability.extra.hands <= 1 and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
        if card.ability.extra.hands == 0 then
          if G.hand and G.hand.cards and G.hand.cards[1] then
            card.ability.extra.remove = true
          end
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          card.ability.extra.hands = card.ability.extra.hand_reset
        end
      end
      if context.after and card.ability.extra.remove and not context.blueprint then
        card.ability.extra.remove = false
        poke_remove_card(G.hand.cards[1], card)
      end
    end
    if context.joker_main then
      return{
        message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
        colour = G.C.CHIPS,
        chip_mod = card.ability.extra.chips
      }
    end
    return scaling_evo(self, card, context, "j_poke_magcargo", card.ability.extra.chips, self.config.evo_rqmt)
  end,
}
-- Magcargo 219
local magcargo={
  name = "magcargo",
  pos = {x = 7, y = 6},
  config = {extra = {chips = 0,chip_mod = 15, hands = 3, hand_reset = 3, remove = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,center.ability.extra.hands}}
  end,
  rarity = 3,
  cost = 6,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and card.ability.extra.hands == 1 then
      local eval = function(card) return card.ability.extra.hands <= 1 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.hands = card.ability.extra.hands - 1
        if card.ability.extra.hands == 1 then
          local eval = function(card) return card.ability.extra.hands <= 1 and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
        if card.ability.extra.hands == 0 then
          if G.hand and G.hand.cards and G.hand.cards[1] then
            card.ability.extra.remove = true
          end
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          card.ability.extra.hands = card.ability.extra.hand_reset
        end
      end
      if context.after and card.ability.extra.remove and not context.blueprint then
        card.ability.extra.remove = false
        poke_remove_card(G.hand.cards[1], card)
      end
    end
    if context.joker_main then
      return{
        message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
        colour = G.C.CHIPS,
        chip_mod = card.ability.extra.chips
      }
    end
  end,
}
-- Swinub 220
local swinub={
  name = "swinub",
  pos = {x = 8, y = 6},
  config = {extra = {mult = 5,money = 3,num = 1, dem = 2,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'swinub')
    return {vars = {center.ability.extra.mult, center.ability.extra.money, num, dem, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.scoring_hand then
      if context.other_card == context.scoring_hand[1] then
        local stoneglass = 0
        for k, v in pairs(context.scoring_hand) do
          if SMODS.has_enhancement(v, 'm_stone') or SMODS.has_enhancement(v, 'm_glass') then
            stoneglass = stoneglass + 1
          end
        end
        
        if stoneglass > 0 then
          return {
            mult = card.ability.extra.mult * stoneglass,
            card = card
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_piloswine")
  end,
  calc_dollar_bonus = function(self, card)
    if SMODS.pseudorandom_probability(card, 'swinub', card.ability.extra.num, card.ability.extra.dem, 'swinub') then
      return ease_poke_dollars(card, "2swinub", card.ability.extra.money, true)
    end
  end,
}
-- Piloswine 221
local piloswine={
  name = "piloswine",
  pos = {x = 9, y = 6},
  config = {extra = {mult = 10,money = 6,num = 1, dem = 2,scored = 0,}, evo_rqmt = 15},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'piloswine')
    return {vars = {center.ability.extra.mult, center.ability.extra.money, num, dem, math.max(0, self.config.evo_rqmt - center.ability.extra.scored)}}
  end,
  rarity = 3,
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.scoring_hand then
      if SMODS.has_enhancement(context.other_card, 'm_stone') or SMODS.has_enhancement(context.other_card, 'm_glass') then
        card.ability.extra.scored = card.ability.extra.scored + 1
      end
      if context.other_card == context.scoring_hand[1] then
        local stoneglass = 0
        for k, v in pairs(context.scoring_hand) do
          if SMODS.has_enhancement(v, 'm_stone') or SMODS.has_enhancement(v, 'm_glass') then
            stoneglass = stoneglass + 1
          end
        end
        
        if stoneglass > 0 then
          return {
            mult = card.ability.extra.mult * stoneglass,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_mamoswine", card.ability.extra.scored, self.config.evo_rqmt)
  end,
  calc_dollar_bonus = function(self, card)
    if SMODS.pseudorandom_probability(card, 'piloswine', card.ability.extra.num, card.ability.extra.dem, 'piloswine') then
      return ease_poke_dollars(card, "2piloswine", card.ability.extra.money, true)
    end
  end,
}
-- Corsola 222
local corsola={
  name = "corsola", 
  pos = {x = 0, y = 7},
  config = {extra = {mult_mod = 3, corsola_tally = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
    end
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.mult_mod*center.ability.extra.corsola_tally}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.corsola_tally = 0
      for k, v in pairs(G.playing_cards) do
        if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.corsola_tally = card.ability.extra.corsola_tally+1 end
      end
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local enhanced = 0
        for k, v in pairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base then
           enhanced = enhanced + 1
          end
        end
        
        if enhanced == 5 then
          if (#G.jokers.cards + G.GAME.joker_buffer) < G.jokers.config.card_limit then
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
              trigger = 'after',
              delay = 0.2,
              func = function() 
                G.GAME.joker_buffer = 0
                play_sound('timpani')
                local _card = create_random_poke_joker('corsola', "Basic", nil, nil, "Water")
                _card:add_to_deck()
                G.jokers:emplace(_card)
            return true end }))
          end
        end
        if card.ability.extra.corsola_tally > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * card.ability.extra.corsola_tally}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult_mod * card.ability.extra.corsola_tally 
          }
        end
      end
    end
  end
}
-- Remoraid 223
local remoraid={
  name = "remoraid",
  pos = {x = 1, y = 7},
  config = {extra = {retriggers = 1,rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_played == 0 then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_octillery")
  end
}
-- Octillery 224
local octillery={
  name = "octillery",
  pos = {x = 2, y = 7},
  config = {extra = {retriggers = 1, card_max = 8, cards = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.card_max, center.ability.extra.card_max - center.ability.extra.cards}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main then
        local has_eight = nil
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 8 then
            has_eight = true
          end
        end
        if not has_eight then
          G.E_MANAGER:add_event(Event({
            func = function()
                card.ability.fainted = G.GAME.round
                card:set_debuff()
                return true
            end
          })) 
        end
      end
    end
  end
}
-- Delibird 225
local delibird={
  name = "delibird",
  pos = {x = 3, y = 7},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'deli_gift'}
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
      info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
      info_queue[#info_queue+1] = G.P_CENTERS.j_gift
    end
    return {vars = {}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calc_dollar_bonus = function(self, card)
    local gift = pseudorandom(pseudoseed('delibird'))
    if gift > .65 then
      return 8
    elseif gift > .35 then
      --create item
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    elseif gift > .15 then
      --create coupon tag
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    else
      --create polychrome gift card
      if #G.jokers.cards < G.jokers.config.card_limit then
        local temp_card = {set = "Joker", area = G.jokers, key = "j_gift", no_edition = true}
        local new_card = SMODS.create_card(temp_card)
        local edition = {polychrome = true}
        new_card:set_edition(edition, true)
        new_card:add_to_deck()
        G.jokers:emplace(new_card)
      end
    end
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_gift_ex'), colour = G.C.GREEN})
  end
}
-- Mantine 226
local mantine={
  name = "mantine",
  pos = {x = 4, y = 7},
  config = {extra = {chips = 0, chip_mod = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,}}
  end,
  designer = "FlamingRok",
  rarity = 3,
  cost = 8,
  enhancement_gate = "m_gold",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.individual and not context.end_of_round and (context.cardarea == G.play or context.cardarea == G.hand) then
      if SMODS.has_enhancement(context.other_card, 'm_gold') then 
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        if context.cardarea == G.play then
          return {
            card = card,
            colour = G.C.CHIPS,
            message = localize('k_upgrade_ex'),
          }
        else
          return {
              message = localize("k_upgrade_ex"),
              colour = G.C.CHIPS,
              card = card
          }
        end
      end
    end
  end
}
-- Skarmory 227
local skarmory = {
  name = "skarmory", 
  pos = {x = 5, y = 7},
  config = {extra = {hazards = 4, Xmult_mod = 0.50}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end

    local hazard_count = 0
    if G.hand and G.hand.cards and #G.hand.cards > 0 then
      for i=1, #G.hand.cards do
        if SMODS.has_enhancement(G.hand.cards[i], "m_poke_hazard") or SMODS.has_enhancement(G.hand.cards[i], "m_steel") then
          hazard_count = hazard_count + 1
        end
      end 
    end
    return {vars = {abbr.hazards, abbr.Xmult_mod, 1 + abbr.Xmult_mod * hazard_count}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Metal",
  atlas = "Pokedex2",
  gen = 2,
  hazard_poke = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local hazard_count = 0
        if G.hand and G.hand.cards and #G.hand.cards > 0 then
          for i=1, #G.hand.cards do
            if SMODS.has_enhancement(G.hand.cards[i], "m_poke_hazard") or SMODS.has_enhancement(G.hand.cards[i], "m_steel")  then
              hazard_count = hazard_count + 1
            end
          end 
        end
        local Xmult = 1 + card.ability.extra.Xmult_mod * hazard_count
        if Xmult > 1 then
          return{
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end,
}
-- Houndour 228
local houndour={
  name = "houndour",
  pos = {x = 6, y = 7},
  config = {extra = {mult_mod = 1,rounds = 5, discards = 2, active = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.rounds, center.ability.extra.discards}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook and not context.blueprint then
      if card.ability.extra.active then
        card.ability.extra.active = false
      elseif #context.full_hand > 3 then
        card.ability.extra.active = true
      end
    end
    if context.discard and context.other_card then
      context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) + card.ability.extra.mult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.RED})
    end
    if context.post_discard and card.ability.extra.active and not context.recursive and not context.blueprint then
      G.E_MANAGER:add_event(Event({func = function()
        card.ability.extra.active = false
        local targets = {}
        local selected = nil
        for i=1, #G.hand.cards do
          if G.hand.cards[i] and not G.hand.cards[i].ability.discarded then
            table.insert(targets, G.hand.cards[i])
          end
        end
        pseudoshuffle(targets, pseudoseed('houndour'))
        if #targets > 0 then
          for i = 1, math.min(#targets, card.ability.extra.discards) do
              G.hand:add_to_highlighted(targets[i], true)
              selected = true
              play_sound('card1', 1)
          end
          if selected then 
            delay(0.2)
            G.FUNCS.discard_cards_from_highlighted(nil, true)
          end
          for i = 1, math.min(#targets, card.ability.extra.discards) do
              G.hand:remove_from_highlighted(targets[i], true)
              targets[i]:highlight(true)
          end  
        end
      return true end }))
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.active = false
    end
    return level_evo(self, card, context, "j_poke_houndoom")
  end,
}
-- Houndoom 229
local houndoom={
  name = "houndoom",
  pos = {x = 7, y = 7},
  config = {extra = {mult_mod = 2,rounds = 5, active = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.mult_mod}}
  end,
  rarity = 3,
  cost = 8,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook and not context.blueprint then
      if card.ability.extra.active then
        card.ability.extra.active = false
      elseif #context.full_hand > 3 then
        card.ability.extra.active = true
      end
    end
    if context.discard and context.other_card then
      context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) + card.ability.extra.mult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.RED})
    end
    if context.post_discard and card.ability.extra.active and not context.recursive and not context.blueprint then
      G.E_MANAGER:add_event(Event({func = function()
        card.ability.extra.active = false
        local targets = {}
        local selected = nil
        for i=1, #G.hand.cards do
          if G.hand.cards[i] and not G.hand.cards[i].ability.discarded then
            table.insert(targets, G.hand.cards[i])
          end
        end
        if #targets > 0 then
          local old_limit = G.hand.config.highlighted_limit
          G.hand.config.highlighted_limit = #targets
          for i = 1, #targets do
              G.hand:add_to_highlighted(targets[i], true)
              selected = true
              play_sound('card1', 1)
          end
          if selected then 
            delay(0.2)
            G.FUNCS.discard_cards_from_highlighted(nil, true)
          end
          for i = 1, #targets do
              G.hand:remove_from_highlighted(targets[i], true)
              targets[i]:highlight(true)
          end 
          G.hand.config.highlighted_limit = old_limit
        end
      return true end }))
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.active = false
    end
  end,
  megas = { "mega_houndoom" },
}

local mega_houndoom={
  name = "mega_houndoom",
  pos = {x = 8, y = 2},
  soul_pos = {x = 9, y = 2},
  config = {extra = {Xmult = 1, Xmult_mod = 2, oXmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Dark",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.pre_discard and not context.hook and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.XMULT
        }
    end
    if context.post_discard and not context.recursive and not context.blueprint then
      G.E_MANAGER:add_event(Event({func = function()
        card.ability.extra.active = false
        local targets = {}
        local selected = nil
        for i=1, #G.hand.cards do
          if G.hand.cards[i] and not G.hand.cards[i].ability.discarded then
            table.insert(targets, G.hand.cards[i])
          end
        end
        if #targets > 0 then
          local old_limit = G.hand.config.highlighted_limit
          G.hand.config.highlighted_limit = #targets
          for i = 1, #targets do
              G.hand:add_to_highlighted(targets[i], true)
              selected = true
              play_sound('card1', 1)
          end
          if selected then 
            delay(0.2)
            G.FUNCS.discard_cards_from_highlighted(nil, true)
          end
          for i = 1, #targets do
              G.hand:remove_from_highlighted(targets[i], true)
              targets[i]:highlight(true)
          end 
          G.hand.config.highlighted_limit = old_limit
        end
      return true end }))
    end
    if context.first_hand_drawn then
      card.ability.extra.oXmult = card.ability.extra.Xmult
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.oXmult
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
}
-- Kingdra 230
local kingdra={
  name = "kingdra", 
  pos = {x = 8, y = 7},
  config = {extra = {mult = 0, mult_mod = 1, Xmult = 1, Xmult_mod = .05}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.blueprint then
      if context.other_card:get_id() == 6 then
        local has_king = false
        for i = 1, #G.hand.cards do 
          if G.hand.cards[i]:get_id() == 13 then has_king = true; break end
        end
        if has_king then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        else
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_twister_ex"),
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
}
-- Phanpy 231
local phanpy={
  name = "phanpy",
  pos = {x = 9, y = 7},
  config = {extra = {Xmult = 1,Xmult_mod = 0.1,rounds = 5, Xmult2 = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if #context.scoring_hand >= 5 then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.RED,
            card = card
          }
        else
          card.ability.extra.Xmult = card.ability.extra.Xmult2
          return {
            message = localize('k_reset'),
            colour = G.C.RED
          }
        end
      end
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_donphan")
  end
}
-- Donphan 232
local donphan={
  name = "donphan",
  pos = {x = 0, y = 8},
  config = {extra = {Xmult = 1, Xmult_mod = 0.15, Xmult2 = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod,}}
  end,
  rarity = 3,
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if #context.scoring_hand >= 5 then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.RED,
            card = card
          }
        else
          card.ability.extra.Xmult = card.ability.extra.Xmult2
          return {
            message = localize('k_reset'),
            colour = G.C.RED
          }
        end
      end
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
-- Porygon2 233
local porygon2={
  name = "porygon2", 
  pos = {x = 1, y = 8},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_dubious_disc
    end
    return {vars = {}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  item_req = "dubious_disc",
  joblacklist = true,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local forced_key = matching_energy(G.jokers.cards[1], true);
      if forced_key == "c_poke_bird_energy" then
        poke_evolve(card, 'j_poke_porygonz')
      end
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'before',
          delay = 0.0,
          func = (function()
                  local card = create_card('Energy', G.consumeables, nil, nil, nil, nil, forced_key)
                  card:add_to_deck()
                  G.consumeables:emplace(card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
    end
    return item_evo(self, card, context, "j_poke_porygonz")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 2
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 2
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 2
    end
  end
}
-- Stantler 234
local stantler={
  name = "stantler",
  pos = {x = 2, y = 8},
  config = {extra = {scry = 2, triggered = 0}, evo_rqmt = 12},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.scry, math.max(0, self.config.evo_rqmt - center.ability.extra.triggered)}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if not context.end_of_round and context.scoring_hand then
      if context.individual and context.cardarea == G.scry_view and not context.other_card.debuff then
        local highest = nil
        local highest_card = nil
        for k, v in pairs(G.scry_view.cards) do
          if not SMODS.has_no_suit(v) then
            if not highest then highest = v.base.id; highest_card = v end
            if v.base.id > highest then
              highest = v.base.id
              highest_card = v
            end
          end
        end
        if highest_card and context.other_card == highest_card then
          if not context.blueprint then card.ability.extra.triggered = card.ability.extra.triggered + 1 end
          local Mult = highest_card.base.nominal
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}},
            message_card = context.other_card,
            colour = G.C.MULT,
            mult_mod = Mult,
            card = card,
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_wyrdeer", card.ability.extra.triggered, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = math.max(0,(G.GAME.scry_amount or 0) - card.ability.extra.scry)
  end,
}
-- Smeargle 235
local smeargle={
  name = "smeargle",
  pos = {x = 3, y = 8},
  config = {extra = {copy_joker = nil, copy_pos = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_smeared', config = {} }
      info_queue[#info_queue+1] = {set = 'Other', key = 'sketch', vars = {}}
    end
    return {vars = {}}
  end,
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and card.ability.blueprint_compat == 'compatible' and G.jokers.cards[#G.jokers.cards] ~= card and not card.getting_sliced then
      local found_pos = 0
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then found_pos = i + 1 end
      end
      if G.jokers.cards[found_pos] then
        card.ability.extra.copy_joker = G.jokers.cards[found_pos] 
        card.ability.extra.copy_pos = found_pos
      end
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_copied_ex')})
    end

    local other_joker = G.jokers.cards[card.ability.extra.copy_pos]
    if other_joker and other_joker ~= card and not context.no_blueprint then
      context.blueprint = (context.blueprint or 0) + 1
      context.blueprint_card = context.blueprint_card or card
      if context.blueprint > #G.jokers.cards + 1 then return end
      local other_joker_ret = other_joker:calculate_joker(context)
      context.blueprint = nil
      local eff_card = context.blueprint_card or card
      context.blueprint_card = nil
      if other_joker_ret then 
        other_joker_ret.card = eff_card
        other_joker_ret.colour = G.C.BLACK
        return other_joker_ret
      end
    end
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_smeared', config = {} }
    info_queue[#info_queue+1] = {set = 'Other', key = 'sketch', vars = {}}
    type_tooltip(self, info_queue, card)
    if card and card.ability and card.ability.extra.copy_joker then
      local other_center = card.ability.extra.copy_joker.config.center
      local new_config = copy_table(card.ability.extra.copy_joker.ability)
      if type(other_center.loc_vars) == "function" then
        local other_queue = {}
        local other_vars = other_center:loc_vars(other_queue, card.ability.extra.copy_joker)
        if other_vars and other_vars.vars then
          new_config.loc_vars_replacement = other_vars.vars
        end
        if other_queue and #other_queue > 0 then
          -- Can filter sub-tooltips for any "needed" tooltips
        end
      end
      info_queue[#info_queue + 1] = { set = 'Joker', key = other_center.key, name = other_center.name, config = new_config }
    end
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
    localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes}
    desc_nodes[#desc_nodes+1] = main_end
  end,
  load = function(self, card, card_table, other_card)
    card.has_loaded = true
  end,
  update = function(self, card, dt)
    if card.has_loaded then
      card.ability.extra.copy_joker = G.jokers.cards[card.ability.extra.copy_pos]
      card.has_loaded = false
    end
    if card.ability.extra.copy_joker and card.ability.extra.copy_joker ~= G.jokers.cards[card.ability.extra.copy_pos] then
      local found = nil
      for i=1, #G.jokers.cards do
        if card.ability.extra.copy_joker == G.jokers.cards[i] then
          card.ability.extra.copy_pos = i
          found = true
          break
        end
      end
      if not found then
        card.ability.extra.copy_joker = nil
        card.ability.extra.copy_pos = 0
      end
    end
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers then
      local found_pos = 0
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then found_pos = i + 1 end
      end
      local right_joker = G.jokers.cards[found_pos]
      card.ability.blueprint_compat = ( right_joker and right_joker ~= card and not right_joker.debuff and right_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.copy_joker = nil
  end,
}
-- Tyrogue 236
local tyrogue={
  name = "tyrogue",
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  pos = {x = 4, y = 8}, 
  rarity = 2, 
  cost = 4, 
  stage = "Baby", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    end
		return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
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
      if context.after and not context.blueprint and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 5 then
        local target = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
        local copy = copy_card(target, nil, nil, G.playing_card)
        copy:add_to_deck()
        G.deck.config.card_limit = G.deck.config.card_limit + 1
        table.insert(G.playing_cards, copy)
        G.hand:emplace(copy)
        copy.states.visible = nil
        G.E_MANAGER:add_event(Event({
          func = function()
              copy:start_materialize()
              return true
          end
        })) 
        playing_card_joker_effects({copy})
        return {
            message = localize('k_copied_ex'),
            colour = G.C.CHIPS,
            card = card,
            playing_cards_created = {true}
        }
      end
    end
    
    if context.discard and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 5 then
      if not card.ability.extra.destroyed_card then
        card.ability.extra.destroyed_card = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
      end
      if context.other_card == card.ability.extra.destroyed_card then
        return {
          delay = 0.45, 
          remove = true,
          card = card
        }
      end
    end
    
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.destroyed_card = nil
      local eval = function() return G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    
    local forced_key = nil
    if #G.playing_cards > G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonchan"
    elseif #G.playing_cards < G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonlee"
    else
      forced_key = "j_poke_hitmontop"
    end
    return level_evo(self, card, context, forced_key)
  end
}
-- Hitmontop 237
local hitmontop={
  name = "hitmontop", 
  pos = {x = 5, y = 8},
  config = {extra = {Xmult = 1.5, Xmult_mod = .15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, G.GAME.starting_deck_size, center.ability.extra.Xmult_mod}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.setting_blind and #G.playing_cards == G.GAME.starting_deck_size and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
  end
}
-- Smoochum 238
local smoochum ={
  name = "smoochum",
  pos = {x = 6, y = 8},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'tag_standard', set = 'Tag'}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
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
    local evo = level_evo(self, card, context, "j_poke_jynx")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_standard'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Elekid 239
local elekid ={
  name = "elekid",
  pos = {x = 7, y = 8},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
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
    local evo = level_evo(self, card, context, "j_poke_electabuzz")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Magby 240
local magby={
  name = "magby",
  pos = {x = 8, y = 8},
  config = {extra = {Xmult_minus = 0.75, d_size = 1, rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.d_size, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
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
    return level_evo(self, card, context, "j_poke_magmar")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}

return {name = "Pokemon Jokers 211-240",
        list = {qwilfish, scizor, mega_scizor, shuckle, heracross, mega_heracross, sneasel, teddiursa, ursaring, slugma, magcargo, swinub, piloswine, corsola, remoraid, octillery, delibird, mantine, skarmory, houndour, houndoom, mega_houndoom, kingdra, phanpy, donphan, porygon2, stantler, smeargle, tyrogue, hitmontop, smoochum, elekid, magby},
}
