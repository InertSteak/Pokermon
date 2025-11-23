local item_list = {}

local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Item",
  config = {min_highlighted = 1, num = 1, dem = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    local handtext = localize('poke_none')
    if G.hand and G.hand.highlighted and #G.hand.highlighted > 0 then
      local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      handtext = localize(text, 'poker_hands') or localize('poke_none')
      for k, v in pairs(G.hand.highlighted) do
        if v.facing == "back" then
          handtext = "????"
          break
        end
      end
    end
    local num, dem = SMODS.get_probability_vars(center, self.config.num, self.config.dem, 'moonstone')
    return {vars = {handtext, num, dem}}
  end,
  pos = { x = 8, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted >= self.config.min_highlighted then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if #G.hand.highlighted >= self.config.min_highlighted then
      if SMODS.pseudorandom_probability(card, 'moonstone', self.config.num, self.config.dem, 'moonstone') then
        local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)

        level_up_hand(card, text)
        if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
          or G.STATE == G.STATES.STANDARD_PACK then
          update_hand_text({nopulse = true, delay = 0.3}, {mult = 0, chips = 0, level = '', handname = ''})
        else
          update_hand_text({nopulse = nil, delay = 0.3}, {handname=disp_text, level=G.GAME.hands[text].level, mult = G.GAME.hands[text].mult, chips = G.GAME.hands[text].chips})
        end
      else
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            attention_text({
                text = localize('k_nope_ex'),
                scale = 1.3, 
                hold = 1.4,
                major = card,
                backdrop_colour = G.C.SECONDARY_SET.Tarot,
                align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                silent = true
                })
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                    play_sound('tarot2', 0.76, 0.4);return true end}))
                play_sound('tarot2', 1, 0.4)
                card:juice_up(0.3, 0.5)
        return true end }))
      end
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local sunstone = {
  name = "sunstone",
  key = "sunstone",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 9, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted >= self.config.min_highlighted and #G.hand.highlighted <= self.config.max_highlighted then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted >= self.config.min_highlighted then
      juice_flip(card)
      for i = 1, #G.hand.highlighted do
        G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_wild, nil, true)
        poke_vary_rank(G.hand.highlighted[i], nil, "sunstone")
      end
      juice_flip(card, true)
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local waterstone = {
  name = "waterstone",
  key = "waterstone",
  set = "Item",
  config = {max_highlighted = 1, max_chips = 50},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
    return {vars = {self.config.max_highlighted, self.config.max_chips}}
  end,
  pos = { x = 5, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      local conv_card = G.hand.highlighted[1]
      juice_flip(card)
      if conv_card.ability.name == 'Bonus' then
        local bonus = math.min(self.config.max_chips, poke_total_chips(conv_card))
        conv_card.ability.perma_bonus = conv_card.ability.perma_bonus or 0
        conv_card.ability.perma_bonus = conv_card.ability.perma_bonus + bonus
      else
        conv_card:set_ability(G.P_CENTERS.m_bonus, nil, true)
      end
      juice_flip(card, true)
      delay(0.5)
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thunderstone = {
  name = "thunderstone",
  key = "thunderstone",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      local selected = G.hand.highlighted[1]
      local poss_cards = {}
      for _, v in pairs(G.P_CARDS) do
        if v.value == selected.base.value then
          table.insert(poss_cards, v)
        end
      end
      local cards_added = {}
      for i = 1, 2 do
        local area = i == 1 and G.hand or G.deck
        local _card = create_playing_card({
              front = pseudorandom_element(poss_cards, pseudoseed('thunderstone')),
              center = G.P_CENTERS.m_gold}, area, nil, nil, {G.C.SECONDARY_SET.Enhanced})
        cards_added[#cards_added + 1] = _card
      end
      playing_card_joker_effects(cards_added)
      poke_remove_card(selected, card)
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local firestone = {
  name = "firestone",
  key = "firestone",
  set = "Item",
  config = {max_highlighted = 4, min_highlighted = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 4, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 4 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted == 4 then
      juice_flip(card)
      for i = 1, #G.hand.highlighted do
        G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_mult, nil, true)
      end
      juice_flip(card, true)
      
      local target = pseudorandom_element(G.hand.highlighted, pseudoseed('firestone'))
      poke_remove_card(target, card)
      poke_unhighlight_cards()
      
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leafstone = {
  name = "leafstone",
  key = "leafstone",
  set = "Item",
  config = {num = 1, dem = 3},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    local num, dem = SMODS.get_probability_vars(center, self.config.num, self.config.dem, 'leafstone')
    return {vars = {num, dem}}
  end,
  pos = { x = 7, y = 3 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.cards and #G.hand.cards > 0 then
      juice_flip_hand(card)
      for i = 1, #G.hand.cards do
        if SMODS.pseudorandom_probability(card, 'leafstone', self.config.num, self.config.dem, 'leafstone') then
          G.hand.cards[i]:set_ability(G.P_CENTERS.m_lucky, nil, true)
        end
      end
      juice_flip_hand(card, true)
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local linkcable = {
  name = "linkcable",
  key = "linkcable",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 2 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted == 2 then
      local rightmost = G.hand.highlighted[1]
      for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end end
      juice_flip(card)
      for i=1, #G.hand.highlighted do
        if G.hand.highlighted[i] ~= rightmost then
          poke_vary_rank(G.hand.highlighted[i], false)
        else
          poke_vary_rank(G.hand.highlighted[i], true)
        end
      end
      juice_flip(card, true)
      delay(0.5)
      poke_unhighlight_cards()
      
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Item",
  helditem = true,
  config = {extra = {joker_highlighted = 1, money_mod = 2, usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {self.config.extra.joker_highlighted, self.config.extra.money_mod}}
  end,
  pos = { x = 7, y = 4 },
  soul_pos = { x = 6, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  hidden = true,
  soul_set = "Item",
  soul_rate = .025,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) then return false end
    if #G.jokers.cards == 0 then return false end
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local target = nil
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      target = G.jokers.cards[1]
    else
      target = G.jokers.highlighted[1]
    end
    target.ability.extra_value = target.ability.extra_value + card.ability.extra.money_mod
    target:set_cost()
    G.E_MANAGER:add_event(Event({
      func = function() card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
    end}))
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 6, y = 5 })
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local leek = {
  name = "leek",
  key = "leek",
  set = "Item",
  helditem = true,
  config = {extra = {num = 1, dem = 2, usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    local card = center or self
    if not card.edition or (card.edition and not card.edition.foil) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    end
    if not card.edition or (card.edition and not card.edition.holo) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    end
    if not card.edition or (card.edition and not card.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    local num, dem = SMODS.get_probability_vars(center, card.ability.extra.num, card.ability.extra.dem, 'leek')
    return {vars = {num, dem}}
  end,
  pos = { x = 8, y = 4 },
  soul_pos = { x = 7, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    if card.area == G.shop_jokers then return false end
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local removed = nil
    
    if SMODS.pseudorandom_probability(card, 'leek', card.ability.extra.num, card.ability.extra.dem, 'leek') then
      local edition = poll_edition('wheel_of_fortune', nil, true, true)
      card:set_edition(edition, true)
    else
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
          attention_text({
              text = localize('k_nope_ex'),
              scale = 1.3, 
              hold = 1.4,
              major = card,
              backdrop_colour = G.C.SECONDARY_SET.Tarot,
              align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
              offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
              silent = true
              })
              G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                  play_sound('tarot2', 0.76, 0.4);return true end}))
              play_sound('tarot2', 1, 0.4)
              card:juice_up(0.3, 0.5)
      return true end }))
    end
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and card.edition then
      card:set_edition(nil, true)
    end
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 7, y = 5 })
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return false
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Item",
  helditem = true,
  config = {max_highlighted = 1, bonus = 10, extra = {usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {self.config.max_highlighted, self.config.bonus}}
  end,
  pos = { x = 9, y = 4 },
  soul_pos = { x = 8, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  hidden = true,
  soul_set = "Item",
  soul_rate = .025,
  can_use = function(self, card)
    if card.area == G.shop_jokers then return false end
    if G.hand.highlighted and #G.hand.highlighted ~= 1 then return false end
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    local current_bonus = conv_card.ability.perma_bonus or 0
    juice_flip(card)
    conv_card.ability.perma_bonus = current_bonus + self.config.bonus
    juice_flip(card, true)
    delay(0.5)
    poke_unhighlight_cards()
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 8, y = 5 })
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local teraorb = {
  name = "teraorb",
  key = "teraorb",
  set = "Item",
  config = {extra = {change_to_type = "Grass"}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    local info = center.ability.extra or self.config.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {info.change_to_type, colours = {G.ARGS.LOC_COLOURS[string.lower(info.change_to_type)]}}}
    local highlight_colour = info.change_to_type ~= "Lightning" and G.C.WHITE or G.C.BLACK
    return {vars = {info.change_to_type, colours = {G.ARGS.LOC_COLOURS[string.lower(info.change_to_type)], highlight_colour}}}
  end,
  pos = { x = 2, y = 9 },
  soul_pos = { x = 3, y = 9 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  soul_set = "Item",
  soul_rate = .045,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    else
      return
    end
    if is_type(choice, card.ability.extra.change_to_type) then
      if choice.config and choice.config.center.stage and not type_sticker_applied(choice) then
        energy_increase(choice, choice.ability.extra.ptype)
      elseif type_sticker_applied(choice) then
        energy_increase(choice, type_sticker_applied(choice))
      end
    end
    apply_type_sticker(choice, card.ability.extra.change_to_type)
    card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
        local change_list = {}
        for i = 1, #poketype_list do
          if card.ability.extra.change_to_type ~= poketype_list[i] then
            change_list[#change_list + 1] = poketype_list[i]
          end
        end
        card.ability.extra.change_to_type = pseudorandom_element(change_list, 'tera')
        G.E_MANAGER:add_event(Event({
          func = function()
            self:set_sprites(card)
            return true
          end
        }))
  
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.change_to_type, colour = G.ARGS.LOC_COLOURS[string.lower(card.ability.extra.change_to_type)]})
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
      card.ability.extra.change_to_type = pseudorandom_element(poketype_list, 'tera')
      
      self:set_sprites(card)
    end
  end,
  set_sprites = function(self, card, front)
    local info = card.ability and card.ability.extra or self.config.extra
    local sprite_locations = {grass = {x = 2, y = 9}, fire = {x = 0, y = 9}, water = {x = 2, y = 10}, lightning = {x = 4, y = 9}, psychic = {x = 8, y = 9}, fighting = {x = 8, y = 8},
                              colorless = {x = 0, y = 10}, dark = {x = 0, y = 8}, metal = {x = 6, y = 9}, fairy = {x = 6, y = 8}, dragon = {x = 2, y = 8}, earth = {x = 4, y = 8}}
    local sprite_x = sprite_locations[string.lower(info.change_to_type)].x
    local sprite_y = sprite_locations[string.lower(info.change_to_type)].y
    
    card.children.center:set_sprite_pos({x = sprite_x, y = sprite_y})
    card.children.floating_sprite:set_sprite_pos({x = sprite_x + 1, y = sprite_y})
  end,
  in_pool = function(self)
    return true
  end
}

local metalcoat = {
  name = "metalcoat",
  key = "metalcoat",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {"Metal", colours = {G.ARGS.LOC_COLOURS.metal}}}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 2 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    end
    
    if choice then
      apply_type_sticker(choice, "Metal")
      card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_metal_ex"), colour = G.ARGS.LOC_COLOURS["metal"]})
    end
    
    local copy = copy_card(G.hand.highlighted[1], nil, nil, G.playing_card)
    copy:set_ability(G.P_CENTERS.m_steel, nil, true)
    poke_add_card(copy, card)
    poke_unhighlight_cards()
  end,
  in_pool = function(self)
    return true
  end
}

local dragonscale = {
  name = "dragonscale",
  key = "dragonscale",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {"Dragon", colours = {G.ARGS.LOC_COLOURS.dragon}}}
  end,
  pos = { x = 7, y = 2 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    
    apply_type_sticker(choice, "Dragon")
    card_eval_status_text(choice, 'extra', nil, nil, nil, {localize("poke_dragon_ex"), colour = G.ARGS.LOC_COLOURS["dragon"]})
    
    for i = 1, 3 do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local card_type = nil
        if pseudorandom(pseudoseed('dragonscale')) > .50 then
          card_type = "Item"
        else
          card_type = "Energy"
        end
        
        local _card = create_card(card_type, G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
  end,
  in_pool = function(self)
    return true
  end
}

local kingsrock = {
  name = "kingsrock",
  key = "kingsrock",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 5, y = 2 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      local conv_card = G.hand.highlighted[1]
      juice_flip(card)
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.2,
          func = function()
              SMODS.change_base(conv_card, nil, "King")
              return true
          end
      }))
      delay(0.5)
      juice_flip(card, true)
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local upgrade = {
  name = "upgrade",
  key = "upgrade",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 1,},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 8, y = 2 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted >= self.config.min_highlighted and #G.hand.highlighted <= self.config.max_highlighted then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if #G.hand.highlighted >= self.config.min_highlighted then
      local enhancement = SMODS.poll_enhancement({options = {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_gold", "m_lucky"}, guaranteed = true})
      juice_flip(card)
      for i = 1, #G.hand.highlighted do
        G.hand.highlighted[i]:set_ability(G.P_CENTERS[enhancement], nil, true)
      end
      juice_flip(card, true)
      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return not next(find_joker("porygon2"))
  end
}

local dubious_disc = {
  name = "dubious_disc",
  key = "dubious_disc",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 0, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.cards and #G.hand.cards > 0 then
      juice_flip_hand(card)
      for i = 1, #G.hand.cards do
        local enhancement = SMODS.poll_enhancement({guaranteed = true})
        G.hand.cards[i]:set_ability(enhancement, nil, true)
      end
      juice_flip_hand(card, true)
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return next(find_joker("porygon2"))
  end
}

local icestone = {
  name = "icestone",
  key = "icestone",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 1, num = 1, dem = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    local num, dem = SMODS.get_probability_vars(center, self.config.num, self.config.dem, 'icestone')
    return {vars = {self.config.max_highlighted, num, dem}}
  end,
  pos = { x = 5, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted >= self.config.min_highlighted and #G.hand.highlighted <= self.config.max_highlighted then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if #G.hand.highlighted >= self.config.min_highlighted then
      juice_flip(card)
      for i = 1, #G.hand.highlighted do
        G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_glass, nil, true)
      end
      juice_flip(card, true)
      for i = 1, #G.hand.highlighted do
        if SMODS.pseudorandom_probability(card, 'icestone', self.config.num, self.config.dem, 'icestone') then
          poke_remove_card(G.hand.highlighted[i], card)
        end
      end

      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local shinystone = {
  name = "shinystone",
  key = "shinystone",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted, self.config.drain_amt}}
  end,
  pos = { x = 2, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    if G.hand.highlighted and #G.hand.highlighted == 1 then
      return true
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if #G.hand.highlighted == 1 then
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
          local over = false
          local edition = poll_edition('aura', nil, true, true)
          local shiny_card = G.hand.highlighted[1]
          shiny_card:set_edition(edition, true)
          shiny_card:set_ability(G.P_CENTERS.c_base, nil, true)
          card:juice_up(0.3, 0.5)
      return true end }))

      poke_unhighlight_cards()
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local twisted_spoon = {
  name = "twisted_spoon",
  key = "twisted_spoon",
  set = "Item",
  pos = { x = 1, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if (#G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables) and G.GAME.last_poke_item and G.GAME.last_poke_item ~= 'c_poke_twisted_spoon' 
        and G.GAME.last_poke_item ~= 'c_poke_leftovers' and G.GAME.last_poke_item ~= 'c_poke_leek' and G.GAME.last_poke_item ~= 'c_poke_thickclub' then 
      return true 
    end
    return false
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local used_item = copier or card
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        if G.consumeables.config.card_limit > #G.consumeables.cards then
            play_sound('timpani')
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, G.GAME.last_poke_item, 'spoon')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            used_item:juice_up(0.3, 0.5)
        end
        return true end }))
    delay(0.6)
  end,
  in_pool = function(self)
    return true
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or self
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end
    local spoon_c = G.GAME.last_poke_item and G.P_CENTERS[G.GAME.last_poke_item] or nil
    local last_poke_item = spoon_c and localize{type = 'name_text', key = spoon_c.key, set = spoon_c.set} or localize('k_none')
    local colour = (not spoon_c or spoon_c.name == 'twisted_spoon' or spoon_c.name == 'leftovers' or spoon_c.name == 'leek' or spoon_c.name == 'thickclub') and G.C.RED or G.C.GREEN
    local main_end = {
        {n=G.UIT.C, config={align = "bm", padding = 0.02}, nodes={
            {n=G.UIT.C, config={align = "m", colour = colour, r = 0.05, padding = 0.05}, nodes={
                {n=G.UIT.T, config={text = ' '..last_poke_item ..' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true}},
            }}
        }}
    }
   local loc_vars = {last_poke_item}
   if not (not spoon_c or (spoon_c.name == 'twisted_spoon')) then
      info_queue[#info_queue+1] = spoon_c
   end
   
   localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = loc_vars}
   desc_nodes[#desc_nodes+1] = main_end 
  end,
  add_to_deck = function(self, card, from_debuff)
    if G.GAME.modifiers.spoon_slots then
      G.E_MANAGER:add_event(Event({
        func = function()
          G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
          return true
        end
      }))
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if G.GAME.modifiers.spoon_slots then
      G.E_MANAGER:add_event(Event({
        func = function()
          G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
          return true
        end
      }))
    end
  end,
}

return {name = "Items",
        list = {moonstone, sunstone, waterstone, leafstone, firestone, thunderstone, linkcable, leftovers, leek, thickclub, teraorb, metalcoat, dragonscale, kingsrock, upgrade, dubious_disc, icestone,                shinystone, twisted_spoon}
}
