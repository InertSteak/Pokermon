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
  config = { extra = { chips = 0, chip_mod = 10} },
  loc_vars = function(self, info_queue, card)
    pokermon.type_tooltip(self, info_queue, card)
    return { vars = { card.ability.extra.chips, card.ability.extra.chip_mod} }
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex6",
  gen = 6,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card.edition and not context.blueprint then
      return {
        card = context.other_card,
        func = function()
          SMODS.scale_card(card, {
            ref_value = 'chips',
            scalar_value = 'chip_mod',
            message_colour = G.C.CHIPS,
          })
        end
      }
    end
    
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
  end,
  attributes = {"chips", "scaling", "editions"},
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
local pumpkaboo = {
  name = "pumpkaboo",
  pos = { x = 4, y = 9 },
  config = { extra = { jack_target = 5, jacks_discarded = 0, form = 0 } },
  loc_vars = function(self, info_queue, card)
    local extra = card.ability.extra or self.config.extra
    local key = extra.form and ({'small', 'average', 'large', 'super'})[extra.form + 1]

    local display_jacks = math.max(0, extra.jack_target - extra.jacks_discarded)
    return {
      vars = { extra.jack_target, display_jacks },
      key = 'j_poke_pumpkaboo_' .. key
    }
  end,
  rarity = 2,
  cost = 6,
  gen = 6,
  item_req = "linkcable",
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex6",
  blueprint_compat = true,
  poke_custom_values_to_keep = { "jack_target", "jacks_discarded" },
  set_ability = function(self, card, initial, delay_sprites)
    if initial then card.ability.extra.form = pseudorandom_element({0, 1, 2, 3}, pseudoseed('pumpkaboo')) end
    card.ability.extra.jack_target = 4 + card.ability.extra.form
    if self.discovered then
      local form = card.ability.extra.form
      local scale = form and ({ 0.7, 1, 1.1, 1.2 })[form + 1] or 1
      card.T.scale = card.children.center.original_T.scale * scale * 0.95
      self:set_sprites(card)
    end
  end,
  set_sprites = function(self, card, front)
    if pokermon.can_set_sprite(card) then
      if card.loaded then card.loaded = nil; self:set_ability(card) end

      local form = card.ability and card.ability.extra and card.ability.extra.form
      local x_pos = form and ({ 2, 4, 6, 8 })[form + 1] or 4
      card.children.center:set_sprite_pos({ x = x_pos, y = 9 })
    end
  end,
  calculate = function(self, card, context)
    if context.pre_discard and not context.blueprint then
      local jacks = pokermon.filter(context.full_hand, function() return v:get_id() == 11 and not v.debuff end)
      local discarded, target = card.ability.extra.jacks_discarded, card.ability.extra.jack_target
      for _, v in ipairs(jacks) do
        discarded = discarded + 1
        if discarded == target then
          v['pumpkaboo_trigger'..card.unique_val] = true
          discarded = 0
        end
      end
    end
    if context.discard then
      if context.other_card['pumpkaboo_trigger'..card.unique_val] then
        pokermon.create_consumeable({ set = 'Spectral' }, true, card)
      elseif context.other_card:get_id() == 11 and not context.blueprint then
        return {
          message = localize('poke_boo_ex'),
          colour = G.C.RED
        }
      end
    end
    return pokermon.item_evo(self, card, context, "j_poke_gourgeist")
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then self:set_ability(card) end
  end,
  load = function(self, card, card_table, other_card) card.loaded = true end,
  attributes = {"discard", "rank", "jack", "spectral", "generation", "item_evo"},
}
-- Gourgeist 711
local gourgeist = {
  name = "gourgeist",
  pos = { x = 0, y = 10 },
  config = { extra = { jack_target = 5, jacks_discarded = 0, form = -1, money = 6 } },
  loc_vars = function(self, info_queue, card)
    local extra = card.ability.extra or self.config.extra
    local key = extra.form and ({'small', 'average', 'large', 'super'})[extra.form + 1]

    local display_jacks = math.max(0, extra.jack_target - extra.jacks_discarded)
    return {
      vars = { extra.jack_target, display_jacks, extra.money },
      key = 'j_poke_gourgeist_' .. key
    }
  end,
  rarity = "poke_safari",
  cost = 9,
  gen = 6,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex6",
  blueprint_compat = true,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then card.ability.extra.form = pseudorandom_element({0, 1, 2, 3}, pseudoseed('gourgeist')) end
    card.ability.extra.jack_target = 4 + card.ability.extra.form
    if self.discovered then
      local form = card.ability.extra.form
      local scale = form and ({ 0.7, 1, 1.1, 1.2 })[form + 1] or 1
      card.T.scale = card.children.center.original_T.scale * scale * 0.95
      self:set_sprites(card)
    end
  end,
  set_sprites = function(self, card, front)
    if pokermon.can_set_sprite(card) then
      if card.loaded then card.loaded = nil; self:set_ability(card) end

      local form = card.ability and card.ability.extra and card.ability.extra.form
      local x_pos = form and ({ 10, 0, 2, 4 })[form + 1] or 0
      local y_pos = form == 0 and 9 or 10
      card.children.center:set_sprite_pos({ x = x_pos, y = y_pos })
    end
  end,
  calculate = function(self, card, context)
    if context.pre_discard and not context.blueprint then
      local jacks = pokermon.filter(context.full_hand, function() return v:get_id() == 11 and not v.debuff end)
      local discarded, target = card.ability.extra.jacks_discarded, card.ability.extra.jack_target
      for _, v in ipairs(jacks) do
        discarded = discarded + 1
        if discarded == target then
          v['gourgeist_trigger'..card.unique_val] = true
          discarded = 0
        end
      end
    end
    if context.discard then
      if context.other_card['gourgeist_trigger'..card.unique_val]  then
        pokermon.create_consumeable({ set = 'Spectral' }, true, card)
      elseif context.other_card:get_id() == 11 and not context.blueprint then
        return {
          message = localize('poke_boo_ex'),
          colour = G.C.RED
        }
      end
    end
    if context.using_consumeable and context.consumeable.ability.set == 'Spectral' then
      pokermon.ease_poke_dollars(card, "gourgeist", card.ability.extra.money)
      pokermon.apply_type_sticker(G.jokers.cards[1], "Psychic")
      card:juice_up()
      SMODS.calculate_effect({
        message = localize("poke_tera_ex"),
        colour = G.C.SECONDARY_SET.Spectral
      }, G.jokers.cards[1])
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then self:set_ability(card) end
  end,
  load = function(self, card, card_table, other_card) card.loaded = true end,
  attributes = {"discard", "rank", "jack", "spectral", "generation", "economy"},
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
