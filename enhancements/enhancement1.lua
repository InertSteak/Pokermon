-- Enhancements

local hazard = {
   key = "hazard",
   atlas = "Mart",
   pos = { x = 9, y = 5 },
   config = {},
   no_rank = true,
   no_suit = true,
   replace_base_card = true,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
      if context.hand_drawn then
         G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = function()
               if not card.poke_dissolve then
                  if card.area == G.hand then
                     card:start_dissolve()
                     for i = 1, #G.jokers.cards do
                        G.jokers.cards[i]:calculate_joker({ remove_playing_cards = true, removed = { card } })
                     end
                     poke_draw_one()
                  else
                     card:remove()
                  end
                  card.poke_dissolve = true
               end
               return true
            end
         }))
      end
   end,
   load = function(self, card, card_table, other_card)
      G.E_MANAGER:add_event(Event({
         trigger = 'immediate',
         func = function()
            if card.area == G.hand and not card.poke_dissolve then
               card:start_dissolve()
               for i = 1, #G.jokers.cards do
                  G.jokers.cards[i]:calculate_joker({ remove_playing_cards = true, removed = { card } })
               end
               poke_draw_one()
               card.poke_dissolve = true
            end
            return true
         end
      }))
   end
}

return {
   name = "Enhancements",
   list = { hazard, }
}
