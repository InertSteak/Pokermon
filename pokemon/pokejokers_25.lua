-- Volcanion 721
-- Rowlet 722
local rowlet = {
	name = "rowlet",
	--pos = {x = 2, y = 48},
	config = {extra = {money = 2, totalEarned = 0, h_size = 1, next_poker_hand = "High Card", poker_hand = "None"}, evo_rqmt = 14},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.money, abbr.h_size, abbr.poker_hand, abbr.next_poker_hand, math.max(self.config.evo_rqmt - abbr.totalEarned, 0)}}
	end,
	rarity = 2, --Uncommon
	cost = 5,
	stage = "Basic",
	ptype = "Grass",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	starter = true,
	
  calculate = function(self, card, context)
		if context.before then
			if G.hand and G.hand.cards and #G.hand.cards > 0 then
				local handname, _, poker_hands = G.FUNCS.get_poker_hand_info(G.hand.cards)
				if handname == card.ability.extra.poker_hand then 
				local earned = ease_poke_dollars(card, "rowlet", card.ability.extra.money)
					card.ability.extra.totalEarned = card.ability.extra.totalEarned + earned
					return {
						message = '$'..earned,
						colour = G.C.MONEY
					}
				end
			end
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
			card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'rowlet')
			return {
					message = localize('k_reset')
			}
		end
		return scaling_evo(self, card, context, "j_poke_dartrix", card.ability.extra.totalEarned, self.config.evo_rqmt)
	end,

	set_ability = function(self, card, initial, delay_sprites)
		local _poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'rowlet')
		_poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'rowlet')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
}
-- Dartrix 723
local dartrix = {
	name = "dartrix",
	--pos = {x = 4, y = 48},
	config = {extra = {money = 3, totalEarned = 0, h_size = 1, next_poker_hand = "High Card", poker_hand = "None"}, evo_rqmt = 21},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
		return {vars = {abbr.money, abbr.h_size, abbr.poker_hand, abbr.next_poker_hand, math.max(self.config.evo_rqmt - abbr.totalEarned, 0)}}
	end,
	rarity = "poke_safari", 
	cost = 7,
	stage = "One",
	ptype = "Grass",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	
 calculate = function(self, card, context)
		if context.before then
			if G.hand and G.hand.cards and #G.hand.cards > 0 then
				local handname, _, poker_hands = G.FUNCS.get_poker_hand_info(G.hand.cards)
				if handname == card.ability.extra.poker_hand then 
					local earned = ease_poke_dollars(card, "dartrix", card.ability.extra.money)
					card.ability.extra.totalEarned = card.ability.extra.totalEarned + earned
					return {
						message = '$'..earned,
						colour = G.C.MONEY
					}
				end
			end
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
			card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'dartrix')
			return {
					message = localize('k_reset')
			}
		end
		return scaling_evo(self, card, context, "j_poke_decidueye", card.ability.extra.totalEarned, self.config.evo_rqmt)
	end,

	set_ability = function(self, card, initial, delay_sprites)
		local _poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'dartrix')
		_poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'dartrix')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
}
-- Decidueye 724
local decidueye = {
	name = "decidueye",
	--pos = {x = 6, y = 48},
	config = {extra = {money = 4, h_size = 1, next_poker_hand = "High Card", poker_hand = "None", prev_poker_hand = "None", num = 1, dem = 2}},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
		local num, dem = SMODS.get_probability_vars(card, abbr.num, abbr.dem, 'decidueye')
	  return {vars = {abbr.money, abbr.h_size, abbr.poker_hand, abbr.next_poker_hand, abbr.prev_poker_hand, num, dem}}
	end,
	rarity = "poke_safari", 
	cost = 8,
	stage = "Two",
	ptype = "Grass",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	
	calculate = function(self, card, context)
		if context.before then
			if G.hand and G.hand.cards and #G.hand.cards > 0 then
				local handname, _, poker_hands = G.FUNCS.get_poker_hand_info(G.hand.cards)
				if handname == card.ability.extra.poker_hand then 
					local earned = ease_poke_dollars(card, "decidueye", card.ability.extra.money)
					if context.scoring_name == card.ability.extra.prev_poker_hand then
						if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
							if SMODS.pseudorandom_probability(card, 'decidueye', card.ability.extra.num, card.ability.extra.dem, 'decidueye') then
								G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
								G.E_MANAGER:add_event(Event({
									func = (function()
										SMODS.add_card {
											set = 'Spectral',
											key_append = 'poke_decidueye' -- Optional, useful for manipulating the random seed and checking the source of the creation in `in_pool`.
											}
											G.GAME.consumeable_buffer = 0
											return true
									end)
								}))
							return {
								message = localize('k_plus_spectral'),
								colour = G.C.SECONDARY_SET.Spectral
							}
							else
								return {
									message = '$'..earned,
									colour = G.C.MONEY
								}
							end
						end
					end
					return {
						message = '$'..earned,
						colour = G.C.MONEY
					}
				end
			end
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.prev_poker_hand = card.ability.extra.poker_hand
			card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
			card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'decidueye')
			return {
					message = localize('k_reset')
			}
		end
		
	end,

	set_ability = function(self, card, initial, delay_sprites)
		local _poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'decidueye')
		_poker_hands = {}
		for handname, _ in pairs(G.GAME.hands) do
			if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= card.ability.extra.next_poker_hand then
				_poker_hands[#_poker_hands + 1] = handname
			end
		end
		card.ability.extra.poker_hand = card.ability.extra.next_poker_hand
		card.ability.extra.next_poker_hand = pseudorandom_element(_poker_hands, 'decidueye')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
}
-- Litten 725
local litten = {
	name = "litten",
	--pos = {x = 8, y = 48},
	config = {extra = {mult = 0, mult_mod = 1, d_size = 1}, evo_rqmt = 10},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
		return {vars = {abbr.d_size, abbr.mult, abbr.mult_mod, self.config.evo_rqmt}}
	end,
	rarity = 2, --Uncommon
	cost = 5,
	stage = "Basic",
	ptype = "Fire",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	starter = true,
	
  calculate = function(self, card, context)
		if context.pre_discard and not context.hook then
		  local trigger = true
			local discardedHand = G.FUNCS.get_poker_hand_info(context.full_hand)
			for handname, values in pairs(G.GAME.hands) do
				if handname ~= discardedHand and (values.played or 0) > (G.GAME.hands[discardedHand].played or 0) and SMODS.is_poker_hand_visible(handname) then
					trigger = false
					break
				end
			end
			if trigger == true then
				card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
				return {
					message = "Rawr",
					colour = G.C.MULT
				}
			end
		end
		
		if context.joker_main and card.ability.extra.mult > 0 then
			return {
				mult = card.ability.extra.mult
			}
		end
		
		return scaling_evo(self, card, context, "j_poke_torracat", card.ability.extra.mult, self.config.evo_rqmt)
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}
-- Torracat 726
local torracat = {
	name = "torracat",
	--pos = {x = 10, y = 48},
	config = {extra = {mult = 0, mult_mod = 2, d_size = 1}, evo_rqmt = 24},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.d_size, abbr.mult, abbr.mult_mod, self.config.evo_rqmt}}
	end,
	rarity = "poke_safari", 
	cost = 7,
	stage = "One",
	ptype = "Fire",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	
  calculate = function(self, card, context)
		if context.pre_discard and not context.hook and not context.blueprint then
		  local trigger = true
			local discardedHand = G.FUNCS.get_poker_hand_info(context.full_hand)
			for handname, values in pairs(G.GAME.hands) do
				if handname ~= discardedHand and (values.played or 0) > (G.GAME.hands[discardedHand].played or 0) and SMODS.is_poker_hand_visible(handname) then
					trigger = false
					break
				end
			end
			if trigger == true then
				card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
				return {
					message = "Rawr!",
					colour = G.C.MULT
				}
			end
		end
		
		if context.joker_main and card.ability.extra.mult > 0 then
			return {
				mult = card.ability.extra.mult
			}
		end
		
		return scaling_evo(self, card, context, "j_poke_incineroar", card.ability.extra.mult, self.config.evo_rqmt)
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}

