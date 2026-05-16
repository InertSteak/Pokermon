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
-- Strange issue with certain effects that causes upside-down cards to be added to the deck, resulting in more cards in the deck than you have.
-- Unsure what causes this issue, but it happened both times I used it with Articuno. After this glitch occurs, will keep adding more face-down cards, breaking the run.
local bunnelby = {
  name = "bunnelby",
  pos = {x = 9, y = 0},
  config = {extra = {h_size = 1, deck_out = 3, deck_empty_check = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.h_size, center.ability.extra.deck_out, center.ability.extra.deck_empty_check}}
  end,
  rarity = 1,
  cost = 6,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex6",
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
  	if #G.deck.cards == 0 and not card.ability.extra.deck_empty_check then
		card.ability.extra.deck_out = card.ability.extra.deck_out - 1
		card.ability.extra.deck_empty_check = true
	end
	if #G.deck.cards > 0 and card.ability.extra.deck_empty_check then
		card.ability.extra.deck_empty_check = false
	end
	
    if context.before or context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook then
      G.E_MANAGER:add_event(Event({
        func = function()
		G.FUNCS.draw_from_hand_to_discard()
          return true
        end
      }))
      return {
        message = localize("poke_bunnelby_ex"),
      }
    end
	return deck_out_evo(self, card, context, "j_poke_diggersby", card.ability.extra.deck_out <= 0)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Diggersby 660
local diggersby={
  name = "diggersby",
  pos = {x = 10, y = 0},
  config = {extra = {h_size = 2, Xmult_mod = 0.5, times_deck_empty = 0, deck_empty_check = true}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	local Xmult = 1 + (center.ability.extra.Xmult_mod * center.ability.extra.times_deck_empty)
    return {vars = {center.ability.extra.h_size, center.ability.extra.Xmult_mod, Xmult, center.ability.extra.times_deck_empty}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Earth",
  atlas = "Pokedex6",
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = true,
    calculate = function(self, card, context)
	if #G.deck.cards == 0 and not card.ability.extra.deck_empty_check then
		card.ability.extra.times_deck_empty = card.ability.extra.times_deck_empty + 1 
		card.ability.extra.deck_empty_check = true
		card:juice_up()
		return {
          message = "Rototiller!", 
		}
	end
	if #G.deck.cards > 0 and card.ability.extra.deck_empty_check then
		card.ability.extra.deck_empty_check = false
	end
	if context.before or context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook then
      G.E_MANAGER:add_event(Event({
        func = function()
		  G.FUNCS.draw_from_hand_to_discard()
          return true
        end
      }))
    end
	if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
	local Xmult = 1 + (card.ability.extra.Xmult_mod * card.ability.extra.times_deck_empty)
		  return {
			  message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
			  colour = G.C.XMULT,
			  Xmult_mod = Xmult
        }
	end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
return {name = "Pokemon Jokers 631-660", 
        list = {deino, zweilous, hydreigon, bunnelby, diggersby},
}
