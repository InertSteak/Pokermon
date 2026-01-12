-- We can initialize the 12 basic energies (not bird) with this template and a good for loop
local energy_template = {
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 0, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local basic_etypes = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
local basic_energies = {}
for k, etype in ipairs(basic_etypes) do
  local energy = copy_table(energy_template)
  energy.key = etype == 'Dark' and string.lower(etype) .. 'ness_energy' or string.lower(etype) .. '_energy'
  energy.etype = etype
  energy.pos = { x = (k - 1) % 10, y = math.floor((k - 1) / 10) }
  table.insert(basic_energies, energy)
end

local bird_energy = {
  name = "bird_energy",
  key = "bird_energy",
  set = "Energy",
  animated = true,
  artist = "Catzzadilla",
  pos = { x = 0, y = 0 },
  atlas = "AtlasConsumablesBirdEnergy",
  cost = 4,
  etype = "Bird",
  no_collection = true,
  unlocked = true,
  discovered = true,
  loc_vars = function(self, info_queue, card)
        local r_mults = {}
        for i = 1, 23 do
            r_mults[#r_mults + 1] = tostring(i)
        end
        local gives_strings = {{ string = localize('poke_water_gun_ex'), colour = G.ARGS.LOC_COLOURS.water }, { string = localize('poke_sky_attack_ex'), colour = G.ARGS.LOC_COLOURS.colorless },
                               { string = 'HEX("FF7ABF")', colour = G.C.JOKER_GREY}, { string = '?????', colour = G.C.JOKER_GREY}
                             }
        local energy_strings = {{ string = '?????', colour = G.C.JOKER_GREY}, { string = self.name, colour = G.C.JOKER_GREY}, { string = localize('k_poke_pp'), colour = G.C.JOKER_GREY},
                                { string = localize('k_mult'), colour = G.C.MULT}, { string = 'ERROR', colour = G.C.CHIPS}
                               }
        local energy_strings2 = {{ string = '?????', colour = G.C.JOKER_GREY}, { string = self.name, colour = G.C.JOKER_GREY}, { string = localize('k_poke_pp'), colour = G.C.JOKER_GREY},
                        { string = localize('k_mult'), colour = G.C.MULT}, { string = 'ERROR', colour = G.C.CHIPS}
                       }
        main_start = {
          {n = G.UIT.R,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = {
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(gives_strings, {poke_rep_string = localize('k_poke_gives'), poke_rep_num = 5})) } },
              { n = G.UIT.T, config = { text = ' +'..(energy_max + (G.GAME.energy_plus or 0))..' ', colour = HEX("FF7ABF"), scale = 0.32 } },
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(energy_strings, {poke_rep_string = localize('k_energy'), poke_rep_num = 5})) } },
            }
          },
          {n = G.UIT.R,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = {
              { n = G.UIT.T, config = { text = '('..localize('k_poke_ignores')..' ', colour = G.C.JOKER_GREY, scale = 0.32 } },
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(energy_strings2, {poke_rep_string = localize('k_energy'), poke_rep_num = 5})) } },
              { n = G.UIT.T, config = { text = ' '..localize('k_poke_limit')..')', colour = G.C.JOKER_GREY, scale = 0.32 } },
            }
          },
        }
        return { main_start = main_start }
    end,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    local choice = energy_can_use(self, card)
    if choice then
      increment_energy(choice, self.etype, energy_max + (G.GAME.energy_plus or 0))
    end
    G.GAME.energies_used = G.GAME.energies_used and (G.GAME.energies_used + 1) or 1
  end,
  in_pool = function(self)
    return false
  end
}

local double_rainbow_energy = {
  name = "double_rainbow_energy",
  key = "double_rainbow_energy",
  set = "Spectral",
  artist = "MyDude_YT",
  config = {},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 0, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Trans",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    G.GAME.energies_used = G.GAME.energies_used and (G.GAME.energies_used + 1) or 1
    local choice = poke_find_leftmost_or_highlighted(function(joker) return can_apply_energy(joker, self.etype) end)
    for _ = 1, 2 do
      energy_increase(choice, self.etype)
    end
    if not G.GAME.modifiers.no_interest then
      G.GAME.modifiers.reset_no_interest = true
      G.GAME.modifiers.no_interest = true
    end
  end
}

local emergy = {
  name = "emergy",
  key = "emergy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 3, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    --Code taken from Cryptid
    local jollycount = 0
    for i = 1, #G.jokers.cards do
      if
        -- is_jolly() is a cryptid function. It's basically a better Jolly Joker check    -Jevonn
        G.jokers.cards[i]:is_jolly()
        or G.jokers.cards[i].ability.effect == "M Joker"
      then
        jollycount = jollycount + 1
      end
    end
    for i= 1, jollycount do
      local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  can_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    --another Cryptid Function, This checks for M jokers   -Jevonn
    local mcheck = 0
    if get_m_jokers then
      mcheck = get_m_jokers()
    elseif Cryptid and Cryptid.get_m_jokers then
      mcheck = Cryptid.get_m_jokers()
    end
		if (mcheck + #find_joker('Jolly Joker')) > 0 then
			return true
		end
		return false
	end,
}

local list = {bird_energy, double_rainbow_energy}
-- Keeping the order of consumables the same as before, the 12 energies get added after masterball
for i = 1, #basic_energies do
  table.insert(list, i, basic_energies[i])
end


if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "AtlasConsumablesBasic 1",
        list = list
}