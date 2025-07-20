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
-- Dottler 825
-- Orbeetle 826
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
	end
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
	end
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
}
-- Rolycoly 837
-- Carkol 838
-- Coalossal 839
-- Applin 840
return {name = "Pokemon Jokers 811-840", 
        list = {nickit, thievul, yamper, boltund},
}