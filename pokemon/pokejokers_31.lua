-- Ursaluna 901
local ursaluna={
  name = "ursaluna",
  pos = {x = 2, y = 8},
  config = {extra = {mult = 0,mult_mod = 3,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Earth",
  atlas = "Pokedex8",
  gen = 8,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.skipping_booster then
      if not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MULT})
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
        local edition = {polychrome = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult, 
          card = card
        }
      end
    end
  end,
}
-- Basculegion 902
-- Sneasler 903
-- Overqwil 904
--[[
local hisuian_qwilfish = {
  name = "hisuian_qwilfish", 
  pos = {x = 5, y = 4},
  config = {extra = {hazard_ratio = 10, chip_mod = 5, chips = 0}, evo_rqmt = 80},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard

    local to_add = math.floor(52 / abbr.hazard_ratio)
    if G.playing_cards then
      local count = #G.playing_cards
      for _, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count - 1
        end
      end
      to_add = math.floor(count / abbr.hazard_ratio)
    end
    return {vars = {to_add, abbr.hazard_ratio, abbr.chip_mod, abbr.chips, self.config.evo_rqmt}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Regionals",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(context.hand_drawn) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod * count
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_overqwil", card.ability.extra.chips, self.config.evo_rqmt)
  end,
}
local overqwil = {
  name = "overqwil", 
  pos = {x = 7, y = 8},
  config = {extra = {hazard_ratio = 5, chip_mod = 20, chips = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard

    local to_add = math.floor(52 / abbr.hazard_ratio)
    if G.playing_cards then
      local count = #G.playing_cards
      for _, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count - 1
        end
      end
      to_add = math.floor(count / abbr.hazard_ratio)
    end
    return {vars = {to_add, abbr.hazard_ratio, abbr.chip_mod, abbr.chips}}
  end,
  rarity = 'poke_safari',
  cost = 7,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex8",
  gen = 8,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(context.hand_drawn) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod * count
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips
        card.ability.extra.chips = card.ability.extra.chips / 2
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
          colour = G.C.CHIPS,
          chip_mod = chips,
          extra = {
            message = localize('poke_reload_ex'),
            colour = G.C.CHIPS,
          }
        }
      end
    end
  end,
}
--]]
-- Enamorus 905
-- Sprigatito 906
-- Floragato 907
-- Meowscarada 908
-- Fuecoco 909
-- Crocalor 910
-- Skeledirge 911
-- Quaxly 912
-- Quaxwell 913
-- Quaquaval 914
-- Lechonk 915
-- Oinkologne 916
-- Tarountula 917
local tarountula = {
  name = "tarountula",
  pos = {x = 12, y = 0},
  config = {extra = {hazards = 4, rounds = 3, h_size = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard

    return {vars = {abbr.hazards, abbr.rounds, abbr.h_size}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex9",
  gen = 9,
  hazard_poke = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    return level_evo(self, card, context, "j_poke_spidops")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Spidops 918
local spidops = {
  name = "spidops",
  pos = {x = 13, y = 0},
  config = {extra = {hazards = 4, h_size = 1, h_max = 8, h_total = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazards}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    
    return {vars = {abbr.hazards, abbr.h_size, abbr.h_max, abbr.h_total}}
  end,
  rarity = 2,
  cost = 7,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex9",
  gen = 9,
  hazard_poke = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_set_hazards(card.ability.extra.hazards)
    end
    if context.joker_main and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      local all_hazards = true
      for k, v in pairs(context.full_hand) do
        if not SMODS.has_enhancement(v, "m_poke_hazard") then
          all_hazards = false
        end
      end
      if all_hazards then
        local size_up = card.ability.extra.h_size * #context.scoring_hand
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={size_up}}})
        G.hand:change_size(size_up)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + size_up
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Nymble 919
-- Lokix 920
-- Pawmi 921
-- Pawmo 922
-- Pawmot 923
-- Tandemaus 924
-- Maushold 925
-- Fidough 926
local fidough={
  name = "fidough",
  pos = {x = 8, y = 1},
  config = {extra = {chips = 0,chip_mod = 8, rank = "2", id = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, localize(center.ability.extra.rank or "2", 'ranks')}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local contains = false
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == card.ability.extra.id then
            contains = true
            break
          end
        end
        if contains then
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          card.ability.extra.id, card.ability.extra.rank = poke_next_highest_rank(card.ability.extra.id, card.ability.extra.rank)
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
          }
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dachsbun", #find_pokemon_type("Fire"), 1)
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial and G.playing_cards then
      card.ability.extra.id, card.ability.extra.rank = poke_lowest_rank(14, "Ace")
    end
  end
}
-- Dachsbun 927
local dachsbun={
  name = "dachsbun",
  pos = {x = 9, y = 1},
  config = {extra = {chips = 0,chip_mod = 10, rank = "2", id = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, localize(center.ability.extra.rank or "2", 'ranks')}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local contains = false
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:get_id() == card.ability.extra.id then
            contains = true
            break
          end
        end
        if contains then
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod + (#find_pokemon_type("Fire") * 2)
          card.ability.extra.id, card.ability.extra.rank = poke_next_highest_rank(card.ability.extra.id, card.ability.extra.rank)
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS,
            card = card
          }
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial and G.playing_cards then
      card.ability.extra.id, card.ability.extra.rank = poke_lowest_rank(14, "Ace")
    end
  end
}
-- Smoliv 928
-- Dolliv 929
-- Arboliva 930
return {name = "Pokemon Jokers 901-930", 
        list = {ursaluna, tarountula, spidops, fidough, dachsbun},
}
