-- Ampharos 181
-- Bellossom 182
local bellossom={
  name = "bellossom",
  config = {extra = {mult = 7}},
  pos = {x = 0, y = 3},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if not center.edition or (center.edition and not center.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    if not center.edition or (center.edition and not center.edition.foil) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    end
    if not center.edition or (center.edition and not center.edition.holo) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    end
    info_queue[#info_queue+1] = G.P_CENTERS.m_wild
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local odds = {}
      for k, v in ipairs(context.scoring_hand) do
          local upgrade = pseudorandom(pseudoseed('bellossom'))
          if (v:get_id() == 3 or v:get_id() == 5 or v:get_id() == 7 or v:get_id() == 9 or v:get_id() == 14) and upgrade > .50 and not v.edition then
              odds[#odds+1] = v
              if v.ability.name == 'Wild Card' and not v.edition then
                local edition = poll_edition('aura', nil, true, true)
                v:set_edition(edition, true, true)
              end
              v:set_ability(G.P_CENTERS.m_wild, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          else
            v.bellossom_score = true
          end
      end
      if #odds > 0 then 
          return {
            message = localize("poke_petal_dance_ex"),
              colour = G.C.MULT,
              card = card
          }
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 or 
         context.other_card:get_id() == 9 or 
         context.other_card:get_id() == 14 then
          if context.other_card.bellossom_score then
            context.other_card.bellossom_score = nil
            return {
              mult = card.ability.extra.mult,
              card = card
            }
          end
      end
    end
  end
}
-- Marill 183
-- Azumarill 184
-- Sudowoodo 185
-- Politoed 186
local politoed={
  name = "politoed", 
  pos = {x = 4, y = 3}, 
  config = {extra = {mult = 7, suits = {"Spades", "Hearts", "Clubs", "Diamonds"}, indice = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suits[center.ability.extra.indice],'suits_singular'),  
                    colours = {G.C.SUITS[center.ability.extra.suits[center.ability.extra.indice]]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural'), #find_pokemon_type("Water")}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          if card.ability.extra.indice == 4 then
            card.ability.extra.indice = 1
          else
            card.ability.extra.indice = card.ability.extra.indice + 1
          end
        end
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local scoring_suit = card.ability.extra.suits[card.ability.extra.indice]
      if context.other_card:is_suit(scoring_suit) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = card.ability.extra.suits[card.ability.extra.indice]
      if context.other_card:is_suit(scoring_suit) then
        local total = #find_pokemon_type("Water")
        local cards = #context.scoring_hand
        local pos
        local remainder
        local retriggers
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i] == context.other_card then
            pos = i
            break
          end
        end
        retriggers = math.floor(total/cards)
        remainder = total % cards
        if pos <= remainder then retriggers = retriggers + 1 end
        return {
          message = localize('k_again_ex'),
          repetitions = retriggers,
          card = card
        }
      end
    end
  end,
}
-- Hoppip 187
-- Skiploom 188
-- Jumpluff 189
-- Aipom 190
-- Sunkern 191
-- Sunflora 192
-- Yanma 193
-- Wooper 194
-- Quagsire 195
-- Espeon 196
local espeon={
  name = "espeon", 
  pos = {x = 4, y = 4},
  config = {extra = {retriggers = 1, Xmult_multi = 1.2, rank = "Ace", id = 14, suit = "Spades"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.Xmult_multi, localize(center.ability.extra.rank or "2", 'ranks'),
                    localize(center.ability.extra.suit, 'suits_singular'), colours = {G.C.SUITS[center.ability.extra.suit]}}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      local rank_ids = {{rank = '2', id = 2},{rank = '3', id = 3},{rank = '4', id = 4},{rank = '5', id = 5},{rank = '6', id = 6},{rank = '7', id = 7},{rank = '8', id = 8},
                        {rank = '9', id = 9},{rank = '10', id = 10},{rank = 'Jack', id = 11},{rank = 'Queen', id = 12},{rank = 'King', id =13},{rank = 'Ace', id = 14},}
      local rank_id = pseudorandom_element(rank_ids, pseudoseed('espeon'..G.GAME.round))
      card.ability.extra.rank = rank_id.rank
      card.ability.extra.id = rank_id.id
      
      local suits = {'Spades','Hearts','Diamonds','Clubs'}
      card.ability.extra.suit = pseudorandom_element(suits, pseudoseed('espeon'..G.GAME.round))
      card:juice_up()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize(card.ability.extra.rank or "2", 'ranks').."s and "..localize(card.ability.extra.suit, 'suits_plural')})
    end
    if context.individual and context.cardarea == G.play and not context.end_of_round and context.other_card:is_suit(card.ability.extra.suit) then
      return {
        x_mult = card.ability.extra.Xmult_multi,
        card = card
      }
    end
    if context.repetition and context.cardarea == G.play and not context.end_of_round and context.other_card:get_id() == card.ability.extra.id then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local rank_ids = {{rank = '2', id = 2},{rank = '3', id = 3},{rank = '4', id = 4},{rank = '5', id = 5},{rank = '6', id = 6},{rank = '7', id = 7},{rank = '8', id = 8},
                  {rank = '9', id = 9},{rank = '10', id = 10},{rank = 'Jack', id = 11},{rank = 'Queen', id = 12},{rank = 'King', id =13},{rank = 'Ace', id = 14},}
      local rank_id = pseudorandom_element(rank_ids, pseudoseed('espeon'))
      card.ability.extra.rank = rank_id.rank
      card.ability.extra.id = rank_id.id
      
      local suits = {'Spades','Hearts','Diamonds','Clubs'}
      card.ability.extra.suit = pseudorandom_element(suits, pseudoseed('espeon'))
    end
  end
}
-- Umbreon 197
local umbreon={
  name = "umbreon", 
  pos = {x = 5, y = 4},
  config = {extra = {hand_played = "High Card", decrease_goal = 3, decreases = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'tag_orbital', set = 'Tag', specific_vars = {"Random Hand", 3}}
    info_queue[#info_queue+1] = {key = 'tag_negative', set = 'Tag'}
    return {vars = {center.ability.extra.hand_played or localize('poke_none'), center.ability.extra.decrease_goal, center.ability.extra.decreases}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      --cycle hand_name
      local hands = {"High Card", "Pair", "Two Pair", "Three of a Kind", "Straight", "Flush", "Full House", "Four of a Kind", "Straight Flush", "Five of a Kind", "Flush House", "Flush Five"}
      local visible_hands = {}
      for i = 1, #hands do
        if G.GAME.hands[hands[i]].visible then
          table.insert(visible_hands, hands[i])
        end
      end
      
      for j = 1, #visible_hands do
        if visible_hands[j] == card.ability.extra.hand_played then
          if j == #visible_hands then
            card.ability.extra.hand_played = visible_hands[1]
          else
            card.ability.extra.hand_played = visible_hands[j+1]
          end
          break
        end
      end
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.hand_played})
    end
    if context.cardarea == G.jokers and context.scoring_hand and context.scoring_name == card.ability.extra.hand_played and not context.blueprint then
      local can_level = nil
      if (SMODS.Mods["Talisman"] or {}).can_load then
        can_level = to_big(G.GAME.hands[card.ability.extra.hand_played].level) > to_big(1)
      else
        can_level = G.GAME.hands[card.ability.extra.hand_played].level > 1
      end
      if context.before and can_level then
        level_up_hand(card, card.ability.extra.hand_played, nil, -1)
        if card.ability.extra.decreases < card.ability.extra.decrease_goal - 1 then
          card.ability.extra.decreases = card.ability.extra.decreases + 1
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.decreases.."/"..card.ability.extra.decrease_goal})
        else
          if pseudorandom('umbreon') > .5 then
            G.E_MANAGER:add_event(Event({
              func = (function()
                  add_tag(Tag('tag_negative'))
                  play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                  play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                  return true
              end)
            }))
          else
            local tag = Tag('tag_orbital')
            local _poker_hands = {}
            for k, v in pairs(G.GAME.hands) do
              if v.visible then
                _poker_hands[#_poker_hands + 1] = k
              end
            end
            tag.ability.orbital_hand = pseudorandom_element(_poker_hands, pseudoseed('umbreon'))
            G.E_MANAGER:add_event(Event({
              func = (function()
                  add_tag(tag)
                  play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                  play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                  return true
              end)
            }))
          end
          card.ability.extra.decreases = 0
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.decrease_goal.."/"..card.ability.extra.decrease_goal})
        end
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local hands = {"High Card", "Pair", "Two Pair", "Three of a Kind", "Straight", "Flush", "Full House", "Four of a Kind", "Straight Flush", "Five of a Kind", "Flush House", "Flush Five"}
      local visible_hands = {}
      for i = 1, #hands do
        if G.GAME.hands[hands[i]].visible then
          table.insert(visible_hands, hands[i])
        end
      end
      card.ability.extra.hand_played = pseudorandom_element(visible_hands, pseudoseed('umbreon'))
    end
  end
}
-- Murkrow 198
-- Slowking 199
local slowking={
  name = "slowking",
  pos = {x = 7, y = 4},
  config = {extra = {Xmult_multi = 1, Xmult_multi2 = 0.1, oXmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi2, }}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      card.ability.extra.oXmult = card.ability.extra.Xmult_multi
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and G.GAME.current_round.hands_played > 0 and not context.blueprint then
        card.ability.extra.Xmult_multi = card.ability.extra.Xmult_multi + card.ability.extra.Xmult_multi2
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.XMULT
        }
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card:get_id() == 13 then
      return {
          x_mult = card.ability.extra.Xmult_multi,
          colour = G.C.RED,
          card = card
      }
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult_multi = card.ability.extra.oXmult
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
}
-- Misdreavus 200
-- Unown 201
-- Wobbuffet 202
-- Girafarig 203
-- Pineco 204
-- Forretress 205
-- Dunsparce 206
-- Gligar 207
-- Steelix 208
local steelix={
  name = "steelix", 
  pos = {x = 6, y = 5},  
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[1]
        card:set_ability(G.P_CENTERS.m_steel, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    if context.individual and context.cardarea == G.hand and context.other_card.ability.name == 'Stone Card' and not context.blueprint then
      context.other_card:set_ability(G.P_CENTERS.m_steel, nil, true)
    end
  end
}
-- Snubbull 209
-- Granbull 210

return {name = "Pokemon Jokers 181-210", 
        list = {bellossom, politoed, espeon, umbreon, slowking, steelix},
}
