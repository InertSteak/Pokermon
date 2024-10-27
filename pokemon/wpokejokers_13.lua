-- Snorunt 361
-- Glalie 362
-- Spheal 363
-- Sealeo 364
-- Walrein 365
-- Clamperl 366
-- Huntail 367
-- Gorebyss 368
-- Relicanth 369
-- Luvdisc 370
-- Bagon 371
-- Shelgon 372
-- Salamence 373
-- Beldum 374
local beldum={
  name = "beldum", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 0, mult_mod = 1, chips = 0, chip_mod = 5, size = 4}},
  loc_txt = {      
    name = 'Beldum',      
    text = {
      "Gains {C:mult}+#2#{} Mult and {C:chips}+#4#{} Chips",
      "if played hand contains at least",
      "one scoring {C:attention}Ace{} and is exactly {C:attention}#5#{} cards",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {C:chips}+#3#{}{C:inactive} Chips)",
      "{C:inactive}(Evolves at {C:mult}+10{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand == card.ability.extra.size and not context.blueprint then
        local has_ace = false
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then has_ace = true; break end
        end
        if has_ace then
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        end
      end
      if context.joker_main then
        
        return {
          message = "Klang!", 
          colour = G.C.CHIPS,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_metang", card.ability.extra.mult, 10)
  end,
}
-- Metang 375
local metang={
  name = "metang", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 10, mult_mod = 2, chips = 50, chip_mod = 5, size = 4}},
  loc_txt = {      
    name = 'Metang',      
    text = {
      "Gains {C:mult}+#2#{} Mult and {C:chips}+#4#{} Chips",
      "if played hand contains at least",
      "two scoring {C:attention}Aces{} and is exactly {C:attention}#5#{} cards",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {C:chips}+#3#{}{C:inactive} Chips)",
      "{C:inactive}(Evolves at {C:mult}+40{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Two", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand == card.ability.extra.size and not context.blueprint then
        local ace_count = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then ace_count = ace_count + 1 end
        end
        if ace_count > 1 then
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        end
      end
      if context.joker_main then
        return {
          message = "Klang!", 
          colour = G.C.CHIPS,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_metagross", card.ability.extra.mult, 40)
  end,
}
-- Metagross 376
local metagross={
  name = "metagross", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 40, chips = 100,}},
  loc_txt = {      
    name = 'Metagross',      
    text = {
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips",
      "If played hand is a {C:attention}Four of a Kind{}",
      "each played card gives {X:mult,C:white}X{} Mult",
      "equal to the {C:attention}cube root{} ",
      "of that card's total chips",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.size, math.max(1, math.abs(center.ability.extra.chips - center.ability.extra.mult)^(1/3))}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = "Klang!", 
          colour = G.C.CHIPS,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          card = card
        }
      end
    end
    if context.individual and context.cardarea == G.play and not context.end_of_round and context.scoring_name and context.scoring_name == "Four of a Kind" then
      local total_chips = (context.other_card.base.nominal) + (context.other_card.ability.bonus) + (context.other_card.ability.perma_bonus or 0) 
      if context.other_card.edition then
        total_chips = total_chips + (context.other_card.edition.chips or 0)
      end
      local Xmult = (total_chips)^(1/3)
      if Xmult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}},
          colour = G.C.XMULT,
          mult = card.ability.extra.mult_mod, 
          x_mult = Xmult
        }
      end
    end
  end,
}
-- Regirock 377
-- Regice 378
-- Registeel 379
-- Latias 380
-- Latios 381
-- Kyogre 382
-- Groudon 383
-- Rayquaza 384
-- Jirachi 385
-- Deoxys 386
-- Turtwig 387
-- Grotle 388
-- Torterra 389
-- Chimchar 390
return {name = "Pokemon Jokers 361-390", 
        list = {beldum, metang, metagross},
}