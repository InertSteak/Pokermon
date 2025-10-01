-- Volcanion 721
-- Rowlet 722
-- Dartrix 723
-- Decidueye 724
-- Litten 725
-- Torracat 726
-- Incineroar 727
-- Popplio 728
-- Brionne 729
-- Primarina 730
-- Pikipek 731
-- Trumbeak 732
-- Toucannon 733
-- Yungoos 734
-- Gumshoos 735
-- Grubbin 736
local grubbin={
  name = "grubbin",
  config = {extra = {mult = 3, rounds = 3}},
  pos = {x = 0, y = 1}, 
  rarity = 1, 
  cost = 3, 
  stage = "Basic", 
  ptype = "Grass",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.rounds}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local card_mult = card.ability.extra.mult
        if next(find_pokemon_type("Lightning")) then
          card_mult = card_mult * 3
        end
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card_mult}}, 
          colour = G.C.MULT,
          mult_mod = card_mult
        }
      end
    end
    return level_evo(self, card, context, "j_poke_charjabug")
  end,
}
-- Charjabug 737
local charjabug={
  name = "charjabug",
  config = {extra = {mult = 9}},
  pos = {x = 1, y = 1}, 
  rarity = 2, 
  cost = 5, 
  item_req = "thunderstone",
  stage = "One", 
  ptype = "Lightning",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
    end
		return {vars = {center.ability.extra.mult, center.ability.extra.mult * #find_pokemon_type("Lightning")}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #find_pokemon_type("Lightning")
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult * count}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult * count
          }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_vikavolt")
  end,
}
-- Vikavolt 738
local vikavolt={
  name = "vikavolt",
  config = {extra = {Xmult = .75, mult = 12}},
  pos = {x = 2, y = 1}, 
  rarity = "poke_safari", 
  cost = 6, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex7",
  gen = 7,
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local count = #find_pokemon_type("Lightning")
      if is_type(center, "Lightning") then
        count = count - 1
      end
		return {vars = {center.ability.extra.Xmult, math.max(1, 1 + center.ability.extra.Xmult * count), center.ability.extra.mult}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #find_pokemon_type("Lightning")
        if is_type(card, "Lightning") then
          count = count - 1
        end
        return {
          message = localize("poke_thunder_ex"),
          colour = G.C.XMULT,
          Xmult_mod = math.max(1, 1 + card.ability.extra.Xmult * count),
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end
}
-- Crabrawler 739
-- Crabominable 740
-- Oricorio 741
-- Cutiefly 742
-- Ribombee 743
-- Rockruff 744
local rockruff={
  name = "rockruff",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 2, even_to_score = 20, odd_to_score = 20,}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.even_to_score, center.ability.extra.odd_to_score}}
  end,
  rarity = 1,
  cost = 5,
  gen = 7,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card:is_face() then
      if poke_is_even(context.other_card) and card.ability.extra.even_to_score > 0 then
        card.ability.extra.even_to_score = card.ability.extra.even_to_score - 1
      end
      if poke_is_odd(context.other_card) and card.ability.extra.odd_to_score > 0 then
        card.ability.extra.odd_to_score = card.ability.extra.odd_to_score - 1
      end
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    local evo = scaling_evo(self, card, context, "j_poke_lycanroc_dusk", (self.config.evo_rqmt * 2) - card.ability.extra.odd_to_score - card.ability.extra.even_to_score, self.config.evo_rqmt * 2)
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_lycanroc_day", self.config.evo_rqmt - card.ability.extra.even_to_score, self.config.evo_rqmt)
    end
    if not evo then
      evo = scaling_evo(self, card, context, "j_poke_lycanroc_night", self.config.evo_rqmt - card.ability.extra.odd_to_score, self.config.evo_rqmt)
    end
    if evo then return evo end
  end,
}
-- Lycanroc 745
local lycanroc_day={
  name = "lycanroc_day",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 4, chip_mod = 40, hands = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chip_mod, center.ability.extra.hands}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 then
        ease_hands_played(card.ability.extra.hands)
        if poke_is_even(context.other_card) then
          return {
            mult = card.ability.extra.mult,
            chips = card.ability.extra.chip_mod,
            card = card
          }
        else
          return {
            chips = card.ability.extra.chip_mod,
            card = card
          }
        end
      end
      if poke_is_even(context.other_card) then
        return {
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
  end,
}

local lycanroc_night={
  name = "lycanroc_night",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 5, hands = 1, discards = 1, h_size = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.hands, center.ability.extra.discards, center.ability.extra.h_size}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and context.blind.boss then
      ease_hands_played(card.ability.extra.hands)
      ease_discard(card.ability.extra.discards)
      G.hand:change_size(card.ability.extra.h_size)
      G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and poke_is_odd(context.other_card) then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
  end,
}

local lycanroc_dusk={
  name = "lycanroc_dusk",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 4, retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari",
  cost = 5,
  gen = 7,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card:is_face() then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.repetition and context.cardarea == G.play then
      local first_even = nil
      local first_odd = nil
      for i = 1, #context.scoring_hand do
        if poke_is_even(context.scoring_hand[i]) and not first_even then
          first_even = context.scoring_hand[i]
        end
        if poke_is_odd(context.scoring_hand[i]) and not first_odd then
          first_odd = context.scoring_hand[i]
        end
      end
      if context.other_card == first_even and not card.ability.extra.even_triggered then
        card.ability.extra.even_triggered = true  
        return {
              message = localize('k_again_ex'),
              repetitions = card.ability.extra.retriggers,
              card = card
          }
      end
      if context.other_card == first_odd and not card.ability.extra.odd_triggered then
        card.ability.extra.odd_triggered = true  
        return {
              message = localize('k_again_ex'),
              repetitions = card.ability.extra.retriggers,
              card = card
          }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.even_triggered = nil
      card.ability.extra.odd_triggered = nil
    end
  end,
}
-- Wishiwashi 746
-- Mareanie 747
-- Toxapex 748
-- Mudbray 749
-- Mudsdale 750
return {name = "Pokemon Jokers 721-750", 
        list = {grubbin, charjabug, vikavolt, rockruff, lycanroc_day, lycanroc_night, lycanroc_dusk},
}
