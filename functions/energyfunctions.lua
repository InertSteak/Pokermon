energy_values = {
  mult = .4, mult1 = .4, mult2 = .4,
  chips = .3, chips1 = .3, chips2 = .3, chips3 = .3,
  Xmult = .2, Xmult1 = .2, Xmult2 = .2,
  Xchips = .2, Xchips1 = .2, Xchips2 = .2,
  money = .3, money1 = .3, money2 = .3,
  money_mod = .1, money_mod1 = .1, money_mod2 = .1,
  mult_mod = .2, mult_mod1 = .2, mult_mod2 = .2,
  chip_mod = .2, chip_mod1 = .2, chip_mod2 = .2,
  Xmult_mod = .2, Xmult_mod1 = .2, Xmult_mod2 = .2,
  Xmult_multi = .05, Xmult_multi1 = .05, Xmult_multi2 = .05,
  Xchips_multi = .05, Xchips_multi1 = .05, Xchips_multi2 = .05,
}

energy_max = 3

-- we're gonna need this for the vanilla jokers later
-- Load list of energizable vanilla jokers
local energizable_vanilla = assert(SMODS.load_file("functions/energizable_vanilla.lua"))()

-- this is a series of checks formerly strewn about the energy functions
-- namely, is ability.extra a table or a number or nil, is there an energizable value, etc.
is_energizable = function(card)
  -- Vanilla Jokers check
  if energizable_vanilla[card.config.center.name] then
    return true
  end
  -- Regular case
  if type(card.ability.extra) == "table" then
    for name, _ in pairs(energy_values) do
      if type(card.ability.extra[name]) == "number" then
        return true
      end
    end
  elseif type(card.ability.extra) == "number" then
    return true
  -- More generic check for energizable values that aren't in ability.extra
  else
    for k, _ in pairs(energy_values) do
      if card.ability[energy_values[k]] and card.ability[energy_values[k]] > 0 then return true end
    end
  end
  return false
end

can_increase_energy = function(card, etype)
  if pokermon_config.unlimited_energy or card.config.center.no_energy_limit or (etype and etype == "Bird") then return true end
  return get_total_energy(card) < energy_max + (G.GAME.energy_plus or 0) + (type(card.ability.extra) == "table" and card.ability.extra.e_limit_up or 0)
end

-- Checking the type compatibility flowchart
energy_matches = function(card, etype, include_colorless)
  if get_type(card) and (etype == "Trans" or etype == "Bird") then return true
  elseif get_type(card) and etype == "Colorless" and include_colorless then return true
  elseif is_type(card, etype) then return true end
  return false
end

can_apply_energy = function(card, etype)
  return energy_matches(card, etype, true) and is_energizable(card) and can_increase_energy(card, etype)
end

-- can_use and use are tied to energy cards proper
energy_can_use = function(self, card)
  -- So we've trimmed down the energy checks to about four different functions that all culminate here
  return poke_find_leftmost_or_highlighted(function(joker) return can_apply_energy(joker, self.etype) end) or false
end

energy_use = function(self, card, area, copier, exclude_spoon)
  G.GAME.energies_used = G.GAME.energies_used and (G.GAME.energies_used + 1) or 1
  play_sound('poke_energy_use', 1, 0.5)
  if not exclude_spoon then set_spoon_item(card) end
  -- check if valid target or not
  local choice = poke_find_leftmost_or_highlighted(function(joker) return can_apply_energy(joker, self.etype) end)
  if choice then increment_energy(choice, self.etype) end
end

-- this is probably now the function to call for energizing effects that aren't tied to energy cards
energy_increase = function(card, etype, amount, silent)
  if not amount then amount = 1 end
  if can_increase_energy(card) or amount <= energy_max + (G.GAME.energy_plus or 0) +
      (type(card.ability.extra) == "table" and card.ability.extra.e_limit_up or 0) - get_total_energy(card) then
    increment_energy(card, etype, amount, silent)
  end
end

