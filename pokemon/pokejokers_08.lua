-- Qwilfish 211
-- Scizor 212
local scizor={
  name = "scizor", 
  pos = {x = 0, y = 6},
  config = {extra = {mult = 0, scizor_chips = 0, scizor_Xmult = 1, mult_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    local emult = 0 
    local echips = 0 
    local eXmult = 1
    if center.edition and center.edition.holo then
      emult = center.edition.mult or 0
    end
    if center.edition and center.edition.foil then
      echips = center.edition.chips or 0
    end
    if center.edition and center.edition.polychrome then
     eXmult = center.edition.x_mult or 1
    end
    return {vars = {center.ability.extra.mult + emult, center.ability.extra.scizor_chips + echips, center.ability.extra.scizor_Xmult * eXmult, center.ability.extra.mult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced and not context.blueprint then
      local my_pos = nil
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i] == card then my_pos = i; break end
      end
      if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
          local sliced_card = G.jokers.cards[my_pos+1]
          sliced_card.getting_sliced = true
          if (sliced_card.config.center.rarity ~= 1 and sliced_card.config.center.rarity ~=2) then
            if card.edition then
              if card.edition.chips then
                card.ability.extra.scizor_chips = card.ability.extra.scizor_chips + card.edition.chips
              end
              if card.edition.mult then
                card.ability.extra.mult = card.ability.extra.mult + card.edition.mult
              end
              if card.edition.x_mult then
                card.ability.extra.scizor_Xmult = card.ability.extra.scizor_Xmult * card.edition.x_mult
              end
            end
            local edition = nil
            if sliced_card.edition and (sliced_card.edition.foil or sliced_card.edition.holo or sliced_card.edition.polychrome) then
              edition = sliced_card.edition
            else
              edition = poll_edition('wheel_of_fortune', nil, true, true)
            end
            card:set_edition(edition, true)
          end
          
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.RED, no_juice = true})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_x_scissor_ex"),
          colour = G.ARGS.LOC_COLOURS.metal,
          mult_mod = card.ability.extra.mult,
          chip_mod = card.ability.extra.scizor_chips,
          Xmult_mod = card.ability.extra.scizor_Xmult
        }
      end
    end
  end
}
-- Shuckle 213
-- Heracross 214
-- Sneasel 215
-- Teddiursa 216
-- Ursaring 217
-- Slugma 218
-- Magcargo 219
-- Swinub 220
-- Piloswine 221
-- Corsola 222
local corsola={
  name = "corsola", 
  pos = {x = 0, y = 7},
  config = {extra = {mult_mod = 3, corsola_tally = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
    return {vars = {center.ability.extra.mult_mod, center.ability.extra.mult_mod*center.ability.extra.corsola_tally}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex2",
  blueprint_compat = true,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.corsola_tally = 0
      for k, v in pairs(G.playing_cards) do
        if v.config.center ~= G.P_CENTERS.c_base then card.ability.extra.corsola_tally = card.ability.extra.corsola_tally+1 end
      end
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local enhanced = 0
        for k, v in pairs(context.scoring_hand) do
          if v.config.center ~= G.P_CENTERS.c_base then
           enhanced = enhanced + 1
          end
        end
        
        if enhanced == 5 then
          if (#G.jokers.cards + G.GAME.joker_buffer) < G.jokers.config.card_limit then
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
              trigger = 'after',
              delay = 0.2,
              func = function() 
                G.GAME.joker_buffer = 0
                play_sound('timpani')
                local _card = create_random_poke_joker('corsola', "Basic", nil, nil, "Water")
                _card:add_to_deck()
                G.jokers:emplace(_card)
            return true end }))
          end
        end
      
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult_mod * card.ability.extra.corsola_tally}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult_mod * card.ability.extra.corsola_tally 
        }
      end
    end
  end
}
-- Remoraid 223
local remoraid={
  name = "remoraid",
  pos = {x = 1, y = 7},
  config = {extra = {retriggers = 1,rounds = 4, card_max = 4, cards = 0}},
  loc_txt = {
    name = "Remoraid",
    text = {
      "Retrigger the first {C:attention}#3#{} {C:inactive}[#4#]{}",
      "cards scored each round",
      "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds, center.ability.extra.card_max, center.ability.extra.card_max - center.ability.extra.cards}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and card.ability.extra.cards < card.ability.extra.card_max then
      if not context.blueprint then
        card.ability.extra.cards = card.ability.extra.cards + 1
      end
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.cards = 0
    end
    return level_evo(self, card, context, "j_poke_octillery")
  end
}
-- Octillery 224
local octillery={
  name = "octillery",
  pos = {x = 2, y = 7},
  config = {extra = {retriggers = 1, card_max = 8, cards = 0}},
  loc_txt = {
    name = "Octillery",
    text = {
      "Retrigger the first {C:attention}#2#{} {C:inactive}[#3#]{}",
      "cards scored each round",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.card_max, center.ability.extra.card_max - center.ability.extra.cards}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and card.ability.extra.cards < card.ability.extra.card_max then
      if not context.blueprint then
        card.ability.extra.cards = card.ability.extra.cards + 1
      end
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.cards = 0
    end
  end
}
-- Delibird 225
local delibird={
  name = "delibird",
  pos = {x = 3, y = 7},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'deli_gift'}
    if not center.edition or (center.edition and not center.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
    info_queue[#info_queue+1] = G.P_CENTERS.j_gift
    return {vars = {}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  calc_dollar_bonus = function(self, card)
    local gift = pseudorandom(pseudoseed('delibird'))
    if gift > .65 then
      return 8
    elseif gift > .35 then
      --create item
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    elseif gift > .15 then
      --create coupon tag
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    else
      --create polychrome gift card
      if #G.jokers.cards < G.jokers.config.card_limit then
        local temp_card = {set = "Joker", area = G.jokers, key = "j_gift", no_edition = true}
        local new_card = SMODS.create_card(temp_card)
        local edition = {polychrome = true}
        new_card:set_edition(edition, true)
        new_card:add_to_deck()
        G.jokers:emplace(new_card)
      end
    end
    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_gift_ex'), colour = G.C.GREEN})
  end
}
-- Mantine 226
local mantine={
  name = "mantine",
  pos = {x = 4, y = 7},
  config = {extra = {chips = 0, chip_mod = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"FlamingRok"}}
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,}}
  end,
  rarity = 3,
  cost = 8,
  enhancement_gate = "m_gold",
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.individual and not context.end_of_round and (context.cardarea == G.play or context.cardarea == G.hand) then
      if context.other_card.ability.name == 'Gold Card' then 
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
        if context.cardarea == G.play then
          return {
            extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
            card = card,
            colour = G.C.CHIPS
          }
        else
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
          return {
              message = '',
              colour = G.C.CHIPS,
              card = card
          }
        end
      end
    end
  end
}
-- Skarmory 227
-- Houndour 228
-- Houndoom 229
-- Kingdra 230
local kingdra={
  name = "kingdra", 
  pos = {x = 8, y = 7},
  config = {extra = {mult = 0, mult_mod = 1, Xmult = 1, Xmult_mod = .05}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex2",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.blueprint then
      if context.other_card:get_id() == 6 then
        local has_king = false
        for i = 1, #G.hand.cards do 
          if G.hand.cards[i]:get_id() == 13 then has_king = true; break end
        end
        if has_king then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        else
          card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        end
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize("poke_twister_ex"),
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end,
}
-- Phanpy 231
local phanpy={
  name = "phanpy",
  pos = {x = 9, y = 7},
  config = {extra = {Xmult = 1,Xmult_mod = 0.1,rounds = 5, Xmult2 = 1}},
  loc_txt = {
    name = "Phanpy",
    text = {
      "Gains {X:red,C:white}X#2#{} Mult for each",
      "{C:attention}consecutive{} played hand",
      "with {C:attention}5{} scoring cards",
      "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
      "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        if #context.scoring_hand == 5 then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.RED,
            card = card
          }
        else
          card.ability.extra.Xmult = card.ability.extra.Xmult2
          return {
            message = localize('k_reset'),
            colour = G.C.RED
          }
        end
      end
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_donphan")
  end
}
-- Donphan 232
local donphan={
  name = "donphan",
  pos = {x = 0, y = 8},
  config = {extra = {Xmult = 1, Xmult_mod = 0.2, Xmult2 = 1}},
  loc_txt = {
    name = "Donphan",
    text = {
      "Gains {X:red,C:white}X#2#{} Mult for each",
      "{C:attention}consecutive{} played hand",
      "with {C:attention}5{} scoring cards",
      "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod,}}
  end,
  rarity = 3,
  cost = 8,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        if #context.scoring_hand == 5 then
          card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.RED,
            card = card
          }
        else
          card.ability.extra.Xmult = card.ability.extra.Xmult2
          return {
            message = localize('k_reset'),
            colour = G.C.RED
          }
        end
      end
      if context.joker_main and card.ability.extra.Xmult > 1 then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
-- Porygon2 233
local porygon2={
  name = "porygon2", 
  pos = {x = 1, y = 8},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_dubious_disc
    return {vars = {}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  item_req = "dubious_disc",
  joblacklist = true,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.open_booster and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local forced_key = matching_energy(G.jokers.cards[1]);
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
          trigger = 'before',
          delay = 0.0,
          func = (function()
                  local card = create_card('Energy', G.consumeables, nil, nil, nil, nil, forced_key)
                  card:add_to_deck()
                  G.consumeables:emplace(card)
                  G.GAME.consumeable_buffer = 0
              return true
          end)}))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_plus_energy"), colour = G.ARGS.LOC_COLOURS["pink"]})
    end
    return item_evo(self, card, context, "j_poke_porygonz")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 2
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 2
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 2
    end
  end
}
-- Stantler 234
local stantler={
  name = "stantler",
  pos = {x = 2, y = 8},
  config = {extra = {chips = 10}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Pair']) then
        local chips = card.ability.extra.chips * context.scoring_hand[1].base.nominal
        if G.GAME.current_round.hands_left == 0 then
          chips = chips * 2
        end
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
          colour = G.C.CHIPS,
          chip_mod = chips
        }
      end
    end
  end
}
-- Smeargle 235
-- Tyrogue 236
local tyrogue={
  name = "tyrogue",
  config = {extra = {Xmult_minus = 0.5,rounds = 2,}},
  pos = {x = 4, y = 8}, 
  rarity = 2, 
  cost = 4, 
  stage = "Baby", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
		return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
      if context.after and not context.blueprint and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 5 then
        local target = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
        local copy = copy_card(target, nil, nil, G.playing_card)
        copy:add_to_deck()
        G.deck.config.card_limit = G.deck.config.card_limit + 1
        table.insert(G.playing_cards, copy)
        G.hand:emplace(copy)
        copy.states.visible = nil
        G.E_MANAGER:add_event(Event({
          func = function()
              copy:start_materialize()
              return true
          end
        })) 
        playing_card_joker_effects({copy})
        return {
            message = localize('k_copied_ex'),
            colour = G.C.CHIPS,
            card = card,
            playing_cards_created = {true}
        }
      end
    end
    
    if context.discard and G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and context.full_hand and #context.full_hand == 5 then
      if not card.ability.extra.destroyed_card then
        card.ability.extra.destroyed_card = pseudorandom_element(context.full_hand, pseudoseed('tyrogue'))
      end
      if context.other_card == card.ability.extra.destroyed_card then
        return {
          delay = 0.45, 
          remove = true,
          card = card
        }
      end
    end
    
    if context.first_hand_drawn and not context.blueprint then
      card.ability.extra.destroyed_card = nil
      local eval = function() return G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    
    local forced_key = nil
    if #G.playing_cards > G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonchan"
    elseif #G.playing_cards < G.GAME.starting_deck_size then
      forced_key = "j_poke_hitmonlee"
    else
      forced_key = "j_poke_hitmontop"
    end
    return level_evo(self, card, context, forced_key)
  end
}
-- Hitmontop 237
local hitmontop={
  name = "hitmontop", 
  pos = {x = 5, y = 8},
  config = {extra = {Xmult = 1.5, Xmult_mod = .1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, G.GAME.starting_deck_size, center.ability.extra.Xmult_mod}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Fighting",
  atlas = "Pokedex2",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.setting_blind and #G.playing_cards == G.GAME.starting_deck_size and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
  end
}
-- Smoochum 238
local smoochum ={
  name = "smoochum",
  pos = {x = 6, y = 8},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'tag_standard', set = 'Tag'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    local evo = level_evo(self, card, context, "j_poke_jynx")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_standard'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Elekid 239
local elekid ={
  name = "elekid",
  pos = {x = 7, y = 8},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Lightning",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    local evo = level_evo(self, card, context, "j_poke_electabuzz")
    if evo and type(evo) == "table" then
      G.E_MANAGER:add_event(Event({
        func = (function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return evo
  end,
}
-- Magby 240
local magby={
  name = "magby",
  pos = {x = 8, y = 8},
  config = {extra = {Xmult_minus = 0.75, d_size = 2, rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.d_size, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 4,
  stage = "Baby",
  ptype = "Fire",
  atlas = "Pokedex2",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    return level_evo(self, card, context, "j_poke_magmar")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
    ease_discard(card.ability.extra.d_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
    ease_discard(-card.ability.extra.d_size)
  end
}
return {name = "Pokemon Jokers 211-240", 
        list = {scizor, corsola, remoraid, octillery, delibird, mantine, kingdra, phanpy, donphan, porygon2, stantler, tyrogue, hitmontop, smoochum, elekid, magby},
}
