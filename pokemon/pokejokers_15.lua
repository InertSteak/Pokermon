-- Cherrim 421
-- Shellos 422
-- Gastrodon 423
-- Ambipom 424
-- Drifloon 425
-- Drifblim 426
-- Buneary 427
-- Lopunny 428
-- Mismagius 429
local mismagius = {
  name = "mismagius",
  pos = {x = 0, y = 3},
  config = {extra = {chips1 = 5, chips = 0, chips2 = 20, chip_odds = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.chips1, card.ability.extra.chips, ''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.chip_odds, card.ability.extra.chips2, }}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card then
      if not context.other_card.debuff and context.other_card:is_face() then
        context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain or 0
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
        if pseudorandom('mismagius') < G.GAME.probabilities.normal / card.ability.extra.chip_odds then
          context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips2
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = context.other_card,
          }
        else
          local drained_vals = math.min(card.ability.extra.chips1, context.other_card.base.nominal - context.other_card.ability.nominal_drain - 1)
          if drained_vals > 0 then
            context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain + drained_vals
          end
          local drain_bonus = math.min(context.other_card.ability.bonus + context.other_card.ability.perma_bonus, card.ability.extra.chips1 - drained_vals)
          if drain_bonus > 0 then
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus - drain_bonus
            drained_vals = drained_vals + drain_bonus
          end
          if drained_vals > 0 then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
            card.ability.extra.chips = card.ability.extra.chips + 2 * drained_vals
            return {
              message = localize('k_eroded_ex'),
              colour = G.C.CHIPS,
              card = context.other_card,
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
  config = {extra = {Xmult_minus = 0.75, rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Baby",
  ptype = "Earth",
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
      local rank = pseudorandom_element({'J', 'Q', 'K'}, pseudoseed('familiar_create'))
      local suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('familiar_create'))
      local enhancement = SMODS.poll_enhancement({options = {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_gold", "m_lucky"}, guaranteed = true})
      create_playing_card({front = G.P_CARDS[suit..'_'..rank], center = G.P_CENTERS[enhancement]}, G.deck, nil, nil, {G.C.PURPLE})
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
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'red_seal', set = 'Other'}
    info_queue[#info_queue+1] = {key = 'blue_seal', set = 'Other'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
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
  config = {extra = {Xmult_minus = 0.5,rounds = 2, odds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Colorless",
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
    if context.end_of_round and not context.individual and not context.repetition and not context.post_trigger and not card.debuff then
      local max = 1
      if pseudorandom('happiny') < G.GAME.probabilities.normal/card.ability.extra.odds then
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
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  joblacklist = true,
  stage = "Baby",
  ptype = "Colorless",
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
-- Lucario 448
-- Hippopotas 449
-- Hippowdon 450
return {name = "Pokemon Jokers 421-450", 
        list = {mismagius, honchkrow, bonsly, mimejr, happiny, munchlax},
}
