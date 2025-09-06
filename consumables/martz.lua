local fake_banker = {
   name = "fake_banker",
   key = "fake_banker",
   set = "Spectral",
   pos = { x = 4, y = 2 },
   soul_pos = { x = 5, y = 2 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_banker", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_booster = {
   name = "fake_booster",
   key = "fake_booster",
   set = "Spectral",
   pos = { x = 6, y = 2 },
   soul_pos = { x = 7, y = 2 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_booster", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_power = {
   name = "fake_power",
   key = "fake_power",
   set = "Spectral",
   pos = { x = 8, y = 2 },
   soul_pos = { x = 9, y = 2 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_power", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_negging = {
   name = "fake_negging",
   key = "fake_negging",
   set = "Spectral",
   pos = { x = 10, y = 2 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_negging", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_copy = {
   name = "fake_copy",
   key = "fake_copy",
   set = "Spectral",
   pos = { x = 10, y = 2 },
   soul_pos = { x = 11, y = 2 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_invis", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_fixer = {
   name = "fake_fixer",
   key = "fake_fixer",
   set = "Spectral",
   pos = { x = 0, y = 3 },
   soul_pos = { x = 1, y = 3 },
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasJokersSeriesAGen03",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            poke_evolve(jirachi, "j_poke_jirachi_fixer", nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

local fake_masterball = {
   name = "fake_masterball",
   key = "fake_masterball",
   set = "Spectral",
   pos = { x = 3, y = 3 },
   soul_pos = { x = 4, y = 2},
   config = {},
   loc_vars = function(self, info_queue, center)
     return {vars = {}}
   end,
   atlas = "AtlasConsumablesBasic",
   unlocked = true,
   discovered = true,
   no_collection = true,
   jirachi_item = true,
   can_use = function(self, card)
     return true
   end,
   use = function(self, card, area, copier)
      for _,jirachi in pairs(G.jokers.cards) do
         if (jirachi.name or jirachi.ability.name) == "jirachi" then
            local forced_evo = get_random_poke_key("masterball", "Legendary", nil, nil, nil, {j_poke_jirachi = true})
            poke_evolve(jirachi, forced_evo, nil, nil, true)
            return
         end
      end
   end,
   in_pool = function(self)
     return false
   end
}

return {name = "Fake Items",
      list = {fake_banker, fake_booster, fake_power, fake_negging, fake_copy, fake_fixer, fake_masterball}
}