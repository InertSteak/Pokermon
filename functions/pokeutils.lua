pseudorandom_multi = function(args)
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

juice_flip = function(card, second)
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

juice_flip_hand = function(card, second)
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

juice_flip_table = function(card, targets, second, limit)
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

juice_flip_single = function(card, index)
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

poke_add_card = function(add_card, card, area)
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

poke_add_shop_card = function(add_card, card)
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

poke_remove_card = function(target, card)
      if target.ability.name == 'Glass Card' then 
          target.shattered = true
      else 
          target.destroyed = true
      end 
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('tarot1')
        card:juice_up(0.3, 0.5)
        return true end }))
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.2,
          func = function() 
              if target.ability.name == 'Glass Card' then 
                  target:shatter()
              else
                  target:start_dissolve()
              end
          return true end }))
      delay(0.3)
      for i = 1, #G.jokers.cards do
          G.jokers.cards[i]:calculate_joker({remove_playing_cards = true, removed = {target}})
      end
      card:juice_up()
end

poke_debug = function(message, verbose, depth)
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

poke_vary_rank = function(card, decrease, seed, immediate)
  -- if it doesn't have a rank/suit within SMODS, don't do anything
  if not card.base or not card.base.value or not card.base.suit or not SMODS.Ranks[card.base.value] then return end

  local next_rank = nil
  if decrease == nil then
    -- randomize rank (decrease is nil)
    local poss_ranks = {}
    for _, v in pairs(G.P_CARDS) do
      if v.suit == card.base.suit then
        table.insert(poss_ranks, v.value)
      end
    end
    if #poss_ranks > 0 then
      next_rank = pseudorandom_element(poss_ranks, pseudoseed(seed or 'random_rank'))
    end
  elseif decrease then
    -- only need to do this due to prev being a bad table (should be fixed in the next update)
    local poss_ranks = {}
    for _, v in pairs(SMODS.Ranks[card.base.value].prev) do
      if SMODS.Ranks[v] and type(SMODS.Ranks[v].next) == "table" then
        for _, _r in pairs(SMODS.Ranks[v].next) do
          if _r == card.base.value then
            table.insert(poss_ranks, v)
            break
          end
        end
      end
    end
    if #poss_ranks > 0 then
      next_rank = pseudorandom_element(poss_ranks, pseudoseed(seed or 'decrease_rank'))
    end

    -- once prev table is fixed can use this:
    --[[
    if #SMODS.Ranks[card.base.value].prev > 0 then
      next_rank = pseudorandom_element(SMODS.Ranks[card.base.value].prev, pseudoseed(seed or 'decrease_rank'))
    end
    --]]
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

poke_create_base_copy = function(selected)
  for j = 1, 2 do
    create_playing_card({front = selected.config.card, center = G.P_CENTERS.c_base}, G.hand, nil, nil, {G.C.PURPLE})
  end
end

poke_get_adjacent_jokers = function(card)
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

poke_next_highest_rank = function(id, rank)
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

poke_lowest_rank = function(id, rank)
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

set_spoon_item = function(card)
  G.E_MANAGER:add_event(Event({
    trigger = 'immediate',
    func = function()
      G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = function()
          G.GAME.last_poke_item = card.config.center_key
            return true
        end
      }))
        return true
    end
  }))
end

poke_conversion_event_helper = function(func, delay, immediate)
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

poke_convert_cards_to = function(cards, t, noflip, immediate)
  if not cards then return end
  if cards and cards.is and cards:is(Card) then cards = {cards} end
  if not t.seal and not noflip then
    for i = 1, #cards do
      poke_conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end)
    end
    delay(0.2)
  end
  for i = 1, #cards do
    if t.mod_conv then
      poke_conversion_event_helper(function() cards[i]:set_ability(G.P_CENTERS[t.mod_conv]) end, nil, immediate)
    end
    if t.edition then
      poke_conversion_event_helper(function() cards[i]:set_edition(t.edition, true) end, nil, immediate)
    end
    if t.suit_conv then
      poke_conversion_event_helper(function() cards[i]:change_suit(t.suit_conv) end, nil, immediate)
    end
    if t.seal then
      poke_debug(t.seal)
      poke_conversion_event_helper(function() cards[i]:set_seal(t.seal, nil, true) end, nil, immediate)
    end
    if t.random then
      poke_vary_rank(cards[i], nil, nil, immediate)
    end
    if t.up or t.down then
      poke_vary_rank(cards[i], not t.up, nil, immediate)
    end
    if t.bonus_chips then
      local bonus_add = function()
        cards[i].ability.perma_bonus = cards[i].ability.perma_bonus or 0
        cards[i].ability.perma_bonus = cards[i].ability.perma_bonus + t.bonus_chips
      end
      poke_conversion_event_helper(bonus_add, nil, immediate)
    end
  end
  if not t.seal and not noflip then
    for i = 1, #cards do
      poke_conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end, 0.2)
    end
  end
  if not noflip then delay(0.3) end
  if noflip then
    for i = 1, #cards do
      poke_conversion_event_helper(function() cards[i]:juice_up(0.3, 0.3) end, 0.2)
    end
  end
  if cards == G.hand.highlighted then
    poke_conversion_event_helper(function() G.hand:unhighlight_all() end)
  end
end

poke_unhighlight_cards = function()
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

poke_is_in_collection = function(card)
  if G.your_collection then
    for k, v in pairs(G.your_collection) do
      if card.area == v then
        return true
      end
    end
  end
  return false
end

poke_stabilize_chip_drain = function(card)
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

local prev_evaluate_round = G.FUNCS.evaluate_round
G.FUNCS.evaluate_round = function()
  G.E_MANAGER:add_event(Event({
    trigger = 'immediate',
    func = function()
      for i = #G.deck.cards, 1, -1 do
        local card = G.deck.cards[i]
        if SMODS.has_enhancement(card, "m_poke_hazard") then
          card:remove()
        end
      end
      return true
    end
  }))
  prev_evaluate_round()
end

poke_add_hazards = function(ratio, flat)
  local hazards = {}
  flat = flat or 0
  local count = #G.playing_cards
  for _, v in pairs(G.playing_cards) do
    if SMODS.has_enhancement(v, "m_poke_hazard") then
      count = count - 1
    end
  end
  local to_add = ratio and math.floor(count / ratio) or flat
  for i = 1, to_add do
    hazards[#hazards+1] = create_playing_card({
      front = pseudorandom_element(G.P_CARDS, pseudoseed('qwilfish')), 
      center = G.P_CENTERS.m_poke_hazard}, G.deck, nil, nil, {G.C.PURPLE
    })
    SMODS.recalc_debuff(hazards[#hazards])
  end
  playing_card_joker_effects(hazards)
end

function poke_same_suit(hand)
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