energy_values = {
  mult = .4, mult1 = .4, mult2 = .4, chips = .3, chips1 = .3, chips2 = .3, chips3 = .3, Xmult = .2, Xmult1 = .2, Xmult2 = .2, Xchips = .2, money = .3, money1 = .3, money2 = .3, money_mod = .1, 
  mult_mod = .2, mult_mod2 = .2, s_mult = .4, chip_mod = .2, Xmult_mod = .2, Xmult_multi = .05, Xmult_multi2 = .05, Xchips_multi = .05
}

energy_max = 3

highlighted_energy_can_use = function(self, card)
  if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
  local choice = G.jokers.highlighted[1]
  if energy_matches(choice, self.etype, true) then
    if type(choice.ability.extra) == "table" then
      if can_increase_energy(choice, self.etype) then
        for name, _ in pairs(energy_values) do
          if type(choice.ability.extra[name]) == "number" then
            return choice
          end
        end
      end
    elseif type(choice.ability.extra) == "number" then
      if can_increase_energy(choice, self.etype) then
        return choice
      end
    elseif (choice.ability.mult and choice.ability.mult > 0) or (choice.ability.t_mult and choice.ability.t_mult > 0) or (choice.ability.t_chips and choice.ability.t_chips > 0)
          or (choice.ability.x_mult and choice.ability.x_mult > 1) then
      if can_increase_energy(choice, self.etype) then
        return choice
      end
    end
  end
  return false
end

highlighted_energy_use = function(self, card, area, copier, exclude_spoon)
  local viable = false
  if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
  local choice = G.jokers.highlighted[1]
  if G.GAME.energies_used then
    G.GAME.energies_used = G.GAME.energies_used  + 1
  else
    G.GAME.energies_used = 1
  end
  play_sound('poke_energy_use', 1, 0.5)
  if not exclude_spoon then set_spoon_item(card) end
  if (energy_matches(choice, self.etype, true)) then
    if type(choice.ability.extra) == "table" then
      if can_increase_energy(choice) then
        for name, _ in pairs(energy_values) do
          if type(choice.ability.extra[name]) == "number" then
            viable = true
          end
        end
      end
    elseif (type(choice.ability.extra) == "number" or (choice.ability.mult and choice.ability.mult > 0) or (choice.ability.t_mult and choice.ability.t_mult > 0) or
      (choice.ability.t_chips and choice.ability.t_chips > 0) or (choice.ability.x_mult and choice.ability.x_mult > 1)) then
      if can_increase_energy(choice) then
        viable = true
      end
    end
    if viable then
      if type(choice.ability.extra) == "table" then
        if (energy_matches(choice, self.etype, false)) then
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
           (choice.ability.t_chips and choice.ability.t_chips > 0) or (choice.ability.x_mult and choice.ability.x_mult > 1) then
        if (energy_matches(choice, self.etype, false)) then
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

round_energy_value = function(value, field)
  local rounded = nil
  local frac = nil
  if pokermon_config.precise_energy then 
    return value
  end
  if field == "mult" or field == "mult2" or field == "chips" or field == "chips1" or field == "chips2" or field == "chips3" then
    rounded = math.ceil(value)
    frac = nil
  elseif field == "money" or field == "money1" or field == "money2" or field == "mult_mod" or field == "mult_mod2" or field == "chip_mod" or field == "money_mod" then
    rounded, frac = math.modf(value)
  else
    rounded = value
  end
  return rounded, frac
end

energy_matches = function(card, etype, include_colorless)
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" then
    if has_type(card) and (etype == "Trans" or etype == "Bird") then return true end
    if (card.ability.extra.ptype and etype and card.ability.extra.ptype == etype and not type_sticker_applied(card)) or (card.ability[string.lower(etype).."_sticker"]) then
      return true
    elseif etype == "Colorless" and (card.ability.extra.ptype or type_sticker_applied(card)) and include_colorless then
      return true
    end
  elseif card.ability and (card.ability.extra and type(card.ability.extra) == "number") or (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) or 
      (card.ability.t_chips and card.ability.t_chips > 0) or (card.ability.x_mult and card.ability.x_mult > 1) then
    if card.ability[string.lower(etype).."_sticker"] then
      return true
    elseif etype == "Colorless" and type_sticker_applied(card) and include_colorless then
      return true
    end
  end
  return false
