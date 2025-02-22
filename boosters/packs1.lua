local create_energy = function(self, card)
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

local pack1 = {
  name = "Pocket Pack",
	key = "pokepack_normal_1",
	kind = "Energy",
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
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
	atlas = "pokepack",
	pos = { x = 4, y = 0 },
	config = { extra = 7, choose = 1 },
	cost = 999,
	order = 4,
	weight = 0.25,
  draw_hand = false,
  unlocked = true,
  discovered = true,
  no_collection = false,
	create_card = function(self, card, i)

    -- force pack_choices to 1
    G.GAME.pack_choices = 1

    local jirachi_cards = {'c_poke_fake_banker', 'c_poke_fake_booster', 'c_poke_fake_power', 'c_poke_fake_negging', 
                           'c_poke_fake_copy', 'c_poke_fake_fixer', 'c_poke_fake_masterball', }
    local temp_card = {area = G.pack_cards, key = jirachi_cards[1 + (i-1)%7], no_edition = true, skip_materialize = true}
    return SMODS.create_card(temp_card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra - 1, 1 } }
	end,
	group_key = "k_poke_wish_pack",
}


return {name = "Pocket Packs",
        list = {pack1, pack2, pack3, pack4, pack5, pack6, pack7, pack8, wish_pack}
}