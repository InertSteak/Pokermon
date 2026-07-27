-- Flapple 841
-- Appletun 842
-- Silicobra 843
-- Sandaconda 844
-- Cramorant 845
-- Arrokuda 846
-- Barraskewda 847
-- Toxel 848
-- Toxtricity 849
-- Sizzlipede 850
-- Centiskorch 851
-- Clobbopus 852
local clobbopus = {
  name = "clobbopus", 
  pos = {x = 0, y = 0},
  config = {extra = {earned = 0}, evo_rqmt = 12},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {self.config.evo_rqmt - center.ability.extra.earned}}
  end,
  rarity = 1,
  cost = 5, 
  stage = "Base",
  ptype = "Fighting",
  atlas = "Pokedex8",
  blueprint_compat = true,
  calculate = function(self, card, context)
    
    if context.before and not context.blueprint then
      local scoring_hand = context.scoring_hand
      local all_same_rank = false
      
      if scoring_hand and #scoring_hand > 0 then
        local target_rank = scoring_hand[1].base.value
        all_same_rank = true
        
        for i = 2, #scoring_hand do
          if scoring_hand[i].base.value ~= target_rank then
            all_same_rank = false
            break
          end
        end
      end

      if all_same_rank then
        card.ability.extra.earned = card.ability.extra.earned + 1
      else
        if card.ability.extra.earned > 0 then
          card.ability.extra.earned = 0
          
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
              card:juice_up(0.7, 0.7)
              play_sound('tarot2', 0.9, 0.6)
              return true
            end
          }))

          return {
            message = "Reset",
            colour = G.C.RED
          }
        else
          card.ability.extra.earned = 0
        end
      end
    end
    
    if context.cardarea == G.jokers and context.joker_main then
      local scoring_hand = context.scoring_hand
      local all_same_rank = false
      
      if scoring_hand and #scoring_hand > 0 then
        local target_rank = scoring_hand[1].base.value
        all_same_rank = true
        
        for i = 2, #scoring_hand do
          if scoring_hand[i].base.value ~= target_rank then
            all_same_rank = false
            break
          end
        end
        
        if all_same_rank then
          local leftmost_card = scoring_hand[1]
          
          local rank_map = {
            ['2'] = 2,  ['3'] = 3,  ['4'] = 4,  ['5'] = 5,
            ['6'] = 6,  ['7'] = 7,  ['8'] = 8,  ['9'] = 9, ['10'] = 10,
            ['Jack'] = 10, ['Queen'] = 10, ['King'] = 10, ['Ace'] = 11
          }
          
          local base_value = rank_map[leftmost_card.base.value] or 0
          local mult_gain = base_value * 2
          
          return {
            message = "+" .. mult_gain .. " Mult",
            mult_mod = mult_gain,
            colour = G.C.MULT
          }
        end
      end
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_grapploct", card.ability.extra.earned, self.config.evo_rqmt)
  end,
  attributes = {"trigger_evo", "rank", "reset"}
}


-- Grapploct 853
local grapploct = {
  name = "grapploct", 
  pos = {x = 0, y = 0},
  config = {},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "Stage 1",
  ptype = "Fighting",
  atlas = "Pokedex8",
  blueprint_compat = true,
  calculate = function(self, card, context)
    
    if context.cardarea == G.jokers and context.joker_main then
      local scoring_hand = context.scoring_hand
      
      if scoring_hand and #scoring_hand > 0 then
        local target_rank = scoring_hand[1].base.value
        local all_same_rank = true
        
        for i = 2, #scoring_hand do
          if scoring_hand[i].base.value ~= target_rank then
            all_same_rank = false
            break
          end
        end
        
        if all_same_rank then
          local leftmost_card = scoring_hand[1]
          
          local rank_map = {
            ['2'] = 2,  ['3'] = 3,  ['4'] = 4,  ['5'] = 5,
            ['6'] = 6,  ['7'] = 7,  ['8'] = 8,  ['9'] = 9, ['10'] = 10,
            ['Jack'] = 10, ['Queen'] = 10, ['King'] = 10, ['Ace'] = 11
          }
          
          local base_value = rank_map[leftmost_card.base.value] or 0
          local mult_gain = base_value * #scoring_hand
          
          return {
            message = "+" .. mult_gain .. " Mult",
            mult_mod = mult_gain,
            colour = G.C.MULT
          }
        end
      end
    end
  end,
  attributes = {"rank", "mult"}
}
-- Sinistea 854
-- Polteageist 855
-- Hatenna 856
-- Hattrem 857
-- Hatterene 858
-- Impidimp 859
local impidimp = { 
    name = "impidimp", 
    pos = {x = 0, y = 0}, 
    config = {extra = {mult_mod = 2, rounds = 1}}, 
    loc_vars = function(self, info_queue, center) 
        pokermon.type_tooltip(self, info_queue, center) 
        return {vars = {center.ability.extra.mult_mod, center.ability.extra.rounds}} 
    end, 
    rarity = 2, 
    cost = 4, 
    gen = 8, 
    stage = "Basic", 
    ptype = "Fairy", 
    atlas = "Pokedex 8", 
    perishable_compat = true, 
    blueprint_compat = false, 
    eternal_compat = true, 
    calculate = function(self, card, context) 
        if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then 
            if G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
                
                for i = 1, #SMODS.drawn_cards do 
                    local drawn_card = SMODS.drawn_cards[i] 
                    
                    local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K', 'A'}
                    local random_rank = pseudorandom_element(ranks, pseudorandom('impidimp')) 
                    
                    local suit_letter = string.sub(drawn_card.base.suit, 1, 1) 
                    local card_key = suit_letter .. '_' .. random_rank 
                    
                    -- Modify the card's rank while preserving its suit
                    if G.P_CARDS[card_key] then 
                        drawn_card:set_base(G.P_CARDS[card_key]) 
                        
                        -- Add permanent Mult inherently to the card
                        drawn_card.ability.perma_mult = (drawn_card.ability.perma_mult or 0) + card.ability.extra.mult_mod
                        
                        card_eval_status_text(drawn_card, 'extra', nil, nil, nil, {
                            message = "Pranked!", 
                            colour = G.C.DARK_EDITION 
                        }) 
                    end 
                end 

            end
        end 

        return pokermon.level_evo(self, card, context, "j_poke_morgrem") 
    end,
    attributes = {"passive", "modify_card", "perma_bonus", "mult", "round_evo"},
}

