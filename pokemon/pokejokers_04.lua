--Code for pokemon jokers 91-120

-- Cloyster 091
local cloyster={
  name = "cloyster", 
  pos = {x = 12, y = 6},
  config = {extra = {retriggers = 1, num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'cloyster')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and #context.scoring_hand == 5 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if SMODS.pseudorandom_probability(card, 'cloyster', card.ability.extra.num, card.ability.extra.dem, 'cloyster') then
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end
      end
    end
  end,
}
-- Gastly 092
local gastly={
  name = "gastly", 
  pos = {x = 0, y = 7}, 
  config = {extra = {num = 1, dem = 6, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'gastly')
    return {vars = {num, dem, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  eternal_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not card.gone then
      return level_evo(self, card, context, "j_poke_haunter")
    end
  end,
  calc_dollar_bonus = function(self, card)
    local eligible_card = nil
    if SMODS.pseudorandom_probability(card, 'gastly', card.ability.extra.num, card.ability.extra.dem, 'gastly') then
      if #G.jokers.cards > 0 then
        local eligible_editionless_jokers = {}
        for k, v in pairs(G.jokers.cards) do
          if v.ability.set == 'Joker' and v ~= card and not v.gone then
              table.insert(eligible_editionless_jokers, v)
          end
        end
        if #eligible_editionless_jokers > 0 then
          eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('gastly'))
          local edition = {negative = true}
          eligible_card:set_edition(edition, true)
        else
          eligible_card = pseudorandom_element(G.jokers.cards, pseudoseed('gastly'))
          local edition = {negative = true}
          eligible_card:set_edition(edition, true)
        end
      end
      remove(self, card, context)
      
      card_eval_status_text(eligible_card, 'extra', nil, nil, nil, {message = localize("poke_lick_ex"), colour = G.C.PURPLE})
    end
  end
}
-- Haunter 093
local haunter={
  name = "haunter", 
  pos = {x = 1, y = 7}, 
  config = {extra = {num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'haunter')
    return {vars = {num, dem}}
  end,
  rarity = 3, 
  cost = 9,
  item_req = "linkcable",
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  eternal_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not card.gone then
      return item_evo(self, card, context, "j_poke_gengar")
    end
  end,
  calc_dollar_bonus = function(self, card)
    local eligible_card = nil
    if SMODS.pseudorandom_probability(card, 'haunter', card.ability.extra.num, card.ability.extra.dem, 'haunter') and not card.ability.extra.evolve then
      if #G.jokers.cards > 0 then
        local eligible_editionless_jokers = {}
        for k, v in pairs(G.jokers.cards) do
          if v.ability.set == 'Joker' and v ~= card and not v.gone then
              table.insert(eligible_editionless_jokers, v)
          end
        end
        if #eligible_editionless_jokers > 0 then
          eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('haunter'))
          local edition = {negative = true}
          eligible_card:set_edition(edition, true)
        else
          eligible_card = pseudorandom_element(G.jokers.cards, pseudoseed('gastly'))
          local edition = {negative = true}
          eligible_card:set_edition(edition, true)
        end
      end
        
      remove(self, card, context)
      
      card_eval_status_text(eligible_card, 'extra', nil, nil, nil, {message = localize("poke_lick_ex"), colour = G.C.PURPLE})
    end
  end
}
-- Gengar 094
local gengar={
  name = "gengar", 
  pos = {x = 2, y = 7}, 
  config = {extra = {gengar_rounds = 5, trigger = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.negative) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
      end
    end
    return {vars = {center.ability.extra.gengar_rounds}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  eternal_compat = true,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.gengar_rounds = card.ability.extra.gengar_rounds - 1
      if card.ability.extra.gengar_rounds ~= 0 then
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_nasty_plot_ex"), colour = G.C.PURPLE})
      end
      if card.ability.extra.gengar_rounds == 0 then
        card.ability.extra.trigger = true
        
        local gengar_chance = pseudorandom('gengar')
        if gengar_chance < .05 then card.ability.extra.gengar_rounds = 2
        elseif gengar_chance < .15 then card.ability.extra.gengar_rounds = 3
        elseif gengar_chance < .35 then card.ability.extra.gengar_rounds = 4
        elseif gengar_chance < .65 then card.ability.extra.gengar_rounds = 5
        elseif gengar_chance < .85 then card.ability.extra.gengar_rounds = 6
        elseif gengar_chance < .95 then card.ability.extra.gengar_rounds = 7
        else card.ability.extra.gengar_rounds = 8
        end
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local gengar_chance = pseudorandom('gengar')
      if gengar_chance < .05 then card.ability.extra.gengar_rounds = 2
      elseif gengar_chance < .15 then card.ability.extra.gengar_rounds = 3
      elseif gengar_chance < .35 then card.ability.extra.gengar_rounds = 4
      elseif gengar_chance < .65 then card.ability.extra.gengar_rounds = 5
      elseif gengar_chance < .85 then card.ability.extra.gengar_rounds = 6
      elseif gengar_chance < .95 then card.ability.extra.gengar_rounds = 7
      else card.ability.extra.gengar_rounds = 8
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    local eligible_card = nil
    if card.ability.extra.trigger then
      card.ability.extra.trigger = false
      if #G.jokers.cards > 0 then
        local eligible_jokers = {}
        for k, v in pairs(G.jokers.cards) do
          if v.ability.set == 'Joker' and v.ability.name ~= "gengar" and not v.gone then
              table.insert(eligible_jokers, v)
          end
        end
        if #eligible_jokers > 0 then
          eligible_card = pseudorandom_element(eligible_jokers, pseudoseed('gengar'))
          local edition = {negative = true}
          eligible_card:set_edition(edition, true)
          card_eval_status_text(eligible_card, 'extra', nil, nil, nil, {message = localize("poke_lick_ex"), colour = G.C.PURPLE})
        end
      end
    end
  end,
  megas = {"mega_gengar"}
}
-- Mega Gengar 094-1
local mega_gengar ={
  name = "mega_gengar", 
  pos = {x = 1, y = 1},
  soul_pos = { x = 2, y = 1},
  config = {extra = {xmult = 2, mega_gengar_tally = 0, rounds = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if not center.edition or (center.edition and not center.edition.negative) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    end
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Psychic",
  atlas = "Megas",
  gen = 1,
  eternal_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not context.blind.boss then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_negative'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
  end,
}
-- Onix 095
local onix={
  name = "onix", 
  pos = {x = 3, y = 7},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[1]
        card:set_ability(G.P_CENTERS.m_stone, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    return type_evo(self, card, context, "j_poke_steelix", "metal")
  end
}
-- Drowzee 096
local drowzee={
  name = "drowzee", 
  pos = {x = 4, y = 7}, 
  config = {extra = {Xmult_mod = 0.2, planets_used = 0}, evo_rqmt = 7},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local Xmult = 1 + card.ability.extra.planets_used * card.ability.extra.Xmult_mod
    local planets_left = math.max(0, self.config.evo_rqmt - card.ability.extra.planets_used)
    return {vars = {Xmult, card.ability.extra.Xmult_mod, planets_left}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.planets_used > 0 then
        local Xmult = 1 + card.ability.extra.planets_used * card.ability.extra.Xmult_mod
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_hypno", card.ability.extra.planets_used, self.config.evo_rqmt)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local planets_used = 0
      for k, v in pairs(G.GAME.consumeable_usage) do
          if v.set == 'Planet' then planets_used = planets_used + 1 end
      end
      card.ability.extra.planets_used = planets_used
    end
  end,
}
-- Hypno 097
local hypno={
  name = "hypno", 
  pos = {x = 5, y = 7},  
  config = {extra = {Xmult_mod = 0.25, planets_used = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Trance"}}
      info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_trance'}
      info_queue[#info_queue+1] = {key = 'blue_seal', set = 'Other'}
    end
    local Xmult = 1 + card.ability.extra.planets_used * card.ability.extra.Xmult_mod
    return {vars = {Xmult, card.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.planets_used > 0 then
        local Xmult = 1 + card.ability.extra.planets_used * card.ability.extra.Xmult_mod
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = Xmult
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local planets_used = 0
      for k, v in pairs(G.GAME.consumeable_usage) do
          if v.set == 'Planet' then planets_used = planets_used + 1 end
      end
      card.ability.extra.planets_used = planets_used
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit and not from_debuff then
      local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_trance')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
    end
  end
}
-- Krabby 098
local krabby={
  name = "krabby", 
  pos = {x = 6, y = 7},  
  config = {extra = {chips = 20, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_face() then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          colour = G.C.CHIPS,
          chips = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_kingler")
  end
}
-- Kingler 099
local kingler={
  name = "kingler", 
  pos = {x = 7, y = 7},
  config = {extra = {chips = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
    end
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local faces = {}
      for k, v in ipairs(context.scoring_hand) do
          if v:is_face() and v.config.center == G.P_CENTERS.c_base then 
              faces[#faces+1] = v
              v:set_ability(G.P_CENTERS.m_bonus, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          end
      end
      if #faces > 0 then 
          return {
              message = localize("poke_surf_ex"),
              colour = G.C.CHIPS,
              card = card
          }
      end
    end
    if context.individual and context.cardarea == G.play and context.other_card:is_face() then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
            G.E_MANAGER:add_event(Event({func = function()
                card:juice_up(0.8, 0.8)
            return true end }))
        return {
          colour = G.C.CHIPS,
          chips = card.ability.extra.chips
        }
      end
    end
  end
}
-- Voltorb 100
local voltorb={
  name = "voltorb", 
  pos = {x = 8, y = 7}, 
  config = {extra = {Xmult = 2, rounds = 4, volatile = 'right'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1,
  volatile = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
        if not context.blueprint then
          G.E_MANAGER:add_event(Event({
            func = function()
                card.ability.fainted = G.GAME.round
                card:set_debuff()
                return true
            end
          })) 
        end
        return {
          message = localize("poke_explosion_ex"),
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_electrode")
  end
}
-- Electrode 101
local electrode={
  name = "electrode", 
  pos = {x = 9, y = 7}, 
  config = {extra = {Xmult = 2.5, money = 3, volatile = 'right'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  gen = 1, 
  volatile = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
        ease_poke_dollars(card, "electrode", card.ability.extra.money)
        if not context.blueprint then
          G.E_MANAGER:add_event(Event({
            func = function()
              card.ability.fainted = G.GAME.round
              card:set_debuff()
              return true
            end
          })) 
        end
        
        return {
          message = localize("poke_explosion_ex"),
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult,
        }
      end
    end
  end
}
-- Exeggcute 102
local exeggcute={
  name = "exeggcute", 
  pos = {x = 10, y = 7}, 
  config = {extra = {mult = 2, suit = "Hearts", mult2 = 6, num = 1, dem = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
        info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leafstone
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'exeggcute')
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult2, num, dem}}
  end,
  rarity = 1, 
  cost = 4,
  item_req = "leafstone",
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        local Mult = card.ability.extra.mult
        if SMODS.pseudorandom_probability(card, 'exeggcute', card.ability.extra.num, card.ability.extra.dem, 'exeggcute') then
          Mult = card.ability.extra.mult2
        end
        return {
          mult = Mult ,
          card = card
        }
      end
    end
    return item_evo(self, card, context, "j_poke_exeggutor")
  end
}
-- Exeggutor 103
local exeggutor={
  name = "exeggutor", 
  pos = {x = 11, y = 7}, 
  config = {extra = {mult_mod = 2, Xmult_multi = 1.4, suit = "Hearts", num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'exeggutor')
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.Xmult_multi, localize(center.ability.extra.suit, 'suits_singular'), num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if SMODS.pseudorandom_probability(card, 'exeggutor', card.ability.extra.num, card.ability.extra.dem, 'exeggutor') then
          return {
            message = localize("poke_solar_ex"),
            colour = G.C.XMULT,
            x_mult = card.ability.extra.Xmult_multi,
            card = card
          }
        else
          return {
            colour = G.C.MULT,
            mult = card.ability.extra.mult_mod,
            card = card
          }
        end
      end
    end
  end
}
-- Cubone 104
local cubone={
  name = "cubone", 
  pos = {x = 12, y = 7},  
  config = {extra = {mult = 5, consumables_used = 0}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Thick Club"}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thickclub
    end
    local consumables_left = math.max(0, self.config.evo_rqmt - card.ability.extra.consumables_used)
    return {vars = {card.ability.extra.mult, card.ability.extra.mult * ((G.consumeables and #G.consumeables.cards or 0) + #find_joker('thickclub')), consumables_left}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Earth",
  joblacklist = true,
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_thickclub')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #G.consumeables.cards + #find_joker('thickclub')
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * count}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult * count
          }
        end
      end
    end
    if context.using_consumeable then
      card.ability.extra.consumables_used = card.ability.extra.consumables_used + 1
    end
    return scaling_evo(self, card, context, "j_poke_marowak", card.ability.extra.consumables_used, self.config.evo_rqmt)
  end,
}
-- Marowak 105
local marowak={
  name = "marowak", 
  pos = {x = 0, y = 8},  
  config = {extra = {Xmult_mod = 0.4, card_limit = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thickclub
    end
    local count = (G.consumeables and #G.consumeables.cards) or 0 
    count = count + #find_joker('thickclub')
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.card_limit, 
                    1 + (center.ability.extra.Xmult_mod * count)}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Earth",
  joblacklist = true,
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #G.consumeables.cards + #find_joker('thickclub')
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {1 + (card.ability.extra.Xmult_mod * count)}}, 
            colour = G.C.XMULT,
            Xmult_mod = 1 + (card.ability.extra.Xmult_mod * count)
          }
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
      return true end }))
  end, 
}
-- Hitmonlee 106
local hitmonlee={
  name = "hitmonlee", 
  pos = {x = 1, y = 8},
  config = {extra = {Xmult_mod = 0.15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, G.GAME.starting_deck_size, math.max(1, 1 + (G.playing_cards and (G.GAME.starting_deck_size - #G.playing_cards) or 0) * center.ability.extra.Xmult_mod)}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + ((G.GAME.starting_deck_size - #G.playing_cards) * card.ability.extra.Xmult_mod)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end,
}
-- Hitmonchan 107
local hitmonchan={
  name = "hitmonchan", 
  pos = {x = 2, y = 8}, 
  config = {extra = {Xmult_mod = 0.15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_mod, G.GAME.starting_deck_size, math.max(1, 1 + (G.playing_cards and (#G.playing_cards - G.GAME.starting_deck_size) or 0) * center.ability.extra.Xmult_mod)}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + ((#G.playing_cards - G.GAME.starting_deck_size) * card.ability.extra.Xmult_mod)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end,
}
-- Lickitung 108
local lickitung={
  name = "lickitung", 
  pos = {x = 3, y = 8}, 
  config = {extra = {Xmult_multi = 1.5, jacks_played = 0}, evo_rqmt = 15},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local jacks_left = math.max(0, self.config.evo_rqmt - card.ability.extra.jacks_played)
    return {vars = {card.ability.extra.Xmult_multi, jacks_left}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      local first_jack = nil
      local second_jack = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == 11 then
          if not first_jack then
            first_jack = context.scoring_hand[i];
          else
            second_jack = context.scoring_hand[i];
            break
          end
        end
      end
      if context.other_card == first_jack or context.other_card == second_jack then
        if not context.blueprint then
          card.ability.extra.jacks_played = card.ability.extra.jacks_played + 1
        end
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_lickilicky", card.ability.extra.jacks_played, self.config.evo_rqmt)
  end
}
-- Koffing 109
local koffing={
  name = "koffing", 
  pos = {x = 4, y = 8},
  config = {extra = {rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      if G.GAME.blind and G.GAME.blind:get_type() == 'Boss' then 
        G.GAME.blind.chips = G.GAME.blind.chips/2
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
      end
    end
    return level_evo(self, card, context, "j_poke_weezing")
  end
}
-- Weezing 110
local weezing={
  name = "weezing", 
  pos = {x = 5, y = 8}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 3, 
  cost = 7, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      if G.GAME.blind and G.GAME.blind:get_type() == 'Boss' then 
        G.GAME.blind.chips = G.GAME.blind.chips/2
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
        G.GAME.blind:disable()
      end
    end
  end
}
-- Rhyhorn 111
local rhyhorn={
  name = "rhyhorn", 
  pos = {x = 6, y = 8}, 
  config = {extra = {chips = 12, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 5, 
  enhancement_gate = 'm_stone',
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and SMODS.has_enhancement(context.other_card, 'm_stone') then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
      return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
      }
    end
    return level_evo(self, card, context, "j_poke_rhydon")
  end
}
-- Rhydon 112
local rhydon={
  name = "rhydon", 
  pos = {x = 7, y = 8},
  config = {extra = {chips = 16, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    end
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 8,
  enhancement_gate = 'm_stone',
  item_req = "linkcable",
  stage = "One", 
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and SMODS.has_enhancement(context.other_card, 'm_stone') then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
      return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
      }
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      if context.other_card.ability.name == 'Stone Card' then
        local first = nil
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i] == context.other_card then
            first = true
            break
          elseif context.scoring_hand[i].ability.name == 'Stone Card' then
            break
          end
        end
        if first then
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_rhyperior")
  end
}
-- Chansey 113
local chansey={
  name = "chansey", 
  pos = {x = 8, y = 8}, 
  config = {extra = {limit = 2, triggers = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    end
    local deck_data = ''
    if G.playing_cards then
      local enhance_count = 0
      for k, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, 'm_lucky') then enhance_count = enhance_count  + 1 end
      end
      deck_data = '['..tostring(enhance_count)..'/'..tostring(math.ceil(#G.playing_cards/4))..'] '
    end
		return {vars = {center.ability.extra.limit, center.ability.extra.triggers, deck_data}}
  end,
  rarity = 3, 
  cost = 8,
  ptype = "Colorless",
  enhancement_gate = 'm_lucky',
  stage = "Basic", 
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.triggers < card.ability.extra.limit then
      G.playing_card = (G.playing_card and G.playing_card + 1) or 1
      local card_to_copy = context.other_card
      G.E_MANAGER:add_event(Event({
          func = function()
              local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
              copy:add_to_deck()
              G.deck.config.card_limit = G.deck.config.card_limit + 1
              table.insert(G.playing_cards, copy)
              G.hand:emplace(copy)
              copy.states.visible = nil
              copy:start_materialize()
              playing_card_joker_effects({copy})
              return true
          end
      })) 
      if not context.blueprint then
        card.ability.extra.triggers = card.ability.extra.triggers + 1
      end
      return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
      }
    end
    if not context.repetition and not context.individual and context.end_of_round then
      card.ability.extra.triggers = 0
    end
    return deck_enhance_evo(self, card, context, "j_poke_blissey", "Lucky", .25)
  end
}
-- Tangela 114
local tangela={
  name = "tangela", 
  pos = {x = 9, y = 8},
  config = {extra = {mult = 10, chips = 50, money_mod = 3, num = 1, dem = 4, wilds_scored = 0}, evo_rqmt = 10},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
    local wild_left = math.max(0, self.config.evo_rqmt - card.ability.extra.wilds_scored)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'tangela')
    return {vars = {card.ability.extra.mult, card.ability.extra.chips, card.ability.extra.money_mod, num, dem, wild_left}}
  end,
  rarity = 2, 
  cost = 6,
  enhancement_gate = 'm_wild',
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round and
       SMODS.has_enhancement(context.other_card, 'm_wild') then
        if not context.blueprint then
          card.ability.extra.wilds_scored = card.ability.extra.wilds_scored + 1
        end
        if SMODS.pseudorandom_probability(card, 'tangela', card.ability.extra.num, card.ability.extra.dem, 'tangela') then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
          G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
          return {
            message = localize("poke_tangela_bonus"),
            colour = G.C.BLACK,
            mult = card.ability.extra.mult,
            chips = card.ability.extra.chips,
            dollars = ease_poke_dollars(card, "tangela", card.ability.extra.money_mod, true),
            card = card
          }
        else
          local scoring_bonuses = {"Mult", "Chips", "Money"}
          local bonus = pseudorandom_element(scoring_bonuses, pseudoseed('tangela'))
          if bonus == "Mult" then
            return {
              message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
              colour = G.C.MULT,
              mult = card.ability.extra.mult
            }
          elseif bonus == "Chips" then
            return {
              message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
              colour = G.C.CHIPS,
              chips = card.ability.extra.chips
            }
          elseif bonus == "Money" then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
            G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
            return {
              dollars = ease_poke_dollars(card, "tangela", card.ability.extra.money_mod, true),
              card = card
            }
          end
        end
    end
    return scaling_evo(self, card, context, "j_poke_tangrowth", card.ability.extra.wilds_scored, self.config.evo_rqmt)
  end,
}
-- Kangaskhan 115
local kangaskhan={
  name = "kangaskhan", 
  pos = {x = 10, y = 8},
  config = {extra = {card_limit = 2, interest_cap = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.card_limit, center.ability.extra.interest_cap/5}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    local add = card.ability.extra.card_limit
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + add
      return true end }))
    G.GAME.interest_cap = G.GAME.interest_cap - card.ability.extra.interest_cap
  end,
  remove_from_deck = function(self, card, from_debuff)
    local remove = card.ability.extra.card_limit
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - remove
      return true end }))
    G.GAME.interest_cap = G.GAME.interest_cap + card.ability.extra.interest_cap
  end, 
  megas = {"mega_kangaskhan"}
}
-- Mega Kangaskhan 115-1
local mega_kangaskhan={
  name = "mega_kangaskhan", 
  pos = {x = 3, y = 1},
  soul_pos = {x = 4, y = 1},
  config = {extra = {consumeables_used = 0, consumeable_target = 2, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.consumeable_target, center.ability.extra.consumeables_used}}
  end,
  rarity = "poke_mega", 
  cost = 12, 
  stage = "Mega", 
  ptype = "Colorless",
  atlas = "Megas",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.using_consumeable and not context.blueprint then
      card.ability.extra.consumeables_used = card.ability.extra.consumeables_used + 1
      if card.ability.extra.consumeables_used >= 2 then
        local eval = function(card) return (card.ability.extra.consumeables_used and card.ability.extra.consumeables_used >= 2) and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if card.ability.extra.consumeables_used >= 2 then
        G.E_MANAGER:add_event(Event({
          func = (function()
              add_tag(Tag('tag_double'))
              play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
              play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
              return true
          end)
        }))
      end
      card.ability.extra.consumeables_used = 0
    end
  end,
}
-- Horsea 116
local horsea={
  name = "horsea", 
  pos = {x = 11, y = 8},
  config = {extra = {mult = 0, mult_mod = 1}, evo_rqmt = 12},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local upgraded = false
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 6 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            if not upgraded then upgraded = true end
          end
        end
        if upgraded then
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.MULT
          }
        end
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_seadra", card.ability.extra.mult, self.config.evo_rqmt)
  end,
}
-- Seadra 117
local seadra={
  name = "seadra", 
  pos = {x = 12, y = 8},
  config = {extra = {mult = 0, mult_mod = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.blueprint then
      if context.other_card:get_id() == 6 then
        local has_king = false
        for i = 1, #G.hand.cards do 
          if G.hand.cards[i]:get_id() == 13 then has_king = true; break end
        end
        if has_king then
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod * 2
        else
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
    return type_evo(self, card, context, "j_poke_kingdra", "dragon")
  end,
}
-- Goldeen 118
local goldeen={
  name = "goldeen", 
  pos = {x = 0, y = 9},
  config = {extra = {retriggers = 1, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
		return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5,
  enhancement_gate = 'm_gold',
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and SMODS.has_enhancement(context.other_card, 'm_gold') then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    return level_evo(self, card, context, "j_poke_seaking")
  end
}
-- Seaking 119
local seaking={
  name = "seaking", 
  pos = {x = 1, y = 9},
  config = {extra = {retriggers = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
		return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  enhancement_gate = 'm_gold',
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and SMODS.has_enhancement(context.other_card, 'm_gold') then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end
}
-- Staryu 120
local staryu={
  name = "staryu", 
  pos = {x = 2, y = 9},
  config = {extra = {mult = 1, money_mod = 1, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_waterstone
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.money_mod}}
  end,
  rarity = 1, 
  cost = 4,
  item_req = "waterstone",
  stage = "Basic",
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
    return item_evo(self, card, context, "j_poke_starmie")
  end
}

return {name = "Pokemon Jokers 91-120", 
        list = { cloyster, gastly, haunter, gengar, mega_gengar, onix, drowzee, hypno, krabby, kingler, voltorb, electrode, exeggcute, exeggutor, cubone, marowak, hitmonlee, hitmonchan, lickitung, koffing, weezing, rhyhorn, rhydon, chansey, tangela, kangaskhan, mega_kangaskhan, horsea, seadra, goldeen, seaking, staryu, },
}
