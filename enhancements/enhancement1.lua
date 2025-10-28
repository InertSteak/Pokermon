-- Enhancements

local hazard = {
   key = "hazard",
   artist = "PrincessRoxie",
   atlas = "AtlasEnhancementsBasic",
   pos = { x = 0, y = 0 },
   config = {num = 1, dem = 6},
   loc_vars = function(self, info_queue, center)
     local num, dem = SMODS.get_probability_vars(center, self.config.num, self.config.dem, 'hazard')
     return {vars = {num, dem}}
   end,
   no_rank = true,
   no_suit = true,
   always_scores = true,
   replace_base_card = true,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition and context.cardarea == G.hand then
      if SMODS.pseudorandom_probability(card, 'hazard', self.config.num, self.config.dem, 'hazard') then
        poke_remove_card(card, card)
      end
    end
   end,
}

local flower = {
   key = "flower",
   atlas = "AtlasEnhancementsBasic",
   artist = "Catzzadilla",
   pos = { x = 6, y = 0 },
   config = {extra = {Xmult = 3}},
   loc_vars = function(self, info_queue, center)
     return {vars = {center.ability.extra.Xmult}}
   end,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
     if context.main_scoring and context.cardarea == G.play then
        if poke_suit_check(context.scoring_hand, 4) then
          return
          {
            x_mult = card.ability.extra.Xmult
          }
        end
     end
   end,
}

return {
   name = "Enhancements",
   list = { hazard, flower}
}
