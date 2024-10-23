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
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {C:chips}#3#{} Chips)",
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
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {C:chips}#3#{} Chips)",
      "{C:inactive}(Evolves at {C:mult}+40{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Basic", 
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
  config = {extra = {mult = 40, chips = 104, size = 4}},
  loc_txt = {      
    name = 'Metagross',      
    text = {
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips",
      "{X:mult,C:white}X{} Mult equal to the {C:attention}cube root{} of",
      "the {C:attention}difference{} between {C:mult}#1#{} and {C:chips}#2#{}",
      "if played hand contains exactly {C:attention}#3#{} {C:attention}Aces{}",
      "{C:inactive}(Currently {X:mult,C:white}X#4#{} Mult{C:inactive})",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.size, math.max(1, math.abs(center.ability.extra.chips - center.ability.extra.mult)^(1/3))}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Basic", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1
        if #context.full_hand == card.ability.extra.size then
          local ace_count = 0
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 14 then ace_count = ace_count + 1 end
          end
          if ace_count == 4 then
            Xmult = math.abs(card.ability.extra.chips - card.ability.extra.mult)^(1/3)
          end
        end
        if Xmult < 1 then 
          Xmult = 1 
        elseif Xmult > 1 then
          card_eval_status_text((context.blueprint_card or card), 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}},colour = G.C.XMULT})
        end
        return {
          message = "Klang!", 
          colour = G.C.CHIPS,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          Xmult_mod = Xmult,
          card = card
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