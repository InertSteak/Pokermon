-- Klinklang 601
-- Tynamo 602
-- Eelektrik 603
-- Eelektross 604
-- Elgyem 605
local elgyem={
  name = "elgyem",
  pos = {x = 13, y = 7},
  config = {extra = {top_planets = 5,  current_planet_count = 0}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    end
    return {vars = {card.ability.extra.top_planets, card.ability.extra.current_planet_count, self.config.evo_rqmt}}
  end,
  designer = "bayleef0909",
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local temp_hands = {}
      local sort_function = function(hand1, hand2) return hand1.level > hand2.level end
      for k, v in pairs(G.GAME.hands) do
        if v.visible then
          local hand = v
          hand.handname = k
          table.insert(temp_hands, hand)
        end
      end
      table.sort(temp_hands, sort_function)

      local highest_level_hands = {}
      for i, n in ipairs(temp_hands) do
        if i <= card.ability.extra.top_planets then
          table.insert(highest_level_hands, n)
        end
      end
      
      local _hand =  pseudorandom_element(highest_level_hands, pseudoseed('elgyem'))
      local _planet = nil
      for x, y in pairs(G.P_CENTER_POOLS.Planet) do
        if y.config.hand_type == _hand.handname then
          _planet = y.key
          break
        end
      end
      
      local _card = create_card('Planet', G.consumeables, nil, nil, nil, nil, _planet)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
    end
    return scaling_evo(self, card, context, "j_poke_beheeyem", card.ability.extra.current_planet_count, self.config.evo_rqmt)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local uniques = {}
      for i = 1, #G.consumeables.cards do
        local unique = true
        for k, v in pairs(uniques) do
          if v.ability.name == G.consumeables.cards[i].ability.name then
            unique = false
            break
          end
        end

        if unique and G.consumeables.cards[i].ability.set == 'Planet' then
          uniques[#uniques + 1] = G.consumeables.cards[i]
        end
      end
      card.ability.extra.current_planet_count = #uniques
    end
  end,
}
-- Beheeyem 606
local beheeyem={
  name = "beheeyem",
  pos = {x = 0, y = 8},
  config = {extra = {top_planets = 3, boosters_to_open = 9}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    end
    return {vars = {center.ability.extra.top_planets, center.ability.extra.boosters_to_open}}
  end,
  designer = "bayleef0909",
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local temp_hands = {}
      local sort_function = function(hand1, hand2) return hand1.level > hand2.level end
      for k, v in pairs(G.GAME.hands) do
        if v.visible then
          local hand = v
          hand.handname = k
          table.insert(temp_hands, hand)
        end
      end
      table.sort(temp_hands, sort_function)

      local highest_level_hands = {}
      for i, n in ipairs(temp_hands) do
        if i <= card.ability.extra.top_planets then
          table.insert(highest_level_hands, n)
        end
      end
      
      local _hand =  pseudorandom_element(highest_level_hands, pseudoseed('elgyem'))
      local _planet = nil
      for x, y in pairs(G.P_CENTER_POOLS.Planet) do
        if y.config.hand_type == _hand.handname then
          _planet = y.key
          break
        end
      end
      
      local _card = create_card('Planet', G.consumeables, nil, nil, nil, nil, _planet)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
    end
    if context.open_booster then
      local added = false
      local telescope_in_shop = false
      local observatory_in_shop = false
      if not (G.GAME.used_vouchers.v_telescope and G.GAME.used_vouchers.v_observatory) and not (card.ability.extra.boosters_to_open == 1 and not (G.shop_vouchers and G.shop_vouchers.cards)) then
        card.ability.extra.boosters_to_open = card.ability.extra.boosters_to_open - 1
      end
      if card.ability.extra.boosters_to_open == 0 then
        card.ability.extra.boosters_to_open = 9
        if G.shop_vouchers and G.shop_vouchers.cards then
          for i = 1, #G.shop_vouchers.cards do
            if G.shop_vouchers.cards[i].ability.name == "Telescope" then
              telescope_in_shop = true
            end
            if G.shop_vouchers.cards[i].ability.name == "Observatory" then
              observatory_in_shop = true
            end
          end
          if not G.GAME.used_vouchers.v_telescope and not telescope_in_shop then
            G.shop_vouchers.config.card_limit = G.shop_vouchers.config.card_limit + 1
            local _card = Card(G.shop_vouchers.T.x + G.shop_vouchers.T.w/2,
            G.shop_vouchers.T.y, G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS['v_telescope'],{bypass_discovery_center = true, bypass_discovery_ui = true})
            create_shop_card_ui(_card, 'Voucher', G.shop_vouchers)
            _card:start_materialize()
            G.shop_vouchers:emplace(_card)
            added = true
          end
          if G.GAME.used_vouchers.v_telescope and not G.GAME.used_vouchers.v_observatory and not observatory_in_shop then
            G.shop_vouchers.config.card_limit = G.shop_vouchers.config.card_limit + 1
            local _card = Card(G.shop_vouchers.T.x + G.shop_vouchers.T.w/2,
            G.shop_vouchers.T.y, G.CARD_W, G.CARD_H, G.P_CARDS.empty, G.P_CENTERS['v_observatory'],{bypass_discovery_center = true, bypass_discovery_ui = true})
            create_shop_card_ui(_card, 'Voucher', G.shop_vouchers)
            _card:start_materialize()
            G.shop_vouchers:emplace(_card)
            added = true
          end
        end
        if added then card:juice_up() end
      end
    end
  end
}
-- Litwick 607
local litwick={
  name = "litwick",
  pos = {x = 1, y = 8},
  config = {extra = {mult = 3, money_minus = 1, sell_goal = 7}, evo_rqmt = 13},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_drain'}
    end
    return {vars = {center.ability.extra.money_minus, self.config.evo_rqmt, center.sell_cost, center.ability.extra.mult, center.ability.extra.sell_goal}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Mult = card.ability.extra.mult
        if card.sell_cost >= card.ability.extra.sell_goal then
          Mult = 3 * card.ability.extra.mult
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
          colour = G.C.MULT,
          mult_mod = Mult
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local adjacent = poke_get_adjacent_jokers(card)
      for i = 1, #adjacent do 
        poke_drain(card, adjacent[i], card.ability.extra.money_minus)
      end
    end
    return scaling_evo(self, card, context, "j_poke_lampent", card.sell_cost, self.config.evo_rqmt)
  end
}
-- Lampent 608
local lampent={
  name = "lampent",
  pos = {x = 2, y = 8},
  config = {extra = {money_minus = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_drain'}
    end
    return {vars = {center.ability.extra.money_minus, center.sell_cost}}
  end,
  rarity = 3,
  cost = 8,
  item_req = "duskstone",
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.sell_cost}},
          colour = G.C.MULT,
          mult_mod = card.sell_cost
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local adjacent = poke_get_adjacent_jokers(card)
      for i = 1, #G.jokers.cards do 
        if G.jokers.cards[i] ~= card then
          poke_drain(card, G.jokers.cards[i], card.ability.extra.money_minus)
        end
      end
    end
    return item_evo(self, card, context, "j_poke_chandelure")
  end
}
-- Chandelure 609
local chandelure={
  name = "chandelure",
  pos = {x = 3, y = 8},
  config = {extra = {Xmult_multi = 1.3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.sell_cost}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.sell_cost}}, 
          colour = G.C.MULT,
          mult_mod = card.sell_cost
        }
      end
    end
    if context.other_joker and context.other_joker.config and context.other_joker.sell_cost < 2 and context.other_joker.ability.set == 'Joker' and not context.post_trigger then
        G.E_MANAGER:add_event(Event({
          func = function()
              context.other_joker:juice_up(0.5, 0.5)
              return true
          end
        })) 
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_multi
        }
    end
  end
}
-- Axew 610
-- Fraxure 611
-- Haxorus 612
-- Cubchoo 613
-- Beartic 614
-- Cryogonal 615
-- Shelmet 616
-- Accelgor 617
-- Stunfisk 618
-- Mienfoo 619
-- Mienshao 620
-- Druddigon 621
-- Golett 622
local golett={
  name = "golett",
  pos = {x = 2, y = 9},
  config = {extra = {hazards = 4, Xmult_multi = 1.2, rounds = 5, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    -- just to shorten function
    local abbr = center.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'golett')
    return {vars = {abbr.hazards, abbr.Xmult_multi, abbr.rounds, num, dem}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  hazard_poke = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.hand then
      if SMODS.has_enhancement(context.other_card, "m_poke_hazard") or SMODS.pseudorandom_probability(card, 'golett', card.ability.extra.num, card.ability.extra.dem, 'golett') then
        if context.other_card.debuff then
            return {
                message = localize('k_debuffed'),
                colour = G.C.RED,
                card = card,
            }
        else
            return {
                x_mult = card.ability.extra.Xmult_multi,
                card = card
            }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_golurk")
  end,
}
-- Golurk 623
local golurk={
  name = "golurk",
  pos = {x = 3, y = 9},
  config = {extra = {hazards = 4, interval = 3, Xmult_multi = 1.4, num = 1, dem = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    -- just to shorten function
    local abbr = center.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'golurk')
    return {vars = {abbr.hazards, abbr.Xmult_multi, num, dem}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  hazard_poke = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.hand then
      if SMODS.has_enhancement(context.other_card, "m_poke_hazard") or SMODS.pseudorandom_probability(card, 'golurk', card.ability.extra.num, card.ability.extra.dem, 'golurk') then
        if context.other_card.debuff then
            return {
                message = localize('k_debuffed'),
                colour = G.C.RED,
                card = card,
            }
        else
            return {
                x_mult = card.ability.extra.Xmult_multi,
                card = card
            }
        end
      end
    end
  end,
}
-- Pawniard 624
local pawniard={
  name = "pawniard",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 1,Xmult_mod = 0.25,}, evo_rqmt = 2},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, self.config.evo_rqmt}}
  end,
  rarity = 3,
  cost = 7,
  gen = 5,
  stage = "Basic",
  ptype = "Metal",
  atlas = "Pokedex5",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards and not context.blueprint then
        local face_cards = 0
        for _, removed_card in ipairs(context.removed) do
            if removed_card:is_face() then face_cards = face_cards + 1 end
        end
        if face_cards > 0 then
            card.ability.extra.Xmult = card.ability.extra.Xmult + face_cards * card.ability.extra.Xmult_mod
            return { message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult}}, colour = G.C.XMULT }
        end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_bisharp", card.ability.extra.Xmult, self.config.evo_rqmt)
  end,
}
-- Bisharp 625
local bisharp={
  name = "bisharp",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 1,Xmult_mod = 0.25,kings_destroyed = 0}, evo_rqmt = 3},
  loc_txt = {
    name = "Bisharp",
    text = {
      "Gains {X:red,C:white}X#2#{} Mult when a",
      "{C:attention}face{} card is destroyed",
      "{br:2}ERROR - CONTACT STEAK",
      "If first played hand is a",
      "single {C:attention}face{} card, destroy it",
      "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
      "{C:inactive,s:0.8}(Evolves after destroying {C:attention,s:0.8}#3#{C:inactive,s:0.8} Kings)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, math.max(0, self.config.evo_rqmt - center.ability.extra.kings_destroyed)}}
  end,
  rarity = "poke_safari",
  cost = 9,
  gen = 5,
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex5",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local eval = function() return G.GAME.current_round.hands_played == 0 end
      juice_card_until(card, eval, true)
    end
    
    if context.remove_playing_cards and not context.blueprint then
        local face_cards = 0
        for _, removed_card in ipairs(context.removed) do
            if removed_card:is_face() then face_cards = face_cards + 1 end
            if removed_card:get_id() == 13 then card.ability.extra.kings_destroyed = card.ability.extra.kings_destroyed + 1 end
        end
        if face_cards > 0 then
            card.ability.extra.Xmult = card.ability.extra.Xmult + face_cards * card.ability.extra.Xmult_mod
            return { message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult}}, colour = G.C.XMULT }
        end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.final_scoring_step and #context.full_hand == 1 and context.full_hand[1]:is_face() and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      context.full_hand[1].bisharp_remove = card
      card:juice_up()
    end
    if context.destroy_card and context.destroy_card.bisharp_remove == card and not context.blueprint then
      context.destroy_card.to_be_removed_by = nil
      return {
        remove = true
      }
    end
    return scaling_evo(self, card, context, "j_poke_kingambit", card.ability.extra.kings_destroyed, self.config.evo_rqmt)
  end,
}
-- Bouffalant 626
-- Rufflet 627
-- Braviary 628
-- Vullaby 629
-- Mandibuzz 630
return {name = "Pokemon Jokers 601-630", 
        list = {elgyem, beheeyem, litwick, lampent, chandelure, golett, golurk, pawniard, bisharp},
}
