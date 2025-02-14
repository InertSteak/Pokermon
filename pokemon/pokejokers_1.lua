local bulbasaur={ 
  name = "bulbasaur",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 1, earned = 0, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money_mod, center.ability.extra.earned, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'),
                    center.ability.extra.h_size}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after then
          if context.other_card.debuff then
            return {
              message = localize("k_debuffed"),
              colour = G.C.RED,
              card = card,
            }
          else
            local earned = 0
            if not context.blueprint then
              card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money_mod
            end
            earned = earned + card.ability.extra.money_mod
            earned = ease_poke_dollars(card, "bulba", earned)
            return {
              message = localize('$')..earned,
              colour = G.C.MONEY,
              card = card
            }
          end
        end
    end
    return scaling_evo(self, card, context, "j_poke_ivysaur", card.ability.extra.earned, 16)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end
}

local ivysaur={
  name = "ivysaur", 
  pos = {x = 1, y = 0}, 
  config = {extra = {money_mod = 1, earned = 0, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money_mod, center.ability.extra.earned, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'), center.ability.extra.money_mod + 1}}
  end,
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after then
          if context.other_card.debuff then
            return {
              message = localize("k_debuffed"),
              colour = G.C.RED,
              card = card,
            }
          else
            local more
            if pseudorandom('bulba') < .50 then
              more = 0
            else
              more = 1
            end
            local earned = 0
            if not context.blueprint then
              card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money_mod + more
            end
            earned = earned + card.ability.extra.money_mod + more
            earned = ease_poke_dollars(card, "ivy", earned)
            return {
              message = localize('$')..earned,
              colour = G.C.MONEY,
              card = card
            }
          end
        end
    end
    return scaling_evo(self, card, context, "j_poke_venusaur", card.ability.extra.earned, 16)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end
}

local venusaur={
  name = "venusaur", 
  pos = {x = 2, y = 0}, 
  config = {extra = {money_mod = 2, earned = 0, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.money_mod, center.ability.extra.earned, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  atlas = "Pokedex1",
  ptype = "Grass",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after then
          if context.other_card.debuff then
            return {
              message = localize("k_debuffed"),
              colour = G.C.RED,
              card = card,
            }
          else
            local earned = 0
            if not context.blueprint then
              card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money_mod
            end
            
            earned = earned + card.ability.extra.money_mod
            earned = ease_poke_dollars(card, "venu", earned)
            return {
                message = localize('$')..earned,
                colour = G.C.MONEY,
                card = card
            }
          end
        end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end,
  megas = { "mega_venusaur" },
}

local mega_venusaur = {
  name = "mega_venusaur",
  pos = { x = 0, y = 0 },
  soul_pos = { x = 1, y = 0 },
  config = { extra = { h_size = 4, rounds = 1 } },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return { vars = { center.ability.extra.h_size } }
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Grass",
  atlas = "Megas",
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      local previous_card_limit = G.hand.config.card_limit
      G.hand:change_size(card.ability.extra.h_size)
      if G.hand and G.hand.cards and #G.hand.cards > 0 then
        local hand_space = math.min(#G.deck.cards, card.ability.extra.h_size - 1)
        delay(0.3)
        for i=1, hand_space do --draw cards from deck
            if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK then 
                draw_card(G.deck,G.hand, i*100/hand_space,'up', true)
            else
                draw_card(G.deck,G.hand, i*100/hand_space,'up', true)
            end
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end
}

local charmander={
  name = "charmander", 
  pos = {x = 3, y = 0}, 
  config = {extra = {mult = 0, mult_mod = 1, d_remaining = 0, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            if card.ability.extra.mult == 16 then
              local eval = function(card) return not card.REMOVED end
              juice_card_until(card, eval, true)
            end
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.MULT
            }
        end
      elseif context.joker_main then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
      end
    end
    return scaling_evo(self, card, context, "j_poke_charmeleon", card.ability.extra.mult, 16)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end
}

local charmeleon={
  name = "charmeleon", 
  pos = {x = 4, y = 0}, 
  config = {extra = {mult = 0, mult_mod = 2, d_remaining = 0, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.MULT
            }
        end
      elseif context.joker_main then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
      end
    end
    return scaling_evo(self, card, context, "j_poke_charizard", card.ability.extra.mult, 36)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end
}

local charizard={
  name = "charizard", 
  pos = {x = 5, y = 0}, 
  config = {extra = {mult = 36, Xmult = 1.5, d_remaining = 0, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    if next(SMODS.find_card('c_poke_megastone')) then
      info_queue[#info_queue+1] = {set = 'Other', key = 'split_mega', vars = {"Mega Charizard X", "Mega Charizard Y"}}
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
        return {
          message = "Fire Blast!", 
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      else
        return { 
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}},
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end,
  megas = {"mega_charizard_x","mega_charizard_y"},
  getMega = function(self, card)
    -- Leftmost = X, Rightmost = Y, Middle = Random
    local mega = nil
    for k, v in ipairs(G.jokers.cards) do
      if card == v and k == 1 then
        mega = self.megas[1]
        break
      elseif card == v and k == #G.jokers.cards then
        mega = self.megas[2]
      end
    end
    if not mega then mega = pseudorandom_element(self.megas, pseudoseed('megastone_charizard')) end
    return mega
  end
}
local mega_charizard_x = {
  name = "mega_charizard_x", 
  pos = {x = 2, y = 0},
  soul_pos = { x = 3, y = 0},
  config = {extra = {Xmult = 5, d_remaining = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.d_remaining}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Dragon",
  atlas = "Megas",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
        return {
          message = "Fire Blast!", 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
local mega_charizard_y = {
  name = "mega_charizard_y", 
  pos = {x = 4, y = 0},
  soul_pos = { x = 5, y = 0},
  config = {extra = {rounds = 1, d_size = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.d_size}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Fire",
  atlas = "Megas",
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end
}
local squirtle={
  name = "squirtle", 
  pos = {x = 6, y = 0}, 
  config = {extra = {chips = 0, chip_mod = 2, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
      card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
      local evolved = scaling_evo(self, card, context, "j_poke_wartortle", card.ability.extra.chips, 32)
      if evolved then
        return evolved
      else
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end, 
}
local wartortle={
  name = "wartortle", 
  pos = {x = 7, y = 0},
  config = {extra = {chips = 0, chip_mod = 4, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
      card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
      local evolved = scaling_evo(self, card, context, "j_poke_blastoise", card.ability.extra.chips, 72)
      if evolved then
        return evolved
      else
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end, 
}
local blastoise={
  name = "blastoise", 
  pos = {x = 8, y = 0},
  config = {extra = {chips = 72, chip_mod = 32, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end,
  megas = {"mega_blastoise"}
}
local mega_blastoise = {
  name = "mega_blastoise",
  pos = {x = 6, y = 0},
  soul_pos = { x = 7, y = 0},
  config = {extra = {chips = 0, chip_mod = 128, hands = 3, rounds = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Water",
  atlas = "Megas",
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end
}
local caterpie={
  name = "caterpie", 
  pos = {x = 9, y = 0},
  config = {extra = {mult = 2, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_metapod")
  end,
}
local metapod={
  name = "metapod",
  config = {extra = {mult = 4, rounds = 3}},
  pos = {x = 10, y = 0}, 
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_butterfree")
  end,
}
local butterfree={
  name = "butterfree", 
  pos = {x = 11, y = 0},
  config = {extra = {mult = 10}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end

}
local weedle={
  name = "weedle", 
  pos = {x = 12, y = 0},
  config = {extra = {chips = 16, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Grass",
  blueprint_compat = true,
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
    return level_evo(self, card, context, "j_poke_kakuna")
  end,
}
local kakuna={
  name = "kakuna", 
  pos = {x = 0, y = 1}, 
  config = {extra = {chips = 32, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Grass",
  blueprint_compat = true,
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
    return level_evo(self, card, context, "j_poke_beedrill")
  end,
}
local beedrill={
  name = "beedrill", 
  pos = {x = 1, y = 1}, 
  config = {extra = {chips = 80}},
  rarity = 2,
  cost = 5,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
		return {vars = {center.ability.extra.chips}}
  end,
  stage = "Two", 
  atlas = "Pokedex1",
  ptype = "Grass",
  blueprint_compat = true,
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
  end,
  megas = {"mega_beedrill"}
}
local mega_beedrill = {
  name = "mega_beedrill", 
  pos = { x = 8, y = 0 },
  soul_pos = { x = 9, y = 0 },
  config = {extra = {chips = 800, rounds = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Grass",
  atlas = "Megas",
  blueprint_compat = true,
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
  end
}
local pidgey={
  name = "pidgey", 
  pos = {x = 2, y = 1},
  config = {extra = {rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_pidgeotto")
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
local pidgeotto={
  name = "pidgeotto", 
  pos = {x = 3, y = 1},
  config = {extra = {rounds = 4}},
  blueprint_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_pidgeot")
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
local pidgeot={
  name = "pidgeot", 
  pos = {x = 4, y = 1},
  config = {extra = {money = 2}}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
		return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
      ease_poke_dollars(card, "pidgeot", card.ability.extra.money)
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
  end,
  megas = {"mega_pidgeot"}
}
local mega_pidgeot = {
  name = "mega_pidgeot", 
  pos = { x = 10, y = 0 },
  soul_pos = { x = 11, y = 0 },
  config = {extra = {plus_levels = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local total_levels = 0
    for _, hand in pairs(G.GAME.hands) do
      if hand.visible then
        total_levels = total_levels + hand.level
      end
    end
		return {vars = {center.ability.extra.plus_levels}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Colorless",
  atlas = "Megas",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' and not context.blueprint then
      local text = context.consumeable.ability.hand_type
      if type(text) == "string" then
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, 
                          level = G.GAME.hands[text].level})
        level_up_hand(card, text, nil, card.ability.extra.plus_levels)
        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
      end
    end
  end
}
local rattata={
  name = "rattata", 
  pos = {x = 5, y = 1},
  config = {extra = {retriggers = 1, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      if (context.other_card == context.scoring_hand[1]) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_raticate")
  end,
  in_pool = function(self)
    return pokemon_in_pool(self)
  end
}
local raticate={
  name = "raticate", 
  pos = {x = 6, y = 1}, 
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
local spearow={
  name = "spearow", 
  pos = {x = 7, y = 1},
  config = {extra = {rounds = 4, card_threshold = 20, cards_scored = 0, upgrade = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds, center.ability.extra.card_threshold, center.ability.extra.cards_scored, center.ability.extra.upgrade and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.upgrade then
        card.ability.extra.upgrade = false
        return {
          card = card,
          level_up = true,
          message = localize('k_level_up_ex')
        }
      end
      if context.joker_main and not context.blueprint then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + #context.scoring_hand
        if card.ability.extra.cards_scored >= card.ability.extra.card_threshold then
          card.ability.extra.cards_scored = card.ability.extra.cards_scored - card.ability.extra.card_threshold
          card.ability.extra.upgrade = true
          local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
    end
    return level_evo(self, card, context, "j_poke_fearow")
  end,
}
local fearow={
  name = "fearow", 
  pos = {x = 8, y = 1}, 
  config = {extra = {card_threshold = 15, cards_scored = 0, upgrade = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.card_threshold, center.ability.extra.cards_scored, center.ability.extra.upgrade and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.upgrade then
        card.ability.extra.upgrade = false
        return {
          card = card,
          level_up = true,
          message = localize('k_level_up_ex')
        }
      end
      if context.joker_main and not context.blueprint then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + #context.scoring_hand
        if card.ability.extra.cards_scored >= card.ability.extra.card_threshold then
          card.ability.extra.cards_scored = card.ability.extra.cards_scored - card.ability.extra.card_threshold
          card.ability.extra.upgrade = true
          local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
    end
  end,
}
local ekans={
  name = "ekans", 
  pos = {x = 9, y = 1}, 
  config = {extra = {mult = 8, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_arbok")
  end,
  }
local arbok={
  name = "arbok", 
  pos = {x = 10, y = 1}, 
  config = {extra = {mult = 15, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Dark",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local aces = 0
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
          end
          if aces >= 1 then
            local card_type = 'Tarot'
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = (function()
                        local card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                        card:add_to_deck()
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                    return true
                end)}))
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
}
local pikachu={
  name = "pikachu", 
  pos = {x = 11, y = 1},
  config = {extra={money = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 6,
  item_req = "thunderstone",
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "pikachu", math.min(10, #G.jokers.cards * card.ability.extra.money), true) 
	end,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_raichu")
  end
}
local raichu={
  name = "raichu", 
  pos = {x = 12, y = 1}, 
  config = {extra={money = 2, threshold = 120, plus_slot = false, money_limit = 16}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if not center.edition or (center.edition and not center.edition.negative) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    end
    return {vars = {center.ability.extra.money, math.max(center.ability.extra.threshold, center.ability.extra.threshold + (center.ability.extra.threshold * (#find_joker("raichu") - 1))), 
                    center.ability.extra.money_limit}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex1", 
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    local turn_neg = nil
    if (SMODS.Mods["Talisman"] or {}).can_load then
      turn_neg = to_big(G.GAME.dollars) >= to_big(card.ability.extra.threshold + (card.ability.extra.threshold * (#find_joker("raichu") - 1))) and not (card.edition and card.edition.negative)
    else
      turn_neg = G.GAME.dollars >= card.ability.extra.threshold + (card.ability.extra.threshold * (#find_joker("raichu") - 1)) and not (card.edition and card.edition.negative)
    end
    if turn_neg then
      local edition = {negative = true}
      card:set_edition(edition, true)
    end
    return ease_poke_dollars(card, "raichu", math.min(card.ability.extra.money_limit, #G.jokers.cards * card.ability.extra.money), true)
	end,
}
local sandshrew={
  name = "sandshrew", 
  pos = {x = 0, y = 2},
  config = {extra = {rounds = 5, chip_mod = 25, sandshrew_tally = 0, glass_restored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
		return {vars = {center.ability.extra.rounds, center.ability.extra.chip_mod, center.ability.extra.chip_mod * center.ability.extra.sandshrew_tally, 
                    center.ability.extra.glass_restored == 0 and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 1, 
  cost = 5,
  enhancement_gate = 'm_glass',
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards and card.ability.extra.glass_restored <= 0 then
      local card_to_copy = nil
      for k, v in ipairs(context.removed) do
        if v.shattered and card.ability.extra.glass_restored <= 0 then
          card_to_copy = v
          local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
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
          playing_card_joker_effects({true})
          
          card.ability.extra.glass_restored = card.ability.extra.glass_restored + 1
        end
      end
      if card_to_copy then
        return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chip_mod * card.ability.extra.sandshrew_tally}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chip_mod * card.ability.extra.sandshrew_tally 
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if card.ability.extra.glass_restored > 0 then
        card.ability.extra.glass_restored = 0
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      end
    end
    return level_evo(self, card, context, "j_poke_sandslash")
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.sandshrew_tally = 0
      for k, v in pairs(G.playing_cards) do
        if v.ability.name == 'Glass Card' then card.ability.extra.sandshrew_tally = card.ability.extra.sandshrew_tally + 1 end
      end
    end
  end
}
local sandslash={
  name = "sandslash", 
  pos = {x = 1, y = 2},
  config = {extra = {chip_mod = 40, sandshrew_tally = 0, glass_restored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
		return {vars = {center.ability.extra.chip_mod, center.ability.extra.chip_mod * center.ability.extra.sandshrew_tally, 
                    center.ability.extra.glass_restored == 0 and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 2,
  cost = 6, 
  enhancement_gate = 'm_glass',
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Earth",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards and card.ability.extra.glass_restored <= 0 then
      local card_to_copy = nil
      for k, v in ipairs(context.removed) do
        if v.shattered and card.ability.extra.glass_restored <= 0 then
          card_to_copy = v
          local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
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
          playing_card_joker_effects({true})
          
          card.ability.extra.glass_restored = card.ability.extra.glass_restored + 1
        end
      end
      if card_to_copy then
        return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chip_mod * card.ability.extra.sandshrew_tally}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chip_mod * card.ability.extra.sandshrew_tally 
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if card.ability.extra.glass_restored > 0 then
        card.ability.extra.glass_restored = 0
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      end
    end
    return level_evo(self, card, context, "j_poke_sandslash")
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.sandshrew_tally = 0
      for k, v in pairs(G.playing_cards) do
        if v.ability.name == 'Glass Card' then card.ability.extra.sandshrew_tally = card.ability.extra.sandshrew_tally + 1 end
      end
    end
  end
}
local nidoranf={
  name = "nidoranf", 
  pos = {x = 2, y = 2},
  config = {extra = {chips = 35, chip_total = 0, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == 12 then
      if not context.end_of_round and not context.before and not context.after then
        if context.other_card.debuff then
            return {
              message = localize("k_debuffed"),
              colour = G.C.RED,
              card = card,
            }
        else
            card.ability.extra.chip_total = card.ability.extra.chip_total + card.ability.extra.chips
            return {
              message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
              colour = G.C.CHIPS,
              card = card,
            }
        end
      end
    end
    if context.joker_main then
      local chip_temp_total = card.ability.extra.chip_total
      card.ability.extra.chip_total = 0
      if chip_temp_total > 0 then
        return {
          message = localize('poke_nido_ex'),
          chip_mod = chip_temp_total
        }
      end
    end
    return level_evo(self, card, context, "j_poke_nidorina")
  end
}
local nidorina={
  name = "nidorina", 
  pos = {x = 3, y = 2},
  config = {extra = {chips = 70, chip_total = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One",
  item_req = "moonstone",
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == 12 then
      if not context.end_of_round and not context.before and not context.after then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
            card.ability.extra.chip_total = card.ability.extra.chip_total + card.ability.extra.chips
            return {
              message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
              colour = G.C.CHIPS,
              card = card,
            }
        end
      end
    end
    if context.joker_main then
      local chip_temp_total = card.ability.extra.chip_total
      card.ability.extra.chip_total = 0
      if chip_temp_total > 0 then
        return {
          message = localize('poke_nido_ex'),
          chip_mod = chip_temp_total
        }
      end
    end
    return item_evo(self, card, context, "j_poke_nidoqueen")
  end
}

return {name = "Pokemon Jokers 01-30",
        init = function()
            local game_init_object = Game.init_game_object;
            function Game:init_game_object()
                local game = game_init_object(self)
                game.current_round.bulb1card = {rank = 'Ace'}
                return game
            end
            
            local rmr = reset_mail_rank;
            function reset_mail_rank()
              rmr()
              G.GAME.current_round.bulb1card = {rank = 'Ace'}
              local valid_bulb_cards = {}
              for k, v in ipairs(G.playing_cards) do
                if v.ability.effect ~= 'Stone Card' then
                  valid_bulb_cards[#valid_bulb_cards+1] = v
                end
              end
              if valid_bulb_cards[1] then
                local bulb_card = pseudorandom_element(valid_bulb_cards, pseudoseed('bulb'..G.GAME.round_resets.ante))
                G.GAME.current_round.bulb1card.rank = bulb_card.base.value
                G.GAME.current_round.bulb1card.id = bulb_card.base.id
              end
            end
              
        end,
        list = { bulbasaur, ivysaur, venusaur, mega_venusaur, charmander, charmeleon, charizard, mega_charizard_x, mega_charizard_y, squirtle, wartortle, blastoise, mega_blastoise, caterpie, metapod, butterfree, weedle, kakuna, beedrill, mega_beedrill, pidgey, pidgeotto, pidgeot, mega_pidgeot, rattata, raticate, spearow, fearow, ekans, arbok, pikachu, raichu, sandshrew, sandslash, nidoranf, nidorina, },
}
