-- Skorupi 451
-- Drapion 452
-- Croagunk 453
-- Toxicroak 454
-- Carnivine 455
-- Finneon 456
-- Lumineon 457
-- Mantyke 458
-- Snover 459
-- Abomasnow 460
-- Weavile 461
-- Magnezone 462
-- Lickilicky 463
-- Rhyperior 464
local rhyperior={
  name = "rhyperior", 
  pos = {x = 0, y = 0},
  config = {extra = {chips = 40}},
  loc_txt = {      
    name = 'Rhyperior',      
    text = {
      "Every played {C:attention}Stone{} card",
      "permanently gains",
      "{C:chips}+#1#{} Chips when scored",
      "{C:attention}Stone{} cards retrigger for each",
      "{C:attention}other{} {X:earth,C:white}Earth{} Joker you have",
      "{C:inactive}(Currently #2# retriggers)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    return {vars = {center.ability.extra.chips, math.max(0, #find_pokemon_type("Earth") - (is_type(center, "Earth") and 1 or 0))}}
  end,
  rarity = "poke_safari", 
  cost = 8,
  enhancement_gate = 'm_stone',
  stage = "One", 
  ptype = "Earth",
  atlas = "Pokedex4",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and context.other_card.ability.name == 'Stone Card' then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
      return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
      }
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and context.other_card.ability.name == 'Stone Card' then
      local rhytriggers = math.max(0, #find_pokemon_type("Earth") - (is_type(card, "Earth") and 1 or 0))
      if rhytriggers > 0 then
        return {
          message = localize('k_again_ex'),
          repetitions = rhytriggers,
          card = card
        }
      end
    end
  end
}
-- Tangrowth 465
-- Electivire 466
-- Magmortar 467
-- Togekiss 468
-- Yanmega 469
-- Leafeon 470
local leafeon={
  name = "leafeon", 
  pos = {x = 0, y = 0},
  config = {extra = {chip_mod = 10, suit = "Spades", rerolls = 0}},
  loc_txt = {      
    name = 'Leafeon',      
    text = {
      "Create a {C:attention}World{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "Every played card with {C:spades}#2#{} suit",
      "permanetly gains {C:chips}+#3#{} Chips",
      "{C:inactive}(Must have room)",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_world
    return {vars = {center.ability.extra.rerolls, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.chip_mod}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if card.ability.extra.rerolls < 2 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/3", colour = G.C.TAROT})
        if card.ability.extra.rerolls == 2 then
          local eval = function() return card.ability.extra.rerolls == 2 end
          juice_card_until(card, eval, true)
        end
      else
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_world')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) and not context.other_card.debuff then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chip_mod
      return {
        extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
        colour = G.C.CHIPS,
        card = card
      }
    end
  end
}
-- Glaceon 471
local glaceon={
  name = "glaceon", 
  pos = {x = 0, y = 0},
  config = {extra = {rerolls = 0, odds = 6}},
  loc_txt = {      
    name = 'Glaceon',      
    text = {
      "Create a random {C:attention}Tarot{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "{C:green}#2#{} in {C:green}#3#{} chance for {C:dark_edition}Negative{}",
      "{C:inactive}(Must have room)",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rerolls, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex4",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if card.ability.extra.rerolls < 2 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/3", colour = G.C.TAROT})
        if card.ability.extra.rerolls == 2 then
          local eval = function() return card.ability.extra.rerolls == 2 end
          juice_card_until(card, eval, true)
        end
      else
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
          if pseudorandom('glaceon') < G.GAME.probabilities.normal/card.ability.extra.odds then
            local edition = {negative = true}
            _card:set_edition(edition, true)
          end
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
  end
}
-- Gliscor 472
-- Mamoswine 473
-- Porygon-Z 474
local porygonz={
  name = "porygonz", 
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 1, Xmult_mod = 0.1}},
  loc_txt = {      
    name = 'Porygon-Z',      
    text = {
      "{C:pink}+3{} Energy Limit",
      "This Joker gains",
      "{X:red,C:white} X#2# {} Mult every time",
      "an {C:pink}Energy{} card is used",
      "{C:inactive}(Currently {X:red,C:white} X#1# {}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  joblacklist = true,
  stage = "Two",
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Energy' then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      G.E_MANAGER:add_event(Event({
          func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_xmult',vars={card.ability.extra.Xmult}}}); return true
          end}))
      return
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
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 3
      else
        G.GAME.energy_plus = G.GAME.energy_plus + 3
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 0
      else
        G.GAME.energy_plus = G.GAME.energy_plus - 3
      end
    end
  end
}
-- Gallade 475
-- Probopass 476
-- Dusknoir 477
-- Froslass 478
-- Rotom 479
-- Uxie 480
return {name = "Pokemon Jokers 451-480", 
        list = {rhyperior,leafeon, glaceon, porygonz},
}