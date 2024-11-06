-- Ampharos 181
-- Bellossom 182
local bellossom={
  name = "bellossom",
  config = {extra = {}},
  pos = {x = 0, y = 3},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult_multi}}
  end,
  loc_txt = {      
    name = 'Bellossom',      
    text = {
      "Played cards with {C:attention}Odd{} rank",
      "become {C:attention}Wild{} cards when scored",
      "If already {C:attention}Wild{}, adds {C:dark_edition}Polychrome"
    } 
  }, 
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local odds = {}
      for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 3 or v:get_id() == 5 or v:get_id() == 7 or v:get_id() == 9 or v:get_id() == 14 then
              odds[#odds+1] = v
              if v.ability.name == 'Wild Card' then
                local edition = {polychrome = true}
                v:set_edition(edition, true, true)
              end
              v:set_ability(G.P_CENTERS.m_wild, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          end
      end
      if #odds > 0 then 
          return {
              message = "Petal!",
              colour = G.C.MULT,
              card = card
          }
      end
    end
  end
}
-- Marill 183
-- Azumarill 184
-- Sudowoodo 185
-- Politoed 186
local politoed={
  name = "politoed", 
  pos = {x = 4, y = 3}, 
  config = {extra = {mult = 5, suits = {"Spades", "Hearts", "Clubs", "Diamonds"}, indice = 1, retriggers = 1}},
  loc_txt = {      
    name = 'Politoed',      
    text = {
      "Played cards with {V:1}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored for each",
      "{X:water,C:white}Water{} Joker you have and {C:attention}retrigger{}",
      "Suit changes in order {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suits[center.ability.extra.indice],'suits_singular'),  
                    colours = {G.C.SUITS[center.ability.extra.suits[center.ability.extra.indice]]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          if card.ability.extra.indice == 4 then
            card.ability.extra.indice = 1
          else
            card.ability.extra.indice = card.ability.extra.indice + 1
          end
        end
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local scoring_suit = card.ability.extra.suits[card.ability.extra.indice]
      if context.other_card:is_suit(scoring_suit) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult * #find_pokemon_type("Water")
        }
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = card.ability.extra.suits[card.ability.extra.indice]
      if context.other_card:is_suit(scoring_suit) then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
  end,
}
-- Hoppip 187
-- Skiploom 188
-- Jumpluff 189
-- Aipom 190
-- Sunkern 191
-- Sunflora 192
-- Yanma 193
-- Wooper 194
-- Quagsire 195
-- Espeon 196
local espeon={
  name = "espeon", 
  pos = {x = 4, y = 4},
  config = {extra = {retriggers = 1, suit = "Hearts", rerolls = 0}},
  loc_txt = {      
    name = 'Espeon',      
    text = {
      "Create a {C:attention}Sun{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "Retrigger all played cards with",
      "{C:hearts}Hearts{} suit used in scoring",
      "{C:inactive}(Must have room)",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_sun
    return {vars = {center.ability.extra.rerolls, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex2",
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
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_sun')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
    if context.repetition and context.cardarea == G.play and not context.end_of_round then
      if context.other_card:is_suit(card.ability.extra.suit) then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
  end
}
-- Umbreon 197
local umbreon={
  name = "umbreon", 
  pos = {x = 5, y = 4},
  config = {extra = {retriggers = 1, suit = "Clubs", rerolls = 0}},
  loc_txt = {      
    name = 'Umbreon',      
    text = {
      "Create a {C:attention}Moon{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "Retrigger all {C:attention}held in hand{}",
      "abilities of cards with {C:clubs}#2#{} suit",
      "{C:inactive}(Must have room)",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    return {vars = {center.ability.extra.rerolls, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex2",
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
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
    if context.repetition and context.cardarea == G.hand then
      if context.other_card:is_suit(card.ability.extra.suit) and (next(context.card_effects[1]) or #context.card_effects > 1) then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
  end
}
-- Murkrow 198
-- Slowking 199
local slowking={
  name = "slowking",
  pos = {x = 7, y = 4},
  config = {extra = {Xmult_multi = 1,Xmult_mod = 0.25, oXmult = 1}},
  loc_txt = {
    name = "Slowking",
    text = {
      "Played {C:attention}Kings{} give {X:red,C:white}X#1#{} Mult",
      "when scored",
      "Increases by {X:red,C:white}X#2#{} Mult",
      "per hand played",
      "resets at end of round",      
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_mod, }}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      card.ability.extra.oXmult = card.ability.extra.Xmult_multi
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.Xmult_multi = card.ability.extra.Xmult_multi + card.ability.extra.Xmult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.XMULT
        }
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card:get_id() == 13 then
      return {
          x_mult = card.ability.extra.Xmult_multi,
          colour = G.C.RED,
          card = card
      }
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult_multi = card.ability.extra.oXmult
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
}
-- Misdreavus 200
-- Unown 201
-- Wobbuffet 202
-- Girafarig 203
-- Pineco 204
-- Forretress 205
-- Dunsparce 206
-- Gligar 207
-- Steelix 208
local steelix={
  name = "steelix", 
  pos = {x = 6, y = 5},  
  loc_txt = {      
    name = 'Steelix',      
    text = {
      "The leftmost scoring card of",
      "your {C:attention}first hand{} of round",
      "becomes a {C:attention}Steel{} card",
      "{C:attention}Stone{} cards {C:attention}held{} in",
      "hand become {C:attention}Steel{}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
  end,
  rarity = 3, 
  cost = 6, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[1]
        card:set_ability(G.P_CENTERS.m_steel, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    if context.individual and context.cardarea == G.hand and context.other_card.ability.name == 'Stone Card' and not context.blueprint then
      context.other_card:set_ability(G.P_CENTERS.m_steel, nil, true)
    end
  end
}
-- Snubbull 209
-- Granbull 210

return {name = "Pokemon Jokers 181-210", 
        list = {bellossom, politoed, espeon, umbreon, slowking, steelix},
}
