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
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_thunderstone
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
local oricorio_suit_table = {Hearts = {suit = 0, type = "Fire"}, Clubs = {suit = 1, type = "Lightning"}, Diamonds = {suit = 2, type = "Psychic"}, Spades = {suit = 3, type = "Psychic"}}
-- Oricorio 741
local oricorio = {
  name = "oricorio",
  pos = {x = 5, y = 1}, 
  config = {extra = {Xmult = 4, suit_string = "Hearts", suit = 0}},
  rarity = 3,
  cost = 10,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex7",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
		return {vars = {card.ability.extra.Xmult, card.ability.extra.suit_string, card.ability.extra.suit}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        local other_suit = nil
        for _, played_card in pairs(context.scoring_hand) do
          if card.ability.extra.suit_string ~= played_card.base.suit and played_card.config.center_key ~= "m_wild" then
            other_suit = played_card.base.suit
          end
        end
        if not other_suit then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}},
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        else
          
          card.ability.extra.suit_string = other_suit
          local new_form = oricorio_suit_table[other_suit]
          card.ability.extra.suit = new_form.suit
          card.ability.extra.ptype = new_form.type
    			G.E_MANAGER:add_event(Event({ func = function()
            update_pokemon_form_sprites(card)
            card:juice_up(0.1)
            return true
          end }))
        end
      end
    end
  end
}
-- Cutiefly 742
-- Ribombee 743
-- Rockruff 744
-- Lycanroc 745
-- Wishiwashi 746
-- Mareanie 747
-- Toxapex 748
-- Mudbray 749
-- Mudsdale 750
return {name = "Pokemon Jokers 721-750", 
        list = {grubbin, charjabug, vikavolt, oricorio},
}