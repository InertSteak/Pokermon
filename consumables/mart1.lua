local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "Item",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
  end,
  pos = { x = 0, y = 3 },
  atlas = "Mart",
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
  atlas = "Mart",
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
  atlas = "Mart",
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
  atlas = "Mart",
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

local grass_energy = {
  name = "grass_energy",
  key = "grass_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 0, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Grass",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fire_energy = {
  name = "fire_energy",
  key = "fire_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 1, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Fire",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local water_energy = {
  name = "water_energy",
  key = "water_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 2, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Water",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local lightning_energy = {
  name = "lightning_energy",
  key = "lightning_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 3, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Lightning",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local psychic_energy = {
  name = "psychic_energy",
  key = "psychic_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 4, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Psychic",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fighting_energy = {
  name = "fighting_energy",
  key = "fighting_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 5, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Fighting",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local colorless_energy = {
  name = "colorless_energy",
  key = "colorless_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 6, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Colorless",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local darkness_energy = {
  name = "darkness_energy",
  key = "darkness_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 7, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Dark",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local metal_energy = {
  name = "metal_energy",
  key = "metal_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 8, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Metal",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fairy_energy = {
  name = "fairy_energy",
  key = "fairy_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 9, y = 0 },
  atlas = "Mart",
  cost = 4,
  etype = "Fairy",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local dragon_energy = {
  name = "dragon_energy",
  key = "dragon_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 0, y = 1 },
  atlas = "Mart",
  cost = 4,
  etype = "Dragon",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local earth_energy = {
  name = "earth_energy",
  key = "earth_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 1, y = 1 },
  atlas = "Mart",
  cost = 3,
  etype = "Earth",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local transformation = {
  name = "transformation",
  key = "transformation",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max}}
  end,
  pos = { x = 2, y = 1 },
  atlas = "Mart",
  cost = 4,
  etype = "Trans",
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.cards and #G.jokers.cards > 0 then
      local joker = G.jokers.cards[1]
      if joker.ability and joker.ability.extra and type(joker.ability.extra) == "table" and joker.ability.extra.ptype then
        return true
      else
        return false
      end
    else
      return false
    end
  end,
  use = function(self, card, area, copier)
    if G.jokers.cards and #G.jokers.cards > 0 then
      local leftmost = G.jokers.cards[1]
      energy_use(self, leftmost, area, copier)
      local highest = get_highest_evo(leftmost)
      if highest and type(highest) == "string" then
        local forced_key = "j_poke_"..highest
        local context = {}
        evolve(leftmost, leftmost, context, forced_key)
      end
    end
  end
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
  atlas = "Mart",
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
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
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
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local victims = {}
    for k, v in pairs(G.jokers.cards) do
      if v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype and not v.ability.eternal then
        table.insert(victims, v)
      end
    end
    if #victims > 0 then
      local victim = pseudorandom_element(victims, pseudoseed("nightmare"))
      local context = {}
      remove(victim, victim, context)
    end
    for i= 1, 3 do
      local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  can_use = function(self, card)
    for k, v in pairs(G.jokers.cards) do
      if v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype then
        return true
      end
    end
    return false
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
  atlas = "Mart",
  cost = 3,
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
		local mcheck = get_m_jokers()
		if (mcheck + #find_joker('Jolly Joker')) > 0 then
			return true
		end
		return false
	end,
}

if pokermon_config.jokers_only then
  pokeball.set = "Tarot"
  pokeball.pos.y = 2
  greatball.set = "Tarot"
  greatball.pos.y = 2
  ultraball.pos.y = 2
  masterball.pos.y = 2
end

local list = {pokeball, greatball, ultraball, masterball, grass_energy, fire_energy, water_energy, lightning_energy, psychic_energy, fighting_energy, colorless_energy, darkness_energy, metal_energy,
        fairy_energy, dragon_energy, earth_energy, transformation, obituary, nightmare}

if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "Mart 1",
        list = list
}
