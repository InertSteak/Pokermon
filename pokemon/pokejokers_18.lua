-- Pansage 511
local pansage = {
  name = "pansage",
  pos = { x = 3, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_shortcut', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_leafstone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  item_req = "leafstone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simisage")
  end,
}
-- Simisage 512
local simisage = {
  name = "simisage",
  pos = { x = 4, y = 1 },
  config = { extra = { odds = 3 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_shortcut', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky
    return { vars = { '' .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local stall_for_effects = false
      for _, v in ipairs(context.full_hand) do
        if v.config.center == G.P_CENTERS.c_base then
          if pseudorandom('simisage') < G.GAME.probabilities.normal / card.ability.extra.odds then
            stall_for_effects = true
            v:set_ability(G.P_CENTERS.m_lucky, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                v:juice_up()
                return true
              end
            }))
          end
        end
      end
      if stall_for_effects then
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.GREEN
        }
      end
    end
  end,
}
-- Pansear 513
local pansear = {
  name = "pansear",
  pos = { x = 5, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_four_fingers', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_firestone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex5",
  item_req = "firestone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simisear")
  end,
}
-- Simisear 514
local simisear = {
  name = "simisear",
  pos = { x = 6, y = 1 },
  config = { extra = { destroy = false} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_four_fingers', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_empress
    local active = G.GAME and G.GAME.current_round and G.GAME.current_round.hands_played == 0
    return { vars = {active and "("..localize('k_active_ex')..")" or '' } }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local eval = function() return G.GAME.current_round.hands_played == 0 end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and (next(context.poker_hands['Straight']) or next(context.poker_hands['Flush'])) and G.GAME.current_round.hands_played == 0 then
        card.ability.extra.destroy = true
        return {
          extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
            G.E_MANAGER:add_event(Event({
              trigger = 'before',
              delay = 0.0,
              func = function()
                local card_type = 'Tarot'
                local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, "c_empress")
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                G.GAME.consumeable_buffer = 0
                return true
              end
            }))
          end},
        }
      end
      if context.after and card.ability.extra.destroy and not context.blueprint then
        card.ability.extra.destroy = nil
        for k, v in pairs(context.full_hand) do
          if not SMODS.in_scoring(v, context.scoring_hand) then
            poke_remove_card(v, card)
          end
        end
      end
    end
  end,
}
-- Panpour 515
local panpour = {
  name = "panpour",
  pos = { x = 7, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_pareidolia', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_waterstone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex5",
  item_req = "waterstone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simipour")
  end,
}
-- Simipour 516
local simipour = {
  name = "simipour",
  pos = { x = 8, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_pareidolia', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.m_bonus
    return { vars = {} }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local lowest_card = nil
      for _, v in ipairs(context.full_hand) do
        if v.config.center == G.P_CENTERS.c_base then
          if not lowest_card then
            lowest_card = v
          elseif v.base.nominal < lowest_card.base.nominal then
            lowest_card = v
          end
        end
      end
      if lowest_card then
        lowest_card:set_ability(G.P_CENTERS.m_bonus, nil, true)
        G.E_MANAGER:add_event(Event({
          func = function()
            lowest_card:juice_up()
            return true
          end
        }))
      end
    end
  end,
}
-- Munna 517
-- Musharna 518
-- Pidove 519
-- Tranquill 520
-- Unfezant 521
-- Blitzle 522
-- Zebstrika 523
-- Roggenrola 524
local roggenrola = {
  name = "roggenrola", 
  pos = {x = 2, y = 2},
  config = {extra = {hazard_ratio = 10, mult_mod = 4, hazard_triggered = 0}, evo_rqmt = 25},
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
    return {vars = {to_add, abbr.hazard_ratio, abbr.mult_mod, math.max(0, self.config.evo_rqmt - abbr.hazard_triggered)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex5",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, "m_poke_hazard") then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          if not context.blueprint then
            card.ability.extra.hazard_triggered = card.ability.extra.hazard_triggered + 1
          end
          return {
              h_mult = card.ability.extra.mult_mod,
              card = card
          }
      end
    end
    return scaling_evo(self, card, context, "j_poke_boldore", card.ability.extra.hazard_triggered, self.config.evo_rqmt)
  end,
}
-- Boldore 525
local boldore = {
  name = "boldore", 
  pos = {x = 3, y = 2},
  config = {extra = {hazard_ratio = 10, mult_mod = 8}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable

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
    return {vars = {to_add, abbr.hazard_ratio, abbr.mult_mod}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex5",
  item_req = "linkcable",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, "m_poke_hazard") then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              h_mult = card.ability.extra.mult_mod,
              card = card
          }
      end
    end
    return item_evo(self, card, context, "j_poke_gigalith")
  end,
}
-- Gigalith 526
local gigalith = {
  name = "gigalith", 
  pos = {x = 4, y = 2},
  config = {extra = {hazard_ratio = 10, mult_mod = 6, retriggers = 1}},
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
    return {vars = {to_add, abbr.hazard_ratio, abbr.mult_mod}}
  end,
  rarity = 'poke_safari',
  cost = 10,
  stage = "Two",
  ptype = "Earth",
  atlas = "Pokedex5",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, "m_poke_hazard") then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              h_mult = card.ability.extra.mult_mod,
              card = card
          }
      end
    end
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and SMODS.has_enhancement(context.other_card, "m_poke_hazard") then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
}
-- Woobat 527
-- Swoobat 528
-- Drilbur 529
-- Excadrill 530
-- Audino 531
-- Timburr 532
-- Gurdurr 533
-- Conkeldurr 534
-- Tympole 535
-- Palpitoad 536
-- Seismitoad 537
-- Throh 538
-- Sawk 539
-- Sewaddle 540
return {
  name = "Pokemon Jokers 511-540",
  list = {roggenrola, boldore, gigalith, pansage, simisage, pansear, simisear, panpour, simipour },
}
