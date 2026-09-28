--functions for tms
local function can_use_tm(self, card) 
  local find_func = function(joker)
    local found = false
    
    for i = 1, #self.etypes do
      if pokermon.is_type(joker, self.etypes[i]) then
        found = true
        break
      end
    end
    
    return found
  end
  
  return pokermon.find_leftmost_or_highlighted(find_func)
end

local function apply_tm(self, card, area, copier)
  local find_func = function(joker)
    local found = false
    
    for i = 1, #self.etypes do
      if pokermon.is_type(joker, self.etypes[i]) then
        found = true
        break
      end
    end
    
    return found
  end
  
  local target = pokermon.find_leftmost_or_highlighted(find_func)
  
  local tm_name = string.lower(self.tm_name)
  
  for k, v in ipairs(POKE_TMS) do
    target:remove_sticker("poke_"..v.."_sticker")
  end
  
  target:add_sticker("poke_"..tm_name.."_sticker", true)
end

--intialize template for TMs
local tm_template = {
  set = "poke_tm",
  config = {},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = self.tm_vars}
  end,
  tm_vars = {},
  pos = { x = 0, y = 0 },
  atlas = "placeholder_item",
  cost = 8,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return can_use_tm(self, card)
  end,
  use = function(self, card, area, copier)
    return apply_tm(self, card, area, copier)
  end
}

--Earthquake
local earthquake = copy_table(tm_template)
earthquake.key = "earthquake_tm"
earthquake.tm_name = "earthquake"
earthquake.etypes = {"Earth", "Fighting", "Metal"}
earthquake.config = {extra = {Xmult = 2}}
earthquake.tm_vars = {earthquake.config.extra.Xmult}
earthquake.in_pool = function(self, args) 
  for _, playing_card in ipairs(G.playing_cards or {}) do
      if SMODS.has_enhancement(playing_card, 'm_stone') then
          return true
      end
  end
  return false
end

--Psychic
local psychic = copy_table(tm_template)
psychic.key = "psychic_tm"
psychic.tm_name = "psychic"
psychic.etypes = {"Psychic", "Dark", "Fairy"}
psychic.config = {extra = {scry = 3}}
psychic.tm_vars = {psychic.config.extra.scry}

return {name = "Mart TMs",
        list = {earthquake, psychic}
}