-- increment_energy runs the last type checks, as well as the colorless penalty check for energy type
-- if for some strange reason there's ever a desire to skip incrementing the energy *counts*, call energize directly
increment_energy = function(card, etype, amount, silent)
  if not amount then amount = 1 end
  -- checking if the colorless penalty applies
  local c_penalty = (not G.GAME.modifiers.disable_colorless_penalty and not is_type(card, "Colorless") and etype == "Colorless") and 2 or 1
  -- the regular energy increment
  if (energy_matches(card, etype, false)) then
    if card.ability.extra and type(card.ability.extra) == "table" then
      card.ability.extra.energy_count = card.ability.extra.energy_count and (card.ability.extra.energy_count + amount) or amount
      energize(card, etype, false, silent, amount)
    elseif is_energizable(card) then
      card.ability.energy_count = card.ability.energy_count and (card.ability.energy_count + amount) or amount
      energize(card, etype, false, silent, amount)
    end
  -- We only need to increase c_energy_count if the colorless penalty applies to that energy in the first place
  elseif c_penalty then
    if card.ability.extra and type(card.ability.extra) == "table" then
      card.ability.extra.c_energy_count = card.ability.extra.c_energy_count and (card.ability.extra.c_energy_count + amount) or amount
      energize(card, etype, false, silent, amount)
    elseif is_energizable(card) then
      card.ability.c_energy_count = card.ability.c_energy_count and (card.ability.c_energy_count + amount) or amount
      energize(card, etype, false, silent, amount)
    end
  end
end

energize = function(card, etype, evolving, silent, amount, center)
  if not amount then amount = 1 end
  if not center then center = card.config.center end
  local rounded
  local frac
  local energy_count, c_energy_count = get_total_energy(card, true)
  -- colorless type check
  local c_penalty = (not G.GAME.modifiers.disable_colorless_penalty and not is_type(card, "Colorless") and etype == "Colorless") and 2 or 1
  -- vanilla jokers aren't coded well so we're knocking them out first
  if energizable_vanilla[center.name] then
    energize_other(card, etype, center, c_penalty, amount)
  -- base pokermon case
  elseif type(card.ability.extra) == "table" then
    for name, _ in pairs(energy_values) do
      local data = card.ability.extra[name]
      if type(data) == "number" then
        local addition = energy_values[name]
        local previous_mod = (name == "mult_mod" or name == "chip_mod") and card.ability.extra[name]
        local updated_mod = nil
        if evolving then
          addition = addition * (energy_count + c_energy_count / 2)
          card.ability.extra[name] = data + (center.config.extra[name] * addition) * (card.ability.extra.escale or 1)
          updated_mod = card.ability.extra[name]
          rounded, frac = round_energy_value(card.ability.extra[name], name)
          card.ability.extra[name] = rounded
          if frac then
            set_frac(card, frac, name, rounded > 0, previous_mod and (updated_mod/previous_mod))
            frac = nil
          end
        else
          card.ability.extra[name] = data + (center.config.extra[name] * addition / (etype == "Colorless" and c_penalty or 1)) * (card.ability.extra.escale or 1) * amount
          updated_mod = card.ability.extra[name]
          rounded, frac = round_energy_value(card.ability.extra[name], name)
          card.ability.extra[name] = rounded
          if frac then
            set_frac(card, frac, name, rounded > 0, previous_mod and (updated_mod/previous_mod))
            frac = nil
          end
        end
      end
    end
  -- everything else
  else
    energize_other(card, etype, center, c_penalty, amount)
  end
  if not silent then
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_energized_ex"), colour = G.ARGS.LOC_COLOURS.pink})
  end
end

