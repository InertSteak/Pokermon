-- Thwackey 811
-- Rillaboom 812
-- Scorbunny 813
-- Raboot 814
-- Cinderace 815
-- Sobble 816
-- Drizzile 817
-- Inteleon 818
-- Skwovet 819
-- Greedent 820
-- Rookidee 821
-- Corvisquire 822
-- Corviknight 823
-- Blipbug 824
local blipbug = {
	name = "blipbug",
	--pos = {x = 0, y = 0},
	 config = {extra = { consumablesUsed = {}, money_mod = 3}, evo_rqmt = 4},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.money_mod, math.max(self.config.evo_rqmt - ((card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed) or 0), 0)}}
  end,
	rarity = 1, --Common
	cost = 4,
	stage = "Basic",
	ptype = "Grass",
	gen = 8,
	designer = "Thor's Girdle",
	--atlas = "",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	poke_custom_values_to_keep = {"consumablesUsed"},
	
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable.ability.set == "Tarot" then
			local unique = true
			local usedCard = context.consumeable
			for i, v in pairs(card.ability.extra.consumablesUsed) do
				if v == usedCard.config.center_key then
					unique = false
					break
				end
			end
			if unique == true then
				if not context.blueprint then
					table.insert(card.ability.extra.consumablesUsed, usedCard.config.center_key)
				end
				local earned = ease_poke_dollars(card, "blipbug", card.ability.extra.money_mod)
				return {
					message = '$'..earned,
					colour = G.C.MONEY
				}
			end
		end
		return scaling_evo(self, card, context, "j_poke_dottler", ((card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed) or 0), self.config.evo_rqmt)
	end,
}	
-- Dottler 825
local dottler = {
	name = "dottler",
	--pos = {x = 0, y = 0},
	 config = {extra = { consumablesUsed = {}, money_mod = 4}, evo_rqmt = 12},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.money_mod, math.max(self.config.evo_rqmt - ((card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed) or 0), 0)}}
  end,
	rarity = "poke_safari", 
	cost = 5,
	stage = "One",
	ptype = "Psychic",
	gen = 8,
	designer = "Thor's Girdle",
	--atlas = "",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	poke_custom_values_to_keep = {"consumablesUsed"},
	
	calculate = function(self, card, context)
		if context.using_consumeable and (context.consumeable.ability.set == "Tarot" or context.consumeable.ability.set == "Planet") then
			local unique = true
			local usedCard = context.consumeable
			for i, v in pairs(card.ability.extra.consumablesUsed) do
				if v == usedCard.config.center_key then
					unique = false
					break
				end
			end
			if unique == true then
				if not context.blueprint then
					table.insert(card.ability.extra.consumablesUsed, usedCard.config.center_key)
				end
				local earned = ease_poke_dollars(card, "dottler", card.ability.extra.money_mod)
				return {
					message = '$'..earned,
					colour = G.C.MONEY
				}
			end
		end
		return scaling_evo(self, card, context, "j_poke_orbeetle", ((card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed) or 0), self.config.evo_rqmt)
	end,
}	
-- Orbeetle 826
local orbeetle = {
	name = "orbeetle",
	--pos = {x = 0, y = 0},
	 config = {extra = { consumablesUsed = {}, money_mod = 4, mult_mod = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.money_mod, card.ability.extra.mult_mod, (((card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed) or 0) * card.ability.extra.mult_mod)}}
  end,
	rarity = "poke_safari", 
	cost = 6,
	stage = "Two",
	ptype = "Psychic",
	gen = 8,
	designer = "Thor's Girdle",
	--atlas = ""
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	poke_custom_values_to_keep = {"consumablesUsed"},
	
	calculate = function(self, card, context)
		if context.using_consumeable then
			local unique = true
			local usedCard = context.consumeable
			for i, v in pairs(card.ability.extra.consumablesUsed) do
				if v == usedCard.config.center_key then
					unique = false
					break
				end
			end
			if unique == true then
				if not context.blueprint then
					table.insert(card.ability.extra.consumablesUsed, usedCard.config.center_key)
				end
				local earned = ease_poke_dollars(card, "orbeetle", card.ability.extra.money_mod)
				return {
					message = '$'..earned,
					colour = G.C.MONEY
				}
			end
		end
		
		if context.joker_main and card.ability.extra.consumablesUsed and #card.ability.extra.consumablesUsed > 0 then
			return {
				mult = #card.ability.extra.consumablesUsed * card.ability.extra.mult_mod
			}
		end
		
	end,
}	
-- Nickit 827
local nickit={
  name = "nickit", 
  pos = {x = 3, y = 1},
  config = {extra = {money = 3, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex8",
  gen = 8,
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_thievul")
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "nickit", card.ability.extra.money, true)
	end,
  attributes = {"economy", "round_evo"},
}
-- Thievul 828
local thievul={
  name = "thievul", 
  pos = {x = 4, y = 1}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {(G.jokers and G.jokers.cards and G.jokers.cards[1] and G.jokers.cards[1] ~= center and math.min(G.jokers.cards[1].sell_cost*2, 15)) or 0}}
  end,
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex8",
  gen = 8,
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    if #G.jokers.cards > 1 and G.jokers.cards[1] ~= card then
			return ease_poke_dollars(card, "thievul", math.min(G.jokers.cards[1].sell_cost*2, 15), true)
    end
	end,
  attributes = {"economy", "sell_value"},
}
-- Gossifleur 829
-- Eldegoss 830
-- Wooloo 831
-- Dubwool 832
-- Chewtle 833
-- Drednaw 834
-- Yamper 835
local yamper={
  name = "yamper", 
  pos = {x = 11, y = 1}, 
  config = {extra = {mult = 3, money = 3, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.money, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex8",
  gen = 8,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        ease_poke_dollars(card, "yamper", card.ability.extra.money)
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_boltund")
  end,
  attributes = {"mult", "economy", "hand_type", "round_evo"},
}
-- Boltund 836
local boltund={
  name = "boltund", 
  pos = {x = 12, y = 1}, 
  config = {extra = {Xmult = 2, money = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex8",
  gen = 8,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        ease_poke_dollars(card, "boltund", card.ability.extra.money)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
  attributes = {"xmult", "economy", "hand_type"},
}
-- Rolycoly 837
-- Carkol 838
-- Coalossal 839
-- Applin 840
return {name = "Pokemon Jokers 811-840", 
        list = {blipbug, dottler, orbeetle, nickit, thievul, yamper, boltund},
}