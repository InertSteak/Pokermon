local pocket_tag = {
	object_type = "Tag",
	atlas = "poketag",
	name = "pocket_tag",
	order = 25,
	pos = { x = 0, y = 0 },
  loc_txt = {      
    name = 'Pocket Tag',      
    text = {
      "Gives a free",
      "{C:pink}Mega Pocket Pack",
    } 
  }, 
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
			tag:yep("+", G.C.SECONDARY_SET.Code, function()
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
  loc_txt = {      
    name = 'Shiny Tag',      
    text = {
      "Next base edition shop",
      "Joker is free and",
      "becomes {C:colorless}Shiny{}",
    } 
  }, 
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

return {name = "Tags",
        list = {pocket_tag, shiny_tag}
}