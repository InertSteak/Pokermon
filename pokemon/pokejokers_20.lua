-- Zoroark 571
local zoroark = {
  name = "zoroark", 
  pos = { x = 7, y = 5 },
  soul_pos = { x = 99, y = 99 },
  config = {extra = {hidden_key = nil}},
  loc_vars = function(self, info_queue, card)
    local main_end

    if card.area and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      main_end = poke_blueprint_compat_ui(card ~= other_joker and other_joker)
    end

    return {main_end = main_end}
  end,
  rarity = "poke_safari",
  cost = 12,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  get_illusion = function(self, card)
    if card.ability and card.ability.extra
        and card.area ~= G.jokers
        and not poke_is_in_collection(card) then
      return G.P_CENTERS[card.ability.extra.hidden_key]
    end
  end,
  calculate = function(self, card, context)
    local other_joker = G.jokers.cards[#G.jokers.cards]
    if other_joker and other_joker ~= card then
      local ret = SMODS.blueprint_effect(card, other_joker, context)
      if ret then ret.colour = G.C.BLACK end
      return ret
    end
  end,
  set_card_type_badge = function(self, card, badges)
    poke_set_card_type_badge(card, badges, self:get_illusion(card))
  end,
  set_sprites = function(self, card, front)
    local center = self:get_illusion(card)
    if center then
      card:set_sprites(center)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      -- Initialize the Illusion
      if not pokermon.type_sticker_applied(card) then pokermon.apply_type_sticker(card, "Dark") end
      if not card.ability.extra.hidden_key then
        card.ability.extra.hidden_key = get_random_poke_key_options {
          key_append = 'zoroark',
          rarity = 'poke_safari',
          exclude_types = 'Dark',
        }
      end

      self:set_sprites(card)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.hidden_key = nil
    poke_reset_sprite(card)
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local center = self:get_illusion(card)
    if center then
      return poke_generate_illusion_ui(center, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    end
    return SMODS.Center.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      if not card.debuff
          and other_joker.children.center.atlas.px == 71 -- Disables Unown Swarm drawing, because I just couldn't be bothered today.
          and other_joker and other_joker ~= card
          and other_joker.config.center.blueprint_compat then
        poke_copy_joker_sprites(card, other_joker)
      else
        poke_reset_sprite(card)
      end
    end
  end,
  attributes = {"copying"},
}
-- Minccino 572
-- Cinccino 573
-- Gothita 574
local gothita={
  name = "gothita", 
  pos = {x = 10, y = 5},
  config = {extra = {rounds = 4}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  knockoff_pseudol = true,
  blueprint_compat = false,
  calculate = function(self, card, context)
    return pokermon.level_evo(self, card, context, "j_poke_gothorita")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space", "round_evo"},
}
-- Gothorita 575
local gothorita={
  name = "gothorita", 
  pos = {x = 11, y = 5},
  config = {extra = {rounds = 4}},
  blueprint_compat = false,
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  calculate = function(self, card, context)
    return pokermon.level_evo(self, card, context, "j_poke_gothitelle")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space", "round_evo"},
}
-- Gothitelle 576
local gothitelle={
  name = "gothitelle", 
  pos = {x = 12, y = 5},
  config = {extra = {money = 2}}, 
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  atlas = "Pokedex5",
  gen = 5,
  ptype = "Psychic",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
      ease_poke_dollars(card, "gothitelle", card.ability.extra.money)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space"},
}
-- Solosis 577
-- Duosion 578
-- Reuniclus 579
-- Ducklett 580
-- Swanna 581
-- Vanillite 582
local vanillite={
  name = "vanillite", 
  pos = {x = 4, y = 6}, 
  config = {extra = {chips = 60, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  volatile = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_vanillish")
  end,
  attributes = {"chips", "scaling", "food", "volatile", "round_evo"},
}
-- Vanillish 583
local vanillish={
  name = "vanillish", 
  pos = {x = 5, y = 6}, 
  config = {extra = {chips = 100, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  volatile = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_vanilluxe")
  end,
  attributes = {"chips", "scaling", "food", "volatile", "round_evo"},
}
-- Vanilluxe 584
local vanilluxe={
  name = "vanilluxe", 
  pos = {x = 6, y = 6}, 
  config = {extra = {chips = 140, chips_minus = 10, tags = 2}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chips_minus, center.ability.extra.tags}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        G.E_MANAGER:add_event(Event({
          func = (function()
            for _ = 1, card.ability.extra.tags do
              add_tag(Tag('tag_double'))
            end
            play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
            play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
            return true
          end)
        }))

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
  end,
  attributes = {"chips", "scaling", "food", "tag", "generation"},
}
-- Deerling 585
-- Sawsbuck 586
-- Emolga 587
-- Karrablast 588
-- Escavalier 589
-- Foongus 590
-- Amoonguss 591
-- Frillish 592
local frillish = {
  name = "frillish",
  pos = {x = 0, y = 7},
  config = {extra = {chips = 0, chip_mod = 2}, evo_rqmt = 60},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, self.config.evo_rqmt}}
  end,
  designer = "Hwang2760",
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.discard and not context.blueprint
        and context.other_card:is_face() then
      SMODS.scale_card(card, {
        ref_value = 'chips',
        scalar_value = 'chip_mod',
        message_colour = G.C.CHIPS,
        message_delay = 0.45
      })
    end
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_jellicent", card.ability.extra.chips, self.config.evo_rqmt)
  end,
  attributes = {"chips", "scaling", "discard", "face", "scaling_evo"},
}

-- Jellicent 593
local jellicent = {
  name = "jellicent",
  pos = {x = 1, y = 7},
  config = {extra = {chips = 60, chip_mod = 4}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  designer = "Hwang2760",
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.discard and not context.blueprint
        and context.other_card:is_face() then
      local card_id = context.other_card:get_id()

      SMODS.scale_card(card, {
        ref_value = 'chips',
        scalar_value = 'chip_mod',
        operation = function(ref_table, ref_value, initial, modifier)
          local multi = (card_id == 12 or card_id == 13) and 2 or 1
          ref_table[ref_value] = initial + modifier * multi
        end,
        message_colour = G.C.CHIPS,
        message_delay = 0.45
      })
    end
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
	end,
  attributes = {"chips", "scaling", "discard", "face", "rank", "king", "queen"},
}
-- Alomomola 594
-- Joltik 595
-- Galvantula 596
-- Ferroseed 597
local ferroseed={
  name = "ferroseed",
  pos = {x = 5, y = 7},
  config = {extra = {rounds = 5, hazard_level = 1}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
      info_queue[#info_queue+1] = {set = 'Other', key = 'hazard_level', vars = poke_get_hazard_level_vars()}
    end
    return {vars = {center.ability.extra.rounds, center.ability.extra.hazard_level}}
  end,
  rarity = 2,
  cost = 6,
  gen = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_wild') or SMODS.has_enhancement(context.other_card, 'm_poke_hazard') then
          return {m_steel = true}
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_ferrothorn")
  end,
  add_to_deck = function(self, card, from_debuff)
    poke_change_hazard_level(card.ability.extra.hazard_level)
  end,
  remove_from_deck = function(self, card, from_debuff)
    poke_change_hazard_level(-card.ability.extra.hazard_level)
  end,
  attributes = {"hazards", "passive", "modify_card", "enhancements", "round_evo"},
}
-- Ferrothorn 598
local ferrothorn={
  name = "ferrothorn",
  pos = {x = 6, y = 7},
  config = {extra = {retriggers = 1, hazard_level = 1}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
      info_queue[#info_queue+1] = {set = 'Other', key = 'hazard_level', vars = poke_get_hazard_level_vars()}
    end
    return {vars = {center.ability.extra.hazard_level}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 5,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex5",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_wild') or SMODS.has_enhancement(context.other_card, 'm_poke_hazard') then
          return {m_steel = true}
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and next(context.poker_hands['Flush']) then
        card.ability.extra.retrigger_hand = true
      end
      if context.after and card.ability.extra.retrigger_hand then
        card.ability.extra.retrigger_hand = nil
      end
    end
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and card.ability.extra.retrigger_hand 
       and SMODS.has_enhancement(context.other_card, 'm_steel') then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    poke_change_hazard_level(card.ability.extra.hazard_level)
  end,
  remove_from_deck = function(self, card, from_debuff)
    poke_change_hazard_level(-card.ability.extra.hazard_level)
  end,
  attributes = {"hazards", "passive", "modify_card", "enhancements", "hand_type", "retrigger"},
}
-- Klink 599
-- Klang 600
return {name = "Pokemon Jokers 570-600", 
        list = {zoroark, gothita, gothorita, gothitelle, vanillite, vanillish, vanilluxe, frillish, jellicent, ferroseed, ferrothorn},
}
