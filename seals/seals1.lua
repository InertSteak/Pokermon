local check_main_scoring = function(main)
  if SMODS.version >= '1.0.0~ALPHA-1315b' then
    return main
  else
    return true
  end
end

local pink_seal = {
	name = "pink_seal",
	key = "pink_seal",
	badge_colour = HEX("FF7ABF"), --pink
	atlas = "AtlasStickersBasic",
  artist = "KatRoman",
  pos = {x = 0, y = 0},
  config = {num = 1, dem = 3},
	calculate = function(self, card, context)
		if context.cardarea == G.play and not context.repetition_only and check_main_scoring(context.main_scoring) and G.GAME.current_round.hands_played == 0 then
			G.E_MANAGER:add_event(Event({
				func = function()
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local energy_types = {}
            local _card = nil
            for l, v in pairs(G.jokers.cards) do
              local match = matching_energy(v, true)
              if match then
                table.insert(energy_types, match)
              end
            end
            if #energy_types > 0 then
              local energy = pseudorandom_element(energy_types, pseudoseed('pink'))
              _card = create_card("Energy", G.pack_cards, nil, nil, true, true, energy, nil)
              if energy == "c_poke_bird_energy" then
                card:set_seal(nil)
              end
            else
              _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
            end
						_card:add_to_deck()
						G.consumeables:emplace(_card)
            if G.GAME.modifiers.poke_pink_seal_selfdestruct
                and SMODS.pseudorandom_probability(card, 'poke_pink_seal_selfdestruct', card.ability.seal.num, card.ability.seal.dem, 'poke_pink_seal_selfdestruct') then
              card:set_seal(nil)
            end
            card:juice_up()
					end
          return true
				end,
			}))
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
      end
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
	atlas = "AtlasStickersBasic",
  artist = "KatRoman",
  pos = {x = 3, y = 1},
	calculate = function(self, card, context)
		if context.cardarea == G.hand and not context.repetition_only and context.scoring_hand and not card.ability.discarded and check_main_scoring(context.main_scoring) and not card.destroyed then
        card.ability.discarded = true
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
	end,
  draw = function(self, card, layer)
    G.shared_seals[card.seal].role.draw_major = card
    G.shared_seals[card.seal]:draw_shader('dissolve', nil, nil, nil, card.children.center)
    G.shared_seals[card.seal]:draw_shader('booster', nil, card.ARGS.send_to_shader, nil, card.children.center)
  end
}

local dna_seal = {
	name = "dna_seal",
	key = "dna_seal",
	badge_colour = HEX("f81020"), --fire
	atlas = "AtlasStickersBasic",
  pos = {x = 6, y = 1},
  config = {},
  loc_vars = function(self, info_queue, center)    
    return {vars = {}}
  end,
	calculate = function(self, card, context)
		if context.cardarea == G.play and not context.repetition_only and check_main_scoring(context.main_scoring) and #context.full_hand == 1 then
      G.playing_card = (G.playing_card and G.playing_card + 1) or 1
      local card_copied = copy_card(context.full_hand[1], nil, nil, G.playing_card)
      card_copied:add_to_deck()
      G.deck.config.card_limit = G.deck.config.card_limit + 1
      table.insert(G.playing_cards, card_copied)
      G.hand:emplace(card_copied)
      card_copied:set_seal(nil)
      card_copied.states.visible = nil
      
      local deoxys_found = SMODS.find_card('j_poke_deoxys')
      local Xmult = 0
      local Money = 0
      local Retriggers = 0
      for i = 1, #deoxys_found do
        local form = deoxys_found[i].ability.extra.form
        if form == 1 then
          Xmult = Xmult + deoxys_found[i].ability.extra.Xmult_multi
        end
        if form == 2 then
          Money = Money + deoxys_found[i].ability.extra.money_mod
        end
        if form == 3 then
          Retriggers = Retriggers + deoxys_found[i].ability.extra.retriggers
        end
      end
      
      if Xmult > 0 then
       card_copied.ability.perma_x_mult = card_copied.ability.perma_x_mult or 1
       card_copied.ability.perma_x_mult = card_copied.ability.perma_x_mult + Xmult
      end
      
      if Money > 0 then
       card_copied.ability.perma_h_dollars = card_copied.ability.perma_h_dollars or 0
       card_copied.ability.perma_h_dollars = card_copied.ability.perma_h_dollars + Money
      end
      
      if Retriggers > 0 then
       card_copied.ability.perma_repetitions = card_copied.ability.perma_repetitions or 0
       card_copied.ability.perma_repetitions = card_copied.ability.perma_repetitions + Retriggers
      end
        
      G.E_MANAGER:add_event(Event({
          func = function()
              card_copied:start_materialize()
              return true
          end
      }))
      return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          func = function() -- This is for timing purposes, it runs after the message
              G.E_MANAGER:add_event(Event({
                  func = function()
                      SMODS.calculate_context({ playing_card_added = true, cards = { card_copied } })
                      return true
                  end
              }))
          end
      }
		end
	end,
  no_collection = true,
  in_pool = function(self)
    return false
  end
}

return {name = "Pokemon Consumables",
        list = {pink_seal, silver, dna_seal}
}