-- Pincurchin 871
-- Snom 872
-- Frosmoth 873
-- Stonjourner 874
-- Eiscue 875
-- Indeedee 876
-- Morpeko 877
-- Cufant 878
-- Copperajah 879
-- Dracozolt 880
-- Arctozolt 881
-- Dracovish 882
-- Arctovish 883
-- Duraludon 884
-- Dreepy 885
local dreepy={
  name = "dreepy",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, straight_flush_played = 0, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Lemmanade"}}
    return {vars = {center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex8",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      for k, v in ipairs(G.jokers.cards) do
        if v.set_cost then 
            v.ability.extra_value = (v.ability.extra_value or 0) + card.ability.extra.money
            v:set_cost()
        end
      end
      if G.hand and G.hand.cards and #G.hand.cards > 0 then
        juice_flip_hand(card)
        for i=1, #G.hand.cards do
          G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() G.hand.cards[i]:change_suit(card.ability.extra.suit);return true end }))
        end 
        juice_flip_hand(card, true)
      end
      return {
        message = localize('k_val_up'),
        colour = G.C.MONEY
      }
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight Flush']) then
        card.ability.extra.straight_flush_played = card.ability.extra.straight_flush_played + 1
      end
    end
    return scaling_evo(self, card, context, "j_poke_drakloak", card.ability.extra.straight_flush_played, 1)
  end,
}
-- Drakloak 886
local drakloak={
  name = "drakloak",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, total_sell_value = 0, sell_value_goal = 50}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Lemmanade"}}
    return {vars = {center.ability.extra.money, center.ability.extra.total_sell_value, center.ability.extra.sell_value_goal}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex8",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if next(context.poker_hands['Straight Flush']) then
          for k, v in ipairs(G.jokers.cards) do
            if v.set_cost then 
              v.ability.extra_value = (v.ability.extra_value or 0) + card.ability.extra.money
              v:set_cost()
            end
          end
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset'), colour = G.C.MONEY})
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.total_sell_value}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.total_sell_value
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragapult", card.ability.extra.total_sell_value, card.ability.extra.sell_value_goal)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local sell_cost = 0
      for i = 1, #G.jokers.cards do
          if (G.jokers.cards[i].area and G.jokers.cards[i].area == G.jokers) then
              sell_cost = sell_cost + G.jokers.cards[i].sell_cost
          end
      end
      card.ability.extra.total_sell_value = sell_cost
    end
  end
}
-- Dragapult 887
local dragapult={
  name = "dragapult",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, total_sell_value = 0, Xmult = .03}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if not center.edition or (center.edition and not center.edition.negative) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    end
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Lemmanade"}}
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult, 1 + center.ability.extra.total_sell_value * center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Psychic",
  atlas = "Pokedex8",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if next(context.poker_hands['Straight Flush']) and not next(find_joker('dreepy_dart')) then
          for i = 1, 2 do
            local temp_card = {set = "Joker", area = G.jokers, key = "j_poke_dreepy_dart", no_edition = true}
            local new_card = SMODS.create_card(temp_card)
            local edition = {negative = true}
            new_card:set_edition(edition, true)
            new_card:add_to_deck()
            G.jokers:emplace(new_card)
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_darts_ex'), colour = G.C.MULT})
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = 1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult, 
          card = card
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local sell_cost = 0
      for i = 1, #G.jokers.cards do
          if (G.jokers.cards[i].area and G.jokers.cards[i].area == G.jokers) then
              sell_cost = sell_cost + G.jokers.cards[i].sell_cost
          end
      end
      card.ability.extra.total_sell_value = sell_cost
    end
  end
}
local dreepy_dart={
  name = "dreepy_dart",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, suit = "Spades"}},
  loc_txt = {
    name = "Dreepy Dart",
    text = {
      "When sold, adds {C:money}$#1#{} of sell value",
      "to every Joker card and",
      "converts all cards {C:attention}held{}",
      "in hand to {C:spades}#2#{}",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Lemmanade"}}
    return {vars = {center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex8",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      for k, v in ipairs(G.jokers.cards) do
        if v.set_cost then 
            v.ability.extra_value = (v.ability.extra_value or 0) + card.ability.extra.money
            v:set_cost()
        end
      end
      if G.hand and G.hand.cards and #G.hand.cards > 0 then
        juice_flip_hand(card)
        for i=1, #G.hand.cards do
          G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() G.hand.cards[i]:change_suit(card.ability.extra.suit);return true end }))
        end
        juice_flip_hand(card, true)
      end
    end
  end,
}
-- Zacian 888
-- Zamazenta 889
-- Eternatus 890
-- Kubfu 891
-- Urshifu 892
-- Zarude 893
-- Regieleki 894
-- Regidrago 895
-- Glastrier 896
-- Spectrier 897
-- Calyrex 898
-- Wyrdeer 899
-- Kleavor 900
return {name = "Pokemon Jokers 871-900", 
        list = {dreepy, drakloak, dragapult, dreepy_dart},
}
