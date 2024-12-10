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
  pos = {x = 3, y = 1},
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
            local removed = false
            local destroyed = false
            for j = 1, #G.jokers.cards do
                local eval = nil
                eval = G.jokers.cards[j]:calculate_joker({discard = true, other_card =  card, full_hand = G.hand.highlighted})
                if eval then
                  if eval.remove then removed = true end
                  card_eval_status_text(G.jokers.cards[j], 'jokers', nil, 1, nil, eval)
                end
            end
            
            if removed then
              destroyed = true
              if card.ability.name == 'Glass Card' then 
                  card:shatter()
              else
                  card:start_dissolve()
              end
              for j=1, #G.jokers.cards do
                eval_card(G.jokers.cards[j], {cardarea = G.jokers, remove_playing_cards = true, removed = card})
              end
            else 
              card.ability.discarded = true
              draw_card(G.hand, G.discard, 100, 'down', false, card)
              G.GAME.round_scores.cards_discarded.amt = G.GAME.round_scores.cards_discarded.amt + 1
            end
            
            if destroyed then 
              for j=1, #G.jokers.cards do
                  eval_card(G.jokers.cards[j], {cardarea = G.jokers, remove_playing_cards = true, removed = card})
              end
            end
            
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