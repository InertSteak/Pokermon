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
      sendDebugMessage(limit)
      juice_flip_table(card, cards_held, false, limit)
      for i = 1, limit do
        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function() cards_held[i]:change_suit(selected_suit);return true end }))
      end
      juice_flip_table(card, cards_held, true, limit)
      
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
  config = {extra = {money = 4, max = 28, rounds = 3, round_on_add = 1}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_drain_item'}
    local card_info = center and center.ability.extra or self.config.extra
    local jokers = (G.jokers and G.jokers.cards) and #G.jokers.cards or 0
    return {vars = {card_info.money, card_info.rounds, card_info.round_on_add + card_info.rounds, math.min(card_info.max, card_info.money * jokers), card_info.max,}}
  end,
  pos = { x = 3, y = 4 },
  atlas = "Mart",
  cost = 3,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if not (G.GAME.round >= card.ability.extra.round_on_add + card.ability.extra.rounds) then
      for i = 1, #G.jokers.cards do
        poke_drain(card, G.jokers.cards[i], 1, true)
      end
    end
    local money = math.min(card.ability.extra.max, card.ability.extra.money * #G.jokers.cards)
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
  
    return {vars = {hand_played or localize('poke_none'), math.min(money_limit, money), money_limit, message}}
  end,
  pos = { x = 4, y = 4 },
  atlas = "Mart",
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

return {name = "Items 3",
        list = {prismscale, dawnstone,duskstone}
}