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
-- Morgrem 860
-- Grimmsnarl 861
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
        list = {clobbopus, grapploct},
}