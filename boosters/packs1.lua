local matching_energy = function(card)
  local poketype_list = {"grass", "fire", "water", "lightning", "psychic", "fighting", "colorless", "dark", "metal", "fairy", "dragon", "earth"}
  if card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype and card.ability.extra.ptype ~= "Bird" then
    if card.ability.extra.ptype == "Dark" then
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

local create_pocket_card = function(self, card)
    local card_type = pseudorandom(pseudoseed('pocket'))
    if card_type > .40 then
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
      return create_card("Item", G.pack_cards, nil, nil, true, true, nil, nil)
    end
end

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