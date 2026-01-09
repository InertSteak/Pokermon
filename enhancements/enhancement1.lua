-- Enhancements

local hazard = {
   key = "hazard",
   artist = "PrincessRoxie",
   atlas = "AtlasEnhancementsBasic",
   pos = { x = 0, y = 0 },
   config = {num = 1, dem = 3},
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
    if context.end_of_round and not context.individual and not context.repetition and context.cardarea == G.hand and context.playing_card_end_of_round then
      if SMODS.pseudorandom_probability(card, 'hazard', self.config.num, self.config.dem, 'hazard') then
        poke_remove_card(card, card)
      end
    end
   end,
}

local seed = {
   key = "seed",
   atlas = "AtlasEnhancementsBasic",
   artist = {name = {"Currently a placeholder!", "Want your art here?", "Join the Discord!"}},
   pos = { x = 1, y = 0 },
   config = {extra = {level = 0, level_max = 5, money = 15}},
   loc_vars = function(self, info_queue, center)
     return {vars = {center.ability.extra.level_max, math.max(0, center.ability.extra.level_max - center.ability.extra.level), center.ability.extra.money}}
   end,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
     if context.main_scoring and context.cardarea == G.play and card.ability and card.ability.extra then
      card.ability.extra.level = card.ability.extra.level + 1
      
      if card.ability.extra.level and card.ability.extra.level > 0 and card.ability.extra.level < 6 then
        if card.ability.extra.level == 5 then
          return {
            message = localize('k_upgrade_ex'),
            sound = 'poke_seed_'..card.ability.extra.level,
            extra = {func = function() ease_dollars(card.ability.extra.money); card:set_ability(G.P_CENTERS.m_poke_flower, nil, true) end}
          }
        else
          return {
            message = localize('k_upgrade_ex'),
            sound = 'poke_seed_'..card.ability.extra.level,
            extra = {
              func = function() 
                if card.ability.extra.level < card.ability.extra.level_max then
                  self:set_sprites(card)
                end
              end}
          }
        end
      end
     end
   end,
   set_sprites = function(self, card, front)
     if card and card.ability and card.ability.extra and card.ability.extra.level and card.ability.extra.level < card.ability.extra.level_max then
       local x_pos = card.ability.extra.level + 1
       card.children.center:set_sprite_pos({x = x_pos, y = 0})
     end
   end
}

local flower = {
   key = "flower",
   atlas = "AtlasEnhancementsBasic",
   artist = {name = {"Currently a placeholder!", "Want your art here?", "Join the Discord!"}},
   pos = { x = 6, y = 0 },
   config = {Xmult = 3},
   loc_vars = function(self, info_queue, center)
     return {vars = {center.ability.Xmult}}
   end,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
     if context.main_scoring and context.cardarea == G.play then
        local suit_number = next(SMODS.find_card('j_poke_roserade')) and 3 or 4
        if poke_suit_check(context.scoring_hand, suit_number) then
          return
          {
            x_mult = card.ability.Xmult
          }
        end
     end
   end,
}

return {
   name = "Enhancements",
   list = { hazard, seed, flower}
}
