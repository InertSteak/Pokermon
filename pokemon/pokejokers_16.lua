-- Skorupi 451
-- Drapion 452
-- Croagunk 453
-- Toxicroak 454
-- Carnivine 455
-- Finneon 456
-- Lumineon 457
-- Mantyke 458
local mantyke={
  name = "mantyke",
  pos = {x = 1, y = 5},
  config = {extra = {Xmult_minus = 0.75, rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_devil
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.Xmult_minus, center.ability.extra.rounds}}
  end,
  designer = "FlamingRok",
  rarity = 2,
  cost = 6,
  stage = "Baby",
  ptype = "Water",
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
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_devil')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_mantine")
  end
}
-- Snover 459
-- Abomasnow 460
-- Weavile 461
local weavile = {
  name = "weavile",
  pos = {x = 4, y = 5},
  config = {extra = {Xmult_mod = 1, Xmult = 1, Xmult2 = 1, money = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_mod, card.ability.extra.Xmult, localize(G.GAME.current_round.sneaselcard and G.GAME.current_round.sneaselcard.rank or "Ace", 'ranks'),
                    card.ability.extra.money}}
  end,
  rarity = 'poke_safari',
  cost = 10,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.final_scoring_step and #context.full_hand == 1 and context.full_hand[1]:get_id() == G.GAME.current_round.sneaselcard.id and not context.blueprint then
      context.full_hand[1].to_be_removed_by = card
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      ease_poke_dollars(card, "weavile", card.ability.extra.money)
      card:juice_up()
    end
    if context.destroy_card and context.destroy_card.to_be_removed_by == card and not context.blueprint then
      context.destroy_card.to_be_removed_by = nil
      return {
        remove = true
      }
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult ~= 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}},
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      if G.GAME.blind.boss and card.ability.extra.Xmult > 1 then
        card.ability.extra.Xmult = card.ability.extra.Xmult2
        return {
          message = localize('k_reset'),
          colour = G.C.RED
        }
      end
    end
  end
}
-- Magnezone 462
local magnezone={
  name = "magnezone", 
  pos = {x = 5, y = 5}, 
  config = {extra = {Xmult_multi = 1.5, Xmult_multi2 = .25}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    local total = #find_pokemon_type("Metal")
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi2, center.ability.extra.Xmult_multi + (total * center.ability.extra.Xmult_multi2)}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  enhancement_gate = 'm_steel',
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       SMODS.has_enhancement(context.other_card, 'm_steel') then
        local total = #find_pokemon_type("Metal")
        return {
          x_mult = card.ability.extra.Xmult_multi + (total * card.ability.extra.Xmult_multi2),
          card = card
        }
    end
  end
}
-- Lickilicky 463
local lickilicky={
  name = "lickilicky", 
  pos = {x = 6, y = 5}, 
  config = {extra = {Xmult_multi = 1.5, subtract = 0.3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi - center.ability.extra.subtract}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex4",
  gen = 4, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      local first_jack = nil
      local second_jack = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == 11 then
          if not first_jack then
            first_jack = context.scoring_hand[i];
          else
            second_jack = context.scoring_hand[i];
            break
          end
        end
      end
      if context.other_card == first_jack or context.other_card == second_jack then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      elseif context.other_card:get_id() == 11 then
        return {
            x_mult = card.ability.extra.Xmult_multi - card.ability.extra.subtract,
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
  pos = {x = 7, y = 5},
  config = {extra = {chips = 8}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return {vars = {center.ability.extra.chips, 1 + math.floor(#find_pokemon_type("Earth")/3)}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  enhancement_gate = 'm_stone',
  stage = "Two", 
  ptype = "Earth",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and SMODS.has_enhancement(context.other_card, 'm_stone') then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
      return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
      }
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_stone') then
      local rhytriggers = 1 + math.floor(#find_pokemon_type("Earth")/3)
      return {
        message = localize('k_again_ex'),
        repetitions = rhytriggers,
        card = card
      }
    end
  end
}
-- Tangrowth 465
local tangrowth={
  name = "tangrowth", 
  pos = {x = 8, y = 5},
  config = {extra = {mult = 15, chips = 75, money_mod = 3, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'tangrowth')
    return {vars = {center.ability.extra.mult, center.ability.extra.chips,center.ability.extra.money_mod, num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  enhancement_gate = 'm_wild',
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and
       SMODS.has_enhancement(context.other_card, 'm_wild') then
        if SMODS.pseudorandom_probability(card, 'tangrowth', card.ability.extra.num, card.ability.extra.dem, 'tangrowth') then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
          G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
          return {
            message = localize("poke_tangela_bonus"),
            colour = G.C.BLACK,
            mult = card.ability.extra.mult,
            chips = card.ability.extra.chips,
            dollars = ease_poke_dollars(card, "tangrowth", card.ability.extra.money_mod, true),
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
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
            G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
            return {
              dollars = ease_poke_dollars(card, "tangrowth", card.ability.extra.money_mod, true),
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
  pos = {x = 9, y = 5}, 
  config = {extra = {money_mod = 2, Xmult_mod = 0.02}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.money_mod, center.ability.extra.Xmult_mod , 1 + center.ability.extra.Xmult_mod * center.sell_cost}}
  end,
  rarity = "poke_safari", 
  cost = 7,
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if ((context.selling_card) or (not context.repetition and not context.individual and context.end_of_round)) and not context.blueprint then
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.money_mod
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
  pos = {x = 10, y = 5}, 
  config = {extra = {mult = 0, mult_mod = 2, Xmult = 1, Xmult_mod = 0.05}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.remove_triggered = false
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES and not card.ability.extra.remove_triggered end
      juice_card_until(card, eval, true)
    end
    if context.pre_discard and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
    if context.discard and not context.blueprint then
      if G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 1 and not card.ability.extra.remove_triggered then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
        card.ability.extra.remove_triggered = true
        return {
          remove = true
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_fire_blast_ex"),
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
-- Togekiss 468
local togekiss={
  name = "togekiss",
  pos = {x = 11, y = 5},
  config = {extra = {num = 1, chip_dem = 5, Xmult_dem = 10, chips = 100, Xmult_multi = 1.5, plus_odds = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local num, chip_dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.chip_dem, 'togekiss')
    local _, Xmult_dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.Xmult_dem, 'togekiss')
    return {vars = {num, chip_dem, Xmult_dem, card.ability.extra.chips, card.ability.extra.Xmult_multi, card.ability.extra.plus_odds}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card and context.other_card.ability.effect == "Lucky Card" then
      local ret = nil
      if SMODS.pseudorandom_probability(card, 'togekiss', card.ability.extra.num, card.ability.extra.chip_dem, 'togekiss') then
        ret = {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
      if SMODS.pseudorandom_probability(card, 'togekiss', card.ability.extra.num, card.ability.extra.Xmult_dem, 'togekiss') then
        local temp = {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}},
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_multi
        }
        if ret then
          ret.extra = temp
        else
          ret = temp
        end
      end

      return ret
    end
    if context.mod_probability and not context.blueprint then
      return 
      {
        numerator = context.numerator + card.ability.extra.plus_odds
      }
    end
  end,
}
-- Yanmega 469
local yanmega={
  name = "yanmega",
  pos = {x = 12, y = 5},
  config = {extra = {mult = 6,chips = 12, num = 1, dem = 3, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'yanmega')
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, num, dem}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if context.other_card:get_id() == 3 or context.other_card:get_id() == 6 then
        return {
          mult = card.ability.extra.mult,
          chips = card.ability.extra.chips,
          card = card
        }
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      if context.other_card:get_id() == 3 or context.other_card:get_id() == 6 then
        if SMODS.pseudorandom_probability(card, 'yanmega', card.ability.extra.num, card.ability.extra.dem, 'yanmega') then
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end
      end
    end
  end,
}
-- Leafeon 470
local leafeon={
  name = "leafeon", 
  pos = {x = 13, y = 5},
  config = {extra = {h_size = 7, h_mod = 1, h_size_limit = 7}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.h_size, center.ability.extra.h_mod, center.ability.extra.h_size_limit}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.before and card.ability.extra.h_size > 0 then
        card.ability.extra.h_size = card.ability.extra.h_size - card.ability.extra.h_mod
        G.hand:change_size(-card.ability.extra.h_mod)
        return {
            message = localize { type = 'variable', key = 'a_handsize_minus', vars = { card.ability.extra.h_mod } },
            colour = G.C.FILTER
        }
      end
    end
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.h_size < card.ability.extra.h_size_limit and not context.blueprint then
      card.ability.extra.h_size = card.ability.extra.h_size + card.ability.extra.h_mod
      G.hand:change_size(card.ability.extra.h_mod)
      return {
          message = localize { type = 'variable', key = 'a_handsize', vars = { card.ability.extra.h_mod } },
          colour = G.C.FILTER
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Glaceon 471
local glaceon={
  name = "glaceon", 
  pos = {x = 0, y = 6},
  config = {extra = {num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'glaceon')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if SMODS.pseudorandom_probability(card, 'glaceon', card.ability.extra.num, card.ability.extra.dem, 'glaceon') then
        local card_to_copy = pseudorandom_element(G.deck.cards, pseudoseed('deckglaceon'))
        local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
        copy:set_ability(G.P_CENTERS.m_glass, nil, true)
        poke_add_shop_card(copy, card)
      end
    end
  end,
}
-- Gliscor 472
local gliscor = {
  name = "gliscor",
  pos = {x = 1, y = 6},
  config = {extra = {Xmult_multi = 0.25}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local played_Xmult = 1
    if G.hand then
      local suit_count = 0
      for i=1, #G.hand.cards do
        if (G.hand.cards[i]:is_suit(G.GAME.current_round.gligar_suit) or G.hand.cards[i].debuff) and not G.hand.cards[i].highlighted then
          suit_count = suit_count + 1
        end
      end
      played_Xmult = 1 + (card.ability.extra.Xmult_multi * suit_count)
    end
    return {vars = {card.ability.extra.Xmult_multi, localize(G.GAME.current_round.gligar_suit or "Clubs", 'suits_singular'), played_Xmult,
                    colours = {G.C.SUITS[G.GAME.current_round.gligar_suit or "Clubs"]}}}
  end,
  rarity = 'poke_safari',
  cost = 10,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local suit_count = 0
      for i=1, #G.hand.cards do
        if G.hand.cards[i]:is_suit(G.GAME.current_round.gligar_suit) or G.hand.cards[i].debuff then
          suit_count = suit_count + 1
        end
      end
      if suit_count > 0 then
        local Xmult = 1 + (card.ability.extra.Xmult_multi * suit_count)
        return {
          x_mult = Xmult,
          card = card
        }
      end
    end
  end
}
-- Mamoswine 473
local mamoswine={
  name = "mamoswine",
  pos = {x = 2, y = 6},
  config = {extra = {mult = 15,money = 4,num = 1, dem = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'mamoswine')
    return {vars = {center.ability.extra.mult, center.ability.extra.money, num, dem}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Earth",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.scoring_hand then
      local earn = false
      if SMODS.has_enhancement(context.other_card, 'm_stone') or SMODS.has_enhancement(context.other_card, 'm_glass') then
        if SMODS.pseudorandom_probability(card, 'mamoswine', card.ability.extra.num, card.ability.extra.dem, 'mamoswine') then
          earn = true
        end
      end
      if context.other_card == context.scoring_hand[1] then
        local stoneglass = 0
        for k, v in pairs(context.scoring_hand) do
          if SMODS.has_enhancement(v, 'm_stone') or SMODS.has_enhancement(v, 'm_glass') then
            stoneglass = stoneglass + 1
          end
        end
        
        if stoneglass > 0 then
          if earn then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollar_buffer = 0
                    return true
                end
            }))
            local earned = ease_poke_dollars(card, "2mamoswine", card.ability.extra.money, true)
            return {
              mult = card.ability.extra.mult * stoneglass,
              dollars = earned,
              card = card
            }
          else
            return {
              mult = card.ability.extra.mult * stoneglass,
              card = card
            }
          end
        end
      elseif earn then
        G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.dollar_buffer = 0
                return true
            end
        }))
        local earned = ease_poke_dollars(card, "2mamoswine", card.ability.extra.money, true)
        return {
          dollars = earned,
          card = card
        }
      end
    end
  end,
}
-- Porygon-Z 474
local porygonz={
  name = "porygonz", 
  pos = {x = 3, y = 6},
  config = {extra = {Xmult_mod = 0.1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {1 + ((G.GAME.energies_used or 0) * center.ability.extra.Xmult_mod), center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  joblacklist = true,
  stage = "Two",
  ptype = "Colorless",
  atlas = "Pokedex4",
  gen = 4,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + ((G.GAME.energies_used or 0) * card.ability.extra.Xmult_mod)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
    if context.using_consumeable and context.consumeable.ability.set == 'Energy' and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local energy_key = nil
      if pseudorandom('porygonz') < .05 then
        energy_key = 'c_poke_bird_energy'
      end
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'immediate',
          delay = 0.0,
          func = (function()
                  local _card = create_card('Energy', G.consumeables, nil, nil, nil, nil, energy_key, 'pory')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 3
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 3
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 3
    end
  end
}
-- Gallade 475
-- Probopass 476
local probopass={
  name = "probopass",
  pos = {x = 5, y = 6},
  config = {extra = {Xmult_multi = 1.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_stone') then
      return {
          x_mult = card.ability.extra.Xmult_multi,
          colour = G.C.XMULT,
          card = card
      }
    end
  end
}
-- Dusknoir 477
local dusknoir={
  name = "dusknoir",
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 1, spec_up = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, }}
  end,
  rarity = "poke_safari",
  cost = 10,
  gen = 4,
  stage = "Two",
  ptype = "Psychic",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_left == 0 then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.spectral_rate = G.GAME.spectral_rate + card.ability.extra.spec_up
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.spectral_rate = math.max(0, G.GAME.spectral_rate - card.ability.extra.spec_up)
  end
}
-- Froslass 478
local froslass={
  name = "froslass",
  pos = {x = 7, y = 6},
  config = {extra = {debt = 15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.debt}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex4",
  gen = 4,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local in_debt = nil
        if (SMODS.Mods["Talisman"] or {}).can_load then
          in_debt = to_big(G.GAME.dollars) < to_big(0)
        else
          in_debt = G.GAME.dollars < 0
        end
        if in_debt and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.bankrupt_at = G.GAME.bankrupt_at - card.ability.extra.debt
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.bankrupt_at = G.GAME.bankrupt_at + card.ability.extra.debt
  end,
}
-- Rotom 479
local rotom={
  name = "rotom",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem}}
  end,
  rarity = 3,
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  auto_sticker = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}

local rotomh={
  name = "rotomh",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  aux_poke = true, 
  no_collection = true,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand == 2 and G.GAME.current_round.discards_used == 0 and not context.hook and not context.blueprint then
      local target = {context.full_hand[1],context.full_hand[2]}
      poke_convert_cards_to(target, {mod_conv = 'm_mult'})
    end
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
}

local rotomw={
  name = "rotomw",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2, money = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem, center.ability.extra.money}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  aux_poke = true, 
  no_collection = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      local enhanced = {}
      for k, v in ipairs(context.scoring_hand) do
        if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then
          enhanced[#enhanced+1] = v
          v.vampired = true
          v:set_ability(G.P_CENTERS.c_base, nil, true)
          G.E_MANAGER:add_event(Event({
              func = function()
                  v:juice_up()
                  v.vampired = nil
                  return true
              end
          })) 
        end
      end
      if #enhanced > 0 then
        ease_poke_dollars(card, "rotomw", card.ability.extra.money * #enhanced)
      end
    end
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
}

local rotomf={
  name = "rotomf",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
      if not center.edition or (center.edition and not center.edition.foil) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      end
      if not center.edition or (center.edition and not center.edition.holo) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      end
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  aux_poke = true, 
  no_collection = true,
  calculate = function(self, card, context)
    if context.setting_blind and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local set = pseudorandom_element(SMODS.ConsumableTypes, pseudoseed('rotomf'))
      local _card = create_card(set.key, G.consumeables, nil, nil, nil, nil, nil, 'rotomf')
      local edition = poll_edition('aura', nil, true, true)
      _card:set_edition(edition)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_consumable'), colour = G.C.FILTER})
    end
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
}

local rotomfan={
  name = "rotomfan",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  aux_poke = true, 
  no_collection = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
    
          G.E_MANAGER:add_event(Event({
            func = (function()
                local tags = {}
                for k, v in pairs(G.P_TAGS) do
                  if v.key ~= "tag_boss" then
                    tags[#tags + 1] = v
                  end
                end
                local temp_tag = pseudorandom_element(tags, pseudoseed('rotomfan'))
                local tag = Tag(temp_tag.key)
                if tag.key == "tag_orbital" then 
                  local _poker_hands = {}
                  for k, v in pairs(G.GAME.hands) do
                    if v.visible then
                      _poker_hands[#_poker_hands + 1] = k
                    end
                  end
                  tag.ability.orbital_hand = pseudorandom_element(_poker_hands, pseudoseed('rotomfan'))
                end
                add_tag(tag)
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                return true
            end)
          }))
      end
    end
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
}

local rotomm={
  name = "rotomm",
  pos = {x = 0, y = 0},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'rotom')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  aux_poke = true,
  no_collection = true,
  calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition then
      local targets = {G.hand.cards[1], G.hand.cards[2]}
      
      juice_flip_table(card, targets, false, #targets)
      for i = 1, #targets do
        poke_vary_rank(G.hand.cards[i], true)
      end
      juice_flip_table(card, targets, true, #targets)
      delay(0.5)
    end
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      if SMODS.pseudorandom_probability(card, 'rotom', card.ability.extra.num, card.ability.extra.dem, 'rotom') then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
                    local card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil, 'rotom')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    G.GAME.consumeable_buffer = 0
                return true
            end)}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
      end
    end
  end,
}

-- Uxie 480
return {name = "Pokemon Jokers 451-480", 
        list = {mantyke, weavile, magnezone, lickilicky, rhyperior, tangrowth, electivire, magmortar, togekiss, yanmega, leafeon, glaceon, gliscor, mamoswine, porygonz, probopass, dusknoir,
          froslass, rotom, rotomh, rotomw, rotomf, rotomfan, rotomm
        },
}
