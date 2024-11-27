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

juice_flip = function()
  for i = 1, #G.hand.highlighted do
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.4,
          func = function()
              play_sound('tarot1')
              G.hand.highlighted[i]:juice_up(0.3, 0.5)
              return true
          end
      }))
      local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.15,
          func = function()
              G.hand.highlighted[i]:flip(); play_sound('card1', percent); G.hand.highlighted[i]:juice_up(0.3, 0.3); return true
          end
      }))
  end
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