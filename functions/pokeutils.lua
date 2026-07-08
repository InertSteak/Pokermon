pokermon.pseudorandom_multi = function(args)
  --Args: array(table), amt(num), seed(string), add_con(function), mod_func(function)
  local elements = {}
  local result = {}
  if args.array then
    for i = 1, #args.array do
      if not args.add_con or args.add_con(args.array[i]) then
        elements[#elements+1] = args.array[i]
      end
    end
    pseudoshuffle(elements, args.seed and pseudoseed(args.seed) or pseudoseed('default'))
    local amt = args.amt and math.min(#elements, args.amt) or #elements
    for j = 1, amt do
      if args.mod_func then
        args.mod_func(elements[j])
      end
      result[#result+1] = elements[j]
    end
  end
  return result
end

pokermon.juice_flip = function(card, second)
  local sound = 'card1'
  local base_percent = 1.15
  local extra = nil
  if second then sound = 'tarot2' end
  if second then base_percent = 0.85 end
  if second then extra = .6 end
  G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
      play_sound('tarot1')
      card:juice_up(0.3, 0.5)
      return true end }))
  for i=1, #G.hand.highlighted do
      local percent = nil
      if second then
        percent = base_percent + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
      else
        percent = base_percent - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
      end
      G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound(sound, percent, extra);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true      end }))
  end
  delay(0.2)
end

pokermon.juice_flip_hand = function(card, second)
  local sound = 'card1'
  local base_percent = 1.15
  local extra = nil
  if second then sound = 'tarot2' end
  if second then base_percent = 0.85 end
  if second then extra = .6 end
  G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
      play_sound('tarot1')
      card:juice_up(0.3, 0.5)
      return true end }))
  for i=1, #G.hand.cards do
      local percent = nil
      if second then
        percent = base_percent + (i-0.999)/(#G.hand.cards-0.998)*0.3
      else
        percent = base_percent - (i-0.999)/(#G.hand.cards-0.998)*0.3
      end
      G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.cards[i]:flip();play_sound(sound, percent, extra);G.hand.cards[i]:juice_up(0.3, 0.3);return true end }))
  end
  delay(0.2)
end

pokermon.juice_flip_table = function(card, targets, second, limit)
  local sound = 'card1'
  local base_percent = 1.15
  local extra = nil
  if not limit then limit = #targets end
  if second then sound = 'tarot2' end
  if second then base_percent = 0.85 end
  if second then extra = .6 end
  G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
      play_sound('tarot1')
      card:juice_up(0.3, 0.5)
      return true end }))
  for i=1, limit do
      local percent = nil
      if second then
        percent = base_percent + (i-0.999)/(#targets-0.998)*0.3
      else
        percent = base_percent - (i-0.999)/(#targets-0.998)*0.3
      end
      G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() targets[i]:flip();play_sound(sound, percent, extra);targets[i]:juice_up(0.3, 0.3);return true end }))
  end
  delay(0.2)
end

pokermon.juice_flip_single = function(card, index)
  G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
          play_sound('tarot1')
          card:juice_up(0.3, 0.5)
          return true
      end
  }))
  local percent = 1.15 - (index - 0.999) / (#G.hand.cards - 0.998) * 0.3
  G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.15,
      func = function()
          card:flip(); play_sound('card1', percent); card:juice_up(0.3, 0.3); return true
      end
  }))
end

pokermon.add_card = function(add_card, card, area)
      if not area then area = G.hand end
      add_card:add_to_deck()
      G.deck.config.card_limit = G.deck.config.card_limit + 1
      table.insert(G.playing_cards, add_card)
      area:emplace(add_card)
      add_card.states.visible = nil
      G.E_MANAGER:add_event(Event({
        func = function()
            add_card:start_materialize()
            return true
        end
      })) 
      playing_card_joker_effects({add_card})
      return {
          message = localize('k_copied_ex'),
          colour = G.C.CHIPS,
          card = card,
          playing_cards_created = {true}
      }
end

pokermon.add_playing_card = function(t, no_joker_effect)
  local playing_card = SMODS.add_card(t)
  if not no_joker_effect then
    playing_card_joker_effects({playing_card})
  end
  return playing_card
