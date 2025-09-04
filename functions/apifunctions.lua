pokermon.load_pokemon = function(item)
  item.discovered = true
  if not item.key then
    item.key = item.name
  end
  if not item.custom_pool_func then
    item.in_pool = function(self)
      return pokemon_in_pool(self)
    end
  end
  if not item.config then
    item.config = {}
  end
  if not item.poke_custom_prefix then
    poke_load_atlas(item)
    poke_load_sprites(item)
  end
  if item.ptype then
    if item.config and item.config.extra then
      item.config.extra.ptype = item.ptype
    elseif item.config then
      item.config.extra = {ptype = item.ptype}
    end
  end
  item.set_badges = poke_set_type_badge
  if item.item_req then
    if item.config and item.config.extra then
      item.config.extra.item_req = item.item_req
    elseif item.config then
      item.config.extra = {item_req = item.item_req}
    end
  end
  if item.evo_list then
    if item.config and item.config.extra then
      item.config.extra.evo_list = item.evo_list
    elseif item.config then
      item.config.extra = {item_req = item.evo_list}
    end
  end
  item.discovered = not pokermon_config.pokemon_discovery
  if item.name == "unown" then item.discovered = true end
  local prev_load = item.load
  item.load = function(self, card, card_table, other_card)
    card_table.ability.extra.juiced = nil
    if type(self.calculate) == "function" then
      G.E_MANAGER:add_event(Event({
        func = function()
          self.calculate(self, card, {poke_load = true})
          return true
        end
      }))
    end
    poke_load_individual_sprite(self, card, card_table, other_card)
    if prev_load then
      prev_load(self, card, card_table, other_card)
    end
  end
  if item.poke_multi_sprite then
    local prev_set_sprites = item.set_sprites
    item.set_sprites = function(self, card, front)
      poke_set_sprites(self, card, front)
      if prev_set_sprites then
        prev_set_sprites(self, card, front)
      end
    end
    local prev_set_ability = item.set_ability
    item.set_ability = function(self, card, initial, delay_sprites)
      if prev_set_ability then
        prev_set_ability(self, card, initial, delay_sprites)
      end
      poke_set_sprite_ability(self, card, initial, delay_sprites)
    end
  end
  if item.name == "articuno" then poke_debug(item.atlas) end
  SMODS.Joker(item)
end

pokermon.add_family = function(family)
  table.insert(pokermon.family, family)
end

pokermon.Pokemon = function(item, custom_prefix, custom_atlas)
  if custom_prefix then
    item.poke_custom_prefix = custom_prefix
  end
  if not custom_atlas then
    item.atlas = 'poke_'..item.atlas
    item.poke_no_custom_atlas = true
    item.prefix_config = {atlas = false}
  else
    item.poke_custom_atlas = true
  end
  pokermon.load_pokemon(item)
end

pokermon.Juice = function(item, custom_prefix, set)
  item.berry_juice = true
  local prefix = custom_prefix and 'c_'..custom_prefix..'_' or 'c_'
  local key = item.key or item.name
  if not pokermon.juice_list[set] then
    pokermon.juice_list[set] = prefix..key
  end
  SMODS.Consumable(item)
end