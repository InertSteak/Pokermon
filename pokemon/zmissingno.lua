local mseed = "missingno"

local mmult = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      local mults = {0, 1, 6, 11, 19, 23, 29, 115}
      local mult = pseudorandom_element(mults, pseudoseed(mseed))
      return {
        message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
        colour = G.C.MULT,
        mult_mod = mult
      }
    end
  end
end

local mchips = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      local chips = {0, 33, 52, 69, 87, 136, 178, 204, 231}
      local chip = pseudorandom_element(chips, pseudoseed(mseed))
      return {
        message = localize{type = 'variable', key = 'a_chips', vars = {chip}}, 
        colour = G.C.CHIPS,
        chip_mod = chip
      }
    end
  end
end

local mmoney = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      local money = {0, 1, 2, 5, 9, 14, 27}
      local dollars = pseudorandom_element(money, pseudoseed(mseed))
      ease_dollars(dollars)
    end
  end
end

local mXmult = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      local Xmults = {0.1, 1.28, 1.82, 2.24, 3.45, 4.20, 13.6}
      local Xmult = pseudorandom_element(Xmults, pseudoseed(mseed))
      return {
        message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
        colour = G.C.XMULT,
        Xmult_mod = Xmult
      }
    end
  end
end

local mranksuit = function(self, card, context)
  if context.individual and context.cardarea == G.play then
    local ranks = {'2','3','4','5','6','7','8','9','T','J','Q','K','A'}
    local rank = pseudorandom_element(ranks, pseudoseed(mseed))
    G.E_MANAGER:add_event(Event({func = function()
        local card = context.other_card
        local suit_prefix = string.sub(card.base.suit, 1, 1)..'_'
        local rank_suffix = rank
        card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
    return true end }))

    local suits = {'S','H','D','C'}
    local suit = pseudorandom_element(suits, pseudoseed(mseed))
    
    G.E_MANAGER:add_event(Event({func = function()
        local card = context.other_card
        local suit_prefix = suit..'_'
        local rank_suffix = card.base.id < 10 and tostring(card.base.id) or
                            card.base.id == 10 and 'T' or card.base.id == 11 and 'J' or
                            card.base.id == 12 and 'Q' or card.base.id == 13 and 'K' or
                            card.base.id == 14 and 'A'
        card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
    return true end }))
  end
end

local mhandsizeplus = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        G.hand:change_size(math.ceil(pseudorandom(pseudoseed(mseed))*5))
      end
    end
end

local mhandsizeminus = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        G.hand:change_size(-math.ceil(pseudorandom(pseudoseed(mseed))*2))
      end
    end
end

missingnocalc = {mmult, mchips, mmoney, mXmult, mranksuit, mhandsizeplus, mhandsizeminus}

local missingno ={
  name = "missingno", 
  pos = { x = 1, y = 12},
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Missingno.',      
    text = {
      "??????????????"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'missingno'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'Bird'}
  end,
  rarity = 4, 
  cost = 21, 
  stage = "Legendary",
  ptype = "Bird",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if not context.blueprint then
      local mcalc = pseudorandom_element(missingnocalc, pseudoseed(mseed))
      return mcalc(self, card, context)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if G.consumeables and G.consumeables.cards and G.consumeables.cards[1] then
      local empty_con = G.consumeables.config.card_limit - #G.consumeables.cards
      if empty_con then
        for i=1, empty_con do
          local _card = copy_card(G.consumeables.cards[1], nil)
          _card:add_to_deck()
          G.consumeables:emplace(_card) 
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        end
      end
      local empty_jokers = G.jokers.config.card_limit - #G.jokers.cards - 1
      if empty_jokers then
        for i=1, empty_jokers do
          local _card = copy_card(G.consumeables.cards[1], nil)
          _card:add_to_deck()
          G.jokers:emplace(_card) 
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        end
      end
    end
  end,
}

return {name = "Missingno", 
        list = { missingno, },
}