end

pokermon.add_shop_card = function(add_card, card)
    if G.GAME.shop.joker_max == 1 then
      G.shop_jokers.config.card_limit = G.GAME.shop.joker_max + 1
      G.shop_jokers.T.w = math.min((G.GAME.shop.joker_max + 1)*1.02*G.CARD_W,4.08*G.CARD_W)
      G.shop:recalculate()
    end
    add_card.states.visible = false
    G.shop_jokers:emplace(add_card)
    add_card:start_materialize()
    add_card:set_cost()
    create_shop_card_ui(add_card)
    
    if (SMODS.Mods["Talisman"] or {}).can_load then
      if Talisman.config_file.disable_anims then 
        add_card.states.visible = true
      end
    end
    card:juice_up()
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_plus_shop'), colour = G.C.GREEN})
end

pokermon.remove_card = function(target, card, trigger)
  G.E_MANAGER:add_event(Event({
    trigger = 'after',
    delay = 0.4,
    func = function()
      play_sound('tarot1')
      card:juice_up(0.3, 0.5)
      return true
    end
  }))
  G.E_MANAGER:add_event(Event({
    trigger = trigger and trigger or 'after',
    delay = 0.2,
    func = function()
      SMODS.destroy_cards(target, nil, true)
      return true
    end
  }))
  delay(0.3)
end

pokermon.debug = function(message, verbose, depth)
  if verbose then
    sendDebugMessage("The type of the message variable is ["..type(message).."]")
  end
  if type(message) == "table" then
    if depth then
      sendDebugMessage(inspectDepth(message))
    else
      sendDebugMessage(inspect(message))
    end
  else
    sendDebugMessage(message)
  end
end

