--Code for pokemon jokers 121-150
local starmie={
  name = "starmie", 
  pos = {x = 3, y = 9},
  config = {extra = {mult = 4, money = 2, suit = "Diamonds"}},
  loc_txt = {      
    name = 'Starmie',      
    text = {
      "Played cards with",
      "{C:diamonds}#3#{} suit give",
      "{C:mult}+#1#{} Mult and ",
      "{C:money}$#2#{} when scored",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.mult, center.ability.extra.money, localize(center.ability.extra.suit, 'suits_singular')}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        ease_dollars(card.ability.extra.money)
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult = card.ability.extra.mult
        }
      end
    end
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.evolve == true then
      return {
        message = evolve (self, card, context, 'j_poke_starmie')
      }
    end
  end
}
local mrmime={
  name = "mrmime", 
  pos = {x = 4, y = 9}, 
  config = {extra = {retriggers = 3}},
  loc_txt = {      
    name = 'Mr. Mime',      
    text = {
      "Retrigger leftmost card",
      "held in hand {C:attention}#1#{} times"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Psychic'}
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Basic", 
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.hand then
      if (context.other_card == G.hand.cards[1]) and (next(context.card_effects[1]) or #context.card_effects > 1) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
local scyther={
  name = "scyther", 
  pos = {x = 5, y = 9},
  config = {extra = {mult = 0, mult_mod = 6}},
  loc_txt = {      
    name = 'Scyther',      
    text = {
      "When Blind is selected, destroy",
      "Joker to the right and gain",
      "{C:mult}+#2#{} Mult. Gain a non-Negative",
      "{C:attention}Edition{} if rare or higher",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
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
          if (sliced_card.config.center.rarity ~= 1) and (sliced_card.config.center.rarity ~= 2) and not card.edition then
            local edition = poll_edition('wheel_of_fortune', nil, true, true)
            card:set_edition(edition, true)
          end
          
          G.GAME.joker_buffer = G.GAME.joker_buffer - 1
          G.E_MANAGER:add_event(Event({func = function()
              G.GAME.joker_buffer = 0
              card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
              card:juice_up(0.8, 0.8)
              sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
              play_sound('slice1', 0.96+math.random()*0.08)
          return true end }))
          card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, colour = G.C.RED, no_juice = true})
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
            message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
            mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
local jynx={
  name = "jynx", 
  pos = {x = 6, y = 9}, 
  loc_txt = {      
    name = 'Jynx',      
    text = {
      "{C:attention}Playing cards{} added to your",
      "deck from the {C:attention}Shop{}, {C:attention}Standard{} packs,",
      "and {C:spectral}Cryptid{} are {C:attention}duplicated{}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Psychic'}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.playing_card_added and not self.getting_sliced then
      if context.cards and type(context.cards) == "table" and #context.cards > 0 then
        for k, v in ipairs(context.cards) do
          if type(v) == "table" then
            local card_to_copy = v
            local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
            copy:add_to_deck()
            G.deck.config.card_limit = G.deck.config.card_limit + 1
            table.insert(G.playing_cards, copy)
            G.deck:emplace(copy)
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_copied_ex')})
            return {playing_cards_added = true}
          end
        end
      end
    end
  end
}
local electabuzz={
  name = "electabuzz", 
  pos = {x = 7, y = 9}, 
  config = {extra = {money = 2}},
  loc_txt = {      
    name = 'Electabuzz',      
    text = {
      "When a card is {C:attention}sold{}",
      "and at end of round",
      "gains {C:money}$#1#{} of {C:attention}sell value{}"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Lightning'}
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Basic",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if ((context.selling_card) or (not context.repetition and not context.individual and context.end_of_round)) and not context.blueprint then
      card.ability.extra_value = card.ability.extra_value + card.ability.extra.money
      card:set_cost()
      G.E_MANAGER:add_event(Event({
        func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
        end}))
    end
  end
}
local magmar={
  name = "magmar", 
  pos = {x = 8, y = 9}, 
  config = {extra = {mult = 0, mult_mod = 2}},
  loc_txt = {      
    name = 'Magmar',      
    text = {
      "If the {C:attention}first{}",
      "discard of the round has",
      "only {C:attention}1{} card, destroy it",
      "and gain {C:mult}+#2#{} Mult",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.discard and not context.blueprint then
      if G.GAME.current_round.discards_used == 0 and #context.full_hand == 1 then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
        return {
          remove = true
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
local pinsir={
  name = "pinsir", 
  pos = {x = 9, y = 9},
  config = {extra = {Xmult = 2}},
  loc_txt = {      
    name = 'Pinsir',      
    text = {
      "{X:mult,C:white} X#1# {} Mult",
      "{C:attention}Leftmost{} Joker becomes",
      "{C:attention}pinned{} at end of shop",
      "{C:attention}Unpin{} that Joker at end of round"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Grass'}
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex1",
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
    if context.ending_shop and not context.blueprint then
      if not G.jokers.cards[1].pinned then
        G.jokers.cards[1].pinned = true
        card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = "Pinned!", colour = G.C.CHIPS})
      end
    end
    if not context.repetition and not context.individual and context.end_of_round then
      if G.jokers.cards[1].pinned then
        G.jokers.cards[1].pinned = false
        card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = "Unpinned!", colour = G.C.CHIPS})
      end
    end
  end
}
local tauros={
  name = "tauros", 
  pos = {x = 10, y = 9},
  config = {extra = {Xmult = 1.5,}},
  loc_txt = {      
    name = 'Tauros (Leader)',      
    text = {
      "{X:mult,C:white} X#1# {} Mult for each",
      "{C:attention}Tauros{} Joker you have",
      "{C:inactive}(Tauros (Herd) may appear in shop){}",
      "{C:inactive}(Currently {X:red,C:white}X#2#{} {C:inactive}Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    return {vars = {center.ability.extra.Xmult, math.max((#find_joker('tauros') + #find_joker('taurosh')) * center.ability.extra.Xmult,1)}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {(#find_joker('tauros') + #find_joker('taurosh')) * card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = (#find_joker('tauros') + #find_joker('taurosh')) * card.ability.extra.Xmult
        }
      end
    end
  end
}
local taurosh={
  name = "taurosh",
  pos = {x = 11, y = 9},
  config = {extra = {Xmult = 1.5,}},
  loc_txt = {      
    name = 'Tauros (Herd)',      
    text = {
      "{X:mult,C:white} X#1# {} Mult for each",
      "{C:attention}Tauros{} Joker you have",
      "{C:inactive}(Currently {X:red,C:white}X#2#{} {C:inactive}Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    return {vars = {center.ability.extra.Xmult, math.max((#find_joker('tauros') + #find_joker('taurosh')) * center.ability.extra.Xmult,1)}}
  end,
  rarity = 1, 
  cost = 7, 
  stage = "Basic", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {(#find_joker('tauros') + #find_joker('taurosh')) * card.ability.extra.Xmult}}, 
          colour = G.C.MULT,
          Xmult_mod = (#find_joker('tauros') + #find_joker('taurosh')) * card.ability.extra.Xmult
        }
      end
    end
  end,
  in_pool = function(self)
    if next(find_joker('tauros')) then
      return true
    else
      return false
    end
  end
}
local magikarp={
  name = "magikarp",
  pos = {x = 12, y = 9},
  config = {extra = {rounds = 8}},
  loc_txt = {      
    name = 'Magikarp',      
    text = {
      "Applies {C:attention}Splash{}",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash'}
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gyarados")
  end
}
local gyarados={
  name = "gyarados", 
  pos = {x = 0, y = 10},
  config = {extra = {Xmult = 4}},
  loc_txt = {      
    name = 'Gyarados',      
    text = {
      "{X:red,C:white} X#1# {} Mult",
      "Applies {C:attention}Splash{}",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash'}
    return {vars = {center.ability.extra.Xmult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
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
  end
}
local lapras={
  name = "lapras", 
  pos = {x = 1, y = 10},
  config = {extra = {chips = 0, chip_mod = 100}},
  loc_txt = {      
    name = 'Lapras',      
    text = {
      "{C:chips}+#2#{} Chips for each",
      "{C:attention}Blind{} skipped this run",
      "{C:inactive}(Currently {C:chips}+#1# {C:inactive}Chips)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
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
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      card.ability.extra.chips = G.GAME.skips * card.ability.extra.chip_mod
    end
  end
}
local ditto={
  name = "ditto", 
  pos = {x = 2, y = 10}, 
  loc_txt = {      
    name = 'Ditto',
    text = {
      "Sell this to duplicate",
      "the leftmost Joker",
      "with {C:attention}Perishable{}",
      "{C:inactive}(removes Eternal){}",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    info_queue[#info_queue+1] = {key = 'perishable', set = 'Other', vars = {G.GAME.perishable_rounds or 1, G.GAME.perishable_rounds}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context) --mostly copied from how invisible joker works
    if context.selling_self and not context.blueprint then
      local eval = function(card) return (card.ability.loyalty_remaining == 0) and not G.RESET_JIGGLES end
                    juice_card_until(card, eval, true)
      local jokers = {}
      for i=1, #G.jokers.cards do 
          if G.jokers.cards[i] ~= card then
              jokers[#jokers+1] = G.jokers.cards[i]
          end
      end
      
      if #jokers > 0 then 
          if #G.jokers.cards + G.GAME.joker_buffer <= G.jokers.config.card_limit then 
              card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
              local chosen_joker = jokers[1]
              
              local card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
              card:set_eternal(false)
              card:set_perishable(true)
              card:add_to_deck()
              G.jokers:emplace(card)
          else
              card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_room_ex')})
          end
      else
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_no_other_jokers')})
      end
    end
  end
}
local eevee={
  name = "eevee", 
  pos = {x = 3, y = 10},
  config = {extra = {money = 2, limit = 0, max = 5}},
  loc_txt = {      
    name = 'Eevee',      
    text = {
      "Earn {C:money}$#1#{} for",
      "the first {C:attention}5{} {C:green}rerolls{}",
      "{C:inactive}Curently {C:attention}#2#{C:inactive}/#3#"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    return {vars = {center.ability.extra.money, center.ability.extra.limit, center.ability.extra.max}}
  end,
  rarity = 1, 
  cost = 4,
  item_req = {"waterstone", "thunderstone", "firestone"},
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and card.ability.extra.limit < 5 then
      card.ability.extra.limit = card.ability.extra.limit + 1
      ease_dollars(card.ability.extra.money)
      return {
          message = localize('$')..card.ability.extra.money,
          colour = G.C.MONEY
      }
    end
    if context.ending_shop and not context.blueprint then
      card.ability.extra.limit = 0
    end
    return item_evo(self, card, context, nil)
  end
}
local vaporeon={
  name = "vaporeon", 
  pos = {x = 4, y = 10},
  config = {extra = {chips = 0, chip_mod = 15}},
  loc_txt = {      
    name = 'Vaporeon',      
    text = {
      "Gains {C:chips}+#3#{} Chips",
      "per {C:green}reroll{}",
      "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
    return {vars = {center.ability.extra.money, center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop then
      if not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
      end
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      return true
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end
}
local jolteon={
  name = "jolteon", 
  pos = {x = 5, y = 10},
  config = {extra = {money = 5}},
  loc_txt = {      
    name = 'Jolteon',      
    text = {
      "Earn {C:money}$#1#{}",
      "per {C:green}reroll{}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Lightning'}
    return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop then
      ease_dollars(card.ability.extra.money)
      return {
          message = localize('$')..card.ability.extra.money,
          colour = G.C.MONEY
      }
    end
  end
}
local flareon={
  name = "flareon", 
  pos = {x = 6, y = 10},
  config = {extra = {money = 2, Xmult = 1, Xmult_mod = .05}},
  loc_txt = {      
    name = 'Flareon',      
    text = {
      "Gains {X:red,C:white} X#3# {} Mult",
      "per {C:green}reroll{}",
      "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
    } 
  }, 
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
    return {vars = {center.ability.extra.money, center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One", 
  ptype = "Fire",
  atlas = "Pokedex1",
  calculate = function(self, card, context)
    if context.reroll_shop then
      if not context.blueprint then
        card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      end
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      return true
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}
local porygon={
  name = "porygon", 
  pos = {x = 7, y = 10},
  config = {extra = {target = 3, destroyed = 0}},
  loc_txt = {      
    name = 'Porygon',      
    text = {
      "After destroying {C:attention}playing cards{}",
      "{C:attention}#1#{} separate times, sell this",
      "Joker to add {C:dark_edition}Polychrome{}",
      "to a random {C:attention}Joker{}",
      "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    return {vars = {center.ability.extra.target, center.ability.extra.destroyed}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.remove_playing_cards and not context.blueprint then
      card.ability.extra.destroyed = card.ability.extra.destroyed + 1 
      if card.ability.extra.destroyed >= card.ability.extra.target then
        local eval = function(card) return (card.ability.extra.destroyed >= card.ability.extra.target) and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Pory!"})
      return true
    end
    if context.selling_self and not context.blueprint and card.ability.extra.destroyed >= card.ability.extra.target then
      if #G.jokers.cards > 0 then
        local eligible_editionless_jokers = {}
        for k, v in pairs(G.jokers.cards) do
          if v.ability.set == 'Joker' and (not v.edition) and v ~= card then
              table.insert(eligible_editionless_jokers, v)
          end
        end
        if #eligible_editionless_jokers > 0 then
          local eligible_card = pseudorandom_element(eligible_editionless_jokers, pseudoseed('porygon'))
          local edition = {polychrome = true}
          eligible_card:set_edition(edition, true)
        end
          end
    end
  end
}
local omanyte={
  name = "omanyte", 
  pos = {x = 8, y = 10},
  config = {extra = {rank = "3", money1 = 3, money2 = 2, rounds = 5}},
  loc_txt = {      
    name = 'Omanyte',      
    text = {
      "{C:attention}Ancient #1#s{}",
      "{C:attention}1{} #1#: Gain {C:money}$#2#{} of sell value",
      "{C:attention}2{} #1#s: Earn {C:money}$#3#{}",
      "{C:attention}3+{} #1#s: Create a random {C:attention}Tarot{} card {C:inactive}(Must have room)",
      "{C:inactive}(Evolves after {C:attention}#4#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
     info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.money1, center.ability.extra.money2, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local threes = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 3 then threes = threes + 1 end
        end
        if threes == 1 and not context.blueprint then
          card.ability.extra_value = card.ability.extra_value + card.ability.extra.money1
          card:set_cost()
          G.E_MANAGER:add_event(Event({
            func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
            end}))
        elseif threes == 2 then
          ease_dollars(card.ability.extra.money2)
          return {
            message = localize('$')..card.ability.extra.money2,
            dollars = card.ability.extra.money2,
            colour = G.C.MONEY
          }
        elseif threes > 2 then
          if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
          end
        end
      end
    end
    return level_evo(self, card, context, "j_poke_omastar")
  end,
}
local omastar={
  name = "omastar", 
  pos = {x = 9, y = 10}, 
  config = {extra = {rank = "3", money1 = 5, money2 = 4}},
  loc_txt = {      
    name = 'Omastar',      
    text = {
      "{C:attention}Ancient #1#s{}",
      "{C:attention}2{} #1#s: Gain {C:money}$#2#{} of sell value",
      "{C:attention}3{} #1#s: Earn {C:money}$#3#{}",
      "{C:attention}4+{} #1#s: Create 2 random {C:attention}Tarot{} cards {C:inactive}(Must have room)",
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.money1, center.ability.extra.money2}}
  end,
  rarity = 3, 
  cost = 9, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local threes = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 3 then threes = threes + 1 end
        end
        if threes == 2 and not context.blueprint then
          card.ability.extra_value = card.ability.extra_value + card.ability.extra.money1
          card:set_cost()
          G.E_MANAGER:add_event(Event({
            func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
            end}))
        elseif threes == 3 then
          ease_dollars(card.ability.extra.money2)
          return {
            message = localize('$')..card.ability.extra.money2,
            dollars = card.ability.extra.money2,
            colour = G.C.MONEY
          }
        elseif threes > 3 then
          for i = 1, 2 do
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
              _card:add_to_deck()
              G.consumeables:emplace(_card)
              card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
            end
          end
        end
      end
    end
  end,
}
local kabuto={
  name = "kabuto", 
  pos = {x = 10, y = 10}, 
  config = {extra = {rank = "2", chips1 = 50, chips2 = 10, chips3 = 100, rounds = 5}},
  loc_txt = {      
    name = 'Kabuto',      
    text = {
      "{C:attention}Ancient #1#s{}",
      "{C:attention}1{} #1#s: {C:chips}+#2#{} Chips",
      "{C:attention}2{} #1#s: Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
      "{C:attention}3+{} #1#s: {C:chips}+#4#{} Chips",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'Earth'}
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips1, center.ability.extra.chips2, center.ability.extra.chips3, center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local twos = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 2 then twos = twos + 1 end
        end
        if twos == 1 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips1}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips1
          }
        elseif twos == 2 then
          for k, v in ipairs(context.scoring_hand) do
            if v:get_id() == 2 then 
              v.ability.perma_bonus = v.ability.perma_bonus or 0
              v.ability.perma_bonus = v.ability.perma_bonus + card.ability.extra.chips2
            end
          end
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        elseif twos > 2 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips3}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips3
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_kabutops")
  end,
}
local kabutops={
  name = "kabutops", 
  pos = {x = 11, y = 10}, 
  config = {extra = {rank = "2", chips1 = 80, chips2 = 20, chips3 = 250}},
  loc_txt = {      
    name = 'Kabutops',      
    text = {
      "{C:attention}Ancient #1#s{}",
      "{C:attention}2{} #1#s: {C:chips}+#2#{} Chips",
      "{C:attention}3{} #1#s: Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
      "{C:attention}4+{} #1#s: {C:chips}+#4#{} Chips",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'Earth'}
   info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
   return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chips1, center.ability.extra.chips2, center.ability.extra.chips3}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local twos = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 2 then twos = twos + 1 end
        end
        if twos == 2 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips1}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips1
          }
        elseif twos == 3 then
          for k, v in ipairs(context.scoring_hand) do
            if v:get_id() == 2 then 
              v.ability.perma_bonus = v.ability.perma_bonus or 0
              v.ability.perma_bonus = v.ability.perma_bonus + card.ability.extra.chips2
            end
          end
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        elseif twos > 3 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips3}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips3
          }
        end
      end
    end
  end,
}
local aerodactyl={
  name = "aerodactyl", 
  pos = {x = 12, y = 10},
  config = {extra = {rank = "Ace", mult1 = 12, mult2 = 16, chips = 80, Xmult = 2.5}},
  loc_txt = {      
    name = 'Aerodactyl',      
    text = {
      "{C:attention}Ancient #1#s{}",
      "{C:attention}2{} #1#s: {C:mult}+#2#{} Mult",
      "{C:attention}3{} #1#s: {C:mult}+#3#{} Mult and {C:chips}+#4#{} Chips",
      "{C:attention}4+{} #1#s: {X:red,C:white}X#5#{} Mult"
    } 
  },
  loc_vars = function(self, info_queue, center)
     info_queue[#info_queue+1] = {set = 'Other', key = 'Earth'}
     info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
     return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.mult1, center.ability.extra.mult2, center.ability.extra.chips, center.ability.extra.Xmult}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local aces = 0
        for i = 1, #context.scoring_hand do
            if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
        end
        if aces == 2 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult1}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult1
          }
        elseif aces == 3 then
          return {
            mult_mod = card.ability.extra.mult2,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif aces > 3 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        end
      end
    end
  end,
}
local snorlax={
  name = "snorlax", 
  pos = {x = 0, y = 11},
  config = {extra = {Xmult_mod = 0.50, Xmult = 1}},
  loc_txt = {      
    name = 'Snorlax',      
    text = {
      "When you get this, create a",
      "{C:attention}Leftovers{} card. At end of",
      "round gain {X:red,C:white}X#1#{} Mult ",
      "for each {C:attention}Leftovers{} you have",
      "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Colorless'}
    info_queue[#info_queue+1] = { set = 'Tarot', key = 'c_poke_leftovers'}
    return {vars = {center.ability.extra.Xmult_mod, center.ability.extra.Xmult}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Colorless",
  joblacklist = true,
  atlas = "Pokedex1",
  blueprint_compat = true,
  add_to_deck = function(self, card, from_debuff)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_poke_leftovers')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
      return true
    end
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      local count = find_joker('leftovers')
      if #count > 0 then
        card.ability.extra.Xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_mod * #count)
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.RED
        }
      end
    end
  end
}
local articuno={
  name = "articuno", 
  pos = {x = 1, y = 11},
  soul_pos = { x = 2, y = 11},
  loc_txt = {      
    name = 'Articuno',      
    text = {
      "If played hand has only",
      "{C:attention}1{} card, add a random",
      "{C:attention}enhancement{}, {C:attention}edition{},",
      "and {C:attention}seal{} to that card"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Water'}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary", 
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and #context.full_hand == 1 and not context.blueprint then
      _card = context.full_hand[1]
      if not _card.seal then
        local seal_type = pseudorandom(pseudoseed('articuno'))
        if seal_type > 0.80 then _card:set_seal('Red', true)
        elseif seal_type > 0.60 then _card:set_seal('Blue', true)
        elseif seal_type > 0.40 then _card:set_seal('Gold', true)
        elseif seal_type > 0.20 then _card:set_seal('Purple', true)
        else _card:set_seal('poke_pink_seal', true)
        end
      end
      if _card.ability.name == "Default Base" then
        local enhancement_type = pseudorandom(pseudoseed('articuno'))
        if enhancement_type > .875 then _card:set_ability(G.P_CENTERS.m_bonus, nil, true)
        elseif enhancement_type > .75 then _card:set_ability(G.P_CENTERS.m_mult, nil, true)
        elseif enhancement_type > .625 then _card:set_ability(G.P_CENTERS.m_wild, nil, true)
        elseif enhancement_type > .50 then _card:set_ability(G.P_CENTERS.m_glass, nil, true)
        elseif enhancement_type > .375 then _card:set_ability(G.P_CENTERS.m_steel, nil, true)
        elseif enhancement_type > .25 then _card:set_ability(G.P_CENTERS.m_stone, nil, true)
        elseif enhancement_type > .125 then _card:set_ability(G.P_CENTERS.m_gold, nil, true)
        else _card:set_ability(G.P_CENTERS.m_lucky, nil, true)
        end
      end
      if not _card.edition then
        local edition = poll_edition('articuno', nil, false, true)
        _card:set_edition(edition, true)
      end
    end
  end
}
local zapdos={
  name = "zapdos", 
  pos = {x = 3, y = 11},
  soul_pos = { x = 4, y = 11},
  config = {extra = {Xmult = 2, money_threshold = 25}},
  loc_txt = {      
    name = 'Zapdos',      
    text = {
      "{X:mult,C:white} X#1# {} Mult for",
      "every {C:money}$#2#{} you have",
      "{C:inactive}(Currently {X:red,C:white}X#3#{}{C:inactive} Mult)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Lightning'}
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_threshold , math.max(1, center.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/                    center.ability.extra.money_threshold))}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = card.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/card.ability.extra.money_threshold)
        if Xmult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
  end
}
local moltres={
  name = "moltres", 
  pos = {x = 5, y = 11},
  soul_pos = { x = 6, y = 11},
  loc_txt = {      
    name = 'Moltres',      
    text = {
      "Upgrade the level of the",
      "first {C:attention}3 discarded{}",
      "poker hands each round"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Fire'}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.pre_discard and G.GAME.current_round.discards_used <= 2 and not context.hook then
      local text,disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')})
      update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, level=                       G.GAME.hands[text].level})
      level_up_hand(context.blueprint_card or card, text, nil, 1)
      update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.discards_used < 3 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
local dratini={
  name = "dratini", 
  pos = {x = 7, y = 11},
  config = {extra = {mult = 0, mult_mod = 1, size = 3}},
  loc_txt = {      
    name = 'Dratini',      
    text = {
      "Gains {C:mult}+#2#{} Mult",
      "if played hand contains",
      "{C:attention}#3#{} or fewer cards",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+10{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dragon'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonair", card.ability.extra.mult, 10)
  end,
}
local dragonair={
  name = "dragonair", 
  pos = {x = 8, y = 11}, 
  config = {extra = {mult = 10, mult_mod = 2, size = 3}},
  loc_txt = {      
    name = 'Dragonair',      
    text = {
      "Gains {C:mult}+#2#{} Mult",
      "if played hand contains",
      "{C:attention}#3#{} or fewer cards",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+40{}{C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dragon'}
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.size}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #context.full_hand <= card.ability.extra.size and not context.blueprint then
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      end
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_dragonite", card.ability.extra.mult, 40)
  end,
}
local dragonite={
  name = "dragonite", 
  pos = {x = 9, y = 11},
  config = {extra = {mult = 40, retriggers = 5}},
  loc_txt = {      
    name = 'Dragonite',      
    text = {
      "{C:mult}+#1#{} Mult",
      "If played hand has",
      "only {C:attention}1{} card",
      "retrigger it {C:attention}#2#{} times"
    } 
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Dragon'}
    return {vars = {center.ability.extra.mult, center.ability.extra.retriggers}} 
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Dragon",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    if context.repetition and context.cardarea == G.play and context.scoring_hand and #context.full_hand == 1 then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
    end
  end,
}
local mewtwo={
  name = "mewtwo", 
  pos = {x = 10, y = 11},
  soul_pos = { x = 11, y = 11},
  loc_txt = {      
    name = 'Mewtwo',      
    text = {
      "At end of shop, create a",
      "{C:dark_edition}Polychrome{} {C:attention}duplicate{} of",
      "leftmost {C:attention}Joker{}, then",
      "destroy leftmost {C:attention}Joker{}",
      "{C:inactive}(Except this Joker)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'Psychic'}
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.ending_shop and not context.blueprint then
      if G.jokers.cards[1] ~= card  then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        local chosen_joker = G.jokers.cards[1]
        
        local _card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition)
        local edition = {polychrome = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.jokers:emplace(_card)
        
        G.E_MANAGER:add_event(Event({
          remove(self, G.jokers.cards[1], context)
        }))
      end
    end
  end
}

return {name = "Pokemon Jokers 121-150", 
        list = { starmie, mrmime, scyther, jynx, electabuzz, magmar, pinsir, tauros, taurosh, magikarp, gyarados, lapras, ditto, eevee, vaporeon, jolteon, flareon, porygon, omanyte, omastar, kabuto, kabutops,                 aerodactyl, snorlax, articuno, zapdos, moltres, dratini, dragonair, dragonite, mewtwo, },
}
