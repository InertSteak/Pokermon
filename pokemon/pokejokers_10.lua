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
  config = {extra = {hands = 1, d_size = 1, h_size = 1, boss_defeated = 0}, evo_rqmt = 2},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hands, center.ability.extra.d_size, center.ability.extra.h_size, math.max(0, self.config.evo_rqmt - center.ability.extra.boss_defeated)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      local message_card = context.blueprint_card or card
      if bonus > .66 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hands}}, colour = G.C.CHIPS})
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'poke_discards', vars = {card.ability.extra.d_size}}, colour = G.C.MULT})
        ease_discard(card.ability.extra.d_size)
      else
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
      end
      card:juice_up()
    end
    if context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
      card.ability.extra.boss_defeated = card.ability.extra.boss_defeated + 1
    end
    return scaling_evo(self, card, context, "j_poke_breloom", card.ability.extra.boss_defeated, self.config.evo_rqmt)
  end,
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
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local bonus = pseudorandom('shroomish')
      local message_card = context.blueprint_card or card
      if bonus > .66 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hands}}, colour = G.C.CHIPS})
        ease_hands_played(card.ability.extra.hands)
      elseif bonus > .33 then
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'poke_discards', vars = {card.ability.extra.d_size}}, colour = G.C.MULT})
        ease_discard(card.ability.extra.d_size)
      else
        card_eval_status_text(message_card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
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
local azurill ={
  name = "azurill",
  pos = {x = 6, y = 4},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_heirophant
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}},
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_heirophant')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_marill")
  end,
}
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
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if context.other_card == card.ability.extra.first then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.XMULT,
            card = card
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        if not card.ability.extra.first then
          for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:is_face() then
              context.scoring_hand[i]:set_ability(G.P_CENTERS.m_stone, nil, true)
              card.ability.extra.first = context.scoring_hand[i];
              break
            end
          end
        end
      end
      if context.after then
        card.ability.extra.first = nil
      end
    end
    return item_evo(self, card, context, "j_poke_probopass")
  end
}
-- Skitty 300
return {name = "Pokemon Jokers 271-300", 
        list = {shroomish, breloom, azurill, nosepass},
}
