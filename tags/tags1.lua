local pocket_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "pocket_tag",
	order = 25,
	pos = { x = 0, y = 0 },
	config = { type = "new_blind_choice" },
	key = "pocket_tag",
	min_ante = 2,
  discovered = true,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = { set = "Other", key = "p_poke_pokepack_mega_1", specific_vars = { 2, 5, 1} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_megastone
		-- No idea how 25% is being set here so i'm just passing 25 manually
		-- -gold_me
		return { vars = {25} }
	end,
	apply = function(self, tag, context)
		if context and context.type == "new_blind_choice" then
			--Might want to change that colour to something else, G.C.SECONDARY_SET.Code won't work without cryptid XD
			--I'll leave that up to you
      --Oops, meant to change that lol
			-- -Jevonn
			tag:yep("+", G.ARGS.LOC_COLOURS.item, function()
				local key = "p_poke_pokepack_mega_"..math.random(1, 2)
				local card = Card(
					G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
					G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
					G.CARD_W * 1.27,
					G.CARD_H * 1.27,
					G.P_CARDS.empty,
					G.P_CENTERS[key],
					{ bypass_discovery_center = true, bypass_discovery_ui = true }
				)
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({ config = { ref_table = card } })
				card:start_materialize()
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}

local shiny_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "shiny_tag",
	order = 26,
	pos = { x = 1, y = 0 },
	config = { type = "store_joker_modify", edition = "poke_shiny" },
	key = "shiny_tag",
	min_ante = 3,
  discovered = true,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_poke_shiny
		return { vars = {} }
	end,
	apply = function(self, tag, context)
    if context and context.type == "store_joker_modify" then
      local _applied = nil
      if not context.card.edition and not context.card.temp_edition and context.card.ability.set == 'Joker' then
        local lock = tag.ID
        G.CONTROLLER.locks[lock] = true
          context.card.temp_edition = true
            tag:yep('+', G.C.DARK_EDITION,function() 
                context.card:set_edition({poke_shiny = true}, true)
                context.card.ability.couponed = true
                context.card:set_cost()
                context.card.temp_edition = nil
                G.CONTROLLER.locks[lock] = nil
                return true
        end)
        _applied = true
        tag.triggered = true
      end
    end
	end,
}

local stage_one_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "stage_one_tag",
	order = 27,
	pos = { x = 2, y = 0 },
	config = { type = "store_joker_create" },
	key = "stage_one_tag",
	min_ante = 2,
  discovered = true,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue+1] = {set = 'Other', key = 'stage1'}
		return { vars = {} }
	end,
	apply = function(self, tag, context)
    if context and context.type == "store_joker_create" then
      local card = nil
      
      card = create_random_poke_joker("stage1tag", "One", nil, context.area)
      create_shop_card_ui(card, 'Joker', context.area)
      card.states.visible = false
      tag:yep('+', G.C.GREEN,function() 
          card:start_materialize()
          card.ability.couponed = true
          card:set_cost()
          return true
      end)
    
      tag.triggered = true
      return card
    end
	end,
}

local safari_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "safari_tag",
	order = 27,
	pos = { x = 3, y = 0 },
	config = { type = "store_joker_create" },
	key = "safari_tag",
	min_ante = 3,
  discovered = true,
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
	apply = function(self, tag, context)
    if context and context.type == "store_joker_create" then
      local card = nil
      
      card = create_random_poke_joker("safaritag", nil, "poke_safari", context.area)
      create_shop_card_ui(card, 'Joker', context.area)
      card.states.visible = false
      tag:yep('+', G.ARGS.LOC_COLOURS.safari,function() 
          card:start_materialize()
          card.ability.couponed = true
          card:set_cost()
          return true
      end)
    
      tag.triggered = true
      return card
    end
	end,
}

local jirachi_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "jirachi_tag",
	order = 999,
	pos = { x = 4, y = 0 },
	config = { type = "new_blind_choice" },
	key = "jirachi_tag",
  discovered = true,
	no_collection = true,
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
	apply = function(self, tag, context)
		if context and context.type == "new_blind_choice" then
			-- check if your jirachi still exists
			local found = false
			for _,jirachi in pairs(G.jokers.cards) do
				if (jirachi.name or jirachi.ability.name) == "jirachi" then
					found = true
					break
				end
			end
			if found then
				G.E_MANAGER:add_event(Event({
					func = function()
						local key = 'p_poke_pokepack_wish_pack'
						local card = Card(G.play.T.x + G.play.T.w/2 - G.CARD_W*1.27/2,
						G.play.T.y + G.play.T.h/2-G.CARD_H*1.27/2, G.CARD_W*1.27, G.CARD_H*1.27, G.P_CARDS.empty, G.P_CENTERS[key], {bypass_discovery_center = true, bypass_discovery_ui = true})
						card.cost = 0
						card.from_tag = true
						G.FUNCS.use_card({config = {ref_table = card}})
						card:start_materialize()
						
						for _,jirachi in pairs(G.jokers.cards) do
							if (jirachi.name or jirachi.ability.name) == "jirachi" then
								jirachi:juice_up(0.1)
								break
							end
						end
						return true
					end
				}))

				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.7,
					func = function()
						tag:remove()
						return true
					end
				}))
			else
				tag:remove()
			end
			return true
		end
	end,
  in_pool = function(self)
    --hiding this with the in_pool_function instead
    return false
  end
}

local starter_tag = {
	object_type = "Tag",
	atlas = "AtlasTags",
	name = "starter_tag",
	order = 28,
	pos = { x = 4, y = 0 },
	config = { type = "new_blind_choice" },
	key = "starter_tag",
  discovered = true,
  min_ante = 2,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = { set = "Other", key = "p_poke_pokepack_starter_pack", specific_vars = {1, 4} }
	end,
	apply = function(self, tag, context)
		if context and context.type == "new_blind_choice" then
			tag:yep("+", G.C.SECONDARY_SET.Spectral, function()
				local key = "p_poke_pokepack_starter_pack"
				local card = Card(
					G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
					G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
					G.CARD_W * 1.27,
					G.CARD_H * 1.27,
					G.P_CARDS.empty,
					G.P_CENTERS[key],
					{ bypass_discovery_center = true, bypass_discovery_ui = true }
				)
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({ config = { ref_table = card } })
				card:start_materialize()
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
  in_pool = function(self)
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
    if #grass_starters == 0 or #fire_starters == 0 or #water_starters == 0 or #pseudo_starters == 0 or #pika_eevee == 0 then
      return false
    end
  end
}

return {name = "Tags",
        list = {pocket_tag, shiny_tag, stage_one_tag, safari_tag, jirachi_tag, starter_tag}
}