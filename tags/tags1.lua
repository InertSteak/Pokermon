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

return {name = "Tags",
        list = {pocket_tag}
}