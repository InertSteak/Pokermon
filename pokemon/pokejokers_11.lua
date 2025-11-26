-- Delcatty 301
-- Sableye 302
-- Mawile 303
-- Aron 304
local aron = {
  name = "aron",
  pos = { x = 2, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .25, eaten = 0 }, evo_rqmt = 2 },
  rarity = 2,
  cost = 6,
  stage = "Basic",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  enhancement_gate = 'm_steel',
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if SMODS.has_enhancement(v, 'm_steel') and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          v.aron_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    elseif context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      return {
        message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    elseif context.destroying_card then
      return not context.blueprint and SMODS.has_enhancement(context.destroying_card, 'm_steel') and context.destroying_card.aron_target
    end
    return scaling_evo(self, card, context, "j_poke_lairon", card.ability.extra.Xmult, self.config.evo_rqmt)
  end
}
-- Lairon 305
local lairon = {
  name = "lairon",
  pos = { x = 3, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .4, eaten = 0 }, evo_rqmt = 4 },
  rarity = 3,
  cost = 8,
  stage = "One",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (SMODS.has_enhancement(v, 'm_steel') or SMODS.has_enhancement(v, 'm_stone')) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          v.lairon_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    elseif context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      return {
        message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    elseif context.destroying_card then
      return not context.blueprint and (SMODS.has_enhancement(context.destroying_card, 'm_steel') or SMODS.has_enhancement(context.destroying_card, 'm_stone')) 
             and context.destroying_card.lairon_target
    end
    return scaling_evo(self, card, context, "j_poke_aggron", card.ability.extra.Xmult, self.config.evo_rqmt)
  end
}
-- Aggron 306
local aggron = {
  name = "aggron",
  pos = { x = 4, y = 5 },
  config = { extra = { Xmult = 1, Xmult_mod = .4, eaten = 0 } },
  rarity = "poke_safari",
  cost = 12,
  stage = "Two",
  atlas = "Pokedex3",
  gen = 3,
  ptype = "Metal",
  blueprint_compat = true,
  perishable_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (SMODS.has_enhancement(v, 'm_steel') or SMODS.has_enhancement(v, 'm_stone') or SMODS.has_enhancement(v, 'm_gold')) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          v.aggron_target = true
          G.E_MANAGER:add_event(Event({
            func = function()
              v:juice_up()
              return true
            end
          }))
        end
      end
    elseif context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      return {
        message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    elseif context.destroying_card then
      local eat = SMODS.has_enhancement(context.destroying_card, 'm_steel') or SMODS.has_enhancement(context.destroying_card, 'm_stone') or
                  SMODS.has_enhancement(context.destroying_card, 'm_gold')
      return not context.blueprint and eat and context.destroying_card.aggron_target
    end
  end
}
-- Meditite 307
-- Medicham 308
-- Electrike 309
-- Manectric 310
-- Plusle 311
-- Minun 312
-- Volbeat 313
-- Illumise 314
-- Roselia 315
-- Gulpin 316
-- Swalot 317
-- Carvanha 318
-- Sharpedo 319
-- Wailmer 320
-- Wailord 321
-- Numel 322
local numel={
  name = "numel",
  pos = {x = 0, y = 7},
  config = {extra = {Xmult = 3, rounds = 4, cards_scored = 0, score_goal = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.rounds, center.ability.extra.score_goal, math.max(0, center.ability.extra.score_goal - center.ability.extra.cards_scored)}}
  end,
  designer = "xtremepolymath",
  rarity = 2,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.active then
        card.ability.extra.cards_scored = 0
      end
      if context.joker_main and card.ability.extra.active then
        card.ability.extra.active = false
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after and card.ability.extra.cards_scored >= card.ability.extra.score_goal then
        card.ability.extra.active = true
        local eval = function(card) return card.ability.extra.active and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.blueprint then
      card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
    end
    return level_evo(self, card, context, "j_poke_camerupt")
  end,
}
-- Camerupt 323
local camerupt={
  name = "camerupt",
  pos = {x = 1, y = 7},
  config = {extra = {Xmult = 4, cards_scored = 0, score_goal = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.score_goal, math.max(0, center.ability.extra.score_goal - center.ability.extra.cards_scored)}}
  end,
  designer = "xtremepolymath",
  rarity = "poke_safari",
  cost = 9,
  gen = 3,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and card.ability.extra.active then
        card.ability.extra.cards_scored = 0
      end
      if context.joker_main and card.ability.extra.active then
        card.ability.extra.active = false
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after and card.ability.extra.cards_scored >= card.ability.extra.score_goal then
        card.ability.extra.active = true
        local eval = function(card) return card.ability.extra.active and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.blueprint then
      card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
      if SMODS.has_enhancement(context.other_card, 'm_mult') then
        card.ability.extra.cards_scored = card.ability.extra.cards_scored + 1
      end
    end
  end,
  megas = { "mega_camerupt" },
}
-- Mega Camerupt 323-1
local mega_camerupt={
  name = "mega_camerupt",
  pos = {x = 6, y = 4},
  soul_pos = {x = 7, y = 4},
  config = {extra = {Xmult = 1, Xmult2 = 1, Xmult_multi = 0.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    end
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_multi}}
  end,
  designer = "xtremepolymath",
  rarity = "poke_mega",
  cost = 12,
  gen = 3,
  stage = "Mega",
  ptype = "Fire",
  atlas = "Megas",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.blueprint and SMODS.has_enhancement(context.other_card, 'm_mult') then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_multi
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.XMULT})
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.Xmult = card.ability.extra.Xmult2
      
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
}
-- Torkoal 324
-- Spoink 325
-- Grumpig 326
-- Spinda 327
-- Trapinch 328
-- Vibrava 329
-- Flygon 330
return {
  name = "Pokemon Jokers 301-330",
  list = {aron, lairon, aggron, numel, camerupt, mega_camerupt},
}
