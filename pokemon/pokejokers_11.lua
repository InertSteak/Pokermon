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
  ptype = "Metal",
  blueprint_compat = true,
  enhancement_gate = 'm_steel',
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if v.config.center == G.P_CENTERS.m_steel and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
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
      return not context.blueprint and context.destroying_card.config.center == G.P_CENTERS.m_steel
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
  ptype = "Metal",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_stone) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
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
      return not context.blueprint and (context.destroying_card.config.center == G.P_CENTERS.m_steel or context.destroying_card.config.center == G.P_CENTERS.m_stone)
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
  ptype = "Metal",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return { vars = { center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.eaten } }
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if (v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_stone or v.config.center == G.P_CENTERS.m_gold) and not v.debuff then
          card.ability.extra.eaten = card.ability.extra.eaten + 1
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
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
      local eat = context.destroying_card.config.center == G.P_CENTERS.m_steel or context.destroying_card.config.center == G.P_CENTERS.m_stone or
                  context.destroying_card.config.center == G.P_CENTERS.m_gold
      return not context.blueprint and eat
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
-- Camerupt 323
-- Torkoal 324
-- Spoink 325
-- Grumpig 326
-- Spinda 327
-- Trapinch 328
-- Vibrava 329
-- Flygon 330
return {
  name = "Pokemon Jokers 301-330",
  list = {aron, lairon, aggron},
}
