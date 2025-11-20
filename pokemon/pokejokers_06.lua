--Code for pokemon jokers 151-180
local mew ={
  name = "mew", 
  pos = {x = 12, y = 11},
  soul_pos = { x = 0, y = 12},
  config = {extra = {percent = 15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    return {vars = {center.ability.extra.percent}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      if pseudorandom('mew') < card.ability.extra.percent/100 then
        --create random joker
        local _card = create_card('Joker', G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.jokers:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
      else
        --create random consumable and apply negative
        local sets = {{set = "Tarot", message = localize('k_plus_tarot'), colour = G.C.PURPLE}, {set = "Spectral", message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral}, 
                      {set = "Item", message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink}}
        local creation = pseudorandom_element(sets, pseudoseed('mewcreate'))
        
        local _card = create_card(creation.set, G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = creation.message, colour = creation.colour})
      end
    end
  end,
}
-- Chikorita 152
local chikorita = {
  name = "chikorita",
  pos = {x = 0, y = 0},
  config = {extra = {money = 1, h_size = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.h_size, card.ability.extra.money, card.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  starter = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and context.individual and context.cardarea == G.hand then
      local beyond = false
      for k, v in ipairs(G.hand.cards) do
        if k > 4 and v == context.other_card then
          beyond = true
          break
        end
      end
      if beyond then
        G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
        G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
        local earned = ease_poke_dollars(card, 'chikorita', card.ability.extra.money, true)
        return {
            dollars = earned,
            card = context.other_card or card,
        }
      end
    end
    return level_evo(self, card, context, "j_poke_bayleef")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Bayleef 153
local bayleef = {
  name = "bayleef",
  pos = {x = 1, y = 0},
  config = {extra = {money = 1, h_size = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.h_size, card.ability.extra.money, card.ability.extra.rounds,}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and context.individual and context.cardarea == G.hand then
      local beyond = false
      for k, v in ipairs(G.hand.cards) do
        if k > 2 and v == context.other_card then
          beyond = true
          break
        end
      end
      if beyond then
        G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
        G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
        local earned = ease_poke_dollars(card, 'chikorita', card.ability.extra.money, true)
        return {
            dollars = earned,
            card = context.other_card or card,
        }
      end
    end
    return level_evo(self, card, context, "j_poke_meganium")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Meganium 154
local meganium = {
  name = "meganium",
  pos = {x = 2, y = 0},
  config = {extra = {money = 1, h_size = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.h_size, card.ability.extra.money}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and context.individual and context.cardarea == G.hand then
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
      G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
      local earned = ease_poke_dollars(card, 'chikorita', card.ability.extra.money, true)
      return {
          dollars = earned,
          card = context.other_card or card,
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
-- Cyndaquil 155
local cyndaquil = {
  name = "cyndaquil",
  pos = {x = 3, y = 0},
  config = {extra = {mult = 4, d_size = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.d_size, card.ability.extra.mult, card.ability.extra.rounds, card.ability.extra.mult * G.GAME.current_round.discards_left}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  starter = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.current_round.discards_left > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * G.GAME.current_round.discards_left}},
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * G.GAME.current_round.discards_left
        }
      end
    end
    return level_evo(self, card, context, "j_poke_quilava")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end,
}
-- Quilava 156
local quilava = {
  name = "quilava",
  pos = {x = 4, y = 0},
  config = {extra = {mult = 8, d_size = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.d_size, card.ability.extra.mult, card.ability.extra.rounds, card.ability.extra.mult * G.GAME.current_round.discards_left}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.current_round.discards_left > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * G.GAME.current_round.discards_left}},
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * G.GAME.current_round.discards_left
        }
      end
    end
    return level_evo(self, card, context, "j_poke_typhlosion")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end,
}
-- Typhlosion 157
local typhlosion = {
  name = "typhlosion",
  pos = {x = 5, y = 0},
  config = {extra = {mult = 8, Xmult = 0.3, d_size = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.d_size, card.ability.extra.mult, card.ability.extra.Xmult, card.ability.extra.mult * G.GAME.current_round.discards_left, 
                    1 + (card.ability.extra.Xmult * G.GAME.current_round.discards_left)}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.current_round.discards_left > 0 then
        return {
          message = localize("poke_fire_blast_ex"),
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * G.GAME.current_round.discards_left,
          Xmult_mod = 1 + (card.ability.extra.Xmult * G.GAME.current_round.discards_left)
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end,
}
-- Totodile 158
local totodile = {
  name = "totodile",
  pos = {x = 6, y = 0},
  config = {extra = {chips = 0, chip_mod = 4, hands = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.hands, card.ability.extra.chip_mod, card.ability.extra.chips, card.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  starter = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * #context.full_hand)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      elseif context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.chips = 0
      local evolve = level_evo(self, card, context, "j_poke_croconaw")
      if evolve then
        return evolve
      else
        return {
          message = localize('k_reset'),
          colour = G.C.CHIPS
        }
      end
    end
    return level_evo(self, card, context, "j_poke_croconaw")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end
}
-- Croconaw 159
local croconaw = {
  name = "croconaw",
  pos = {x = 7, y = 0},
  config = {extra = {chips = 0, chip_mod = 7, hands = 1, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.hands, card.ability.extra.chip_mod, card.ability.extra.chips, card.ability.extra.rounds}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * #context.full_hand)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      elseif context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.chips = 0
      local evolve = level_evo(self, card, context, "j_poke_feraligatr")
      if evolve then
        return evolve
      else
        return {
          message = localize('k_reset'),
          colour = G.C.CHIPS
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end
}
-- Feraligatr 160
local feraligatr = {
  name = "feraligatr",
  pos = {x = 8, y = 0},
  config = {extra = {chips = 0, chip_mod = 10, hands = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.hands, card.ability.extra.chip_mod, card.ability.extra.chips}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * #context.full_hand)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      elseif context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.chips = 0
      return {
        message = localize('k_reset'),
        colour = G.C.CHIPS
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end
}
-- Sentret 161
local sentret={
  name = "sentret",
  config = {extra = {mult = 0, mult_mod = 1, last_hand = 'None'}, evo_rqmt = 15},
  pos = {x = 9, y = 0}, 
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played and localize(G.GAME.last_hand_played, 'poker_hands') or localize("poke_none")}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      elseif context.before and not context.blueprint and card.ability.extra.last_hand == context.scoring_name then
        card.ability.extra.mult = 0
        return {
          message = localize('k_reset'),
          card = card
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_furret", card.ability.extra.mult, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.last_hand = G.GAME.last_hand_played
  end,
}
-- Furret 162
local furret={
  name = "furret",
  config = {extra = {mult = 0, mult_mod = 1, last_hand = 'None'}},
  pos = {x = 0, y = 1}, 
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played and localize(G.GAME.last_hand_played, 'poker_hands') or localize("poke_none")}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.last_hand = G.GAME.last_hand_played
  end,
}
-- Hoothoot 163
local hoothoot={
  name = "hoothoot",
  pos = {x = 1, y = 1},
  config = {extra = {scry = 2, rounds = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'scry_cards'}
		return {vars = {card.ability.extra.scry, card.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if not context.end_of_round and context.scoring_hand then
      if context.individual and context.cardarea == G.scry_view and not context.other_card.debuff then
        local chips = poke_total_chips(context.other_card)
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}},
          message_card = context.other_card,
          colour = G.C.CHIPS,
          chip_mod = chips,
          card = card,
        }
      end
    end
    return level_evo(self, card, context, "j_poke_noctowl")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = math.max(0,(G.GAME.scry_amount or 0) - card.ability.extra.scry)
  end,
}
-- Noctowl 164
local noctowl={
  name = "noctowl",
  pos = {x = 2, y = 1},
  config = {extra = {scry = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'scry_cards'}
		return {vars = {card.ability.extra.scry}}
  end,
  rarity = 2,
  cost = 7,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if not context.end_of_round and context.scoring_hand then
      if context.individual and context.cardarea == G.scry_view and not context.other_card.debuff then
        local chips = poke_total_chips(context.other_card)
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}},
          message_card = context.other_card,
          colour = G.C.CHIPS,
          chip_mod = chips,
          card = card,
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
-- Ledyba 165
local ledyba={
  name = "ledyba",
  pos = {x = 3, y = 1},
  config = {extra = {mult = 1,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_count = (G.deck and G.deck.cards) and #G.deck.cards or 0
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.mult * math.floor(deck_count/5)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * math.floor(#G.deck.cards/5)}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * math.floor(#G.deck.cards/5)
        }
      end
    end
    return level_evo(self, card, context, "j_poke_ledian")
  end
}
-- Ledian 166
local ledian={
  name = "ledian",
  pos = {x = 4, y = 1},
  config = {extra = {mult = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local deck_count = (G.deck and G.deck.cards) and #G.deck.cards or 0
    return {vars = {center.ability.extra.mult, center.ability.extra.mult * math.floor(deck_count/3)}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * math.floor(#G.deck.cards/3)}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * math.floor(#G.deck.cards/3)
        }
      end
    end
  end
}
-- Spinarak 167
local spinarak={
  name = "spinarak",
  pos = {x = 5, y = 1},
  config = {extra = {chips = 40, chips2 = 90, num = 1, dem = 3,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'spinarak')
    return {vars = {center.ability.extra.chips, num, dem, center.ability.extra.rounds, center.ability.extra.chips2}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips
        if SMODS.pseudorandom_probability(card, 'spinarak', card.ability.extra.num, card.ability.extra.dem, 'spinarak') then
          chips = card.ability.extra.chips2
        end
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
          colour = G.C.CHIPS,
          chip_mod = chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_ariados")
  end
}
-- Ariados 168
local ariados={
  name = "ariados",
  pos = {x = 6, y = 1},
  config = {extra = {chips = 60, chips2 = 135, num = 1, dem = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'ariados')
    return {vars = {center.ability.extra.chips, num, dem, center.ability.extra.chips2}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips
        if SMODS.pseudorandom_probability(card, 'ariados', card.ability.extra.num, card.ability.extra.dem, 'ariados') then
          chips = card.ability.extra.chips2
        end
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
          colour = G.C.CHIPS,
          chip_mod = chips
        }
      end
    end
  end
}
-- Crobat 169
local crobat={
  name = "crobat", 
  pos = {x = 7, y = 1},
  config = {extra = {mult = 0, mult_mod = 2, chips = 0, chip_mod = 15, Xmult = 1, Xmult_mod = .1, money = 0, money_mod = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod,                    center.ability.extra.money, center.ability.extra.money_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      local m_count = 0 
      local c_count = 0 
      local x_count = 0 
      local d_count = 0
      local enhanced = {}
      for k, v in ipairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base and not v.debuff then 
              enhanced[#enhanced+1] = v
              if v.config.center == G.P_CENTERS.m_mult or v.config.center == G.P_CENTERS.m_wild then
                m_count = m_count + 1
              end
              if v.config.center == G.P_CENTERS.m_bonus or v.config.center == G.P_CENTERS.m_stone then
                c_count = c_count + 1
              end
              if v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_glass then
                x_count = x_count + 1
              end
              if v.config.center == G.P_CENTERS.m_gold or v.config.center == G.P_CENTERS.m_lucky then
                d_count = d_count + 1
              end
              local enhancement_type = pseudorandom(pseudoseed('crobat'))
              if enhancement_type > .875 then v:set_ability(G.P_CENTERS.m_bonus, nil, true)
              elseif enhancement_type > .75 then v:set_ability(G.P_CENTERS.m_mult, nil, true)
              elseif enhancement_type > .625 then v:set_ability(G.P_CENTERS.m_wild, nil, true)
              elseif enhancement_type > .50 then v:set_ability(G.P_CENTERS.m_glass, nil, true)
              elseif enhancement_type > .375 then v:set_ability(G.P_CENTERS.m_steel, nil, true)
              elseif enhancement_type > .25 then v:set_ability(G.P_CENTERS.m_stone, nil, true)
              elseif enhancement_type > .125 then v:set_ability(G.P_CENTERS.m_gold, nil, true)
              else v:set_ability(G.P_CENTERS.m_lucky, nil, true)
              end
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          end
      end

      if #enhanced > 0 then 
          if m_count > 0 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod * m_count
          end
          if c_count > 0 then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod * c_count
          end
          if x_count > 0 then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod * x_count
          end
          if d_count > 0 then
            card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_mod * d_count
          end
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_screech_ex"), 
          colour = G.C.BLACK,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    if card.ability.extra.money > 0 then
      return ease_poke_dollars(card, "crobat", card.ability.extra.money, true)
    end
	end
}
-- Chinchou 170
local chinchou={
  name = "chinchou",
  pos = {x = 8, y = 1},
  config = {extra = {chips = 40,money = 1,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.money, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Pair']) then
        local earned = ease_poke_dollars(card, "chinchou", card.ability.extra.money, true)
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          dollars = earned,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_lanturn")
  end,
}
-- Lanturn 171
local lanturn={
  name = "lanturn",
  pos = {x = 9, y = 1},
  config = {extra = {chips = 60, chip_mod = 20, money = 1, money_mod = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local Money = center.ability.extra.money + (center.ability.extra.money_mod * #find_pokemon_type("Lightning"))
    local Chips = center.ability.extra.chips + (center.ability.extra.chip_mod * #find_pokemon_type("Water"))
    return {vars = {center.ability.extra.chips, center.ability.extra.money, center.ability.extra.chip_mod, center.ability.extra.money_mod, Money, Chips}}
  end,
  rarity = 2,
  cost = 7,
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Pair']) then
        local Money = card.ability.extra.money + (card.ability.extra.money_mod * #find_pokemon_type("Lightning"))
        local earned = ease_poke_dollars(card, "lanturn", Money, true)
        local Chips = card.ability.extra.chips + (card.ability.extra.chip_mod * #find_pokemon_type("Water"))
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {Chips}}, 
          colour = G.C.CHIPS,
          dollars = earned,
          chip_mod = Chips
        }
      end
    end
  end,
}
-- Pichu 172
local pichu={
  name = "pichu", 
  pos = {x = 0, y = 2},
  config = {extra={money = 10, Xmult_minus = 0.75, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult_minus, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3,
  stage = "Baby", 
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
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
    return level_evo(self, card, context, "j_poke_pikachu")
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "pichu", card.ability.extra.money, true)
	end
}
-- Cleffa 173
local cleffa={
  name = "cleffa",
  pos = {x = 1, y = 2},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Baby",
  ptype = "Fairy",
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
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_clefairy")
  end,
}
-- Igglybuff 174
local igglybuff={
  name = "igglybuff",
  pos = {x = 2, y = 2},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_world
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Baby",
  ptype = "Colorless",
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
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_world')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_jigglypuff")
  end,
}
-- Togepi 175
local togepi={
  name = "togepi",
  pos = {x = 3, y = 2},
  config = {extra = {Xmult1 = 0.50, Xmult2 = 1.5, rounds = 2,}},
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Fairy",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  enhancement_gate = 'm_lucky',
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        local xmult = 20 * (card.ability.extra.Xmult1 + pseudorandom('togepi') * (card.ability.extra.Xmult2 - card.ability.extra.Xmult1))
        xmult = math.floor(xmult + 0.5) / 20
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {xmult}},
          colour = G.C.XMULT,
          Xmult_mod = xmult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_togetic")
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or self
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end

    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    type_tooltip(_c, info_queue, card)

    local r_mults = {}
    for i = card.ability.extra.Xmult1 * 20, card.ability.extra.Xmult2 * 20 do
      r_mults[#r_mults+1] = string.format("%.2f", i/20)
    end

    desc_nodes[#desc_nodes+1] = {{n=G.UIT.T, config={text = localize('k_poke_baby'), colour = G.C.FILTER, scale = 0.32}},{n=G.UIT.T, config={text = ', ', colour = G.C.UI.TEXT_DARK, scale = 0.32}},{n=G.UIT.C, config={align = "m", colour = G.C.MULT, r = 0.05, padding = 0.03, res = 0.15}, nodes={
      {n=G.UIT.T, config={text = 'X', colour = G.C.WHITE, scale = 0.32}},
      {n=G.UIT.O, config={object = DynaText({string = r_mults, colours = {G.C.WHITE},pop_in_rate = 9999999, silent = true, random_element = true, pop_delay = 0.5, scale = 0.32, min_cycle_time = 0})}},
    }},
    {n=G.UIT.T, config={text = ' '..(localize('k_mult')), colour = G.C.UI.TEXT_DARK, scale = 0.32}}}
    localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {card.ability.extra.rounds}}
  end,
}
-- Togetic 176
local togetic={
  name = "togetic",
  pos = {x = 4, y = 2},
  config = {extra = {num = 1, chip_dem = 5, Xmult_dem = 10, chips = 100, Xmult_multi = 1.5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_shinystone
    end
    local num, chip_dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.chip_dem, 'togetic_chips')
    local _, Xmult_dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.Xmult_dem, 'togetic_Xmult')
    return {vars = {num, chip_dem, Xmult_dem, card.ability.extra.chips, card.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex2",
  gen = 2,
  item_req = "shinystone",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card and context.other_card.ability.effect == "Lucky Card" then
      local ret = nil
      if SMODS.pseudorandom_probability(card, 'togetic', card.ability.extra.num, card.ability.extra.chip_dem, 'togetic_chips') then
        ret = {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
      if SMODS.pseudorandom_probability(card, 'togetic', card.ability.extra.num, card.ability.extra.Xmult_dem, 'togetic_Xmult') then
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
    return item_evo(self, card, context, "j_poke_togekiss")
  end,
}
-- Natu 177
local natu = {
  name = "natu",
  pos = {x = 5, y = 2},
  config = {levels = {}, extra = {level_amt = 1, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 4,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable and context.consumeable.ability then
      if context.consumeable.ability.set == 'Planet' then
        for hand, data in pairs(G.GAME.hands) do
          if self.config.levels[hand] ~= data.level then
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'), chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
            level_up_hand(card, hand, nil, card.ability.extra.level_amt)
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
          end
        end
      end
    end
    for hand, data in pairs(G.GAME.hands) do
      if self.config.levels[hand] ~= data.level then
        G.E_MANAGER:add_event(Event({
          func = function()
            for hand, data in pairs(G.GAME.hands) do
              self.config.levels[hand] = data.level
            end
            return true
          end
        }))
        break
      end
    end
    return level_evo(self, card, context, "j_poke_xatu")
  end,
  set_sprites = function(self, card, front)
    for hand, data in pairs(G.GAME.hands) do
      self.config.levels[hand] = data.level
    end
  end,
}
-- Xatu 178
local xatu = {
  name = "xatu",
  pos = {x = 6, y = 2},
  config = {levels = {}, extra = {level_amt = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.level_amt}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable and context.consumeable.ability then
      if context.consumeable.ability.set == 'Planet' then
        for hand, data in pairs(G.GAME.hands) do
          if self.config.levels[hand] ~= data.level then
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'), chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
            level_up_hand(context.blueprint_card or card, hand, nil, card.ability.extra.level_amt)
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
          end
        end
      end
    end
    for hand, data in pairs(G.GAME.hands) do
      if self.config.levels[hand] ~= data.level then
        G.E_MANAGER:add_event(Event({
          func = function()
            for hand, data in pairs(G.GAME.hands) do
              self.config.levels[hand] = data.level
            end
            return true
          end
        }))
        break
      end
    end
  end,
  set_sprites = function(self, card, front)
    for hand, data in pairs(G.GAME.hands) do
      self.config.levels[hand] = data.level
    end
  end,
}
-- Mareep 179
local mareep={
  name = "mareep",
  pos = {x = 7, y = 2},
  config = {extra = {Xmult = 1,Xmult_mod = 0.1, Xmult_minus = 0.1}, evo_rqmt = 1.5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.Xmult_minus, self.config.evo_rqmt}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 0 and card.ability.extra.Xmult ~= 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.playing_card_added and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
    if context.remove_playing_cards and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult - card.ability.extra.Xmult_minus
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_xmult_minus',vars={card.ability.extra.Xmult_minus}}})
    end
    return scaling_evo(self, card, context, "j_poke_flaaffy", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
}
-- Flaaffy 180
local flaaffy={
  name = "flaaffy",
  pos = {x = 8, y = 2},
  config = {extra = {Xmult = 1,Xmult_mod = 0.25, Xmult_minus = 0.1}, evo_rqmt = 2.5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.Xmult_minus, self.config.evo_rqmt}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 0 and card.ability.extra.Xmult ~= 1  then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.playing_card_added and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
    if context.remove_playing_cards and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult - card.ability.extra.Xmult_minus
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_xmult_minus',vars={card.ability.extra.Xmult_minus}}})
    end
    return scaling_evo(self, card, context, "j_poke_ampharos", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
}

return {name = "Pokemon Jokers 151-180", 
        list = { mew, chikorita, bayleef, meganium, cyndaquil, quilava, typhlosion, totodile, croconaw, feraligatr, sentret, furret, hoothoot, noctowl, ledyba, ledian, spinarak, ariados,
                 crobat, chinchou, lanturn, pichu, cleffa, igglybuff, togepi, togetic, natu, xatu, mareep,flaaffy},
}
