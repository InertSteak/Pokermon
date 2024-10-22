--Code for pokemon jokers 61-90
local poliwhirl={
  name = "poliwhirl", 
  pos = {x = 8, y = 4}, 
  config = {extra = {mults = {4, 8, 16, 32, 64}, indice = 1}},
  loc_txt = {      
    name = 'Poliwhirl',      
    text = {
      "Gives Mult in a {C:attention}cycle{}",
      "{C:mult}+#1#{}, {C:mult}+#2#{}, {C:mult}+#3#{}, {C:mult}+#4#{}, and {C:mult}+#5#{} Mult",
      "{C:inactive}(Currently {C:mult}+#6#{C:inactive} Mult)",
      "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
    return {vars = {center.ability.extra.mults[1], center.ability.extra.mults[2], center.ability.extra.mults[3], center.ability.extra.mults[4], center.ability.extra.mults[5], 
                    center.ability.extra.mults[center.ability.extra.indice]}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "waterstone",
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local scoring_mult
        if not context.blueprint then
          scoring_mult = card.ability.extra.mults[card.ability.extra.indice]
          if card.ability.extra.indice == 5 then
            card.ability.extra.indice = 1
          else
            card.ability.extra.indice = card.ability.extra.indice + 1
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {scoring_mult}}, 
          colour = G.C.MULT,
          mult_mod = scoring_mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_poliwrath")
  end,
}
local poliwrath={
  name = "poliwrath", 
  pos = {x = 9, y = 4},
  config = {extra = {Xmults = {1, 1.5, 2.25, 3.4, 5}, indice = 1}},
  loc_txt = {      
    name = 'Poliwrath',      
    text = {
      "Gives Mult in a {C:attention}cycle{}",
      "{X:mult,C:white} X#1# {}, {X:mult,C:white} X#2# {}, {X:mult,C:white} X#3# {}, {X:mult,C:white} X#4# {}, and {X:mult,C:white} X#5# {} Mult",
      "{C:inactive}(Currently {X:mult,C:white} X#6# {C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmults[1], center.ability.extra.Xmults[2], center.ability.extra.Xmults[3], center.ability.extra.Xmults[4], center.ability.extra.Xmults[5], 
                    center.ability.extra.Xmults[center.ability.extra.indice]}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local scoring_xmult
        if not context.blueprint then
          scoring_xmult = card.ability.extra.Xmults[card.ability.extra.indice]
          if card.ability.extra.indice == 5 then
            card.ability.extra.indice = 1
          else
            card.ability.extra.indice = card.ability.extra.indice + 1
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {scoring_xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = scoring_xmult
        }
      end
    end
  end,
}
local abra={
  name = "abra", 
  pos = {x = 10, y = 4}, 
  config = {extra = {odds = 4, rounds = 5}},
  loc_txt = {      
    name = 'Abra',      
    text = {
      "{C:green}#1# in #2#{} chance to",
      "create a {C:attention}Fool{} card if",
      "played {C:attention}poker hand{} has",
      "already been played this round",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_fool'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          if pseudorandom('abra') < G.GAME.probabilities.normal/card.ability.extra.odds then
            local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_fool')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
          end
        end
      end
    end
    return level_evo(self, card, context, "j_poke_kadabra")
  end,
}
local kadabra={
  name = "kadabra", 
  pos = {x = 11, y = 4},
  config = {extra = {odds = 2}},
  loc_txt = {      
    name = 'Kadabra',      
    text = {
      "{C:green}#1# in #2#{} chance to",
      "create a {C:attention}Fool{} card if",
      "played {C:attention}poker hand{} has",
      "already been played this round",
      "{C:inactive}(Evolves with a{} {C:attention}Link Cable{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_fool'}
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 3, 
  cost = 8, 
  item_req = "linkcable",
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if pseudorandom('kadabra') < G.GAME.probabilities.normal/card.ability.extra.odds then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_fool')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
          end
        end
      end
    end
    return item_evo(self, card, context, "j_poke_alakazam")
  end,
}
local alakazam={
  name = "alakazam", 
  pos = {x = 12, y = 4}, 
  config = {extra = {odds = 2, card_limit = 1}},
  loc_txt = {      
    name = 'Alakazam',      
    text = {
      "{C:attention}+#3#{} consumable slot",
      "{C:green}#1# in #2#{} chance to",
      "create a {C:attention}Fool{} card if",
      "played {C:attention}poker hand{} has",
      "already been played this round",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_fool'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.card_limit}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].played_this_round > 1 then
        if pseudorandom('alakazam') < G.GAME.probabilities.normal/card.ability.extra.odds then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_fool')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
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
}
local machop={
  name = "machop", 
  pos = {x = 0, y = 5},
  config = {extra = {hands = 1, discards = 1, rounds = 5}},
  loc_txt = {      
    name = 'Machop',      
    text = {
      "{C:chips}+#1#{} hands",
      "{C:mult}-#2# discards{}",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic",
  ptype = "Fighting",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_machoke")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
      ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
      ease_discard(card.ability.extra.discards)
  end
}
local machoke={
  name = "machoke", 
  pos = {x = 1, y = 5},
  config = {extra = {hands = 2, discards = 2, mult = 20}},
  loc_txt = {      
    name = 'Machoke',      
    text = {
      "{C:chips}+#1#{} hands",
      "{C:mult}-#2# discards{}",
      "{C:mult}+#3#{} Mult",
      "{C:inactive}(Evolves with a{} {C:attention}Link Cable{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.mult}}
  end,
  rarity = 3, 
  cost = 8,
  item_req = "linkcable",
  stage = "One", 
  ptype = "Fighting",
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
    return item_evo(self, card, context, "j_poke_machamp")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
      ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
      ease_discard(card.ability.extra.discards)
  end
}
local machamp={
  name = "machamp", 
  pos = {x = 2, y = 5},
  config = {extra = {hands = 4, discards = 4, mult = 40}},
  loc_txt = {      
    name = 'Machamp',      
    text = {
      "{C:chips}+#1#{} hands",
      "{C:mult}-#2# discards{}",
      "{C:mult}+#3#{} Mult"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Fighting",
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
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
      ease_discard(-card.ability.extra.discards)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
      ease_discard(card.ability.extra.discards)
  end
}
local bellsprout={
  name = "bellsprout", 
  pos = {x = 3, y = 5},
  config = {extra = {chips = 20, rounds = 4}},
  loc_txt = {      
    name = 'Bellsprout',      
    text = {
      "Played cards with {C:attention}Even{} rank",
      "give {C:chips}+#1#{} Chips when scored",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 4 or 
         context.other_card:get_id() == 6 or 
         context.other_card:get_id() == 8 or 
         context.other_card:get_id() == 10 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chips = card.ability.extra.chips
          }
      end
    end
    return level_evo(self, card, context, "j_poke_weepinbell")
  end
}
local weepinbell={
  name = "weepinbell", 
  pos = {x = 4, y = 5},
  config = {extra = {chips = 40}},
  loc_txt = {      
    name = 'Weepinbell',      
    text = {
      "Played cards with {C:attention}Even{} rank",
      "give {C:chips}+#1#{} Chips when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Leaf Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leafstone
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "leafstone",
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 4 or 
         context.other_card:get_id() == 6 or 
         context.other_card:get_id() == 8 or 
         context.other_card:get_id() == 10 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chips = card.ability.extra.chips
          }
      end
    end
    return item_evo(self, card, context, "j_poke_victreebel")
  end
}
local victreebel={
  name = "victreebel", 
  pos = {x = 5, y = 5},
  config = {extra = {chips = 40, retriggers = 1}},
  loc_txt = {      
    name = 'Victreebel',      
    text = {
      "Played cards with {C:attention}Even{} rank",
      "give {C:chips}+#1#{} Chips when scored",
      "and {C:attention}retrigger{}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 4 or 
         context.other_card:get_id() == 6 or 
         context.other_card:get_id() == 8 or 
         context.other_card:get_id() == 10 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chips = card.ability.extra.chips
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
local tentacool={
  name = "tentacool", 
  pos = {x = 6, y = 5},
  config = {extra = {mult = 5, rounds = 5}},
  loc_txt = {      
    name = 'Tentacool',      
    text = {
      "Each played {C:attention}10{}",
      "gives {C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and context.other_card:get_id() == 10 then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
        colour = G.C.MULT,
        mult = card.ability.extra.mult
      }
    end
    return level_evo(self, card, context, "j_poke_tentacruel")
  end
}
local tentacruel={
  name = "tentacruel", 
  pos = {x = 7, y = 5}, 
  config = {extra = {mult = 5, retriggers = 1}},
  loc_txt = {      
    name = 'Tentacruel',      
    text = {
      "Each played {C:attention}10{}",
      "gives {C:mult}+#1#{} Mult when scored",
      "and {C:attention}retriggers{}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.retriggers}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and context.other_card:get_id() == 10 then
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
        colour = G.C.MULT,
        mult = card.ability.extra.mult
      }
    end
    if context.repetition and context.cardarea == G.play and not context.other_card.debuff and context.other_card:get_id() == 10 then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end
}
local geodude={
  name = "geodude", 
  pos = {x = 8, y = 5}, 
  config = {extra = {chips = 100, h_size = 1, rounds = 4}},
  loc_txt = {      
    name = 'Geodude',      
    text = {
      "{C:chips}+#1#{} Chips,",
      "{C:attention}-#2#{} hand size",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
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
local graveler={
  name = "graveler", 
  pos = {x = 9, y = 5},
  config = {extra = {chips = 225, h_size = 2, rounds = 0}},
  loc_txt = {      
    name = 'Graveler',      
    text = {
      "{C:chips}+#1#{} Chips,",
      "{C:attention}-#2#{} hand size",
      "{C:inactive}(Evolves with a{} {C:attention}Link Cable{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = 3, 
  cost = 6, 
  item_req = "linkcable",
  stage = "One", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.evolve then
      return {
        message = evolve (self, card, context, 'j_poke_golem')
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end
}
local golem={
  name = "golem", 
  pos = {x = 10, y = 5},
  config = {extra = {chips = 500, h_size = 3, rounds = 0}},
  loc_txt = {      
    name = 'Golem',      
    text = {
      "{C:chips}+#1#{} Chips,",
      "{C:attention}-#2#{} hand size",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
local ponyta={
  name = "ponyta", 
  pos = {x = 11, y = 5},
  config = {extra = {chips = 0, chip_mod = 10}},
  loc_txt = {      
    name = 'Ponyta',     
    text = {
      "Gains {C:chips}#2#{} Chips if played", 
      "hand contains a {C:attention}Straight{}",
      "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
      "{C:inactive}(Evolves at {C:chips}+60{} {C:inactive}Chips)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1", 
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
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_rapidash", card.ability.extra.chips, 60)
  end,
}
local rapidash={
  name = "rapidash", 
  pos = {x = 12, y = 5},
  config = {extra = {chips = 105, chip_mod = 25}},
  loc_txt = {      
    name = 'Rapidash',      
    text = {
      "Gains {C:chips}#2#{} Chips if played", 
      "hand contains a {C:attention}Straight{}",
      "Applies {C:attention}Shortcut{}",
      "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_shortcut'}
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
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
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
}
local slowpoke={
  name = "slowpoke", 
  pos = {x = 0, y = 6}, 
  config = {extra = {Xmult = 2, rounds = 5}},
  loc_txt = {      
    name = 'Slowpoke',      
    text = {
      "{X:red,C:white} X#1# {} Mult on {C:attention}final",
      "{C:attention}hand{} of round",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and G.GAME.current_round.hands_left == 0 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_slowbro")
  end
}
local slowbro={
  name = "slowbro", 
  pos = {x = 1, y = 6}, 
  config = {extra = {Xmult_mod = 0.75, Xmult = 1}},
  loc_txt = {      
    name = 'Slowbro',      
    text = {
      "Gains {X:red,C:white} X#1# {} Mult",
      "per hand played,",
      "resets at end of round",
      "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult = 1
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
}
local magnemite={
  name = "magnemite", 
  pos = {x = 2, y = 6}, 
  config = {extra = {Xmult = 2, rounds = 4}},
  loc_txt = {      
    name = 'Magnemite',      
    text = {
      "Played {C:attention}Steel{} cards",
      "give {X:red,C:white}X#1#{} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    return {vars = {center.ability.extra.Xmult, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7,
  enhancement_gate = 'm_steel',
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       context.other_card.ability.name == 'Steel Card' then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          x_mult = card.ability.extra.Xmult
        }
    end
    return level_evo(self, card, context, "j_poke_magneton")
  end
}
local magneton={
  name = "magneton", 
  pos = {x = 3, y = 6}, 
  config = {extra = {Xmult = 2.5}},
  loc_txt = {      
    name = 'Magneton',      
    text = {
      "Played {C:attention}Steel{} cards",
      "give {X:red,C:white}X#1#{} Mult"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.play and context.individual and not context.other_card.debuff and not context.end_of_round and
       context.other_card.ability.name == 'Steel Card' then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          x_mult = card.ability.extra.Xmult
        }
    end
  end
}
local farfetchd={
  name = "farfetchd", 
  pos = {x = 4, y = 6}, 
  config = {extra = {Xmult = 3, odds = 2}},
  loc_txt = {      
    name = 'Farfetch\'d',      
    text = {
      "When you get this,",
      "create a {C:attention}Leek{} card.",
      "{C:green}#2# in #3#{} chance for {X:red,C:white}X#1#{} Mult",
      "for each {C:attention}Leek{} card you have",
      "{C:inactive}(2 would give {X:red,C:white}X6{}{C:inactive} total, etc){}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leek
    return {vars = {center.ability.extra.Xmult, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  joblacklist = true,
  atlas = "Pokedex1",
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_leek')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
      return true
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and pseudorandom('farfet') < G.GAME.probabilities.normal/card.ability.extra.odds then
        local count = find_joker('leek')
        if #count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult * #count}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult * #count
          }
        end
      end
    end
  end
}
local doduo={
  name = "doduo", 
  pos = {x = 5, y = 6}, 
  config = {extra = {mult = 12, rounds = 4}},
  loc_txt = {      
    name = 'Doduo',      
    text = {
      "{C:mult}+#1#{} Mult if played hand",
      "contains at least",
      "{C:attention}2{} face cards",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local face_count = 0
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:is_face() then
            face_count = face_count + 1
          end
        end
        if face_count > 1 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_dodrio")
  end
}
local dodrio={
  name = "dodrio", 
  pos = {x = 6, y = 6}, 
  config = {extra = {mult = 33}},
  loc_txt = {      
    name = 'Dodrio',      
    text = {
      "{C:mult}+#1#{} Mult if played hand",
      "contains at least",
      "{C:attention}3{} face cards"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local face_count = 0
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:is_face() then
            face_count = face_count + 1
          end
        end
        if face_count > 2 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
  end
}
local seel={
  name = "seel", 
  pos = {x = 7, y = 6}, 
  config = {extra = {odds = 2, rounds = 5}},
  loc_txt = {      
    name = 'Seel',      
    text = {
      "If {C:attention}first hand{} of round", 
      "has only {C:attention}1{} card, {C:green}#1# in #2#{} chance to",
      "add a random {C:attention}seal{} to that card",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 and not context.blueprint then
      if pseudorandom('seel') < G.GAME.probabilities.normal/card.ability.extra.odds then
        _card = context.full_hand[1]
        local seal_type = pseudorandom(pseudoseed('seel'))
        if seal_type > 0.80 then _card:set_seal('Red', true)
        elseif seal_type > 0.60 then _card:set_seal('Blue', true)
        elseif seal_type > 0.40 then _card:set_seal('Gold', true)
        elseif seal_type > 0.20 then _card:set_seal('Purple', true)
        else _card:set_seal('poke_pink_seal', true)
        end
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    return level_evo(self, card, context, "j_poke_dewgong")
  end
}
local dewgong={
  name = "dewgong", 
  pos = {x = 8, y = 6}, 
  loc_txt = {      
    name = 'Dewgong',      
    text = {
      "If {C:attention}first hand{} of round", 
      "has only {C:attention}1{} card, add a",
      "random {C:attention}seal{} to that card",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 3, 
  cost = 9, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 and not context.blueprint then
      _card = context.full_hand[1]
      local seal_type = pseudorandom(pseudoseed('dewgong'))
      if seal_type > 0.80 then _card:set_seal('Red', true)
      elseif seal_type > 0.60 then _card:set_seal('Blue', true)
      elseif seal_type > 0.40 then _card:set_seal('Gold', true)
      elseif seal_type > 0.20 then _card:set_seal('Purple', true)
      else _card:set_seal('poke_pink_seal', true)
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
local grimer={
  name = "grimer", 
  pos = {x = 9, y = 6}, 
  config = {extra = {mult = 10, rounds = 5}},
  loc_txt = {      
    name = 'Grimer',      
    text = {
      "{C:mult}+#1#{} Mult if",
      "deck size > {C:attention}#3#{}",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, G.GAME.starting_deck_size}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1", 
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
    return level_evo(self, card, context, "j_poke_muk")
  end,
}
local muk={
  name = "muk", 
  pos = {x = 10, y = 6}, 
  config = {extra = {mult = 20, Xmult = 3}},
  loc_txt = {      
    name = 'Muk',      
    text = {
      "{C:mult}+#1#{} Mult if",
      "deck size > {C:attention}#3#{}.",
      "{X:mult,C:white} X#2# {} Mult {C:attention}instead{} if",
      "deck size > {C:attention}#4#{}"
      
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult, G.GAME.starting_deck_size, G.GAME.starting_deck_size + 12}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.playing_cards > G.GAME.starting_deck_size then
        if #G.playing_cards > G.GAME.starting_deck_size + 12 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
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
    end
  end,
}
local shellder={
  name = "shellder", 
  pos = {x = 11, y = 6}, 
  config = {extra = {retriggers = 1, odds = 2}},
  loc_txt = {      
    name = 'Shellder',      
    text = {
      "If hand has {C:attention}5{} scoring",
      "cards, each have a {C:green}#1# in #2#{}",
      "chance to retrigger",
      "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "waterstone",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and #context.scoring_hand == 5 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if pseudorandom('shellder') < G.GAME.probabilities.normal/card.ability.extra.odds then
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
        list = { poliwhirl, poliwrath, abra, kadabra, alakazam, machop, machoke, machamp, bellsprout, weepinbell, victreebel, tentacool, tentacruel, geodude, graveler, 
                 golem, ponyta, rapidash, slowpoke, slowbro, magnemite, magneton, farfetchd, doduo, dodrio, seel, dewgong, grimer, muk, shellder, },
}