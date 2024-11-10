--Code for pokemon jokers 151-180
local mew ={
  name = "mew", 
  pos = {x = 12, y = 11},
  soul_pos = { x = 0, y = 12},
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Mew',      
    text = {
      "At end of shop, create",
      "a random {C:dark_edition}Negative{} {C:attention}Tarot{}",
      "{C:spectral}Spectral{} or {C:item}Item{} card",
      "{C:green}#1# in {C:green}#2#{} chance to create",
      "a random {C:dark_edition}Negative{} Joker {C:attention}instead{}",
      "{C:inactive,s:0.8}(Odds can't be increased){}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    if not center.edition or (center.edition and not center.edition.negative) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    end
    return {vars = {1, center.ability.extra.odds}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      if pseudorandom('mew') < 1/card.ability.extra.odds then
        --create random joker
        local _card = create_card('Joker', G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.jokers:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
      else
        --create random consumable and apply negative
        local sets = {"Tarot", "Spectral", "Item"}
        local _card = create_card(sets[math.random(#sets)], G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
      end
    end
  end,
}
-- Chikorita 152
-- Bayleef 153
-- Meganium 154
-- Cyndaquil 155
-- Quilava 156
-- Typhlosion 157
-- Totodile 158
-- Croconaw 159
-- Feraligatr 160
-- Sentret 161
local sentret={
  name = "sentret",
  config = {extra = {mult = 0, mult_mod = 1, last_hand = 'None'}},
  pos = {x = 9, y = 0}, 
  loc_txt = {      
    name = 'Sentret',      
    text = {
      "{C:mult}+#2#{} Mult when played hand",
      "isn't the last played hand",
      "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
      "{C:inactive}(Evolves at {C:mult}+7{} {C:inactive}Mult)"
    }  
  }, 
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played or "None"}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_furret", card.ability.extra.mult, 7)
  end,
}
-- Furret 162
local furret={
  name = "furret",
  config = {extra = {mult = 9, mult_mod = 1, last_hand = 'None'}},
  pos = {x = 0, y = 1}, 
  loc_txt = {      
    name = 'Furret',      
    text = {
      "{C:mult}+#2#{} Mult when played hand",
      "isn't the last played hand",
      "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
    }  
  }, 
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played or "None"}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
  end,
}
-- Hoothoot 163
-- Noctowl 164
-- Ledyba 165
-- Ledian 166
-- Spinarak 167
-- Ariados 168
-- Crobat 169
local crobat={
  name = "crobat", 
  pos = {x = 7, y = 1},
  config = {extra = {mult = 0, mult_mod = 3, chips = 0, chip_mod = 30, Xmult = 1, Xmult_mod = .1, money = 0, money_mod = 1}},
  loc_txt = {      
    name = 'Crobat',      
    text = {
      "{C:attention}Randomize{} existing scoring card Enhancements",
      "Gain {C:mult}+#2#{} for {C:attention}Mult{} and {C:attention}Wild{} cards",
      "{C:chips}+#4#{} for {C:attention}Bonus{} and {C:attention}Stone{} cards,",
      "{X:red,C:white}X#6#{} for {C:attention}Steel{} and {C:attention}Glass{} cards,",
      "{C:money}$#8#{} for {C:attention}Gold{} and {C:attention}Lucky{} cards",
      "{C:inactive}(Currently {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} end of round)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod,                    center.ability.extra.money, center.ability.extra.money_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
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
          if v.config.center ~= G.P_CENTERS.c_base and not v.debuff then 
              enhanced[#enhanced+1] = v
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
              local enhancement_type = pseudorandom(pseudoseed('crobat'))
              if enhancement_type > .875 then v:set_ability(G.P_CENTERS.m_bonus, nil, true)
              elseif enhancement_type > .75 then v:set_ability(G.P_CENTERS.m_mult, nil, true)
              elseif enhancement_type > .625 then v:set_ability(G.P_CENTERS.m_wild, nil, true)
              elseif enhancement_type > .50 then v:set_ability(G.P_CENTERS.m_glass, nil, true)
              elseif enhancement_type > .375 then v:set_ability(G.P_CENTERS.m_steel, nil, true)
              elseif enhancement_type > .25 then v:set_ability(G.P_CENTERS.m_stone, nil, true)
              elseif enhancement_type > .125 then v:set_ability(G.P_CENTERS.m_gold, nil, true)
              else v:set_ability(G.P_CENTERS.m_lucky, nil, true)
              end
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
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
-- Chinchou 170
-- Lanturn 171
-- Pichu 172
local pichu={
  name = "pichu", 
  pos = {x = 0, y = 2},
  config = {extra={money = 10, Xmult_minus = 0.75, rounds = 2}},
  loc_txt = {      
    name = 'Pichu',      
    text = {
      "{C:attention}Baby{}",
      "Earn {C:money}$#1#{} at",
      "end of round",
      "{X:red,C:white} X#2# {} Mult",
      "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult_minus, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3,
  item_req = "thunderstone",
  stage = "Baby", 
  ptype = "Lightning",
  atlas = "Pokedex2",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    return level_evo(self, card, context, "j_poke_pikachu")
  end,
  calc_dollar_bonus = function(self, card)
    return card.ability.extra.money
	end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
  end,
}
-- Cleffa 173
local cleffa={
  name = "cleffa",
  pos = {x = 1, y = 2},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_txt = {
    name = "Cleffa",
    text = {
      "{C:attention}Baby{}",
      "Create a {C:attention}Moon{} card with",
      "{C:dark_edition}Negative{} at end of round",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Baby",
  ptype = "Fairy",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_clefairy")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
  end,
}
-- Igglybuff 174
local igglybuff={
  name = "igglybuff",
  pos = {x = 2, y = 2},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_txt = {
    name = "Igglybuff",
    text = {
      "{C:attention}Baby{}",
      "Create a {C:attention}World{} card with",
      "{C:dark_edition}Negative{} at end of round",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    info_queue[#info_queue+1] = G.P_CENTERS.c_world
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Baby",
  ptype = "Colorless",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_world')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_jigglypuff")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = true
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff then
      for i=1, #G.jokers.cards do
        if not (G.jokers.cards[i].config and G.jokers.cards[i].config.center.stage == "Baby") then
          G.jokers.cards[i].pinned = false
        end
      end
    end
  end,
}
-- Togepi 175
-- Togetic 176
-- Natu 177
-- Xatu 178
-- Mareep 179
-- Flaaffy 180

return {name = "Pokemon Jokers 151-180", 
        list = { mew, sentret, furret, crobat, pichu, cleffa, igglybuff},
}
