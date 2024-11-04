--Code for pokemon jokers 91-120
local cloyster={
  name = "cloyster", 
  pos = {x = 12, y = 6},
  config = {extra = {retriggers = 1}},
  loc_txt = {      
    name = 'Cloyster',      
    text = {
      "If hand has {C:attention}5{} scoring",
      "cards, retrigger them"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and #context.scoring_hand == 5 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
  end,
}
local gastly={
  name = "gastly", 
  pos = {x = 0, y = 7}, 
  config = {extra = {odds = 6, rounds = 3}},
  loc_txt = {      
    name = 'Gastly',      
    text = {
      "{C:green}#1# in #2#{} chance to",
      "add {C:dark_edition}Negative{} to a",
      "random {C:attention}Joker{}",
      "{S:1.1,C:red,E:2}self destructs{}",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  eternal_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      if pseudorandom('gastly') < G.GAME.probabilities.normal/card.ability.extra.odds then
          G.E_MANAGER:add_event(Event({
              remove(self, card, context)
            }))
          if #G.jokers.cards > 0 then
            local eligible_editionless_jokers = {}
            for k, v in pairs(G.jokers.cards) do
              if v.ability.set == 'Joker' and (not v.edition) and v ~= card then
                  table.insert(eligible_editionless_jokers, v)
              end
            end
            if #eligible_editionless_jokers > 0 then
              local eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('gastly'))
              local edition = {negative = true}
              eligible_card:set_edition(edition, true)
            end
          end
          
          return {
              message = "Lick!"
          }
      end
    end
    return level_evo(self, card, context, "j_poke_haunter")
  end
}
local haunter={
  name = "haunter", 
  pos = {x = 1, y = 7}, 
  config = {extra = {odds = 4}},
  loc_txt = {      
    name = 'Haunter',      
    text = {
      "{C:green}#1# in #2#{} chance to",
      "add {C:dark_edition}Negative{} to a",
      "random {C:attention}Joker{}",
      "{S:1.1,C:red,E:2}self destructs{}",
      "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 3, 
  cost = 9,
  item_req = "linkcable",
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  eternal_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      if pseudorandom('haunter') < G.GAME.probabilities.normal/card.ability.extra.odds and not card.ability.extra.evolve then
          G.E_MANAGER:add_event(Event({
              remove(self, card, context)
            }))
          if #G.jokers.cards > 0 then
            local eligible_editionless_jokers = {}
            for k, v in pairs(G.jokers.cards) do
              if v.ability.set == 'Joker' and (not v.edition) and v ~= card then
                  table.insert(eligible_editionless_jokers, v)
              end
            end
            if #eligible_editionless_jokers > 0 then
              local eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('haunter'))
              local edition = {negative = true}
              eligible_card:set_edition(edition, true)
            end
          end
          
          return {
              message = "Lick!"
          }
      end
    end
    if card and not card.REMOVED then
      return item_evo(self, card, context, "j_poke_gengar")
    end
  end
}
local gengar={
  name = "gengar", 
  pos = {x = 2, y = 7}, 
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Gengar',      
    text = {
      "{C:green}#1# in #2#{} chance to",
      "add {C:dark_edition}Negative{} to a",
      "random {C:attention}Joker{}",
      "at end of round",
      "{C:inactive}(includes self){}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  eternal_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      if pseudorandom('gengar') < G.GAME.probabilities.normal/card.ability.extra.odds then
          if #G.jokers.cards > 0 then
            local eligible_editionless_jokers = {}
            for k, v in pairs(G.jokers.cards) do
              if v.ability.set == 'Joker' and (not v.edition) then
                  table.insert(eligible_editionless_jokers, v)
              end
            end
            if #eligible_editionless_jokers > 0 then
              local eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('gengar'))
              local edition = {negative = true}
              eligible_card:set_edition(edition, true)
              return {
                message = "Lick!"
              }
            end
          end
      end
    end
  end
}
local onix={
  name = "onix", 
  pos = {x = 3, y = 7},  
  loc_txt = {      
    name = 'Onix',      
    text = {
      "The leftmost scoring card of",
      "your {C:attention}first hand{} of round",
      "becomes a {C:attention}Stone{} card",
      "{C:inactive}(Evolves with a {C:metal}Metal{} {C:inactive}sticker){}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[1]
        card:set_ability(G.P_CENTERS.m_stone, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    return type_evo(self, card, context, "j_poke_steelix", "metal")
  end
}
local drowzee={
  name = "drowzee", 
  pos = {x = 4, y = 7}, 
  config = {extra = {mult = 0, mult_mod = 3}},
  loc_txt = {      
    name = 'Drowzee',      
    text = {
      "{C:mult}+#2#{} Mult per",
      "unique {C:planet}Planet{} card",
      "used this run",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+21{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
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
    return scaling_evo(self, card, context, "j_poke_hypno", card.ability.extra.mult, 21)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local planets_used = 0
      for k, v in pairs(G.GAME.consumeable_usage) do
          if v.set == 'Planet' then planets_used = planets_used + 1 end
      end
      card.ability.extra.mult = planets_used * card.ability.extra.mult_mod
    end
  end
}
local hypno={
  name = "hypno", 
  pos = {x = 5, y = 7},  
  config = {extra = {mult = 0, mult_mod = 5}},
  loc_txt = {      
    name = 'Hypno',      
    text = {
      "{C:mult}+#2#{} Mult per unique",
      "{C:planet}Planet{} card used this run.",
      "When you get this,",
      "create a {C:spectral}Trance{} card",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_trance'}
    info_queue[#info_queue+1] = {key = 'blue_seal', set = 'Other'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
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
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local planets_used = 0
      for k, v in pairs(G.GAME.consumeable_usage) do
          if v.set == 'Planet' then planets_used = planets_used + 1 end
      end
      card.ability.extra.mult = planets_used * card.ability.extra.mult_mod
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_trance')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
    end
  end
}
local krabby={
  name = "krabby", 
  pos = {x = 6, y = 7},  
  config = {extra = {chips = 20, rounds = 4}},
  loc_txt = {      
    name = 'Krabby',      
    text = {
      "Played {C:attention}face{} cards",
      "give {C:chips}+#1#{} Chips",
      "when scored",
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
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_face() then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
            G.E_MANAGER:add_event(Event({func = function()
                card:juice_up(0.8, 0.8)
            return true end }))
        return {
          colour = G.C.CHIPS,
          chips = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_kingler")
  end
}
local kingler={
  name = "kingler", 
  pos = {x = 7, y = 7},  
  loc_txt = {      
    name = 'Kingler',      
    text = {
      "All played {C:attention}face{} cards",
      "become {C:attention}Bonus{} cards",
      "when scored",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local faces = {}
      for k, v in ipairs(context.scoring_hand) do
          if v:is_face() then 
              faces[#faces+1] = v
              v:set_ability(G.P_CENTERS.m_bonus, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          end
      end
      if #faces > 0 then 
          return {
              message = "Surf!",
              colour = G.C.CHIPS,
              card = self
          }
      end
    end
  end
}
local voltorb={
  name = "voltorb", 
  pos = {x = 8, y = 7}, 
  config = {extra = {mult = 10, rounds = 3}},
  loc_txt = {      
    name = 'Voltorb',      
    text = {
      "If this is the {C:attention}leftmost{}",
      "Joker, gain {C:mult}+#1#{} Mult",
      "and debuff this Joker",
      "until end of round",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main and G.jokers.cards[1] == card then
        card.ability.extra.destruct = true
        return {
          message = "BOOM!", 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.after and card.ability.extra.destruct and not context.blueprint then
      card.debuff = true
      card.ability.extra.destruct = false
    end
    return level_evo(self, card, context, "j_poke_electrode")
  end
}
local electrode={
  name = "electrode", 
  pos = {x = 9, y = 7}, 
  config = {extra = {mult = 20, money = 5}},
  loc_txt = {      
    name = 'Electrode',      
    text = {
      "If this is the {C:attention}leftmost{}",
      "Joker, gain {C:mult}+#1#{} Mult and {C:money}$#2#{}",
      "and debuff this Joker",
      "until end of round"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.money}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex1", 
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main and G.jokers.cards[1] == card then
        card.ability.extra.destruct = true
    
        ease_dollars(card.ability.extra.money)
        
        return {
          message = "BOOM!", 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult,
        }
      end
      if context.after and card.ability.extra.destruct and not context.blueprint then
        card.debuff = true
        card.ability.extra.destruct = false
      end
    end
  end
}
local exeggcute={
  name = "exeggcute", 
  pos = {x = 10, y = 7}, 
  config = {extra = {mult = 3, suit = "Hearts"}},
  loc_txt = {      
    name = 'Exeggcute',      
    text = {
      "Played cards with",
      "{C:hearts}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Leaf Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leafstone
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = 1, 
  cost = 5,
  item_req = "leafstone",
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult 
        }
      end
    end
    return item_evo(self, card, context, "j_poke_exeggutor")
  end
}
local exeggutor={
  name = "exeggutor", 
  pos = {x = 11, y = 7}, 
  config = {extra = {mult_mod = 3, Xmult_multi = 1.5, suit = "Hearts", odds = 2}},
  loc_txt = {      
    name = 'Exeggutor',      
    text = {
      "{C:green}#4# in #5#{} chance for",
      "played cards with",
      "{C:hearts}#3#{} suit to give",
      "{C:mult}+#1#{} Mult and {X:mult,C:white}X#2#{} Mult",
      "when scored", 
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.Xmult_multi, localize(center.ability.extra.suit, 'suits_singular'), 
                    ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if pseudorandom('exeggutor') < G.GAME.probabilities.normal/card.ability.extra.odds then
          return {
            message = "Solar!", 
            colour = G.C.XMULT,
            mult = card.ability.extra.mult_mod, 
            x_mult = card.ability.extra.Xmult_multi
          }
        end
      end
    end
  end
}
local cubone={
  name = "cubone", 
  pos = {x = 12, y = 7},  
  config = {extra = {mult = 5, rounds = 5,}},
  loc_txt = {      
    name = 'Cubone',      
    text = {
      "When you get this, create",
      "a {C:attention}Thick Club{} card",
      "Gives {C:mult}+#1#{} Mult for each",
      "filled consumable slot",
      "{C:inactive,s:0.75}({C:attention,s:0.75}Thick Clubs{}{C:inactive,s:0.75} count as double){}",
      "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thickclub
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.mult * (((G.consumeables and #G.consumeables.cards) or 0) + #find_joker('thickclub'))}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Earth",
  joblacklist = true,
  atlas = "Pokedex1", 
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_thickclub')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #G.consumeables.cards + #find_joker('thickclub')
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * count}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult * count
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_marowak")
  end,
}
local marowak={
  name = "marowak", 
  pos = {x = 0, y = 8},  
  config = {extra = {Xmult_multi = 0.75, card_limit = 1}},
  loc_txt = {      
    name = 'Marowak',      
    text = {
      "{C:attention}+#2#{} consumable slots",
      "Gives {X:mult,C:white} X#1# {} Mult for each ",
      "filled consumable slot",
      "{C:inactive,s:0.75}({C:attention,s:0.75}Thick Clubs{}{C:inactive,s:0.75} count as double){}",
      "{C:inactive}(Currently {X:mult,C:white} X#3# {}{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thickclub
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.card_limit, 
                    math.max(1, center.ability.extra.Xmult_multi * (1 + (((G.consumeables and #G.consumeables.cards) or 0) + #find_joker('thickclub'))))}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Earth",
  joblacklist = true,
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #G.consumeables.cards + #find_joker('thickclub')
        if (count + 1) > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi * (count + 1)}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult_multi * (count + 1)
          }
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
local hitmonlee={
  name = "hitmonlee", 
  pos = {x = 1, y = 8},
  config = {extra = {Xmult_mod = 0.2}},
  loc_txt = {      
    name = 'Hitmonlee',      
    text = {
      "{X:red,C:white}X#1#{} Mult for each card",
      "below {C:attention}#2#{} in your full deck",
      "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, G.GAME.starting_deck_size, math.max(1, 1 + (G.playing_cards and (G.GAME.starting_deck_size - #G.playing_cards) or 0) * center.ability.extra.Xmult_mod)}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + ((G.GAME.starting_deck_size - #G.playing_cards) * card.ability.extra.Xmult_mod)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end,
}
local hitmonchan={
  name = "hitmonchan", 
  pos = {x = 2, y = 8}, 
  config = {extra = {Xmult_mod = 0.2}},
  loc_txt = {      
    name = 'Hitmonchan',      
    text = {
      "{X:red,C:white}X#1#{} Mult for each card",
      "above {C:attention}#2#{} in your full deck",
      "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, G.GAME.starting_deck_size, math.max(1, 1 + (G.playing_cards and (#G.playing_cards - G.GAME.starting_deck_size) or 0) * center.ability.extra.Xmult_mod)}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + ((#G.playing_cards - G.GAME.starting_deck_size ) * card.ability.extra.Xmult_mod)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end,
}
local lickitung={
  name = "lickitung", 
  pos = {x = 3, y = 8}, 
  config = {extra = {Xmult_multi = 2, jacks_played = 0}},
  loc_txt = {      
    name = 'Lickitung',      
    text = {
      "First and second played",
      "{C:attention}Jacks{} give {X:mult,C:white} X#1# {} Mult",
      "when scored",
      "{C:inactive}(Evolves after triggering {C:attention}#2#{}{C:inactive}/20 times){}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.jacks_played}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1", 
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
        card.ability.extra.jacks_played = card.ability.extra.jacks_played + 1
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_lickilicky", card.ability.extra.jacks_played, 20)
  end
}
local koffing={
  name = "koffing", 
  pos = {x = 4, y = 8},
  config = {extra = {rounds = 4}},
  loc_txt = {      
    name = 'Koffing',      
    text = {
      "Sell this card to reduce the",
      "score requirement of the",
      "current {C:attention}Boss Blind{} by {C:attention}half{}",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      if G.GAME.blind and G.GAME.blind:get_type() == 'Boss' then 
        G.GAME.blind.chips = G.GAME.blind.chips/2
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
      end
    end
    return level_evo(self, card, context, "j_poke_weezing")
  end
}
local weezing={
  name = "weezing", 
  pos = {x = 5, y = 8}, 
  loc_txt = {      
    name = 'Weezing',      
    text = {
      "Sell this card to reduce the",
      "score requirement of the",
      "current {C:attention}Boss Blind{} by {C:attention}half{}",
      "and disable it",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 3, 
  cost = 7, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      if G.GAME.blind and G.GAME.blind:get_type() == 'Boss' then 
        G.GAME.blind.chips = G.GAME.blind.chips/2
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
        G.GAME.blind:disable()
      end
    end
  end
}
local rhyhorn={
  name = "rhyhorn", 
  pos = {x = 6, y = 8}, 
  config = {extra = {chips = 15, rounds = 4}},
  loc_txt = {      
    name = 'Rhyhorn',      
    text = {
      "Every played {C:attention}Stone{} card",
      "permanently gains",
      "{C:chips}+#1#{} Chips when scored",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  enhancement_gate = 'm_stone',
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
    return level_evo(self, card, context, "j_poke_rhydon")
  end
}
local rhydon={
  name = "rhydon", 
  pos = {x = 7, y = 8},
  config = {extra = {chips = 30}},
  loc_txt = {      
    name = 'Rhydon',      
    text = {
      "Every played {C:attention}Stone{} card",
      "permanently gains",
      "{C:chips}+#1#{} Chips when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 8,
  enhancement_gate = 'm_stone',
  item_req = "linkcable",
  stage = "One", 
  ptype = "Earth",
  atlas = "Pokedex1",
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
    return item_evo(self, card, context, "j_poke_rhyperior")
  end
}
local chansey={
  name = "chansey", 
  pos = {x = 8, y = 8}, 
  config = {extra = {limit = 2, triggers = 0}},
  loc_txt = {      
    name = 'Chansey',      
    text = {
      "The first {C:attention}#1#{} times a",
      "{C:attention}Lucky{} card triggers each round,",
      "add a permanent copy to your",
      "deck and draw it to {C:attention}Hand",
      "{C:inactive}(Currently {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
      "{C:inactive}(Evolves when deck is >= 25% {C:attention}Lucky{C:inactive} cards)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
		return {vars = {center.ability.extra.limit, center.ability.extra.triggers}}
  end,
  rarity = 3, 
  cost = 8,
  ptype = "Colorless",
  enhancement_gate = 'm_lucky',
  stage = "One", 
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.triggers < card.ability.extra.limit then
      G.playing_card = (G.playing_card and G.playing_card + 1) or 1
      local card_to_copy = context.other_card
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
      card.ability.extra.triggers = card.ability.extra.triggers + 1
      return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
      }
    end
    if not context.repetition and not context.individual and context.end_of_round then
      card.ability.extra.triggers = 0
    end
    return deck_enhance_evo(self, card, context, "j_poke_blissey", "Lucky", .25)
  end
}
local tangela={
  name = "tangela", 
  pos = {x = 9, y = 8},
  config = {extra = {mult = 10, chips = 50, money = 4, odds = 4}},
  loc_txt = {      
    name = 'Tangela',      
    text = {
      "Played {C:attention}Wild{} cards give",
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
      "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
      "{C:inactive}(Evolves when deck is >= 20% {C:attention}Wild{C:inactive} cards)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    return {vars = {center.ability.extra.mult, center.ability.extra.chips,center.ability.extra.money,''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 2, 
  cost = 6,
  enhancement_gate = 'm_wild',
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
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
    return deck_enhance_evo(self, card, context, "j_poke_tangrowth", "Wild", .20)
  end,
}
local kangaskhan={
  name = "kangaskhan", 
  pos = {x = 10, y = 8},
  config = {extra = {card_limit = 2, hands = 1}},
  loc_txt = {      
    name = 'Kangaskhan',      
    text = {
      "{C:attention}+#1#{} consumable slots",
      "{C:chips}-#2#{} hands",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.card_limit, center.ability.extra.hands}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
      return true end }))
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    ease_hands_played(-card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
      return true end }))
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    ease_hands_played(card.ability.extra.hands)
  end, 
}
local horsea={
  name = "horsea", 
  pos = {x = 11, y = 8},
  config = {extra = {mult = 0, mult_mod = 1}},
  loc_txt = {      
    name = 'Horsea',      
    text = {
      "Gains {C:mult}+#2#{} Mult",
      "for each scoring {C:attention}6{}",
      "in {C:attention}first hand{} of round",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+10{} {C:inactive}Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and G.GAME.current_round.hands_played == 0 then
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 6 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          end
        end
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_seadra", card.ability.extra.mult, 10)
  end,
}
local seadra={
  name = "seadra", 
  pos = {x = 12, y = 8},
  config = {extra = {mult = 10, mult_mod = 2}},
  loc_txt = {      
    name = 'Seadra',      
    text = {
      "Gains {C:mult}+#2#{} Mult",
      "for each scoring {C:attention}6{}",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves with a {C:dragon}Dragon{} {C:inactive}sticker){}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local upgraded
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 6 then
            upgraded = true
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          end
        end
        if upgraded then
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.MULT
          }
        end
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return type_evo(self, card, context, "j_poke_kingdra", "dragon")
  end,
}
local goldeen={
  name = "goldeen", 
  pos = {x = 0, y = 9},
  config = {extra = {retriggers = 1, rounds = 4}},
  loc_txt = {      
    name = 'Goldeen',      
    text = {
      "Retrigger each {C:attention}Gold{}",
      "card held in hand {C:attention}#1#{} time",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_gold
		return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5,
  enhancement_gate = 'm_gold',
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand and not context.other_card.debuff and context.end_of_round and context.other_card.ability.name == 'Gold Card' and not context.blueprint then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_seaking")
  end
}
local seaking={
  name = "seaking", 
  pos = {x = 1, y = 9},
  config = {extra = {retriggers = 2}},
  loc_txt = {      
    name = 'Seaking',      
    text = {
      "Retrigger each {C:attention}Gold{}",
      "card held in hand {C:attention}#1#{} times",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_gold
		return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 2, 
  cost = 8, 
  enhancement_gate = 'm_gold',
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand and not context.other_card.debuff and context.end_of_round and context.other_card.ability.name == 'Gold Card' and not context.blueprint then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end
}
local staryu={
  name = "staryu", 
  pos = {x = 2, y = 9},
  config = {extra = {mult = 3, suit = "Diamonds"}},
  loc_txt = {      
    name = 'Staryu',      
    text = {
      "Played cards with",
      "{C:diamonds}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = 1, 
  cost = 5,
  item_req = "waterstone",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_starmie")
  end
}

return {name = "Pokemon Jokers 91-120", 
        list = { cloyster, gastly, haunter, gengar, onix, drowzee, hypno, krabby, kingler, voltorb, electrode, exeggcute, exeggutor, cubone, marowak, hitmonlee, hitmonchan, lickitung, koffing, weezing,                 rhyhorn, rhydon, chansey, tangela, kangaskhan, horsea, seadra, goldeen, seaking, staryu, },
}