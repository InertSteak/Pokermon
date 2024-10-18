local pink_seal = {
	name = "pink_seal",
	key = "pink_seal",
  loc_txt = {
    name = "Pink Seal",
    label = "Pink Seal",
    text = {
      "Creates an {C:pink}Energy{} card",
      "if it scores in the",
      "{C:attention}first hand{} of round"
    }
  },
	badge_colour = HEX("FF7ABF"), --pink
	atlas = "pinkseal",
  pos = {x = 0, y = 0},
	calculate = function(self, card, context)
		if context.cardarea == G.play and not context.repetition_only and G.GAME.current_round.hands_played == 0 then
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				func = function()
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
						local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
						_card:add_to_deck()
						G.consumeables:emplace(_card)
						card:juice_up()
					end
          return true
				end,
			}))
		end
	end,
}

return {name = "Pokemon Consumables",
        list = {pink_seal,}
}