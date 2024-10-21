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
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 3, choose = 1},
	cost = 4,
	order = 1,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 3, choose = 1 },
	cost = 4,
	order = 2,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 5, choose = 1 },
	cost = 6,
	order = 3,
	weight = 1.5,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 5, choose = 2 },
	cost = 8,
	order = 4,
	weight = 0.75,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
  loc_txt =  	{
    name = "Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 3, choose = 1},
	cost = 4,
	order = 1,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
  loc_txt =  	{
    name = "Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 3, choose = 1 },
	cost = 4,
	order = 2,
	weight = 3,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
  loc_txt =  	{
    name = "Jumbo Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 5, choose = 1 },
	cost = 6,
	order = 3,
	weight = 1.5,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
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
  loc_txt =  	{
    name = "Mega Pocket Pack",
    text = {
        "Choose {C:attention}#1#{} of",
        "up to {C:attention}#2#",
        "{C:pink}Energy{} or {C:item}Item{} Cards{}",
    },
  },
	config = { extra = 5, choose = 2 },
	cost = 8,
	order = 4,
	weight = 0.75,
  draw_hand = true,
  unlocked = true,
  discovered = true,
	create_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
      return create_card("Energy", G.pack_cards, nil, nil, true, true, nil, nil)
    else
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
	group_key = "k_poke_pocket_pack",
}


return {name = "Pocket Packs",
        list = {pack1, pack2, pack3, pack4, pack5, pack6, pack7, pack8}
}