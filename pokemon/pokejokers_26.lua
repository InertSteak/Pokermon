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
local minior = {
  name = "minior",
  config = {extra = {enhancement = "mult", revealed = false, core = false, hands_played = 0, Xmult = 1.25}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local vars = {}
    local colours = {}
    local key = card.ability.extra.core and self.key.."_"..card.ability.extra.enhancement or self.key
    local enhancement = card.ability.extra.enhancement:sub(1,1):upper() .. card.ability.extra.enhancement:sub(2)
    vars[1] = (card.ability.extra.revealed and enhancement or "???")
    vars[2] = math.max( 2 - (card.ability.extra.hands_played), 0)
    vars[3] = card.ability.extra.Xmult
    colours[1] = (card.ability.extra.revealed and G.C.FILTER or G.C.UI.TEXT_INACTIVE)
    vars.colours = colours
  		return {vars = vars, key = key}
  end,
  designer = "Sonfive",
  rarity = 2,
  cost = 6,
  enhancement_gate = 'm_stone',
  stage = "Basic",
  ptype = "Earth",
  gen = 7,
  blueprint_compat = false,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.hands_played and card.ability.extra.hands_played >= 2 then
      local enhancements = {
          {name = "mult", pos = { x = 9, y = 3 }},
          {name = "wild", pos = { x = 10, y = 3 }},
          {name = "gold", pos = { x = 11, y = 3 }},
          {name = "lucky", pos = { x = 0, y = 4 }},
          {name = "glass", pos = { x = 1, y = 4 }},
          {name = "bonus", pos = { x = 2, y = 4 }},
          {name = "steel", pos = { x = 8, y = 3 }}
        }
      for _, enhancement in ipairs(enhancements) do
        if card.ability.extra.enhancement == enhancement.name then
          card.children.floating_sprite:set_sprite_pos(enhancement.pos)
        end
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.enhancement = pseudorandom_element({
        "mult", "wild", "gold", "lucky", "glass", "bonus", "steel"
      }, pseudoseed('minior'))
    end
  end,
  calc_dollar_bonus = function(self, card)
    if card.ability.extra.core then
      card.ability.extra.core = false
      card.children.floating_sprite:set_sprite_pos({x = 7, y = 3})
    end
    card.ability.extra.hands_played = 0
  end,
  calculate = function(self, card, context)
    local abbr = card.ability.extra
    if context.joker_main and abbr.hands_played < 2 then
      G.E_MANAGER:add_event(Event({
          func = function()
              abbr.hands_played = abbr.hands_played + 1
              return true
          end,
      }))
      return { xmult = card.ability.extra.Xmult }
      
    end
    if not context.setting_blind and G.GAME.blind.in_blind and not abbr.core and abbr.hands_played >= 2 then
      abbr.revealed = true
      local enhancements = {
          {name = "mult", pos = { x = 9, y = 3 }},
          {name = "wild", pos = { x = 10, y = 3 }},
          {name = "gold", pos = { x = 11, y = 3 }},
          {name = "lucky", pos = { x = 0, y = 4 }},
          {name = "glass", pos = { x = 1, y = 4 }},
          {name = "bonus", pos = { x = 2, y = 4 }},
          {name = "steel", pos = { x = 8, y = 3 }}
        }
      abbr.core = true
      for _, enhancement in ipairs(enhancements) do
        if abbr.enhancement == enhancement.name then
          card.children.floating_sprite:set_sprite_pos(enhancement.pos)
        end
      end
    end
    if abbr.hands_played >= 2 and context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_stone') then
        local key = "m_"..abbr.enhancement
          return {[key] = true}
      end
    end
  end,
}
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
return {name = "Pokemon Jokers 751-780", 
        list = {minior, mimikyu},
}
