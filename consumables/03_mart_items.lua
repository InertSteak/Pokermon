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
        local hand = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
        SMODS.smart_level_up_hand(card, hand)
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

local duskstone = {
  name = "duskstone",
  key = "duskstone",
  set = "Item",
  config = {extra = {money = 4, max = 30, rounds = 3, round_on_add = 1}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_drain_item'}
    local card_info = center and center.ability.extra or self.config.extra
    local jokers = (G.jokers and G.jokers.cards) and #G.jokers.cards or 0
    local joker_count = 0
    for i = 1, jokers do
      if G.jokers.cards[i].sell_cost > 1 or (G.GAME.round >= (card_info.round_on_add + card_info.rounds)) then
        joker_count = joker_count + 1
      end
    end
    return {vars = {card_info.money, card_info.rounds, math.max(0, card_info.round_on_add + card_info.rounds - G.GAME.round), math.min(card_info.max, card_info.money * joker_count), card_info.max,}}
  end,
  pos = { x = 3, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local joker_count = 0
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i].sell_cost > 1 or (G.GAME.round >= (card.ability.extra.round_on_add + card.ability.extra.rounds)) then
        joker_count = joker_count + 1
        if not (G.GAME.round >= card.ability.extra.round_on_add + card.ability.extra.rounds) then
          poke_drain(card, G.jokers.cards[i], 1, true)
        end
      end
    end
    local money = math.min(card.ability.extra.max, card.ability.extra.money * joker_count)
    ease_dollars(money)
    evo_item_use_total(self, card, area, copier)
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.round_on_add = G.GAME.round
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      if G.GAME.round >= (card.ability.extra.round_on_add + card.ability.extra.rounds) and not card.ability.extra.juiced then
        card.ability.extra.juiced = true
        local eval = function(card) return not card.REMOVED and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
  end,
  in_pool = function(self)
    return true
  end
}

local dawnstone = {
  name = "dawnstone",
  key = "dawnstone",
  set = "Item",
  config = {extra = {hand_played = nil, money_limit = 40}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    local money = 0
    local message = localize('poke_dawn_info2')
    local hand_played = center and center.ability.extra.hand_played or self.config.extra.hand_played
    local money_limit = center and center.ability.extra.money_limit or self.config.extra.money_limit
    
    if hand_played then
      local mult = nil
      if (SMODS.Mods["Talisman"] or {}).can_load then
        mult = to_big(G.GAME.hands[hand_played].mult)
        money = mult * 2
        if to_big(money) > to_big(money_limit) then
          money = money_limit
        end
      elseif not (SMODS.Mods["Talisman"] or {}).can_load then
        mult = G.GAME.hands[hand_played].mult
        money = mult * 2
      end
    end
    if not hand_played then
      message = localize('poke_dawn_info1')
    end
  
    return {vars = {hand_played and localize(hand_played, 'poker_hands') or localize('poke_none'), math.min(money_limit, money), money_limit, message}}
  end,
  pos = { x = 4, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    return card.ability.extra.hand_played
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if card.ability.extra.hand_played then
      local money = 0
      local hand_played = card.ability.extra.hand_played
      local money_limit = card.ability.extra.money_limit
      
      if hand_played then
        local mult = nil
        if (SMODS.Mods["Talisman"] or {}).can_load then
          mult = to_big(G.GAME.hands[hand_played].mult)
          money = mult * 2
          if to_big(money) > to_big(money_limit) then
            ease_dollars(money_limit) 
          else
            ease_dollars(to_number(money))
          end
        elseif not (SMODS.Mods["Talisman"] or {}).can_load then
          mult = G.GAME.hands[hand_played].mult
          money = mult * 2
          money = math.min(money, money_limit)
          ease_dollars(money)
        end
      end
      
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and not card.ability.extra.hand_played then
        card.ability.extra.hand_played = context.scoring_name
        card:juice_up()
      end
    end
  end,
  in_pool = function(self)
    return true
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

local hardstone = {
  name = "hardstone",
  key = "hardstone",
  set = "Item",
  artist = "Sonfive",
  config = {max_highlighted = 1, max_chips = 10},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted, self.config.max_chips}}
  end,
  pos = { x = 5, y = 5 },
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
      conv_card:set_ability(G.P_CENTERS.m_stone, nil, true)
      local bonus = self.config.max_chips * #find_pokemon_type("Earth")
      if bonus > 0 then
        conv_card.ability.perma_bonus = conv_card.ability.perma_bonus or 0
        conv_card.ability.perma_bonus = conv_card.ability.perma_bonus + bonus
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

local miracleseed = {
  name = "miracleseed",
  key = "miracleseed",
  set = "Item",
  config = {max_highlighted = 1, min_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 2, y = 7 },
  atlas = "AtlasConsumablesBasic",
  artist = {"Emma", "Catzzadilla"},
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
    end
    juice_flip(card, true)
  end,
  in_pool = function(self)
    return true
  end
}

local prismscale = {
  name = "prismscale",
  key = "prismscale",
  set = "Item",
  config = {max_highlighted = 1, converted = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted, self.config.converted}}
  end,
  pos = { x = 3, y = 5 },
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
      local selected_suit = G.hand.highlighted[1].base.suit
      
      local cards_held = {}
      for k, v in ipairs(G.hand.cards) do
        if v ~= G.hand.highlighted[1] then
          table.insert(cards_held, v)
        end
      end
      
      pseudoshuffle(cards_held, pseudoseed('prism'))
      
      local limit = math.min(#cards_held, self.config.converted)
      juice_flip_table(card, cards_held, false, limit)
      for i = 1, limit do
        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() cards_held[i]:change_suit(selected_suit);return true end }))
      end
      juice_flip_table(card, cards_held, true, limit)
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

local list = {twisted_spoon, firestone, waterstone, thunderstone, leafstone, moonstone, sunstone, shinystone, duskstone, dawnstone, icestone,
              linkcable, metalcoat, dragonscale, kingsrock, upgrade, hardstone, miracleseed, prismscale}

return {name = "AtlasConsumablesBasic 3",
        list = list
}