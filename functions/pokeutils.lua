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

poke_add_card = function(add_card, card)
      add_card:add_to_deck()
      G.deck.config.card_limit = G.deck.config.card_limit + 1
      table.insert(G.playing_cards, add_card)
      G.hand:emplace(add_card)
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
    sendDebugMessage(new_rank_index)
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