end

set_frac = function(card, frac, field, increased, ratio)
  local frac_name = field.."_frac"
  local bonus_amt = math.ceil(card.ability.extra[field]/(increased and 2 or 1))
  if card.ability[frac_name] then
    card.ability[frac_name] = card.ability[frac_name] + frac
  else
    card.ability[frac_name] = frac
  end
  if card.ability[frac_name] >= 1 then
    local int, frac = math.modf(card.ability[frac_name])
    card.ability.extra[field] = card.ability.extra[field] + int
    card.ability[frac_name] = frac
    if not increased then bonus_amt = bonus_amt/2 end
  end
  if field == "mult_mod" and card.ability.extra.mult then
    if ratio then card.ability.extra.mult = math.ceil(card.ability.extra.mult * ratio) end
    card.ability.extra.mult = card.ability.extra.mult + bonus_amt
  end
  if field == "chip_mod" and card.ability.extra.chips then
    if ratio then card.ability.extra.chips = math.ceil(card.ability.extra.chips * ratio) end
    card.ability.extra.chips = card.ability.extra.chips + bonus_amt
  end
  if field == "money_mod" and card.ability.extra.money then
    card.ability.extra.money = card.ability.extra.money + bonus_amt
  end
end

energize = function(card, etype, evolving, silent)
  local rounded = nil
  local frac = nil
  local frac_added = nil
  if type(card.ability.extra) == "table" then
    for name, _ in pairs(energy_values) do
      local data = card.ability.extra[name]
      if type(data) == "number" then
        local addition = energy_values[name]
        local previous_mod = nil
        local updated_mod = nil
        if name == "mult_mod" or name == "chip_mod" then previous_mod = card.ability.extra[name] end
        if evolving then
          if not G.GAME.modifiers.disable_colorless_penalty and card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker then
            addition = (addition * (card.ability.extra.energy_count or 0)) + (addition/2 * (card.ability.extra.c_energy_count or 0))
          else
            addition = (addition * ((card.ability.extra.energy_count or 0) + (card.ability.extra.c_energy_count or 0)))
          end
          card.ability.extra[name] =  data + (card.config.center.config.extra[name] * addition) * (card.ability.extra.escale or 1)
          updated_mod = card.ability.extra[name]
          rounded, frac = round_energy_value(card.ability.extra[name], name)
          card.ability.extra[name] = rounded
          if frac then
            if name == "mult_mod" or name == "chip_mod" then
              set_frac(card, frac, name, rounded > 0, updated_mod/previous_mod)
            else
              set_frac(card, frac, name, rounded > 0)
            end
            frac = nil
            frac_added = true
          end
        else
          if not G.GAME.modifiers.disable_colorless_penalty and (card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker) and etype == "Colorless" then
            card.ability.extra[name] = data + (card.config.center.config.extra[name] * addition/2) * (card.ability.extra.escale or 1)
          else
            card.ability.extra[name] = data + (card.config.center.config.extra[name] * addition) * (card.ability.extra.escale or 1)
          end
          updated_mod = card.ability.extra[name]
          rounded, frac = round_energy_value(card.ability.extra[name], name)
          card.ability.extra[name] = rounded
          if frac then
            if name == "mult_mod" or name == "chip_mod" then
              set_frac(card, frac, name, rounded > 0, updated_mod/previous_mod)
            else
              set_frac(card, frac, name, rounded > 0)
            end
            frac = nil
            frac_added = true
          end
        end
      end
    end
  elseif type(card.ability.extra) == "number" then
    local mults = {"Joker" , "Jolly Joker", "Zany Joker", "Mad Joker", "Crazy Joker", "Droll Joker", "Half Joker", "Mystic Summit", "Gros Michel", "Popcorn"}
    local mult_mods = {"Greedy Joker", "Lusty Joker", "Wrathful Joker", "Gluttonous Joker", "Fibonacci", "Abstract Joker", "Even Steven", "Ride the Bus", "Green Joker", "Red Card", "Erosion",
                       "Fortune Teller", "Pokedex", "Flash Card", "Spare Trousers", "Smiley Face", "Onyx Agate", "Shoot the Moon", "Bootstraps"}
    local chipss = {"Sly Joker", "Wily Joker", "Clever Joker", "Devious Joker", "Crafty Joker", "Stuntman"}
    local chip_mods = {"Banner", "Scary Face", "Odd Todd", "Runner", "Blue Joker", "Hiker", "Square Joker", "Stone Joker", "Bull", "Castle", "Arrowhead", "Wee Joker"}
    local Xmults = {"Loyalty Card", "Blackboard", "Cavendish", "Card Sharp", "Ramen", "Acrobat", "Flower Pot", "Seeing Double", "Driver's License"}
    local Xmult_mods = {"Steel Joker", "Constellation", "Madness", "Vampire", "Hologram", "Baron", "Obelisk", "Photograph", "Lucky Cat", "Baseball Card", "Everstone", "Ancient Joker",
                        "Campfire", "Throwback", "Bloodstone", "Glass Joker", "The Idol", "Hit the Road", "Canio", "Triboulet", "Yorick"}
    local monies = {"Delayed Gratification", "Egg", "Cloud 9", "Rocket", "Gift Card", "Reserved Parking", "Mail-In Rebate", "To the Moon", "Golden Joker", "Trading Card", "Golden Ticket", "Rough Gem",
                    "Satellite", "Matador"}
    
    local scoring_values = {mult = mults, mult_mod = mult_mods, chips = chipss, chip_mod = chip_mods, Xmult = Xmults, Xmult_mod = Xmult_mods, money = monies}
    for k, v in pairs(scoring_values) do
      for x, y in pairs(v) do
        if card.ability.name == y then
          local increase = energy_values[k]
          if not G.GAME.modifiers.disable_colorless_penalty and not card.ability.colorless_sticker and etype == "Colorless" then
            increase = increase/2
          end
          card.ability.extra = card.ability.extra + (card.config.center.config.extra * increase)
        end
      end
    end
  else
    local increase = nil
    if (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) then
      increase = energy_values.mult
    elseif (card.ability.t_chips and card.ability.t_chips > 0) then
      increase = energy_values.chips
    elseif (card.ability.x_mult and card.ability.x_mult > 1) then
      increase = energy_values.Xmult
    end
    if increase then
      if not G.GAME.modifiers.disable_colorless_penalty and not card.ability.colorless_sticker and etype == "Colorless" then
        increase = increase/2
      end
      if (card.ability.mult and card.ability.mult > 0 and card.config.center.config and card.config.center.config.mult) then
        card.ability.mult = card.ability.mult + (card.config.center.config.mult * increase)
      end
      if (card.ability.t_mult and card.ability.t_mult > 0 and card.config.center.config and card.config.center.config.t_mult) then
        card.ability.t_mult = card.ability.t_mult + (card.config.center.config.t_mult * increase)
      end
      if (card.ability.t_chips and card.ability.t_chips > 0 and card.config.center.config and card.config.center.config.t_chips) then
        card.ability.t_chips = card.ability.t_chips + (card.config.center.config.t_chips * increase)
      end
      if (card.ability.x_mult and card.ability.x_mult > 1 and card.config.center.config and card.config.center.config.x_mult) then
        card.ability.x_mult = card.ability.x_mult + (card.config.center.config.x_mult * increase)
      end
    end
  end
  if not silent then
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_energized_ex"), colour = G.ARGS.LOC_COLOURS.pink})
  end
