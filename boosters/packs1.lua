local pack1 = {
  name = "Pocket Pack",
	key = "pokepack_normal_1",
	kind = "Energy",
	atlas = "pokepack",
	pos = { x = 0, y = 0 },
  loc_txt =  	{
    name = "Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2# Energy Cards{}",
    },
  },
	config = { extra = 2, choose = 1 },
	cost = 4,
	order = 1,
	weight = 10,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
		return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
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
  loc_txt =  	{
    name = "Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2# Energy Cards{}",
    },
  },
	config = { extra = 2, choose = 1 },
	cost = 4,
	order = 2,
	weight = 10,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
		return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
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
  loc_txt =  	{
    name = "Jumbo Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2# Energy Cards{}",
    },
  },
	config = { extra = 4, choose = 1 },
	cost = 6,
	order = 3,
	weight = 5,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
		return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
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
  loc_txt =  	{
    name = "Mega Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2# Energy Cards{}",
    },
  },
	config = { extra = 4, choose = 2 },
	cost = 8,
	order = 4,
	weight = 2.5,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
		return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}

return {name = "Pocket Packs",
        list = {pack1, pack2, pack3, pack4}
}