-- Morgrem 860
local morgrem = { 
    name = "morgrem", 
    pos = {x = 0, y = 0}, 
    config = {extra = {mult_mod = 3 , h_size = 1, rounds = 5}}, 
    loc_vars = function(self, info_queue, center) 
        pokermon.type_tooltip(self, info_queue, center) 
        return {vars = {center.ability.extra.mult_mod, center.ability.extra.h_size, center.ability.extra.rounds}} 
    end, 
    rarity = "poke_safari", 
    cost = 6, 
    gen = 8, 
    stage = "One", 
    ptype = "Fairy", 
    atlas = "Pokedex 8", 
    perishable_compat = true, 
    blueprint_compat = false, 
    eternal_compat = true, 
    calculate = function(self, card, context) 
        if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then 
            if G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
                
                for i = 1, #SMODS.drawn_cards do 
                    local drawn_card = SMODS.drawn_cards[i] 
                    
                    local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K', 'A'}
                    local random_rank = pseudorandom_element(ranks, pseudorandom('impidimp')) 
                    
                    local suit_letter = string.sub(drawn_card.base.suit, 1, 1) 
                    local card_key = suit_letter .. '_' .. random_rank 
                    
                    -- Modify the card's rank while preserving its suit
                    if G.P_CARDS[card_key] then 
                        drawn_card:set_base(G.P_CARDS[card_key]) 
                        
                        -- Add permanent Mult inherently to the card
                        drawn_card.ability.perma_mult = (drawn_card.ability.perma_mult or 0) + card.ability.extra.mult_mod
                        
                        card_eval_status_text(drawn_card, 'extra', nil, nil, nil, {
                            message = "Pranked!", 
                            colour = G.C.DARK_EDITION 
                        }) 
                    end 
                end 

            end
        end 

        return pokermon.level_evo(self, card, context, "j_poke_morgrem") 
    end,
add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
    attributes = {"passive", "modify_card", "perma_bonus", "mult", "round_evo"},
}
-- Grimmsnarl 861
local grimmsnarl = { 
    name = "grimmsnarl", 
    pos = {x = 0, y = 0}, 
    config = {extra = {xmult_mod = 0.3, h_size = 1}}, 
    loc_vars = function(self, info_queue, center) 
        pokermon.type_tooltip(self, info_queue, center) 
        return {vars = {center.ability.extra.xmult_mod + 1, center.ability.extra.h_size}} 
    end, 
    rarity = 3, 
    cost = 8, 
    gen = 8, 
    stage = "Two",
    ptype = "Fairy", 
    atlas = "Pokedex 8", 
    perishable_compat = true, 
    blueprint_compat = false, 
    eternal_compat = true, 
    calculate = function(self, card, context) 
        -- Trigger only when cards are drawn on the opening hand of the round
        if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then 
            if G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 then
                
                for i = 1, #SMODS.drawn_cards do 
                    local drawn_card = SMODS.drawn_cards[i] 
                    
                    local ranks = {'2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K', 'A'}
                    local random_rank = pseudorandom_element(ranks, pseudorandom('grimmsnarl')) 
                    
                    local suit_letter = string.sub(drawn_card.base.suit, 1, 1) 
                    local card_key = suit_letter .. '_' .. random_rank 
                    
                    -- Modify the card's rank while preserving its suit
                    if G.P_CARDS[card_key] then 
                        drawn_card:set_base(G.P_CARDS[card_key]) 
                        
                        -- Add inherent permanent XMult to the playing card
                        drawn_card.ability.perma_x_mult = (drawn_card.ability.perma_x_mult or 0) + card.ability.extra.xmult_mod
                        
                        -- Trigger a brief visual text effect above the modified card
                        card_eval_status_text(drawn_card, 'extra', nil, nil, nil, {
                            message = "Pranked!", 
                        }) 
                    end 
                end 

            end
        end 
    end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end,
    attributes = {"passive", "modify_card", "perma_bonus", "mult", "round_evo"},
}
-- Obstagoon 862
-- Perrserker 863
-- Cursola 864
-- Sirfetch'd 865
-- Mr. Rime 866
-- Runerigus 867
-- Milcery 868
-- Alcremie 869
-- Falinks 870
return {name = "Pokemon Jokers 841-870", 
        list = {clobbopus, grapploct, impidimp, morgrem, grimmsnarl},
}