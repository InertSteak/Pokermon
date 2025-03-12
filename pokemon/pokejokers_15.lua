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
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local rank = pseudorandom_element({'J', 'Q', 'K'}, pseudoseed('familiar_create'))
      local suit = pseudorandom_element({'S','H','D','C'}, pseudoseed('familiar_create'))
      create_playing_card({front = G.P_CARDS[suit..'_'..rank], center = G.P_CENTERS[SMODS.poll_enhancement({guaranteed = true})]}, G.deck, nil, nil, {G.C.PURPLE})
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
    if context.end_of_round and not context.individual and not context.repetition then
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
    if context.end_of_round and not context.individual and not context.repetition and not context.post_trigger then
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
    if context.end_of_round and not context.individual and not context.repetition then
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
        list = {bonsly, mimejr, happiny, munchlax},
}