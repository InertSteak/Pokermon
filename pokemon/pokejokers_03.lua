--Code for pokemon jokers 61-90

-- Poliwhirl 061
local poliwhirl={
  name = "poliwhirl", 
  pos = {x = 8, y = 4}, 
  config = {extra = {mult = 6}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_kingsrock
    end
    return {vars = {center.ability.extra.mult, localize(G.GAME.poke_poli_suit or "Spades",'suits_singular'),  
                    colours = {G.C.SUITS[G.GAME.poke_poli_suit or "Spades"]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural')}}
  end,
  rarity = 2, 
  cost = 7, 
  item_req = {"waterstone", "kingsrock"},
  evo_list = {waterstone = "j_poke_poliwrath", kingsrock = "j_poke_politoed"},
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          poke_change_poli_suit()
          G.GAME.poke_poli_suit_change_triggered = true
        end
      end
      if context.after and G.GAME.poke_poli_suit_change_triggered then
        G.GAME.poke_poli_suit_change_triggered = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = G.GAME.poke_poli_suit or "Spades"
      if context.other_card:is_suit(scoring_suit) then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            mult = card.ability.extra.mult
          }
        end
      end
    end
    return item_evo(self, card, context)
  end,
}
-- Poliwrath 062
local poliwrath={
  name = "poliwrath", 
  pos = {x = 9, y = 4},
  config = {extra = {Xmult_multi = 1.3, mult = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, localize(G.GAME.poke_poli_suit or "Spades",'suits_singular'),  
                    colours = {G.C.SUITS[G.GAME.poke_poli_suit or "Spades"]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural'), center.ability.extra.mult}}
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
        if not context.blueprint then
          poke_change_poli_suit()
          G.GAME.poke_poli_suit_change_triggered = true
        end
      end
      if context.after and G.GAME.poke_poli_suit_change_triggered then
        G.GAME.poke_poli_suit_change_triggered = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = G.GAME.poke_poli_suit or "Spades"
      if context.other_card:is_suit(scoring_suit) then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            x_mult = card.ability.extra.Xmult_multi,
            mult = card.ability.extra.mult,
            card = card
          }
        end
      end
    end
  end,
}
-- Abra 063
local abra={
  name = "abra", 
  pos = {x = 10, y = 4}, 
  config = {extra = {num = 1, dem = 2, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'abra')
    return {vars = {num, dem, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          if SMODS.pseudorandom_probability(card, 'abra', card.ability.extra.num, card.ability.extra.dem, 'abra') then
            local set = nil
            local message = nil
            local colour = nil
            if pseudorandom('abraitem') < .50 then
              set = "Item"
              message = "poke_plus_pokeitem"
              colour = G.ARGS.LOC_COLOURS.item
            else
              set = "Tarot"
              message = "k_plus_tarot"
              colour = G.C.PURPLE
            end
            local _card = create_card(set, G.consumeables, nil, nil, nil, nil, nil)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize(message), colour = colour})
          end
        end
      end
    end
    return level_evo(self, card, context, "j_poke_kadabra")
  end,
}
-- Kadabra 064
local kadabra={
  name = "kadabra", 
  pos = {x = 11, y = 4},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Item', key = 'c_poke_twisted_spoon', poke_add_desc = true}
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'kadabra')
    return {vars = {num, dem}}
  end,
  rarity = 3, 
  cost = 8, 
  item_req = "linkcable",
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if SMODS.pseudorandom_probability(card, 'kadabra', card.ability.extra.num, card.ability.extra.dem, 'kadabra') then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local set = nil
            local message = nil
            local colour = nil
            local conname = nil
            if pseudorandom('kadabraitem') < .50 then
              set = "Item"
              message = "poke_plus_pokeitem"
              colour = G.ARGS.LOC_COLOURS.item
              conname = "c_poke_twisted_spoon"
            else
              set = "Tarot"
              message = "k_plus_tarot"
              colour = G.C.PURPLE
            end
            local _card = create_card(set, G.consumeables, nil, nil, nil, nil, conname)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize(message), colour = colour})
          end
        end
      end
    end
    return item_evo(self, card, context, "j_poke_alakazam")
  end,
}
-- Alakazam 065
local alakazam={
  name = "alakazam", 
  pos = {x = 12, y = 4}, 
  config = {extra = {num = 1, dem = 2, card_limit = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_fool'}
      info_queue[#info_queue+1] = { set = 'Item', key = 'c_poke_twisted_spoon', poke_add_desc = true}
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'alakazam')
    return {vars = {num, dem, center.ability.extra.card_limit}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if SMODS.pseudorandom_probability(card, 'alakazam', card.ability.extra.num, card.ability.extra.dem, 'alakazam') then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local set = nil
            local message = nil
            local colour = nil
            local conname = nil
            if pseudorandom('alakazam') < .50 then
              set = "Item"
              message = "poke_plus_pokeitem"
              colour = G.ARGS.LOC_COLOURS.item
              conname = "c_poke_twisted_spoon"
            else
              set = "Tarot"
              message = "k_plus_tarot"
              colour = G.C.PURPLE
              conname = "c_fool"
            end
            local _card = create_card(set, G.consumeables, nil, nil, nil, nil, conname)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize(message), colour = colour})
          end
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
      return true end }))
  end, 
  megas = {"mega_alakazam"}
}
-- Mega Alakazam 065-1
local mega_alakazam={
  name = "mega_alakazam", 
  pos = {x = 12, y = 0},
  soul_pos = { x = 13, y = 0},
  config = {extra = {Xmult_multi2 = 2, Xmult_multi = 1.5, card_limit = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Item', key = 'c_poke_twisted_spoon', poke_add_desc = true}
    end
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi2, center.ability.extra.card_limit}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Psychic",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.other_consumeable then
        local Xmult = nil
        if context.other_consumeable.ability.name == "twisted_spoon" then
          Xmult = card.ability.extra.Xmult_multi2
        else
          Xmult = card.ability.extra.Xmult_multi
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = Xmult
        }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
      return true end }))
  end, 
}
-- Machop 066
local machop={
  name = "machop", 
  pos = {x = 0, y = 5},
  config = {extra = {hands = 1, discards = 1, rounds = 5, mult = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.rounds, center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic",
  ptype = "Fighting",
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
    return level_evo(self, card, context, "j_poke_machoke")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
    ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    ease_discard(card.ability.extra.discards)
  end
}
-- Machoke 067
local machoke={
  name = "machoke", 
  pos = {x = 1, y = 5},
  config = {extra = {hands = 2, discards = 2, mult = 10}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.mult}}
  end,
  rarity = 3, 
  cost = 8,
  item_req = "linkcable",
  stage = "One", 
  ptype = "Fighting",
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
    return item_evo(self, card, context, "j_poke_machamp")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
    ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    ease_discard(card.ability.extra.discards)
  end
}
-- Machamp 068
local machamp={
  name = "machamp", 
  pos = {x = 2, y = 5},
  config = {extra = {hands = 4, discards = 4, mult = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Fighting",
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
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
    ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
    ease_discard(card.ability.extra.discards)
  end
}
-- Bellsprout 069
local bellsprout={
  name = "bellsprout", 
  pos = {x = 3, y = 5},
  config = {extra = {chips = 16, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_even(context.other_card) then
          return {
            chips = card.ability.extra.chips,
            card = card
          }
      end
    end
    return level_evo(self, card, context, "j_poke_weepinbell")
  end
}
-- Weepinbell 070
local weepinbell={
  name = "weepinbell", 
  pos = {x = 4, y = 5},
  config = {extra = {chips = 32}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leafstone
    end
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 7, 
  item_req = "leafstone",
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_even(context.other_card) then
          return {
            chips = card.ability.extra.chips,
            card = card
          }
      end
    end
    return item_evo(self, card, context, "j_poke_victreebel")
  end
}
-- Victreebel 071
local victreebel={
  name = "victreebel", 
  pos = {x = 5, y = 5},
  config = {extra = {chips = 16, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_even(context.other_card) then
          return {
            chips = card.ability.extra.chips,
            card = card
          }
      end
    end
    if context.repetition and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 4 or 
         context.other_card:get_id() == 6 or 
         context.other_card:get_id() == 8 or 
         context.other_card:get_id() == 10 then
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
      end
    end
  end
}
-- Tentacool 072
local tentacool={
  name = "tentacool", 
  pos = {x = 6, y = 5},
  config = {extra = {mult = 7, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and context.other_card:get_id() == 10 then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_tentacruel")
  end
}
-- Tentacruel 073
local tentacruel={
  name = "tentacruel", 
  pos = {x = 7, y = 5}, 
  config = {extra = {mult = 10}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and context.other_card:get_id() == 10 then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
  end
}
-- Geodude 074
local geodude={
  name = "geodude", 
  pos = {x = 8, y = 5}, 
  config = {extra = {chips = 75, h_size = 1, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
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
    return level_evo(self, card, context, "j_poke_graveler")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end
}
-- Graveler 075
local graveler={
  name = "graveler", 
  pos = {x = 9, y = 5},
  config = {extra = {chips = 175, h_size = 2, rounds = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = 3, 
  cost = 8, 
  item_req = "linkcable",
  stage = "One", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
    return item_evo(self, card, context, "j_poke_golem")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end
}
-- Golem 076
local golem={
  name = "golem", 
  pos = {x = 10, y = 5},
  config = {extra = {chips = 275, h_size = 3, rounds = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end
}
-- Ponyta 077
local ponyta={
  name = "ponyta", 
  pos = {x = 11, y = 5},
  config = {extra = {chips = 0, chip_mod = 12}, evo_rqmt = 60},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1, 
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and context.cardarea == G.jokers and next(context.poker_hands['Straight']) then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
        }
      end
      if context.joker_main and card.ability.extra.chips > 0 then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_rapidash", card.ability.extra.chips, self.config.evo_rqmt)
  end,
}
-- Rapidash 078
local rapidash={
  name = "rapidash", 
  pos = {x = 12, y = 5},
  config = {extra = {chips = 0, chip_mod = 15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and context.cardarea == G.jokers and next(context.poker_hands['Straight']) then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        card.ability.extra.chip_mod = card.ability.extra.chip_mod + 1
        return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
        }
      end
      if context.joker_main and card.ability.extra.chips > 0 then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
}
-- Slowpoke 079
local slowpoke={
  name = "slowpoke", 
  pos = {x = 0, y = 6}, 
  config = {extra = {Xmult = 2, last_counter = 0, num = 1, dem = 7, shell_used = 0}, evo_rqmt = 4},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.last_counter)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'tauros')
    return {vars = {card.ability.extra.Xmult, triggers_left, num, dem}}
  end,
  rarity = 2, 
  cost = 6,
  item_req = "kingsrock",
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.current_round.hands_left == 0 then
        if not context.blueprint then
          card.ability.extra.last_counter = card.ability.extra.last_counter + 1
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.reroll_shop and not context.blueprint then
      if SMODS.pseudorandom_probability(card, 'slowpoke', card.ability.extra.num, card.ability.extra.dem, 'slowpoke') then
        local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_poke_shell"}
        local add_card = SMODS.create_card(temp_card)
        poke_add_shop_card(add_card, card)
        add_card.cost = 0
      end
    end
    local evo = item_evo(self, card, context, "j_poke_slowking")
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_slowbro", card.ability.extra.last_counter, self.config.evo_rqmt)
    end
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_slowbro", card.ability.extra.shell_used, 1)
    end
    return evo
  end
}
-- Slowbro 080
local slowbro={
  name = "slowbro", 
  pos = {x = 1, y = 6}, 
  config = {extra = {Xmult_mod = 0.4, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    local xmult_total = center.ability.extra.Xmult
    if G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.HAND_PLAYED or G.STATE == G.STATES.DRAW_TO_HAND or G.STATE == G.STATES.PLAY_TAROT then
      xmult_total = xmult_total + G.GAME.current_round.hands_played * center.ability.extra.Xmult_mod
    end
    return {vars = {center.ability.extra.Xmult_mod, xmult_total}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local xmult_total = card.ability.extra.Xmult + (1+G.GAME.current_round.hands_played) * card.ability.extra.Xmult_mod
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {xmult_total}}, 
          colour = G.C.XMULT,
          Xmult_mod = xmult_total
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
  megas = {"mega_slowbro"}
}
-- Mega Slowbro 080-1
local mega_slowbro={
  name = "mega_slowbro", 
  pos = {x = 14, y = 0},
  soul_pos = { x = 0, y = 1},
  config = {extra = {Xmult_mod = 0.5, Xmult = 1, hands_played = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local xmult_total = center.ability.extra.Xmult
    xmult_total = xmult_total + center.ability.extra.hands_played * center.ability.extra.Xmult_mod
    return {vars = {center.ability.extra.Xmult_mod, xmult_total}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Water",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        card.ability.extra.hands_played = card.ability.extra.hands_played + 1
        local xmult_total = card.ability.extra.Xmult + (card.ability.extra.hands_played * card.ability.extra.Xmult_mod)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {xmult_total}}, 
          colour = G.C.XMULT,
          Xmult_mod = xmult_total
        }
      end
    elseif (context.end_of_round and G.GAME.blind.boss) and not context.repetition and not context.individual and not context.blueprint then
      card.ability.extra.hands_played = 0
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
}
local shell={
  name = "shell",
  pos = {x = 11, y = 6},
  config = {extra = {}},
  no_collection = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari",
  cost = 0,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  aux_poke = true,
  auto_sticker = true,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = false,
  add_to_deck = function(self, card, from_debuff)
    for k, v in pairs(G.jokers.cards) do
      if v.config.center_key == 'j_poke_slowpoke' and v.ability.extra.shell_used ~= 1 then
        v.ability.extra.shell_used = 1
        play_sound('poke_shellchomp', 1, 0.5)
        break
      end
    end
    remove(self, card, {})
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local edition = {negative = true}
      card:set_edition(edition, true, true)
    end
  end
}
-- Magnemite 081
local magnemite={
  name = "magnemite", 
  pos = {x = 2, y = 6}, 
  config = {extra = {Xmult_multi = 1.5, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7,
  enhancement_gate = 'm_steel',
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       SMODS.has_enhancement(context.other_card, 'm_steel') then
        return {
          x_mult = card.ability.extra.Xmult_multi
        }
    end
    return level_evo(self, card, context, "j_poke_magneton")
  end
}
-- Magneton 082
local magneton={
  name = "magneton", 
  pos = {x = 3, y = 6}, 
  config = {extra = {Xmult_multi = 1.5, Xmult_multi2 = 0.2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    end
    local adjacent = 0
    local pos = 0
    if G.STAGE == G.STAGES.RUN then
      local adjacent_jokers = poke_get_adjacent_jokers(center)
      for i = 1, #adjacent_jokers do
        if is_type(adjacent_jokers[i], "Metal") then adjacent = adjacent + 1 end
      end
    end
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi2, center.ability.extra.Xmult_multi + (adjacent * center.ability.extra.Xmult_multi2)}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  enhancement_gate = 'm_steel',
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  item_req = "thunderstone",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       SMODS.has_enhancement(context.other_card, 'm_steel') then
        local adjacent = 0
        local adjacent_jokers = poke_get_adjacent_jokers(card)
        for i = 1, #adjacent_jokers do
          if is_type(adjacent_jokers[i], "Metal") then adjacent = adjacent + 1 end
        end
        
        return {
          x_mult = card.ability.extra.Xmult_multi + (adjacent * card.ability.extra.Xmult_multi2)
        }
    end
    return item_evo(self, card, context, "j_poke_magnezone")
  end
}
-- Farfetch'd 083
local farfetchd={
  name = "farfetchd", 
  pos = {x = 4, y = 6}, 
  config = {extra = {money = 4, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leek
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Leek"}}
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num or 1, center.ability.extra.dem, 'farfetchd')
    return {vars = {center.ability.extra.money, num, dem}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Colorless",
  joblacklist = true,
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_leek')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
      return true
    end
  end,
  calculate = function(self, card, context)
    if context.using_consumeable then
      if SMODS.pseudorandom_probability(card, 'farfetchd', card.ability.extra.num, card.ability.extra.dem, 'farfetchd') or context.consumeable.ability.name == "leek" then
        card:juice_up()
        ease_poke_dollars(card, "farfet", card.ability.extra.money)
      end
    end
  end
}
-- Doduo 084
local doduo={
  name = "doduo", 
  pos = {x = 5, y = 6}, 
  config = {extra = {mult = 6, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local first_face = nil
      local second_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          if not first_face then
            first_face = context.scoring_hand[i];
          elseif not second_face then
            second_face = context.scoring_hand[i];
            break
          end
        end
      end
      if context.other_card == first_face or context.other_card == second_face then
        return {
            mult = card.ability.extra.mult,
            colour = G.C.RED,
            card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_dodrio")
  end
}
-- Dodrio 085
local dodrio={
  name = "dodrio", 
  pos = {x = 6, y = 6}, 
  config = {extra = {mult = 7, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #context.scoring_hand == 3 then
        local faces = 0
        for k, v in ipairs(context.scoring_hand) do
          if v:is_face() then
            faces = faces + 1
          end
        end
        if faces == 3 then
          G.hand:change_size(card.ability.extra.h_size)
          G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
        end
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local first_face = nil
      local second_face = nil
      local third_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          if not first_face then
            first_face = context.scoring_hand[i];
          elseif not second_face then
            second_face = context.scoring_hand[i];
          elseif not third_face then
            third_face = context.scoring_hand[i];
            break
          end
        end
      end
      if context.other_card == first_face or context.other_card == second_face or context.other_card == third_face then
        return {
            mult = card.ability.extra.mult,
            colour = G.C.RED,
            card = card
        }
      end
    end
  end
}
-- Seel 086
local seel={
  name = "seel", 
  pos = {x = 7, y = 6}, 
  config = {extra = {num = 1, dem = 2, rounds = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'seel')
    return {vars = {num, dem, card.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      if SMODS.pseudorandom_probability(card, 'seel', card.ability.extra.num, card.ability.extra.dem, 'seel') then
        local _card = context.scoring_hand[1]
        local args = {guaranteed = true}
        local seal_type = SMODS.poll_seal(args)
        _card:set_seal(seal_type, true)
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    return level_evo(self, card, context, "j_poke_dewgong")
  end
}
-- Dewgong 087
local dewgong={
  name = "dewgong", 
  pos = {x = 8, y = 6}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      local _card = context.scoring_hand[1]
      local args = {guaranteed = true}
      local seal_type = SMODS.poll_seal(args)
      _card:set_seal(seal_type, true)
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
-- Grimer 088
local grimer={
  name = "grimer", 
  pos = {x = 9, y = 6}, 
  config = {extra = {mult = 8, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, G.GAME.starting_deck_size}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.playing_cards > G.GAME.starting_deck_size then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local added_card = SMODS.add_card{set = 'Base', no_edition = true}
      playing_card_joker_effects({added_card})
      card:juice_up()
    end
    return level_evo(self, card, context, "j_poke_muk")
  end,
}
-- Muk 089
local muk={
  name = "muk", 
  pos = {x = 10, y = 6}, 
  config = {extra = {mult = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, G.GAME.starting_deck_size, 
                    math.max(0, ((G.playing_cards and (#G.playing_cards - G.GAME.starting_deck_size) or 0) * center.ability.extra.mult))}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.playing_cards > G.GAME.starting_deck_size then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * (#G.playing_cards - G.GAME.starting_deck_size)}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * (#G.playing_cards - G.GAME.starting_deck_size),
          card = card
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local cards = {}
      for i = 1, 2 do
        cards[i] = SMODS.add_card{set = 'Base', no_edition = true}
      end
      playing_card_joker_effects(cards);
      local target = pseudorandom_element(G.playing_cards, pseudoseed('muk'))
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.2,
          func = function() 
              if target.ability.name == 'Glass Card' then 
                  target:shatter()
              else
                  target:start_dissolve()
              end
          return true end }))
      delay(0.3)
      for i = 1, #G.jokers.cards do
          G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = {target}})
      end
      card:juice_up()
    end
  end,
}
-- Shellder 090
local shellder={
  name = "shellder", 
  pos = {x = 11, y = 6}, 
  config = {extra = {retriggers = 1, num = 1, dem = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'shellder')
    return {vars = {num, dem}}
  end,
  rarity = 2, 
  cost = 5, 
  item_req = "waterstone",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and #context.scoring_hand == 5 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if SMODS.pseudorandom_probability(card, 'shellder', card.ability.extra.num, card.ability.extra.dem, 'shellder') then
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_cloyster")
  end,
}

return {name = "Pokemon Jokers 61-90", 
        list = { poliwhirl, poliwrath, abra, kadabra, alakazam, mega_alakazam, machop, machoke, machamp, bellsprout, weepinbell, victreebel, tentacool, tentacruel, geodude, graveler, 
                 golem, ponyta, rapidash, slowpoke, slowbro, mega_slowbro, shell, magnemite, magneton, farfetchd, doduo, dodrio, seel, dewgong, grimer, muk, shellder, },
}
