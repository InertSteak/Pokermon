-- Enhancements

local hazard = {
   key = "hazard",
   atlas = "Mart",
   pos = { x = 9, y = 5 },
   config = { is_drawing = false },
   no_rank = true,
   no_suit = true,
   replace_base_card = true,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
      G.E_MANAGER:add_event(Event({
         trigger = 'immediate',
         func = function()
            if card.area == G.hand then
               if not card.poke_dissolve then
                  card:start_dissolve()
                  for i = 1, #G.jokers.cards do
                    G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = {card}})
                  end
                  card.poke_dissolve = true
               end
               if not self.config.is_drawing then
                  self.config.is_drawing = true
                  G.E_MANAGER:add_event(Event({
                     trigger = 'immediate',
                     func = function()
                        G.E_MANAGER:add_event(Event({
                           trigger = 'immediate',
                           func = function()
                              G.FUNCS.draw_from_deck_to_hand()
                              self.config.is_drawing = false
                              return true
                           end
                        }))
                        return true
                     end
                  }))
               end
            else
               card:remove()
            end
            return true
         end
      }))
   end,
}

return {
   name = "Enhancements",
   list = { hazard, }
}
