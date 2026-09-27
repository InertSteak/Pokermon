--functions for tms
local function can_use_tm(self, card) 
  return pokermon.find_leftmost_or_highlighted(function(joker) return pokermon.is_type(joker, self.etype) end) or false
end

local function apply_tm(self, card, area, copier)
  local target = pokermon.find_leftmost_or_highlighted(function(joker) return pokermon.is_type(joker, self.etype) end)
  local tm_name = string.lower(self.tm_name)
  
  for k, v in ipairs(POKE_TMS) do
    target.ability["poke_"..v.."_sticker"] = nil
  end
  
  target.ability["poke_"..tm_name.."_sticker"] = true
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
earthquake.etype = "Earth"
earthquake.config = {extra = {chips = 100}}
earthquake.tm_vars = {earthquake.config.extra.chips}

return {name = "Mart TMs",
        list = {earthquake}
}