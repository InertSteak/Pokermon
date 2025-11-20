--Code for pokemon jokers 31-60

-- Nidoqueen 031
local nidoqueen={
  name = "nidoqueen", 
  pos = {x = 4, y = 2}, 
  config = {extra = {chips = 90, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == 12 then
      if not context.end_of_round and not context.before and not context.after then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            h_chips = card.ability.extra.chips,
            card = card,
          }
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Nidoran-M 032
local nidoranm={
  name = "nidoranm", 
  pos = {x = 5, y = 2}, 
  config = {extra = {mult = 8, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.hand and context.other_card:get_id() == 13 then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              h_mult = card.ability.extra.mult,
              card = card
          }
      end
    end
    return level_evo(self, card, context, "j_poke_nidorino")
  end
}
-- Nidorino 033
local nidorino={
  name = "nidorino", 
  pos = {x = 6, y = 2}, 
  config = {extra = {mult = 12}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    end
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  item_req = "moonstone",
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.hand and context.other_card:get_id() == 13 then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              h_mult = card.ability.extra.mult,
              card = card
          }
      end
    end
    return item_evo(self, card, context, "j_poke_nidoking")
  end
}
-- Nidoking 034
local nidoking={
  name = "nidoking", 
  pos = {x = 7, y = 2},
  config = {extra = {mult = 15, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1, 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.hand and context.other_card:get_id() == 13 and not context.end_of_round then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              h_mult = card.ability.extra.mult,
              card = card
          }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Clefairy 035
local clefairy={
  name = "clefairy", 
  pos = {x = 8, y = 2},
  config = {extra = {mult = 3, suit = "Clubs"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = 1, 
  cost = 4, 
  item_req = "moonstone",
  stage = "Basic", 
  ptype = "Fairy",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
    return item_evo(self, card, context, "j_poke_clefable")
  end
}
-- Clefable 036
local clefable={
  name = "clefable", 
  pos = {x = 9, y = 2},
  config = {extra = {mult_mod = 1, suit = "Clubs", clubs_scored = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult_mod, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.mult_mod * center.ability.extra.clubs_scored,
                    5 * center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Fairy",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local club_count = 0
        for k, v in ipairs(context.scoring_hand) do
          if v:is_suit(card.ability.extra.suit) then club_count = club_count + 1 end
        end
        card.ability.extra.clubs_scored = card.ability.extra.clubs_scored + club_count
      end
    end
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          mult = card.ability.extra.mult_mod * card.ability.extra.clubs_scored,
          card = card
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if card.ability.extra.clubs_scored > 0 then
        card.ability.extra.clubs_scored = 0
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      end
    end
  end
}
-- Vulpix 037
local vulpix={
  name = "vulpix", 
  pos = {x = 10, y = 2},
  config = {extra = {num = 1, dem = 3}},
  rarity = 1, 
  cost = 4, 
  item_req = "firestone",
  stage = "Basic", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Fire",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_firestone
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'vulpix')
    return {vars = {num, dem}}
  end,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if (context.other_card:get_id() == 9) and (not context.other_card.debuff) and SMODS.pseudorandom_probability(card, 'vulpix', card.ability.extra.num, card.ability.extra.dem, 'vulpix') then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Tarot'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
          }
        end
      end 
    end
    return item_evo(self, card, context, "j_poke_ninetales")
  end
}
-- Ninetales 038
local ninetales={
  name = "ninetales", 
  pos = {x = 11, y = 2},
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Medium"}}
      info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_medium'}
      info_queue[#info_queue+1] = {key = 'purple_seal', set = 'Other'}
    end
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'ninetales')
    return {vars = {num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1, 
  ptype = "Fire",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if (context.other_card:get_id() == 9) and (not context.other_card.debuff) and SMODS.pseudorandom_probability(card, 'ninetales', card.ability.extra.num, card.ability.extra.dem, 'ninetales') then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Tarot'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
          }
        end
      end 
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_medium')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
    end
  end
}
-- Jigglypuff 039
local jigglypuff={
  name = "jigglypuff", 
  pos = {x = 12, y = 2},
  config = {extra = {mult = 2, chips = 10, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    end
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.chips}}
  end,
  rarity = 1, 
  cost = 4, 
  item_req = "moonstone",
  stage = "Basic", 
  ptype = "Fairy",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = "Puff!", 
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          chips = card.ability.extra.chips,
          card = card
        }
      end
    end
    return item_evo(self, card, context, "j_poke_wigglytuff")
  end
}
-- Wigglytuff 040
local wigglytuff={
  name = "wigglytuff", 
  pos = {x = 0, y = 3},
  config = {extra = {mult = 2, chips = 30, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Fairy",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        local total_chips = poke_total_chips(context.other_card) 
        return {
          message = "Tuff!", 
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          chips = card.ability.extra.chips + total_chips,
          card = card
        }
      end
    end
  end
}
-- Zubat 041
local zubat={
  name = "zubat", 
  pos = {x = 1, y = 3},
  config = {extra = {mult = 0, mult_mod = 1}, evo_rqmt = 12},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, self.config.evo_rqmt}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        local enhanced = 0
        for k, v in pairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base then
           enhanced = enhanced + 1
          end
        end
        
        if enhanced > 0 and not context.blueprint then
          card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_mod * enhanced)
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * enhanced}},
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
    return scaling_evo(self, card, context, "j_poke_golbat", card.ability.extra.mult, self.config.evo_rqmt)
  end
}
-- Golbat 042
local golbat={
  name = "golbat", 
  pos = {x = 2, y = 3},
  config = {extra = {mult = 0, mult_mod = 2, chips = 0, chip_mod = 15, Xmult = 1, Xmult_mod = .1, money = 0, money_mod = 1, eaten = 0}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local eating_left = math.max(0, self.config.evo_rqmt - card.ability.extra.eaten)
    return {vars = {card.ability.extra.mult, card.ability.extra.mult_mod, card.ability.extra.chips, card.ability.extra.chip_mod, card.ability.extra.Xmult, card.ability.extra.Xmult_mod,
                    card.ability.extra.money, card.ability.extra.money_mod, eating_left}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      local m_count = 0 
      local c_count = 0 
      local x_count = 0 
      local d_count = 0
      local enhanced = {}
      for k, v in ipairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
              enhanced[#enhanced+1] = v
              v.vampired = true
              if v.config.center == G.P_CENTERS.m_mult or v.config.center == G.P_CENTERS.m_wild then
                m_count = m_count + 1
              end
              if v.config.center == G.P_CENTERS.m_bonus or v.config.center == G.P_CENTERS.m_stone then
                c_count = c_count + 1
              end
              if v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_glass then
                x_count = x_count + 1
              end
              if v.config.center == G.P_CENTERS.m_gold or v.config.center == G.P_CENTERS.m_lucky then
                d_count = d_count + 1
              end
              v:set_ability(G.P_CENTERS.c_base, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      v.vampired = nil
                      return true
                  end
              })) 
              card.ability.extra.eaten = card.ability.extra.eaten + 1
          end
      end

      if #enhanced > 0 then 
          if m_count > 0 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod * m_count
          end
          if c_count > 0 then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod * c_count
          end
          if x_count > 0 then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod * x_count
          end
          if d_count > 0 then
            card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_mod * d_count
          end
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_screech_ex"),
          colour = G.C.BLACK,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_crobat", card.ability.extra.eaten, self.config.evo_rqmt)
  end,
  calc_dollar_bonus = function(self, card)
    if card.ability.extra.money > 0 then
      return ease_poke_dollars(card, "Golbat", card.ability.extra.money, true)
    end
	end
}
-- Oddish 043
local oddish={
  name = "oddish", 
  pos = {x = 3, y = 3},
  config = {extra = {mult = 1, mult2 = 5, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult2, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_odd(context.other_card) then
          local value
          if pseudorandom('oddish') < .50 then
            value = card.ability.extra.mult
          else
            value = card.ability.extra.mult2
          end
          return {
            mult = value, 
            card = card
          }
      end
    end
    return level_evo(self, card, context, "j_poke_gloom")
  end
}
-- Gloom 044
local gloom={
  name = "gloom", 
  pos = {x = 4, y = 3},
  config = {extra = {mult = 3, mult2 = 7}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leafstone
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_sunstone
    end
		return {vars = {center.ability.extra.mult, center.ability.extra.mult2}}
  end,
  rarity = 2,
  cost = 6,
  item_req = {"leafstone", "sunstone"},
  evo_list = {leafstone = "j_poke_vileplume", sunstone = "j_poke_bellossom"},
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_odd(context.other_card) then
          local value
          if pseudorandom('gloom') < .50 then
            value = card.ability.extra.mult
          else
            value = card.ability.extra.mult2
          end
          return {
            mult = value,
            card = card
          }
      end
    end
    return item_evo(self, card, context)
  end
}
-- Vileplume 045
local vileplume={
  name = "vileplume",
  config = {extra = {Xmult_multi = 1.5, mult = 7}},
  pos = {x = 5, y = 3},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_odd(context.other_card) then
          if pseudorandom('vileplume') < .50 then
            return { 
              x_mult = card.ability.extra.Xmult_multi,
              card = card
            }
          else
            return { 
              mult = card.ability.extra.mult,
              card = card
            }
          end
      end
    end
  end
}
-- Paras 046
local paras={
  name = "paras", 
  pos = {x = 6, y = 3}, 
  config = {extra = {mult = 0, mult_mod = 1}, evo_rqmt = 8},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1, 
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and next(context.poker_hands['Two Pair']) then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_parasect", card.ability.extra.mult, self.config.evo_rqmt)
  end
}
-- Parasect 047
local parasect={
  name = "parasect", 
  pos = {x = 7, y = 3},
   config = {extra = {mult = 0, mult_mod = 3, mult_mod2 = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.mult_mod2}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if not context.blueprint then
        if context.before and next(context.poker_hands['Two Pair']) then
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.MULT
          }
        elseif context.before and card.ability.extra.mult > 0 then
          card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_mod2
          return {
            message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.mult_mod2}},
            colour = G.C.RED,
            card = card
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
  end
}
-- Venonat 048
local venonat={
  name = "venonat", 
  pos = {x = 8, y = 3},
  config = {extra = {plus_odds = 1, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.plus_odds, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.mod_probability and not context.blueprint then
      return 
      {
        numerator = context.numerator + card.ability.extra.plus_odds
      }
    end
    return level_evo(self, card, context, "j_poke_venomoth")
  end,
}
-- Venomoth 049
local venomoth={
  name = "venomoth", 
  pos = {x = 9, y = 3},
  config = {extra = {plus_odds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.plus_odds}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.mod_probability and not context.blueprint then
      return 
      {
        numerator = context.numerator + card.ability.extra.plus_odds
      }
    end
  end,
}
-- Diglett 050
local diglett={
  name = "diglett", 
  pos = {x = 10, y = 3}, 
  config = {extra = {rounds = 4, chips = 60, mult = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds, center.ability.extra.chips, center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local score_chips = false
        local score_mult = false
        if next(context.poker_hands['Three of a Kind']) then score_chips = true end
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 2 or v:get_id() == 3 or v:get_id() == 4 then
            score_mult = true
            break
          end
        end
        if score_mult and score_chips then
          return {
            message = localize('poke_dig_ex'), 
            colour = G.C.MULT,
            chip_mod = card.ability.extra.chips,
            mult_mod = card.ability.extra.mult,
            card = card
          }
        elseif score_chips then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif score_mult then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult,
            card = card
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_dugtrio")
  end
}
-- Dugtrio 051
local dugtrio={
  name = "dugtrio", 
  pos = {x = 11, y = 3},
  config = {extra = {chips = 120, Xmult = 1.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult, center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex1",
  gen = 1,
  ptype = "Earth",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local score_chips = false
        local score_mult = false
        if next(context.poker_hands['Three of a Kind']) then score_chips = true end
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 2 or v:get_id() == 3 or v:get_id() == 4 then
            score_mult = true
            break
          end
        end
        if score_mult and score_chips then
          return {
            message = localize('poke_dig_ex'), 
            colour = G.C.MULT,
            chip_mod = card.ability.extra.chips,
            Xmult_mod = card.ability.extra.Xmult,
            card = card
          }
        elseif score_chips then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif score_mult then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = card.ability.extra.Xmult,
            card = card
          }
        end
      end
    end
  end
}
-- Meowth 052
local meowth={
  name = "meowth", 
  pos = {x = 12, y = 3},
  config = {extra = {money = 1, money_mod = 2, limit = 1, triggers = 0}, evo_rqmt = 9},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money, center.ability.extra.money_mod, self.config.evo_rqmt}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  enhancement_gate = 'm_lucky',
  blueprint_compat = false,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.triggers < card.ability.extra.limit and not context.blueprint then
      card.ability.extra.triggers = card.ability.extra.triggers + 1
      card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MONEY})
    end
    if not context.repetition and not context.individual and context.end_of_round then
      card.ability.extra.triggers = 0
    end
    return scaling_evo(self, card, context, "j_poke_persian", card.ability.extra.money, self.config.evo_rqmt)
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "meowth", card.ability.extra.money, true)
	end
}
-- Persian 053
local persian={
  name = "persian", 
  pos = {x = 0, y = 4}, 
  config = {extra = {money = 1, money_mod = 2, limit = 1, triggers = 0, num = 1, dem = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'persian')
		return {vars = {center.ability.extra.money, center.ability.extra.money_mod, num, dem}}
  end,
  rarity = "poke_safari", 
  cost = 9, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  gen = 1,
  enhancement_gate = 'm_lucky',
  blueprint_compat = false,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.triggers < card.ability.extra.limit and not context.blueprint then
      card.ability.extra.triggers = card.ability.extra.triggers + 1
      card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MONEY})
    end
    if not context.repetition and not context.individual and context.end_of_round then
      card.ability.extra.triggers = 0
    end
  end,
  calc_dollar_bonus = function(self, card)
    local payout = card.ability.extra.money
    if SMODS.pseudorandom_probability(card, 'persian', card.ability.extra.num, card.ability.extra.dem, 'persian') then
      payout = payout * 2
    end
    return ease_poke_dollars(card, "persian", payout, true)
	end
}
-- Psyduck 054
local psyduck={
  name = "psyduck", 
  pos = {x = 1, y = 4},
  config = {extra = {money = 3, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and context.cardarea == G.jokers and context.scoring_hand and context.full_hand and #context.full_hand == 1 and context.scoring_hand[1]:is_face() then
      local earned = ease_poke_dollars(card, "psyduck", card.ability.extra.money)
      return {
        message = '$'..earned,
        colour = G.C.MONEY
      }
    end
    return level_evo(self, card, context, "j_poke_golduck")
  end,
}
-- Golduck 055
local golduck={
  name = "golduck", 
  pos = {x = 2, y = 4},
  config = {extra = {money = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and context.scoring_hand and context.full_hand and #context.full_hand == 1 and context.scoring_hand[1]:is_face() then
      local face = context.scoring_hand[1]
      face:set_ability(G.P_CENTERS.m_gold, nil, true)
      G.E_MANAGER:add_event(Event({
          func = function()
              face:juice_up()
              return true
          end
      })) 
      return {
        message = localize('k_gold'),
        colour = G.C.MONEY,
        card = card
      }
    end
    if context.joker_main and context.cardarea == G.jokers and context.scoring_hand and context.full_hand and #context.full_hand == 1 and context.scoring_hand[1]:is_face()  then
      local earned = ease_poke_dollars(card, "golduck", card.ability.extra.money)
      return {
        message = '$'..earned,
        colour = G.C.MONEY
      }
    end
  end,
}
-- Mankey 056
local mankey={
  name = "mankey", 
  pos = {x = 3, y = 4},
  config = {extra = {mult = 3, chips = 5, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or
         context.other_card:get_id() == 7 then
        return {
            chips = card.ability.extra.chips,
            mult = card.ability.extra.mult,
            card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_primeape")
  end
}
-- Primeape 057
local primeape={
  name = "primeape", 
  pos = {x = 4, y = 4}, 
  config = {extra = {mult = 5, chips = 7, primes_played = 0}, evo_rqmt = 25},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local primes_left = math.max(0, self.config.evo_rqmt - card.ability.extra.primes_played)
    return {vars = {card.ability.extra.mult, card.ability.extra.chips, primes_left}}
  end,
  rarity = 3, 
  cost = 9, 
  stage = "One", 
  ptype = "Fighting",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or
         context.other_card:get_id() == 7 then
        card.ability.extra.primes_played = card.ability.extra.primes_played + 1
        return {
            chips = card.ability.extra.chips,
            mult = card.ability.extra.mult,
            card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_annihilape", card.ability.extra.primes_played, self.config.evo_rqmt)
  end
}
-- Growlithe 058
local growlithe={
  name = "growlithe", 
  pos = {x = 5, y = 4},
  config = {extra = {mult = 8}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_firestone
    end
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 5, 
  item_req = "firestone",
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_arcanine")
  end,
}
-- Arcanine 059
local arcanine={
  name = "arcanine", 
  pos = {x = 6, y = 4},
  config = {extra = {Xmult = 1.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and next(context.poker_hands['Flush']) then
        local target = {}
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            target[#target + 1] = v
            break
          end
        end
        poke_convert_cards_to(target, {mod_conv = 'm_mult'}, true, true)
      end
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
}
-- Poliwag 060
local poliwag={
  name = "poliwag", 
  pos = {x = 7, y = 4},
  config = {extra = {mult = 4, rounds = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, localize(G.GAME.poke_poli_suit or "Spades",'suits_singular'),  
                    colours = {G.C.SUITS[G.GAME.poke_poli_suit or "Spades"]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural')}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          poke_change_poli_suit()
          G.GAME.poke_poli_suit_change_triggered = true
        end
      end
      if context.after and G.GAME.poke_poli_suit_change_triggered then
        G.GAME.poke_poli_suit_change_triggered = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = G.GAME.poke_poli_suit or "Spades"
      if context.other_card:is_suit(scoring_suit) then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            mult = card.ability.extra.mult,
            card = card
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_poliwhirl")
  end,
}

return {name = "Pokemon Jokers 31-60", 
        list = {  nidoqueen, nidoranm, nidorino, nidoking, clefairy, clefable, vulpix, ninetales, jigglypuff, wigglytuff, zubat, golbat, oddish, gloom, vileplume, paras, parasect, venonat, venomoth, diglett, dugtrio, meowth, persian, psyduck, golduck, mankey, primeape, growlithe, arcanine, poliwag,},
}
