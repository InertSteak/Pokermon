local pocket_tag = {
	object_type = "Tag",
	atlas = "poketag",
	name = "pocket_tag",
	order = 25,
	pos = { x = 0, y = 0 },
	config = { type = "new_blind_choice" },
	key = "pocket_tag",
	min_ante = 2,
  discovered = true,
	loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = { set = "Other", key = "p_poke_pokepack_mega_1", specific_vars = { 2, 5 } }
		return { vars = {} }
	end,
	apply = function(tag, context)
		if context.type == "new_blind_choice" then
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
	atlas = "poketag",
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
	apply = function(tag, context)
    if context.type == "store_joker_modify" then
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
	atlas = "poketag",
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
	apply = function(tag, context)
    if context.type == "store_joker_create" then
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
	atlas = "poketag",
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
	apply = function(tag, context)
    if context.type == "store_joker_create" then
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

return {name = "Tags",
        list = {pocket_tag, shiny_tag, stage_one_tag, safari_tag}
}