--Code for pokemon jokers 001-030

-- Bulbasaur 001
local bulbasaur={ 
  name = "bulbasaur",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 1, earned = 0, h_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local money_left = math.max(0, self.config.evo_rqmt - center.ability.extra.earned)
		return {vars = {center.ability.extra.money_mod, money_left, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'),
                    center.ability.extra.h_size}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  starter = true,
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
    return scaling_evo(self, card, context, "j_poke_ivysaur", card.ability.extra.earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Ivysaur 002
local ivysaur={
  name = "ivysaur", 
  pos = {x = 1, y = 0}, 
  config = {extra = {money_mod = 1, earned = 0, h_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local money_left = math.max(0, self.config.evo_rqmt - center.ability.extra.earned)
		return {vars = {center.ability.extra.money_mod, money_left, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'), center.ability.extra.money_mod + 1}}
  end,
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1, 
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
    return scaling_evo(self, card, context, "j_poke_venusaur", card.ability.extra.earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Venusaur 003
local venusaur={
  name = "venusaur", 
  pos = {x = 2, y = 0}, 
  config = {extra = {money_mod = 2, earned = 0, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    end
    return {vars = {center.ability.extra.money_mod, center.ability.extra.earned, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  atlas = "Pokedex1",
  gen = 1,
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
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
  megas = { "mega_venusaur" },
}
-- Mega Venusaur 003-1
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
  gen = 1,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
    if not from_debuff and G.hand and G.hand.cards and #G.hand.cards > 0 then
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
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Charmander 004
local charmander={
  name = "charmander", 
  pos = {x = 3, y = 0}, 
  config = {extra = {mult = 0, mult_mod = 1, d_remaining = 0, d_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  starter = true,
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
    return scaling_evo(self, card, context, "j_poke_charmeleon", card.ability.extra.mult, self.config.evo_rqmt)
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
-- Charmeleon 005
local charmeleon={
  name = "charmeleon", 
  pos = {x = 4, y = 0}, 
  config = {extra = {mult = 0, mult_mod = 2, d_remaining = 0, d_size = 1}, evo_rqmt = 36},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
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
    return scaling_evo(self, card, context, "j_poke_charizard", card.ability.extra.mult, self.config.evo_rqmt)
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
-- Charizard 006
local charizard={
  name = "charizard", 
  pos = {x = 5, y = 0}, 
  config = {extra = {mult = 36, Xmult = 1.5, d_remaining = 0, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    if pokermon_config.detailed_tooltips then
      if next(SMODS.find_card('c_poke_megastone')) then
        info_queue[#info_queue+1] = {set = 'Other', key = 'split_mega', vars = {"Mega Charizard X", "Mega Charizard Y"}}
      end
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
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
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
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
-- Mega Charizard X 006-1
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
  gen = 1,
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
-- Mega Charizard Y 006-2
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
  gen = 1,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}
-- Squirtle 007
local squirtle={
  name = "squirtle", 
  pos = {x = 6, y = 0}, 
  config = {extra = {chips = 0, chip_mod = 1, hands = 1}, evo_rqmt = 40},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.hands, self.config.evo_rqmt, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  starter = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_wartortle", card.ability.extra.chips, self.config.evo_rqmt)
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
  end,
}
-- Wartortle 008
local wartortle={
  name = "wartortle", 
  pos = {x = 7, y = 0},
  config = {extra = {chips = 40, chip_mod = 2, hands = 1}, evo_rqmt = 120},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.hands, self.config.evo_rqmt, center.ability.extra.chip_mod}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  copy_scaled = true,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (2 * G.GAME.current_round.hands_left)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_blastoise", card.ability.extra.chips, self.config.evo_rqmt)
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
  end,
}
-- Blastoise 009
local blastoise={
  name = "blastoise", 
  pos = {x = 8, y = 0},
  config = {extra = {chips = 120, chip_mod = 25, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
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
  end,
  megas = {"mega_blastoise"}
}
-- Mega Blastoise 009-1
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
  gen = 1,
  blueprint_compat = false,
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
  end,
}
-- Caterpie 010
local caterpie={
  name = "caterpie", 
  pos = {x = 9, y = 0},
  config = {extra = {mult = 3, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 2, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1, 
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
-- Metapod 011
local metapod={
  name = "metapod",
  config = {extra = {mult = 6, rounds = 3}},
  pos = {x = 10, y = 0}, 
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
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
-- Butterfree 012
local butterfree={
  name = "butterfree", 
  pos = {x = 11, y = 0},
  config = {extra = {mult = 12}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
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
-- Weedle 013
local weedle={
  name = "weedle", 
  pos = {x = 12, y = 0},
  config = {extra = {chips = 20, rounds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 2, 
  stage = "Basic", 
  atlas = "Pokedex1",
  gen = 1,
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
-- Kakuna 014
local kakuna={
  name = "kakuna", 
  pos = {x = 0, y = 1}, 
  config = {extra = {chips = 40, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1,
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
-- Beedrill 015
local beedrill={
  name = "beedrill", 
  pos = {x = 1, y = 1}, 
  config = {extra = {chips = 80}},
  rarity = 2,
  cost = 5,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
		return {vars = {center.ability.extra.chips}}
  end,
  stage = "Two", 
  atlas = "Pokedex1",
  gen = 1,
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
-- Mega Beedrill 015-1
local mega_beedrill = {
  name = "mega_beedrill", 
  pos = { x = 8, y = 0 },
  soul_pos = { x = 9, y = 0 },
  config = {extra = {chips = 640, rounds = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Grass",
  atlas = "Megas",
  gen = 1,
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
-- Pidgey 016
local pidgey={
  name = "pidgey", 
  pos = {x = 2, y = 1},
  config = {extra = {mult_mod = 2, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local ranks = 0
        local suits = 0
        
        for k, v in pairs(SMODS.Suits) do
          for x, y in pairs(context.scoring_hand) do
            if y:is_suit(v.key) then
              suits = suits + 1
              break
            end
          end
        end

        for k, v in pairs(SMODS.Ranks) do
          for x, y in pairs(context.scoring_hand) do
            if v.id == y:get_id() then
              ranks = ranks + 1
              break
            end
          end
        end
        if (ranks + suits) > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * (ranks + suits)}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult_mod * (ranks + suits)
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_pidgeotto")
  end,
}
-- Pidgeotto 017
local pidgeotto={
  name = "pidgeotto", 
  pos = {x = 3, y = 1},
  config = {extra = {mult_mod = 3, rounds = 4}},
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local ranks = 0
        local suits = 0
        
        for k, v in pairs(SMODS.Suits) do
          for x, y in pairs(context.scoring_hand) do
            if y:is_suit(v.key) then
              suits = suits + 1
              break
            end
          end
        end

        for k, v in pairs(SMODS.Ranks) do
          for x, y in pairs(context.scoring_hand) do
            if v.id == y:get_id() then
              ranks = ranks + 1
              break
            end
          end
        end
        if (ranks + suits) > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * (ranks + suits)}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult_mod * (ranks + suits)
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_pidgeot")
  end,
}
-- Pidgeot 018
local pidgeot={
  name = "pidgeot", 
  pos = {x = 4, y = 1},
  config = {extra = {mult_mod = 5}}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
		return {vars = {center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local ranks = 0
        local suits = 0
        
        for k, v in pairs(SMODS.Suits) do
          for x, y in pairs(context.scoring_hand) do
            if y:is_suit(v.key) then
              suits = suits + 1
              break
            end
          end
        end

        for k, v in pairs(SMODS.Ranks) do
          for x, y in pairs(context.scoring_hand) do
            if v.id == y:get_id() then
              ranks = ranks + 1
              break
            end
          end
        end
        if (ranks + suits) > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * (ranks + suits)}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult_mod * (ranks + suits)
          }
        end
      end
    end
  end,
  megas = {"mega_pidgeot"}
}
-- Mega Pidgeot 018-1
local mega_pidgeot = {
  name = "mega_pidgeot", 
  pos = { x = 10, y = 0 },
  soul_pos = { x = 11, y = 0 },
  config = {extra = {Xmult_multi = 0.75}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Colorless",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local ranks = 0
        local suits = 0
        
        for k, v in pairs(SMODS.Suits) do
          for x, y in pairs(context.scoring_hand) do
            if y:is_suit(v.key) then
              suits = suits + 1
              break
            end
          end
        end

        for k, v in pairs(SMODS.Ranks) do
          for x, y in pairs(context.scoring_hand) do
            if v.id == y:get_id() then
              ranks = ranks + 1
              break
            end
          end
        end
        if (ranks + suits) > 0 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {1 + card.ability.extra.Xmult_multi * (ranks + suits)}}, 
            colour = G.C.XMULT,
            Xmult_mod = 1 + card.ability.extra.Xmult_multi * (ranks + suits)
          }
        end
      end
    end
  end,
}
-- Rattata 019
local rattata={
  name = "rattata", 
  pos = {x = 5, y = 1},
  config = {extra = {retriggers = 1, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  atlas = "Pokedex1",
  gen = 1,
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
    return level_evo(self, card, context, "j_poke_raticate")
  end,
  in_pool = function(self)
    return pokemon_in_pool(self)
  end
}
-- Raticate 020
local raticate={
  name = "raticate", 
  pos = {x = 6, y = 1}, 
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) or (context.other_card == context.scoring_hand[3]) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
-- Spearow 021
local spearow={
  name = "spearow", 
  pos = {x = 7, y = 1},
  config = {extra = {rounds = 4, card_threshold = 20, cards_scored = 0, upgrade = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds, center.ability.extra.card_threshold, math.max(0, center.ability.extra.card_threshold - center.ability.extra.cards_scored), 
                    center.ability.extra.upgrade and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Colorless",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.before and card.ability.extra.upgrade then
        card.ability.extra.upgrade = false
        card.ability.extra.cards_scored = card.ability.extra.cards_scored - card.ability.extra.card_threshold
        return {
          card = card,
          level_up = true,
          message = localize('k_level_up_ex')
        }
      end
      if context.joker_main and not context.blueprint then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + #context.scoring_hand
        if card.ability.extra.cards_scored >= card.ability.extra.card_threshold and not card.ability.extra.upgrade then
          card.ability.extra.upgrade = true
          local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
    end
    return level_evo(self, card, context, "j_poke_fearow")
  end,
}
-- Fearow 022
local fearow={
  name = "fearow", 
  pos = {x = 8, y = 1}, 
  config = {extra = {card_threshold = 15, cards_scored = 0, upgrade = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.card_threshold, math.max(0, center.ability.extra.card_threshold - center.ability.extra.cards_scored), 
                    center.ability.extra.upgrade and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Colorless",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.before and card.ability.extra.upgrade then
        if card.ability.extra.cards_scored >= card.ability.extra.card_threshold then
          card.ability.extra.cards_scored = card.ability.extra.cards_scored - card.ability.extra.card_threshold
        end
        card.ability.extra.upgrade = false
        return {
          card = card,
          level_up = true,
          message = localize('k_level_up_ex')
        }
      end
      if context.joker_main and not context.blueprint then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + #context.scoring_hand
        if card.ability.extra.cards_scored >= card.ability.extra.card_threshold and not card.ability.extra.upgrade then
          card.ability.extra.upgrade = true
          local eval = function() return (card.ability.extra.upgrade == true) and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
    end
  end,
}
-- Ekans 023
local ekans={
  name = "ekans", 
  pos = {x = 9, y = 1}, 
  config = {extra = {mult = 10, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
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
-- Arbok 024
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
  gen = 1,
  ptype = "Dark",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        local aces = 0
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
          end
        end
        if aces > 0 then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Tarot'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
            mult_mod = card.ability.extra.mult
          }
        else
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
  end,
}
-- Pikachu 025
local pikachu={
  name = "pikachu", 
  pos = {x = 11, y = 1},
  config = {extra={money = 2, mult = 10, money_threshold = 25}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.money, center.ability.extra.money_threshold}}
  end,
  rarity = 1, 
  cost = 6,
  item_req = "thunderstone",
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind then
      local dollars = G.GAME.dollars
      if (SMODS.Mods["Talisman"] or {}).can_load then
        dollars = to_number(dollars)
      end
      if dollars < card.ability.extra.money_threshold then
        card:juice_up()
        ease_poke_dollars(card, "pikachu", card.ability.extra.money)
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      local dollars = G.GAME.dollars
      if (SMODS.Mods["Talisman"] or {}).can_load then
        dollars = to_number(dollars)
      end
      if context.joker_main and dollars >= card.ability.extra.money_threshold then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_raichu")
  end
}
-- Raichu 026
local raichu={
  name = "raichu", 
  pos = {x = 12, y = 1}, 
  config = {extra={mult_mod = 4, money_count = 10, money_threshold = 50}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local info = center.ability.extra
    return { vars = { info.mult_mod, info.money_count, info.mult_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / info.money_count), info.money_threshold}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind then
      card:juice_up()
      ease_poke_dollars(card, "raichu", G.GAME.interest_amount*math.min(math.floor(G.GAME.dollars/5), G.GAME.interest_cap/5))
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      local dollars = G.GAME.dollars
      if (SMODS.Mods["Talisman"] or {}).can_load then
        dollars = to_number(dollars)
      end
      if context.joker_main then
        local Mult = card.ability.extra.mult_mod * math.floor(((G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)) / card.ability.extra.money_count)
        if (SMODS.Mods["Talisman"] or {}).can_load then
          Mult = to_number(Mult)
        end
        if Mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
            colour = G.C.MULT,
            mult_mod = Mult
          }
        end
      end
    end
  end
}
-- Sandshrew 027
local sandshrew={
  name = "sandshrew", 
  pos = {x = 0, y = 2},
  config = {extra = {rounds = 5, chip_mod = 25, sandshrew_tally = 0, glass_restored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    end
		return {vars = {center.ability.extra.rounds, center.ability.extra.chip_mod, center.ability.extra.chip_mod * center.ability.extra.sandshrew_tally, 
                    colours = {center.ability.extra.glass_restored ~= 0 and G.C.UI.TEXT_INACTIVE}}}
  end,
  rarity = 1, 
  cost = 5,
  enhancement_gate = 'm_glass',
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards and card.ability.extra.glass_restored <= 0 and not context.blueprint then
      local card_to_copy = nil
      for k, v in ipairs(context.removed) do
        if (SMODS.has_enhancement(v, 'm_glass') or v.glass_trigger) and card.ability.extra.glass_restored <= 0 then
          G.E_MANAGER:add_event(Event({
              func = function()
                  local copy = copy_card(v, nil, nil, G.playing_card)
                  copy:add_to_deck()
                  G.deck.config.card_limit = G.deck.config.card_limit + 1
                  table.insert(G.playing_cards, copy)
                  G.hand:emplace(copy)
                  copy.states.visible = nil
                  copy:start_materialize()
                  playing_card_joker_effects({copy})
                  return true
              end
          }))
          
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
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
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
        if SMODS.has_enhancement(v, 'm_glass') then card.ability.extra.sandshrew_tally = card.ability.extra.sandshrew_tally + 1 end
      end
    end
  end
}
-- Sandslash 028
local sandslash={
  name = "sandslash", 
  pos = {x = 1, y = 2},
  config = {extra = {chip_mod = 40, sandshrew_tally = 0, glass_restored = 0, glass_limit = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    end
		return {vars = {center.ability.extra.chip_mod, center.ability.extra.chip_mod * center.ability.extra.sandshrew_tally, center.ability.extra.glass_limit, 
                    center.ability.extra.glass_limit - center.ability.extra.glass_restored, 
                    colours = {center.ability.extra.glass_restored >= center.ability.extra.glass_limit and G.C.UI.TEXT_INACTIVE}}}
  end,
  rarity = 2,
  cost = 6, 
  enhancement_gate = 'm_glass',
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Earth",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards and card.ability.extra.glass_restored < card.ability.extra.glass_limit and not context.blueprint then
      local card_to_copy = nil
      for k, v in ipairs(context.removed) do
        if (SMODS.has_enhancement(v, 'm_glass') or v.glass_trigger) and card.ability.extra.glass_restored < card.ability.extra.glass_limit then
          G.E_MANAGER:add_event(Event({
              func = function()
                  local copy = copy_card(v, nil, nil, G.playing_card)
                  copy:add_to_deck()
                  G.deck.config.card_limit = G.deck.config.card_limit + 1
                  table.insert(G.playing_cards, copy)
                  G.hand:emplace(copy)
                  copy.states.visible = nil
                  copy:start_materialize()
                  playing_card_joker_effects({copy})
                  return true
              end
          }))
          
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
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
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
        if SMODS.has_enhancement(v, 'm_glass') then card.ability.extra.sandshrew_tally = card.ability.extra.sandshrew_tally + 1 end
      end
    end
  end
}
-- Nidoran-F 029
local nidoranf={
  name = "nidoranf", 
  pos = {x = 2, y = 2},
  config = {extra = {chips = 50, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1, 
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
          return {
            h_chips = card.ability.extra.chips,
            card = card,
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_nidorina")
  end
}
-- Nidorina 030
local nidorina={
  name = "nidorina", 
  pos = {x = 3, y = 2},
  config = {extra = {chips = 75}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    end
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One",
  item_req = "moonstone",
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
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
            return {
              h_chips = card.ability.extra.chips,
              card = card,
            }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_nidoqueen")
  end
}

return {name = "Pokemon Jokers 01-30",
        list = { bulbasaur, ivysaur, venusaur, mega_venusaur, charmander, charmeleon, charizard, mega_charizard_x, mega_charizard_y, squirtle, wartortle, blastoise, mega_blastoise, caterpie, metapod, butterfree, weedle, kakuna, beedrill, mega_beedrill, pidgey, pidgeotto, pidgeot, mega_pidgeot, rattata, raticate, spearow, fearow, ekans, arbok, pikachu, raichu, sandshrew, sandslash, nidoranf, nidorina, },
}
