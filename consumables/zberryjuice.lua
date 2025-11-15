pokermon.juice_list = {Energy = "c_poke_berry_juice_energy", Spectral = "c_poke_berry_juice_spectral", Planet = "c_poke_berry_juice_planet", Item = "c_poke_berry_juice_item",
                       Tarot = "c_poke_berry_juice_tarot"}

local berry_juice = {
  name = "berry_juice",
  key = "berry_juice",
  set = "Item",
  artist = "Sonfive",
  loc_vars = function(self, info_queue, center)
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 1, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  in_pool = function(self)
    return false
  end
}

local berry_juice_energy = {
  name = "berry_juice_energy",
  key = "berry_juice_energy",
  set = "Item",
  artist = "Sonfive",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 6, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  can_use = function(self, card)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    else
      return false
    end
    if choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and choice.ability.extra.ptype then
      return true
    else
      return false
    end
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    play_sound('poke_energy_use', 1, 0.5)
    if choice.config and choice.config.center.stage and not type_sticker_applied(choice) then
      energy_increase(choice, choice.ability.extra.ptype)
    elseif type_sticker_applied(choice) then
      energy_increase(choice, type_sticker_applied(choice))
    end
    if not G.GAME.modifiers.no_interest then
      G.GAME.modifiers.reset_no_interest = true
      G.GAME.modifiers.no_interest = true
    end
  end
}

local berry_juice_spectral = {
  name = "berry_juice_spectral",
  key = "berry_juice_spectral",
  set = "Item",
  artist = "Sonfive",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
   return {vars = {self.config.max_highlighted}}
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 4, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  use = function(self, card, area, copier)
    local target = G.hand.highlighted[1]
    local args = {edition = poll_edition('aura', nil, true, true), seal = SMODS.poll_seal({guaranteed = true})}
    poke_convert_cards_to(target, args, nil, true)
  end
}

local berry_juice_planet = {
  name = "berry_juice_planet",
  key = "berry_juice_planet",
  set = "Item",
  artist = "Sonfive",
  loc_vars = function(self, info_queue, center)
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 3, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    local temp_hands = {}
    local sort_function = function(hand1, hand2) return hand1.level > hand2.level end
    for k, v in pairs(G.GAME.hands) do
      if v.visible then
        local hand = v
        hand.handname = k
        table.insert(temp_hands, hand)
      end
    end
    table.sort(temp_hands, sort_function)
    
    local upgrade_handname = temp_hands[1].handname
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(upgrade_handname, 'poker_hands'),chips = G.GAME.hands[upgrade_handname].chips, 
        mult = G.GAME.hands[upgrade_handname].mult, level=G.GAME.hands[upgrade_handname].level})
    level_up_hand(card, upgrade_handname)
    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
  end
}

local berry_juice_item = {
  name = "berry_juice_item",
  key = "berry_juice_item",
  set = "Item",
  artist = "Sonfive",
  config = {num = 1, dem = 2},
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = { set = 'Item', key = 'c_poke_twisted_spoon', poke_add_desc = true}
   local num, dem = SMODS.get_probability_vars(center, self.config.num, self.config.dem, 'berry_juice_item')
   return {vars = {num, dem}}
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 5, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    local max = 1
    if SMODS.pseudorandom_probability(card, 'berry_juice_item', self.config.num, self.config.dem, 'berry_juice_item') then
      max = max + 1
    end
    for i = 1, max do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card("Item", G.consumeables, nil, nil, nil, nil, 'c_poke_twisted_spoon')
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
  end
}

local berry_juice_tarot = {
  name = "berry_juice_tarot",
  key = "berry_juice_tarot",
  set = "Item",
  artist = "Sonfive",
  config = {money = 5},
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_fool'}
   return {vars = {self.config.money}}
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 2, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card("Tarot", G.consumeables, nil, nil, nil, nil, 'c_fool')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    ease_dollars(self.config.money)
  end
}

local berry_juice_mystery = {
  name = "berry_juice_mystery",
  key = "berry_juice_mystery",
  set = "Item",
  artist = "Sonfive",
  config = {money = 5},
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = G.P_CENTERS.c_poke_berry_juice
  end,
  berry_juice = true,
  poke_multi_item = true,
  pos = { x = 1, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 12,
  unlocked = true,
  discovered = true,
  no_collection = true,
  in_pool = function(self)
    return false
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local berry_juices = {}
      for x, y in pairs(pokermon.juice_list) do
        table.insert(berry_juices, y)
      end
      local key = pseudorandom_element(berry_juices, pseudoseed('berry'))
      local _card = create_card("Item", G.consumeables, nil, nil, nil, nil, key)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end
}


return {name = "Items",
        list = {berry_juice, berry_juice_tarot, berry_juice_planet, berry_juice_spectral, berry_juice_item, berry_juice_energy, berry_juice_mystery}
}
