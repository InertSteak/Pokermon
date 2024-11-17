energy_whitelist = {"mult", "mult1", "mult2", "chips", "chips1", "chips2", "chips3", "Xmult", "money", "money_mod", "mult_mod", "mult_mod2", "s_mult", "chip_mod", "Xmult_mod", 
                    "Xmult_multi",  "Xmult_multi2"}
energy_values = {
  mult = .2, mult1 = .2, mult2 = .2, chips = .2, chips1 = .2, chips2 = .2, chips3 = .2, Xmult = .2, money = .1, money_mod = .1, mult_mod = .2, mult_mod2 = .2, s_mult = .2, chip_mod = .2, 
  Xmult_mod = .2, Xmult_multi = .1, Xmult_multi2 = .1
}

energy_max = 3


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

energy_matches = function(card, etype, include_colorless)
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" then
    if (card.ability.extra.ptype and etype and card.ability.extra.ptype == etype) or (card.ability[string.lower(etype).."_sticker"]) then
      return true
    elseif etype == "Colorless" and (card.ability.extra.ptype or type_sticker_applied(card)) and include_colorless then
      return true
    end
  elseif card.ability and (card.ability.extra and type(card.ability.extra) == "number") or (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) or 
      (card.ability.t_chips and card.ability.t_chips > 0) then
    if card.ability[string.lower(etype).."_sticker"] then
      return true
    elseif etype == "Colorless" and type_sticker_applied(card) and include_colorless then
      return true
    end
  end
  return false
end

