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
  config = {extra = {mult = 3, rounds = 4}},
  pos = {x = 0, y = 1}, 
  loc_txt = {      
    name = 'Grubbin',      
    text = {
      "{C:mult}+#1#{} Mult",
      "This card scores {C:attention}triple{}",
      "its Mult if you have",
      "a {X:lightning, C:black}Lightning{} Joker",
      "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
    }  
  }, 
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
  config = {extra = {mult = 12}},
  pos = {x = 1, y = 1}, 
  loc_txt = {      
    name = 'Charjabug',      
    text = {
      "{C:mult}+#1#{} Mult",
      "for each {X:lightning, C:black}Lightning{} Joker",
      "you have {C:inactive}(includes self){}",
       "{C:inactive}(Currently {C:mult}#2#{C:inactive} Mult)",
      "{C:inactive}(Evolves with a{} {C:attention}Thunder Stone{}{C:inactive} card)"
    }  
  }, 
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
		return {vars = {center.ability.extra.mult, center.ability.extra.mult * (math.max(#find_pokemon_type("Lightning"), 1))}}
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
  config = {extra = {Xmult = 1.5}},
  pos = {x = 2, y = 1}, 
  loc_txt = {      
    name = 'Vikavolt',      
    text = {
      "{X:red,C:white} X#1# {} Mult",
      "for each {X:lightning, C:black}Lightning{} Joker",
      "you have {C:inactive}(includes self){}",
       "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)",
    }  
  }, 
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Lightning",
  atlas = "Pokedex7",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult * (math.max(#find_pokemon_type("Lightning"), 1))}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local count = #find_pokemon_type("Lightning")
        if count > 0 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult * count}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult * count
          }
        end
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
-- Lycanroc 745
-- Wishiwashi 746
-- Mareanie 747
-- Toxapex 748
-- Mudbray 749
-- Mudsdale 750
return {name = "Pokemon Jokers 721-750", 
        list = {grubbin, charjabug, vikavolt},
}