-- For Vanilla Jokers and other non-Pokermon Mods
energize_other = function(card, etype, center, colorless_penalty, amount)
  if not amount then amount = 1 end
  if not center then center = card.config.center end
  -- We're just gonna make the vanilla jokers their own special little case...
  if energizable_vanilla[center.name] then
    -- get the relevant vanilla joker value from the center and ability and energy_value type
    local field, value = energizable_vanilla[center.name][1], energizable_vanilla[center.name][2]
    energize_vanilla_values(card, center, field, value, colorless_penalty, amount)
    -- this checks if a second value needs to be energized
    local field2, value2
    if energizable_vanilla[center.name][3] then
      field2, value2 = energizable_vanilla[center.name][3].field, energizable_vanilla[center.name][3].value
      energize_vanilla_values(card, center, field2, value2, colorless_penalty, amount)
    end
    for k, _ in pairs(energy_values) do
      local increase = energy_values[k] * amount / colorless_penalty
      -- energize existing vanilla values if they aren't the target (i.e. ability.x_mult)
      if card.ability[k] and center.config[k] and field ~= k and not (field2 and field2 == k) then
        card.ability[k] = card.ability[k] + (center.config[k] * increase)
        -- apparently Xmult and x_mult get stored from config into ability.x_mult so that's irritating
        if k == 'Xmult' then card.ability.x_mult = card.ability.x_mult + (center.config[k] * increase) end
      end
    end
  else
    -- should work for remaining energizable non-vanilla, non-pokermon jokers hopefully
    for k, _ in pairs(energy_values) do
      local increase = energy_values[k] / colorless_penalty
      -- energize existing vanilla values if they aren't the target (i.e. ability.x_mult)
      if card.ability[k] and center.config[k] then
        card.ability[k] = card.ability[k] + (center.config[k] * increase)
        -- apparently Xmult and x_mult get stored from config into ability.x_mult so that's irritating
        if k == 'Xmult' then card.ability.x_mult = card.ability.x_mult + (center.config[k] * increase) end
      end
    end
  end
end

energize_vanilla_values = function(card, center, field, value, colorless_penalty, amount)
  if not amount then amount = 1 end
  if not center then center = card.config.center end
  -- checking if the target value is in ability or ability.extra
  local config = center.config[value] ~= nil and center.config or center.config.extra
  local ability = (config == center.config) and card.ability or card.ability.extra
  -- energy calculations
  local increase = energy_values[field] * amount / colorless_penalty
  if (type(config[value]) == "number") and (type(ability[value]) == "number") then
    ability[value] = ability[value] + (config[value] * increase)
  -- compatibility with mods that affect config structure of particular vanilla jokers; i.e. Minty with Fibonacci
  elseif (type(config[value]) == "table") then
    for u, num in pairs(ability[value]) do
      if energy_values[u] then
        for w, base in pairs(config[value]) do
          if u == w then ability[value][u] = num + (base * increase) end
        end
      end
    end
  end
end

get_total_energy = function(card, get_counts)
  local curr_energy_count = nil
  local curr_c_energy_count = nil
  if card.ability.extra and type(card.ability.extra) == "table" then
    curr_energy_count = card.ability.extra.energy_count or 0
    curr_c_energy_count = card.ability.extra.c_energy_count or 0
  else
    curr_energy_count = card.ability.energy_count or 0
    curr_c_energy_count = card.ability.c_energy_count or 0
  end
  if get_counts == true then return curr_energy_count, curr_c_energy_count
  else return curr_energy_count + curr_c_energy_count end
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

set_frac = function(card, frac, field, increased, ratio)
  local frac_name = field.."_frac"
  local bonus_amt = math.ceil(card.ability.extra[field]/(increased and 2 or 1))
  card.ability[frac_name] = card.ability[frac_name] and (card.ability[frac_name] + frac) or frac
  if card.ability[frac_name] >= 1 then
    local int, frac = math.modf(card.ability[frac_name])
    card.ability.extra[field] = card.ability.extra[field] + int
    card.ability[frac_name] = frac
    if not increased then bonus_amt = bonus_amt / 2 end
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

matching_energy = function(card, allow_bird)
  if not get_type(card) or (get_type(card) == "Bird" and not allow_bird) then return end
  local etype = get_type(card) and string.lower(get_type(card))
  local e_key = "c_poke_"..etype..(etype == 'dark' and 'ness' or '')..'_energy'
  if G.P_CENTERS[e_key] then return "c_poke_"..etype..(etype == 'dark' and 'ness' or '')..'_energy' end
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