energize = function(card, etype, evolving)
  if type(card.ability.extra) == "table" then
    for l, data in pairs(card.ability.extra) do
      if type(data) == "number" then
        for m, name in ipairs(energy_whitelist) do
          if l == name then
            local addition = energy_values[name]
            if evolving then
              if card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker then
                addition = (addition * (card.ability.extra.energy_count or 0)) + (addition/2 * (card.ability.extra.c_energy_count or 0))
              else
                addition = (addition * ((card.ability.extra.energy_count or 0) + (card.ability.extra.c_energy_count or 0)))
              end
              card.ability.extra[l] =  data + (card.config.center.config.extra[l] * addition) * (card.ability.extra.escale or 1)
            else
              if (card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker) and etype == "Colorless" then
                card.ability.extra[l] = data + (card.config.center.config.extra[l] * addition/2) * (card.ability.extra.escale or 1)
              else
                card.ability.extra[l] = data + (card.config.center.config.extra[l] * addition) * (card.ability.extra.escale or 1)
              end
            end
          end
        end
      end
    end
  elseif type(card.ability.extra) == "number" then
    local increase = nil
    local mult = nil
    local mult_mod = nil
    local chip = nil
    local chip_mod = nil
    local Xmult = nil
    local Xmult_mod = nil
    local money = nil
    local mults = {"Joker" , "Jolly Joker", "Zany Joker", "Mad Joker", "Crazy Joker", "Droll Joker", "Half Joker", "Mystic Summit", "Gros Michel", "Popcorn"}
    local mult_mods = {"Greedy Joker", "Lusty Joker", "Wrathful Joker", "Gluttonous Joker", "Fibonacci", "Abstract Joker", "Even Steven", "Ride the Bus", "Green Joker", "Red Card", "Erosion",
                       "Fortune Teller", "Pokedex", "Flash Card", "Spare Trousers", "Smiley Face", "Onyx Agate", "Shoot the Moon", "Bootstraps"}
    local chips = {"Sly Joker", "Wily Joker", "Clever Joker", "Devious Joker", "Crafty Joker", "Stuntman"}
    local chip_mods = {"Banner", "Scary Face", "Odd Todd", "Runner", "Blue Joker", "Hiker", "Square Joker", "Stone Joker", "Bull", "Castle", "Arrowhead", "Wee Joker"}
    local Xmults = {"Loyalty Card", "Blackboard", "Cavendish", "Card Sharp", "Ramen", "Acrobat", "Flower Pot", "Seeing Double", "The Duo", "The Trio", "The Family", "The Order", "The Tribe", 
                    "Driver's License"}
    local Xmult_mods = {"Joker Stencil", "Steel Joker", "Constellation", "Madness", "Vampire", "Hologram", "Baron", "Obelisk", "Photograph", "Lucky Cat", "Baseball Card", "Everstone", "Ancient Joker",
                        "Campfire", "Throwback", "Bloodstone", "Glass Joker", "The Idol", "Hit the Road", "Canio", "Triboulet", "Yorick"}
    local monies = {"Delayed Gratification", "Egg", "Cloud 9", "Rocket", "Gift Card", "Reserved Parking", "Mail-In Rebate", "To the Moon", "Golden Joker", "Trading Card", "Golden Ticket", "Rough Gem",
                    "Satellite", "Matador"}
    
    for k, v in pairs(mults) do
      if card.ability.name == v then
        mult = true
      end
    end
    
    for k, v in pairs(mult_mods) do
      if card.ability.name == v then
        mult_mod = true
      end
    end
    
    for k, v in pairs(chips) do
      if card.ability.name == v then
        chip = true
      end
    end
    
    for k, v in pairs(chip_mods) do
      if card.ability.name == v then
        chip_mod = true
      end
    end
    
    for k, v in pairs(Xmults) do
      if card.ability.name == v then
        Xmult = true
      end
    end
    
    for k, v in pairs(Xmult_mods) do
      if card.ability.name == v then
        money = true
      end
    end
    
    for k, v in pairs(monies) do
      if card.ability.name == v then
        money = true
      end
    end
    
    if mult then
      increase = energy_values.mult
    elseif mult_mod then
      increase = energy_values.mult_mod
    elseif chip then
      increase = energy_values.chips
    elseif chip_mod then
      increase = energy_values.chip_mod
    elseif Xmult then
      increase = energy_values.Xmult
    elseif Xmult_mod then
      increase = energy_values.Xmult_mod
    elseif money then
      increase = energy_values.money
    end
    if increase then
      if not card.ability.colorless_sticker and etype == "Colorless" then
        card.ability.extra = card.ability.extra + (card.config.center.config.extra * increase/2)
      else
        card.ability.extra = card.ability.extra + (card.config.center.config.extra * increase)
      end
    end
  else
    local increase = nil
    if (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) then
      increase = energy_values.mult
    elseif (card.ability.t_chips and card.ability.t_chips > 0) then
      increase = energy_values.chips
    end
    if increase then
      if not card.ability.colorless_sticker and etype == "Colorless" then
        increase = increase/2
      end
      if (card.ability.mult and card.ability.mult > 0) then
        card.ability.mult = card.ability.mult + (card.config.center.config.mult * increase)
      end
      if (card.ability.t_mult and card.ability.t_mult > 0) then
        card.ability.t_mult = card.ability.t_mult + (card.config.center.config.t_mult * increase)
      end
      if (card.ability.t_chips and card.ability.t_chips > 0) then
        card.ability.t_chips = card.ability.t_chips + (card.config.center.config.t_chips * increase)
      end
    end
  end
  card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_energized_ex"), colour = G.ARGS.LOC_COLOURS.pink})
end