pokermon.filter = function(list, func)
  local new_list = {}
  for _, v in pairs(list) do
    if func(v) then
      new_list[#new_list + 1] = v
    end
  end
  return new_list
end

pokermon.find_card = function(key_or_function, use_highlighted)
  local is_target = function(card)
    return (type(key_or_function) == "function") and key_or_function(card)
      or card.config.center.key == key_or_function
  end
  for _, cardarea in pairs(SMODS.get_card_areas("jokers")) do
    if use_highlighted and cardarea.highlighted and #cardarea.highlighted == 1 then
      local highlighted = cardarea.highlighted[1]
      if is_target(highlighted) then return highlighted end
    elseif cardarea.cards then
      for _, card in pairs(cardarea.cards) do
        if is_target(card) then return card end
      end
    end
  end
end

pokermon.find_playing_card = function(findFunc, findArea)
  local area = findArea or G.deck.cards
  local found = {}
  for k, v in pairs(area) do
    if findFunc(v) then
      found[#found + 1] = v
    end
  end
  
  return found
end

function pokermon.find_leftmost_or_highlighted(key_or_function)
  if not key_or_function then
    return G.jokers.highlighted[1] or G.jokers.cards[1]
  end
  return pokermon.find_card(key_or_function, true)
end

pokermon.vary_rank = function(card, decrease, seed, immediate)
  -- if it doesn't have a rank/suit within SMODS, don't do anything
  if not card.base or not card.base.value or not card.base.suit or not SMODS.Ranks[card.base.value] then return end

  local next_rank = nil
  if decrease == nil then
    next_rank = pseudorandom_element(SMODS.Ranks, pseudoseed(seed or 'random_rank')).key
  elseif decrease then
    if #SMODS.Ranks[card.base.value].prev > 0 then
      next_rank = pseudorandom_element(SMODS.Ranks[card.base.value].prev, pseudoseed(seed or 'decrease_rank'))
    end
  else
    if #SMODS.Ranks[card.base.value].next > 0 then
      next_rank = pseudorandom_element(SMODS.Ranks[card.base.value].next, pseudoseed(seed or 'increase_rank'))
    end
  end

  if immediate then
    SMODS.change_base(card, nil, next_rank)
  else
    G.E_MANAGER:add_event(Event({
      func = function()
        SMODS.change_base(card, nil, next_rank)
        return true
      end
    }))
  end
end

pokermon.get_adjacent_jokers = function(card)
  local jokers = {}
  if #G.jokers.cards > 1 then
    local pos = 0
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i] == card then
        pos = i
        break
      end
    end
    if pos > 1 and G.jokers.cards[pos-1] then 
      table.insert(jokers, G.jokers.cards[pos-1])
    end
    if pos < #G.jokers.cards and G.jokers.cards[pos+1] then 
      table.insert(jokers, G.jokers.cards[pos+1])
    end
  end
  return jokers
end

pokermon.next_owned_rank = function(id, rank)
  local rank_list = {}
  local owned_ranks = {}
  for _, v in pairs(G.playing_cards) do
    if v.base and v.base.value and not SMODS.has_no_rank(v) then
      if not owned_ranks[v.base.value] then
        table.insert(rank_list, v.base.value)
        owned_ranks[v.base.value] = true
      end
    end
  end

  if #rank_list == 1 then
    return SMODS.Ranks[rank].id, rank
  end

  local curr_rank = rank
  local found_next_rank = nil
  while not found_next_rank do
    local next_ranks = SMODS.Ranks[curr_rank].next or {}
    curr_rank = next_ranks[1]

    if not curr_rank or curr_rank == rank then
      -- if there's nothing next (probably broke something) or we've looped a round, then fail out
      found_next_rank = rank
    elseif owned_ranks[curr_rank] then
      -- if this rank is in your deck, select it!
      found_next_rank = curr_rank
    end
    -- if there's something next, it's not the current rank, and the next rank isn't in your deck, go check the next rank
  end
  if found_next_rank == rank then
    -- if we didn't find the rank or somehow looped, just grab a random rank
    found_next_rank = pseudorandom_element(rank_list, pseudoseed('next_highest_rank'))
  end

  return SMODS.Ranks[found_next_rank].id, found_next_rank
end

pokermon.get_lowest_rank = function(id, rank)
  local cards = {}
  local low_id = id
  local low_rank = rank
  local sort_function = function(card1, card2) return card1:get_id() < card2:get_id() end
  for k, v in pairs(G.playing_cards) do
    if v:get_id() and v:get_id() < low_id and not SMODS.has_no_rank(v) then
      table.insert(cards, v)
    end
  end
  if #cards > 0 then
    table.sort(cards, sort_function)
    low_id = cards[1]:get_id()
    low_rank = cards[1].base.value
  end
  return low_id, low_rank
end

pokermon.set_spoon_item = function(card)
  G.E_MANAGER:add_event(Event({
    trigger = 'immediate',
    func = function()
      G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = function()
          G.GAME.poke_last_item = card.config.center_key
            return true
        end
      }))
        return true
    end
  }))
end

pokermon.conversion_event_helper = function(func, delay, immediate)
  if immediate then
    func()
  else
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = delay or 0.1,
      func = function()
        func()
        return true
      end
    }))
  end
end

pokermon.convert_cards = function(cards, t, noflip, immediate)
  if not cards then return end
  if cards and cards.is and cards:is(Card) then cards = {cards} end
  if not t.seal and not noflip then
    for i = 1, #cards do
      pokermon.conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end)
    end
    delay(0.2)
  end
  for i = 1, #cards do
    if t.mod_conv then
      pokermon.conversion_event_helper(function() cards[i]:set_ability(G.P_CENTERS[t.mod_conv]) end, nil, immediate)
      if t.mod_conv == 'm_poke_seed' then
        cards[i]:set_sprites(cards[i].config.center)
      end
    end
    if t.edition then
      pokermon.conversion_event_helper(function() cards[i]:set_edition(t.edition, true) end, nil, immediate)
    end
    if t.suit_conv then
      pokermon.conversion_event_helper(function() cards[i]:change_suit(t.suit_conv) end, nil, immediate)
    end
    if t.seal then
      pokermon.conversion_event_helper(function() cards[i]:set_seal(t.seal, nil, true) end, nil, immediate)
    end
    if t.random then
      pokermon.vary_rank(cards[i], nil, nil, immediate)
    end
    if t.up or t.down then
      pokermon.vary_rank(cards[i], not t.up, nil, immediate)
    end
    if t.bonus_chips then
      local bonus_add = function()
        cards[i].ability.perma_bonus = cards[i].ability.perma_bonus or 0
        cards[i].ability.perma_bonus = cards[i].ability.perma_bonus + t.bonus_chips
      end
      pokermon.conversion_event_helper(bonus_add, nil, immediate)
    end
  end
  if not t.seal and not noflip then
    for i = 1, #cards do
      pokermon.conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end, 0.2)
    end
  end
  if not noflip then delay(0.3) end
  if noflip then
    for i = 1, #cards do
      pokermon.conversion_event_helper(function() cards[i]:juice_up(0.3, 0.3) end, 0.2)
    end
  end
  if cards == G.hand.highlighted then
    pokermon.conversion_event_helper(function() G.hand:unhighlight_all() end)
  end
