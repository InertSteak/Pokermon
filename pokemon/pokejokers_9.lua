-- Miltank 241
-- Blissey 242
local blissey={
  name = "blissey", 
  pos = {x = 0, y = 9}, 
  config = {extra = {limit = 2, triggers = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    if not center.edition or (center.edition and not center.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    return {vars = {center.ability.extra.limit, center.ability.extra.triggers}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  ptype = "Colorless",
  enhancement_gate = 'm_lucky',
  stage = "Two", 
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card.lucky_trigger and card.ability.extra.triggers < card.ability.extra.limit then
      G.playing_card = (G.playing_card and G.playing_card + 1) or 1
      local card_to_copy = context.other_card
      local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
      copy:add_to_deck()
      G.deck.config.card_limit = G.deck.config.card_limit + 1
      table.insert(G.playing_cards, copy)
      G.hand:emplace(copy)
      copy.states.visible = nil

      G.E_MANAGER:add_event(Event({
          func = function()
              copy:start_materialize()
              local edition = {polychrome = true}
              copy:set_edition(edition, true)
              playing_card_joker_effects({copy})
              return true
          end
      })) 
      card.ability.extra.triggers = card.ability.extra.triggers + 1
      return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
      }
    end
    if not context.repetition and not context.individual and context.end_of_round then
      card.ability.extra.triggers = 0
    end
  end
}
-- Raikou 243
-- Entei 244
-- Suicune 245
-- Larvitar 246
-- Pupitar 247
-- Tyranitar 248
-- Lugia 249
-- Ho-oh 250
-- Celebi 251
-- Treecko 252
local treecko={
  name = "treecko",
  pos = {x = 0, y = 0},
  config = {extra = {money = 1, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.money, center.ability.extra.money_earned, center.ability.extra.h_size, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local earn = false
      if find_other_poke_or_energy_type(card, "Grass") > 0 then
        earn = true
      end
      if (pseudorandom('treecko') < G.GAME.probabilities.normal/card.ability.extra.odds) or earn then
        for i=1, #card.ability.extra.targets do
          if context.other_card:get_id() == card.ability.extra.targets[i].id then
              local earned = ease_poke_dollars(card, "grovyle", card.ability.extra.money)
              card.ability.extra.money_earned = card.ability.extra.money_earned + earned
              return {
                message = localize('$')..earned,
                colour = G.C.MONEY,
                card = card
              }
          end
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_grovyle", card.ability.extra.money_earned, 16)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("treecko", 3, card.ability.extra.targets)
    end
  end
}
-- Grovyle 253
local grovyle={
  name = "grovyle",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.money, center.ability.extra.money_earned, center.ability.extra.h_size, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local earn = false
      if find_other_poke_or_energy_type(card, "Grass") > 0 then
        earn = true
      end
      if (pseudorandom('treecko') < G.GAME.probabilities.normal/card.ability.extra.odds) or earn then
        for i=1, #card.ability.extra.targets do
          if context.other_card:get_id() == card.ability.extra.targets[i].id then
              local earned = ease_poke_dollars(card, "bulba", card.ability.extra.money)
              card.ability.extra.money_earned = card.ability.extra.money_earned + earned
              return {
                message = localize('$')..earned,
                colour = G.C.MONEY,
                card = card
              }
          end
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_sceptile", card.ability.extra.money_earned, 32)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("grovyle", 3, card.ability.extra.targets)
    end
  end
}
-- Sceptile 254
local sceptile={
  name = "sceptile",
  pos = {x = 0, y = 0},
  config = {extra = {money = 2, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.money, center.ability.extra.money_earned, center.ability.extra.h_size, 
                       math.min(14, find_other_poke_or_energy_type(center, "Grass") * center.ability.extra.money)}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
            local earned = ease_poke_dollars(card, "sceptile", card.ability.extra.money)
            card.ability.extra.money_earned = card.ability.extra.money_earned + earned
            return {
              message = localize('$')..earned,
              colour = G.C.MONEY,
              card = card
            }
        end
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "sceptile", math.min(14, find_other_poke_or_energy_type(card, "Grass") * card.ability.extra.money), true) 
	end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(card.ability.extra.h_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.hand:change_size(-card.ability.extra.h_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("sceptile", 3, card.ability.extra.targets)
    end
  end
}
-- Torchic 255
local torchic={
  name = "torchic",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 1, cards_discarded = 0, mult_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.mult, center.ability.extra.mult_earned, center.ability.extra.d_size, center.ability.extra.mult * center.ability.extra.cards_discarded}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded 
        if find_other_poke_or_energy_type(card, "Fire") > 0 or find_other_poke_or_energy_type(card, "Fighting") > 0 then
          mult = mult * 2
        end
        card.ability.extra.mult_earned = card.ability.extra.mult_earned + mult
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
          colour = G.C.MULT,
          mult_mod = mult
        }
      end
    end
    if context.discard and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + 1
          return {
            message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
            colour = G.C.RED,
            delay = 0.45, 
            card = card
          }
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.cards_discarded = 0
      card:juice_up()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
    end
    return scaling_evo(self, card, context, "j_poke_combusken", card.ability.extra.mult_earned, 60)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("torchic", 3, card.ability.extra.targets)
    end
  end
}
-- Combusken 256
local combusken={
  name = "combusken",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 3, cards_discarded = 0, mult_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.mult, center.ability.extra.mult_earned, center.ability.extra.d_size, center.ability.extra.mult * center.ability.extra.cards_discarded}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded 
        if find_other_poke_or_energy_type(card, "Fire") > 0 or find_other_poke_or_energy_type(card, "Fighting") > 0 then
          mult = mult * 2
        end
        card.ability.extra.mult_earned = card.ability.extra.mult_earned + mult
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
          colour = G.C.MULT,
          mult_mod = mult
        }
      end
    end
    if context.discard and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + 1
          return {
            message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
            colour = G.C.RED,
            delay = 0.45, 
            card = card
          }
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.cards_discarded = 0
      card:juice_up()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
    end
    return scaling_evo(self, card, context, "j_poke_blaziken", card.ability.extra.mult_earned, 150)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("combusken", 3, card.ability.extra.targets)
    end
  end
}
-- Blaziken 257
local blaziken={
  name = "blaziken",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = .3, cards_discarded = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.Xmult, center.ability.extra.d_size, 1 + center.ability.extra.Xmult * center.ability.extra.cards_discarded}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = card.ability.extra.Xmult * card.ability.extra.cards_discarded 
        if find_other_poke_or_energy_type(card, "Fire") > 0 or find_other_poke_or_energy_type(card, "Fighting") > 0 then
          Xmult = Xmult * 2
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = Xmult
        }
      end
    end
    if context.discard and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + 1
          return {
            message = localize{type='variable',key='a_xmult',vars={card.ability.extra.Xmult}},
            colour = G.C.RED,
            delay = 0.45, 
            card = card
          }
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.cards_discarded = 0
      card:juice_up()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
      ease_discard(card.ability.extra.d_size)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
      ease_discard(-card.ability.extra.d_size)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("blaziken", 3, card.ability.extra.targets)
    end
  end
}
-- Mudkip 258
local mudkip={
  name = "mudkip",
  pos = {x = 0, y = 0},
  config = {extra = {chips = 20, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.chips, center.ability.extra.chips_earned, center.ability.extra.hands}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local chips = card.ability.extra.chips
      if find_other_poke_or_energy_type(card, "Water") > 0 or find_other_poke_or_energy_type(card, "Earth") > 0 then
        chips = chips * 2
      end
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.chips_earned = card.ability.extra.chips_earned + chips
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
            colour = G.C.CHIPS,
            chips = chips
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_marshtomp", card.ability.extra.chips_earned, 400)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("mudkip", 3, card.ability.extra.targets)
    end
  end
}
-- Marshtomp 259
local marshtomp={
  name = "marshtomp",
  pos = {x = 0, y = 0},
  config = {extra = {chips = 30, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.chips, center.ability.extra.chips_earned, center.ability.extra.hands}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local chips = card.ability.extra.chips
      if find_other_poke_or_energy_type(card, "Water") > 0 or find_other_poke_or_energy_type(card, "Earth") > 0 then
        chips = chips * 2
      end
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.chips_earned = card.ability.extra.chips_earned + chips
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
            colour = G.C.CHIPS,
            chips = chips
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_swampert", card.ability.extra.chips_earned, 960)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("marshtomp", 3, card.ability.extra.targets)
    end
  end
}
-- Swampert 260
local swampert={
  name = "swampert",
  pos = {x = 0, y = 0},
  config = {extra = {chips = 40, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.chips, center.ability.extra.chips_earned, center.ability.extra.hands, 
                       center.ability.extra.chips + center.ability.extra.chips * (find_other_poke_or_energy_type(center, "Water") + find_other_poke_or_energy_type(center, "Earth"))}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local chips = card.ability.extra.chips
      if find_other_poke_or_energy_type(card, "Water") or find_other_poke_or_energy_type(card, "Earth") then
        chips = chips + card.ability.extra.chips * (find_other_poke_or_energy_type(card, "Water") + find_other_poke_or_energy_type(card, "Earth"))
      end
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.chips_earned = card.ability.extra.chips_earned + chips
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
            colour = G.C.CHIPS,
            chips = chips
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_swampert", card.ability.extra.chips_earned, 800)
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.targets = get_poke_target_card_ranks("swampert", 3, card.ability.extra.targets)
    end
  end
}
-- Poochyena 261
-- Mightyena 262
-- Zigzagoon 263
-- Linoone 264
-- Wurmple 265
-- Silcoon 266
-- Beautifly 267
-- Cascoon 268
-- Dustox 269
-- Lotad 270
return {name = "Pokemon Jokers 240-270", 
        list = {blissey, treecko, grovyle, sceptile, torchic, combusken, blaziken, mudkip, marshtomp, swampert},
}