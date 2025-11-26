-- Miltank 241
local miltank={
  name = "miltank",
  pos = {x = 9, y = 8},
  config = {extra = {money = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.money * #find_pokemon_type("Colorless")}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
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
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
    end
    return {vars = {center.ability.extra.limit, center.ability.extra.triggers}}
  end,
  rarity = "poke_safari", 
  cost = 10,
  ptype = "Colorless",
  enhancement_gate = 'm_lucky',
  stage = "One", 
  atlas = "Pokedex2",
  gen = 2,
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
local raikou={
  name = "raikou",
  pos = {x = 1, y = 9},
  soul_pos = {x = 2, y = 9},
  config = {extra = {money = 9,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, }}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.before and #context.full_hand == 1 and G.GAME.current_round.hands_played == 0 and G.hand and #G.hand.cards > 0 then
        local rank = poke_get_rank(context.scoring_hand[1])
        local hand_cards = {}
        local conv_cards = {}
        for k, v in pairs(G.hand.cards) do
          hand_cards[#hand_cards + 1] = v
        end
        pseudoshuffle(hand_cards, pseudoseed('raikou'))
        local limit = math.min(3, #hand_cards)
        for i = 1, limit do
         conv_cards[#conv_cards + 1] = hand_cards[i]
        end
        juice_flip_table(card, conv_cards, false, limit)
        for i = 1, limit do
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                SMODS.change_base(conv_cards[i], nil, rank)
                return true
            end
          }))
        end
        juice_flip_table(card, conv_cards, true, limit)
        local earned = ease_poke_dollars(card, "raikou", card.ability.extra.money, true)
        return {
          dollars = earned,
          card = card
        }
      end
    end
  end,
}
-- Entei 244
local entei={
  name = "entei",
  pos = {x = 3, y = 9},
  soul_pos = {x = 4, y = 9},
  config = {extra = {Xmult = 1,Xmult_mod = 0.4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, }}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.cardarea == G.jokers and context.scoring_hand then

      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.pre_discard and #context.full_hand == 4 and G.GAME.current_round.discards_used == 0 and not context.blueprint then
      local target = pseudorandom_element(context.full_hand, pseudoseed('entei'))
      target.entei_destroy = true
      target:juice_up()
      delay(0.6)
    end
    if context.discard and context.other_card and context.other_card.entei_destroy and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.XMULT})
      return {
          remove = true
      }
    end
  end,
}
-- Suicune 245
local suicune={
  name = "suicune",
  pos = {x = 5, y = 9},
  soul_pos = {x = 6, y = 9},
  config = {extra = {chips_max = 50}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips_max}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        for k, v in pairs(context.scoring_hand) do
          v.ability.perma_bonus = v.ability.perma_bonus or 0
          v.ability.perma_bonus = v.ability.perma_bonus + math.min(card.ability.extra.chips_max, poke_total_chips(v))
        end
        
        return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
          colour = G.C.CHIPS,
          card = card
        }
      end
    end
  end,
}
-- Larvitar 246
local larvitar={
  name = "larvitar",
  pos = {x = 7, y = 9},
  config = {extra = {chip_mod = 8, full_houses = 0}, evo_rqmt = 6},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chip_mod, math.max(0, self.config.evo_rqmt - center.ability.extra.full_houses)}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and context.scoring_name == "Full House" and not context.blueprint then
        card.ability.extra.full_houses = card.ability.extra.full_houses + 1
      end
    end
    if context.individual and context.cardarea == G.play and context.scoring_hand and context.scoring_name == "Full House" then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chip_mod
      return {
        extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
        colour = G.C.CHIPS,
        card = card
      }
    end
    return scaling_evo(self, card, context, "j_poke_pupitar", card.ability.extra.full_houses, self.config.evo_rqmt)
  end,
}
-- Pupitar 247
local pupitar={
  name = "pupitar",
  pos = {x = 8, y = 9},
  config = {extra = {chip_mod = 12, full_houses = 0}, evo_rqmt = 8},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chip_mod, math.max(0, self.config.evo_rqmt - center.ability.extra.full_houses)}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and context.scoring_name == "Full House" and not context.blueprint then
        card.ability.extra.full_houses = card.ability.extra.full_houses + 1
      end
    end
    if context.individual and context.cardarea == G.play and context.scoring_hand and context.scoring_name == "Full House" then
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chip_mod
      return {
        extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
        colour = G.C.CHIPS,
        card = card
      }
    end
    return scaling_evo(self, card, context, "j_poke_tyranitar", card.ability.extra.full_houses, self.config.evo_rqmt)
  end,
}
-- Tyranitar 248
local tyranitar={
  name = "tyranitar",
  pos = {x = 9, y = 9},
  config = {extra = {chip_mod_minus = 4, Xmult_multi = 0.1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.chip_mod_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.scoring_hand and context.scoring_name == "Full House" then
      context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain or 0
      local drained_vals = math.min(card.ability.extra.chip_mod_minus, context.other_card.base.nominal - context.other_card.ability.nominal_drain - 1)
      if drained_vals > 0 then
        context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain + drained_vals
      end
      local drain_bonus = math.min(context.other_card.ability.bonus + context.other_card.ability.perma_bonus, card.ability.extra.chip_mod_minus- drained_vals)
      if drain_bonus > 0 then
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus - drain_bonus
        drained_vals = drained_vals + drain_bonus
      end
      if drained_vals > 0 then
        card_eval_status_text(context.other_card, 'extra', nil, nil, nil, {message = localize('k_eroded_ex'), colour = G.C.CHIPS})
        context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult or 1
        context.other_card.ability.perma_x_mult = context.other_card.ability.perma_x_mult + card.ability.extra.Xmult_multi
        return {
          extra = {message = localize('k_upgrade_ex'), colour = G.C.XMULT},
          colour = G.C.CHIPS,
          card = card
        }
      end
    end
  end,
  megas = { "mega_tyranitar" },
}
local mega_tyranitar={
  name = "mega_tyranitar",
  pos = {x = 10, y = 2},
  soul_pos = {x = 11, y = 2},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Dark",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.before and context.main_eval and context.scoring_hand and context.scoring_name == "Full House" then
        return {
            level_up = true,
            message = localize('k_level_up_ex')
        }
    end
    if context.individual and context.cardarea == G.play and context.scoring_hand and context.scoring_name == "Full House" then
      local level = G.GAME.hands[context.scoring_name].level
      if (SMODS.Mods["Talisman"] or {}).can_load then
        level = to_number(level)
      end
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
      context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + level
      return {
        extra = {message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
        colour = G.C.CHIPS,
        card = card
      }
    end
  end,
}
-- Lugia 249
local lugia={
  name = "lugia",
  pos = {x = 0, y = 10},
  soul_pos = {x = 1, y = 10},
  config = {extra = {Xmult = 1, Xmult_mod = 1, to_draw = 40, drawn = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.to_draw, center.ability.extra.to_draw - (center.ability.extra.drawn % center.ability.extra.to_draw)}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      card.ability.extra.drawn = card.ability.extra.drawn + #SMODS.drawn_cards
      if card.ability.extra.drawn >= card.ability.extra.to_draw then
        card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_mod * math.floor(card.ability.extra.drawn/card.ability.extra.to_draw))
        card.ability.extra.drawn = card.ability.extra.drawn % card.ability.extra.to_draw
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.XMULT
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if card.ability.extra.Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        end
      end
    end
  end,
}
-- Ho-oh 250
local ho_oh={
  name = "ho_oh",
  pos = {x = 2, y = 10},
  soul_pos = {x = 3, y = 10},
  config = {extra = {limit = 1, used = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
    end
    return {vars = {center.ability.extra.limit, center.ability.extra.limit - center.ability.extra.used}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Fire",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and (card.ability.extra.used < card.ability.extra.limit) and not context.consumeable.config.center.jirachi_item and not context.consumeable.config.center.helditem then
      if not context.blueprint then
        card.ability.extra.used = card.ability.extra.used + 1
      end
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        G.E_MANAGER:add_event(Event({
          func = function() 
            local copy = copy_card(context.consumeable)
            local edition = {polychrome = true}
            copy:set_edition(edition)
            copy:add_to_deck()
            G.consumeables:emplace(copy) 
            return true
        end}))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
      end
    end
    if context.setting_blind and not context.blueprint then
      card.ability.extra.used = 0
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function(card) return card.ability.extra.used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end,
}
-- Celebi 251
local celebi = {
  name = "celebi", 
  pos = {x = 4, y = 10},
  soul_pos = { x = 5, y = 10},
  config = {extra = {reward = 1, skip_count = 0, skip_target = 1, Xmult_mod = .05}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.skip_target, card.ability.extra.reward, card.ability.extra.skip_target - card.ability.extra.skip_count, 
                    card.ability.extra.Xmult_mod, 1 + (G.GAME.round * card.ability.extra.Xmult_mod)}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.skip_blind and not context.blueprint then
      card:juice_up(0.1)
      card.ability.extra.skip_count = card.ability.extra.skip_count + 1
      if card.ability.extra.skip_count >= card.ability.extra.skip_target then
        ease_ante(-card.ability.extra.reward)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante - card.ability.extra.reward
        card.ability.extra.skip_target = card.ability.extra.skip_target + 1
        card.ability.extra.skip_count = 0
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = 1 + (G.GAME.round * card.ability.extra.Xmult_mod)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = Xmult
        }
      end
    end
  end,
}
-- Treecko 252
local treecko={
  name = "treecko",
  pos = {x = 0, y = 0},
  config = {extra = {money_mod = 1, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.money_mod, triggers_left, card.ability.extra.h_size}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod
          G.E_MANAGER:add_event(Event({
              func = function()
                  G.GAME.dollar_buffer = 0
                  return true
              end
          }))
            local earned = ease_poke_dollars(card, "grovyle", card.ability.extra.money_mod, true)
            if not context.blueprint then
              card.ability.extra.triggers = card.ability.extra.triggers + 1
            end
            return {
              dollars = earned,
              card = card
            }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_grovyle", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {money_mod = 1, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.money_mod, triggers_left, card.ability.extra.h_size, card.ability.extra.money_mod + 1}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          local more
          if pseudorandom('grovyle') < .50 then
            more = 0
          else
            more = 1
          end
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod + more
          G.E_MANAGER:add_event(Event({
              func = function()
                  G.GAME.dollar_buffer = 0
                  return true
              end
          }))
            local earned = ease_poke_dollars(card, "grovyle", card.ability.extra.money_mod + more, true)
            if not context.blueprint then
              card.ability.extra.triggers = card.ability.extra.triggers + 1
            end
            return {
              dollars = earned,
              card = card
            }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_sceptile", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {money_mod = 2, money_increase = 1, money_earned = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local card_vars = {center.ability.extra.money_mod, center.ability.extra.money_earned, center.ability.extra.h_size, 
                       center.ability.extra.money_mod + (#find_pokemon_type("Grass", center) * center.ability.extra.money_increase), center.ability.extra.money_increase}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Grass",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money_mod + (#find_pokemon_type("Grass", card) * card.ability.extra.money_increase)
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollar_buffer = 0
                    return true
                end
            }))
            local earned = ease_poke_dollars(card, "sceptile", card.ability.extra.money_mod + (#find_pokemon_type("Grass", card) * card.ability.extra.money_increase), true)
            card.ability.extra.money_earned = card.ability.extra.money_earned + earned
            return {
              dollars = earned,
              card = card
            }
        end
      end
    end
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
  config = {extra = {mult_mod = 5, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.mult_mod, triggers_left, card.ability.extra.d_size}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex3",
  gen = 3,
  starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          if not context.blueprint then
            card.ability.extra.triggers = card.ability.extra.triggers + 1
          end
          return {
            mult = card.ability.extra.mult_mod,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_combusken", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {mult_mod = 8, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.mult_mod, triggers_left, card.ability.extra.d_size}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          if not context.blueprint then
            card.ability.extra.triggers = card.ability.extra.triggers + 1
          end
          return {
            mult = card.ability.extra.mult_mod,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_blaziken", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {mult_mod = 10, Xmult_multi = 1.5, cards_discarded = 0, discard_target = 5, 
            targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, d_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local card_vars = {center.ability.extra.mult_mod, center.ability.extra.Xmult_multi, center.ability.extra.d_size, center.ability.extra.discard_target, 
                       math.max(0, center.ability.extra.discard_target - center.ability.extra.cards_discarded)}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          return {
            mult = card.ability.extra.mult_mod,
            card = card
          }
        end
      end
    end
    
    if context.discard and not context.other_card.debuff and not context.blueprint then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          card.ability.extra.cards_discarded = card.ability.extra.cards_discarded + 1
          if card.ability.extra.cards_discarded >= card.ability.extra.discard_target and not card.ability.extra.juiced then
            card.ability.extra.juiced = true
            local eval = function(card) return (card.ability.extra.cards_discarded >= card.ability.extra.discard_target) and not G.RESET_JIGGLES end
            juice_card_until(card, eval, true)
          end
          break
        end
      end
    end
    
    if context.other_joker and (is_type(context.other_joker, "Fire") or is_type(context.other_joker, "Fighting")) and card.ability.extra.cards_discarded >= card.ability.extra.discard_target then
      G.E_MANAGER:add_event(Event({
        func = function()
            context.other_joker:juice_up(0.5, 0.5)
            return true
        end
      })) 
      return {
        message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult_multi, 
        card = context.other_joker
      }
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
  config = {extra = {chip_mod = 30, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.chip_mod, triggers_left, card.ability.extra.hands}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
  starter = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          if not context.blueprint then
            card.ability.extra.triggers = card.ability.extra.triggers + 1
          end
          return {
            chips = card.ability.extra.chip_mod,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_marshtomp", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {chip_mod = 50, triggers = 0, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}, evo_rqmt = 16},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local triggers_left = math.max(0, self.config.evo_rqmt - card.ability.extra.triggers)
    local card_vars = {card.ability.extra.chip_mod, triggers_left, card.ability.extra.hands}
    add_target_cards_to_vars(card_vars, card.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local chips = card.ability.extra.chips
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          if not context.blueprint then
            card.ability.extra.triggers= card.ability.extra.triggers + 1
          end
          return {
            chips = card.ability.extra.chip_mod,
            card = card
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_swampert", card.ability.extra.triggers, self.config.evo_rqmt)
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
  config = {extra = {chip_mod = 60, nature_target = 5, targets = {{value = "Ace", id = "14"}, {value = "King", id = "13"}, {value = "Queen", id = "12"}}, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local card_vars = {center.ability.extra.chip_mod, center.ability.extra.hands, center.ability.extra.nature_target}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      for i=1, #card.ability.extra.targets do
        if context.other_card:get_id() == card.ability.extra.targets[i].id then
          return {
            chips = card.ability.extra.chip_mod,
            card = card
          }
        end
      end
    end
    if context.joker_main then
      local nature_count = 0
      for i = 1, #context.scoring_hand do
        for j = 1, #card.ability.extra.targets do
          if context.scoring_hand[i]:get_id() == card.ability.extra.targets[j].id then
            nature_count = nature_count + 1
            break
          end
        end
      end
      if nature_count >= 5 then
        local create_number = math.floor((#find_pokemon_type("Water") + #find_pokemon_type("Earth"))/2)
        if create_number > 0 then
          return {
            extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
              for i = 1, create_number do
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                  G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                  G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    delay = 0.0,
                    func = function()
                      SMODS.add_card{set = 'Tarot'}
                      G.GAME.consumeable_buffer = 0
                      return true
                    end
                  }))
                end
              end
            end}
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
local poochyena={
  name = "poochyena",
  pos = {x = 9, y = 0},
  config = {extra = {mult = 0,mult_mod = 2,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.rounds, }}
  end,
  designer = "18themxxn_",
  rarity = 1,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.remove_playing_cards and not context.blueprint then
      for _, removed_card in ipairs(context.removed) do
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MULT})
      end
    end
    return level_evo(self, card, context, "j_poke_mightyena")
  end,
}
-- Mightyena 262
local mightyena={
  name = "mightyena",
  pos = {x = 0, y = 1},
  config = {extra = {mult = 0,mult_mod = 2,mult_scaling_mod = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.mult_scaling_mod, }}
  end,
  designer = "18themxxn_",
  rarity = 2,
  cost = 5,
  gen = 3,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.remove_playing_cards and not context.blueprint then
      for _, removed_card in ipairs(context.removed) do
        card.ability.extra.mult = card.ability.extra.mult + (card.ability.extra.mult_mod + (card.ability.extra.mult_scaling_mod * #find_pokemon_type("Dark")))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.MULT})
      end
    end
  end,
}
-- Zigzagoon 263
local zigzagoon={
  name = "zigzagoon",
  pos = {x = 1, y = 1},
  config = {extra = {num = 1, dem = 4,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'pickup'}
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'zigzagoon')
    return {vars = {num, dem, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if SMODS.pseudorandom_probability(card, 'zigzagoon', card.ability.extra.num, card.ability.extra.dem, 'zigzagoon') then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local _card = create_card('Item',G.consumeables, nil, nil, nil, nil, generate_pickup_item_key('zigzag'))
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
}
-- Linoone 264
local linoone={
  name = "linoone",
  pos = {x = 2, y = 1},
  config = {extra = {num = 1, dem = 3,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'pickup'}
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'linoone')
    return {vars = {num, dem, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if next(context.poker_hands['Straight']) or SMODS.pseudorandom_probability(card, 'linoone', card.ability.extra.num, card.ability.extra.dem, 'linoone') then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Item'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, generate_pickup_item_key('linoone'))
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
        list = {miltank, blissey, raikou, entei, suicune, larvitar, pupitar, tyranitar, mega_tyranitar, lugia, ho_oh, celebi, 
                treecko, grovyle, sceptile, torchic, combusken, blaziken, mudkip, marshtomp, swampert, poochyena, mightyena, zigzagoon, linoone},
}
