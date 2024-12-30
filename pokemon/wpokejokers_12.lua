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
  rarity = 3, 
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
  config = {extra = {mult = 1,mult_mod = 1,retriggers = 1, active = false}},
  loc_txt = {
    name = "Milotic",
    text = {
      "Retrigger all played cards if",
      "they all have the same {C:attention}suit{}",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
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
      if context.before then
        local suit = nil
        card.ability.extra.active = true
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i].ability.name ~= "Wild Card" and not context.scoring_hand[i].debuff then
            suit = context.scoring_hand[i].base.suit
            break
          end
        end
        if suit then
          for i = 2, #context.scoring_hand do
            if not context.scoring_hand[i]:is_suit(suit) then
              card.ability.extra.active = false
              break
            end
          end
        end
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and card.ability.extra.active then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
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
