local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "Item",
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
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("pokeball", "Basic")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

local greatball = {
  name = "greatball",
  key = "greatball",
  set = "Item",
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
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("greatball", "One")
        _card:add_to_deck()
        G.jokers:emplace(_card)
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
  soul_set = "Item",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("ultraball", "Two")
        _card:add_to_deck()
        G.jokers:emplace(_card)
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
  soul_set = "Item",
  soul_rate = .003,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("masterball", "Legendary")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

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
    for _ = 1, 2 do
      energy_use(self, card, area, copier, true)
    end
    if not G.GAME.modifiers.no_interest then
      G.GAME.modifiers.reset_no_interest = true
      G.GAME.modifiers.no_interest = true
    end
  end
}

local transformation = {
  name = "transformation",
  key = "transformation",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 2, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Trans",
  hidden = true,
  soul_set = "Energy",
  soul_rate = .025,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    return get_type(choice)
  end,
  use = function(self, card, area, copier)
    local choice = poke_find_leftmost_or_highlighted()
    if get_type(choice) then energy_increase(choice, get_type(choice)) end
    if not choice.config.center.aux_poke then
      local highest = get_highest_evo(choice)
      if highest and type(highest) == "string" then
        local prefix = choice.config.center.poke_custom_prefix or "poke"
        local forced_key = "j_"..prefix.."_"..highest
        local context = {}
        poke_evolve(choice, forced_key)
      end
    end
  end
}

local megastone = {
  name = "megastone",
  key = "megastone",
  set = "Spectral",
  artist = "MyDude_YT",
  helditem = true,
  config = {extra = {usable = true, used_on = nil}},
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Other', key = 'endless' }
    if not G.GAME.modifiers.infinite_megastone then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_rule'}
    end
    local joker = poke_find_card(function(joker)
        return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on
      end)
    if joker then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_used_on', vars = {localize({ type = "name_text", set = "Joker", key = joker.config.center.key})}}
    end
  end,
  pos = { x = 4, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  hidden = true,
  soul_set = "Item",
  soul_rate = .005,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    -- location-based usability checks
    if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) or #G.jokers.cards == 0 then return false end
    if not card.ability.extra.usable then return false end
    -- Find an eligible pokemon (also checks if the mega stone has been used, and on which joker)
    local target = poke_find_leftmost_or_highlighted(function(joker)
      return not card.ability.extra.used_on and get_mega(joker) and not joker.debuff
        or joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on
        or G.GAME.modifiers.infinite_megastone and ((get_mega(joker) and not joker.debuff) or joker.config.center.rarity == "poke_mega")
      end)
    if not target then return false end
    -- If none of that nonsense happened you can use it I guess
    return true
  end,
  use = function(self, card, area, copier)
    local target = poke_find_leftmost_or_highlighted(function(joker)
      return not card.ability.extra.used_on and get_mega(joker) and not joker.debuff
        or joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on
        or G.GAME.modifiers.infinite_megastone and ((get_mega(joker) and not joker.debuff) or joker.config.center.rarity == "poke_mega")
      end)
    local forced_key
    local prefix = target.config.center.poke_custom_prefix or "poke"
    if get_mega(target) then
      forced_key = "j_"..prefix.."_"..get_mega(target)
      card.ability.extra.used_on = not G.GAME.modifiers.infinite_megastone and target.unique_val
    else
      forced_key = get_previous_evo(target, true)
      card.ability.extra.used_on = nil
    end
    card.ability.extra.usable = false
    poke_evolve(target, forced_key)
  end,
  calculate = function(self, card, context)
    if context.end_of_round then
      local mega = poke_find_card(function(joker) return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on end)
      if not mega then card.ability.extra.used_on = nil end
      if not card.ability.extra.usable then
        card.ability.extra.usable = true
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      end
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    local mega_poke = G.jokers and poke_find_card(function(joker) return joker.config.center.megas end)
    return mega_poke
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then card.ability.extra.used_on = nil end
    card.ability.extra.usable = true
  end,
  remove_from_deck = function(self, card, from_debuff)
    local target = poke_find_card(function(joker) return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on end)
    if target then
      local forced_key = get_previous_evo(target, true)
      poke_evolve(target, forced_key)
    end
  end,
}

local obituary = {
  name = "obituary",
  key = "obituary",
  set = "Spectral",
  config = {extra = "Pink", max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
  end,
  pos = { x = 1, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local conv_card = G.hand.highlighted[1]
    G.E_MANAGER:add_event(Event({func = function()
      play_sound('tarot1')
      return true end }))
    
    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
        conv_card:set_seal("poke_pink_seal", nil, true)
        return true end }))
    
    delay(0.5)
    poke_unhighlight_cards()
  end,
}

local revenant = {
  name = "revenant",
  key = "revenant",
  set = "Spectral",
  config = {extra = "Silver", max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_silver_seal', set = 'Other'}
  end,
  pos = { x = 2, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local conv_card = G.hand.highlighted[1]
    G.E_MANAGER:add_event(Event({func = function()
      play_sound('tarot1')
      return true end }))
    
    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
        conv_card:set_seal("poke_silver", nil, true)
        return true end }))
    
    delay(0.5)
    poke_unhighlight_cards()
  end,
}

local nightmare = {
  name = "nightmare",
  key = "nightmare",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 0, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    local energy = matching_energy(choice, true) or "c_poke_colorless_energy"
    if energy then
      local max = (energy == "c_poke_bird_energy") and 1 or 2
      for _ = 1, max do
        local _card = SMODS.add_card({set = "Energy", area = G.consumeables, key = energy, skip_materialize = true, soulable = true})
        _card:set_edition({negative = true}, true)
      end
    end
    remove(self, choice)
  end,
  can_use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    return not choice.ability.eternal
  end,
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

local list = {pokeball, greatball, ultraball, masterball, bird_energy, double_rainbow_energy, transformation, obituary, nightmare, revenant, megastone}
-- Keeping the order of consumables the same as before, the 12 energies get added after masterball
for i = 1, #basic_energies do
  table.insert(list, 4 + i, basic_energies[i])
end


if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "AtlasConsumablesBasic 1",
        list = list
}
