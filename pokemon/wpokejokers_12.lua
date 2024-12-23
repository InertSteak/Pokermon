-- Cacnea 331
-- Cacturne 332
-- Swablu 333
-- Altaria 334
-- Zangoose 335
-- Seviper 336
-- Lunatone 337
-- Solrock 338
-- Barboach 339
-- Whiscash 340
-- Corphish 341
-- Crawdaunt 342
-- Baltoy 343
-- Claydol 344
-- Lileep 345
-- Cradily 346
-- Anorith 347
-- Armaldo 348
-- Feebas 349
local feebas={
  name = "feebas",
  pos = {x = 7, y = 9},
  config = {extra = {mult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash'}
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 3, 
  item_req = "prismscale",
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex3",
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
    return item_evo(self, card, context, "j_poke_milotic")
  end
}
-- Milotic 350
local milotic={
  name = "milotic",
  pos = {x = 8, y = 9},
  config = {extra = {mult = 1,mult_mod = 1,retriggers = 1, active_flush = false}},
  loc_txt = {
    name = "Milotic",
    text = {
      "Gains {C:mult}+#2#{} Mult whenever a ",
      "played card {C:attention}retriggers{}",
      "Retrigger all played cards in {C:attention}every other{}",
      "hand that contains a {C:attention}Flush{C:inactive}#4#{}",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.retriggers, center.ability.extra.active_flush and ' ('..localize('k_active_ex')..')' or ''}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after and next(context.poker_hands['Flush']) then
        if not card.ability.extra.active_flush then
          card.ability.extra.active_flush = true
          local eval = function() return card.ability.extra.active_flush and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        else
          card.ability.extra.active_flush = false
        end
        for i = 1, #context.scoring_hand do
          context.scoring_hand[i].milo_first = nil
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and card.ability.extra.active_flush and next(context.poker_hands['Flush']) then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if not context.other_card.milo_first then
        context.other_card.milo_first = true
      else
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
  end
}
-- Castform 351
-- Kecleon 352
-- Shuppet 353
-- Banette 354
-- Duskull 355
-- Dusclops 356
-- Tropius 357
-- Chimecho 358
-- Absol 359
-- Wynaut 360
return {name = "Pokemon Jokers 331-360", 
        list = {feebas, milotic},
}
