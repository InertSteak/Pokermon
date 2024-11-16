highlighted_energy_can_use = function(self, card)
  if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
  local choice = G.jokers.highlighted[1]
  if energy_matches(choice, self.etype, true) then
    if type(choice.ability.extra) == "table" then
      if (pokermon_config.unlimited_energy or ((choice.ability.extra.energy_count or 0) + (choice.ability.extra.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
        for l, data in pairs(choice.ability.extra) do
          if type(data) == "number" then
            for m, name in ipairs(energy_whitelist) do
              if l == name then
                return true
              end
            end
          end
        end
      end
    elseif type(choice.ability.extra) == "number" then
      if (pokermon_config.unlimited_energy) or (((choice.ability.energy_count or 0) + (choice.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
        return true
      end
    elseif (choice.ability.mult and choice.ability.mult > 0) or (choice.ability.t_mult and choice.ability.t_mult > 0) or (choice.ability.t_chips and choice.ability.t_chips > 0) then
      if (pokermon_config.unlimited_energy) or (((choice.ability.energy_count or 0) + (choice.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
        return true
      end
    end
  end
  return false
end

highlighted_energy_use = function(self, card, area, copier)
  local viable = false
  if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
  local choice = G.jokers.highlighted[1]
  if (energy_matches(choice, self.etype, true) or self.etype == "Trans") then
    if type(choice.ability.extra) == "table" then
      if (pokermon_config.unlimited_energy) or (((choice.ability.extra.energy_count or 0) + (choice.ability.extra.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
        for l, data in pairs(choice.ability.extra) do
          if type(data) == "number" then
            for m, name in ipairs(energy_whitelist) do
              if l == name then
                viable = true
              end
            end
          end
        end
      end
    elseif (type(choice.ability.extra) == "number" or (choice.ability.mult and choice.ability.mult > 0) or (choice.ability.t_mult and choice.ability.t_mult > 0) or
      (choice.ability.t_chips and choice.ability.t_chips > 0)) then
      if (pokermon_config.unlimited_energy) or (((choice.ability.energy_count or 0) + (choice.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
        viable = true
      end
    end
    if viable then
      if type(choice.ability.extra) == "table" then
        if (energy_matches(choice, self.etype, false) or self.etype == "Trans") then
          if choice.ability.extra.energy_count then
            choice.ability.extra.energy_count = choice.ability.extra.energy_count + 1
          else
            choice.ability.extra.energy_count = 1
          end
          energize(choice, false)
        elseif self.etype == "Colorless" then
          if choice.ability.extra.c_energy_count then
            choice.ability.extra.c_energy_count = choice.ability.extra.c_energy_count + 1
          else
            choice.ability.extra.c_energy_count = 1
          end
          energize(choice, self.etype, false)
        end
      elseif type(choice.ability.extra) == "number" or (choice.ability.mult and choice.ability.mult > 0) or (choice.ability.t_mult and choice.ability.t_mult > 0) or 
           (choice.ability.t_chips and choice.ability.t_chips > 0) then
        if (energy_matches(choice, self.etype, false) or self.etype == "Trans") then
          if choice.ability.energy_count then
            choice.ability.energy_count = choice.ability.energy_count + 1
          else
            choice.ability.energy_count = 1
          end
          energize(choice, false)
        elseif self.etype == "Colorless" then
          if choice.ability.c_energy_count then
            choice.ability.c_energy_count = choice.ability.c_energy_count + 1
          else
            choice.ability.c_energy_count = 1
          end
          energize(choice, self.etype, false)
        end
      end
    end
  end
end