energy_use = function(self, card, area, copier)
  local applied = false
  local viable = false
  for k, v in pairs(G.jokers.cards) do
    if applied ~= true and (energy_matches(v, self.etype, true) or self.etype == "Trans") then
      if type(v.ability.extra) == "table" then
        if (pokermon_config.unlimited_energy) or (((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
          for l, data in pairs(v.ability.extra) do
            if type(data) == "number" then
              for m, name in ipairs(energy_whitelist) do
                if l == name then
                  viable = true
                end
              end
            end
          end
        end
      elseif applied ~= true and (type(v.ability.extra) == "number" or (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or
            (v.ability.t_chips and v.ability.t_chips > 0)) then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
          viable = true
        end
      end
      if viable then
        if type(v.ability.extra) == "table" then
          if (energy_matches(v, self.etype, false) or self.etype == "Trans") then
            if v.ability.extra.energy_count then
              v.ability.extra.energy_count = v.ability.extra.energy_count + 1
            else
              v.ability.extra.energy_count = 1
            end
            energize(v, false)
            applied = true
          elseif self.etype == "Colorless" then
            if v.ability.extra.c_energy_count then
              v.ability.extra.c_energy_count = v.ability.extra.c_energy_count + 1
            else
              v.ability.extra.c_energy_count = 1
            end
            energize(v, self.etype, false)
            applied = true
          end
        elseif type(v.ability.extra) == "number" or (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or 
               (v.ability.t_chips and v.ability.t_chips > 0) then
          if (energy_matches(v, self.etype, false) or self.etype == "Trans") then
            if v.ability.energy_count then
              v.ability.energy_count = v.ability.energy_count + 1
            else
              v.ability.energy_count = 1
            end
            energize(v, false)
            applied = true
          elseif self.etype == "Colorless" then
            if v.ability.c_energy_count then
              v.ability.c_energy_count = v.ability.c_energy_count + 1
            else
              v.ability.c_energy_count = 1
            end
            energize(v, self.etype, false)
            applied = true
          end
        end
      end
    end
  end
end

energy_increase = function(card, etype)
  local can_increase = false
  if card.ability.extra and type(card.ability.extra) == "table" and ((pokermon_config.unlimited_energy) or 
    (((card.ability.extra.energy_count or 0) + (card.ability.extra.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0))) then
    can_increase = true
  elseif not (card.ability.extra and type(card.ability.extra) == "table") and ((pokermon_config.unlimited_energy) or 
             (((card.ability.energy_count or 0) + (card.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0))) then
    can_increase = true
  end
  
  if can_increase then
    if type(card.ability.extra) == "table" then
      if (energy_matches(card, etype, false) or etype == "Trans") then
        if card.ability.extra.energy_count then
          card.ability.extra.energy_count = card.ability.extra.energy_count + 1
        else
          card.ability.extra.energy_count = 1
        end
        energize(card, false)
      elseif etype == "Colorless" then
        if card.ability.extra.c_energy_count then
          card.ability.extra.c_energy_count = card.ability.extra.c_energy_count + 1
        else
          card.ability.extra.c_energy_count = 1
        end
        energize(card, etype, false)
      end
    elseif type(card.ability.extra) == "number" or (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) or 
         (card.ability.t_chips and card.ability.t_chips > 0) then
      if (energy_matches(card, etype, false) or etype == "Trans") then
        if card.ability.energy_count then
          card.ability.energy_count = card.ability.energy_count + 1
        else
          card.ability.energy_count = 1
        end
        energize(card, false)
      elseif etype == "Colorless" then
        if card.ability.c_energy_count then
          card.ability.c_energy_count = card.ability.c_energy_count + 1
        else
          card.ability.c_energy_count = 1
        end
        energize(card, etype, false)
      end
    end
  end
end

energy_can_use = function(self, card)
  for k, v in pairs(G.jokers.cards) do
    if energy_matches(v, self.etype, true) then
      if type(v.ability.extra) == "table" then
        if (pokermon_config.unlimited_energy or ((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
          for l, data in pairs(v.ability.extra) do
            if type(data) == "number" then
              for m, name in ipairs(energy_whitelist) do
                if l == name then
                  return true
                end
              end
            end
          end
        end
      elseif type(v.ability.extra) == "number" then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
          return true
        end
      elseif (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or (v.ability.t_chips and v.ability.t_chips > 0) then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < energy_max + (G.GAME.energy_plus or 0)) then
          return true
        end
      end
    end
  end
  return false
end

matching_energy = function(card)
  local poketype_list = {"grass", "fire", "water", "lightning", "psychic", "fighting", "colorless", "dark", "metal", "fairy", "dragon", "earth"}
  if card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype and card.ability.extra.ptype ~= "Bird" then
    if card.ability.extra.ptype == "Dark" or card.ability.extra.ptype == "dark" then
      return "c_poke_"..string.lower(card.ability.extra.ptype).."ness_energy"
    else
      return "c_poke_"..string.lower(card.ability.extra.ptype).."_energy"
    end
  end
  for l, v in pairs(poketype_list) do
    if card.ability[v.."_sticker"] then
      if v == "dark" then
        return "c_poke_"..v.."ness_energy"
      else
        return "c_poke_"..v.."_energy"
      end
    end
  end
end