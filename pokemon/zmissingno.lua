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

missingnocalc = {mmult, mchips,}

local missingno ={
  name = "missingno", 
  pos = {x = 12, y = 11},
  soul_pos = { x = 0, y = 12},
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Missingno.',      
    text = {
      "??????????????"
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