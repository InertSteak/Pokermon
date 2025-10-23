local function have_rotom()
  local in_pool = false
  local rotom_list = {'rotom', 'rotomh', 'rotomw', 'rotomf', 'rotomfan', 'rotomm'}
  for i = 1, #rotom_list do
    if next(SMODS.find_card('j_poke_'..rotom_list[i])) then 
      in_pool = true 
      break
    end
  end
  return in_pool
end

local function is_rotom(key)
  local rotom = false
  local rotom_list = {'rotom', 'rotomh', 'rotomw', 'rotomf', 'rotomfan', 'rotomm'}
  for i = 1, #rotom_list do
    if key == 'j_poke_'..rotom_list[i] then 
      rotom = true
      break
    end
  end
  return rotom
end

local function machine_transform(self, card, area, copier, machine)
  set_spoon_item(card)
  if not machine then machine = 'oven' end
  local machine_dict = {oven = 'j_poke_rotomh', washing_machine = 'j_poke_rotomw', fridge = 'j_poke_rotomf', fan = 'j_poke_rotomfan', lawn_mower = 'j_poke_rotomm'}
  if G.jokers.highlighted and #G.jokers.highlighted == 1 then
    poke_evolve(G.jokers.highlighted[1], machine_dict[machine], nil, nil, true)
  else
    for k, v in pairs(G.jokers.cards) do
      if is_rotom(v.config.center_key) and v.config.center_key ~= machine_dict[machine] then
        poke_evolve(v, machine_dict[machine], nil, nil, true)
        break
      end
    end
  end
end

local function machine_can_use(self, card, machine)
  local key = nil
  if not machine then machine = 'oven' end
  local machine_dict = {oven = 'j_poke_rotomh', washing_machine = 'j_poke_rotomw', fridge = 'j_poke_rotomf', fan = 'j_poke_rotomfan', lawn_mower = 'j_poke_rotomm'}
  if G.jokers.highlighted and #G.jokers.highlighted == 1 then
    key = G.jokers.highlighted[1].config.center_key
    if not is_rotom(key) or key == machine_dict[machine] then
      return false
    end
  end
  return true
end

local oven = {
  name = "oven",
  key = "oven",
  set = "Item",
  config = {d_plus = 1},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.d_plus}}
  end,
  pos = { x = 7, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  no_collection = true,
  can_use = function(self, card)
    return machine_can_use(self, card, self.name)
  end,
  use = function(self, card, area, copier)
    machine_transform(self, card, area, copier, self.name)
    if G.GAME.blind.in_blind then
      ease_discard(self.config.d_plus)
    end
  end,
  in_pool = function(self)
    return have_rotom()
  end
}

local washing_machine = {
  name = "washing_machine",
  key = "washing_machine",
  set = "Item",
  config = {hand_plus = 1},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.hand_plus}}
  end,
  pos = { x = 8, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  no_collection = true,
  can_use = function(self, card)
    return machine_can_use(self, card, self.name)
  end,
  use = function(self, card, area, copier)
    machine_transform(self, card, area, copier, self.name)
    if G.GAME.blind.in_blind then
      ease_hands_played(self.config.hand_plus)
    end
  end,
  in_pool = function(self)
    return have_rotom()
  end
}

local fridge = {
  name = "fridge",
  key = "fridge",
  set = "Item",
  config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.hand_plus}}
  end,
  pos = { x = 9, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  no_collection = true,
  can_use = function(self, card)
    return machine_can_use(self, card, self.name)
  end,
  use = function(self, card, area, copier)
    machine_transform(self, card, area, copier, self.name)
    for i = 1, 2 do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local set = pseudorandom_element(SMODS.ConsumableTypes, pseudoseed('rotomf'))
        local _card = create_card(set.key, G.consumeables, nil, nil, nil, nil, nil, 'rotomf')
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_consumable'), colour = G.C.FILTER})
      end
    end
  end,
  in_pool = function(self)
    return have_rotom()
  end
}

local fan = {
  name = "fan",
  key = "fan",
  set = "Item",
  config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.hand_plus}}
  end,
  pos = { x = 0, y = 7 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  no_collection = true,
  can_use = function(self, card)
    return machine_can_use(self, card, self.name)
  end,
  use = function(self, card, area, copier)
    machine_transform(self, card, area, copier, self.name)
    for i = 1, 2 do
      if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
          SMODS.add_card {
              set = "Joker",
              rarity = "Common"
          }
      end
    end
  end,
  in_pool = function(self)
    return have_rotom()
  end
}

local lawn_mower = {
  name = "lawn_mower",
  key = "lawn_mower",
  set = "Item",
  config = {hand_size_plus = 1},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.hand_size_plus}}
  end,
  pos = { x = 1, y = 7 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  poke_always_unlocked = true,
  unlocked = true,
  discovered = true,
  no_collection = true,
  can_use = function(self, card)
    return machine_can_use(self, card, self.name)
  end,
  use = function(self, card, area, copier)
    machine_transform(self, card, area, copier, self.name)
    if G.GAME.blind.in_blind then
      G.hand:change_size(self.config.hand_size_plus)
      G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + self.config.hand_size_plus
      local hand_space = math.min(#G.deck.cards, self.config.hand_size_plus)
      delay(0.3)
      for i=1, hand_space do --draw cards from deck
        if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK then 
            draw_card(G.deck,G.hand, i*100/hand_space,'up', true)
        else
            draw_card(G.deck,G.hand, i*100/hand_space,'up', true)
        end
      end
    end
  end,
  in_pool = function(self)
    return have_rotom()
  end
}

return {name = "Items",
        list = {oven, washing_machine, fridge, fan, lawn_mower}
}
