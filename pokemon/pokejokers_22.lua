-- Heatmor 631
-- Durant 632
-- Deino 633
local deino={
  name = "deino",
  pos = {x = 13, y = 9},
  config = {extra = {Xmult = 1.5, hand_played = 0}, evo_rqmt = 8},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, math.max(0, self.config.evo_rqmt - center.ability.extra.hand_played)}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.scoring_name == "Three of a Kind" then
      if context.before and not context.blueprint then
        card.ability.extra.hand_played = card.ability.extra.hand_played + 1
      end
      if context.joker_main then
        return {
          Xmult = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_zweilous", card.ability.extra.hand_played, self.config.evo_rqmt)
  end,
  attributes = {"xmult", "hand_type", "trigger_evo"},
}
-- Zweilous 634
local zweilous={
  name = "zweilous",
  pos = {x = 0, y = 10},
  config = {extra = {Xmult = 2, hand_played = 0}, evo_rqmt = 10},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, math.max(0, self.config.evo_rqmt - center.ability.extra.hand_played)}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.scoring_name == "Three of a Kind" then
      if context.before and not context.blueprint then
        card.ability.extra.hand_played = card.ability.extra.hand_played + 1
      end
      if context.joker_main then
        return {
          Xmult = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_hydreigon", card.ability.extra.hand_played, self.config.evo_rqmt)
  end,
  attributes = {"xmult", "hand_type", "trigger_evo"},
}
-- Hydreigon 635
local hydreigon={
  name = "hydreigon",
  pos = {x = 1, y = 10},
  config = {extra = {Xmult = 3.33, Xmult_mod = 0.33}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
    if context.destroy_card and context.scoring_name == "Three of a Kind" and not context.blueprint
        and context.cardarea == 'unscored' then
      return {
        remove = true
      }
    end
    if context.remove_playing_cards and not context.blueprint then
      for _ = 1, #context.removed do
        SMODS.scale_card(card, {
          ref_value = 'Xmult',
          scalar_value = 'Xmult_mod',
        })
      end
    end
  end,
  attributes = {"xmult", "hand_type", "destroy_card", "scaling"},
}
-- Larvesta 636
-- Volcarona 637
-- Cobalion 638
-- Terrakion 639
-- Virizion 640
-- Tornadus 641
-- Thundurus 642
-- Reshiram 643
-- Zekrom 644
-- Landorus 645
-- Kyurem 646
-- Keldeo 647
-- Meloetta 648
-- Genesect 649
-- Chespin 650
-- Quilladin 651
-- Chesnaught 652
-- Fennekin 653
-- Braixen 654
-- Delphox 655
-- Froakie 656
-- Frogadier 657
-- Greninja 658
-- Bunnelby 659
local bunnelby = {
	name = "bunnelby",
	--pos = {x = 26, y = 43},
	config = {extra = {num= 1, dem = 2, triggers = 0}, evo_rqmt = 8},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'bunnelby')
	  return {vars = {num, dem, math.max(self.config.evo_rqmt - card.ability.extra.triggers, 0)}}
	end,
	rarity = 1, --Common
	cost = 6,
	stage = "Basic",
	ptype = "Colorless",
	gen = 6,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	
	calculate = function(self, card, context)
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then 
     if G.deck and G.deck.cards then
			for i, drawnCard in ipairs(SMODS.drawn_cards) do
				local trigger = true
				for k, v in pairs(G.deck.cards) do
					if drawnCard:get_id() == v:get_id() then
						trigger = false
						break
					end
				end
				if trigger == true then 
					card.ability.extra.triggers = card.ability.extra.triggers + 1
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
						if SMODS.pseudorandom_probability(card, 'bunnelby', card.ability.extra.num, card.ability.extra.dem, 'bunnelby') then
							 G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        SMODS.add_card {
                            set = 'Tarot',
												}
                        G.GAME.consumeable_buffer = 0
                        return true
                    end)
                }))
						end
					end
					return {
						message = 'Dig!',
						colour = G.C.ORANGE
					}
				end
			end
     end
   end
	return scaling_evo (self, card, context, "j_poke_diggersby", card.ability.extra.triggers, self.config.evo_rqmt)
	end,
}
-- Diggersby 660
local diggersby = {
	name = "diggersby",
	--pos = {x = 28, y = 43},
	config = {extra = {num= 1, dem = 2, Xmult = 1, Xmult_mod = 0.05}},
	loc_vars = function(self, info_queue, card)
		type_tooltip(self, info_queue, card)
		local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'diggesby')
	  return {vars = {num, dem, card.ability.extra.Xmult, card.ability.extra.Xmult_mod}}
	end,
	rarity = "poke_safari", 
	cost = 7,
	stage = "One",
	ptype = "Earth",
	gen = 6,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,
	eternal_compat = true,
	
	calculate = function(self, card, context)
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then 
     if G.deck and G.deck.cards then
			for i, drawnCard in ipairs(SMODS.drawn_cards) do
				local trigger = true
				for k, v in pairs(G.deck.cards) do
					if drawnCard:get_id() == v:get_id() then
						trigger = false
						break
					end
				end
				if trigger == true then 
					card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
						if SMODS.pseudorandom_probability(card, 'diggersby', card.ability.extra.num, card.ability.extra.dem, 'diggersby') then
							 G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        SMODS.add_card {
                            set = 'Tarot',
												}
                        G.GAME.consumeable_buffer = 0
                        return true
                    end)
                }))
						end
					end
					return {
						message = 'Dig!',
						colour = G.C.ORANGE
					}
				end
			end
     end
   end
	 if context.joker_main and card.ability.extra.Xmult > 1 then
		return {
			xmult = card.ability.extra.Xmult
		}
	 end
	 
	end,
}

return {name = "Pokemon Jokers 631-660", 
        list = {deino, zweilous, hydreigon, bunnelby, diggersby},
}
