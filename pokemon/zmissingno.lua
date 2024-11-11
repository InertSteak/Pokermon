local mseed = "missingno"
--[[
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
  if context.before and not context.blueprint then
    local ranks = {'2','3','4','5','6','7','8','9','T','J','Q','K','A'}
    card.ability.extra.rank = pseudorandom_element(ranks, pseudoseed(mseed))
    
    local suits = {'S','H','D','C'}
    card.ability.extra.suit = pseudorandom_element(suits, pseudoseed(mseed))
    
    for k, v in ipairs(context.scoring_hand) do
      local enhancement_type = pseudorandom(pseudoseed('articuno'))
      if enhancement_type > .875 then v:set_ability(G.P_CENTERS.m_bonus, nil, true)
      elseif enhancement_type > .75 then v:set_ability(G.P_CENTERS.m_mult, nil, true)
      elseif enhancement_type > .625 then v:set_ability(G.P_CENTERS.m_wild, nil, true)
      elseif enhancement_type > .50 then v:set_ability(G.P_CENTERS.m_glass, nil, true)
      elseif enhancement_type > .375 then v:set_ability(G.P_CENTERS.m_steel, nil, true)
      elseif enhancement_type > .25 then v:set_ability(G.P_CENTERS.m_stone, nil, true)
      elseif enhancement_type > .125 then v:set_ability(G.P_CENTERS.m_gold, nil, true)
      else v:set_ability(G.P_CENTERS.m_lucky, nil, true)
      end
    end
    card.ability.extra.suitrank = true
    card.ability.extra.calced = true
  end
  if context.individual and context.cardarea == G.play then

    G.E_MANAGER:add_event(Event({func = function()
        local _card = context.other_card
        if _card then
          local suit_prefix = string.sub(_card.base.suit, 1, 1)..'_'
          local rank_suffix = card.ability.extra.rank
          _card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
        end
    return true end }))
    
    G.E_MANAGER:add_event(Event({func = function()
        local _card = context.other_card
        if _card then
          local suit_prefix = card.ability.extra.suit..'_'
          local rank_suffix = _card.base.id < 10 and tostring(_card.base.id) or
                              _card.base.id == 10 and 'T' or _card.base.id == 11 and 'J' or
                              _card.base.id == 12 and 'Q' or _card.base.id == 13 and 'K' or
                              _card.base.id == 14 and 'A'
          _card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
        end
    return true end }))
  end
end

local mdiscardorhand = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      if pseudorandom(pseudoseed(mseed)) > .50 then
        G.hand:change_size(1)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 1
      else
        ease_discard(1)
      end
    end
  end
end

missingnocalc = {mmult, mchips, mmoney, mXmult, mranksuit, mtag, mdiscardorhand}
]]--
local mtag = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand then
    if context.joker_main then
      G.E_MANAGER:add_event(Event({
        func = (function()
            local tag = pseudorandom_element(G.P_TAGS, pseudoseed(mseed))
            add_tag(Tag(tag.key))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
  end
end




local missingno ={
  name = "missingno", 
  pos = { x = 1, y = 12},
  config = {extra = {}},
  loc_txt = {      
    name = 'Missingno.',      
    text = {
      "When you get this, {C:attention}fill{}",
      "consumable and Joker slots",
      "with leftmost consumable",
      "Create a random {C:attention}Tag{}",
      "at end of round"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Bird'}
  end,
  rarity = 4, 
  cost = 21, 
  stage = "Legendary",
  ptype = "Bird",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition then
      G.E_MANAGER:add_event(Event({
        func = (function()
            local tag = pseudorandom_element(G.P_TAGS, pseudoseed(mseed))
            add_tag(Tag(tag.key))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
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