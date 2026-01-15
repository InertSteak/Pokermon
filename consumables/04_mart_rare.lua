local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Item",
  helditem = true,
  config = {extra = {joker_highlighted = 1, money_mod = 2, usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {self.config.extra.joker_highlighted, self.config.extra.money_mod}}
  end,
  pos = { x = 7, y = 4 },
  soul_pos = { x = 6, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  hidden = true,
  soul_set = "Item",
  soul_rate = .025,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) then return false end
    if #G.jokers.cards == 0 then return false end
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local target = nil
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      target = G.jokers.cards[1]
    else
      target = G.jokers.highlighted[1]
    end
    target.ability.extra_value = target.ability.extra_value + card.ability.extra.money_mod
    target:set_cost()
    G.E_MANAGER:add_event(Event({
      func = function() card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
    end}))
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 6, y = 5 })
    end
  end,
  set_sprites = function(self, card, front)
    if card.no_load_reusable_sprite then
      card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
      card.no_load_reusable_sprite = nil
    end
  end,
  load = function(self, card, card_table, other_card)
    if not card_table.ability.extra.usable then
      card.no_load_reusable_sprite = true
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local heavyboots = {
  name = "heavyboots",
  key = "heavyboots",
  set = "Item",
  helditem = true,
  config = {extra = {usable = true, hazard_off = false}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {}}
  end,
  pos = { x = 3, y = 7 },
  soul_pos = { x = 4, y = 7 },
  atlas = "AtlasConsumablesBasic",
  artist = {{name = "Emma", layer = "soul"}, {name = "Catzzadilla", layer = "center"}},
  cost = 4,
  unlocked = true,
  discovered = true,
  hidden = true,
  soul_set = "Item",
  soul_rate = .01,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    card.ability.extra.usable = false
    card.ability.extra.hazard_off = true
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.fix_probability and card.ability.extra.hazard_off and context.identifier == 'hazard' then
      return {
        numerator = 0,
      }
    end
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 4, y = 7 })
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
          card.ability.extra.hazard_off = false
          return true
        end
      }))
      
    end
  end,
  set_sprites = function(self, card, front)
    if card.no_load_reusable_sprite then
      card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
      card.no_load_reusable_sprite = nil
    end
  end,
  load = function(self, card, card_table, other_card)
    if not card_table.ability.extra.usable then
      card.no_load_reusable_sprite = true
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return G.GAME.round_resets.hazard_level and G.GAME.round_resets.hazard_level > 0
  end,
}

local teraorb = {
  name = "teraorb",
  key = "teraorb",
  set = "Item",
  config = {extra = {change_to_type = "Grass"}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    local info = center.ability.extra or self.config.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {info.change_to_type, colours = {G.ARGS.LOC_COLOURS[string.lower(info.change_to_type)]}}}
    local highlight_colour = info.change_to_type ~= "Lightning" and G.C.WHITE or G.C.BLACK
    return {vars = {info.change_to_type, colours = {G.ARGS.LOC_COLOURS[string.lower(info.change_to_type)], highlight_colour}}}
  end,
  pos = { x = 2, y = 9 },
  soul_pos = { x = 3, y = 9 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  soul_set = "Item",
  soul_rate = .045,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    local choice = poke_find_leftmost_or_highlighted()
    if is_type(choice, card.ability.extra.change_to_type) then
      energy_increase(choice, get_type(choice))
    end
    apply_type_sticker(choice, card.ability.extra.change_to_type)
    card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
        local change_list = {}
        for i = 1, #poketype_list do
          if card.ability.extra.change_to_type ~= poketype_list[i] then
            change_list[#change_list + 1] = poketype_list[i]
          end
        end
        card.ability.extra.change_to_type = pseudorandom_element(change_list, 'tera')
        G.E_MANAGER:add_event(Event({
          func = function()
            self:set_sprites(card)
            return true
          end
        }))
  
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.change_to_type, colour = G.ARGS.LOC_COLOURS[string.lower(card.ability.extra.change_to_type)]})
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
      card.ability.extra.change_to_type = pseudorandom_element(poketype_list, 'tera')
      
      self:set_sprites(card)
    end
  end,
  set_sprites = function(self, card, front)
    local info = card.ability and card.ability.extra or self.config.extra
    local sprite_locations = {grass = {x = 2, y = 9}, fire = {x = 0, y = 9}, water = {x = 2, y = 10}, lightning = {x = 4, y = 9}, psychic = {x = 8, y = 9}, fighting = {x = 8, y = 8},
                              colorless = {x = 0, y = 10}, dark = {x = 0, y = 8}, metal = {x = 6, y = 9}, fairy = {x = 6, y = 8}, dragon = {x = 2, y = 8}, earth = {x = 4, y = 8}}
    local sprite_x = sprite_locations[string.lower(info.change_to_type)].x
    local sprite_y = sprite_locations[string.lower(info.change_to_type)].y
    
    card.children.center:set_sprite_pos({x = sprite_x, y = sprite_y})
    card.children.floating_sprite:set_sprite_pos({x = sprite_x + 1, y = sprite_y})
  end,
  in_pool = function(self)
    return true
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Item",
  helditem = true,
  config = {max_highlighted = 1, bonus = 10, extra = {usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {self.config.max_highlighted, self.config.bonus}}
  end,
  pos = { x = 9, y = 4 },
  soul_pos = { x = 8, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  hidden = true,
  soul_set = "Item",
  soul_rate = .025,
  can_use = function(self, card)
    if card.area == G.shop_jokers then return false end
    if G.hand.highlighted and #G.hand.highlighted ~= 1 then return false end
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    local current_bonus = conv_card.ability.perma_bonus or 0
    juice_flip(card)
    conv_card.ability.perma_bonus = current_bonus + self.config.bonus
    juice_flip(card, true)
    delay(0.5)
    poke_unhighlight_cards()
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 8, y = 5 })
    end
  end,
  set_sprites = function(self, card, front)
    if card.no_load_reusable_sprite then
      card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
      card.no_load_reusable_sprite = nil
    end
  end,
  load = function(self, card, card_table, other_card)
    if not card_table.ability.extra.usable then
      card.no_load_reusable_sprite = true
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}


local list = {leftovers, heavyboots, teraorb, thickclub}

return {name = "AtlasConsumablesBasic 4",
        list = list
}