-- Enhancements

local hazard = {
   key = "hazard",
   atlas = "Mart",
   pos = { x = 9, y = 5 },
   config = {card_limit = 1},
   no_rank = true,
   no_suit = true,
   always_scores = true,
   replace_base_card = true,
   weight = 0,
   in_pool = function(self, args) return false end,
}

return {
   name = "Enhancements",
   list = { hazard, }
}
