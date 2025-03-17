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
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
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
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
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
local nosepass={
  name = "nosepass",
  pos = {x = 7, y = 4},
  config = {extra = {Xmult_multi = 2.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = 2,
  cost = 6,
  item_req = "thunderstone",
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if not card.ability.extra.first then
        for i = 1, #context.scoring_hand do
          if context.scoring_hand[i]:is_face() then
            card.ability.extra.first = context.scoring_hand[i];
            break
          end
        end
      end
      if context.other_card == card.ability.extra.first then
        context.other_card:set_ability(G.P_CENTERS.m_stone, nil, true)
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.XMULT,
            card = card
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after then
        card.ability.extra.first = nil
      end
    end
    return item_evo(self, card, context, "j_poke_probopass")
  end
}
-- Skitty 300
return {name = "Pokemon Jokers 271-300", 
        list = {shroomish, breloom, nosepass},
}
