-- Qwilfish 211
-- Scizor 212
local scizor={
  name = "scizor", 
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, chips = 0, Xmult = 0}},
  loc_txt = {      
    name = 'Scizor',      
    text = {
      "When Blind is selected, destroy",
      "Joker to the right and gain",
      "{C:attention}Foil{}, {C:attention}Holographic{}, or {C:attention}Polychrome{}",
      "Those editions {C:attention}stack{} on this Joker",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, (center.ability.extra.Xmult > 0 and center.ability.extra.Xmult) or 1}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          if card.edition then
            if card.edition.chips then
              card.ability.extra.chips = card.ability.extra.chips + card.edition.chips
            end
            if card.edition.mult then
              card.ability.extra.mult = card.ability.extra.mult + card.edition.mult
            end
            if card.edition.x_mult then
              card.ability.extra.Xmult = card.ability.extra.Xmult * card.edition.x_mult
            end
          end
          local edition = poll_edition('wheel_of_fortune', nil, true, true)
          card:set_edition(edition, true)
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.RED, no_juice = true})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = "X-Scissor!", 
          colour = G.ARGS.LOC_COLOURS.metal,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          Xmult_mod = (card.ability.extra.Xmult > 0 and card.ability.extra.Xmult) or 1
        }
      end
    end
  end
}
-- Shuckle 213
-- Heracross 214
-- Sneasel 215
-- Teddiursa 216
-- Ursaring 217
-- Slugma 218
-- Magcargo 219
-- Swinub 220
-- Piloswine 221
-- Corsola 222
-- Remoraid 223
-- Octillery 224
-- Delibird 225
-- Mantine 226
-- Skarmory 227
-- Houndour 228
-- Houndoom 229
-- Kingdra 230
local kingdra={
  name = "kingdra", 
  pos = {x = 0, y = 0},
  config = {extra = {mult = 10, mult_mod = 3, Xmult = 1, Xmult_mod = .1}},
  loc_txt = {      
    name = 'Kingdra',      
    text = {
      "Gains {C:mult}+#2#{} Mult for each",
      "scoring {C:attention}6{}, if you have",
      "a {C:attention}King{} held in hand gain",
      "{X:red,C:white}X#4#{} Mult {C:attention}as well{}",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{} Mult{C:inactive})",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex2",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local upgraded = nil
        local has_king = nil
        for i = 1, #G.hand.cards do 
          if G.hand.cards[i]:get_id() == 13 then has_king = true; break end
        end
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 6 then
            upgraded = true
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            if has_king then
              card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
            end
          end
        end
        if upgraded then
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.MULT
          }
        end
      end
      if context.joker_main then
        return {
          message = "Twister!", 
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
}
-- Phanpy 231
-- Donphan 232
-- Porygon2 233
local porygon2={
  name = "porygon2", 
  pos = {x = 0, y = 0},
  config = {extra = {}},
  loc_txt = {      
    name = 'Porygon 2',      
    text = {
      "{C:pink}+1{} Energy Limit",
      "Create an {C:pink}Energy{} card",
      "of the same {C:pink}Type{} of",
      "leftmost Joker when any",
      "{C:attention}Booster Pack{} is opened",
      "{C:inactive}(Evolves with a{} {C:attention}Upgrade{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  item_req = "upgrade",
  joblacklist = true,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local forced_key = matching_energy(G.jokers.cards[1]);
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'before',
          delay = 0.0,
          func = (function()
                  local card = create_card('Energy', G.consumeables, nil, nil, nil, nil, forced_key)
                  card:add_to_deck()
                  G.consumeables:emplace(card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = "+1 Energy", colour = G.ARGS.LOC_COLOURS["pink"]})
    end
    return item_evo(self, card, context, "j_poke_porygonz")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 1
      else
        G.GAME.energy_plus = G.GAME.energy_plus + 1
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 0
      else
        G.GAME.energy_plus = G.GAME.energy_plus - 1
      end
    end
  end
}
-- Stantler 234
-- Smeargle 235
-- Tyrogue 236
local tyrogue={
  name = "tyrogue",
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  pos = {x = 0, y = 0}, 
  loc_txt = {      
    name = 'Tyrogue',      
    text = {
      "For the {C:attention}first hand{} of round",
      "If {C:attention}2{} cards played, {C:attention}destroy{} one",
      "If {C:attention}3+{} cards played, {C:attention}copy{} one to hand",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }  
  }, 
  rarity = 2, 
  cost = 4, 
  stage = "Baby", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
      if context.after and not context.blueprint then
        if #context.full_hand == 2 then
          local target = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
          G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
              play_sound('tarot1')
              card:juice_up(0.5, 0.5)
              card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.PURPLE})                       
            return true end }))
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
              G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = destroyed_cards})
          end
        elseif #context.full_hand > 2 then
          local target = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
          local copy = copy_card(target, nil, nil, G.playing_card)
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
          
          return {
              message = localize('k_copied_ex'),
              colour = G.C.CHIPS,
              card = card,
              playing_cards_created = {true}
          }
        end
      end
    end
    
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    
    local forced_key = nil
    if #G.playing_cards > G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonchan"
    elseif #G.playing_cards < G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonlee"
    else
      forced_key = "j_poke_hitmontop"
    end
    return level_evo(self, card, context, forced_key)
  end,
}
-- Hitmontop 237
local hitmontop={
  name = "hitmontop", 
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 2.5}},
  loc_txt = {      
    name = 'Hitmontop',      
    text = {
      "{X:red,C:white} X#1# {} Mult",
      "if deck size",
      "is exactly {C:attention}#2#{}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, G.GAME.starting_deck_size}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.playing_cards == G.GAME.starting_deck_size then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
-- Smoochum 238
local smoochum ={
  name = "smoochum",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_txt = {
    name = "Smoochum",
    text = {
      "Create a {C:attention}Standard{} tag",
      "when this Joker evolves",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'tag_standard', set = 'Tag'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    local evo = level_evo(self, card, context, "j_poke_jynx")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_standard'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Elekid 239
local elekid ={
  name = "elekid",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_txt = {
    name = "Elekid",
    text = {
      "Create a {C:attention}Coupon{} tag",
      "when this Joker evolves",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Lightning",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    local evo = level_evo(self, card, context, "j_poke_electabuzz")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Magby 240
local magby={
  name = "magby",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult_minus = 0.75, d_size = 2, rounds = 2,}},
  loc_txt = {
    name = "Magby",
    text = {
      "{C:red}+#2#{} discards",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    return level_evo(self, card, context, "j_poke_magmar")
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
return {name = "Pokemon Jokers 211-240", 
        list = {scizor, kingdra, porygon2, tyrogue, hitmontop, smoochum, elekid, magby},
}