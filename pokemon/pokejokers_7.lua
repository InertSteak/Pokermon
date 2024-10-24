-- Ampharos 181
-- Bellossom 182
-- Marill 183
-- Azumarill 184
-- Sudowoodo 185
-- Politoed 186
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
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 1, rerolls = 0}},
  loc_txt = {      
    name = 'Espeon',      
    text = {
      "Create a {C:attention}Sun{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "Retrigger all played cards with",
      "{C:hearts}Hearts{} suit used in scoring",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_sun
    return {vars = {center.ability.extra.rerolls}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex2",
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
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_sun')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
    if context.repetition and context.cardarea == G.play and not context.end_of_round then
      if context.other_card:is_suit("Hearts") then
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
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 1, rerolls = 0}},
  loc_txt = {      
    name = 'Umbreon',      
    text = {
      "Create a {C:attention}Moon{} card",
      "every {C:attention}3{} {C:green}rerolls{}",
      "Retrigger all {C:attention}held in hand{}",
      "abilities of cards with {C:clubs}Clubs{} suit",
      "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    return {vars = {center.ability.extra.rerolls}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex2",
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
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.TAROT})
        card.ability.extra.rerolls = 0
      end
    end
    if context.repetition and context.cardarea == G.hand then
      if context.other_card:is_suit("Clubs") and (next(context.card_effects[1]) or #context.card_effects > 1) then
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
  pos = {x = 0, y = 0},  
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
        list = {espeon, umbreon, steelix},
}