end

pokermon.unhighlight_cards = function()
  G.E_MANAGER:add_event(Event({
    trigger = 'after',
    delay = 0.2,
    func = function()
        G.hand:unhighlight_all(); return true
    end
  }))
end

local game_init_object = Game.init_game_object
function Game:init_game_object()
  local game = game_init_object(self)
  game.joker_rate = game.joker_rate + 8
  return game
end

pokermon.is_in_collection = function(card)
  if not card.area and G.OVERLAY_MENU then return true end
  if card.area and card.area.config.collection then return true end
  if G.your_collection then
    for k, v in pairs(G.your_collection) do
      if card.area == v then
        return true
      end
    end
  end
  return false
end

pokermon.stabilize_chip_drain = function(card)
  if not card or not card.ability or not card.base or not card.base.nominal or not card.ability.bonus then return end
  card.ability.nominal_drain = card.ability.nominal_drain or 0
  card.ability.nominal_drain = math.min(card.ability.nominal_drain, card.base.nominal - 1)
  card.ability.perma_bonus = card.ability.perma_bonus or 0
  card.ability.perma_bonus = math.max(card.ability.perma_bonus, -card.ability.bonus)
end

tdmsg = function(tablename)
  if tablename and type(tablename) == "table" then
    sendDebugMessage(inspect(tablename))
  else
    sendDebugMessage("Not a table, Function: tdmsg")
  end
end

