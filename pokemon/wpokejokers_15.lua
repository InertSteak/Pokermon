-- Cherrim 421
-- Shellos 422
-- Gastrodon 423
-- Ambipom 424
-- Drifloon 425
-- Drifblim 426
-- Buneary 427
-- Lopunny 428
-- Mismagius 429
-- Honchkrow 430
-- Glameow 431
-- Purugly 432
-- Chingling 433
-- Stunky 434
-- Skuntank 435
-- Bronzor 436
-- Bronzong 437
-- Bonsly 438
-- Mime Jr. 439
local mimejr={
  name = "mimejr",
  pos = {x = 10, y = 3},
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  loc_txt = {
    name = "Mime Jr.",
    text = {
      "{C:attention}Baby{}",
      "Apply a {C:attention}Red{} or {C:attention}Blue{} seal",
      "to a random card in deck",
      "at end of round",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
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
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local _card = pseudorandom_element(G.playing_cards, pseudoseed('mimejr'))
      local seal_type = pseudorandom(pseudoseed('mimejr'))
      if seal_type > 0.50 then _card:set_seal('Red', true)
      else _card:set_seal('Blue', true) 
      end
      card:juice_up(0.5, 0.5)
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Mime!", colour = G.C.CHIPS})
    end
    return level_evo(self, card, context, "j_poke_mrmime")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
  end,
}
-- Happiny 440
local happiny={
  name = "happiny",
  pos = {x = 11, y = 3},
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  loc_txt = {
    name = "Happiny",
    text = {
      "{C:attention}Baby{}",
      "Unscored cards in your",
      "{C:attention}first hand{} become {C:attention}Lucky{}",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
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
      if context.before and G.GAME.current_round.hands_played == 0 then
        for k, v in ipairs(context.scoring_hand) do
          v.poke_scored = true
        end
        for k, v in ipairs(context.full_hand) do
          if not v.poke_scored then
            v:set_ability(G.P_CENTERS.m_lucky, nil, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    v:juice_up()
                    return true
                end
            })) 
          end
        end
        for k, v in ipairs(context.scoring_hand)do
          v.poke_scored = nil
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    return level_evo(self, card, context, "j_poke_chansey")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
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
  loc_txt = {
    name = "Munchlax",
    text = {
      "{C:attention}Baby{}",
      "Create a random {C:item}Item{} card with",
      "{C:dark_edition}Negative{} at end of round",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
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
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_snorlax")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
  end,
}
-- Riolu 447
-- Lucario 448
-- Hippopotas 449
-- Hippowdon 450
return {name = "Pokemon Jokers 421-450", 
        list = {mimejr, happiny, munchlax},
}