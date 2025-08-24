-- Enhancements

local hazard = {
   key = "hazard",
   atlas = "Mart",
   pos = { x = 9, y = 5 },
   config = {odds = 6},
   loc_vars = function(self, info_queue, center)
     return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), self.config.odds}}
   end,
   no_rank = true,
   no_suit = true,
   always_scores = true,
   replace_base_card = true,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition then
      if pseudorandom('hazard') < G.GAME.probabilities.normal/self.config.odds then
        poke_remove_card(card, card)
      end
    end
   end,
}

return {
   name = "Enhancements",
   list = { hazard, }
}
