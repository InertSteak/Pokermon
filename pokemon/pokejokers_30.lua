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
  pos = {x = 11, y = 5},
  config = {extra = {money = 1, straight_flush_played = 0, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  designer = "Lemmanade",
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex8",
  gen = 8,
  pseudol = true,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = false,
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
  pos = {x = 12, y = 5},
  config = {extra = {money = 1, total_sell_value = 0, Xmult = .01}, evo_rqmt = 40},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.total_sell_value, self.config.evo_rqmt, center.ability.extra.Xmult, 
                    1 + center.ability.extra.total_sell_value * center.ability.extra.Xmult}}
  end,
  designer = "Lemmanade",
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex8",
  gen = 8,
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
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up'), colour = G.C.MONEY})
        end
        
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = 1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult, 
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragapult", card.ability.extra.total_sell_value, self.config.evo_rqmt)
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
  pos = {x = 13, y = 5},
  config = {extra = {money = 2, total_sell_value = 0, Xmult = .03}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult, 1 + center.ability.extra.total_sell_value * center.ability.extra.Xmult}}
  end,
  designer = "Lemmanade",
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Psychic",
  atlas = "Pokedex8",
  gen = 8,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if next(context.poker_hands['Straight Flush']) and not next(find_joker('dreepy_dart')) then
          for i = 1, 2 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
              play_sound('negative', 1.5, 0.4)
              local temp_card = {set = "Joker", area = G.jokers, key = "j_poke_dreepy_dart", no_edition = true}
              local new_card = SMODS.create_card(temp_card)
              new_card:add_to_deck()
              G.jokers:emplace(new_card)
              return true end }))
          end
          delay(0.6)
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_darts_ex'), colour = G.C.MULT})
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
  pos = {x = 13, y = 8},
  config = {extra = {money = 1, suit = "Spades"}},
  no_collection = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  designer = "Lemmanade",
  rarity = "poke_safari",
  cost = 6,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex8",
  gen = 8,
  aux_poke = true,
  auto_sticker = true,
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
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local edition = {negative = true}
      card:set_edition(edition, true, true)
    end
  end
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
local wyrdeer={
  name = "wyrdeer",
  pos = {x = 0, y = 8},
  config = {extra = {scry = 2, scry_plus = 1, scry_added = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.scry, center.ability.extra.scry_plus}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex8",
  gen = 8,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry_plus
        card.ability.extra.scry_added = card.ability.extra.scry_added + card.ability.extra.scry_plus
      end
    end
    if not context.end_of_round and context.scoring_hand then
      if context.individual and context.cardarea == G.scry_view and not context.other_card.debuff then
        local highest = nil
        local highest_card = nil
        for k, v in pairs(G.scry_view.cards) do
          if not SMODS.has_no_suit(v) then
            if not highest then highest = v.base.id; highest_card = v end
            if v.base.id > highest then
              highest = v.base.id
              highest_card = v
            end
          end
        end
        if highest_card and context.other_card == highest_card then
          local Mult = 2 * highest_card.base.nominal
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}},
            message_card = context.other_card,
            colour = G.C.MULT,
            mult_mod = Mult,
            card = card,
          }
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      G.GAME.scry_amount = math.max(card.ability.extra.scry, (G.GAME.scry_amount or 0) - card.ability.extra.scry_added)
      card.ability.extra.scry_added = 0
      return {
        message = localize('k_reset'),
        colour = G.C.PURPLE
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + card.ability.extra.scry
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.scry_amount = math.max(0,(G.GAME.scry_amount or 0) - card.ability.extra.scry)
  end,
}
-- Kleavor 900
local kleavor={
  name = "kleavor", 
  pos = {x = 1, y = 8},
  config = {extra = {mult = 0, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex8",
  gen = 8,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      card.ability.extra.selected = false
      local eval = function() return not card.ability.extra.selected end
      juice_card_until(card, eval, true)
    end
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          if (sliced_card.config.center.rarity ~= 1) then
            local edition = poll_edition('aura', nil, true, true)
            local _card = create_playing_card({
                            front = pseudorandom_element(G.P_CARDS, pseudoseed('kleavor')), 
                            center = G.P_CENTERS.m_stone}, G.deck, nil, nil, {G.C.SECONDARY_SET.Enhanced})
            _card:set_edition(edition, true)
          end
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, colour = G.C.RED, no_juice = true})
      end
      card.ability.extra.selected = true
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
return {name = "Pokemon Jokers 871-900", 
        list = {dreepy, drakloak, dragapult, dreepy_dart, wyrdeer, kleavor},
}
