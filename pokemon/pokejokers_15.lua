-- Cherrim 421
-- Shellos 422
-- Gastrodon 423
-- Ambipom 424
local ambipom={
  name = "ambipom",
  pos = {x = 9, y = 2},
  config = {extra = {limit = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.limit}}
  end,
  rarity = "poke_safari",
  cost = 9,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
}
-- Drifloon 425
-- Drifblim 426
-- Buneary 427
local buneary={
  name = "buneary",
  pos = {x = 12, y = 2},
  config = {extra = {mult = 3,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, }}
  end,
  designer = "King_Alloy",
  rarity = 1,
  cost = 5,
  gen = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Mult = card.ability.extra.mult * math.abs(#context.scoring_hand - #context.full_hand)
        if Mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
            colour = G.C.MULT,
            mult_mod = Mult
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_lopunny")
  end,
}
-- Lopunny 428
local lopunny={
  name = "lopunny",
  pos = {x = 13, y = 2},
  config = {extra = {mult = 5, Xmult = 2,scry = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.scry}}
  end,
  designer = "King_Alloy",
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Mult = card.ability.extra.mult * math.abs(#context.scoring_hand - #context.full_hand)
        local score_xmult = nil
        local found_ranks = {}
        for _,unscored_card in pairs(context.full_hand) do
          if not SMODS.in_scoring(unscored_card, context.scoring_hand) then
            found_ranks[unscored_card:get_id()] = true
          end
        end
        for _,scry_card in pairs(G.scry_view.cards) do
          if found_ranks[scry_card:get_id()] then
            score_xmult = true
            break
          end
        end
        if Mult > 0 then
          if score_xmult then
            return {
              message = localize("poke_highjumpkick_ex"), 
              colour = G.C.XMULT,
              mult_mod = Mult,
              Xmult_mod = card.ability.extra.Xmult
            }
          else
            return {
              message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
              colour = G.C.MULT,
              mult_mod = Mult
            }
          end
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = math.max(0,(G.GAME.scry_amount or 0) - card.ability.extra.scry)
  end,
  megas = { "mega_lopunny" },
}
-- Mega Lopunny 428-1
local mega_lopunny={
  name = "mega_lopunny",
  pos = {x = 13, y = 5},
  soul_pos = {x = 14, y = 5},
  config = {extra = {scry = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local hand = localize('poke_none')
    if G.scry_view and G.scry_view.cards and #G.scry_view.cards > 0 then
      local text,disp_text = G.FUNCS.get_poker_hand_info(G.scry_view.cards)
      hand = text
    end
    return {vars = {center.ability.extra.scry, hand}}
  end,
  designer = "King_Alloy",
  rarity = "poke_mega",
  cost = 12,
  gen = 4,
  stage = "Mega",
  ptype = "Fighting",
  atlas = "Megas",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.scry_view and G.scry_view.cards and #G.scry_view.cards > 0 then
        local text,disp_text = G.FUNCS.get_poker_hand_info(G.scry_view.cards)
        local Xmult = nil
        if (SMODS.Mods["Talisman"] or {}).can_load then
          Xmult = to_number(G.GAME.hands[text].level)
        else
          Xmult = G.GAME.hands[text].level
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = Xmult
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = math.max(0,(G.GAME.scry_amount or 0) - card.ability.extra.scry)
  end,
}

-- Mismagius 429
local mismagius = {
  name = "mismagius",
  pos = {x = 0, y = 3},
  config = {extra = {chip_mod = 5, chips = 0, chips2 = 20, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'mismagius')
    return {vars = {card.ability.extra.chip_mod, card.ability.extra.chips, num, dem, card.ability.extra.chips2, }}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card then
      if not context.other_card.debuff and context.other_card:is_face() then
        context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain or 0
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
        if SMODS.pseudorandom_probability(card, 'mismagius', card.ability.extra.num, card.ability.extra.dem, 'mismagius') then
          context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips2
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = context.other_card,
          }
        else
          local drained_vals = math.min(card.ability.extra.chip_mod, context.other_card.base.nominal - context.other_card.ability.nominal_drain - 1)
          if drained_vals > 0 then
            context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain + drained_vals
          end
          local drain_bonus = math.min(context.other_card.ability.bonus + context.other_card.ability.perma_bonus, card.ability.extra.chip_mod - drained_vals)
          if drain_bonus > 0 then
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus - drain_bonus
            drained_vals = drained_vals + drain_bonus
          end
          if drained_vals > 0 then
            card.ability.extra.chips = card.ability.extra.chips + drained_vals
            return {
              message = localize('k_eroded_ex'),
              colour = G.C.CHIPS,
              card = context.other_card,
              extra = { func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')}) end },
            }
          end
        end
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips,
        }
      end
    end
  end,
}
-- Honchkrow 430
local honchkrow={
  name = "honchkrow",
  pos = {x = 1, y = 3},
  config = {extra = {Xmult_multi = 1.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, }}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.other_joker and is_type(context.other_joker, "Dark") then
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
  end
}
-- Glameow 431
-- Purugly 432
-- Chingling 433
-- Stunky 434
-- Skuntank 435
-- Bronzor 436
-- Bronzong 437
-- Bonsly 438
local bonsly={
  name = "bonsly",
  pos = {x = 9, y = 3},
  config = {extra = {Xmult_minus = 0.75, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Earth",
  atlas = "Pokedex4",
  gen = 4,
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
      local rank = pseudorandom_element({'J', 'Q', 'K'}, pseudoseed('familiar_create'))
      local suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('familiar_create'))
      local enhancement = SMODS.poll_enhancement({options = {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_gold", "m_lucky"}, guaranteed = true})
      local created_card = create_playing_card({front = G.P_CARDS[suit..'_'..rank], center = G.P_CENTERS[enhancement]}, G.deck, nil, nil, {G.C.PURPLE})
      playing_card_joker_effects({created_card})
    end
    return level_evo(self, card, context, "j_poke_sudowoodo")
  end
}
-- Mime Jr. 439
local mimejr={
  name = "mimejr",
  pos = {x = 10, y = 3},
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'red_seal', set = 'Other'}
      info_queue[#info_queue+1] = {key = 'blue_seal', set = 'Other'}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
  atlas = "Pokedex4",
  gen = 4,
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
      local _card = pseudorandom_element(G.playing_cards, pseudoseed('mimejr'))
      local seal_type = pseudorandom(pseudoseed('mimejr'))
      if seal_type > 0.50 then _card:set_seal('Red', true)
      else _card:set_seal('Blue', true) 
      end
      card:juice_up(0.5, 0.5)
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_mime_ex"), colour = G.C.CHIPS})
    end
    return level_evo(self, card, context, "j_poke_mrmime")
  end
}
-- Happiny 440
local happiny={
  name = "happiny",
  pos = {x = 11, y = 3},
  config = {extra = {Xmult_minus = 0.5,rounds = 2, num = 1, dem = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'happiny')
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, num, dem}}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex4",
  gen = 4,
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
    if context.end_of_round and not context.individual and not context.repetition and not context.post_trigger and not card.debuff then
      local max = 1
      if SMODS.pseudorandom_probability(card, 'happiny', card.ability.extra.num, card.ability.extra.dem, 'happiny') then
        max = max + 1
      end
      for i = 1, max do
        local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_magician')
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
    return level_evo(self, card, context, "j_poke_chansey")
  end,
}
-- Chatot 441
-- Spiritomb 442
-- Gible 443
-- Gabite 444
-- Garchomp 445
-- Munchlax 446
local munchlax={
  name = "munchlax",
  pos = {x = 3, y = 4},
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  joblacklist = true,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex4",
  gen = 4,
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
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_snorlax")
  end,
}
-- Riolu 447
local riolu={
  name = "riolu",
  pos = {x = 4, y = 4},
  config = {extra = {Xmult_minus = 0.9,rounds = 2,}},
  loc_txt = {
    name = "Riolu",
    text = {
      "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
      "Creates a copy of {C:attention}Aura{}",
      "at end of round",
      "{C:inactive}(Must have room)",
      "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_aura
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 3,
  cost = 6,
  gen = 4,
  stage = "Baby",
  ptype = "Fighting",
  atlas = "Pokedex4",
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
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_aura')
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
    return level_evo(self, card, context, "j_poke_lucario")
  end,
}
-- Lucario 448
local lucario={
  name = "lucario",
  pos = {x = 5, y = 4},
  config = {extra = {Xmult_multi = 1.3,}},
  loc_txt = {
    name = "Lucario",
    text = {
       "Each {C:attention}editioned{} card",
       "{C:attention}held{} in hand",
       "gives {X:mult,C:white} X#1# {} Mult",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, }}
  end,
  rarity = "poke_safari",
  cost = 9,
  gen = 4,
  stage = "Basic",
  ptype = "Fighting",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card.edition and not context.end_of_round then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              x_mult = card.ability.extra.Xmult_multi,
              card = card
          }
      end
    end
  end,
}
-- Hippopotas 449
-- Hippowdon 450
return {name = "Pokemon Jokers 421-450", 
        list = {ambipom, buneary, lopunny, mega_lopunny, mismagius, honchkrow, bonsly, mimejr, happiny, munchlax, riolu, lucario},
}
