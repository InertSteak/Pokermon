-- Dewpider 751
-- Araquanid 752
-- Fomantis 753
-- Lurantis 754
-- Morelull 755
-- Shiinotic 756
-- Salandit 757
-- Salazzle 758
-- Stufful 759
-- Bewear 760
-- Bounsweet 761
-- Steenee 762
-- Tsareena 763
-- Comfey 764
-- Oranguru 765
-- Passimian 766
-- Wimpod 767
-- Golisopod 768
-- Sandygast 769
-- Palossand 770
-- Pyukumuku 771
-- Type: Null 772
-- Silvally 773
-- Minior 774
-- Komala 775
-- Turtonator 776
-- Togedemaru 777
-- Mimikyu 778
local mimikyu={
  name = "mimikyu",
  pos = {x = 8, y = 12},
  broke_pos = {x = 9, y = 12},
  config = {extra = {chips = 80, suit = "Hearts", disguise = true}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, localize(center.ability.extra.suit, 'suits_plural'), center.ability.extra.disguise and "Disguise Intact!" or "Disguise Broken!"}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex7",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local no_hearts = true
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i]:is_suit(card.ability.extra.suit) then
            no_hearts = false
            break
          end
        end
        if no_hearts then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips
          }
        end
      end
    end
    if context.end_of_round and context.game_over and card.ability.extra.disguise then
        local chips = 0
        local blind_chips = 0
        if type(G.GAME.chips) == "table" then
          chips = G.GAME.chips.array[1]
        else
          chips = G.GAME.chips
        end
        if type(G.GAME.blind.chips) == "table" then
          blind_chips = G.GAME.blind.chips.array[1]
        else
          blind_chips = G.GAME.blind.chips
        end
        if chips/blind_chips >= 0.50 then
          card.ability.extra.disguise = false
          card.children.center:set_sprite_pos(card.config.center.broke_pos)
          
          G.E_MANAGER:add_event(Event({
              func = function()
                  G.hand_text_area.blind_chips:juice_up()
                  G.hand_text_area.game_chips:juice_up()
                  return true
              end
          })) 
          return {
              message = localize('k_saved_ex'),
              saved = true,
              colour = G.C.RED
          }
        end
      end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      card.children.center:set_sprite_pos(card.config.center.pos)
      card.ability.extra.disguise = true
    end
  end,
}
-- Bruxish 779
-- Drampa 780
return {name = "Pokemon Jokers 751-780", 
        list = {mimikyu},
}
