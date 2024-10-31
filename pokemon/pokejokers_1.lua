local bulbasaur={ 
  name = "bulbasaur",
  pos = {x = 0, y = 0},
  config = {extra = {money = 1, earned = 0}},
  loc_txt = {      
    name = 'Bulbasaur',      
    text = {
        "Earn {C:money}$#1#{} for each {C:attention}#3#{}",
        "held in hand, rank",
        "changes every round",
        "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
        "{C:inactive}(Evolves at {C:money}$16{}{C:inactive} earned)"
      } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money, center.ability.extra.earned, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks')}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
          if not context.blueprint then
            card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money
          end
          ease_dollars(card.ability.extra.money)
          return {
              message = localize('$')..card.ability.extra.money,
              colour = G.C.MONEY
          }
        end
    end
    return scaling_evo(self, card, context, "j_poke_ivysaur", card.ability.extra.earned, 16)
  end,
}

local ivysaur={
  name = "ivysaur", 
  pos = {x = 1, y = 0}, 
  config = {extra = {money = 1, earned = 0, h_size = 1}, venusaur = {money = 2, earned = 0, h_size = 1}},
  loc_txt = {      
    name = 'Ivysaur',      
    text = {
        "{C:attention}+#3#{} hand size",
        "Earn {C:money}$#1#{} for each {C:attention}#4#{}",
        "held in hand, rank",
        "changes every round",
        "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
        "{C:inactive}(Evolves at {C:money}$16{}{C:inactive} earned)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money, center.ability.extra.earned, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'                   )}}
  end,
  rarity = 3, 
  cost = 9, 
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
          if not context.blueprint then
            card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money
          end
          ease_dollars(card.ability.extra.money)
          return {
              message = localize('$')..card.ability.extra.money,
              colour = G.C.MONEY
          }
        end
    end
    return scaling_evo(self, card, context, "j_poke_venusaur", card.ability.extra.earned, 16)
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}

local venusaur={
  name = "venusaur", 
  pos = {x = 2, y = 0}, 
  config = {extra = {money = 2, earned = 0, h_size = 1}},
  loc_txt = {      
    name = 'Venusaur',      
    text = {
        "{C:attention}+#3#{} hand size",
        "Earn {C:money}$#1#{} for each {C:attention}#4#{}",
        "held in hand, rank",
        "changes every round",
        "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money, center.ability.extra.earned, center.ability.extra.h_size, localize(G.GAME.current_round.bulb1card and G.GAME.current_round.bulb1card.rank or "Ace", 'ranks'                   )}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  atlas = "Pokedex1",
  ptype = "Grass",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == G.GAME.current_round.bulb1card.id then
        if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
          if not context.blueprint then
            card.ability.extra.earned = card.ability.extra.earned + card.ability.extra.money
          end
          ease_dollars(card.ability.extra.money)
          return {
              message = localize('$')..card.ability.extra.money,
              colour = G.C.MONEY
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

local charmander={
  name = "charmander", 
  pos = {x = 3, y = 0}, 
  config = {extra = {mult = 0, mult_mod = 2, d_remaining = 0}},
  loc_txt = {      
    name = 'Charmander',      
    text = {
      "Gains {C:mult}+#2#{} Mult per hand played",
      "when {C:attention}#3#{} discards remaining",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+16{}{C:inactive} Mult)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            if card.ability.extra.mult == 16 then
              local eval = function(card) return not card.REMOVED end
              juice_card_until(card, eval, true)
            end
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.MULT
            }
        end
      elseif context.joker_main then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
      end
    end
    return scaling_evo(self, card, context, "j_poke_charmeleon", card.ability.extra.mult, 16)
  end
}

local charmeleon={
  name = "charmeleon", 
  pos = {x = 4, y = 0}, 
  config = {extra = {mult = 16, mult_mod = 4, d_remaining = 0, d_size = 1}},
  loc_txt = {      
    name = 'Charmeleon',      
    text = {
      "{C:red}+#4#{} discard",
      "Gains {C:mult}+#2#{} Mult per hand played",
      "when {C:attention}#3#{} discards remaining",
      "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolves at {C:mult}+36{}{C:inactive} Mult)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.MULT
            }
        end
      elseif context.joker_main then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
      end
    end
    return scaling_evo(self, card, context, "j_poke_charizard", card.ability.extra.mult, 36)
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

local charizard={
  name = "charizard", 
  pos = {x = 5, y = 0}, 
  config = {extra = {mult = 36, Xmult = 1.5, d_remaining = 0, d_size = 1}},
  loc_txt = {      
    name = 'Charizard',      
    text = {
      "{C:red}+#4#{} discard, {C:mult}+#1#{} Mult",
      "{X:mult,C:white} X#2# {} Mult when {C:attention}#3#{} discards remaining",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult, center.ability.extra.d_remaining, center.ability.extra.d_size}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Fire",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
      if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
        return {
          message = "Fire Blast!", 
          colour = G.C.XMULT,
          mult_mod = card.ability.extra.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      else
        return { 
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}},
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
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
local squirtle={
  name = "squirtle", 
  pos = {x = 6, y = 0}, 
  config = {extra = {chips = 0, chip_mod = 2}},
  loc_txt = {      
    name = 'Squirtle',      
    text = {
      "Gains {C:chips}+#2#{} Chips for each hand",
      "remaining at end of round",
      "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
      "{C:inactive}(Evolves at {C:chips}+16{} {C:inactive}Chips)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex1",
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
        if card.ability.extra.chips == 14 then
          local eval = function(card) return not card.REMOVED end
          juice_card_until(card, eval, true)
        end
        if card.ability.extra.chips >= 16 then
          return {
            message = evolve (self, card, context, 'j_poke_wartortle')
          }
        else
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        end
    end
  end
}
local wartortle={
  name = "wartortle", 
  pos = {x = 7, y = 0},
  config = {extra = {chips = 16, chip_mod = 2, hands = 1}},
  loc_txt = {      
    name = 'Wartortle',     
    text = {
      "{C:chips}+#3#{} hands",
      "Gains {C:chips}+#2#{} Chips for each hand",
      "remaining at end of round",
      "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
      "{C:inactive}(Evolves at {C:chips}+36{} {C:inactive}Chips)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    elseif not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
        if card.ability.extra.chips == 34 then
          local eval = function(card) return not card.REMOVED end
          juice_card_until(card, eval, true)
        end
        if card.ability.extra.chips >= 36 then
          return {
            message = evolve (self, card, context, 'j_poke_blastoise')
          }
        else
          return {
            message = localize('k_upgrade_ex'),
            colour = G.C.CHIPS
          }
        end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end, 
}
local blastoise={
  name = "blastoise", 
  pos = {x = 8, y = 0},
  config = {extra = {chips = 36, chip_mod = 40, hands = 1}},
  loc_txt = {      
    name = 'Blastoise',      
    text = {
      "{C:chips}+#3#{} hands, {C:chips}+#1#{} Chips",
      "{C:chips}+#2#{} Chips for each",
      "remaining hand",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two",
  ptype = "Water",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return{
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
      ease_hands_played(card.ability.extra.hands)
  end,
  remove_from_deck = function(self, card, from_debuff)
      G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
      ease_hands_played(-card.ability.extra.hands)
  end
}
local caterpie={
  name = "caterpie", 
  pos = {x = 9, y = 0},
  config = {extra = {mult = 1, rounds = 1}},
  loc_txt = {      
    name = 'Caterpie',      
    text = {
      "{C:mult}+#1#{} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} round)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic",
  ptype = "Grass",
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
    return level_evo(self, card, context, "j_poke_metapod")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not pokermon_config.no_evos then
      local eval = function(card) return not card.REMOVED end
      juice_card_until(card, eval, true)
    end
  end
}
local metapod={
  name = "metapod",
  config = {extra = {mult = 5, rounds = 2}},
  pos = {x = 10, y = 0}, 
  loc_txt = {      
    name = 'Metapod',      
    text = {
      "{C:mult}+#1#{} Mult",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }  
  }, 
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  ptype = "Grass",
  atlas = "Pokedex1",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
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
    return level_evo(self, card, context, "j_poke_butterfree")
  end,
}
local butterfree={
  name = "butterfree", 
  pos = {x = 11, y = 0},
  config = {extra = {mult = 15}},
  loc_txt = {      
    name = 'Butterfree',      
    text = {
      "{C:mult}+#1#{} Mult",
    }  
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "Two", 
  ptype = "Grass",
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
  end

}
local weedle={
  name = "weedle", 
  pos = {x = 12, y = 0},
  config = {extra = {chips = 20, rounds = 1}},
  loc_txt = {      
    name = 'Weedle',      
    text = {
      "{C:chips}+#1#{} Chips",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} round)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Grass",
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
    return level_evo(self, card, context, "j_poke_kakuna")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not pokermon_config.no_evos then
      local eval = function(card) return not card.REMOVED end
      juice_card_until(card, eval, true)
    end
  end
}
local kakuna={
  name = "kakuna", 
  pos = {x = 0, y = 1}, 
  config = {extra = {chips = 50, rounds = 2}},
  loc_txt = {      
    name = 'Kakuna',      
    text = {
      "{C:chips}+#1#{} Chips",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }  
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Grass",
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
    return level_evo(self, card, context, "j_poke_beedrill")
  end,
}
local beedrill={
  name = "beedrill", 
  pos = {x = 1, y = 1}, 
  config = {extra = {chips = 120}},
  loc_txt = {      
    name = 'Beedrill',      
    text = {
      "{C:chips}+#1#{} Chips",
    } 
  }, 
  rarity = 2,
  cost = 6,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  stage = "Two", 
  atlas = "Pokedex1",
  ptype = "Grass",
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
  end
}
local pidgey={
  name = "pidgey", 
  pos = {x = 2, y = 1},
  config = {extra = {rounds = 4}},
  loc_txt = {      
    name = 'Pidgey',      
    text = {
      "All {C:planet}Planet{} cards and",
      "{C:planet}Celestial Packs{} in",
      "the shop cost {C:money}$2",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_pidgeotto")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}
local pidgeotto={
  name = "pidgeotto", 
  pos = {x = 3, y = 1},
  config = {extra = {rounds = 4}},
  loc_txt = {      
    name = 'Pidgeotto',      
    text = {
      "All {C:planet}Planet{} cards and",
      "{C:planet}Celestial Packs{} in",
      "the shop are {C:attention}free",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
    } 
  },
  blueprint_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex1",
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_pidgeot")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}
local pidgeot={
  name = "pidgeot", 
  pos = {x = 4, y = 1},
  config = {extra = {money = 2}}, 
  loc_txt = {      
    name = 'Pidgeot',      
    text = {
      "All {C:planet}Planet{} cards and",
      "{C:planet}Celestial Packs{} in the",
      "shop are {C:attention}free{}, using",
      "{C:planet}Planet{} cards earns you {C:money}$#1#{}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money}}
  end,
  rarity = 3, 
  cost = 6, 
  stage = "Two", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
      ease_dollars(card.ability.extra.money)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}
local rattata={
  name = "rattata", 
  pos = {x = 5, y = 1},
  config = {extra = {retriggers = 1, rounds = 3}},
  loc_txt = {      
    name = 'Rattata',      
    text = {
      "Retrigger {C:attention}first{} played",
      "card used in scoring",
      "{C:attention}#1#{} additional time",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      if (context.other_card == context.scoring_hand[1]) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_raticate")
  end,
  in_pool = function(self)
    return pokemon_in_pool(self)
  end
}
local raticate={
  name = "raticate", 
  pos = {x = 6, y = 1}, 
  config = {extra = {retriggers = 1}},
  loc_txt = {      
    name = 'Raticate',      
    text = {
      "Retrigger {C:attention}first{} and {C:attention}second{}",
      "played cards used in scoring",
      "{C:attention}#1#{} additional time",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play then
      if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) then
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end
  end
}
local spearow={
  name = "spearow", 
  pos = {x = 7, y = 1},
  config = {extra = {rounds = 4}},
  loc_txt = {      
    name = 'Spearow',      
    text = {
      "Adds {C:attention}double{} the",
      "level of the highest",
      "level poker hand to Mult",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local highest_level = 0
        for k, v in ipairs(G.handlist) do
          if G.GAME.hands[v].level > highest_level then
            highest_level = G.GAME.hands[v].level
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {highest_level * 2}}, 
          colour = G.C.MULT,
          mult_mod = highest_level * 2
        }
      end
    end
    return level_evo(self, card, context, "j_poke_fearow")
  end,
}
local fearow={
  name = "fearow", 
  pos = {x = 8, y = 1}, 
  loc_txt = {      
    name = 'Fearow',      
    text = {
      "Adds {C:attention}quadruple{} the",
      "level of the highest",
      "level poker hand to Mult",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Colorless",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local highest_level = 0
        for k, v in ipairs(G.handlist) do
          if G.GAME.hands[v].level > highest_level then
            highest_level = G.GAME.hands[v].level
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {highest_level * 4}}, 
          colour = G.C.MULT,
          mult_mod = highest_level * 4
        }
      end
    end
  end,
}
local ekans={
  name = "ekans", 
  pos = {x = 9, y = 1}, 
  config = {extra = {mult = 9, rounds = 4}},
  loc_txt = {      
    name = 'Ekans',      
    text = {
      "{C:mult}+#1#{} Mult if",
      "played hand contains",
      "a {C:attention}Straight{}",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_arbok")
  end,
  }
local arbok={
  name = "arbok", 
  pos = {x = 10, y = 1}, 
  config = {extra = {mult = 16, rounds = 4}},
  loc_txt = {      
    name = 'Arbok',      
    text = {
      "{C:mult}+#1#{} Mult if played hand",
      "contains a {C:attention}Straight{}",
      "Create a Tarot card if it",
      "also contains an {C:attention}Ace{}."
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Dark",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Straight']) then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          local aces = 0
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 14 then aces = aces + 1 end
          end
          if aces >= 1 then
            local card_type = 'Tarot'
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = (function()
                        local card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                        card:add_to_deck()
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                    return true
                end)}))
          end
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
}
local pikachu={
  name = "pikachu", 
  pos = {x = 11, y = 1},
  config = {extra={money = 1}},
  loc_txt = {      
    name = 'Pikachu',      
    text = {
      "Earn {C:money}$#1#{} at",
      "end of round for",
      "each Joker you have",
      "{C:inactive}(Evolves with a {C:attention}Thunder Stone{} {C:inactive}card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    return {vars = {center.ability.extra.money}}
  end,
  rarity = 2, 
  cost = 6,
  item_req = "thunderstone",
  stage = "Basic", 
  ptype = "Lightning",
  atlas = "Pokedex1",
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    return #G.jokers.cards * card.ability.extra.money
	end,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_raichu")
  end
}
local raichu={
  name = "raichu", 
  pos = {x = 12, y = 1}, 
  config = {extra={money = 2, threshold = 90, plus_slot = false}},
  loc_txt = {      
    name = 'Raichu',      
    text = {
      "Earn {C:money}$#1#{} at",
      "end of round for",
      "each Joker you have",
      "{C:dark_edition}+1{} Joker slot if you",
      "have at least {C:money}$#2#{}",
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.threshold}}
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex1", 
  blueprint_compat = false,
  calc_dollar_bonus = function(self, card)
    return #G.jokers.cards * card.ability.extra.money
	end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area and card.area.config and not card.area.config.collection then
      if G.GAME.dollars > card.ability.extra.threshold and not card.ability.extra.plus_slot then
        card.ability.extra.plus_slot = true
        G.jokers.config.card_limit = G.jokers.config.card_limit + 1
      elseif G.GAME.dollars < card.ability.extra.threshold and card.ability.extra.plus_slot then
        card.ability.extra.plus_slot = false
        G.jokers.config.card_limit = G.jokers.config.card_limit - 1
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if card.ability.extra.plus_slot then
      G.jokers.config.card_limit = G.jokers.config.card_limit - 1
    end
  end
}
local sandshrew={
  name = "sandshrew", 
  pos = {x = 0, y = 2},
  config = {extra = {rounds = 5}},
  loc_txt = {      
    name = 'Sandshrew',      
    text = {
      "When a {C:attention}Glass{} card is",
      "destroyed, add a {C:attention}Stone{} copy to",
      "deck and draw it to {C:attention}hand{}",
      "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 6,
  enhancement_gate = 'm_glass',
  stage = "Basic", 
  ptype = "Earth",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards then
      local card_to_copy = nil
      for k, v in ipairs(context.removed) do
        if v.shattered then
          card_to_copy = v
          local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
          copy:set_ability(G.P_CENTERS.m_stone, nil, true)
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
          playing_card_joker_effects({true})
        end
      end
      return {
        message = localize('k_copied_ex'),
        colour = G.C.CHIPS,
        card = card,
        playing_cards_created = {true}
      }
    end
    return level_evo(self, card, context, "j_poke_sandslash")
  end
}
local sandslash={
  name = "sandslash", 
  pos = {x = 1, y = 2}, 
  loc_txt = {      
    name = 'Sandslash',      
    text = {
      "When a {C:attention}Glass{} card is",
      "destroyed, add a {C:attention}Steel{} copy to",
      "deck and draw it to {C:attention}hand{}",
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    info_queue[#info_queue+1] = G.P_CENTERS.m_steel
  end,
  rarity = "poke_safari",
  cost = 8, 
  enhancement_gate = 'm_glass',
  stage = "One", 
  atlas = "Pokedex1",
  ptype = "Earth",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.remove_playing_cards then
      for k, v in pairs(context.removed) do
        if v.shattered then
          local card_to_copy = v
          local copy = copy_card(card_to_copy, nil, nil, G.playing_card)
          copy:set_ability(G.P_CENTERS.m_steel, nil, true)
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
          playing_card_joker_effects({true})
        end
      end
      return {
        message = localize('k_copied_ex'),
        colour = G.C.CHIPS,
        card = card,
        playing_cards_created = {true}
      }
    end
  end
}
local nidoranf={
  name = "nidoranf", 
  pos = {x = 2, y = 2},
  config = {extra = {chips = 40, chip_total = 0, rounds = 3}},
  loc_txt = {      
    name = 'Nidoran F',      
    text = {
      "Each {C:attention}Queen{}",
      "held in hand",
      "gives {C:chips}+#1#{} Chips",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 5, 
  stage = "Basic", 
  ptype = "Dark",
  atlas = "Pokedex1", 
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == 12 then
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
    return level_evo(self, card, context, "j_poke_nidorina")
  end
}
local nidorina={
  name = "nidorina", 
  pos = {x = 3, y = 2},
  config = {extra = {chips = 80, chip_total = 0}},
  loc_txt = {      
    name = 'Nidorina',      
    text = {
      "Each {C:attention}Queen{}",
      "held in hand",
      "gives {C:chips}+#1#{} Chips",
      "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
    } 
  }, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_moonstone
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 7, 
  stage = "One",
  item_req = "moonstone",
  ptype = "Dark",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and context.other_card:get_id() == 12 then
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
    return item_evo(self, card, context, "j_poke_nidoqueen")
  end
}

return {name = "Pokemon Jokers 01-30",
        init = function()
            local game_init_object = Game.init_game_object;
            function Game:init_game_object()
                local game = game_init_object(self)
                game.current_round.bulb1card = {rank = 'Ace'}
                return game
            end
            
            local rmr = reset_mail_rank;
            function reset_mail_rank()
              rmr()
              G.GAME.current_round.bulb1card.rank = "Ace"
              local valid_bulb_cards = {}
              for k, v in ipairs(G.playing_cards) do
                if v.ability.effect ~= 'Stone Card' then
                  valid_bulb_cards[#valid_bulb_cards+1] = v
                end
              end
              if valid_bulb_cards[1] then
                local bulb_card = pseudorandom_element(valid_bulb_cards, pseudoseed('bulb'..G.GAME.round_resets.ante))
                G.GAME.current_round.bulb1card.rank = bulb_card.base.value
                G.GAME.current_round.bulb1card.id = bulb_card.base.id
              end
            end
              
        end,
        list = { bulbasaur, ivysaur, venusaur, charmander, charmeleon, charizard, squirtle, wartortle, blastoise, caterpie, metapod, butterfree, weedle, kakuna, beedrill, pidgey, pidgeotto, pidgeot,                 rattata, raticate, spearow, fearow, ekans, arbok, pikachu, raichu, sandshrew, sandslash, nidoranf, nidorina, },
}
