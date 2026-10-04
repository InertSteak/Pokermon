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
        pokermon.remove_card(card, card)
      end
    end
   end,
}

-- If it has an extra table and a level, it's good enough for what we're doing
local is_seed_card = function(card)
  return card and card.ability and type(card.ability.extra) == 'table' and card.ability.extra.level
end

pokermon.bloom_card = function(card)
  if not is_seed_card(card) then return end

  SMODS.calculate_effect({
    extra = {     -- Necessary for timing
      message = localize('k_upgrade_ex'),
      sound = 'poke_seed_5',
    },
    func = function()
      ease_dollars(card.ability.extra.money);
      card:set_ability(G.P_CENTERS.m_poke_flower, nil, true)
      G.E_MANAGER:add_event(Event({
        func = function()
          card.poke_visual_growth_mod = nil
          return true
        end
      }))
    end
  }, card)
end

pokermon.grow_card = function(card, amount)
  if not is_seed_card(card) then return end

  local center = card.config.center
  local level_up = (amount or 1) + (G.GAME.poke_growth_level or 0)
  card.ability.extra.level = card.ability.extra.level + level_up
  local level, level_max = card.ability.extra.level, card.ability.extra.level_max or center.config.extra.level_max
  card.poke_visual_growth_mod = math.max(-level_max, (card.poke_visual_growth_mod or 0) - level_up)

  if level > 0 then
    if level >= level_max then
      pokermon.bloom_card(card)
    else
      SMODS.calculate_effect({
        extra = { -- Necessary for timing
          message = localize('k_upgrade_ex'),
          sound = 'poke_seed_' .. level,
        },
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              card.poke_visual_growth_mod = math.min(0, (card.poke_visual_growth_mod or 0) + level_up)
              center:set_sprites(card)
              return true
            end
          }))
        end,
      }, card)
    end
  end
end

local seed = {
  key = "seed",
  atlas = "AtlasEnhancementsBasic",
  artist = 'MyDude_YT',
  pos = {x = 1, y = 0},
  config = {extra = {level = 0, level_max = 5, money = 15}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_flower
    return {vars = {center.ability.extra.level_max, math.max(0, center.ability.extra.level_max - center.ability.extra.level), center.ability.extra.money, 
        1 + (G.GAME.poke_growth_level or 0), (G.GAME.poke_growth_level or 0) > 0 and localize('k_poke_times') or localize('k_poke_time')}}
  end,
  weight = 5,
  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.play then
      pokermon.grow_card(card)
    end
  end,
  set_sprites = function(self, card, front)
    local level_max = self.config.extra.level_max
    -- If we don't have a level, just assume we're at max from becoming a flower card
    local level = (card and card.ability and type(card.ability.extra) == 'table' and card.ability.extra.level or level_max)
        + (card.poke_visual_growth_mod or 0)
    local x_pos = math.min(level_max, level) + 1
    card.children.center:set_sprite_pos({x = x_pos, y = 0})
  end
}

local flower = {
   key = "flower",
   atlas = "AtlasEnhancementsBasic",
   artist = 'MyDude_YT',
   pos = { x = 6, y = 0 },
   config = {Xmult_flower = 2},
   loc_vars = function(self, info_queue, center)
     return {vars = {center.ability.Xmult_flower}}
   end,
   weight = 0,
   in_pool = function(self, args) return false end,
   calculate = function(self, card, context)
     if context.main_scoring and context.cardarea == G.play then
        local suit_number = next(SMODS.find_card('j_poke_roserade')) and 3 or 4
        if pokermon.suit_check(context.scoring_hand, suit_number) then
          local extra = 0
          if next(SMODS.find_card("j_poke_shaymin")) or next(SMODS.find_card("j_poke_shaymin_sky")) then
            extra = 1
          end
          return
          {
            x_mult = card.ability.Xmult_flower + extra
          }
        end
     end
   end,
}

local ludicolo = {
  key = "ludicolo",
  atlas = "poke_miror_budicolo",
  pos = { x = 0, y = 0 },
  config = { },
  loc_vars = function(self, info_queue, center)
    return {vars = {}}
  end,
  no_rank = true,
  no_suit = true,
  replace_base_card = true,
  always_scores = true,
  weight = 0,
  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.play then
      return {
        message = localize("poke_ludicolo_ex"),
        sound = 'poke_ludicolo_cry'
      }
    end
  end,
  in_pool = function(self, args) return false end,
}

local elist = { hazard, seed, flower} -- Would be nice to add all of the seed stages here since they are now more detailed than just numbers in the corner

if pokermon_config.pokemon_aprilfools then
  elist[#elist+1] = ludicolo
end

return {
   name = "Enhancements",
   list = elist
}
