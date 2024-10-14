--Code for pokemon jokers 31-60
local nidoqueen={
  name = "nidoqueen", 
  pos = {x = 0, y = 0}, 
  config = {extra = {chips = 100, chip_total = 0, h_size = 1}},
  loc_txt = {      
    name = 'Nidoqueen',      
    text = {
      "{C:attention}+#2#{} hand size",
      "Each {C:attention}Queen{}",
      "held in hand",
      "gives {C:chips}+#1#{} Chips",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    return {vars = {center.ability.extra.chips, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and not context.other_card.debuff and context.other_card:get_id() == 12 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        card.ability.extra.chip_total = card.ability.extra.chip_total + card.ability.extra.chips
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS
        }
      end
    end
    if context.joker_main then
      local chip_temp_total = card.ability.extra.chip_total
      card.ability.extra.chip_total = 0
      return {
        chip_mod = chip_temp_total
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
local nidoranm={
  name = "nidoranm", 
  pos = {x = 1, y = 0}, 
  config = {extra = {mult = 8, rounds = 3}},
  loc_txt = {      
    name = 'Nidoran M',      
    text = {
      "Each {C:attention}King{}",
      "held in hand",
      "gives {C:mult}+#1#{} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and not context.other_card.debuff and context.other_card:get_id() == 13 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          h_mult = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_nidorino")
  end
}
local nidorino={
  name = "nidorino", 
  pos = {x = 2, y = 0}, 
  config = {extra = {mult = 16}},
  loc_txt = {      
    name = 'Nidorino',      
    text = {
      "Each {C:attention}King{}",
      "held in hand",
      "gives {C:mult}+#1#{} Mult",
      "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_moonstone'}
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and not context.other_card.debuff and context.other_card:get_id() == 13 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          h_mult = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_nidoking")
  end
}
local nidoking={
  name = "nidoking", 
  pos = {x = 3, y = 0},
  config = {extra = {mult = 20, h_size = 1}},
  loc_txt = {      
    name = 'Nidoking',      
    text = {
      "{C:attention}+#2#{} hand size",
      "Each {C:attention}King{}",
      "held in hand",
      "gives {C:mult}+#1#{} Mult",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    return {vars = {center.ability.extra.mult, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dark",
  atlas = "Pokedex2", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and not context.other_card.debuff and context.other_card:get_id() == 13 then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          h_mult = card.ability.extra.mult
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
local clefairy={
  name = "clefairy", 
  pos = {x = 4, y = 0},
  config = {extra = {mult = 2, suit = "Clubs"}},
  loc_txt = {      
    name = 'Clefairy',      
    text = {
      "Played cards with",
      "{C:clubs}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fairy'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_moonstone'}
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Fairy",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_clefable")
  end
}
local clefable={
  name = "clefable", 
  pos = {x = 5, y = 0},
  config = {extra = {mult = 7, suit = "Clubs", Xmult = 2}},
  loc_txt = {      
    name = 'Clefable',      
    text = {
      "Played cards with",
      "{C:clubs}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored",
      "{X:mult,C:white} X#3# {} Mult if all cards ",
      "held in hand are {C:clubs}#4#{} ",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fairy'}
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.Xmult, localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Fairy",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    if context.joker_main then
      local applies = true
      for k, v in ipairs(G.hand.cards) do
        if v:is_suit(card.ability.extra.suit, nil, true) ~= true then
          applies = false
        end
      end
      if applies == true then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}},
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end 
  end
}
local vulpix={
  name = "vulpix", 
  pos = {x = 0, y = 1}, 
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Vulpix',      
    text = {
      "{C:green}#1# in #2#{} chance for each",
      "played {C:attention}9{} to create a",
      "{C:spectral}Medium{} card when scored",
      "{C:inactive}(Must have room)",
      "{C:inactive}(Evolves with a{} {C:attention}Fire Stone{}{C:inactive} card)"
    } 
  }, 
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  atlas = "Pokedex2",
  ptype = "Fire",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_medium'}
    info_queue[#info_queue+1] = {key = 'purple_seal', set = 'Other'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_firestone'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if (context.other_card:get_id() == 9) and (not context.other_card.debuff) and (pseudorandom('vulpix') < G.GAME.probabilities.normal/card.ability.extra.odds) then
          local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_medium')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
          card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
        end
      end 
    end
    return item_evo(self, card, context, "j_poke_ninetales")
  end
}
local ninetales={
  name = "ninetales", 
  pos = {x = 1, y = 1},
  config = {extra = {odds = 3}},
  loc_txt = {      
    name = 'Ninetales',      
    text = {
      "{C:green}#1# in #2#{} chance for each",
      "played {C:attention}9{} to create a",
      "{C:spectral}Medium{} card when scored",
      "{C:inactive}(Must have room)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_medium'}
    info_queue[#info_queue+1] = {key = 'purple_seal', set = 'Other'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = "poke_safari", 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex2", 
  ptype = "Fire",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if (context.other_card:get_id() == 9) and (not context.other_card.debuff) and (pseudorandom('vulpix') < G.GAME.probabilities.normal/card.ability.extra.odds) then
          local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_medium')
          _card:add_to_deck()
          G.consumeables:emplace(_card)
          card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
        end
      end 
    end
  end
}
local jigglypuff={
  name = "jigglypuff", 
  pos = {x = 2, y = 1},
  config = {extra = {mult = 2, suit = "Spades"}},
  loc_txt = {      
    name = 'Jigglypuff',      
    text = {
      "Played cards with",
      "{C:clubs}#2#{} suit give",
      "{C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Moonstone{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fairy'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_moonstone'}
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Fairy",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_wigglytuff")
  end
}
local wigglytuff={
  name = "wigglytuff", 
  pos = {x = 3, y = 1},
  config = {extra = {mult = 5, chips = 50, suit = "Spades"}},
  loc_txt = {      
    name = 'Wigglytuff',      
    text = {
      "Played cards with",
      "{C:clubs}#3#{} suit give",
      "{C:mult}+#1#{} Mult and ",
      "{C:chips}+#2#{} Chips when scored",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fairy'}
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Fairy",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          message = "Tuff!", 
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          chips = card.ability.extra.chips
        }
      end
    end
  end
}
local zubat={
  name = "zubat", 
  pos = {x = 4, y = 1},
  config = {extra = {mult = 3, zubat_tally = 0}},
  loc_txt = {      
    name = 'Zubat',      
    text = {
      "{C:mult}+#1#{} Mult for each Enhanced",
      "card in your full deck",
      "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+36{C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult*center.ability.extra.zubat_tally}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = true,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.zubat_tally = 0
      for k, v in pairs(G.playing_cards) do
        if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.zubat_tally = card.ability.extra.zubat_tally+1 end
      end
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * card.ability.extra.zubat_tally}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult * card.ability.extra.zubat_tally 
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_golbat", card.ability.extra.zubat_tally, 12)
  end
}
local golbat={
  name = "golbat", 
  pos = {x = 5, y = 1},
  config = {extra = {mult = 0, mult_mod = 4, chips = 0, chip_mod = 40, Xmult = 1, Xmult_mod = .2, money = 0, money_mod = 2}},
  loc_txt = {      
    name = 'Golbat',      
    text = {
      "Remove scoring card Enhancements",
      "Gain {C:mult}+#2#{} for {C:attention}Mult{} and {C:attention}Wild{} cards",
      "{C:chips}+#4#{} for {C:attention}Bonus{} and {C:attention}Stone{} cards,",
      "{X:red,C:white}X#6#{} for {C:attention}Steel{} and {C:attention}Glass{} cards,",
      "{C:money}$#8#{} for {C:attention}Gold{} and {C:attention}Lucky{} cards",
      "{C:inactive}(Currently {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive})"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dark'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod,                    center.ability.extra.money, center.ability.extra.money_mod}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Dark",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.before and not context.blueprint then
      local m_count = 0 
      local c_count = 0 
      local x_count = 0 
      local d_count = 0
      local enhanced = {}
      for k, v in ipairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base and not v.debuff and not v.vampired then 
              enhanced[#enhanced+1] = v
              v.vampired = true
              if v.config.center == G.P_CENTERS.m_mult or v.config.center == G.P_CENTERS.m_wild then
                m_count = m_count + 1
              end
              if v.config.center == G.P_CENTERS.m_bonus or v.config.center == G.P_CENTERS.m_stone then
                c_count = c_count + 1
              end
              if v.config.center == G.P_CENTERS.m_steel or v.config.center == G.P_CENTERS.m_glass then
                x_count = x_count + 1
              end
              if v.config.center == G.P_CENTERS.m_gold or v.config.center == G.P_CENTERS.m_lucky then
                d_count = d_count + 1
              end
              v:set_ability(G.P_CENTERS.c_base, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      v.vampired = nil
                      return true
                  end
              })) 
          end
      end

      if #enhanced > 0 then 
          if m_count > 0 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod * m_count
          end
          if c_count > 0 then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod * c_count
          end
          if x_count > 0 then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod * x_count
          end
          if d_count > 0 then
            card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_mod * d_count
          end
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = "Skree!", 
          colour = G.C.BLACK,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.chips,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    if card.ability.extra.money > 0 then
      return card.ability.extra.money
    end
	end
}
local oddish={
  name = "oddish", 
  pos = {x = 0, y = 2},
  config = {extra = {mult = 3, rounds = 4}},
  loc_txt = {      
    name = 'Oddish',      
    text = {
      "Played cards with {C:attention}Odd{} rank",
      "give {C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 or 
         context.other_card:get_id() == 9 or 
         context.other_card:get_id() == 14 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult = card.ability.extra.mult
          }
      end
    end
    return level_evo(self, card, context, "j_poke_gloom")
  end
}
local gloom={
  name = "gloom", 
  pos = {x = 1, y = 2}, 
  config = {extra = {mult = 7}},
  loc_txt = {      
    name = 'Gloom',      
    text = {
      "Played cards with {C:attention}Odd{} rank",
      "give {C:mult}+#1#{} Mult when scored",
      "{C:inactive}(Evolves with a{} {C:attention}Leaf Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_leafstone'}
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 or 
         context.other_card:get_id() == 9 or 
         context.other_card:get_id() == 14 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult = card.ability.extra.mult
          }
      end
    end
    return item_evo(self, card, context, "j_poke_vileplume")
  end
}
local vileplume={
  name = "vileplume",
  config = {extra = {Xmult = 1.3}},
  pos = {x = 2, y = 2},
  loc_vars = function(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult}}
  end,
  loc_txt = {      
    name = 'Vileplume',      
    text = {
      "Played cards with {C:attention}Odd{} rank",
      "give {X:mult,C:white} X#1# {} Mult when scored"
    } 
  }, 
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 or 
         context.other_card:get_id() == 9 or 
         context.other_card:get_id() == 14 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
            x_mult = card.ability.extra.Xmult
          }
      end
    end
    return item_evo(self, card, context, "j_poke_vileplume")
  end
}
local paras={
  name = "paras", 
  pos = {x = 3, y = 2}, 
  config = {extra = {mult = 0, mult_mod = 1}},
  loc_txt = {      
    name = 'Paras',      
    text = {
      "{C:mult}+#2#{} Mult per played hand",
      "that contains a {C:attention}Two Pair{}", 
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
      "{C:inactive}(Evolves at {C:mult}+8{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex2", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and next(context.poker_hands['Two Pair']) then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_parasect", card.ability.extra.mult, 8)
  end
}
local parasect={
  name = "parasect", 
  pos = {x = 4, y = 2},
   config = {extra = {mult = 8, mult_mod = 3}},
  loc_txt = {      
    name = 'Parasect',      
    text = {
      "{C:mult}+#2#{} Mult per played hand",
      "that contains a {C:attention}Two Pair{}",
      "{C:mult}-#2#{} Mult per played hand",
      "that does not",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if not context.blueprint then
        if context.before and next(context.poker_hands['Two Pair']) then
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.MULT
          }
        elseif context.before and card.ability.extra.mult > 0 then
          card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_mod
          return {
            message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.mult_mod}},
            colour = G.C.RED,
            card = self
          }
        end
      end
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
local venonat={
  name = "venonat", 
  pos = {x = 5, y = 2},
  config = {extra = {plus_odds = 1, rounds = 5}},
  loc_txt = {      
    name = 'Venonat',      
    text = {
      "Adds {C:attention}#1#{} to all {C:attention}listed",
      "{C:green,E:1,S:1.1}probabilities",
      "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}2 in 6{C:inactive})",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
    return {vars = {center.ability.extra.plus_odds, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_venomoth")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.probabilities.normal = G.GAME.probabilities.normal + card.ability.extra.plus_odds
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.probabilities.normal = G.GAME.probabilities.normal - card.ability.extra.plus_odds
  end
}
local venomoth={
  name = "venomoth", 
  pos = {x = 0, y = 3},
  config = {extra = {plus_odds = 3}},
  loc_txt = {      
    name = 'Venomoth',      
    text = {
      "Adds {C:attention}#1#{} to all {C:attention}listed",
      "{C:green,E:1,S:1.1}probabilities",
      "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}4 in 6{C:inactive})"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
    return {vars = {center.ability.extra.plus_odds}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex2",
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.probabilities.normal = G.GAME.probabilities.normal + card.ability.extra.plus_odds
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.probabilities.normal = G.GAME.probabilities.normal - card.ability.extra.plus_odds
  end
}
local diglett={
  name = "diglett", 
  pos = {x = 1, y = 3}, 
  config = {extra = {rounds = 4}},
  loc_txt = {      
    name = 'Diglett',      
    text = {
      "When you get this,",
      "create a {C:attention}Venus{} card",
      "{C:inactive}(Must have room){}",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Earth'}
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex2",
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local card = create_card('Planet', G.consumeables, nil, nil, nil, nil, 'c_venus')
      card:add_to_deck()
      G.consumeables:emplace(card)
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
      return true
    end
  end,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_dugtrio")
  end
}
local dugtrio={
  name = "dugtrio", 
  pos = {x = 2, y = 3}, 
  config = {extra = {chips = 0, chip_mod = 100}},
  loc_txt = {      
    name = 'Dugtrio',      
    text = {
      "Gains {C:chips}+#2#{} Chips if played",
      "hand contains a {C:attention}Three of a Kind{},",
      "resets at end of round",
      "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Earth'}
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex2",
  ptype = "Earth",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and next(context.poker_hands['Three of a Kind']) then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
      elseif context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.chips = 0
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
}
local meowth={
  name = "meowth", 
  pos = {x = 3, y = 3},
  config = {extra = {money = 3, rounds = 5}},
  loc_txt = {      
    name = 'Meowth',      
    text = {
      "Earn {C:money}$#1#{} at",
      "end of round",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
		return {vars = {center.ability.extra.money, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_persian")
  end,
  calc_dollar_bonus = function(self, card)
    return card.ability.extra.money
	end
}
local persian={
  name = "persian", 
  pos = {x = 4, y = 3}, 
  loc_txt = {      
    name = 'Persian',      
    text = {
      "Earn {C:money}${} at end of",
      "round equal to {C:attention}double{} the", 
      "sell value of the leftmost {C:attention}Joker{}",
      "{C:inactive}(Currently {C:money}$#1#{C:inactive}, Max of {C:money}$15{C:inactive})",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    return {vars = {(G.jokers and G.jokers.cards and G.jokers.cards[0] and G.jokers.cards[0].sell_cost) or 0}}
  end,
  rarity = 3, 
  cost = 9, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    if #G.jokers.cards > 1 and G.jokers.cards[1] ~= card then
      
			return math.min(G.jokers.cards[1].sell_cost*2, 15)
    end
	end
}
local psyduck={
  name = "psyduck", 
  pos = {x = 5, y = 3},
  config = {extra = {money = 3, rounds = 5}},
  loc_txt = {      
    name = 'Psyduck',      
    text = {
      "If played hand is a",
      "single {C:attention}face card{}, earn {C:money}$#1#{}",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.money, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and #context.full_hand == 1 and context.scoring_hand[1]:is_face() then
      if context.joker_main then
        ease_dollars(card.ability.extra.money)
        return {
          message = localize('$')..card.ability.extra.money,
          dollars = card.ability.extra.money,
          colour = G.C.MONEY
        }
      end
    end
    return level_evo(self, card, context, "j_poke_golduck")
  end,
}
local golduck={
  name = "golduck", 
  pos = {x = 0, y = 4}, 
  config = {extra = {money = 5}},
  loc_txt = {      
    name = 'Golduck',      
    text = {
      "If played hand is a single",
      "{C:attention}face card{}, earn {C:money}$#1#{} and it",
      "becomes {C:attention}Gold{} when scored"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and #context.scoring_hand == 1 and context.scoring_hand[1]:is_face() then
      if context.before then
        local face = context.scoring_hand[1]
        face:set_ability(G.P_CENTERS.m_gold, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                face:juice_up()
                return true
            end
        })) 
        return {
          message = localize('k_gold'),
          colour = G.C.MONEY,
          card = card
        }
      end
      if context.joker_main then
        ease_dollars(card.ability.extra.money)
        return {
          message = localize('$')..card.ability.extra.money,
          dollars = card.ability.extra.money,
          colour = G.C.MONEY
        }
      end
    end
  end,
}
local mankey={
  name = "mankey", 
  pos = {x = 1, y = 4},
  config = {extra = {mult = 5, chips = 7, rounds = 5}},
  loc_txt = {     
    name = 'Mankey',      
    text = {
      "Each played {C:attention}2{},",
      "{C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
      "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips",
      "when scored",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fighting'}
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 then
        return {
            chips = card.ability.extra.chips,
            mult = card.ability.extra.mult,
            card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_primeape")
  end
}
local primeape={
  name = "primeape", 
  pos = {x = 2, y = 4}, 
  config = {extra = {mult = 11, chips = 13}},
  loc_txt = {      
    name = 'Primeape',      
    text = {
      "Each played {C:attention}2{},",
      "{C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
      "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips",
      "when scored"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fighting'}
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 3, 
  cost = 10, 
  stage = "One", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 then
        return {
            chips = card.ability.extra.chips,
            mult = card.ability.extra.mult,
            card = card
        }
      end
    end
  end
}
local growlithe={
  name = "growlithe", 
  pos = {x = 3, y = 4},
  config = {extra = {mult = 8}},
  loc_txt = {      
    name = 'Growlithe',      
    text = {
      "{C:mult}+#1#{} Mult if played",
      "hand contains a {C:attention}Flush{}",
      "{C:inactive}(Evolves with a{} {C:attention}Fire Stone{}{C:inactive} card)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_arcanine")
  end,
}
local arcanine={
  name = "arcanine", 
  pos = {x = 4, y = 4},
  config = {extra = {Xmult = 2}},
  loc_txt = {      
    name = 'Arcanine',      
    text = {
      "{X:red,C:white} X#1# {} Mult if played",
      "hand contains a {C:attention}Flush{}.",
      "Create a {C:attention}Lovers{} card",
      "when {C:attention}Blind{} is selected"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    info_queue[#info_queue+1] = G.P_CENTERS.c_lovers
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.setting_blind then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_lovers')
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
        return true
      end
    end
  end,
}
local poliwag={
  name = "poliwag", 
  pos = {x = 5, y = 4},
  config = {extra = {mults = {1, 2, 3, 5, 8}, indice = 1, rounds = 5}},
  loc_txt = {      
    name = 'Poliwag',      
    text = {
      "Gives Mult in a {C:attention}cycle{}",
      "{C:mult}+#1#{}, {C:mult}+#2#{}, {C:mult}+#3#{}, {C:mult}+#4#{}, and {C:mult}+#5#{} Mult",
      "{C:inactive}(Currently {C:mult}+#6#{C:inactive} Mult)",
      "{C:inactive}(Evolves after {C:attention}#7#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.mults[1], center.ability.extra.mults[2], center.ability.extra.mults[3], center.ability.extra.mults[4], center.ability.extra.mults[5], 
                    center.ability.extra.mults[center.ability.extra.indice], center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local scoring_mult
        if not context.blueprint then
          scoring_mult = card.ability.extra.mults[card.ability.extra.indice]
          if card.ability.extra.indice == 5 then
            card.ability.extra.indice = 1
          else
            card.ability.extra.indice = card.ability.extra.indice + 1
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {scoring_mult}}, 
          colour = G.C.MULT,
          mult_mod = scoring_mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_poliwhirl")
  end,
}


return {name = "Pokemon Jokers 31-60", 
        list = {  nidoqueen, nidoranm, nidorino, nidoking, clefairy, clefable, vulpix, ninetales, jigglypuff, wigglytuff, zubat, golbat, oddish, gloom, vileplume, paras, parasect, venonat, venomoth,                  diglett, dugtrio, meowth, persian, psyduck, golduck, mankey, primeape, growlithe, arcanine, poliwag,},
}