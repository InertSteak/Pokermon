-- Dragalge 691
-- Clauncher 692
-- Clawitzer 693
-- Helioptile 694
-- Heliolisk 695
-- Tyrunt 696
-- Tyrantrum 697
-- Amaura 698
-- Aurorus 699
-- Sylveon 700
local sylveon={
  name = "sylveon", 
  pos = {x = 8, y = 3},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
      if not center.edition or (center.edition and not center.edition.foil) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      end
      if not center.edition or (center.edition and not center.edition.holo) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      end
    end
    return {vars = {}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex6",
  gen = 6,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 and not context.blueprint then
      local _card = context.scoring_hand[1]
      if _card.config.center == G.P_CENTERS.c_base then
        local edition = poll_edition('aura', nil, true, true)
        _card:set_edition(edition, true, true)
      end
    end
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
}
-- Hawlucha 701
-- Dedenne 702
-- Carbink 703
-- Goomy 704
-- Sliggoo 705
-- Goodra 706
-- Klefki 707
-- Phantump 708
-- Trevenant 709
-- Pumpkaboo 710
local pumpkaboo={
  name = "pumpkaboo",
  pos = {x = 0, y = 0},
  config = {extra = {jack_target = 5, jacks_discarded = 0, form = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local forms = {'j_poke_pumpkaboo_small', 'j_poke_pumpkaboo_average', 'j_poke_pumpkaboo_large', 'j_poke_pumpkaboo_super'}
    return {vars = {center.ability.extra.jack_target, math.max(0, center.ability.extra.jack_target - center.ability.extra.jacks_discarded)}, key = forms[center.ability.extra.form + 1]}
  end,
  rarity = 2,
  cost = 6,
  gen = 6,
  item_req = "linkcable",
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex6",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.form = pseudorandom_element({0, 1, 2, 3}, pseudoseed('pumpkaboo'))
    end
    card.ability.extra.jack_target = 4 + card.ability.extra.form
    local scale = 1
    if card.ability.extra.form == 0 then
      scale = 0.7
    elseif card.ability.extra.form == 1 then
      scale = 1
    elseif card.ability.extra.form == 2 then
      scale = 1.1
    elseif card.ability.extra.form == 3 then
      scale = 1.2
    end
    card.T.w = card.children.center.original_T.w * scale
    card.T.h = card.children.center.original_T.h * scale
    self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    if poke_can_set_sprite(card) then
      if card.loaded then
        card.loaded = nil
        self:set_ability(card)
      end
      if card.ability and card.ability.extra and card.ability.extra.form == 1 then
        card.children.center:set_sprite_pos({x = 2, y = 9})
      elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then
        card.children.center:set_sprite_pos({x = 4, y = 9})
      elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then  
        card.children.center:set_sprite_pos({x = 6, y = 9})
      else
        card.children.center:set_sprite_pos({x = 0, y = 9})
      end
    end
  end,
  calculate = function(self, card, context)
    if context.discard and not context.other_card.debuff and context.other_card:get_id() == 11 then
      if card.ability.extra.jacks_discarded == card.ability.extra.jack_target - 1 then
        card.ability.extra.jacks_discarded = 0
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          G.E_MANAGER:add_event(Event({
            func = (function()
                SMODS.add_card {
                    set = 'Spectral'
                }
                G.GAME.consumeable_buffer = 0
                return true
            end)
          }))
          return {
              message = localize('k_plus_spectral'),
              colour = G.C.SECONDARY_SET.Spectral,
          }
        end
      else
        card.ability.extra.jacks_discarded = card.ability.extra.jacks_discarded + 1
        return {
            message = localize('poke_boo_ex'),
            colour = G.C.RED
        }
      end
    end
    return item_evo(self, card, context, "j_poke_gourgeist")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      self:set_ability(card)
    end
  end,
  load = function(self, card, card_table, other_card)
    card.loaded = true
  end
}
-- Gourgeist 711
local gourgeist={
  name = "gourgeist",
  pos = {x = 0, y = 0},
  config = {extra = {jack_target = 5, jacks_discarded = 0, form = -1, money = 6}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local forms = {'j_poke_gourgeist_small', 'j_poke_gourgeist_average', 'j_poke_gourgeist_large', 'j_poke_gourgeist_super'}
    return {vars = {center.ability.extra.jack_target, math.max(0, center.ability.extra.jack_target - center.ability.extra.jacks_discarded), center.ability.extra.money}, 
            key = forms[center.ability.extra.form + 1]}
  end,
  rarity = "poke_safari",
  cost = 9,
  gen = 6,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex6",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      card.ability.extra.form = pseudorandom_element({0, 1, 2, 3}, pseudoseed('gourgeist'))
    end
    card.ability.extra.jack_target = 4 + card.ability.extra.form
    local scale = 1
    if card.ability.extra.form == 0 then
      card.ability.extra.money = 2
      scale = 0.7
    elseif card.ability.extra.form == 1 then
      card.ability.extra.money = 5
      scale = 1
    elseif card.ability.extra.form == 2 then
      card.ability.extra.money = 8
      scale = 1.1
    elseif card.ability.extra.form == 3 then
      card.ability.extra.money = 11
      scale = 1.2
    end
    card.T.w = card.children.center.original_T.w * scale
    card.T.h = card.children.center.original_T.h * scale
    self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    if poke_can_set_sprite(self) then
      if card.loaded then
        card.loaded = nil
        self:set_ability(card)
      end
      if card.ability and card.ability.extra and card.ability.extra.form == 1 then
        card.children.center:set_sprite_pos({x = 10, y = 9})
      elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then
        card.children.center:set_sprite_pos({x = 0, y = 10})
      elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then  
        card.children.center:set_sprite_pos({x = 2, y = 10})
      else
        card.children.center:set_sprite_pos({x = 8, y = 9})
      end
    end
  end,
  calculate = function(self, card, context)
    if context.discard and not context.other_card.debuff and context.other_card:get_id() == 11 then
      if card.ability.extra.jacks_discarded == card.ability.extra.jack_target - 1 then
        card.ability.extra.jacks_discarded = 0
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          G.E_MANAGER:add_event(Event({
            func = (function()
                SMODS.add_card {
                    set = 'Spectral'
                }
                G.GAME.consumeable_buffer = 0
                return true
            end)
          }))
          return {
              message = localize('k_plus_spectral'),
              colour = G.C.SECONDARY_SET.Spectral,
          }
        end
      else
        card.ability.extra.jacks_discarded = card.ability.extra.jacks_discarded + 1
        return {
            message = localize('poke_boo_ex'),
            colour = G.C.RED
        }
      end
    end
    if context.using_consumeable and context.consumeable.ability.set == 'Spectral' then
      ease_poke_dollars(card, "gourgeist", card.ability.extra.money)
      apply_type_sticker(G.jokers.cards[1], "Psychic")
      card:juice_up()
      card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      self:set_ability(card)
    end
  end,
  load = function(self, card, card_table, other_card)
    card.loaded = true
  end
}
-- Bergmite 712
-- Avalugg 713
-- Noibat 714
-- Noivern 715
-- Xerneas 716
-- Yveltal 717
-- Zygarde 718
-- Diancie 719
-- Hoopa 720
return {name = "Pokemon Jokers 691-720", 
        list = {sylveon, pumpkaboo, gourgeist},
}
