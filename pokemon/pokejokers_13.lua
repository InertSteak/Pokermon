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
  cost = 2,
  item_req = "dawnstone",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
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
    G.GAME.bankrupt_at = G.GAME.bankrupt_at - card.ability.extra.debt
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.bankrupt_at = G.GAME.bankrupt_at + card.ability.extra.debt
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
  gen = 3,
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
local clamperl={
  name = "clamperl",
  pos = {x = 0, y = 0},
  config = {extra = {h_size = 4, link_sold = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'holding_other', vars = {"Ethereal Tag"}}
    info_queue[#info_queue+1] = {key = 'tag_ethereal', set = 'Tag'}
    return {vars = {center.ability.extra.h_size, }}
  end,
  rarity = 3,
  cost = 6,
  gen = 3,
  item_req = "linkcable",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and not context.blueprint then
      card.ability.extra.increased_handsize = true
      G.hand:change_size(card.ability.extra.h_size)
    end
    if context.ending_booster and card.ability.extra.increased_handsize and not context.blueprint then
      card.ability.extra.increased_handsize = nil
      G.hand:change_size(-card.ability.extra.h_size)
    end
    if context.selling_card and context.card.label == "linkcable" then
      card.ability.extra.link_sold = card.ability.extra.link_sold + 1
    end
    local evolve = item_evo(self, card, context, "j_poke_gorebyss")
    if evolve then 
      return evolve
    else
      return scaling_evo(self, card, context, "j_poke_huntail", card.ability.extra.link_sold, 1)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      card.ability.extra.increased_handsize = nil
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_ethereal'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff and card.ability.extra.increased_handsize then
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
         G.hand:change_size(-card.ability.extra.h_size)
      end
    end
  end
}
-- Huntail 367
local huntail ={
  name = "huntail",
  pos = {x = 0, y = 0},
  config = {extra = {h_size = 4, Xmult_mod = 0.1, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.h_size, center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and not context.blueprint then
      G.hand:change_size(card.ability.extra.h_size)
      card.ability.extra.increased_handsize = true
    end
    if context.ending_booster and card.ability.extra.increased_handsize and not context.blueprint then
      card.ability.extra.increased_handsize = nil
      G.hand:change_size(-card.ability.extra.h_size)
    end
    if context.selling_card and (context.card.config.center.set == 'Tarot' or context.card.config.center.set == 'Item') and not context.blueprint then
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
          or G.STATE == G.STATES.STANDARD_PACK then
        SMODS.scale_card(card, {
          ref_value = 'Xmult',
          scalar_value = 'Xmult_mod',
          message_colour = G.C.XMULT,
        })

        if #G.hand.cards > 0 then
          local target = pseudorandom_element(G.hand.cards, pseudoseed('huntail'))
          poke_remove_card(target, card)
        end
      end
    end
    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      card.ability.extra.increased_handsize = nil
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff and card.ability.extra.increased_handsize then
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
         G.hand:change_size(-card.ability.extra.h_size)
      end
    end
  end
}
-- Gorebyss 368
local gorebyss ={
  name = "gorebyss",
  pos = {x = 0, y = 0},
  config = {extra = {h_size = 4, Xmult_mod = 0.15, Xmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.h_size, center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and not context.blueprint then
      G.hand:change_size(card.ability.extra.h_size)
      card.ability.extra.increased_handsize = true
    end
    if context.ending_booster and card.ability.extra.increased_handsize and not context.blueprint then
      card.ability.extra.increased_handsize = nil
      G.hand:change_size(-card.ability.extra.h_size)
    end

    if context.using_consumeable and (context.consumeable.ability.set == 'Tarot' or context.consumeable.ability.set == 'Item') and not context.blueprint then
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
          or G.STATE == G.STATES.STANDARD_PACK then
        SMODS.scale_card(card, {
          ref_value = 'Xmult',
          scalar_value = 'Xmult_mod',
          message_colour = G.C.XMULT,
        })
      end
    end

    if context.joker_main then
      return {
        Xmult = card.ability.extra.Xmult
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      card.ability.extra.increased_handsize = nil
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff and card.ability.extra.increased_handsize then
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
         G.hand:change_size(-card.ability.extra.h_size)
      end
    end
  end
}
-- Relicanth 369
local relicanth={
  name = "relicanth",
  pos = {x = 0, y = 0},
  config = {extra = {rank = "4", chips = 40, money = 4, Xmult_multi = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    end
    return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips, center.ability.extra.money, center.ability.extra.Xmult_multi, }}
  end,
  rarity = 3,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex3",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 4, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 1 and #G.deck.cards > 0 then
        local bottom_card = G.deck.cards[1]
        
        bottom_card:set_ability(G.P_CENTERS.m_stone, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
    
        if card.ability.extra.ancient_count > 2 then
          draw_card(G.deck, G.hand, nil, nil, nil, bottom_card)
          ease_poke_dollars(card, "relicanth", card.ability.extra.money)
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and card.ability.extra.ancient_count > 0 then
      local rightmost = context.scoring_hand[#context.scoring_hand]
      if context.other_card == rightmost then
        local scoring_parms = {}
        scoring_parms.chips = card.ability.extra.chips
        if card.ability.extra.ancient_count > 3 then
          scoring_parms.x_mult = card.ability.extra.Xmult_multi
          scoring_parms.message = localize('poke_head_smash_ex')
          scoring_parms.colour = G.C.XMULT
        end
        return scoring_parms
      end
    end
    if context.destroying_card and card.ability.extra.ancient_count > 3 and not context.blueprint then
      local rightmost = context.scoring_hand[#context.scoring_hand]
      return context.destroying_card == rightmost and not SMODS.has_enhancement(context.destroying_card, 'm_stone')
    end
  end,
  generate_ui = fossil_generate_ui,
}
-- Luvdisc 370
local luvdisc={
  name = "luvdisc",
  pos = {x = 1, y = 12},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_heartscale
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Heart Scale"}}
      info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash', config={}}
    end
    return {vars = {}}
  end,
  rarity = 1,
  cost = 4,
  gen = 3,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.modify_scoring_hand and not context.blueprint then
      return {
          add_to_hand = true
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_heartscale')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.C.FILTER})
      return true
    end
  end,
}
-- Bagon 371
-- Shelgon 372
-- Salamence 373
-- Beldum 374
local beldum={
  name = "beldum", 
  pos = {x = 5, y = 12},
  config = {extra = {chips = 0, chip_mod = 4, size = 4}, evo_rqmt = 50},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size, self.config.evo_rqmt}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Metal",
  atlas = "Pokedex3",
  gen = 3,
  pseudol = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and not context.blueprint then
      local has_ace = false
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == 14 then has_ace = true; break end
      end

      if has_ace then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          no_message = true,
        })
      end
      if context.scoring_name == "Four of a Kind" then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          no_message = true,
        })
      end
    end

    if context.joker_main then
      return {
        chips = card.ability.extra.chips,
      }
    end
    return scaling_evo(self, card, context, "j_poke_metang", card.ability.extra.chips, self.config.evo_rqmt)
  end,
}
-- Metang 375
local metang={
  name = "metang", 
  pos = {x = 6, y = 12},
  config = {extra = {chips = 0, chip_mod = 8, size = 4}, evo_rqmt = 200},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.size, self.config.evo_rqmt}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Metal",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and not context.blueprint then
      local ace_count = 0
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == 14 then ace_count = ace_count + 1 end
      end

      if ace_count > 1 then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          no_message = true,
        })
      end
      if context.scoring_name == "Four of a Kind" then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          no_message = true,
        })
      end
    end
    if context.joker_main then
      return {
        chips = card.ability.extra.chips,
      }
    end
    return scaling_evo(self, card, context, "j_poke_metagross", card.ability.extra.chips, self.config.evo_rqmt)
  end,
}
-- Metagross 376
local metagross={
  name = "metagross", 
  pos = {x = 7, y = 12},
  config = {extra = {chips = 200,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Metal",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        chips = card.ability.extra.chips,
      }
    end
    if context.individual and context.cardarea == G.play and context.scoring_name == "Four of a Kind" then
      local total_chips = poke_total_chips(context.other_card)
      local Xmult = (total_chips)^(1 / 4)
      if Xmult > 0 then
        return {
          x_mult = Xmult
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
  gen = 3,
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
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = false,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
}

local jirachi_booster = {
  name = "jirachi_booster", 
  pos = { x = 2, y = 0 },
  soul_pos = { x = 3, y = 0 },
  config = {extra = {bonus_packs = 1, bonus_choices = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    SMODS.change_booster_limit(card.ability.extra.bonus_packs)
    G.GAME.extra_pocket_picks = (G.GAME.extra_pocket_picks or 0) + card.ability.extra.bonus_choices
  end,
  remove_from_deck = function(self, card, from_debuff)
    SMODS.change_booster_limit(-card.ability.extra.bonus_packs)
    G.GAME.extra_pocket_picks = (G.GAME.extra_pocket_picks or 0) - card.ability.extra.bonus_choices
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
}

local jirachi_invis = {
  name = "jirachi_invis", 
  pos = { x = 2, y = 1 },
  soul_pos = { x = 3, y = 1 },
  config = {extra = {}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  perishable_compat = false,
  blueprint_compat = false,
  no_collection = true,
  aux_poke = true,
  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
      local other_joker = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card and G.jokers.cards[i+1] and G.jokers.cards[i+1].config.center_key ~= "j_poke_jirachi_invis" then other_joker = G.jokers.cards[i+1] end
      end
      if other_joker then
        local copy = copy_card(other_joker, nil, nil, nil, other_joker.edition and other_joker.edition.negative)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        copy:add_to_deck()
        G.jokers:emplace(copy)
        copy:start_materialize()

        SMODS.destroy_cards(card, nil, nil, true)
      end
    end
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
}

local jirachi_copy = {
  name = "jirachi_copy", 
  pos = { x = 2, y = 1 },
  soul_pos = { x = 3, y = 1 },
  config = {extra = {energy_buff = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    end
    return {vars = {card.ability.extra.energy_buff}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = true,
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
      --prevent evolution
      other_joker.gone = true
      for i = 1, card.ability.extra.energy_buff do
        energize(fake_card, nil, nil, true)
      end

      local true_ability = other_joker.ability
      other_joker.ability = fake_card.ability
      local other_joker_ret = Card.calculate_joker(other_joker, context)
      other_joker.ability = true_ability
      other_joker.gone = nil


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
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    if not card then return end
    local _c = card and card.config.center or card
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end

    card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ''
    card.ability.blueprint_compat_check = nil
    local main_end = (card.area and card.area == G.jokers) and {
      {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
        {n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
          {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
        }}
      }}
    } or nil
   local loc_vars = {card.ability.extra.energy_buff}

   localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = loc_vars}
   desc_nodes[#desc_nodes+1] = main_end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local other_joker = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then
          other_joker = G.jokers.cards[i+1]
          break
        end
      end
      card.ability.blueprint_compat = ( other_joker and other_joker ~= card and other_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
    end
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
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
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    G.GAME.negative_edition_rate = (G.GAME.negative_edition_rate or 1) * card.ability.extra.chance
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
    G.GAME.negative_edition_rate = (G.GAME.negative_edition_rate or 1) / card.ability.extra.chance
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
}

local jirachi_power = {
  name = "jirachi_power", 
  pos = { x = 4, y = 0 },
  soul_pos = { x = 5, y = 0 },
  config = {extra = {Xmult_multi = 2, every = 3, loyalty_remaining = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_multi, card.ability.extra.every, localize{type = 'variable', key = (card.ability.extra.loyalty_remaining == 0 and 'loyalty_active' or 'loyalty_inactive'), vars = {card.ability.extra.loyalty_remaining}}}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Metal",
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after then
        if card.ability.extra.loyalty_remaining == 0 then
          card.ability.extra.loyalty_remaining = card.ability.extra.every
        end
        card.ability.extra.loyalty_remaining = card.ability.extra.loyalty_remaining - 1
        if card.ability.extra.loyalty_remaining == 0 then
          local eval = function(card) return (card.ability.extra.loyalty_remaining == 0) and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      if card.ability.extra.loyalty_remaining == 0 then
        return {
          x_mult = card.ability.extra.Xmult_multi,
          card = card
        }
      end
    end
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
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
  atlas = pokermon_config.pokemon_altart and "jirachi" or "altjirachi",
  gen = 3,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and G.GAME.current_round.hands_played == 0 and context.full_hand and #context.full_hand == 1 then
        if not context.scoring_hand[1].edition then
          local edition = poll_edition('aura', nil, true, true)
          context.scoring_hand[1]:set_edition(edition, true, true)
        end
      end
    end
    if context.discard and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 1 and context.other_card and not card.ability.extra.triggered then
      card.ability.extra.triggered = true
      return {
        delay = 0.45,
        remove = true,
        card = card
      }
    end

    if context.first_hand_drawn and not context.blueprint then
      local eval = function(card) return (G.GAME.current_round.hands_played == 0 or G.GAME.current_round.discards_used == 0) and not G.RESET_JIGGLES and not card.ability.extra.triggered end
      juice_card_until(card, eval, true)
    end
    
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.triggered = nil
    end
  end,
  custom_pool_func = true,
  in_pool = function(self)
    return false
  end
}

-- Deoxys 386
-- Turtwig 387
-- Grotle 388
-- Torterra 389
-- Chimchar 390
return {name = "Pokemon Jokers 361-390", 
        list = {snorunt, glalie, clamperl, huntail, gorebyss, relicanth, luvdisc, beldum, metang, metagross, jirachi, jirachi_banker, jirachi_booster, jirachi_power, jirachi_invis, jirachi_fixer},
}
