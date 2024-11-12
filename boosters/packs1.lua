local create_pocket_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .60 then
      local match_type = pseudorandom(pseudoseed('match'))
      if match_type > .85 and #G.jokers.cards > 0 then
        local energy_types = {}
        for l, v in pairs(G.jokers.cards) do
          local match = matching_energy(v)
          if match then
            table.insert(energy_types, match)
          end
        end
        if #energy_types > 0 then
          local energy = pseudorandom_element(energy_types, pseudoseed('match'))
          return create_card("Energy", G.pack_cards, nil, nil, true, true, energy, nil)
        end
      end
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      local evo_item_chance = pseudorandom(pseudoseed('match'))
      if evo_item_chance > .95 then
        local evo_item_keys = {}
        for k, v in pairs(G.jokers.cards) do
          if v.item_req then
            if type(v.item_req) == "table" then
              table.insert(evo_item_keys, "c_poke_"..pseudorandom_element(v.item_req, pseudoseed('match')))
            else
              table.insert(evo_item_keys, "c_poke_"..v.item_req)
            end
          end
        end
        if #evo_item_keys > 0 then
          return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
        else
          return create_card("Item", G.pack_cards, nil, nil, true, true, pseudorandom_element(evo_item_keys, pseudoseed('match')), nil)
        end
      end
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
end

local pack1 = {
  name = "Pocket Pack",
	key = "pokepack_normal_1",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 0, y = 0 },
	config = { extra = 3, choose = 1},
	cost = 4,
	order = 1,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack2 = {
	name = "Pocket Pack",
	key = "pokepack_normal_2",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 1, y = 0 },
	config = { extra = 3, choose = 1 },
	cost = 4,
	order = 2,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack3 = {
	name = "Jumbo Pocket Pack",
	key = "pokepack_jumbo_1",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 2, y = 0 },
	config = { extra = 5, choose = 1 },
	cost = 6,
	order = 3,
	weight = 1.5,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack4 = {
	name = "Mega Pocket Pack",
	key = "pokepack_mega_1",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 3, y = 0 },
	config = { extra = 5, choose = 2 },
	cost = 8,
	order = 4,
	weight = 0.75,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack5 = {
  name = "Pocket Pack",
	key = "pokepack_normal_3",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 0, y = 1 },
	config = { extra = 3, choose = 1},
	cost = 4,
	order = 1,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack6 = {
	name = "Pocket Pack",
	key = "pokepack_normal_4",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 1, y = 1 },
	config = { extra = 3, choose = 1 },
	cost = 4,
	order = 2,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack7 = {
	name = "Jumbo Pocket Pack",
	key = "pokepack_jumbo_2",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 2, y = 1 },
	config = { extra = 5, choose = 1 },
	cost = 6,
	order = 3,
	weight = 1.5,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

local pack8 = {
	name = "Mega Pocket Pack",
	key = "pokepack_mega_2",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 3, y = 1 },
	config = { extra = 5, choose = 2 },
	cost = 8,
	order = 4,
	weight = 0.75,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    return create_pocket_card(self, card)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}


return {name = "Pocket Packs",
        list = {pack1, pack2, pack3, pack4, pack5, pack6, pack7, pack8}
}