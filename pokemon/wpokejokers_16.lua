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
local magnezone={
  name = "magnezone", 
  pos = {x = 3, y = 6}, 
  config = {extra = {Xmult_multi = 2.25}},
  loc_txt = {      
    name = 'Magnezone',      
    text = {
      "Played {C:attention}Steel{} cards",
      "give {X:red,C:white}X#1#{} Mult",
      "{X:metal,C:white}Metal{} Jokers next to",
      "this Joker each give {X:red,C:white}X#1#{} Mult"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex4",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       context.other_card.ability.name == 'Steel Card' then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
          colour = G.C.XMULT,
          x_mult = card.ability.extra.Xmult_multi
        }
    end
    if context.other_joker then
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == context.other_joker and ((G.jokers.cards[i + 1] and G.jokers.cards[i + 1] == card) or (G.jokers.cards[i - 1] and G.jokers.cards[i - 1] == card)) then
          if is_type(G.jokers.cards[i], "Metal") then
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
      end
    end
  end
}
-- Lickilicky 463
local lickilicky={
  name = "lickilicky", 
  pos = {x = 0, y = 0}, 
  config = {extra = {Xmult_multi = 1.5}},
  loc_txt = {      
    name = 'Lickilicky',      
    text = {
      "Played {C:attention}Jacks{} give {X:mult,C:white} X#1# {} Mult",
      "when scored"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex4", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 11 then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      end
    end
  end
}
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
  stage = "Two", 
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
local tangrowth={
  name = "tangrowth", 
  pos = {x = 0, y = 0},
  config = {extra = {mult = 15, chips = 75, money = 6, odds = 4}},
  loc_txt = {      
    name = 'Tangrowth',      
    text = {
      "Played {C:attention}Wild{} cards give",
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
      "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
      "Wild cards {C:attention}can't{} be debuffed"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    return {vars = {center.ability.extra.mult, center.ability.extra.chips,center.ability.extra.money,''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  enhancement_gate = 'm_wild',
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and
       context.other_card.ability.name == 'Wild Card' then
        if pseudorandom('tangela') < G.GAME.probabilities.normal/card.ability.extra.odds then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
          G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
          return {
            message = "All!", 
            colour = G.C.BLACK,
            mult = card.ability.extra.mult,
            chips = card.ability.extra.chips,
            dollars = card.ability.extra.money,
            card = card
          }
        else
          local scoring_bonuses = {"Mult", "Chips", "Money"}
          local bonus = pseudorandom_element(scoring_bonuses, pseudoseed('tangela'))
          if bonus == "Mult" then
            return {
              message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
              colour = G.C.MULT,
              mult = card.ability.extra.mult
            }
          elseif bonus == "Chips" then
            return {
              message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
              colour = G.C.CHIPS,
              chips = card.ability.extra.chips
            }
          elseif bonus == "Money" then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
            G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
            return {
              dollars = card.ability.extra.money,
              card = card
            }
          end
        end
    end
  end,
}
-- Electivire 466
local electivire={
  name = "electivire", 
  pos = {x = 0, y = 0}, 
  config = {extra = {money = 2, Xmult_mod = 0.1}},
  loc_txt = {      
    name = 'Electivire',      
    text = {
      "When a card is {C:attention}sold{}",
      "and at end of round",
      "gains {C:money}$#1#{} of {C:attention}sell value{}",
      "Gives {X:mult,C:white}X#2#{} Mult for each",
      "dollar of sell value this Joker has",
      "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult_mod , 1 + center.ability.extra.Xmult_mod * center.sell_cost}}
  end,
  rarity = "poke_safari", 
  cost = 6,
  stage = "Two",
  ptype = "Lightning",
  atlas = "Pokedex4",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if ((context.selling_card) or (not context.repetition and not context.individual and context.end_of_round)) and not context.blueprint then
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.money
      card:set_cost()
      G.E_MANAGER:add_event(Event({
        func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
        end}))
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {1 + card.ability.extra.Xmult_mod * card.sell_cost}}, 
          colour = G.C.MULT,
          Xmult_mod = 1 + card.ability.extra.Xmult_mod * card.sell_cost
        }
      end
    end
  end
}
-- Magmortar 467
local magmortar={
  name = "magmortar", 
  pos = {x = 8, y = 9}, 
  config = {extra = {mult = 0, mult_mod = 2, Xmult_mod = 0.02}},
  loc_txt = {      
    name = 'Magmortar',      
    text = {
      "If the {C:attention}first{} discard of",
      "the round has only {C:attention}1{} card,",
      "destroy it and gain {C:mult}+#2#{} Mult",
      "Gives {X:mult,C:white}X#3#{} Mult for each",
      "card discarded this {C:attention}run{}",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#4#{}{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.Xmult_mod, 1 + center.ability.extra.Xmult_mod * G.GAME.round_scores.cards_discarded.amt}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Fire",
  atlas = "Pokedex4",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.discard and not context.blueprint then
      if G.GAME.current_round.discards_used == 0 and #context.full_hand == 1 then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
        return {
          remove = true
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = "Fire Blast!", 
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = 1 + card.ability.extra.Xmult_mod * G.GAME.round_scores.cards_discarded.amt
        }
      end
    end
  end
}
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
  cost = 10, 
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
        list = {magnezone, lickilicky, rhyperior, tangrowth, electivire, magmortar, leafeon, glaceon, porygonz},
}