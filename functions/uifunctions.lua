create_scry_cardarea = function()
   local config = { card_limit = 0, type = 'scry' }
   config.major = G.deck
   local scry_view = CardArea(0, 0, 2 * G.CARD_W, 0.5 * G.CARD_H, config)
   scry_view.T.x = G.TILE_W - G.deck.T.w / 2 - scry_view.T.w / 2 - 0.4
   scry_view.T.y = G.TILE_H - G.deck.T.h - scry_view.T.h
   scry_view:hard_set_VT()

   G.GAME.scry_amount = G.GAME.scry_amount or 0
   return scry_view
end

cards_dont_match = function(card1, card2)
   if type(card1) ~= type(card2) then return true end
   if card1.config.center ~= card2.config.center then return true end
   if card1.config.card_key ~= card2.config.card_key then return true end
   if card1.base.name ~= card2.base.name then return true end
   if card1.base.suit ~= card2.base.suit then return true end
   if card1.base.value ~= card2.base.value then return true end
   if type(card1.edition) ~= type(card2.edition) then return true end
   if card1.edition and card1.edition.type ~= card2.edition.type then return true end
   if card1.seal ~= card2.seal then return true end
   if card1.debuff ~= card2.debuff then return true end
   if card1.pinned ~= card2.pinned then return true end
   return false
end

hide_scry_cardarea = function()
   G.scry_view.states.visible = false
   local to_kill = #G.scry_view.cards
   for i = to_kill, 1, -1 do
      G.scry_view.cards[i]:remove()
   end
end

update_scry_cardarea = function(scry_view)
   if not scry_view.states.visible then
      local to_kill = #scry_view.cards
      for i = to_kill, 1, -1 do
         scry_view.cards[i]:remove()
      end
     scry_view.states.visible = true
   end
   if scry_view.children.area_uibox then
      scry_view.children.area_uibox.states.visible = false
   end
   if scry_view.adjusting_cards then return end
   scry_view.adjusting_cards = true

   local deck = {}
   for i = 1, G.GAME.scry_amount do
      if #G.deck.cards + 1 <= i then break end
      deck[i] = G.deck.cards[#G.deck.cards + 1 - i]
   end
   -- blank card that will cause the removal of any extra cards
   deck[G.GAME.scry_amount + 1] = true

   local i = 1
   for k, card in pairs(deck) do
      while i <= #scry_view.cards and cards_dont_match(card,scry_view.cards[i]) do
         scry_view.cards[i]:start_dissolve({G.C.PURPLE})
         i = i + 1
      end
      if k <= G.GAME.scry_amount and cards_dont_match(card, scry_view.cards[i]) then
         local temp_card = copy_card(card, nil, 0.7)
         temp_card.states.drag.can = false
         temp_card.states.hover.can = false
         scry_view:emplace(temp_card)
         temp_card:start_materialize({G.C.PURPLE})
      end
      i = i + 1
   end
   G.E_MANAGER:add_event(Event({
      func = function()
         scry_view.adjusting_cards = false
         return true
      end,
   }))
end

poke_random_text = function(strings, config)
  config = config or {}
  local c_colours = config.colours or {G.C.UI.TEXT_DARK}
  if config.poke_rep_string and config.poke_rep_num then
    for i = 1, config.poke_rep_num do
      strings[#strings + 1] = config.poke_rep_string
    end
  end
  local c_scale = config.scale or 0.32
  local c_pop_in_rate = config.pop_in_rate or 9999999
  local c_silent = config.not_silent and false or true
  local c_random_element = config.not_random_element and false or true
  local c_pop_delay = config.pop_delay or 0.2011
  local c_min_cycle_time = config.min_cycle_time or 0
  return {colours = c_colours, string = strings, scale = c_scale, pop_in_rate = c_pop_in_rate, silent = c_silent, random_element = c_random_element, 
          pop_delay = c_pop_delay, min_cycle_time = c_min_cycle_time}
end