pokermon.add_hazards = function(ratio, flat, area)
  local hazards = {}
  flat = flat or 0
  area = area or G.deck
  local count = #G.playing_cards
  for _, v in pairs(G.playing_cards) do
    if SMODS.has_enhancement(v, "m_poke_hazard") then
      count = count - 1
    end
  end
  local to_add = ratio and math.floor(count / ratio) or flat
  for i = 1, to_add do
    hazards[#hazards+1] = create_playing_card({
      front = pseudorandom_element(G.P_CARDS, pseudoseed('hazards')), 
      center = G.P_CENTERS.m_poke_hazard}, area, nil, nil, {G.C.PURPLE
    })
    SMODS.recalc_debuff(hazards[#hazards])
  end
  playing_card_joker_effects(hazards)
end

pokermon.set_hazards = function(amount)
  for i = 1, amount do
    local valid = {}
    for k, v in pairs(G.deck.cards) do
      if v.config.center == G.P_CENTERS.c_base then
        valid[#valid + 1] = v
      end
    end
    if #valid > 0 then
      local card = pseudorandom_element(valid, pseudoseed('hazard'))
      card:set_ability(G.P_CENTERS.m_poke_hazard)
    end
  end
end

pokermon.change_hazard_max = function(mod)
  G.GAME.poke_hazard_max = G.GAME.poke_hazard_max or 3
  G.GAME.poke_hazard_max = G.GAME.poke_hazard_max + mod
end

pokermon.change_hazard_level = function(mod)
  local max = G.GAME.poke_hazard_max or 3
  G.GAME.poke_hazard_level = G.GAME.poke_hazard_level or 0
  G.GAME.poke_hazard_level = G.GAME.poke_hazard_level + mod
end

pokermon.get_hazard_level_vars = function()
  local level = math.min(G.GAME.poke_hazard_max or 3, G.GAME.poke_hazard_level or 0)
  local max = G.GAME.poke_hazard_max or 3
  local vars = {level, max}
  return vars
end

pokermon.is_same_suit = function(hand)
  local ret = {}
  local suits = SMODS.Suit.obj_buffer
  for j = 1, #suits do
    local suit = suits[j]
    local flush_count = 0
    for i=1, #hand do
      if hand[i]:is_suit(suit, nil, true) then flush_count = flush_count + 1 end 
    end
    if flush_count == #hand then
      return true
    end
  end
  return false
end

pokermon.get_rank = function(card)
  local id = card.base.id
  local rank = nil
  if id == 14 then rank = "Ace"
  elseif id == 13 then rank = "King"
  elseif id == 12 then rank = "Queen"
  elseif id == 11 then rank = "Jack"
  else rank = ""..id end
  return rank
end

pokermon.is_even = function(card)
  if card:get_id() == 2 or 
   card:get_id() == 4 or 
   card:get_id() == 6 or 
   card:get_id() == 8 or 
   card:get_id() == 10 then
     return true
  else
    return false
  end
end

pokermon.is_odd = function(card)
  if card:get_id() == 3 or 
   card:get_id() == 5 or 
   card:get_id() == 7 or 
   card:get_id() == 9 or 
   card:get_id() == 14 then
     return true
  else
    return false
  end
end

pokermon.suit_check = function(hand, num)
  local suits = {}
  local suit_count = 0
  
  for k, v in pairs(hand) do
    for x, y in pairs(SMODS.Suits) do
      if not SMODS.has_any_suit(v) and v:is_suit(y.key, true) and not suits[y.key] then
        suits[y.key] = true
        suit_count = suit_count + 1
        break
      end
    end
  end
  
  for k, v in pairs(hand) do
    for x, y in pairs(SMODS.Suits) do
      if SMODS.has_any_suit(v) and v:is_suit(y.key) and not suits[y.key] then
        suits[y.key] = true
        suit_count = suit_count + 1
        break
      end
    end
  end
  
  return suit_count >= num
end

-- Elemental Monkeys Hooks (and Probopass teehee)
local four_fingers_ref = SMODS.four_fingers
function SMODS.four_fingers(hand_type)
  if next(SMODS.find_card('j_poke_pansear')) or next(SMODS.find_card('j_poke_simisear')) then
    return 4
  end
  return four_fingers_ref(hand_type)
end

local shortcut_ref = SMODS.shortcut
function SMODS.shortcut()
  if next(SMODS.find_card('j_poke_pansage')) or next(SMODS.find_card('j_poke_simisage')) then
    return true
  end
  return shortcut_ref()
end

local is_face_ref = Card.is_face
function Card:is_face(from_boss)
  if self.debuff and not from_boss then return end
  if not self:get_id() then return end

  if next(SMODS.find_card('j_poke_panpour')) or next(SMODS.find_card('j_poke_simipour')) then return true end
  if next(SMODS.find_card('j_poke_probopass')) and self.ability.name == 'Stone Card' then return true end

  return is_face_ref(self, from_boss)
end

-- Ambipom Straight Hand-Part Override
SMODS.PokerHandPart:take_ownership('_straight',
  {
    func = function(hand)
      local min
      if (next(SMODS.find_card('j_poke_aipom')) or (#hand == 3 and next(SMODS.find_card('j_poke_ambipom')))) then min = 3 end
      return get_straight(hand, min or SMODS.four_fingers('straight'), SMODS.shortcut(), SMODS.wrap_around_straight())
    end
  },
  true
)
-- Ambipom Flush Check done via lovely patch for the sake of efficiency

pokermon.set_joker_family_win = function(card)
  local keys = pokermon.get_family_keys(card)
  for _, v in pairs(keys) do
    -- Since evo lines and aux_poke / auto-sticker can be tracked separately, this only needs to be the latter
    if (G.P_CENTERS[v] and G.P_CENTERS[v].set == 'Joker' and G.P_CENTERS[v].auto_sticker)
        or (card.config.center.aux_poke and (G.P_CENTERS[v] and card.config.center.stage == G.P_CENTERS[v].stage)) then
      -- This is the bit that tracks joker wins
      G.PROFILES[G.SETTINGS.profile].joker_usage[v] = G.PROFILES[G.SETTINGS.profile].joker_usage[v]
          or {count = 1, order = G.P_CENTERS[v]['order'], wins = {}, losses = {}, wins_by_key = {}, losses_by_key = {}}
      local joker_usage = G.PROFILES[G.SETTINGS.profile].joker_usage[v]
      joker_usage.wins = joker_usage.wins or {}
      joker_usage.wins[G.GAME.stake] = (joker_usage.wins[G.GAME.stake] or 0) + 1
      joker_usage.wins_by_key[SMODS.stake_from_index(G.GAME.stake)] = (joker_usage.wins_by_key[SMODS.stake_from_index(G.GAME.stake)] or 0) + 1
    end
  end
  -- This will sticker the previous evo line
  pokermon.set_previous_evo_win(card.config.center)
end

pokermon.set_previous_evo_win = function(center)
  local previous = pokermon.get_previous_evo_from_center(center, true)
  if previous then
    -- This is the bit that tracks joker wins
    G.PROFILES[G.SETTINGS.profile].joker_usage[previous] = G.PROFILES[G.SETTINGS.profile].joker_usage[previous]
        or {count = 1, order = G.P_CENTERS[previous]['order'], wins = {}, losses = {}, wins_by_key = {}, losses_by_key = {}}
    local joker_usage = G.PROFILES[G.SETTINGS.profile].joker_usage[previous]
    joker_usage.wins = joker_usage.wins or {}
    joker_usage.wins[G.GAME.stake] = (joker_usage.wins[G.GAME.stake] or 0) + 1
    joker_usage.wins_by_key[SMODS.stake_from_index(G.GAME.stake)] = (joker_usage.wins_by_key[SMODS.stake_from_index(G.GAME.stake)] or 0) + 1
    -- Moves all the way down the family tree recursively (rather than a gigantic if-else block)
    pokermon.set_previous_evo_win(G.P_CENTERS[previous])
  end
end

pokermon.can_set_sprite = function(card)
  if pokermon.is_in_collection(card) and not card.discovered then return false end
  return true
end

pokermon.has = function(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

pokermon.table_append = function(t1, t2)
  for _, v in ipairs(t2) do
    table.insert(t1, v)
  end
end

pokermon.find_pool_index = function(pool, name)
  for k, v in pairs(pool) do
    if v.name == name then return k end
  end
end

pokermon.get_dex_number = function(name)
  return pokermon.dex_numbers[name] or 1026
end

--- Creates a Set of all the values in a given list, or a Set with 1 given value. Returns nil in place of empty Sets.
pokermon.convert_to_set = function(element_or_list)
  if element_or_list then
    local set
    if type(element_or_list) == 'table' then
      for k, v in pairs(element_or_list) do
        set = set or {}
        local key = v == true and k or v
        set[key] = true
      end
    else
      set = { [element_or_list] = true }
    end
    return set
  end
end

pokermon.get_consumeables = function(set)
  local consumeables = {}
  if G.STAGE ~= G.STAGES.RUN then return consumeables end
  for _, cardarea in pairs(SMODS.get_card_areas("jokers")) do
    pokermon.table_append(consumeables, pokermon.filter(cardarea.cards,
      function(v) return v.ability.consumeable and not (set and v.ability.set ~= set)
    end))
  end
  return consumeables
end

pokermon.ease_hands_played = function(mod, instant)
  if mod >= 0 then
    ease_hands_played(mod, instant)
  else
    local to_decrease = math.min(G.GAME.current_round.hands_left + (G.poke_hands_buffer or 0) - 1, -mod)
    if to_decrease > 0 then
      ease_hands_played(-to_decrease, instant)
    end
  end
end

local ease_hands_played_ref = ease_hands_played
ease_hands_played = function(mod, instant, ...)
  if not instant then
    G.poke_hands_buffer = (G.poke_hands_buffer or 0) + mod
    G.E_MANAGER:add_event(Event({
      func = function()
        G.poke_hands_buffer = 0
        return true
      end
    }))
  end
  return ease_hands_played_ref(mod, instant, ...)
end

pokermon.nope = function(card)
  G.E_MANAGER:add_event(Event({
    trigger = 'after',
    delay = 0.4,
    func = function()
        attention_text({
            text = localize('k_nope_ex'),
            scale = 1.3,
            hold = 1.4,
            major = card,
            backdrop_colour = G.C.SECONDARY_SET.Tarot,
            align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.SMODS_BOOSTER_OPENED) and
                'tm' or 'cm',
            offset = { x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.SMODS_BOOSTER_OPENED) and -0.2 or 0 },
            silent = true
        })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.06 * G.SETTINGS.GAMESPEED,
            blockable = false,
            blocking = false,
            func = function()
                play_sound('tarot2', 0.76, 0.4)
                return true
            end
        }))
        play_sound('tarot2', 1, 0.4)
        card:juice_up(0.3, 0.5)
        return true
    end
            }))
end

-- Utils for sprite manipulation on existing cards

--- Checks whether two sprites are equal.
--- Also accepts card centers (uses `atlas` and `pos`)
pokermon.compare_sprites = function(a, b)
  a = a or {}
  b = b or {}
  local a_atlas = type(a.atlas) == 'table' and a.atlas.name or a.atlas
  local b_atlas = type(b.atlas) == 'table' and b.atlas.name or b.atlas
  local a_pos = a.sprite_pos or a.pos or {}
  local b_pos = b.sprite_pos or b.pos or {}
  return a_atlas == b_atlas and a_pos.x == b_pos.x and a_pos.y == b_pos.y
end

--- Copies the sprite at `from.children[sprite_index]` to `card.children[sprite_index]`
pokermon.copy_sprite = function(card, from, sprite_index)
  if pokermon.compare_sprites(card.children[sprite_index], from.children[sprite_index]) then
    return
  end

  if card.children[sprite_index] then
    card.children[sprite_index]:remove()
    card.children[sprite_index] = nil
  end

  if not from.children[sprite_index] then return end

  local sprite = from.children[sprite_index]
  local copy = SMODS.create_sprite(card.T.x, card.T.y, card.T.w, card.T.h, sprite.atlas.name, sprite.sprite_pos)

  for k, v in pairs(sprite.states) do
    if v == from.states[k] then
      copy.states[k] = card.states[k]
    elseif type(v) == 'table' and not v.can then
      copy.states[k].can = false
    end
  end

  for k, v in pairs(sprite.role) do
    if v == from then
      copy.role[k] = card
    else
      copy.role[k] = v
    end
  end

  card.children[sprite_index] = copy
end

pokermon.copy_joker_sprites = function(card, from)
  pokermon.copy_sprite(card, from, 'center')
  pokermon.copy_sprite(card, from, 'floating_sprite')
end

--- Resets the card back to its original sprite, while keeping states/roles intact
pokermon.reset_sprite = function(card, center)
  center = center or card.config.center

  local sprite = card.children.center
  local soul = card.children.floating_sprite

  if pokermon.compare_sprites(sprite, center) then return end

  card.children.center = nil
  card.children.floating_sprite = nil

  local new_center = SMODS.create_sprite(card.T.x, card.T.y, card.T.w, card.T.h, center.atlas, center.pos)

  new_center.states = sprite.states
  new_center.role = sprite.role

  card.children.center = new_center

  if center.soul_pos then
    local new_soul = SMODS.create_sprite(card.T.x, card.T.y, card.T.w, card.T.h, center.soul_atlas or center.atlas, center.soul_pos)

    if soul then
      new_soul.states = soul.states
      new_soul.role = soul.role
    else
      new_soul.role.draw_major = card
      new_soul.states.hover.can = false
      new_soul.states.click.can = false
    end

    card.children.floating_sprite = new_soul
  end

  if sprite then sprite:remove() end
  if soul then soul:remove() end
end

pokermon.get_depleted = function(find_func)
  if not G.deck or not G.deck.cards then return false end
  
  local depleted = true
  
  for k, v in ipairs(G.deck.cards) do
    if find_func(v) then 
      depleted = false
      break
    end
  end
  
  return depleted
end

pokermon.sort_hands = function(sort_func)
  local temp_hands = {}
  for k, v in pairs(G.GAME.hands) do
    if v.visible then
      table.insert(temp_hands, v)
    end
  end
  table.sort(temp_hands, sort_func)
  
  return temp_hands
end
