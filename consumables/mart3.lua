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
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local selected_suit = G.hand.highlighted[1].base.suit
    
    local cards_held = {}
    for k, v in ipairs(G.hand.cards) do
      if v ~= G.hand.highlighted[1] then
        table.insert(cards_held, v)
      end
    end
    
    pseudoshuffle(cards_held, pseudoseed('prism'))
    
    juice_flip_table(card, cards_held, false, self.config.converted)
    for i = 1, math.min(#cards_held, self.config.converted) do
      G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() cards_held[i]:change_suit(selected_suit);return true end }))
    end
    juice_flip_table(card, cards_held, true, self.config.converted)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}


return {name = "Items 2",
        list = {prismscale}
}