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
local rookidee = {
  name = "rookidee",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, mult_mod = 1, earned = 0}, evo_rqmt = 18},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    local evo_left = math.max(0, self.config.evo_rqmt - center.ability.extra.earned)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, evo_left}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex8", 
  blueprint_compat = true,
  calculate = function(self, card, context)
 
    if context.joker_main then
      return 
      {
        mult = card.ability.extra.mult
      }
    end

    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      for i = 1, #SMODS.drawn_cards do
        if SMODS.drawn_cards[i].config.center.set == 'Enhanced' then
          card.ability.extra.earned = card.ability.extra.earned + 1
          SMODS.scale_card(card, {
            ref_value = 'mult',
            scalar_value = 'mult_mod',
            message_colour = G.C.MULT
          })
        end
      end
    end

    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.mult = 0
      return {
        message = localize('k_reset'),
        colour = G.C.CHIPS
      }
    end

    return pokermon.scaling_evo(self, card, context, "j_poke_corvisquire", card.ability.extra.earned, self.config.evo_rqmt)
  end,
  attributes = {"mult", "reset", "trigger_evo", "enhancements"}
}


-- Corvisquire 822
local corvisquire = {
  name = "corvisquire",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, mult_mod = 2, earned = 0}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    local evo_left = math.max(0, self.config.evo_rqmt - center.ability.extra.earned)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, evo_left}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex8", 
  blueprint_compat = true,
  calculate = function(self, card, context)
 
    if context.joker_main then
      return 
      {
        mult = card.ability.extra.mult
      }
    end


    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      for i = 1, #SMODS.drawn_cards do
        if SMODS.drawn_cards[i].config.center.set == 'Enhanced' then
          card.ability.extra.earned = card.ability.extra.earned + 1
          SMODS.scale_card(card, {
            ref_value = 'mult',
            scalar_value = 'mult_mod',
            message_colour = G.C.MULT
          })
        end
      end
    end

    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.mult = 0
      return {
        message = localize('k_reset'),
        colour = G.C.CHIPS
      }
    end

    return pokermon.scaling_evo(self, card, context, "j_poke_corviknight", card.ability.extra.earned, self.config.evo_rqmt)
  end,
  attributes = {"mult", "reset", "trigger_evo", "enhancements"}
}

-- Corviknight 823
local corviknight = {
  name = "corviknight",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 9,
  stage = "Two",
  ptype = "Metal",
  atlas = "Pokedex8",
  blueprint_compat = true,
  calculate = function(self, card, context)
  
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      for i = 1, #SMODS.drawn_cards do
        if SMODS.drawn_cards[i].config.center.set == 'Enhanced' then
          SMODS.scale_card(card, {
            ref_value = 'mult',
            scalar_value = 'mult_mod',
            message_colour = G.C.MULT
          })
        end
      end
    end
    if context.cardarea == G.jokers and context.joker_main then
      if card.ability.extra.mult > 0 then
        return {
          message = "+" .. card.ability.extra.mult .. " Mult",
          mult_mod = card.ability.extra.mult,
          colour = G.C.MULT
        }
      end
    end

    if context.end_of_round and not context.repetition and not context.individual then
      card.ability.extra.mult = 0
      return {
        message = "Reset",
        colour = G.C.RED
      }
    end
  end,
  attributes = {"mult", "reset", "enhancements"}
}

local core_draw_func = G.FUNCS.draw_from_deck_to_hand
G.FUNCS.draw_from_deck_to_hand = function(e)
  core_draw_func(e)
  
  if G.jokers and G.jokers.cards then
    for _, joker in ipairs(G.jokers.cards) do
      if joker.config.center.key == "j_poke_corviknight" and not joker.debuff then
        
        if G.hand and G.hand.cards then
          local drawn_card = G.hand.cards[#G.hand.cards]
          
          if drawn_card and drawn_card.config.center and drawn_card.config.center.set == 'Enhanced' then
            -- Scale up by +3 Mult per draw
            joker.ability.extra.mult = joker.ability.extra.mult + joker.ability.extra.mult_mod
            joker:juice_up(0.3, 0.3)
          end
        end
        
      end
    end
  end
end

local core_set_debuff = Card.set_debuff
Card.set_debuff = function(self, debuff)
  if self.config.center and self.config.center.set == 'Enhanced' then
    if G.jokers and G.jokers.cards then
      for _, joker in ipairs(G.jokers.cards) do
        if joker.config.center.key == "j_poke_corviknight" and not joker.debuff then
          self.debuff = false
          return
        end
      end
    end
  end
  
  core_set_debuff(self, debuff)
end

-- Blipbug 824
-- Dottler 825
-- Orbeetle 826
-- Nickit 827
local nickit={
  name = "nickit", 
  pos = {x = 3, y = 1},
  config = {extra = {money = 3, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
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
    return pokermon.level_evo(self, card, context, "j_poke_thievul")
  end,
  calc_dollar_bonus = function(self, card)
    return pokermon.ease_poke_dollars(card, "nickit", card.ability.extra.money, true)
	end,
  attributes = {"economy", "round_evo"},
}
-- Thievul 828
local thievul={
  name = "thievul", 
  pos = {x = 4, y = 1}, 
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
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
			return pokermon.ease_poke_dollars(card, "thievul", math.min(G.jokers.cards[1].sell_cost*2, 15), true)
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
    pokermon.type_tooltip(self, info_queue, center)
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
        pokermon.ease_poke_dollars(card, "yamper", card.ability.extra.money)
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_boltund")
  end,
  attributes = {"mult", "economy", "hand_type", "round_evo"},
}
-- Boltund 836
local boltund={
  name = "boltund", 
  pos = {x = 12, y = 1}, 
  config = {extra = {Xmult = 2, money = 4}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
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
        pokermon.ease_poke_dollars(card, "boltund", card.ability.extra.money)
        return {
          Xmult = card.ability.extra.Xmult
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
        list = {rookidee, corvisquire, corviknight, nickit, thievul, yamper, boltund},
}