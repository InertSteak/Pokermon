--Code for pokemon jokers 121-150

-- Starmie 121
local starmie={
  name = "starmie", 
  pos = {x = 3, y = 9},
  config = {extra = {mult = 2, money_mod = 2, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.money_mod, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.dollar_buffer = 0
                return true
            end
        }))
        local earned = ease_poke_dollars(card, "starmie", card.ability.extra.money_mod, true)
        return {
          mult = card.ability.extra.mult,
          dollars = earned,
          card = card
        }
      end
    end
  end
}
-- Mr Mime 122
local mrmime={
  name = "mrmime", 
  pos = {x = 4, y = 9}, 
  config = {extra = {retriggers = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand then
      if (context.other_card == G.hand.cards[1]) and (next(context.card_effects[1]) or #context.card_effects > 1) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
-- Scyther 123
local scyther={
  name = "scyther", 
  pos = {x = 5, y = 9},
  config = {extra = {mult = 0, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_hardstone
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "hardstone",
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
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
          if (sliced_card.config.center.rarity ~= 1) and (sliced_card.config.center.rarity ~= 2) and not card.edition then
            local edition = poll_edition('wheel_of_fortune', nil, true, true)
            card:set_edition(edition, true)
          end
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, colour = G.C.RED, no_juice = true})
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
    local evo = nil
    evo = type_evo(self, card, context, "j_poke_scizor", "metal")
    if not evo then
      evo = item_evo(self, card, context, "j_poke_kleavor")
    end
    if evo then return evo end
  end
}
-- Jynx 124
local jynx={
  name = "jynx", 
  pos = {x = 6, y = 9}, 
  config = {extra = {h_size = 2, deck_size = 12}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.h_size, G.GAME.starting_deck_size + center.ability.extra.deck_size}}
  end,
  rarity = 3, 
  cost = 5, 
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.playing_card_added and not card.getting_sliced and context.cards then
      if context.cards and type(context.cards) == "table" and #context.cards > 0 then
        local cards_added = {}
        for k, v in ipairs(context.cards) do
          if type(v) == "table" then
            if v.jynx then
              v.jynx = nil
            else
              local card_to_copy = v
              local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
              copy:add_to_deck()
              G.deck.config.card_limit = G.deck.config.card_limit + 1
              table.insert(G.playing_cards, copy)
              G.deck:emplace(copy)
              card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_copied_ex')})
              copy.jynx = true
              cards_added[#cards_added] = copy
            end
          end
        end
        if cards_added then playing_card_joker_effects(cards_added); end
      end
    end
    if context.setting_blind then
      if ((G.playing_cards and #G.playing_cards or 0) >= (G.GAME.starting_deck_size + card.ability.extra.deck_size)) then
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
        card:juice_up()
      end
    end
  end,
}
-- Electabuzz 125
local electabuzz={
  name = "electabuzz", 
  pos = {x = 7, y = 9}, 
  config = {extra = {money_mod = 2, percent = 25, max = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.money_mod, center.ability.extra.percent, math.min(center.ability.extra.max, math.ceil(center.sell_cost * center.ability.extra.percent/100)), 
                    center.ability.extra.max}}
  end,
  rarity = 3, 
  cost = 8, 
  item_req = "linkcable",
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if ((context.selling_card and not context.selling_self) or (not context.repetition and not context.individual and context.end_of_round)) and not context.blueprint then
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.money_mod
      card:set_cost()
      G.E_MANAGER:add_event(Event({
        func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
        end}))
    end
    return item_evo(self, card, context, "j_poke_electivire")
  end,
  calc_dollar_bonus = function(self, card)
    local earned = math.min(card.ability.extra.max, math.ceil(card.sell_cost * card.ability.extra.percent/100))
    return ease_poke_dollars(card, "electabuzz", earned, true)
	end
}
-- Magmar 126
local magmar={
  name = "magmar", 
  pos = {x = 8, y = 9}, 
  config = {extra = {mult = 0, mult_mod = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 3, 
  cost = 7, 
  item_req = "linkcable",
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.remove_triggered = false
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES and not card.ability.extra.remove_triggered end
      juice_card_until(card, eval, true)
    end
    if context.discard and not context.blueprint then
      if G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 1 and not card.ability.extra.remove_triggered then
        card.ability.extra.remove_triggered = true
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
        return {
          remove = true
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_magmortar")
  end
}
-- Pinsir 127
local pinsir={
  name = "pinsir", 
  pos = {x = 9, y = 9},
  config = {extra = {Xmult = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        if G.hand and G.hand.cards then
          local found_ranks = {}
          for _,played_card in pairs(context.scoring_hand) do
            found_ranks[played_card:get_id()] = true
          end
          for _,hand_card in pairs(G.hand.cards) do
            if found_ranks[hand_card:get_id()] then
              return {
                message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
                colour = G.C.XMULT,
                Xmult_mod = card.ability.extra.Xmult
              }
            end
          end
        end
      end
    end
  end,
  megas = {"mega_pinsir"}
}
-- Mega Pinsir 127-1
local mega_pinsir={
  name = "mega_pinsir", 
  pos = {x = 5, y = 1},
  soul_pos = {x = 6, y = 1},
  config = {extra = {Xmult_multi = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Grass",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card.config.center == G.P_CENTERS.c_base then
        return {
          x_mult = card.ability.extra.Xmult_multi,
          card = card
        }
    end
  end
}
-- Tauros 128
local tauros={
  name = "tauros", 
  pos = {x = 10, y = 9},
  config = {extra = {Xmult_multi = 1.75, num = 1, dem = 15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'tauros')
    return {vars = {center.ability.extra.Xmult_multi, num, dem}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.other_joker and context.other_joker.config and (context.other_joker.label == "tauros" or context.other_joker.label == "taurosh" or context.other_joker.label == "miltank") then
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
    if context.reroll_shop and not context.blueprint then
      if SMODS.pseudorandom_probability(card, 'tauros', card.ability.extra.num, card.ability.extra.dem, 'tauros') then
        local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_poke_taurosh"}
        local add_card = SMODS.create_card(temp_card)
        poke_add_shop_card(add_card, card)
      end
    end
  end
}
-- Tauros-Herd 128-1
local taurosh={
  name = "taurosh",
  pos = {x = 11, y = 9},
  config = {extra = {mult = 6}},
  no_collection = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  aux_poke = true,
  auto_sticker = true,
  blueprint_compat = true, 
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
-- Magikarp 129
local magikarp={
  name = "magikarp",
  pos = {x = 12, y = 9},
  config = {extra = {rounds = 8, chips = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash', config={}}
    end
    return {vars = {center.ability.extra.rounds, center.ability.extra.chips}}
  end,
  rarity = 1, 
  cost = 2, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_gyarados")
  end
}
-- Gyarados 130
local gyarados={
  name = "gyarados", 
  pos = {x = 0, y = 10},
  config = {extra = {Xmult = 2.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
  megas = {"mega_gyarados"}
}
-- Mega Gyarados 130-1
local mega_gyarados={
  name = "mega_gyarados", 
  pos = {x = 7, y = 1},
  soul_pos = { x = 8, y = 1 },
  config = {extra = {Xmult = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Water",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.setting_blind and not card.getting_sliced then
      if not context.blueprint and context.blind.boss and not card.getting_sliced then
          G.E_MANAGER:add_event(Event({func = function()
              G.E_MANAGER:add_event(Event({func = function()
                  G.GAME.blind:disable()
                  play_sound('timpani')
                  delay(0.4)
                  return true end }))
              card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
          return true end }))
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
      G.GAME.blind:disable()
      play_sound('timpani')
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
    end
  end
}
-- Lapras 131
local lapras={
  name = "lapras",
  pos = {x = 1, y = 10},
  config = {extra = {chips = 0, chip_mod = 25}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 3, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.skip_blind and not context.blueprint and not G.GAME.lapras_skip then
      G.GAME.lapras_skip = true
      G.E_MANAGER:add_event(Event({
        trigger = "immediate",
        func = function()
          G.blind_select:remove()
          G.blind_prompt_box:remove()
          G.blind_select = nil
          delay(0.2)
          G.GAME.current_round.jokers_purchased = 0
          G.STATE = G.STATES.SHOP
          G.GAME.shop_free = nil
          G.GAME.shop_d6ed = nil
          G.STATE_COMPLETE = false
          G.GAME.current_round.used_packs = {}
          G.GAME.current_round.reroll_cost_increase = 0
          calculate_reroll_cost(true)
          return true
        end,
      }))
    end
    if context.ending_shop and not context.blueprint then
      G.GAME.lapras_skip = nil
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.chips = G.GAME.skips * card.ability.extra.chip_mod
    end
  end
}
-- Ditto 132
local ditto={
  name = "ditto", 
  pos = {x = 2, y = 10}, 
   config = {extra = {volatile = 'right'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'availability', vars = {"you have a Perishable Joker"}}
      if not center.ability.perishable then
        info_queue[#info_queue+1] = {key = 'perishable', set = 'Other', vars = {G.GAME.perishable_rounds or 1, G.GAME.perishable_rounds}}
      end
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
  end,
  rarity = 2, 
  cost = 8, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  eternal_compat = false,
  custom_pool_func = true, 
  calculate = function(self, card, context) --mostly copied from how invisible joker works
    if context.ending_shop and not context.blueprint and volatile_active(self, card, card.ability.extra.volatile) then
      local jokers = {}
      for i=1, #G.jokers.cards do 
          if G.jokers.cards[i] ~= card and G.jokers.cards[i].ability.name ~= "ditto" then
              jokers[#jokers+1] = G.jokers.cards[i]
          end
      end
      
      if #jokers > 0 then 
        local chosen_joker_key = jokers[1].config.center.key
        card.ability.perishable = true
        card.ability.perish_tally = G.GAME.perishable_rounds
        apply_type_sticker(card, "Colorless")
        return {
          message = poke_evolve(card, chosen_joker_key, nil, localize("poke_transform_success"), true)
        }
      else
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_other_jokers')})
      end
    end
  end,
  in_pool = function(self)
    if G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
      for k, v in ipairs(G.jokers.cards) do
        if v.ability.perishable then
          return false
        end
      end
    end
    if next(find_joker("Showman")) then return true end
    return true
  end
}
-- Eevee 133
local eevee={
  name = "eevee", 
  pos = {x = 3, y = 10},
  config = {extra = {Xmult = 1.33}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'eeveelution'}
    end
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 1, 
  cost = 3,
  item_req = {"waterstone", "thunderstone", "firestone", "sunstone", "moonstone", "leafstone", "icestone", "shinystone"},
  evo_list = {waterstone = "j_poke_vaporeon", thunderstone = "j_poke_jolteon", firestone = "j_poke_flareon", sunstone = "j_poke_espeon", moonstone = "j_poke_umbreon", 
              leafstone = "j_poke_leafeon", icestone = "j_poke_glaceon", shinystone = "j_poke_sylveon"},
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return item_evo(self, card, context, nil)
  end
}
-- Vaporeon 134
local vaporeon={
  name = "vaporeon", 
  pos = {x = 4, y = 10},
  config = {extra = {chips = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
        local bonus = card.ability.extra.chips
        if SMODS.has_enhancement(context.other_card, 'm_bonus') then
          bonus = bonus * 2
        end
        context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) + bonus
        return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
        }
    end
  end
}
-- Jolteon 135
local jolteon={
  name = "jolteon", 
  pos = {x = 5, y = 10},
  config = {extra = {money = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
    return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.discard and SMODS.has_enhancement(context.other_card, 'm_gold') then
      local earned = ease_poke_dollars(card, "jolteon", card.ability.extra.money, true)
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + earned
      return {
          dollars = earned,
          func = function() -- This is for timing purposes, it runs after the dollar manipulation
              G.E_MANAGER:add_event(Event({
                  func = function()
                      G.GAME.dollar_buffer = 0
                      return true
                  end
              }))
          end
      }
    end
  end
}
-- Flareon 136
local flareon={
  name = "flareon", 
  pos = {x = 6, y = 10},
  config = {extra = {Xmult_multi = 3}}, 
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and not context.end_of_round then
      local first_mult = nil
      for i=1, #G.hand.cards do
        if SMODS.has_enhancement(G.hand.cards[i], 'm_mult') then
          first_mult = G.hand.cards[i]
          break
        end
      end
      if context.other_card == first_mult then
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
  end
}
-- Porygon 137
local porygon={
  name = "porygon", 
  pos = {x = 7, y = 10},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_upgrade
    end
    return {vars = {}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "upgrade",
  joblacklist = true,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'before',
          delay = 0.0,
          func = (function()
                  local card = create_card('Energy', G.consumeables, nil, nil, nil, nil, nil, 'pory')
                  card:add_to_deck()
                  G.consumeables:emplace(card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
    end
    return item_evo(self, card, context, "j_poke_porygon2")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 1
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 1
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 1
    end
  end
}
-- Omanyte 138
local omanyte={
  name = "omanyte", 
  pos = {x = 8, y = 10},
  config = {extra = {rank = "3", money = 2, third_goal = 5, third_times = 0}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, card)
     type_tooltip(self, info_queue, card)
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(card.ability.extra.rank, 'ranks')}}
     local third_left = math.max(0, self.config.evo_rqmt - card.ability.extra.third_times)
     return {vars = {localize(card.ability.extra.rank, 'ranks'), card.ability.extra.money, third_left}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
       get_ancient_amount(context.scoring_hand, 3, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
          card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
        end
        
        if card.ability.extra.ancient_count > 2 then
          card.ability.extra.third_times = card.ability.extra.third_times + 1
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.item})
          end
        end
        
        if card.ability.extra.ancient_count > 1 then
          local earned = ease_poke_dollars(card, "omanyte", card.ability.extra.money, true)
          return {
            dollars = earned, 
            card = card
          }
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    return scaling_evo(self, card, context, "j_poke_omastar", card.ability.extra.third_times, self.config.evo_rqmt)
  end,
  generate_ui = fossil_generate_ui,
}
-- Omastar 139
local omastar={
  name = "omastar", 
  pos = {x = 9, y = 10}, 
  config = {extra = {rank = "3", money = 4, tag_created = false}},
  loc_vars = function(self, info_queue, center)
   type_tooltip(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   info_queue[#info_queue+1] = {set = 'Other', key = 'omastar_tag_pool', vars = {'Handy', 'Garbage', 'Investment', 'Economy', 'D6'}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.money, not center.ability.extra.tag_created and "("..localize('k_active_ex')..")" or ''}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
       get_ancient_amount(context.scoring_hand, 3, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
          card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
        end
        if card.ability.extra.ancient_count > 2 then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.item})
          end
        end
        if card.ability.extra.ancient_count > 3 and not card.ability.extra.tag_created then
          card.ability.extra.tag_created = true
          local tag = ''
          local tag_choice = pseudorandom('sylveon')
          if tag_choice < 1/5 then
            tag = 'tag_handy'
          elseif tag_choice < 2/5 then
            tag = 'tag_garbage'
          elseif tag_choice < 3/5 then
            tag = 'tag_investment'
          elseif tag_choice < 4/5 then
            tag = 'tag_economy'
          else
            tag = 'tag_d_six'
          end
          G.E_MANAGER:add_event(Event({
            func = (function()
                add_tag(Tag(tag))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                return true
            end)
          }))
        end
        if card.ability.extra.ancient_count > 1 then
          local earned = ease_poke_dollars(card, "omastar", card.ability.extra.money, true)
          return {
            dollars = earned, 
            card = card
          }
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.tag_created = nil
    end
  end,
  generate_ui = fossil_generate_ui,
}
-- Kabuto 140
local kabuto={
  name = "kabuto", 
  pos = {x = 10, y = 10}, 
  config = {extra = {rank = "2", chips1 = 50, chips2 = 5, chips3 = 50, third_times = 0}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, card)
   type_tooltip(self, info_queue, card)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(card.ability.extra.rank, 'ranks')}}
   local third_left = math.max(0, self.config.evo_rqmt - card.ability.extra.third_times)
   return {vars = {localize(card.ability.extra.rank, 'ranks'), card.ability.extra.chips1, card.ability.extra.chips2, card.ability.extra.chips3, third_left}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 2, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        local chips = card.ability.extra.chips1
        if card.ability.extra.ancient_count > 2 then
          card.ability.extra.third_times = card.ability.extra.third_times + 1
          chips = chips + card.ability.extra.chips3
        end
        
        if chips > 0 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
            colour = G.C.CHIPS,
            chip_mod = chips
          }
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and card.ability.extra.ancient_count > 1 then
      if context.other_card:get_id() == 2 then 
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips2
        return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_kabutops", card.ability.extra.third_times, self.config.evo_rqmt)
  end,
  generate_ui = fossil_generate_ui,
}
-- Kabutops 141
local kabutops={
  name = "kabutops", 
  pos = {x = 11, y = 10}, 
  config = {extra = {rank = "2", chips1 = 70, chips2 = 5, chips3 = 70, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
   type_tooltip(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips1, center.ability.extra.chips2, center.ability.extra.chips3, center.ability.extra.retriggers}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 2, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        local chips = card.ability.extra.chips1
        
        if card.ability.extra.ancient_count > 2 then
          chips = chips + card.ability.extra.chips3
        end
        
        if chips > 0 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
            colour = G.C.CHIPS,
            chip_mod = chips
          }
        end
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and card.ability.extra.ancient_count > 1 then
      if context.other_card:get_id() == 2 then 
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips2
        return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
        }
      end
    end
    if context.repetition and context.cardarea == G.play and card.ability.extra.ancient_count > 3 then
      if context.other_card:get_id() == 2 then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
    
    if context.after then
      card.ability.extra.ancient_count = 0
    end
  end,
  generate_ui = fossil_generate_ui,
}
-- Aerodactyl 142
local aerodactyl={
  name = "aerodactyl", 
  pos = {x = 12, y = 10},
  config = {extra = {rank = "Ace", Xmult = 2, Xmult_mod = .50, Xmult_original = 2}},
  loc_vars = function(self, info_queue, center)
     type_tooltip(self, info_queue, center)
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
     if pokermon_config.detailed_tooltips then
       info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
       info_queue[#info_queue+1] = G.P_CENTERS.m_glass
     end
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.Xmult_original = card.ability.extra.Xmult
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 14, card)
          
        if card.ability.extra.ancient_count > 2 and not context.blueprint then
          local target = nil
          for k, v in pairs(context.scoring_hand) do
            if v:get_id() == 14 and v.config.center == G.P_CENTERS.c_base then
              target = v
              break
            end
          end
          if target then
            poke_convert_cards_to(target, {mod_conv = 'm_glass'}, true, true)
          end
        end
      end
    
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        if card.ability.extra.ancient_count > 1 and not context.blueprint then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        end
        
        if card.ability.extra.ancient_count > 3 and not context.blueprint then
          card.ability.extra.Xmult = card.ability.extra.Xmult * 2
        end
        
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult_original
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
  generate_ui = fossil_generate_ui,
  megas = {"mega_aerodactyl"}
}
-- Mega Aerodactyl 142-1
local mega_aerodactyl={
  name = "mega_aerodactyl", 
  pos = {x = 9, y = 1},
  soul_pos = { x = 10, y = 1 },
  config = {extra = {rank = "Ace", Xmult_multi = 1, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
     type_tooltip(self, info_queue, center)
     local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'mega_aerodactyl')
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.Xmult_multi, num, dem}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega",
  ptype = "Earth",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card:get_id() == 14 then
      return { 
        x_mult = card.ability.extra.Xmult_multi * card.ability.extra.aces,
        card = card
      }
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local aces = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
        end
        card.ability.extra.aces = aces
      end
      if context.after then
        card.ability.extra.aces = 0
      end
    end
    if context.destroying_card and SMODS.pseudorandom_probability(card, 'mega_aerodactyl', card.ability.extra.num, card.ability.extra.dem, 'mega_aerodactyl') then
      return not context.blueprint and context.destroying_card:get_id() == 14
    end
  end,
}
-- Snorlax 143
local snorlax={
  name = "snorlax", 
  pos = {x = 0, y = 11},
  config = {extra = {Xmult_mod = 0.2, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Leftovers"}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leftovers
    end
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  joblacklist = true,
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = false,
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_leftovers')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
      return true
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      local count = find_joker('leftovers')
      if #count > 0 then
        card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_mod * #count)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.RED
        }
      end
    end
  end
}
-- Articuno 144
local articuno={
  name = "articuno", 
  pos = {x = 1, y = 11},
  soul_pos = { x = 2, y = 11},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue +1] = G.P_CENTERS.e_foil
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint and context.scoring_hand then
      local target = context.scoring_hand[1]
      local args = {edition = "e_foil", seal = SMODS.poll_seal({guaranteed = true})}
      poke_convert_cards_to(target, args, true, true)
    end
  end
}
-- Zapdos 145
local zapdos={
  name = "zapdos", 
  pos = {x = 3, y = 11},
  soul_pos = { x = 4, y = 11},
  config = {extra = {Xmult = 0.08, money_threshold = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_threshold , 
                    1 + center.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/center.ability.extra.money_threshold)}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + card.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/card.ability.extra.money_threshold)
        local can_score = nil
        if (SMODS.Mods["Talisman"] or {}).can_load then
          can_score = to_big(Xmult) > to_big(1)
        else
          can_score = Xmult > 1
        end
        if can_score then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end
}
-- Moltres 146
local moltres={
  name = "moltres", 
  pos = {x = 5, y = 11},
  soul_pos = { x = 6, y = 11},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.pre_discard and G.GAME.current_round.discards_used <= 0 and not context.hook then
      local text,disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
      update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, level=                       G.GAME.hands[text].level})
      level_up_hand(context.blueprint_card or card, text, nil, 3)
      update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used <= 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
-- Dratini 147
local dratini={
  name = "dratini", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 0, mult_mod = 1, size = 3}, evo_rqmt = 15},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size, self.config.evo_rqmt}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  gen = 1,
  pseudol = true, 
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonair", card.ability.extra.mult, self.config.evo_rqmt)
  end,
}
-- Dragonair 148
local dragonair={
  name = "dragonair", 
  pos = {x = 8, y = 11}, 
  config = {extra = {mult = 0, mult_mod = 2, size = 2}, evo_rqmt = 55},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size, self.config.evo_rqmt}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonite", card.ability.extra.mult, self.config.evo_rqmt)
  end,
}
-- Dragonite 149
local dragonite={
  name = "dragonite", 
  pos = {x = 9, y = 11},
  config = {extra = {mult = 55, retriggers = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.retriggers}} 
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.repetition and context.cardarea == G.play and context.scoring_hand and context.full_hand and #context.full_hand == 1 then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
    end
  end,
}
-- Mewtwo 150
local mewtwo={
  name = "mewtwo", 
  pos = {x = 10, y = 11},
  soul_pos = { x = 11, y = 11},
  config = {extra = {Xmult_multi = 1.2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
      if next(SMODS.find_card('c_poke_megastone')) then
        info_queue[#info_queue+1] = {set = 'Other', key = 'split_mega', vars = {"Mega Mewtwo X", "Mega Mewtwo Y"}}
      end
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    end
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if (context.end_of_round and G.GAME.blind.boss) and not context.repetition and not context.individual and not context.blueprint then
      local leftmost = G.jokers.cards[1]
      if leftmost ~= card then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        local chosen_joker = G.jokers.cards[1]
        
        if (#G.jokers.cards - 1 < G.jokers.config.card_limit and not leftmost.ability.eternal) or (#G.jokers.cards < G.jokers.config.card_limit and leftmost.ability.eternal) then
          G.E_MANAGER:add_event(Event({
            func = function()
              local _card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
              local edition = {polychrome = true}
              _card:set_edition(edition, true)
              _card.ability.card_limit = 0
              if _card.config and _card.config.center.stage and _card.config.center.stage ~= "Other" and not type_sticker_applied(_card) then
                energy_increase(_card, _card.ability.extra.ptype)
              elseif type_sticker_applied(_card) then
                energy_increase(_card, type_sticker_applied(_card))
              end
              _card:add_to_deck()
              G.jokers:emplace(_card)
              if _card.debuff then 
                _card.debuff = false 
                if _card.ability.perishable then _card.ability.perish_tally = G.GAME.perishable_rounds end
              end
              return true
            end
          }))
        end
        
        if not leftmost.ability.eternal then
          G.E_MANAGER:add_event(Event({
            remove(self, G.jokers.cards[1], context)
          }))
        end
      end
    end
    if context.other_joker and context.other_joker.edition and context.other_joker.edition.polychrome then
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
  end,
  megas = {"mega_mewtwo_x","mega_mewtwo_y"},
  getMega = function(self, card)
    -- Leftmost = X, Rightmost = Y, Middle = Random
    local mega = nil
    for k, v in ipairs(G.jokers.cards) do
      if card == v and k == 1 then
        mega = self.megas[1]
        break
      elseif card == v and k == #G.jokers.cards then
        mega = self.megas[2]
      end
    end
    if not mega then mega = pseudorandom_element(self.megas, pseudoseed('megastone_charizard')) end
    return mega
  end
}
-- Mega Mewtwo X 150-1
local mega_mewtwo_x = {
  name = "mega_mewtwo_x",
  pos = {x = 11, y = 1},
  soul_pos = { x = 12, y = 1},
  config = {extra = {Xmult_multi = 2.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_mega",
  cost = 30,
  stage = "Mega",
  ptype = "Fighting",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.other_joker then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_multi
        }
    end
  end
}
-- Mega Mewtwo Y 150-2
local mega_mewtwo_y = {
  name = "mega_mewtwo_y",
  pos = {x = 13, y = 1},
  soul_pos = { x = 14, y = 1},
  config = {extra = {Xmult_mod = 3, rounds = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    end
    return {vars = {center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_mega",
  cost = 30,
  stage = "Mega",
  ptype = "Psychic",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.ending_shop and not context.blueprint then
      local leftmost = G.jokers.cards[1]
      if leftmost ~= card then
        local _card = G.jokers.cards[1]
        if _card.config and _card.config.center.stage and _card.config.center.stage ~= "Other" and not type_sticker_applied(_card) then
          for i = 1, 2 do
            energy_increase(_card, _card.ability.extra.ptype)
          end
        elseif type_sticker_applied(_card) then
          for i = 1, 2 do
            energy_increase(_card, type_sticker_applied(_card))
          end
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_future_sight"), colour = G.ARGS.LOC_COLOURS.psychic})
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 1
      else
        G.GAME.energy_plus = G.GAME.energy_plus + 1
      end
    end
  end
}
----------------------
return {name = "Pokemon Jokers 121-150", 
        list = { starmie, mrmime, scyther, jynx, electabuzz, magmar, pinsir, mega_pinsir, tauros, taurosh, magikarp, gyarados, mega_gyarados, lapras, ditto, eevee, vaporeon, jolteon, flareon, porygon,                 omanyte, omastar, kabuto, kabutops, aerodactyl, mega_aerodactyl, snorlax, articuno, zapdos, moltres, dratini, dragonair, dragonite, mewtwo, mega_mewtwo_x, mega_mewtwo_y},
}
