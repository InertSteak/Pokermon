local create_energy = function(self, card)
  if pseudoseed('rainbow') < .10 then
    return create_card("Spectral", G.pack_cards, nil, nil, true, true, 'c_poke_double_rainbow_energy', nil)
  end
  local match_type = pseudorandom(pseudoseed('match'))
  if match_type > .50 and #G.jokers.cards > 0 then
    local energy_types = {}
    for l, v in pairs(G.jokers.cards) do
      local match = matching_energy(v)
      if match and not next(SMODS.find_card(match)) then
        table.insert(energy_types, match)
      end
    end
    if #energy_types > 0 then
      local energy = pseudorandom_element(energy_types, pseudoseed('match'))
      return create_card("Energy", G.pack_cards, nil, nil, true, true, energy, nil)
    end
  end
  return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
end

local create_item = function(self, card)
  local item_key = nil
  local evo_item_chance = pseudorandom(pseudoseed('match'))
  if evo_item_chance > .92 then
    local evo_item_keys = {}
    for k, v in pairs(G.jokers.cards) do
      if v.config.center.item_req then
        if type(v.config.center.item_req) == "table" then
          item_key = "c_poke_"..pseudorandom_element(v.config.center.item_req, pseudoseed('match'))
          if not next(SMODS.find_card(item_key)) then
            local already_created = nil
            for k, v in pairs(self.config.c_keys) do
              if v == item_key then
                already_created = true
              end
            end
            if not already_created then
              table.insert(evo_item_keys, item_key)
            end
          end
        else
          item_key = "c_poke_"..v.config.center.item_req
          if not next(SMODS.find_card(item_key)) then
            local already_created = nil
            for k, v in pairs(self.config.c_keys) do
              if v == item_key then
                already_created = true
              end
            end
            if not already_created then
              table.insert(evo_item_keys, item_key)
            end
          end
        end
      end
    end
    if #evo_item_keys > 0 then
      return create_card("Item", G.pack_cards, nil, nil, true, true, pseudorandom_element(evo_item_keys, pseudoseed('match')), nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
  end
  return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
end

local create_pocket_card = function(self, card, i)
    if i == 1 then
      return create_energy(self, card)
    elseif i == 2 and card.from_tag and G.GAME.round_resets.ante >= 5 and not next(SMODS.find_card('c_poke_megastone')) then
      local mega = pseudorandom(pseudoseed('pocket'))
      if mega > .75 then
        return create_card("Item", G.pack_cards, nil, nil, true, true, 'c_poke_megastone', nil)
      else
        return create_item(self, card)
      end
    else
      return create_item(self, card)
    end
end

local pocket_background = function(self)
  ease_background_colour{new_colour = G.ARGS.LOC_COLOURS.pocket, contrast = 3}
end
local pocket_particle = function(self)
  G.booster_pack_sparkles = Particles(1, 1, 0,0, {
    timer = 0.015,
    scale = 0.1,
    initialize = true,
    lifespan = 3,
    speed = 0.2,
    padding = -1,
    attach = G.ROOM_ATTACH,
    colours = {G.C.WHITE, lighten(G.C.RED, 0.2)},
    fill = true
  })
  G.booster_pack_sparkles.fade_alpha = 1
  G.booster_pack_sparkles:fade(1, 0)
end

local pack1 = {
  name = "Pocket Pack",
	key = "pokepack_normal_1",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 0, y = 0 },
	config = { extra = 4, choose = 1, c_keys = {}},
	cost = 4,
	order = 1,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack2 = {
	name = "Pocket Pack",
	key = "pokepack_normal_2",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 1, y = 0 },
	config = { extra = 4, choose = 1, c_keys = {} },
	cost = 4,
	order = 2,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack3 = {
	name = "Jumbo Pocket Pack",
	key = "pokepack_jumbo_1",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 2, y = 0 },
	config = { extra = 6, choose = 1, c_keys = {} },
	cost = 6,
	order = 3,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack4 = {
	name = "Mega Pocket Pack",
	key = "pokepack_mega_1",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 3, y = 0 },
	config = { extra = 6, choose = 2, c_keys = {} },
	cost = 8,
	order = 4,
	weight = 0.25,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack5 = {
  name = "Pocket Pack",
	key = "pokepack_normal_3",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 0, y = 1 },
	config = { extra = 4, choose = 1, c_keys = {}},
	cost = 4,
	order = 1,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack6 = {
	name = "Pocket Pack",
	key = "pokepack_normal_4",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 1, y = 1 },
	config = { extra = 4, choose = 1, c_keys = {} },
	cost = 4,
	order = 2,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack7 = {
	name = "Jumbo Pocket Pack",
	key = "pokepack_jumbo_2",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 2, y = 1 },
	config = { extra = 6, choose = 1, c_keys = {} },
	cost = 6,
	order = 3,
	weight = 1,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack8 = {
	name = "Mega Pocket Pack",
	key = "pokepack_mega_2",
	kind = "Energy",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 3, y = 1 },
	config = { extra = 6, choose = 2, c_keys = {} },
	cost = 8,
	order = 4,
	weight = 0.25,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local created_card = create_pocket_card(self, card, i)
    self.config.c_keys[#self.config.c_keys + 1] = created_card.config.center_key
    if i == self.config.extra + (G.GAME.extra_pocket_picks or 0) then self.config.c_keys = {} end
    return created_card
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_pocket_pack",
}

local wish_pack = {
	name = "Wish Pack",
	key = "pokepack_wish_pack",
	kind = "Spectral",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 4, y = 0 },
	config = { extra = 6, choose = 1 },
	cost = 999,
	order = 4,
	weight = 0,
  draw_hand = false,
  unlocked = true,
  discovered = true,
  no_collection = true,
	create_card = function(self, card, i)

    -- force pack_choices to 1
    G.GAME.pack_choices = 1

    local jirachi_cards = {'c_poke_fake_banker', 'c_poke_fake_booster', 'c_poke_fake_power', 'c_poke_fake_copy', 'c_poke_fake_fixer', 'c_poke_fake_masterball', }
    local temp_card = {area = G.pack_cards, key = jirachi_cards[1 + (i-1)%6], no_edition = true, skip_materialize = true}
    if not G.P_CENTERS[temp_card.key] then temp_card.key = 'c_judgement' end
    return SMODS.create_card(temp_card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
  in_pool = function(self)
    return false
  end,
  ease_background_colour = function(self)
    --Copy planet packs
    ease_colour(G.C.DYN_UI.MAIN, mix_colours(G.C.SECONDARY_SET.Planet, G.C.BLACK, 0.9))
    ease_background_colour{new_colour = G.C.BLACK, contrast = 3}
  end,
  particles = function(self)
    G.booster_pack_stars = Particles(1, 1, 0,0, {
      timer = 0.07,
      scale = 0.1,
      initialize = true,
      lifespan = 15,
      speed = 0.1,
      padding = -4,
      attach = G.ROOM_ATTACH,
      colours = {G.C.WHITE, HEX('a7d6e0'), HEX('fddca0')},
      fill = true
    })
    G.booster_pack_meteors = Particles(1, 1, 0,0, {
        timer = 2,
        scale = 0.05,
        lifespan = 1.5,
        speed = 4,
        attach = G.ROOM_ATTACH,
        colours = {G.C.WHITE},
        fill = true
    })
	end,
	group_key = "k_poke_wish_pack",
}

local starter_pack = {
	name = "Starter Pack",
	key = "pokepack_starter_pack",
	kind = "Spectral",
  artist = "Catzzadilla",
	atlas = "AtlasBoosterpacksBasic",
	pos = { x = 4, y = 1 },
	config = { extra = 4, choose = 1 },
	cost = 6,
	order = 5,
	weight = 0,
  draw_hand = false,
  unlocked = true,
  discovered = true,
	create_card = function(self, card, i)
    local grass_starters = {}
    local fire_starters = {}
    local water_starters = {}
    local pseudo_starters = {}
    local pika_eevee = {}
    local pack_key = nil
    for k, v in ipairs(G.P_CENTER_POOLS["Joker"]) do
      if not poke_family_present(v) then
        if v.starter and v.ptype == "Grass" then
          grass_starters[#grass_starters + 1] = v.key
        end
        if v.starter and v.ptype == "Fire" then
          fire_starters[#fire_starters + 1] = v.key
        end
        if v.starter and v.ptype == "Water" then
          water_starters[#water_starters + 1] = v.key
        end
        if v.pseudol then
          pseudo_starters[#pseudo_starters + 1] = v.key
        end
        if v.name == "pikachu" or v.name == "eevee" then
          pika_eevee[#pika_eevee + 1] = v.key
        end
      end
    end
    
    if i == 1 and #grass_starters > 0 then
      pack_key = pseudorandom_element(grass_starters, pseudoseed('grass'))
    elseif i == 2 and #fire_starters > 0 then
      pack_key = pseudorandom_element(fire_starters, pseudoseed('fire'))
    elseif i == 3 and #water_starters > 0 then
      pack_key = pseudorandom_element(water_starters, pseudoseed('water'))
    elseif i == 4 and #pika_eevee > 0 then
      pack_key = pseudorandom_element(pika_eevee, pseudoseed('pikaeevee'))
    elseif i == 5 and #pseudo_starters > 0 then
      pack_key = pseudorandom_element(pseudo_starters, pseudoseed('pseudo'))
    else
      if G.P_CENTERS['j_poke_caterpie'] then
        pack_key = 'j_poke_caterpie'
      else
        pack_key = nil
      end
    end
    
    local temp_card = {area = G.pack_cards, key = pack_key, no_edition = true, skip_materialize = true}
    return SMODS.create_card(temp_card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra} }
	end,
  in_pool = function(self)
    return false
  end,
  ease_background_colour = function(self)
     ease_background_colour{new_colour = HEX('FFFFFF'), contrast = 3}
  end,
  particles = function(self)
    G.booster_pack_stars = Particles(1, 1, 0,0, {
      timer = 0.07,
      scale = 0.1,
      initialize = true,
      lifespan = 15,
      speed = 0.1,
      padding = -4,
      attach = G.ROOM_ATTACH,
      colours = {G.C.RED, G.C.BLUE, G.C.GREEN},
      fill = true
    })
	end,
	group_key = "k_poke_starter_pack",
}

local pack_list = {pack1, pack2, pack3, pack4, pack5, pack6, pack7, pack8, wish_pack, starter_pack}

for k, v in pairs(pack_list) do
  if not v.ease_background_colour then
    v.ease_background_colour = pocket_background
    v.particles = pocket_particle
  end
end

return {name = "Pocket Packs",
        list = pack_list
}