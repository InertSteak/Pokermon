-- Miltank 241
local miltank={
  name = "miltank",
  pos = {x = 9, y = 8},
  config = {extra = {money = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.money * #find_pokemon_type("Colorless")}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calc_dollar_bonus = function(self, card)
    local earned = card.ability.extra.money * #find_pokemon_type("Colorless")
    local above_zero = nil
    if (SMODS.Mods["Talisman"] or {}).can_load then
      above_zero = to_big(earned) > to_big(0)
    else
      above_zero = earned > 0
    end
    if above_zero then
      return ease_poke_dollars(card, "miltank", earned, true)
    end
  end,
}
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

      G.E_MANAGER:add_event(Event({
          func = function()
              local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
              copy:add_to_deck()
              G.deck.config.card_limit = G.deck.config.card_limit + 1
              table.insert(G.playing_cards, copy)
              G.hand:emplace(copy)
              copy.states.visible = nil
              copy:start_materialize()
              local edition = {polychrome = true}
              copy:set_edition(edition, true)
              playing_card_joker_effects({copy})
              return true
          end
      })) 
      if not context.blueprint then
        card.ability.extra.triggers = card.ability.extra.triggers + 1
      end
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
local celebi = {
  name = "celebi", 
  pos = {x = 4, y = 10},
  soul_pos = { x = 5, y = 10},
  config = {extra = {reward = 1, skip_count = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {G.GAME.celebi_skips, card.ability.extra.reward, G.GAME.celebi_skips - card.ability.extra.skip_count}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.skip_blind then
      card:juice_up(0.1)
      card.ability.extra.skip_count = card.ability.extra.skip_count + 1
      if card.ability.extra.skip_count >= G.GAME.celebi_skips then
        ease_ante(-card.ability.extra.reward)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante - card.ability.extra.reward
        G.E_MANAGER:add_event(Event({
          trigger = 'immediate',
          func = function()
            if not G.GAME.celebi_triggered then
              G.GAME.celebi_skips = G.GAME.celebi_skips + 1
              G.GAME.celebi_triggered = true
            end
            card.ability.extra.skip_count = 0
            return true
          end
        }))
      else
        G.GAME.celebi_triggered = false
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    G.GAME.celebi_skips = G.GAME.celebi_skips or 1
    G.GAME.celebi_triggered = false
  end
}
-- Treecko 252
local treecko={
  name = "treecko",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 1, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local money_left = math.max(0, self.config.evo_rqmt - card.ability.extra.money_earned)
    local card_vars = {card.ability.extra.money_mod, money_left, card.ability.extra.h_size, ''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
              local earned = ease_poke_dollars(card, "grovyle", card.ability.extra.money_mod, true)
              card.ability.extra.money_earned = card.ability.extra.money_earned + earned
              return {
                dollars = earned,
                card = card
              }
          end
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_grovyle", card.ability.extra.money_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
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
  pos = {x = 1, y = 0},
  config = {extra = {money_mod = 2, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}, evo_rqmt = 32},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local money_left = math.max(0, self.config.evo_rqmt - card.ability.extra.money_earned)
    local card_vars = {card.ability.extra.money_mod, money_left, card.ability.extra.h_size, ''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
              local earned = ease_poke_dollars(card, "grovyle", card.ability.extra.money_mod, true)
              card.ability.extra.money_earned = card.ability.extra.money_earned + earned
              return {
                dollars = earned,
                card = card
              }
          end
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_sceptile", card.ability.extra.money_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
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
  pos = {x = 2, y = 0},
  config = {extra = {money_mod = 2, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1, odds = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.money_mod, center.ability.extra.money_earned, center.ability.extra.h_size, 
                       math.min(14, find_other_poke_or_energy_type(center, "Grass") * center.ability.extra.money_mod)}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
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
            local earned = ease_poke_dollars(card, "sceptile", card.ability.extra.money_mod, true)
            card.ability.extra.money_earned = card.ability.extra.money_earned + earned
            return {
              dollars = earned,
              card = card
            }
        end
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "sceptile", math.min(14, find_other_poke_or_energy_type(card, "Grass") * card.ability.extra.money_mod), true) 
	end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
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
  pos = {x = 3, y = 0},
  config = {extra = {mult = 1, cards_discarded = 0, mult_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}, evo_rqmt = 60},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local mult_left = math.max(0, self.config.evo_rqmt - card.ability.extra.mult_earned)
    local card_vars = {card.ability.extra.mult, mult_left, card.ability.extra.d_size, card.ability.extra.mult * card.ability.extra.cards_discarded}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
        card.ability.extra.mult_earned = card.ability.extra.mult_earned + mult
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
          colour = G.C.MULT,
          mult_mod = mult
        }
      end
    end
    if context.discard and not context.other_card.debuff and not context.blueprint then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          local discard_plus = 1
          if find_other_poke_or_energy_type(card, "Fire") > 0 or find_other_poke_or_energy_type(card, "Fighting") > 0 then
            discard_plus = 2
          end 
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + discard_plus
          return {
            message = localize{type='variable',key='a_mult',vars={discard_plus}},
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
    return scaling_evo(self, card, context, "j_poke_combusken", card.ability.extra.mult_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
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
  pos = {x = 4, y = 0},
  config = {extra = {mult = 3, cards_discarded = 0, mult_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}, evo_rqmt = 150},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local mult_left = math.max(0, self.config.evo_rqmt - card.ability.extra.mult_earned)
    local card_vars = {card.ability.extra.mult, mult_left, card.ability.extra.d_size, card.ability.extra.mult * card.ability.extra.cards_discarded}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
        card.ability.extra.mult_earned = card.ability.extra.mult_earned + mult
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
          colour = G.C.MULT,
          mult_mod = mult
        }
      end
    end
    if context.discard and not context.other_card.debuff and not context.blueprint then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          local discard_plus = 1
          if find_other_poke_or_energy_type(card, "Fire") > 0 or find_other_poke_or_energy_type(card, "Fighting") > 0 then
            discard_plus = 2
          end 
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + discard_plus
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
    return scaling_evo(self, card, context, "j_poke_blaziken", card.ability.extra.mult_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
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
  pos = {x = 5, y = 0},
  config = {extra = {Xmult = .15, mult = 1, cards_discarded = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card = center
    local mult = card.ability.extra.mult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
    local Xmult = 1 + card.ability.extra.Xmult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
    local card_vars = {center.ability.extra.Xmult, center.ability.extra.d_size, Xmult, center.ability.extra.mult, mult}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
        local Xmult = 1 + card.ability.extra.Xmult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
        return {
          message = localize('poke_blazekick_ex'), 
          colour = G.C.MULT,
          Xmult_mod = Xmult,
          mult_mod = mult
        }
      end
    end
    if context.discard and not context.other_card.debuff and not context.blueprint then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + 1
          return {
            message = localize('k_upgrade_ex'),
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
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
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
  pos = {x = 6, y = 0},
  config = {extra = {chips = 20, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}, evo_rqmt = 400},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local chips_left = math.max(0, self.config.evo_rqmt - card.ability.extra.chips_earned)
    local card_vars = {card.ability.extra.chips, chips_left, card.ability.extra.hands}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
            chips = chips,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_marshtomp", card.ability.extra.chips_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
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
  pos = {x = 7, y = 0},
  config = {extra = {chips = 30, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}, evo_rqmt = 960},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local chips_left = math.max(0, self.config.evo_rqmt - card.ability.extra.chips_earned)
    local card_vars = {card.ability.extra.chips, chips_left, card.ability.extra.hands}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
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
            chips = chips,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_swampert", card.ability.extra.chips_earned, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
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
  pos = {x = 8, y = 0},
  config = {extra = {chips = 40, chip_mod = 20, chips_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"ranks"}}
    local card_vars = {center.ability.extra.chips, center.ability.extra.chips_earned, center.ability.extra.hands, 
                       center.ability.extra.chips + center.ability.extra.chip_mod * (find_other_poke_or_energy_type(center, "Water") + find_other_poke_or_energy_type(center, "Earth")),                       center.ability.extra.chip_mod}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
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
        chips = chips + card.ability.extra.chip_mod * (find_other_poke_or_energy_type(card, "Water") + find_other_poke_or_energy_type(card, "Earth"))
      end
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.chips_earned = card.ability.extra.chips_earned + chips
          return {
            chips = chips,
            card = card
          }
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
    if not from_debuff then
      ease_hands_played(card.ability.extra.hands)
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
    local to_decrease = math.min(G.GAME.current_round.hands_left - 1, card.ability.extra.hands)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease)
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
local zigzagoon={
  name = "zigzagoon",
  pos = {x = 1, y = 1},
  config = {extra = {odds = 6,rounds = 5,}},
  loc_txt = {
    name = "Zigzagoon",
    text = {
      "{C:attention}Holding Pickup{} {C:item}Item{}",
      "{C:green}#1# in #2#{} chance to create an",
      "{C:item}Item{} when hand is played",
      "{C:inactive}(Must have room)",
      "{C:inactive,s:0.8}(Evolves after {C:attention}#3#{C:inactive,s:0.8} rounds)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'pickup'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'pokeballs_group'}
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leftovers
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if pseudorandom('zigzag') < G.GAME.probabilities.normal/card.ability.extra.odds then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Item'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end}
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_linoone")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local item_key = 'c_poke_ultraball'
      local item_chance = pseudorandom('zigzag')
      if item_chance < .34 then item_key = nil
      elseif item_chance < .59 then item_key = 'c_poke_leftovers'
      elseif item_chance < .84 then item_key = 'c_poke_pokeball'
      elseif item_chance < .99 then item_key = 'c_poke_greatball'
      end
      local _card = create_card('Item',G.consumeables, nil, nil, nil, nil, item_key)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card:juice_up()
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink})
    end
  end,
}
-- Linoone 264
local linoone={
  name = "linoone",
  pos = {x = 2, y = 1},
  config = {extra = {odds = 4,rounds = 5,}},
  loc_txt = {
    name = "Linoone",
    text = {
      "{C:green}#1# in #2#{} chance to create an",
      "{C:item}Item{} when hand is played",
      "Guaranteed if hand",
      "contains a {C:attention}Straight{}",
      "{C:inactive}(Must have room)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if next(context.poker_hands['Straight']) or pseudorandom('linoone') < G.GAME.probabilities.normal/card.ability.extra.odds then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Item'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end}
          }
        end
      end
    end
  end,
}
-- Wurmple 265
-- Silcoon 266
-- Beautifly 267
-- Cascoon 268
-- Dustox 269
-- Lotad 270
return {name = "Pokemon Jokers 240-270", 
        list = {miltank, blissey, celebi, treecko, grovyle, sceptile, torchic, combusken, blaziken, mudkip, marshtomp, swampert, zigzagoon, linoone},
}
