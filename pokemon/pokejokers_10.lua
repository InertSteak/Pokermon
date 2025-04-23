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
local ralts = {
  name = "ralts", 
  pos = {x = 8, y = 2}, 
  config = {extra = {triggers_mod = 1, triggers = 0, odds = 5, Xmult_minus = 0.75,}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds or 5, center.ability.extra.triggers, center.ability.extra.Xmult_minus}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Baby", 
  ptype = "Psychic",
  atlas = "Pokedex3",
  blueprint_compat = true,
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
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff and not G.consumeables.cards[1].ability.extra.used_on then
      local _card
      if G.consumeables.cards[1] then
        if pseudorandom('ralts') < G.GAME.probabilities.normal/card.ability.extra.odds then
          _card = copy_card(pseudorandom_element({G.consumeables.cards[1]}, pseudoseed('ralts')), nil)
          _card:set_edition({negative = true}, true)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        else
          G.consumeables.cards[1]:remove()
          return {
            message = "Nope!", 
            colour = G.C.UI.TEXT_INACTIVE,
          }
        end
        if not context.blueprint then
          G.consumeables.cards[1]:remove()
          card.ability.extra.triggers= card.ability.extra.triggers_mod + card.ability.extra.triggers
        end
      end
      return scaling_evo(self, card, context, "j_poke_kirlia", card.ability.extra.triggers, self.config.evo_rqmt)
    end
  end,
}
local kirlia = {
  name = "kirlia", 
  pos = {x = 9, y = 2}, 
  config = {extra = {triggers_mod = 1, triggers = 0, odds = 4, hsize = 1,}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds or 4, center.ability.extra.triggers, center.ability.extra.hsize or 0 }}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex3",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint and not card.debuff then
      _card = context.scoring_hand[1]
      local seal_type ="poke_pink_seal"
      _card:set_seal(seal_type, true)
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff and not G.consumeables.cards[1].ability.extra.used_on then
      local _card
      if G.consumeables.cards[1] then
        if pseudorandom('kirlia') < G.GAME.probabilities.normal/card.ability.extra.odds then
          _card = copy_card(pseudorandom_element({G.consumeables.cards[1]}, pseudoseed('kirlia')), nil)
          _card:set_edition({negative = true}, true)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        else
          G.consumeables.cards[1]:remove()
          return {
            message = "Nope!", 
            colour = G.C.UI.TEXT_INACTIVE,
          }
        end
        if not context.blueprint then
          G.consumeables.cards[1]:remove()
          card.ability.extra.triggers= card.ability.extra.triggers_mod + card.ability.extra.triggers
        end
      end
      return scaling_evo(self, card, context, "j_poke_gardevoir", card.ability.extra.triggers, self.config.evo_rqmt)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.hsize
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.hsize
      return true end }))
  end,
}
local gardevoir = {
  name = "gardevoir", 
  pos = {x = 0, y = 3}, 
  config = {extra = {odds = 3, hsize = 2, Xmult = 1, Xmult_mod = 0.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds or 4, center.ability.extra.hsize or 0, center.ability.extra.Xmult, center.ability.extra.Xmult_mod, (center.ability.extra.Xmult_mod * 2) }}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Psychic",
  atlas = "Pokedex3",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult,
          card = card
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff and not G.consumeables.cards[1].ability.extra.used_on then
      local _card
      if G.consumeables.cards[1] then
        if pseudorandom('gardevoir') < G.GAME.probabilities.normal/card.ability.extra.odds then
          _card = copy_card(pseudorandom_element({G.consumeables.cards[1]}, pseudoseed('gardevoir')), nil)
          _card:set_edition({negative = true}, true)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        else
          G.consumeables.cards[1]:remove()
          return {
            message = "Nope!", 
            colour = G.C.UI.TEXT_INACTIVE,
          }
        end
        if not context.blueprint then
          if G.consumeables.cards[1].ability.set == 'Spectral' then
            card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_mod * 2)
          else
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          end
          G.consumeables.cards[1]:remove()
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.hsize
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.hsize
      return true end }))
  end,
  megas = {"mega_gardevoir"}
}
local mega_gardevoir = {
  name = "mega_gardevoir", 
  pos = {x = 3, y = 3}, 
  soul_pos = {x = 4, y = 3},
  config = {extra = {odds = 2, hsize = 3,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds or 3, center.ability.extra.hsize,}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Psychic",
  atlas = "Megas",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      for k, v in pairs(context.scoring_hand) do
        if v.seal == 'poke_pink_seal' then
          return {
            message = localize('k_again_ex'),
            repetitions = 1,
            card = card
          }
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff and not G.consumeables.cards[1].ability.extra.used_on then
      local _card
      if G.consumeables.cards[1] then
        if pseudorandom('mega_gardevoir') < G.GAME.probabilities.normal/card.ability.extra.odds then
          _card = copy_card(pseudorandom_element({G.consumeables.cards[1]}, pseudoseed('mega_gardevoir')), nil)
          _card:set_edition({negative = true}, true)
          _card:add_to_deck()
          G.consumeables:emplace(_card)
        else
          return {
            message = "Nope!", 
            colour = G.C.UI.TEXT_INACTIVE,
          }
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.hsize
      return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.hsize
      return true end }))
  end,
}
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
        list = {ralts, kirlia, gardevoir, mega_gardevoir, shroomish, breloom, nosepass},
}