-- Incineroar 727
local incineroar = {
	name = "incineroar",
	--pos = {x = 12, y = 48},
	config = {extra = {money = 1, mult = 0, mult_mod = 3, d_size = 1}},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.money, abbr.d_size, abbr.mult, abbr.mult_mod}}
	end,
	rarity = "poke_safari", 
	cost = 8,
	stage = "Two",
	ptype = "Fire",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	
  calculate = function(self, card, context)
		if context.pre_discard and not context.hook and not context.blueprint then
			local discardedHand = G.FUNCS.get_poker_hand_info(context.full_hand)
			local trigger = true
			for handname, values in pairs(G.GAME.hands) do
				if handname ~= discardedHand and (values.played or 0) > (G.GAME.hands[discardedHand].played or 0) and SMODS.is_poker_hand_visible(handname) then
					trigger = false
					break
				end
			end
			if trigger == true then
				card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
				if not context.blueprint then
					local _,_, scoringCards = poke_evaluate_hand(context.full_hand, true)
					local earned = ease_poke_dollars(card, "incineroar", (card.ability.extra.money * #scoringCards))
				end
				return {
					message = 'Roar!',
					colour = G.C.MULT
				}
			end
		end
		
		if context.joker_main and card.ability.extra.mult > 0 then
			return {
				mult = card.ability.extra.mult
			}
		end
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}

-- Popplio 728
local popplio = {
	name = "popplio",
	--pos = {x = 14, y = 48},
	config = {extra = {chips = 0, chip_mod = 6, hands = 1, poker_hand = "High Card"}, evo_rqmt = 30},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.chips, abbr.chip_mod, abbr.hands, abbr.poker_hand, self.config.evo_rqmt}}
	end,
	rarity = 2, --Uncommon
	cost = 5,
	stage = "Basic",
	ptype = "Water",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	starter = true,
	
	calculate = function(self, card, context)
		if context.before and context.scoring_name == card.ability.extra.poker_hand and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
			return {
				message = "Bounce!"
			}
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'popplio')
			return {
					message = localize('k_reset')
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips
			}
		end
		return scaling_evo(self, card, context, "j_poke_brionne", card.ability.extra.chips, self.config.evo_rqmt)
	end,
	
	set_ability = function(self, card, initial, delay_sprites)
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
					if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
							_poker_hands[#_poker_hands + 1] = handname
					end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'popplio')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end,
}
-- Brionne 729
local brionne = {
	name = "brionne",
	--pos = {x = 16, y = 48},
	config = {extra = {chips = 0, chip_mod = 8, hands = 1, poker_hand = "High Card"}, evo_rqmt = 96},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.chips, abbr.chip_mod, abbr.hands, abbr.poker_hand, self.config.evo_rqmt}}
	end,
	rarity = "poke_safari", 
	cost = 7,
	stage = "One",
	ptype = "Water",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	
	calculate = function(self, card, context)
		if context.before and context.scoring_name == card.ability.extra.poker_hand and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
			return {
				message = "Bounce!"
			}
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'brionne')
			return {
					message = localize('k_reset')
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips
			}
		end
		return scaling_evo(self, card, context, "j_poke_primarina", card.ability.extra.chips, self.config.evo_rqmt)
	end,
	
	set_ability = function(self, card, initial, delay_sprites)
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
					if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
							_poker_hands[#_poker_hands + 1] = handname
					end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'brionne')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end,
}
-- Primarina 730
local primarina = {
	name = "primarina",
	--pos = {x = 18, y = 48},
	config = {extra = {chips = 0, chip_mod = 10, Xmult_mod = 1, currXmult = 1, hands = 1, poker_hand = "High Card", triggered = false}},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local abbr = card.ability.extra
	  return {vars = {abbr.chips, abbr.chip_mod, abbr.hands, abbr.currXmult, abbr.Xmult_mod, abbr.poker_hand}}
	end,
	rarity = "poke_safari", 
	cost = 8,
	stage = "Two",
	ptype = "Water",
	gen = 7,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = false,
	blueprint_compat = true,
	eternal_compat = true,
	
  calculate = function(self, card, context)
		if context.before and context.scoring_name == card.ability.extra.poker_hand and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
			card.ability.extra.triggered = true
			return {
				message = "Bounce!"
			}
		elseif context.before and context.scoring_name ~= card.ability.extra.poker_hand and not context.blueprint then
			card.ability.extra.currXmult = 1
			card.ability.extra.triggered = false
		end
		
		if context.after and not context.blueprint then
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
				if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
					_poker_hands[#_poker_hands + 1] = handname
				end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'primarina')
			if card.ability.extra.triggered == true then
				card.ability.extra.currXmult = card.ability.extra.currXmult + card.ability.extra.Xmult_mod
				card.ability.extra.triggered = false
				return {
				message = "Liquid Voice!"
				}
			end
			return {
					message = localize('k_reset')
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips,
				xmult = card.ability.extra.currXmult,
			}
		end
		
		if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
			card.ability.extra.currXmult = 1
			card.ability.extra.triggered = false
			return {
				message = localize('k_reset')
			}
		end
		
	end,

	set_ability = function(self, card, initial, delay_sprites)
			local _poker_hands = {}
			for handname, _ in pairs(G.GAME.hands) do
					if SMODS.is_poker_hand_visible(handname) and handname ~= card.ability.extra.poker_hand and handname ~= "Straight Flush" then
							_poker_hands[#_poker_hands + 1] = handname
					end
			end
			card.ability.extra.poker_hand = pseudorandom_element(_poker_hands, 'primarina')
	end,
	
	add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
    end
  end,
}
-- Pikipek 731
-- Trumbeak 732
-- Toucannon 733
-- Yungoos 734
-- Gumshoos 735
-- Grubbin 736
local grubbin={
  name = "grubbin",
  config = {extra = {mult = 3, rounds = 3}},
  pos = {x = 0, y = 1}, 
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local card_mult = card.ability.extra.mult
        if next(find_pokemon_type("Lightning")) then
          card_mult = card_mult * 3
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card_mult}}, 
          colour = G.C.MULT,
          mult_mod = card_mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_charjabug")
  end,
  attributes = {"mult", "types", "round_evo"},
}
-- Charjabug 737
local charjabug={
  name = "charjabug",
  config = {extra = {mult = 9}},
  pos = {x = 1, y = 1}, 
  rarity = 2, 
  cost = 5, 
  item_req = "thunderstone",
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    end
		return {vars = {center.ability.extra.mult, center.ability.extra.mult * #find_pokemon_type("Lightning")}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #find_pokemon_type("Lightning")
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * count}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult * count
          }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_vikavolt")
  end,
  attributes = {"mult", "types", "joker", "item_evo"},
}
-- Vikavolt 738
local vikavolt={
  name = "vikavolt",
  config = {extra = {Xmult = .75, mult = 12}},
  pos = {x = 2, y = 1}, 
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local count = #find_pokemon_type("Lightning")
      if is_type(center, "Lightning") then
        count = count - 1
      end
		return {vars = {center.ability.extra.Xmult, math.max(1, 1 + center.ability.extra.Xmult * count), center.ability.extra.mult}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #find_pokemon_type("Lightning")
        if is_type(card, "Lightning") then
          count = count - 1
        end
        return {
          message = localize("poke_thunder_ex"),
          colour = G.C.XMULT,
          Xmult_mod = math.max(1, 1 + card.ability.extra.Xmult * count),
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
  attributes = {"mult", "xmult", "types", "joker"},
}
-- Crabrawler 739
-- Crabominable 740
-- Oricorio 741
-- Cutiefly 742
-- Ribombee 743
-- Rockruff 744
local rockruff={
  name = "rockruff",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 2, even_to_score = 20, odd_to_score = 20,}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.even_to_score, center.ability.extra.odd_to_score}}
  end,
  rarity = 1,
  cost = 5,
  gen = 7,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card:is_face() then
      if poke_is_even(context.other_card) and card.ability.extra.even_to_score > 0 then
        card.ability.extra.even_to_score = card.ability.extra.even_to_score - 1
      end
      if poke_is_odd(context.other_card) and card.ability.extra.odd_to_score > 0 then
        card.ability.extra.odd_to_score = card.ability.extra.odd_to_score - 1
      end
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    local evo = scaling_evo(self, card, context, "j_poke_lycanroc_dusk", (self.config.evo_rqmt * 2) - card.ability.extra.odd_to_score - card.ability.extra.even_to_score, self.config.evo_rqmt * 2)
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_lycanroc_day", self.config.evo_rqmt - card.ability.extra.even_to_score, self.config.evo_rqmt)
    end
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_lycanroc_night", self.config.evo_rqmt - card.ability.extra.odd_to_score, self.config.evo_rqmt)
    end
    if evo then return evo end
  end,
  attributes = {"mult", "face", "condition_evo"},
}
-- Lycanroc 745
local lycanroc_day={
  name = "lycanroc_day",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 4, chip_mod = 40, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 then
        ease_hands_played(card.ability.extra.hands)
        if poke_is_even(context.other_card) then
          return {
            mult = card.ability.extra.mult,
            chips = card.ability.extra.chip_mod,
            card = card
          }
        else
          return {
            chips = card.ability.extra.chip_mod,
            card = card
          }
        end
      end
      if poke_is_even(context.other_card) then
        return {
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
  end,
  attributes = {"mult", "rank", "two", "four", "six", "eight", "ten", "hands", "chips"},
}

local lycanroc_night={
  name = "lycanroc_night",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 5, hands = 1, discards = 1, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and context.blind.boss then
      ease_hands_played(card.ability.extra.hands)
      ease_discard(card.ability.extra.discards)
      G.hand:change_size(card.ability.extra.h_size)
      G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and poke_is_odd(context.other_card) then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
  end,
  attributes = {"mult", "rank", "ace", "three", "five", "seven", "nine", "boss_blind", "hands", "discard", "hand_size"},
}

local lycanroc_dusk={
  name = "lycanroc_dusk",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 4, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card:is_face() then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.repetition and context.cardarea == G.play then
      local first_even = nil
      local first_odd = nil
      for i = 1, #context.scoring_hand do
        if poke_is_even(context.scoring_hand[i]) and not first_even then
          first_even = context.scoring_hand[i]
        end
        if poke_is_odd(context.scoring_hand[i]) and not first_odd then
          first_odd = context.scoring_hand[i]
        end
      end
      if context.other_card == first_even then  
        return {
              message = localize('k_again_ex'),
              repetitions = card.ability.extra.retriggers,
              card = card
          }
      end
      if context.other_card == first_odd then 
        return {
              message = localize('k_again_ex'),
              repetitions = card.ability.extra.retriggers,
              card = card
          }
      end
    end
  end,
  attributes = {"mult", "face", "rank", "ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "retrigger"},
}
-- Wishiwashi 746
-- Mareanie 747
-- Toxapex 748
-- Mudbray 749
-- Mudsdale 750
return {name = "Pokemon Jokers 721-750", 
        list = {rowlet, dartrix, decidueye, litten, torracat, incineroar, popplio, brionne, primarina, grubbin, charjabug, vikavolt, rockruff, lycanroc_day, lycanroc_night, lycanroc_dusk},
}