end

get_total_energy = function(card)
  local curr_energy_count = nil
  local curr_c_energy_count = nil
  if card.ability.extra and type(card.ability.extra) == "table" then
    curr_energy_count = card.ability.extra.energy_count or 0
    curr_c_energy_count = card.ability.extra.c_energy_count or 0
  else
    curr_energy_count = card.ability.energy_count or 0
    curr_c_energy_count = card.ability.c_energy_count or 0
  end
  return curr_energy_count + curr_c_energy_count
end

can_increase_energy = function(card, etype)
  if pokermon_config.unlimited_energy or card.config.center.no_energy_limit or (etype and etype == "Bird") then return true end
  return get_total_energy(card) < energy_max + (G.GAME.energy_plus or 0)
end

increment_energy = function(card, etype)
  if card.ability.extra and type(card.ability.extra) == "table" then
    if (energy_matches(card, etype, false)) then
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
       (card.ability.t_chips and card.ability.t_chips > 0) or (card.ability.x_mult and card.ability.x_mult > 1) then
    if (energy_matches(card, etype, false)) then
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

energy_use = function(self, card, area, copier, exclude_spoon)
  local applied = false
  local viable = false
  if G.GAME.energies_used then
    G.GAME.energies_used = G.GAME.energies_used  + 1
  else
    G.GAME.energies_used = 1
  end
  play_sound('poke_energy_use', 1, 0.5)
  if not exclude_spoon then set_spoon_item(card) end
  for k, v in pairs(G.jokers.cards) do
    if applied ~= true and (energy_matches(v, self.etype, true)) then
      if type(v.ability.extra) == "table" then
        if can_increase_energy(v) then
          for name, _ in pairs(energy_values) do
            if type(v.ability.extra[name]) == "number" then
              viable = true
            end
          end
        end
      elseif applied ~= true and (type(v.ability.extra) == "number" or (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or
            (v.ability.t_chips and v.ability.t_chips > 0) or (v.ability.x_mult and v.ability.x_mult > 1)) then
        if can_increase_energy(v) then
          viable = true
        end
      end
      if viable then
        increment_energy(v, self.etype)
        applied = true
      end
    end
  end
end

energy_increase = function(card, etype)  
  if can_increase_energy(card) then
    increment_energy(card, etype)
  end
end

energy_can_use = function(self, card)
  for k, v in pairs(G.jokers.cards) do
    if energy_matches(v, self.etype, true) then
      if type(v.ability.extra) == "table" then
        if can_increase_energy(v, self.etype) then
          for name, _ in pairs(energy_values) do
            local data = v.ability.extra[name]
            if type(data) == "number" then
              return v
            end
          end
        end
      elseif type(v.ability.extra) == "number" then
        if can_increase_energy(v, self.etype) then
          return v
        end
      elseif (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or (v.ability.t_chips and v.ability.t_chips > 0)
            or (v.ability.x_mult and v.ability.x_mult > 1) then
        if can_increase_energy(v, self.etype) then
          return v
        end
      end
    end
  end
  return false
end

matching_energy = function(card, allow_bird)
  local poketype_list = {"grass", "fire", "water", "lightning", "psychic", "fighting", "colorless", "dark", "metal", "fairy", "dragon", "earth", "bird"}
  if card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype and (card.ability.extra.ptype ~= "Bird" or allow_bird) and not type_sticker_applied(card) then
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

ease_poke_dollars = function(card, seed, amt, calc_only)
  local earned = amt
  if card.ability.extra and type(card.ability.extra) == "table" then
    if card.ability.money_frac then
      if card.ability.money_frac > pseudorandom(pseudoseed(seed)) then
        earned = earned + 1
      end
    end
    if card.ability.money1_frac then
      if card.ability.money1_frac > pseudorandom(pseudoseed(seed)) then
        earned = earned + 1
      end
    end
    if card.ability.money2_frac then
      if card.ability.money2_frac > pseudorandom(pseudoseed(seed)) then
        earned = earned + 1
      end
    end
  end
  if (SMODS.Mods["Talisman"] or {}).can_load then
    earned = to_number(earned)
  end
  if not calc_only then ease_dollars(earned) end
  return earned
end

