local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "poke_item",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
  end,
  pos = { x = 0, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  pokeball = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers
  end,
  use = function(self, card, area, copier)
    pokermon.set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        SMODS.add_card({ set = 'Joker', attributes = {'stage_basic'}, key_append = 'pokeball' })
        return true end }))
    delay(0.6)
  end
}

local greatball = {
  name = "greatball",
  key = "greatball",
  set = "poke_item",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage1'}
  end,
  pos = { x = 1, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  pokeball = true,
  hidden = true,
  soul_set = "Tarot",
  soul_rate = .025,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers
  end,
  use = function(self, card, area, copier)
    pokermon.set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        SMODS.add_card({ set = 'Joker', attributes = {'stage_one'}, key_append = 'greatball' })
        return true end }))
    delay(0.6)
  end
}

local ultraball = {
  name = "ultraball",
  key = "ultraball",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage2'}
  end,
  pos = { x = 2, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  pokeball = true,
  hidden = true,
  soul_set = "poke_item",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        SMODS.add_card({ set = 'Joker', attributes = {'stage_two'}, key_append = 'ultraball' })
        return true end }))
    delay(0.6)
  end
}

local masterball = {
  name = "masterball",
  key = "masterball",
  set = "Spectral",
  pos = { x = 3, y = 3 },
  soul_pos = { x = 4, y = 2},
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  pokeball = true,
  hidden = true,
  soul_set = "poke_item",
  soul_rate = .003,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        SMODS.add_card({ set = 'Joker', attributes = {'stage_legendary'}, key_append = 'masterball' })
        return true end }))
    delay(0.6)
  end
}

local list = {pokeball, greatball, ultraball, masterball,}

return {name = "AtlasConsumablesBasic 0",
        list = list
}