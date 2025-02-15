-- Lombre 271
local lombre={
  name = "lombre",
  pos = {x = 9, y = 1},
  config = {extra = {mult_mod = 6, targets = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local curr_mult = center.ability.extra.mult_mod * center.ability.extra.targets
    return {vars = {center.ability.extra.mult_mod, curr_mult}}
  end,
  rarity = 3,
  cost = 8,
  item_req = "waterstone",
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local adjacent_jokers = poke_get_adjacent_jokers(card)
      local to_drain = {}
      for i = 1, #adjacent_jokers do
        if is_type(adjacent_jokers[i], "Water") and can_decrease_energy(adjacent_jokers[i]) then
          table.insert(to_drain, adjacent_jokers[i])
        end
      end
      local energy_total = 0
      for _,jkr in pairs(to_drain) do

        if jkr.ability and (jkr.ability.c_energy_count or jkr.ability.energy_count) then
          energy_total = energy_total + (jkr.ability.c_energy_count or 0)
          energy_total = energy_total + (jkr.ability.energy_count or 0)
        elseif jkr.ability and jkr.ability.extra and (jkr.ability.extra.c_energy_count or jkr.ability.extra.energy_count) then
          energy_total = energy_total + (jkr.ability.extra.c_energy_count or 0)
          energy_total = energy_total + (jkr.ability.extra.energy_count or 0)
        end
        reset_energy(jkr)
        G.E_MANAGER:add_event(Event({
          trigger = 'immediate',
          func = function ()
            card:juice_up(0.1)
            return true
          end}))
      end
      card.ability.extra.targets = card.ability.extra.targets + energy_total
    end
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main and card.ability.extra.targets > 0 then
      local curr_mult = card.ability.extra.mult_mod * card.ability.extra.targets
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {curr_mult}}, 
        colour = G.C.MULT,
        mult_mod = curr_mult
      }
    end
    return item_evo(self, card, context, "j_poke_ludicolo")
  end,
}
-- Ludicolo 272
local ludicolo = {
  name = "ludicolo", 
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 0.1, targets = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local curr_mult = 1 + center.ability.extra.mult_mod * center.ability.extra.targets
    return {vars = {center.ability.extra.mult_mod, curr_mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "j_poke_ludicolo",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local adjacent_jokers = poke_get_adjacent_jokers(card)
      local to_energize = {}
      for i = 1, #adjacent_jokers do
        if can_increase_energy(adjacent_jokers[i]) then
          table.insert(to_energize, adjacent_jokers[i])
        end
      end
      local energy_total = 0
      for _,jkr in pairs(to_energize) do
        energy_increase(jkr, "Trans") -- It's a forced "match", like Transformation
        G.E_MANAGER:add_event(Event({
          trigger = 'immediate',
          func = function ()
            card:juice_up(0.1)
            return true
          end}))
          energy_total = energy_total + 1
      end
      card.ability.extra.targets = card.ability.extra.targets + energy_total
      print("LUDI HAS "..tostring(card.ability.extra.targets).." ENERGY")
    end
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main and card.ability.extra.targets > 0 then
      local curr_mult = 1 + card.ability.extra.mult_mod * card.ability.extra.targets
      return {
        message = localize{type = 'variable', key = 'a_xmult', vars = {curr_mult}}, 
        colour = G.C.XMULT,
        Xmult_mod = curr_mult
      }
    end
  end,

}
-- Seedot 273
-- Nuzleaf 274
-- Shiftry 275
-- Taillow 276
-- Swellow 277
-- Wingull 278
-- Pelipper 279
-- Ralts 280
-- Kirlia 281
-- Gardevoir 282
-- Surskit 283
-- Masquerain 284
-- Shroomish 285
-- Breloom 286
-- Slakoth 287
-- Vigoroth 288
-- Slaking 289
-- Nincada 290
-- Ninjask 291
-- Shedinja 292
-- Whismur 293
-- Loudred 294
-- Exploud 295
-- Makuhita 296
-- Hariyama 297
-- Azurill 298
-- Nosepass 299
-- Skitty 300
return {name = "Pokemon Jokers 271-300", 
        list = {lombre, ludicolo},
}