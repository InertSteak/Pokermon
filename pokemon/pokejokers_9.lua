-- Miltank 241
-- Blissey 242
local blissey={
  name = "blissey", 
  pos = {x = 0, y = 9}, 
  config = {extra = {limit = 2, triggers = 0}},
  loc_txt = {      
    name = 'Blissey',      
    text = {
      "The first {C:attention}#1#{} times a {C:attention}Lucky{}",
      "card triggers each round, add a",
      "permanent copy with {C:dark_edition}Polychrome{} to your",
      "deck and draw it to {C:attention}Hand",
      "{C:inactive}(Currently {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    if not center.edition or (center.edition and not center.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    return {vars = {center.ability.extra.limit, center.ability.extra.triggers}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  ptype = "Colorless",
  enhancement_gate = 'm_lucky',
  stage = "Two", 
  atlas = "Pokedex2",
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
              local edition = {polychrome = true}
              copy:set_edition(edition, true)
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
  end
}
-- Raikou 243
-- Entei 244
-- Suicune 245
-- Larvitar 246
-- Pupitar 247
-- Tyranitar 248
-- Lugia 249
-- Ho-oh 250
-- Celebi 251
-- Treecko 252
-- Grovyle 253
-- Sceptile 254
-- Torchic 255
-- Combusken 256
-- Blaziken 257
-- Mudkip 258
-- Marshtomp 259
-- Swampert 260
-- Poochyena 261
-- Mightyena 262
-- Zigzagoon 263
-- Linoone 264
-- Wurmple 265
-- Silcoon 266
-- Beautifly 267
-- Cascoon 268
-- Dustox 269
-- Lotad 270
return {name = "Pokemon Jokers 240-270", 
        list = {blissey},
}