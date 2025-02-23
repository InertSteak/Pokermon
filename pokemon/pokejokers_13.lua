-- Snorunt 361
local snorunt={
  name = "snorunt",
  pos = {x = 2, y = 11},
  config = {extra = {debt = 15,rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.debt, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4,
  item_req = "dawnstone",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    local evolve = item_evo(self, card, context, "j_poke_froslass")
    if evolve then
      return evolve
    else
      local in_debt = nil
      if (SMODS.Mods["Talisman"] or {}).can_load then
        in_debt = to_big(G.GAME.dollars) < to_big(0)
      else
        in_debt = G.GAME.dollars < 0
      end
      if in_debt then
        return level_evo(self, card, context, "j_poke_glalie")
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.bankrupt_at = G.GAME.bankrupt_at - card.ability.extra.debt
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.bankrupt_at = G.GAME.bankrupt_at + card.ability.extra.debt
    end
  end,
}
-- Glalie 362
local glalie={
  name = "glalie",
  pos = {x = 3, y = 11},
  config = {extra = {debt = 20}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.debt}}
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
    if context.end_of_round and not context.individual and not context.repetition then
      card:juice_up()
      local back_to_zero = 0
      if (SMODS.Mods["Talisman"] or {}).can_load then
        back_to_zero = to_number(-G.GAME.dollars)
      else
        back_to_zero = -G.GAME.dollars
      end
      ease_dollars(back_to_zero, true)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.bankrupt_at = G.GAME.bankrupt_at - card.ability.extra.debt
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.bankrupt_at = G.GAME.bankrupt_at + card.ability.extra.debt
  end,
}
-- Spheal 363
-- Sealeo 364
-- Walrein 365
-- Clamperl 366
-- Huntail 367
-- Gorebyss 368
-- Relicanth 369
-- Luvdisc 370
-- Bagon 371
-- Shelgon 372
-- Salamence 373
-- Beldum 374
local beldum={
  name = "beldum", 
  pos = {x = 5, y = 12},
  config = {extra = {chips = 0, chip_mod = 8, size = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local has_ace = false
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then has_ace = true; break end
        end
        if has_ace then
          if context.scoring_name == "Four of a Kind" then
            card.ability.extra.chips = card.ability.extra.chips + 2 * card.ability.extra.chip_mod
          else
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          end
        end
      end
      if context.joker_main then
        
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips,
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_metang", card.ability.extra.chips, 64)
  end,
}
-- Metang 375
local metang={
  name = "metang", 
  pos = {x = 6, y = 12},
  config = {extra = {chips = 0, chip_mod = 8, size = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        local ace_count = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then ace_count = ace_count + 1 end
        end
        if ace_count > 1 then
          if context.scoring_name == "Four of a Kind" then
            card.ability.extra.chips = card.ability.extra.chips + 4 * card.ability.extra.chip_mod
          else
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
          end
        end
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips,
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_metagross", card.ability.extra.chips, 256)
  end,
}
-- Metagross 376
local metagross={
  name = "metagross", 
  pos = {x = 7, y = 12},
  config = {extra = {chips = 256,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips,
          card = card
        }
      end
    end
    if context.individual and context.cardarea == G.play and not context.end_of_round and context.scoring_name and context.scoring_name == "Four of a Kind" then
      local total_chips = poke_total_chips(context.other_card)
      local Xmult = (total_chips)^(1/3)
      if Xmult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}},
          colour = G.C.XMULT,
          mult = card.ability.extra.mult_mod, 
          x_mult = Xmult,
          card = card
        }
      end
    end
  end,
}
-- Regirock 377
-- Regice 378
-- Registeel 379
-- Latias 380
-- Latios 381
-- Kyogre 382
-- Groudon 383
-- Rayquaza 384
-- Jirachi 385
local jirachi = {
  name = "jirachi", 
  pos = {x = 4, y = 14},
  soul_pos = {x = 5, y = 14},
  config = {extra = {}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    -- if everything works correctly, it should create the tag and instantly use it
    if context.ending_shop and not context.blueprint then
      add_tag(Tag('tag_poke_jirachi_tag'))
    end
  end,
}

local jirachi_banker = {
  name = "jirachi_banker", 
  pos = {x = 0, y = 0},
  soul_pos = {x = 1, y = 0},
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and context.other_card.ability.name == 'Gold Card' then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
}

local jirachi_booster = {
  name = "jirachi_booster", 
  pos = { x = 2, y = 0 },
  soul_pos = { x = 3, y = 0 },
  config = {extra = {bonus_packs = 1, bonus_choices = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.GAME.modifiers.poke_booster_packs = (G.GAME.modifiers.poke_booster_packs or 2) + card.ability.extra.bonus_packs
      G.GAME.extra_pocket_picks = (G.GAME.extra_pocket_picks or 0) + card.ability.extra.bonus_choices
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      if not G.GAME.modifiers.poke_booster_packs then print("poke_booster_packs WASN'T LOADED") end
      G.GAME.modifiers.poke_booster_packs = (G.GAME.modifiers.poke_booster_packs or 2) - card.ability.extra.bonus_packs
      G.GAME.extra_pocket_picks = (G.GAME.extra_pocket_picks or 0) - card.ability.extra.bonus_choices
    end
  end,
}

local jirachi_copy = {
  name = "jirachi_copy", 
  pos = { x = 2, y = 1 },
  soul_pos = { x = 3, y = 1 },
  config = {extra = {energy_buff = 3}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    local other_joker = nil
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i] == card then other_joker = G.jokers.cards[i+1] end
    end
    if other_joker and other_joker ~= card and not context.no_blueprint then
      context.blueprint = (context.blueprint or 0) + 1
      context.blueprint_card = context.blueprint_card or card
      if context.blueprint > #G.jokers.cards + 1 then return end

      local fake_card = {config = other_joker.config}
      fake_card.ability = {}
      setmetatable(fake_card.ability, {__index = other_joker.ability})
      
      if type(other_joker.ability.extra) == "table" then
        fake_card.ability.extra = {}
        setmetatable(fake_card.ability.extra, {__index = other_joker.ability.extra})
      else
        fake_card.ability.extra = other_joker.ability.extra
      end

      for i = 1, card.ability.extra.energy_buff do
        energize(fake_card, nil, nil, true)
      end

      local true_ability = other_joker.ability
      other_joker.ability = fake_card.ability
      local other_joker_ret = Card.calculate_joker(other_joker, context)
      other_joker.ability = true_ability


      context.blueprint = nil
      local eff_card = context.blueprint_card or card
      context.blueprint_card = nil
      if other_joker_ret then 
        other_joker_ret.card = eff_card
        other_joker_ret.colour = G.C.BLUE
        return other_joker_ret
      end
    end
  end,
}

local jirachi_negging = {
  name = "jirachi_negging", 
  pos = { x = 0, y = 1 },
  config = {extra = {slots = 2, chance = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
      G.GAME.negative_edition_rate = (G.GAME.negative_edition_rate or 1) * card.ability.extra.chance
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
      G.GAME.negative_edition_rate = (G.GAME.negative_edition_rate or 1) / card.ability.extra.chance
    end
  end,
}

local jirachi_power = {
  name = "jirachi_power", 
  pos = { x = 4, y = 0 },
  soul_pos = { x = 5, y = 0 },
  config = {extra = {Xmult = 3, every = 3, loyalty_remaining = 3}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult, card.ability.extra.every, card.ability.extra.loyalty_remaining, }}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    card.ability.extra.loyalty_remaining = (card.ability.hands_played_at_create - G.GAME.hands_played - 1)%(card.ability.extra.every)
    if not context.blueprint and card.ability.extra.loyalty_remaining == 0 then
      local eval = function(card) return (card.ability.extra.loyalty_remaining == 0) end
      juice_card_until(card, eval, true)
    end
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) 
       and context.other_card.ability.name == 'Steel Card' then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      if card.ability.extra.loyalty_remaining == 0 then
        return {
          x_mult = card.ability.extra.Xmult,
          card = card
        }
      end
    end
  end,
}

local jirachi_fixer = {
  name = "jirachi_fixer", 
  pos = { x = 4, y = 1 },
  soul_pos = { x = 5, y = 1 },
  config = {extra = {}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = "jirachi",
  aux_poke = true,
  perishable_compat = false,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after and not context.blueprint and G.GAME.current_round.hands_played == 0 and context.full_hand and #context.full_hand == 1 then
        local copy = copy_card(context.full_hand[1], nil, nil, G.playing_card)
        copy:add_to_deck()
        G.deck.config.card_limit = G.deck.config.card_limit + 1
        table.insert(G.playing_cards, copy)
        G.hand:emplace(copy)
        copy.states.visible = nil
        G.E_MANAGER:add_event(Event({
          func = function()
              copy:start_materialize()
              return true
          end
        })) 
        playing_card_joker_effects({copy})
        return {
            message = localize('k_copied_ex'),
            colour = G.C.CHIPS,
            card = card,
            playing_cards_created = {true}
        }
      end
    end
    if context.discard and not context.blueprint and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 1 and context.other_card then
      local possible_removals = {}
      for k,v in ipairs(G.deck.cards) do
        if v:get_id() == context.other_card:get_id() then
          table.insert(possible_removals, v)
        end
      end
      local to_remove = pseudorandom_element(possible_removals, pseudoseed('jirachi_fixer'))
      poke_remove_card(to_remove, card)
      return {
        delay = 0.45,
        remove = true,
        card = card
      }
    end

    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return (G.GAME.current_round.hands_played == 0 or G.GAME.current_round.discards_used == 0) and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end,
}

-- Deoxys 386
-- Turtwig 387
-- Grotle 388
-- Torterra 389
-- Chimchar 390
return {name = "Pokemon Jokers 361-390", 
        list = {snorunt, glalie, beldum, metang, metagross, jirachi, jirachi_banker, jirachi_booster, jirachi_power, jirachi_negging, jirachi_copy, jirachi_fixer},
}
