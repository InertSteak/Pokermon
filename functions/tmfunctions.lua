pokermon.tm.can_use_tm =  function(self, card) 
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

pokermon.tm.apply_tm = function(self, card, area, copier)
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
