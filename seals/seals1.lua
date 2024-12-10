local pink_seal = {
	name = "pink_seal",
	key = "pink_seal",
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

local silver = {
	name = "silver",
	key = "silver",
	badge_colour = HEX("9AA4B7"), --item
  config = {match_amount = 2},
  loc_vars = function(self, info_queue)
      return { vars = {self.config.match_amount, } }
  end,
	atlas = "pinkseal",
  pos = {x = 0, y = 0},
	calculate = function(self, card, context)
		if context.cardarea == G.hand and not context.repetition_only then
      local matches = 0
      for k, v in ipairs(context.scoring_hand) do
        if v:get_id() == card:get_id() or card:is_suit(v.base.suit) then
          matches = matches + 1
        end
      end
      if matches >= self.config.match_amount then
        G.E_MANAGER:add_event(Event({
          func = function()
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              local _card = create_card("Item", G.consumeables, nil, nil, nil, nil, nil, nil)
              _card:add_to_deck()
              G.consumeables:emplace(_card)
              card:juice_up()
            end
            G.hand:add_to_highlighted(card, true)
            play_sound('card1', 1)
            G.FUNCS.discard_cards_from_highlighted(nil, true)
            return true
          end,
        }))
      delay(0.3)
      end
		end
	end,
}

return {name = "Pokemon Consumables",
        list = {pink_seal, silver}
}