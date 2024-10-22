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
-- Umbreon 197
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
  stage = "Basic",
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
        list = {steelix},
}