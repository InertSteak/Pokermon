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
  pos = {x = 2, y = 5},
  broke_pos = {x = 4, y = 4},
  config = {extra = {chips = 80, suit = "Hearts", disguise = true}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, localize(center.ability.extra.suit, 'suits_plural'), center.ability.extra.disguise and 
                    localize('poke_disguise_intact') or localize('poke_disguise_broken')}}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex7",
  gen = 7,
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
        local save = false
        if (SMODS.Mods["Talisman"] or {}).can_load and to_big(G.GAME.chips)/G.GAME.blind.chips >= to_big(0.50) then
          save = true
        elseif not (SMODS.Mods["Talisman"] or {}).can_load and G.GAME.chips/G.GAME.blind.chips >= 0.50 then
          save = true
        end
        if save then
          card.ability.extra.disguise = false
          card.children.center.atlas = SMODS.get_atlas('poke_'..card.config.center.poke_lookup_atlas)
          card.children.center:set_sprite_pos(card.config.center.broke_pos)
          
          G.E_MANAGER:add_event(Event({
              trigger = 'before',
              delay = 0.8,
              blockable = false,
              func = function()
                  play_sound('tarot2',1,0.4)
                  delay(0.2)
                  play_sound('tarot2',0.76,0.4)
                  return true
              end
          }))
          
          G.E_MANAGER:add_event(Event({
              func = function()
                  G.hand_text_area.blind_chips:juice_up()
                  G.hand_text_area.game_chips:juice_up()
                  return true
              end
          })) 
          return {
              message = localize('k_saved_ex'),
              saved = localize('poke_saved_by')..' '..(G.localization.descriptions.Joker[card.config.center.key].name),
              colour = G.C.RED
          }
        end
      end
  end,
  set_sprites = function(self, card, front)
    if card and card.ability and card.ability.extra and not card.ability.extra.disguise then
      card.children.center.atlas = SMODS.get_atlas('poke_'..card.config.center.poke_lookup_atlas)
      card.children.center:set_sprite_pos(card.config.center.broke_pos)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      card.children.center:set_sprite_pos(card.config.center.pos)
      card.ability.extra.disguise = true
    end
  end,
  attributes = {"chips", "suit", "hearts", "prevents_death"},
}
-- Bruxish 779
-- Drampa 780
local drampa = {
  name = "drampa",
  config = { extra = { boosters = 1 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return { vars = { card.ability.extra.boosters } }
  end,
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Dragon",
  gen = 7,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({
      func = function()
        poke_upgrade_all_shop_packs('jumbo')
        return true
      end
    }))
    SMODS.change_booster_limit(card.ability.extra.boosters)
  end,
  remove_from_deck = function(self, card, from_debuff)
    SMODS.change_booster_limit(-card.ability.extra.boosters)
  end,
  designer = "CBMX",
  megas = {"mega_drampa"},
  attributes = {"passive"},
}
-- Mega Drampa 780-1
local mega_drampa = {
  name = "mega_drampa",
  config = { extra = { boosters = 1, booster_choice_mod = 1 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return { vars = { card.ability.extra.boosters, card.ability.extra.booster_choice_mod } }
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Dragon",
  gen = 7,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    poke_upgrade_all_shop_packs('mega')
    -- to stop adding boosters when mega evolving
    G.GAME.modifiers.extra_boosters = (G.GAME.modifiers.extra_boosters or 0) + card.ability.extra.boosters
    G.GAME.modifiers.booster_choice_mod = (G.GAME.modifiers.booster_choice_mod or 0) + card.ability.extra.booster_choice_mod
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.GAME.modifiers.extra_boosters = (G.GAME.modifiers.extra_boosters or 0) - card.ability.extra.boosters
    G.GAME.modifiers.booster_choice_mod = math.max(0, (G.GAME.modifiers.booster_choice_mod or 0) - card.ability.extra.booster_choice_mod)
  end,
  attributes = {"passive"},
}

return {name = "Pokemon Jokers 751-780", 
        list = {mimikyu, drampa, mega_drampa},
}
