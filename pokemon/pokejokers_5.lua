--Code for pokemon jokers 121-150
local starmie={
  name = "starmie", 
  pos = {x = 3, y = 9},
  config = {extra = {mult = 3, money = 1, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        ease_dollars(card.ability.extra.money)
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.evolve == true then
      return {
        message = evolve (self, card, context, 'j_poke_starmie')
      }
    end
  end
}
local mrmime={
  name = "mrmime", 
  pos = {x = 4, y = 9}, 
  config = {extra = {retriggers = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand then
      if (context.other_card == G.hand.cards[1]) and (next(context.card_effects[1]) or #context.card_effects > 1) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
local scyther={
  name = "scyther", 
  pos = {x = 5, y = 9},
  config = {extra = {mult = 0, mult_mod = 4, chips = 0, chip_mod = 8}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          if (sliced_card.config.center.rarity ~= 1) and (sliced_card.config.center.rarity ~= 2) and not card.edition then
            local edition = poll_edition('wheel_of_fortune', nil, true, true)
            card:set_edition(edition, true)
          end
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              if pseudorandom('scyther') < .50 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
              else
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
              end
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, colour = G.C.RED, no_juice = true})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
            message = "Wing Attack!",
            mult_mod = card.ability.extra.mult,
            chip_mod = card.ability.extra.chips
        }
      end
    end
    return type_evo(self, card, context, "j_poke_scizor", "metal")
  end
}
local jynx={
  name = "jynx", 
  pos = {x = 6, y = 9}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.playing_card_added and not self.getting_sliced then
      if context.cards and type(context.cards) == "table" and #context.cards > 0 then
        for k, v in ipairs(context.cards) do
          if type(v) == "table" then
            local card_to_copy = v
            local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
            copy:add_to_deck()
            G.deck.config.card_limit = G.deck.config.card_limit + 1
            table.insert(G.playing_cards, copy)
            G.deck:emplace(copy)
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex')})
            playing_card_joker_effects({true});
          end
        end
      end
    end
  end
}
local electabuzz={
  name = "electabuzz", 
  pos = {x = 7, y = 9}, 
  config = {extra = {money = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 7, 
  item_req = "linkcable",
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if ((context.selling_card) or (not context.repetition and not context.individual and context.end_of_round)) and not context.blueprint then
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.money
      card:set_cost()
      G.E_MANAGER:add_event(Event({
        func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
        end}))
    end
    return item_evo(self, card, context, "j_poke_electivire")
  end
}
local magmar={
  name = "magmar", 
  pos = {x = 8, y = 9}, 
  config = {extra = {mult = 0, mult_mod = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 7, 
  item_req = "linkcable",
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.discard and not context.blueprint then
      if G.GAME.current_round.discards_used == 0 and #context.full_hand == 1 then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
        return {
          remove = true
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_magmortar")
  end
}
local pinsir={
  name = "pinsir", 
  pos = {x = 9, y = 9},
  config = {extra = {Xmult = 1.75}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.ending_shop and not context.blueprint then
      if not G.jokers.cards[1].pinned then
        G.jokers.cards[1].pinned = true
        card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = localize("poke_pinsir_pin"), colour = G.C.CHIPS})
      end
    end
    if not context.repetition and not context.individual and context.end_of_round then
      if G.jokers.cards[1].pinned then
        G.jokers.cards[1].pinned = false
        card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = localize("poke_pinsir_remove_pin"), colour = G.C.CHIPS})
      end
    end
  end
}
local tauros={
  name = "tauros", 
  pos = {x = 10, y = 9},
  config = {extra = {Xmult_multi = 1.5, odds = 15}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, ''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.other_joker and context.other_joker.config and (context.other_joker.label == "tauros" or context.other_joker.label == "taurosh") then
        G.E_MANAGER:add_event(Event({
          func = function()
              context.other_joker:juice_up(0.5, 0.5)
              return true
          end
        })) 
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_multi
        }
    end
    if context.reroll_shop and not context.blueprint then
      if pseudorandom('tauros') < G.GAME.probabilities.normal/card.ability.extra.odds then
        local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_poke_taurosh"}
        local new_card = SMODS.create_card(temp_card)
        create_shop_card_ui(new_card, 'Joker', G.shop_jokers)
        new_card.states.visible = false
        G.shop_jokers:emplace(new_card)
        new_card:start_materialize()
        new_card:set_cost()
      end
    end
  end
}
local taurosh={
  name = "taurosh",
  pos = {x = 11, y = 9},
  config = {extra = {mult = 6}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
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
  end
}
local magikarp={
  name = "magikarp",
  pos = {x = 12, y = 9},
  config = {extra = {rounds = 10}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash'}
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gyarados")
  end
}
local gyarados={
  name = "gyarados", 
  pos = {x = 0, y = 10},
  config = {extra = {Xmult = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
local lapras={
  name = "lapras", 
  pos = {x = 1, y = 10},
  config = {extra = {chips = 0, chip_mod = 100}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.chips = G.GAME.skips * card.ability.extra.chip_mod
    end
  end
}
local ditto={
  name = "ditto", 
  pos = {x = 2, y = 10}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'perishable', set = 'Other', vars = {G.GAME.perishable_rounds or 1, G.GAME.perishable_rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  eternal_compat = false,
  custom_pool_func = true, 
  calculate = function(self, card, context) --mostly copied from how invisible joker works
    if context.selling_self and not context.blueprint then
      local eval = function(card) return (card.ability.loyalty_remaining == 0) and not G.RESET_JIGGLES end
                    juice_card_until(card, eval, true)
      local jokers = {}
      for i=1, #G.jokers.cards do 
          if G.jokers.cards[i] ~= card then
              jokers[#jokers+1] = G.jokers.cards[i]
          end
      end
      
      if #jokers > 0 then 
          if #G.jokers.cards + G.GAME.joker_buffer <= G.jokers.config.card_limit then 
              card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
              local chosen_joker = jokers[1]
              
              local card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
              card:set_eternal(false)
              --Setting it directly to overrule perishiable compatibility
              card.ability.perishable = true
              card.ability.perish_tally = G.GAME.perishable_rounds
              apply_type_sticker(card, "Colorless")
              card:add_to_deck()
              G.jokers:emplace(card)
          else
              card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
          end
      else
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_other_jokers')})
      end
    end
  end,
  in_pool = function(self)
    local availible = true
    if G.jokers.cards and #G.jokers.cards > 0 then
      for k, v in ipairs(#G.jokers.cards) do
        if v.ability.perishable then
          availible = false
          break
        end
      end
    end
    return availible
  end
}
local eevee={
  name = "eevee", 
  pos = {x = 3, y = 10},
  config = {extra = {money = 2, limit = 0, max = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.limit, center.ability.extra.max}}
  end,
  rarity = 2, 
  cost = 4,
  item_req = {"waterstone", "thunderstone", "firestone", "sunstone", "moonstone", "leafstone", "icestone", "shinystone"},
  evo_list = {waterstone = "j_poke_vaporeon", thunderstone = "j_poke_jolteon", firestone = "j_poke_flareon", sunstone = "j_poke_espeon", moonstone = "j_poke_umbreon", 
              leafstone = "j_poke_leafeon", icestone = "j_poke_glaceon", shinystone = "j_poke_sylveon"},
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and card.ability.extra.limit < 5 then
      card.ability.extra.limit = card.ability.extra.limit + 1
      ease_dollars(card.ability.extra.money)
      return {
          message = localize('$')..card.ability.extra.money,
          colour = G.C.MONEY
      }
    end
    if context.ending_shop and not context.blueprint then
      card.ability.extra.limit = 0
    end
    return item_evo(self, card, context, nil)
  end
}
local vaporeon={
  name = "vaporeon", 
  pos = {x = 4, y = 10},
  config = {extra = {chips = 0, chip_mod = 32, rerolls = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.rerolls}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if card.ability.extra.rerolls < 2 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/3", colour = G.C.CHIPS})
        if card.ability.extra.rerolls == 2 then
          local eval = function() return card.ability.extra.rerolls == 2 end
          juice_card_until(card, eval, true)
        end
      else
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.CHIPS})
        card.ability.extra.rerolls = 0
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end
}
local jolteon={
  name = "jolteon", 
  pos = {x = 5, y = 10},
  config = {extra = {money = 8, rerolls = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.rerolls}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if card.ability.extra.rerolls < 2 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/3", colour = G.C.MONEY})
        if card.ability.extra.rerolls == 2 then
          local eval = function() return card.ability.extra.rerolls == 2 end
          juice_card_until(card, eval, true)
        end
      else
        ease_dollars(card.ability.extra.money)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.MONEY})
        card.ability.extra.rerolls = 0
      end
    end
  end
}
local flareon={
  name = "flareon", 
  pos = {x = 6, y = 10},
  config = {extra = {Xmult = 1, Xmult_mod = .16, rerolls = 0}}, 
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.rerolls}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      if card.ability.extra.rerolls < 2 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/3", colour = G.C.XMULT})
        if card.ability.extra.rerolls == 2 then
          local eval = function() return card.ability.extra.rerolls == 2 end
          juice_card_until(card, eval, true)
        end
      else
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "3/3", colour = G.C.XMULT})
        card.ability.extra.rerolls = 0
        card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
local porygon={
  name = "porygon", 
  pos = {x = 7, y = 10},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = 2, 
  cost = 6, 
  item_req = "upgrade",
  joblacklist = true,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'before',
          delay = 0.0,
          func = (function()
                  local card = create_card('Energy', G.consumeables, nil, nil, nil, nil, nil, 'pory')
                  card:add_to_deck()
                  G.consumeables:emplace(card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
    end
    return item_evo(self, card, context, "j_poke_porygon2")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 1
      else
        G.GAME.energy_plus = G.GAME.energy_plus + 1
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.energy_plus then
        G.GAME.energy_plus = 0
      else
        G.GAME.energy_plus = G.GAME.energy_plus - 1
      end
    end
  end
}
local omanyte={
  name = "omanyte", 
  pos = {x = 8, y = 10},
  config = {extra = {rank = "3", money1 = 3, money2 = 2, rounds = 5}},
  loc_vars = function(self, info_queue, center)
     type_tooltip(self, info_queue, center)
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.money1, center.ability.extra.money2, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local threes = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 3 then threes = threes + 1 end
        end
        if threes == 1 and not context.blueprint then
          card.ability.extra_value = card.ability.extra_value + card.ability.extra.money1
          card:set_cost()
          G.E_MANAGER:add_event(Event({
            func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
            end}))
        elseif threes == 2 then
          ease_dollars(card.ability.extra.money2)
          return {
            message = localize('$')..card.ability.extra.money2,
            dollars = card.ability.extra.money2,
            colour = G.C.MONEY
          }
        elseif threes > 2 then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
          end
        end
      end
    end
    return level_evo(self, card, context, "j_poke_omastar")
  end,
}
local omastar={
  name = "omastar", 
  pos = {x = 9, y = 10}, 
  config = {extra = {rank = "3", money1 = 5, money2 = 4}},
  loc_vars = function(self, info_queue, center)
   type_tooltip(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.money1, center.ability.extra.money2}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local threes = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 3 then threes = threes + 1 end
        end
        if threes == 2 and not context.blueprint then
          card.ability.extra_value = card.ability.extra_value + card.ability.extra.money1
          card:set_cost()
          G.E_MANAGER:add_event(Event({
            func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
            end}))
        elseif threes == 3 then
          ease_dollars(card.ability.extra.money2)
          return {
            message = localize('$')..card.ability.extra.money2,
            dollars = card.ability.extra.money2,
            colour = G.C.MONEY
          }
        elseif threes > 3 then
          for i = 1, 2 do
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
              _card:add_to_deck()
              G.consumeables:emplace(_card)
              card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
          end
        end
      end
    end
  end,
}
local kabuto={
  name = "kabuto", 
  pos = {x = 10, y = 10}, 
  config = {extra = {rank = "2", chips1 = 40, chips2 = 6, chips3 = 80, rounds = 5}},
  loc_vars = function(self, info_queue, center)
   type_tooltip(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips1, center.ability.extra.chips2, center.ability.extra.chips3, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local twos = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 2 then twos = twos + 1 end
        end
        if twos == 1 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips1}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips1
          }
        elseif twos == 2 then
          for k, v in ipairs(context.scoring_hand) do
            if v:get_id() == 2 then 
              v.ability.perma_bonus = v.ability.perma_bonus or 0
              v.ability.perma_bonus = v.ability.perma_bonus + card.ability.extra.chips2
            end
          end
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        elseif twos > 2 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips3}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips3
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_kabutops")
  end,
}
local kabutops={
  name = "kabutops", 
  pos = {x = 11, y = 10}, 
  config = {extra = {rank = "2", chips1 = 60, chips2 = 10, chips3 = 120}},
  loc_vars = function(self, info_queue, center)
   type_tooltip(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips1, center.ability.extra.chips2, center.ability.extra.chips3}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local twos = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 2 then twos = twos + 1 end
        end
        if twos == 2 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips1}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips1
          }
        elseif twos == 3 then
          for k, v in ipairs(context.scoring_hand) do
            if v:get_id() == 2 then 
              v.ability.perma_bonus = v.ability.perma_bonus or 0
              v.ability.perma_bonus = v.ability.perma_bonus + card.ability.extra.chips2
            end
          end
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        elseif twos > 3 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips3}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips3
          }
        end
      end
    end
  end,
}
local aerodactyl={
  name = "aerodactyl", 
  pos = {x = 12, y = 10},
  config = {extra = {rank = "Ace", mult1 = 12, mult2 = 16, chips = 80, Xmult = 2.5}},
  loc_vars = function(self, info_queue, center)
     type_tooltip(self, info_queue, center)
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.mult1, center.ability.extra.mult2, center.ability.extra.chips, center.ability.extra.Xmult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local aces = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
        end
        if aces == 2 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult1}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult1
          }
        elseif aces == 3 then
          return {
            message = "Wing Attack!",
            mult_mod = card.ability.extra.mult2,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif aces > 3 then
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
local snorlax={
  name = "snorlax", 
  pos = {x = 0, y = 11},
  config = {extra = {Xmult_mod = 0.2, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_leftovers
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Colorless",
  joblacklist = true,
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_leftovers')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
      return true
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      local count = find_joker('leftovers')
      if #count > 0 then
        card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_mod * #count)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.RED
        }
      end
    end
  end
}
local articuno={
  name = "articuno", 
  pos = {x = 1, y = 11},
  soul_pos = { x = 2, y = 11},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue +1] = G.P_CENTERS.e_foil
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        v.poke_scored = true
      end
      for k, v in ipairs(context.full_hand) do
        if not v.poke_scored then
          if not v.seal then
            local args = {guaranteed = true}
            local seal_type = SMODS.poll_seal(args)
            v:set_seal(seal_type, true)
          end
          if v.ability.name == "Default Base" then
            local enhancement_type = pseudorandom(pseudoseed('articuno'))
            if enhancement_type > .875 then v:set_ability(G.P_CENTERS.m_bonus, nil, true)
            elseif enhancement_type > .75 then v:set_ability(G.P_CENTERS.m_mult, nil, true)
            elseif enhancement_type > .625 then v:set_ability(G.P_CENTERS.m_wild, nil, true)
            elseif enhancement_type > .50 then v:set_ability(G.P_CENTERS.m_glass, nil, true)
            elseif enhancement_type > .375 then v:set_ability(G.P_CENTERS.m_steel, nil, true)
            elseif enhancement_type > .25 then v:set_ability(G.P_CENTERS.m_stone, nil, true)
            elseif enhancement_type > .125 then v:set_ability(G.P_CENTERS.m_gold, nil, true)
            else v:set_ability(G.P_CENTERS.m_lucky, nil, true)
            end
          end
          if not v.edition then
            v:set_edition("e_foil", true)
          end
          G.E_MANAGER:add_event(Event({
              func = function()
                  v:juice_up()
                  return true
              end
          })) 
        end
      end
      for k, v in ipairs(context.scoring_hand)do
        v.poke_scored = nil
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
local zapdos={
  name = "zapdos", 
  pos = {x = 3, y = 11},
  soul_pos = { x = 4, y = 11},
  config = {extra = {Xmult = 0.08, money_threshold = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_threshold , math.max(1, center.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/                    center.ability.extra.money_threshold))}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = card.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/card.ability.extra.money_threshold)
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end
}
local moltres={
  name = "moltres", 
  pos = {x = 5, y = 11},
  soul_pos = { x = 6, y = 11},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.pre_discard and G.GAME.current_round.discards_used <= 2 and not context.hook then
      local text,disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
      update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, level=                       G.GAME.hands[text].level})
      level_up_hand(context.blueprint_card or card, text, nil, 1)
      update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used < 3 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
local dratini={
  name = "dratini", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 0, mult_mod = 1, size = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonair", card.ability.extra.mult, 10)
  end,
}
local dragonair={
  name = "dragonair", 
  pos = {x = 8, y = 11}, 
  config = {extra = {mult = 10, mult_mod = 1, size = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonite", card.ability.extra.mult, 30)
  end,
}
local dragonite={
  name = "dragonite", 
  pos = {x = 9, y = 11},
  config = {extra = {mult = 30, retriggers = 5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.retriggers}} 
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex1",
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
    if context.repetition and context.cardarea == G.play and context.scoring_hand and #context.full_hand == 1 then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
    end
  end,
}
local mewtwo={
  name = "mewtwo", 
  pos = {x = 10, y = 11},
  soul_pos = { x = 11, y = 11},
  config = {extra = {Xmult_mod = 1.2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if not center.edition or (center.edition and not center.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    return {vars = {center.ability.extra.Xmult_mod}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.ending_shop and not context.blueprint then
      local leftmost = G.jokers.cards[1]
      if leftmost ~= card then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        local chosen_joker = G.jokers.cards[1]
        
        if (#G.jokers.cards - 1 < G.jokers.config.card_limit and not leftmost.ability.eternal) or (#G.jokers.cards < G.jokers.config.card_limit and leftmost.ability.eternal) then
          local _card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition)
          local edition = {polychrome = true}
          _card:set_edition(edition, true)
          if _card.config and _card.config.center.stage and not type_sticker_applied(_card) then
            energy_increase(_card, _card.ability.extra.ptype)
          elseif type_sticker_applied(_card) then
            energy_increase(_card, type_sticker_applied(_card))
          end
          _card:add_to_deck()
          G.jokers:emplace(_card)
          if _card.debuff then 
            _card.debuff = false 
            if _card.ability.perishable then _card.ability.perish_tally = G.GAME.perishable_rounds end
          end
        end
        
        if not leftmost.ability.eternal then
          G.E_MANAGER:add_event(Event({
            remove(self, G.jokers.cards[1], context)
          }))
        end
      end
    end
    if context.other_joker and context.other_joker.edition and context.other_joker.edition.polychrome then
        G.E_MANAGER:add_event(Event({
          func = function()
              context.other_joker:juice_up(0.5, 0.5)
              return true
          end
        })) 
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_mod}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_mod
        }
    end
  end
}

return {name = "Pokemon Jokers 121-150", 
        list = { starmie, mrmime, scyther, jynx, electabuzz, magmar, pinsir, tauros, taurosh, magikarp, gyarados, lapras, ditto, eevee, vaporeon, jolteon, flareon, porygon, omanyte, omastar, kabuto, kabutops,                 aerodactyl, snorlax, articuno, zapdos, moltres, dratini, dragonair, dragonite, mewtwo, },
}
