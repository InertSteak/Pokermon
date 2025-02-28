-- Lombre 271
-- Ludicolo 272
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
local shroomish={
  name = "shroomish",
  pos = {x = 3, y = 3},
  config = {extra = {hands = 1, d_size = 1, h_size = 1, boss_quest = 0, ante = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.d_size, center.ability.extra.h_size, center.ability.extra.ante}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      if bonus > .66 then
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        ease_discard(card.ability.extra.d_size)
      else
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 1
      end
      card:juice_up()
    end
    if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss and G.GAME.round_resets.ante >= card.ability.extra.ante then
      card.ability.extra.boss_quest = card.ability.extra.boss_quest + 1
      return scaling_evo(self, card, context, "j_poke_breloom", card.ability.extra.boss_quest, 1)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.ante = G.GAME.round_resets.ante + 1
    end
  end
}
-- Breloom 286
local breloom={
  name = "breloom",
  pos = {x = 4, y = 3},
  config = {extra = {hands = 2, d_size = 2, h_size = 2}},
  loc_txt = {
    name = "Breloom",
    text = {
      "When {C:attention}Blind{} is selected, gain",
      "{C:chips}+#1#{} hands, {C:mult}+#2#{} discards, or {C:attention}+#3#{} hand size",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.d_size, center.ability.extra.h_size}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      if bonus > .66 then
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        ease_discard(card.ability.extra.d_size)
      else
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 1
      end
      card:juice_up()
    end
  end
}
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
        list = {shroomish, breloom},
}