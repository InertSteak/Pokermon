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

poke_vary_rank = function(card, decrease, seed)
  local ranks = {'2','3','4','5','6','7','8','9','10','Jack','Queen','King','Ace'}
  local current_rank_index = nil
  local new_rank_index = nil
  for i = 1, #ranks do
    if ranks[i] == card.base.value then
      current_rank_index = i
      break
    end
  end
  if decrease then
    if current_rank_index == 1 then 
      new_rank_index = 13
    else
      new_rank_index = current_rank_index - 1
    end
  elseif seed then
    new_rank_index = pseudorandom_element(ranks, pseudoseed(seed))
  else
    if current_rank_index == 13 then
      new_rank_index = 1
    else
      new_rank_index = current_rank_index + 1
    end
  end
  G.E_MANAGER:add_event(Event({
      func = function()
          SMODS.change_base(card, nil, seed and new_rank_index or ranks[new_rank_index])
          return true
      end
  })) 
end

poke_create_base_copy = function(selected)
  local suit = string.sub(selected.base.suit, 1, 1)
  local rank = (selected.base.value == 'Ace' and 'A') or
  (selected.base.value == 'King' and 'K') or
  (selected.base.value == 'Queen' and 'Q') or
  (selected.base.value == 'Jack' and 'J') or
  (selected.base.value == '10' and 'T') or 
  (selected.base.value)
  
  for j = 1, 2 do
    create_playing_card({front = G.P_CARDS[suit..'_'..rank], center = G.P_CENTERS.c_base}, G.hand, nil, nil, {G.C.PURPLE})
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
  local cards = {}
  local high_id = id
  local high_rank = rank
  local sort_function = function(card1, card2) return card1:get_id() < card2:get_id() end
  for k, v in pairs(G.playing_cards) do
    if v:get_id() and v:get_id() > high_id and not SMODS.has_no_rank(v) then
      table.insert(cards, v)
    end
  end
  if #cards > 0 then
    table.sort(cards, sort_function)
    high_id = cards[1]:get_id()
    high_rank = cards[1].base.value
  else
    high_id, high_rank = poke_lowest_rank(high_id, high_rank)
  end
  return high_id, high_rank
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

poke_conversion_event_helper = function(func, delay)
  G.E_MANAGER:add_event(Event({
    trigger = 'after',
    delay = delay or 0.1,
    func = function()
      func()
      return true
    end
  }))
end

local poke_id_to_rank = {'A','2','3','4','5','6','7','8','9','T','J','K','Q','A'}
poke_convert_cards_to = function(cards, t)
  if cards and cards.is and cards:is(Card) then cards = {cards} end
  if not t.seal then
    for i = 1, #cards do
      poke_conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end)
    end
    delay(0.2)
  end
  for i = 1, #cards do
    if t.mod_conv then
      poke_conversion_event_helper(function() cards[i]:set_ability(G.P_CENTERS[t.mod_conv]) end)
    elseif t.suit_conv then
      poke_conversion_event_helper(function() cards[i]:change_suit(t.suit_conv) end)
    elseif t.seal then
      poke_conversion_event_helper(function() cards[i]:set_seal(t.seal, nil, true) end)
    elseif t.random then
      poke_conversion_event_helper(function()
        local suit_prefix = string.sub(cards[i].base.suit, 1, 1) .. '_'
        local rank_suffix = poke_id_to_rank[math.floor(pseudorandom(t.seed) * 13) + 2]
        cards[i]:set_base(G.P_CARDS[suit_prefix .. rank_suffix])
      end)
    elseif t.up or t.down then
      poke_conversion_event_helper(function()
        local suit_prefix = string.sub(cards[i].base.suit, 1, 1) .. '_'
        local rank_suffix = poke_id_to_rank[cards[i].base.id + (t.up and 1 or -1)]
        cards[i]:set_base(G.P_CARDS[suit_prefix .. rank_suffix])
      end)
    end
  end
  if not t.seal then
    for i = 1, #cards do
      poke_conversion_event_helper(function() cards[i]:flip(); cards[i]:juice_up(0.3, 0.3) end, 0.2)
    end
  end
  delay(0.3)
  if cards == G.hand.highlighted then
    poke_conversion_event_helper(function() G.hand:unhighlight_all() end)
  end
end

local game_init_object = Game.init_game_object
function Game:init_game_object()
  local game = game_init_object(self)
  game.joker_rate = game.joker_rate + 8
  return game
end
