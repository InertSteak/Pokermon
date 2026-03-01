extended_family = {
  tauros = {"miltank"},
  unown = {"ruins_of_alph", "unown_swarm"},
  luvdisc = {{item = true, name = "heartscale"}},
  shuckle = {{item = true, name = "berry_juice"}, {item = true, name = "berry_juice_tarot"}, {item = true, name = "berry_juice_planet"}, {item = true, name = "berry_juice_spectral"}, 
             {item = true, name = "berry_juice_item"}, {item = true, name = "berry_juice_energy"}, {item = true, name = "berry_juice_mystery"}},
  rotom = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  rotomh = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  rotomw = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  rotomf = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  rotomfan = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  rotomm = {{item = true, name = "oven"}, {item = true, name = "washing_machine"}, {item = true, name = "fridge"}, {item = true, name = "fan"}, {item = true, name = "lawn_mower"}},
  deoxys = {{item = true, name = "meteorite"}}
}

type_sticker_applied = function(card)
  if not card then return false end
  for _, ptype in ipairs(POKE_TYPES) do
    if card.ability[ptype:lower() .. '_sticker'] then
      return ptype
    end
  end
  return false
end

find_pokemon_type = function(target_type, exclude_card, exclude_name)
  local found = {}
  if G.jokers and G.jokers.cards then
    for k, v in pairs(G.jokers.cards) do
      if is_type(v, target_type) and v ~= exclude_card and v.ability.name ~= exclude_name then
        table.insert(found, v)
      end
    end
  end
  return found
end

is_type = function(card, target_type)
  return card and get_type(card) == target_type
end

get_type = function(card)
  if card.ability then
    local sticker = type_sticker_applied(card)
    if sticker then
      return sticker
    elseif type(card.ability.extra) == "table" and card.ability.extra.ptype then
      return card.ability.extra.ptype
    end
  end
  return nil
end

copy_scaled_values = function(card)
  local values = {mult = 0, chips = 0, Xmult = 0, Xmult_multi = 0, money = 0}
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" then
    for l, v in pairs(values) do
      if card.ability.extra[l] and (card.ability.extra[l.."_mod"] or card.ability.extra[string.sub(l, 1, -2).."_mod"]) or card.config.center.copy_scaled then
        values[l] = card.ability.extra[l]
      end
    end
  end
  return values
end

poke_fake_evolve = function(card, evolve_message, set_sprites)
    G.E_MANAGER:add_event(Event({
      func = function()
        if card.evolution_timer then return true end
        card.evolution_timer = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'ease',
            ref_table = card,
            ref_value = 'evolution_timer',
            ease_to = 1.5,
            delay = 2.0,
            func = (function(t) return t end)
        }))
        if set_sprites then
          G.E_MANAGER:add_event(Event({
            func = function()
              card:set_sprites(card.config.center)
              return true
            end
          }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'ease',
            ref_table = card,
            ref_value = 'evolution_timer',
            ease_to = 2.25,
            delay = 1.0,
            func = (function(t) return t end)
        }))
        G.E_MANAGER:add_event(Event({
          func = function()
            card.evolution_timer = nil
            play_sound('tarot1')
            card_eval_status_text(card, 'extra', nil, nil, nil, { message = evolve_message or localize("poke_evolve_success"), colour = G.C.FILTER, instant = true})
            return true
          end
        }))
        return true
      end
    }))
end

poke_evolve = function(card, to_key, immediate, evolve_message, transformation, energize_amount)
  if G.GAME.modifiers.apply_randomizer and not transformation then
    to_key = get_random_poke_key('randomizer')
  end
  if immediate then
    poke_backend_evolve(card, to_key, energize_amount)
  else
    G.E_MANAGER:add_event(Event({
      func = function()
        if card.evolution_timer or G.P_CENTERS[to_key] == card.config.center then return true end
        card.evolution_timer = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'ease',
            ref_table = card,
            ref_value = 'evolution_timer',
            ease_to = 1.5,
            delay = 2.0,
            func = (function(t) return t end)
        }))
        G.E_MANAGER:add_event(Event({
          func = function()
            poke_backend_evolve(card, to_key, energize_amount)
            return true
          end
        }))
        G.E_MANAGER:add_event(Event({
            trigger = 'ease',
            ref_table = card,
            ref_value = 'evolution_timer',
            ease_to = 2.25,
            delay = 1.0,
            func = (function(t) return t end)
        }))
        G.E_MANAGER:add_event(Event({
          func = function()
            card.evolution_timer = nil
            play_sound('tarot1')
            card_eval_status_text(card, 'extra', nil, nil, nil, { message = evolve_message or localize("poke_evolve_success"), colour = G.C.FILTER, instant = true})
            return true
          end
        }))
        return true
      end
    }))
  end
end

-- Stolen from Cardsauce
-- Based on code from Ortalab
poke_backend_evolve = function(card, to_key, energize_amount)
  local custom_values_to_keep = {}
  local has_custom_values_to_keep = nil
  local trigger_add = nil
  local new_card = G.P_CENTERS[to_key]
  if card.config.center == new_card then return end
  
  local old_key = card.config.center.key
  
  --turn off multisprite on evolution
  if card.config.center.poke_multi_sprite and card.ability and card.ability.extra then
    card.ability.extra.loaded_pos = nil
    card.ability.extra.loaded_sprite = nil
  end
  
  -- if it's not a mega and not a devolution and still has rounds left, reset perish tally
  if card.ability.perishable and card.config.center.rarity ~= "poke_mega" then
    if card.ability.perish_tally == 0 then trigger_add = true end
    card.ability.perish_tally = G.GAME.perishable_rounds
    card.debuff = false
  end

  local names_to_keep = {"targets", "rank", "id", "cards_scored", "upgrade", "hazards_drawn", "energy_count", "c_energy_count", "e_limit_up", "form", "jack_target", "jacks_discarded"}
  if type_sticker_applied(card) then
    table.insert(names_to_keep, "ptype")
  end
  local values_to_keep = copy_scaled_values(card)
  if type(card.ability.extra) == "table" then
    for _, k in pairs(names_to_keep) do
      values_to_keep[k] = card.ability.extra[k]
    end
  end
  
  -- value filtering
  if values_to_keep.hazards_drawn then
    values_to_keep.hazards_drawn = values_to_keep.hazards_drawn % 2
  end

  if values_to_keep.cards_scored and values_to_keep.cards_scored >= 15 and card.config.center.name == "spearow" then
    values_to_keep.upgrade = true
    values_to_keep.cards_scored = values_to_keep.cards_scored - 15
  end
  
  if card.config.center.poke_custom_values_to_keep then
    for k, v in pairs(card.config.center.poke_custom_values_to_keep) do
      custom_values_to_keep[v] = card.ability.extra[v]
    end
    has_custom_values_to_keep = true
  end
  
  card.children.center = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[new_card.atlas or "Joker"], new_card.pos)
  card.children.center.states.hover = card.states.hover
  card.children.center.states.click = card.states.click
  card.children.center.states.drag = card.states.drag
  card.children.center.states.collide.can = false
  card.children.center:set_role({major = card, role_type = 'Glued', draw_major = card})
  card:set_ability(new_card, true)
  card:set_cost()

  if type(card.ability.extra) == "table" then
    for k,v in pairs(values_to_keep) do
      if card.ability.extra[k] or k == "energy_count" or k == "c_energy_count" or k == "e_limit_up" then
        if type(card.ability.extra[k]) ~= "number" or (type(v) == "number" and v > card.ability.extra[k]) or k == "form" or k == "jack_target" then
          card.ability.extra[k] = v
        end
      end
    end
    if values_to_keep["form"] and type(new_card.set_ability) == 'function' then
      new_card:set_ability(card)
    end
    if card.ability.extra.energy_count or card.ability.extra.c_energy_count then
      energize(card, nil, true, true)
    end
  end
  
  if has_custom_values_to_keep then
    for k, v in pairs(custom_values_to_keep) do
      card.ability.extra[k] = v
    end
  end

  if new_card.soul_pos then
    card.children.floating_sprite = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[new_card.atlas or "Joker"], new_card.soul_pos)
    card.children.floating_sprite.role.draw_major = card
    card.children.floating_sprite.states.hover.can = false
    card.children.floating_sprite.states.click.can = false
  elseif card.children.floating_sprite then
    card.children.floating_sprite:remove()
    card.children.floating_sprite = nil
  end

  if not card.edition then
    card:juice_up()
    play_sound('generic1')
  else
    card:juice_up(1, 0.5)
    if card.edition.foil then play_sound('foil1', 1.2, 0.4) end
    if card.edition.holo then play_sound('holo1', 1.2*1.58, 0.4) end
    if card.edition.polychrome then play_sound('polychrome1', 1.2, 0.7) end
    if card.edition.negative then play_sound('negative', 1.5, 0.4) end
    if card.edition.poke_shiny then
      play_sound('poke_e_shiny', 1, 0.2)
      G.P_CENTERS.e_poke_shiny.on_load(card)
    end
  end
  
  if trigger_add then
    card:add_to_deck()
  end
  
  if energize_amount then
    energy_increase(card, 'Trans', energize_amount)
  end
end

can_evolve = function(self, card, context, forced_key, ignore_step, allow_level)
  if not G.P_CENTERS[forced_key] then return false end
  if next(find_joker("everstone")) and not allow_level then return false end
  if (context.evolution or ignore_step) and not context.blueprint and not card.gone then
    return true
  else
    return false
  end
end

level_evo = function(self, card, context, forced_key)
    if not card.ability.extra.rounds then return end
    if card.debuff then return end
    if can_evolve(self, card, context, forced_key) then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
      end
      if card.ability.extra.rounds <= 0 then
        return {
          message = poke_evolve(card, forced_key)
        }
      elseif card.ability.extra.rounds > 0 then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    elseif can_evolve(self, card, context, forced_key, nil, true) then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    end
    if can_evolve(self, card, context, forced_key, true) and card.ability.extra.rounds <= 1 and not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return card.ability.extra.rounds and card.ability.extra.rounds <= 1 and not next(find_joker("everstone")) and card.ability.extra.juiced end
      juice_card_until(card, eval, true)
    end
end

item_evo = function(self, card, context, forced_key)
    if (card.ability.extra.evolve and ((card.ability.extra.evolve == true) or type(card.ability.extra.evolve) == "string")) then
      if type(card.ability.extra.evolve) == "string" then
        forced_key = card.ability.extra.evo_list[card.ability.extra.evolve]
      end
      if forced_key and can_evolve(self, card, context, forced_key) then
        card.ability.extra.evolve = nil
        return {
          message = poke_evolve(card, forced_key)
        }
      end

      if can_evolve(self, card, context, forced_key, true) then
        if not card.ability.extra.juiced then
          card.ability.extra.juiced = true
          local eval = function(card) return card.ability.extra.evolve and not card.REMOVED and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
      
    end
end

scaling_evo = function (self, card, context, forced_key, current, target, evo_message)
  if (SMODS.Mods["Talisman"] or {}).can_load then
    current = to_big(current)
    target = to_big(target)
  end
  if can_evolve(self, card, context, forced_key) and current >= target then
    return {
      message = poke_evolve(card, forced_key, nil, evo_message)
    }
  end
  if can_evolve(self, card, context, forced_key, true) and current >= target then
    if not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return current >= target and not card.REMOVED and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
end

type_evo = function (self, card, context, forced_key, type_req)
  if can_evolve(self, card, context, forced_key) and card.ability[type_req.."_sticker"] then
    return {
      message = poke_evolve(card, forced_key)
    }
  elseif can_evolve(self, card, context, forced_key, true) and card.ability[type_req.."_sticker"] then
    if not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return card.ability[type_req.."_sticker"] and not card.REMOVED and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
end

deck_suit_evo = function (self, card, context, forced_key, suit, percentage)
  if can_evolve(self, card, context, forced_key) then
    local suit_count = 0
    for k, v in pairs(G.playing_cards) do
      if v:is_suit(suit) then suit_count = suit_count + 1 end
    end
    if suit_count/#G.playing_cards >= percentage then
      return {
        message = poke_evolve(card, forced_key)
      }
    end
  end
end

deck_enhance_evo = function (self, card, context, forced_key, enhancement, percentage, flat)
  if can_evolve(self, card, context, forced_key) then
    local enhance_count = 0
    for k, v in pairs(G.playing_cards) do
      if v.ability.name == enhancement.." Card" then enhance_count  = enhance_count  + 1 end
    end
    if percentage and (enhance_count/#G.playing_cards >= percentage) then
      return {
        message = poke_evolve(card, forced_key)
      }
    elseif flat and (enhance_count >= flat) then
      return {
        message = poke_evolve(card, forced_key)
      }
    end
  end
end

deck_seal_evo = function (self, card, context, forced_key, seal, percentage, flat)
  if can_evolve(self, card, context, forced_key) then
    local seal_count = 0
    for k, v in pairs(G.playing_cards) do
      if seal and v.seal == seal then 
        seal_count = seal_count + 1 
      elseif not seal and v.seal then
        seal_count = seal_count + 1 
      end
    end
    if percentage and (seal_count/#G.playing_cards >= percentage) then
      return {
        message = poke_evolve(card, forced_key)
      }
    elseif flat and (seal_count >= flat) then
      return {
        message = poke_evolve(card, forced_key)
      }
    end
  end
end

get_lowest_evo = function(card)
  local name = card.name or card.ability.name or "bulbasaur"
  local prefix = "j_"..(card.config.center.poke_custom_prefix or "poke").."_"
  
  local family = poke_get_family_list(name)
  
  --Nice and simple, we just want the lowest value, which should be the first
  --In the case the family is one joker, just return the name
  return (type(family[1]) == "table" and family[1].key) or family[1] or name
end

get_highest_evo = function(card)
  local name = card.name or card.ability.name or "bulbasaur"
  local prefix = "j_"..(card.config.center.poke_custom_prefix or "poke").."_"

  -- if there's an override then return early
  if HIGHEST_EVO_OVERRIDES[name] then
    local evos = HIGHEST_EVO_OVERRIDES[name]
    return (#evos == 1 and evos[1]) or pseudorandom_element(evos, pseudoseed('highest'))
  end
  -- if already at highest stage, return early
  if POKE_STAGES[card.config.center.stage].next == nil then return end

  -- find the pokermon's family list
  local family = poke_get_family_list(name)
  -- if pokermon isn't in a family, return false
  if #family < 2 then return false end
  -- Check for max evo in family list, ignoring megas and aux pokermon
  local max = #family
  local max_evo_name = (type(family[max]) == "table" and family[max].key) or family[max]
  local max_stage = POKE_STAGES[G.P_CENTERS[prefix..max_evo_name].stage]

  while max > 1 and (max_stage.prev == nil or G.P_CENTERS[prefix..max_evo_name].aux_poke) do
    max = max - 1
    max_evo_name = (type(family[max]) == "table" and family[max].key) or family[max]
    max_stage = POKE_STAGES[G.P_CENTERS[prefix..max_evo_name].stage]
  end
  max_stage = G.P_CENTERS[prefix..max_evo_name].stage

  -- check if max stage is the same as card's, and check split evo weirdness
  if max_stage ~= "Legendary" and card.config.center.stage == max_stage then return
  elseif max_stage ~= "Legendary" and POKE_STAGES[card.config.center.stage].next == max_stage
    and get_previous_evo_from_center(G.P_CENTERS[prefix..max_evo_name], true) ~= card.config.center_key then return
  end

  -- find pokermon in family list with max stage
  local evos = {max_evo_name}
  for _, v in pairs(family) do
    local curr_name = (type(v) == "table" and v.key) or v
    if G.P_CENTERS[prefix..curr_name].stage == max_stage and curr_name ~= max_evo_name
      and G.P_CENTERS[prefix..curr_name].stage ~= "Legendary"
      and G.P_CENTERS[prefix..curr_name].aux_poke ~= true then
        table.insert(evos, curr_name)
    end
  end
  return (#evos == 1 and evos[1]) or pseudorandom_element(evos, pseudoseed('highest'))
end

get_mega = function(card)
  if not card.config.center.megas then return end
  if #card.config.center.megas == 1 then return card.config.center.megas[1] end
  -- Leftmost = X, Rightmost = Y, Middle = Random
  local mega
  if #G.jokers.cards == 1 then mega = pseudorandom_element(card.config.center.megas, pseudoseed('megastone'))
  elseif card == G.jokers.cards[1] then mega = card.config.center.megas[1]
  elseif card == G.jokers.cards[#G.jokers.cards] then mega = card.config.center.megas[2]
  else mega = pseudorandom_element(card.config.center.megas, pseudoseed('megastone')) end
  return mega
end

get_previous_from_mega = function(name, prefix, full_key)
  local prev = string.sub(name, 6, -1)
  -- string.match here wants to catch '_x', '_y' and '_z' at the end of the key
  prev = string.gsub(prev, '_%a$', '')
  local prev_key = "j_"..prefix.."_"..prev
  return G.P_CENTERS["j_"..prefix.."_"..prev] and (full_key and prev_key or prev)
end

get_previous_evo = function(card, full_key)
  local center = card.config.center
  return get_previous_evo_from_center(center, full_key)
end

get_previous_evo_from_center = function(center, full_key)
  local name = center.name or "bulbasaur"
  local index, prev
  local prefix = center.poke_custom_prefix or "poke"

  if PREVIOUS_EVO_OVERRIDES[name] then
    prev = PREVIOUS_EVO_OVERRIDES[name]
    return full_key and "j_"..prefix.."_"..prev or prev
  end

  if center.stage == "Mega" then
    local mega = get_previous_from_mega(name, prefix, full_key)
    if mega then return mega end
  end

  local list = poke_get_family_list(name)
  if #list < 2 then return end
  for i, v in pairs(list) do
    if name == (type(v) == 'table' and v.key or v) then index = i; break end
  end
  while index > 1 do
    index = index - 1
    local prev_name = type(list[index]) == 'table' and list[index].key or list[index]
    local prev_center = G.P_CENTERS['j_'..prefix..'_'..prev_name]
    if prev_center.stage == get_previous_stage(center.stage) and not center.aux_poke then
      prev = prev_center.name
      break
    end
  end

  if not prev then return end
  return full_key and "j_"..prefix.."_"..prev or prev
end

get_family_keys = function(card)
  local keys = {}
  local center = card.config.center
  local line = poke_get_family_list(center.name)
  local prefix = center.poke_custom_prefix or 'poke'
  local full_prefix = (center.poke_multi_item and 'c_' or 'j_')..prefix..'_'
  if #line > 1 then
    for i = 1, #line do
      if type(line[i]) == "table" then
        local new_table = copy_table(line[i])
        new_table.key = full_prefix..line[i].key
        table.insert(keys, new_table)
      else
        table.insert(keys, full_prefix..line[i])
      end
    end
  else
    table.insert(keys, full_prefix..center.name)
  end
  for k, v in pairs(extended_family) do
    if k == center.name then
      for _, y in pairs(v) do
        if type(y) == "table" then
          if y.item then
            local item_prefix = y.custom_prefix or "c_poke_"
            table.insert(keys, item_prefix..y.name)
          else
            table.insert(keys, full_prefix..y.name)
          end
        else
          table.insert(keys, full_prefix..y)
        end
      end
    end
  end
  if center.name == "smeargle" then
    if card.ability.extra.copy_joker then
      table.insert(keys, card.ability.extra.copy_joker.config.center_key)
    end
  end
  if center.name == "ruins_of_alph" then
    for _, v in pairs(card.ability.extra.forms) do
      local form = {key = "j_poke_unown", form = v}
      table.insert(keys, form)
    end
  end
  local evo_item_keys = get_evo_item_keys(card)
  table.append(keys, evo_item_keys)
  return keys
end

get_evo_item_keys = function(card)
  local keys = {}
  if card and card.config and card.config.center and card.config.center.item_req then
    local prefix = card.config.center.poke_custom_prefix
    local item_key, evo_item_prefix
    if type(card.config.center.item_req) == "table" then
      for i = 1, #card.config.center.item_req do
        evo_item_prefix = table.contains(native_evo_items, card.config.center.item_req[i]) and 'poke' or prefix
        item_key = 'c_'..(evo_item_prefix)..'_'..card.config.center.item_req[i]
        table.insert(keys, item_key)
      end
    else
      evo_item_prefix = table.contains(native_evo_items, card.config.center.item_req) and 'poke' or prefix
      item_key = 'c_'..(evo_item_prefix)..'_'..card.config.center.item_req
      table.insert(keys, item_key)
    end
  end
  return keys
end

evo_item_use = function(self, card, area, copier)
    local applied = false
    local evolve = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true and not v.debuff then
        if v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) ~= "table" and v.ability.extra.item_req == self.name and not v.ability.extra.evolve then
          evolve = true
        elseif v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) == "table" and not v.ability.extra.evolve then
          for l, p in pairs(v.ability.extra.item_req) do
            if p == self.name then
              evolve = p
            end
          end
        end
        
        if evolve then
          v.ability.extra.evolve = evolve
          applied = true
          local eval = function(v) return v.ability.extra.evolve end
          juice_card_until(v, eval, true)
        end
      end
    end
    return evolve
end

highlighted_evo_item = function(self, card, area, copier)
    local evolve = false
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
    local choice = G.jokers.highlighted[1]
    if choice.debuff then return false end
    if choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and type(choice.ability.extra.item_req) ~= "table" and choice.ability.extra.item_req == self.name and 
       not choice.ability.extra.evolve then
      evolve = true
    elseif choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and type(choice.ability.extra.item_req) == "table" and not choice.ability.extra.evolve then
      for l, p in pairs(choice.ability.extra.item_req) do
        if p == self.name then
          evolve = p
        end
      end
    end
    
    if evolve then
      choice.ability.extra.evolve = evolve
      local eval = function(choice) return choice.ability.extra.evolve end
      juice_card_until(choice, eval, true)
    end
    return evolve
end

function is_evo_item_for(self, card)
  if not card.ability or type(card.ability.extra) ~= "table" or card.ability.extra.evolve then return false end

  if type(card.ability.extra.item_req) == "table" then
    for _, item in pairs(card.ability.extra.item_req) do
      if item == self.name then
        return true
      end
    end
  end
  return card.ability.extra.item_req == self.name
end

evo_item_use_total = function(self, card, area, copier)
    local evolve = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      evolve = highlighted_evo_item(self, card, area, copier)
    end
    if not evolve then
      evolve = evo_item_use(self, card, area, copier)
    end
    return evolve
end

evo_item_in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) ~= "table" and v.ability.extra.item_req == self.name then
          return true
        elseif v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.item_req) == "table" then
          for l, p in pairs(v.ability.extra.item_req) do
            if p == self.name then
              return true
            end
          end
        end
      end
    end
    return false
end

type_tooltip = function(self, info_queue, center)
  local percent
  if (center.ability and center.ability.extra and type(center.ability.extra) == "table" and (get_total_energy(center) ~= 0)) then
      info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {get_total_energy(center), energy_max + (G.GAME.energy_plus or 0) + (center.ability.extra.e_limit_up or 0)}}
      if center.ability.money_frac and center.ability.money_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
      if center.ability.money1_frac and center.ability.money1_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money1_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
      if center.ability.money2_frac and center.ability.money2_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money2_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
      if center.ability.money_mod_frac and center.ability.money_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_progress", vars = {percent}}
        end
      end
      if center.ability.mult_mod_frac and center.ability.mult_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.mult_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "mult_progress", vars = {percent}}
        end
      end
      if center.ability.chip_mod_frac and center.ability.chip_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.chip_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "chip_progress", vars = {percent}}
        end
      end
  elseif (center.ability and (get_total_energy(center) > 0)) then
      info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {get_total_energy(center), energy_max + (G.GAME.energy_plus or 0)}}
      if center.ability.money_frac then
        percent = tonumber(string.format('%.3f', center.ability.money_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
  end
  if self.megas and pokermon_config.detailed_tooltips then
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    if #self.megas > 1 and next(SMODS.find_card('c_poke_megastone')) then
      local mega_names = {}
      for _, mega in ipairs(self.megas) do
        local prefix = self.poke_custom_prefix or "poke"
        local key = "j_"..prefix.."_"..mega
        mega_names[#mega_names+1] = localize({type = "name_text", set = "Joker", key = key})
      end
      info_queue[#info_queue+1] = {set = 'Other', key = 'split_mega', vars = mega_names}
    end
  end
end

poke_set_type_badge = function(self, card, badges)
  local ptype = get_type(card)
  if ptype then
    local lower_ptype = string.lower(ptype)
    local text_colour = G.C.WHITE
    if ptype == "Lightning" then
      text_colour = G.C.BLACK
    end
    ptype = localize('poke_'..lower_ptype..'_badge')
    if type_sticker_applied(card) then
      ptype = ptype.." "..localize("poke_tera")
    end
    if lower_ptype == "bird" then
      if math.random(0,5) == 5 then ptype = nil end
    end
    badges[#badges+1] = create_badge(ptype, G.ARGS.LOC_COLOURS[lower_ptype], text_colour, 1.2 )
  end
end

apply_type_sticker = function(card, sticker_type)
  local apply_type = nil
  
  if sticker_type then
    apply_type = sticker_type
    card.ability[string.lower(apply_type).."_sticker"] = true
  else
    apply_type = pseudorandom_element(poketype_list, pseudoseed("tera"))
    card.ability[string.lower(apply_type).."_sticker"] = true
  end
  
  for l, v in pairs(poketype_list) do
    if string.lower(v) ~= string.lower(apply_type) then
      card.ability[string.lower(v).."_sticker"] = false
    end
  end
  
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype then
    card.ability.extra.ptype = apply_type 
  end
  
  if card.config and type(card.config) == "table" and card.config.center and type(card.config.center) == "table" and not card.config.center.stage 
     and not G.P_CENTERS[card.config.center_key].taken_ownership then
    if G.P_CENTERS[card.config.center_key].loc_vars and type(G.P_CENTERS[card.config.center_key].loc_vars) == "function" then
      local lv = G.P_CENTERS[card.config.center_key].loc_vars
      local badge = G.P_CENTERS[card.config.center_key].set_badges
      SMODS.Joker:take_ownership(card.config.center_key, {
        unlocked = true, 
        discovered = true,
        loc_vars = function(self, info_queue, center)
          type_tooltip(self, info_queue, center)
          return lv(self, info_queue, center)
        end,
        set_badges = function(self, card, badges)
          if badge then badge(self, card, badges) end
          poke_set_type_badge(self, card, badges)          
        end,
      }, true)
    else
      local badge = G.P_CENTERS[card.config.center_key].set_badges
      SMODS.Joker:take_ownership(card.config.center_key, {
        unlocked = true,
        discovered = true,
        loc_vars = function(self, info_queue, center)
          type_tooltip(self, info_queue, center)
        end,
        set_badges = function(self, card, badges)
          if badge then badge(self, card, badges) end
          poke_set_type_badge(self, card, badges)
        end,
      }, true)
    end
  end
end

get_random_poke_key = function(pseed, stage, pokerarity, _area, poketype, exclude_keys)
  local poke_keys = {}
  local poke_key
  exclude_keys = exclude_keys or {}

  if pokerarity then
    local rarities = { common = 1, uncommon = 2, rare = 3, legendary = 4 }
    if type(pokerarity) == 'table' then
      for k, v in ipairs(pokerarity) do
        pokerarity[k] = type(v) == 'string' and rarities[v:lower()] or v
      end
    elseif type(pokerarity) == 'string' then
      pokerarity = rarities[pokerarity:lower()] or pokerarity
    end
  end

  local valid_stages = poke_convert_to_set(stage)
  local valid_rarities = poke_convert_to_set(pokerarity)

  for k, v in pairs(G.P_CENTER_POOLS.Joker) do
    if v.stage and v.stage ~= "Other" and (not valid_stages or valid_stages[v.stage]) and (not valid_rarities or valid_rarities[v.rarity]) and get_gen_allowed(v)
       and not (poketype and poketype ~= v.ptype) and not poke_family_present(v) and (not (type(v.in_pool) == 'function') or v:in_pool()) and not v.aux_poke and v.rarity ~= "poke_mega" and not exclude_keys[v.key]
       and not G.GAME.banned_keys[v.key] and not (G.GAME.used_jokers[v.key] and not SMODS.showman(v.key)) then

      if v.enhancement_gate then
        if G.playing_cards then
          for kk, vv in pairs(G.playing_cards) do
            if SMODS.has_enhancement(vv, v.enhancement_gate) then
              table.insert(poke_keys, v.key)
              break
            end
          end
        end
      else
        table.insert(poke_keys, v.key)
      end
    end
  end
  
  if #poke_keys > 0 then
    poke_key = pseudorandom_element(poke_keys, pseudoseed(pseed))
  else
    poke_key = "j_poke_caterpie"
  end

  return poke_key
end

get_random_poke_key_options = function(options)
  local pseed = options.seed or options.pseed or options.key_append
  local stage = options.stage or options.pokestage
  local pokerarity = options.rarity or options.pokerarity
  local poketype = options.type or options.poketype
  local exclude_keys = options.exclude_keys
  return get_random_poke_key(pseed, stage, pokerarity, nil, poketype, exclude_keys)
end

create_random_poke_joker = function(pseed, stage, pokerarity, area, poketype)
  local create_args = {set = "Joker", area = pokearea, key = ''}
  create_args.key = get_random_poke_key(pseed, stage, pokerarity, area, poketype)

  return SMODS.create_card(create_args)
end

get_gen_allowed = function(card)
  local gen_allowed = false
  if card.gen then
    local gen = card.gen
    if gen == 1 and pokermon_config.gen_oneb then gen_allowed = true end
    if gen == 2 and pokermon_config.gen_two then gen_allowed = true end
    if gen == 3 and pokermon_config.gen_three then gen_allowed = true end
    if gen == 4 and pokermon_config.gen_four then gen_allowed = true end
    if gen == 5 and pokermon_config.gen_five then gen_allowed = true end
    if gen == 6 and pokermon_config.gen_six then gen_allowed = true end
    if gen == 7 and pokermon_config.gen_seven then gen_allowed = true end
    if gen == 8 and pokermon_config.gen_eight then gen_allowed = true end
    if gen == 9 and pokermon_config.gen_nine then gen_allowed = true end
  else
    gen_allowed = true
  end
  return gen_allowed
end

get_poke_target_card_ranks = function(seed, num, default, use_deck)
  local target_ranks = {}
  local valid_cards = {}
  if not G.playing_cards then
    return default
  end
  if use_deck then
    for i = 1, num do
      for k, v in ipairs(G.playing_cards) do
        if not SMODS.has_no_rank(v) then
            local already_picked = false
            for j = 1, #target_ranks do
              if target_ranks[j].id == v.base.id then already_picked = true; break end
            end
            if not already_picked then
              valid_cards[#valid_cards+1] = v
            end
        end
      end
      if #valid_cards > 0 then
        local picked = pseudorandom_element(valid_cards, pseudoseed(seed))
        target_ranks[#target_ranks+1] = {value = picked.base.value, id = picked.base.id}
        valid_cards = {}
      elseif #target_ranks > 0 then
        target_ranks[#target_ranks+1] = target_ranks[1]
      else
         target_ranks[#target_ranks+1] = {value = "Ace", id = 14}
      end
    end
  else
    local random = {}
    local cvalue = nil
    for i = 2, 14 do
      if i == 11 then cvalue = 'Jack'
      elseif i == 12 then cvalue = 'Queen'
      elseif i == 13 then cvalue = 'King'
      elseif i == 14 then cvalue = 'Ace'
      else cvalue = ''..i end
      random[#random+1] = {value = cvalue, id = i}
    end
    local args = {array = random, amt = num}
    target_ranks = pseudorandom_multi(args)
  end
  local sort_function = function(card1, card2) return card1.id < card2.id end
  table.sort(target_ranks, sort_function)
  return target_ranks
end

get_poke_target_card_suit = function(seed, use_deck, default, limit_suits)
  local suit = default or 'Spades'
  local allowed_suits = limit_suits or SMODS.Suits
  local valid_cards = {}
  if not G.playing_cards then
    return {{suit = suit}}
  end
  if use_deck then
    for k, v in ipairs(G.playing_cards) do
      if not SMODS.has_no_suit(v) and not SMODS.has_any_suit(v) then
        for x, y in pairs(allowed_suits) do
          if (y.key and v:is_suit(y.key)) or v:is_suit(y) then
            valid_cards[#valid_cards+1] = v
            break
          end
        end
      end
    end
    if #valid_cards > 0 then
      local picked = pseudorandom_element(valid_cards, pseudoseed(seed))
      return {{suit = picked.base.suit}}
    else
      return {{suit = suit}}
    end
  else
    local picked = pseudorandom_element(allowed_suits, pseudoseed(seed))
    return {{suit = picked.key or picked}}
  end
end

get_poke_target_card_enhancements = function(seed, num, options)
  local enhancements = {}
  local enhance_options = options or {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_gold", "m_lucky"}       
  
  for i = 1, num do
    local enhancement = pseudorandom_element(enhance_options, pseudoseed(seed))
    enhancements[#enhancements + 1] = enhancement
    
    for j = 1, #enhance_options do
      if enhance_options[j] == enhancement then
        table.remove(enhance_options, j)
      end
    end
  end
  
  return enhancements
end

add_target_cards_to_vars = function(vars, targets)
  for i=1, #targets do
    vars[#vars+1] = localize(targets[i].value or "Ace", 'ranks')
  end
end

find_other_poke_or_energy_type = function(card, poke_type, count_self)
  local energy = nil
  local type_count = 0
  if string.lower(poke_type) == "dark" then
    energy = "darkness_energy"
  else
    energy = string.lower(poke_type).."_energy"
  end
  type_count = #find_pokemon_type(poke_type)
  if is_type(card, poke_type) and not count_self then
    type_count = type_count - 1
  end
  
  if type_count > 0 or #find_joker(energy) > 0 then
    return type_count + #find_joker(energy)
  else
    return 0
  end
end

faint_baby_poke = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
    if context.joker_main then
      local alive = true
      local self_pos = 0
      local adult_pos = 0
      local rightmost_stage = G.jokers.cards[#G.jokers.cards].config.center.stage
      if not rightmost_stage or (rightmost_stage and rightmost_stage ~= "Baby") then alive = false end
      if alive then
        local stage = nil
        for i = 1, #G.jokers.cards do
          local stage = G.jokers.cards[i].config.center.stage
          if G.jokers.cards[i] == card then
            self_pos = i
          end
          if not stage or stage and stage ~= "Baby" then
            adult_pos = i
          end
        end
        if adult_pos > self_pos then alive = false end
      end
      if not alive then
        G.E_MANAGER:add_event(Event({
          func = function()
            card.ability.fainted = G.GAME.round
            card:set_debuff()
            return true
          end
        })) 
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_faint_ex'), colour = G.C.MULT})
      end
    end
  end
end

volatile_active = function(self, card, direction)
  local active = true
  local first_pos = nil
  local self_pos = 0
  local normal_pos = 0
  for i = 1, #G.jokers.cards do
    local volatile = G.jokers.cards[i].config.center.volatile
    if G.jokers.cards[i] == card then
      self_pos = i
    end
    if not volatile then
      normal_pos = i
      if not first_pos then first_pos = i end
    end
  end
  if direction == 'left' and first_pos and first_pos < self_pos then 
    active = false
  end
  if direction == 'right' and normal_pos > self_pos then
    active = false
  end
  return active
end

poke_total_chips = function(card)
  local total_chips = (card.ability.bonus) + (card.ability.perma_bonus or 0)
  if card.ability.effect ~= 'Stone Card' and not card.config.center.replace_base_card then
    total_chips = total_chips + (card.base.nominal)
  end
  if card.edition then
    total_chips = total_chips + (card.edition.chips or 0)
  end
  return total_chips
end

poke_drain = function(card, target, amount, one_way)
  local amt = amount
  local amt_drained = 0
  if target.sell_cost == 1 then return end
  target.ability.extra_value = target.ability.extra_value or 0
  if target.sell_cost <= amt then
    amt_drained = amt_drained + target.sell_cost - 1
    target.ability.extra_value = target.ability.extra_value - amt_drained
  else
     target.ability.extra_value = target.ability.extra_value - amt
     amt_drained = amt
  end
  
  if amt_drained > 0 then
    target:set_cost()
    card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('poke_val_down'), colour = G.C.RED})
    if not one_way then
      card.ability.extra_value = card.ability.extra_value or 0
      card.ability.extra_value = card.ability.extra_value + amt_drained
      card:set_cost()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')})
    end    
  end
end

fossil_generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
  if not full_UI_table.name then
    full_UI_table.name = localize({ type = "name", set = self.set, key = self.key, nodes = full_UI_table.name })
  end
  -- get descriptions
  local vars = self:loc_vars(info_queue, card).vars
  local count = #desc_nodes + 1
  localize{type = 'descriptions', key = self.key, set = self.set, nodes = desc_nodes, vars = vars}
  -- set count to the first line with a colon
  while count <= #desc_nodes and not(desc_nodes[count][2] and desc_nodes[count][2].config.text and string.find(desc_nodes[count][2].config.text,":")) do
    count = count + 1
  end

  local evolution_node = nil
  local to_replace = {}
  while #desc_nodes >= count do
    local new_node = {n=G.UIT.R, config={align = "tl", scale = 1.0, colour = G.C.UI.TEXT_LIGHT}, nodes = {}}
    local nodes = desc_nodes[count]
    table.remove(desc_nodes, count)

    if nodes[1] and nodes[1].config.text and string.find(nodes[1].config.text,"%(Evolves") then
      evolution_node = nodes
    else
      if not (nodes[2] and nodes[2].config.text and string.find(nodes[2].config.text,":")) then
        local last_nodes = to_replace[#to_replace].nodes
        table.insert(nodes, 1, {n=G.UIT.C, config={align = "m", colour = G.C.WHITE, r = 0.05, padding = 0.03, res = 0.15, maxh = 0.2}, nodes={
          {n=G.UIT.T, config={text = "99 ", colour = G.C.WHITE, scale = last_nodes[1].nodes[1].config.scale}},
        }})
        local text_extract = string.match(last_nodes[2].config.text,"%s*:%s*")
        table.insert(nodes, 2, {n=G.UIT.T, config={text = text_extract, colour = G.C.WHITE, scale = last_nodes[2].config.scale, maxh = 0.2}})
      end
      new_node.nodes = nodes
      table.insert(to_replace, new_node)
    end
  end

  desc_nodes[#desc_nodes+1] = {{n=G.UIT.C, config = {align = "tl", scale = 1.0, colour = G.C.UI.TEXT_LIGHT, padding = 0.05}, nodes = to_replace}}
  if evolution_node then
    desc_nodes[#desc_nodes+1] = evolution_node
  end
end

-- code copied from function G.FUNCS.draw_from_deck_to_hand(e)
poke_draw_one = function()
  SMODS.drawn_cards = SMODS.drawn_cards or {}
  draw_card(G.deck, G.hand, nil, nil, true)
  -- double delay event so that it happens after all cards are drawn
  G.E_MANAGER:add_event(Event({
    trigger = 'immediate',
    func = function()
      G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = function()
          if #SMODS.drawn_cards > 0 then
            SMODS.calculate_context({first_hand_drawn = not G.GAME.current_round.any_hand_drawn and G.GAME.facing_blind,
                                    hand_drawn = G.GAME.facing_blind and SMODS.drawn_cards,
                                    other_drawn = not G.GAME.facing_blind and SMODS.drawn_cards})
            SMODS.drawn_cards = {}
            if G.GAME.facing_blind then G.GAME.current_round.any_hand_drawn = true end
          end
          return true
        end
      }))
      return true
    end
  }))
end

generate_pickup_item_key = function(seed)
  local item_key = 'c_poke_transformation'
  local item_chance = pseudorandom(seed)
  if item_chance < .34 then item_key = nil
  elseif item_chance < .59 then item_key = 'evo'
  elseif item_chance < .79 then item_key = 'c_poke_leftovers'
  elseif item_chance < .99 then item_key = 'c_poke_twisted_spoon'
  end
  
  if item_key == "evo" then
    local evo_item_keys = {}
    for k, v in pairs(G.jokers.cards) do
      if v.config.center.item_req then
        if type(v.config.center.item_req) == "table" then
          item_key = "c_poke_"..pseudorandom_element(v.config.center.item_req, pseudoseed(seed))
        else
          item_key = "c_poke_"..v.config.center.item_req
        end
        table.insert(evo_item_keys, item_key)
      end
    end
    if #evo_item_keys > 0 then
      item_key = pseudorandom_element(evo_item_keys, pseudoseed(seed))
    else
      item_key = nil
    end
  end
  
  return item_key
end

create_holding_item = function(key, edition, has_evolved)
  if (#G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit or edition.negative) and not has_evolved then
    local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, key)
    if edition then
      _card:set_edition(edition, true)
    end
    _card:add_to_deck()
    G.consumeables:emplace(_card)
    card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('poke_plus_pokeitem'), colour = G.ARGS.LOC_COLOURS.item})
  end
end

poke_set_sprites = function(self, card, front)
  if card and card.ability and card.ability.extra then
    if not card.ability.extra.loaded_pos and card.ability.extra.loaded_sprite then
      card.ability.extra.loaded_pos = card.config.center.pos
    end
    if card.ability.extra.loaded_pos then 
      card.children.center:set_sprite_pos(card.ability.extra.loaded_pos) 
    end
  end
end

poke_set_sprite_ability = function(self, card, initial, delay_sprites)
  if initial and card and card.ability and card.ability.extra and not card.ability.extra.loaded_pos then
    card.ability.extra.loaded_pos = card.config.center.pos
  end
end

poke_load_individual_sprite = function(self, card, card_table, other_card)
  if card and card.ability and card.ability.extra then
    card.ability.extra.loaded_sprite = true
  end
end

poke_change_poli_suit = function()
  if G.GAME.poke_poli_suit then
    local suits = {"Spades", "Hearts", "Clubs", "Diamonds"}
    local i = get_index(suits, G.GAME.poke_poli_suit)
    if i == #suits then i = 0 end
    G.GAME.poke_poli_suit = suits[i+1]
  else
    G.GAME.poke_poli_suit = "Hearts"
  end
end

poke_reset_rank = function(name)
  G.GAME.current_round[name] = {rank = 'Ace'}
  local valid_cards = {}
  for k, v in ipairs(G.playing_cards) do
    if not SMODS.has_no_rank(v) then
      valid_cards[#valid_cards+1] = v
    end
  end
  if valid_cards[1] then
    local card = pseudorandom_element(valid_cards, pseudoseed(name..G.GAME.round_resets.ante))
    G.GAME.current_round[name].rank = card.base.value
    G.GAME.current_round[name].id = card.base.id
  end
end

poke_reset_type = function(name, exclude_names)
  G.GAME.current_round[name] = "Grass"
  local valid_types = {}
  for k, v in ipairs(G.jokers.cards) do
    local excluded = nil
    for i = 1, #exclude_names do
      if v.ability.name == exclude_names[i] then
        excluded = true
        break
      end
    end
    
    if get_type(v) and not excluded then
      valid_types[#valid_types + 1] = get_type(v)
    end
  end
  if #valid_types > 0 then
    G.GAME.current_round[name] = pseudorandom_element(valid_types, pseudoseed(name..G.GAME.round_resets.ante))
  end
end

reset_espeon_card = function()
  G.GAME.current_round.espeon_rank = 'Ace'
  G.GAME.current_round.espeon_id = 14
  G.GAME.current_round.espeon_suit = 'Spades'
  
  local valid_espeon_cards = {}
  for _, playing_card in ipairs(G.playing_cards) do
    if not SMODS.has_no_suit(playing_card) and not SMODS.has_no_rank(playing_card) then
      valid_espeon_cards[#valid_espeon_cards + 1] = playing_card
    end
  end
  local espeon_card = pseudorandom_element(valid_espeon_cards, 'espeon' .. G.GAME.round_resets.ante)
  if espeon_card then
    G.GAME.current_round.espeon_rank = espeon_card.base.value
    G.GAME.current_round.espeon_id = espeon_card.base.id
    G.GAME.current_round.espeon_suit = espeon_card.base.suit
  end
end

reset_gligar_suit = function()
  local gligar_suits = {}
  for k, v in ipairs({'Spades','Hearts','Clubs','Diamonds'}) do
      if v ~= G.GAME.current_round.gligar_suit then gligar_suits[#gligar_suits + 1] = v end
  end
  local gligar_card = pseudorandom_element(gligar_suits, pseudoseed('gligar'..G.GAME.round_resets.ante))
  G.GAME.current_round.gligar_suit = gligar_card
end

poke_create_treasure = function(card, seed, megastone)
  local treasure = pseudorandom(pseudoseed(seed))
  local money = 0
  local stone_max = 0
  local mega = nil
  if treasure > .70 then
    stone_max = 1
  elseif treasure > .40 then
    money = 5
  elseif treasure > .20 then
    stone_max = 2
  elseif treasure > .05 then
    money = 10
  elseif (megastone and treasure > 0.01) or not megastone then
    money = 20
  else
    mega = true
  end
  if money > 0 then
    ease_poke_dollars(card, seed, money)
  end
  if stone_max > 0 then
    for i = 1, stone_max do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
          func = (function()
            local evo_stones = {'moonstone', 'sunstone', 'waterstone', 'leafstone', 'firestone', 'thunderstone', 'shinystone', 'dawnstone', 'duskstone'}
            local avail_evo_stones = {}
            for k = 1, #evo_stones do
              if not next(SMODS.find_card('c_poke_'..evo_stones[k])) then
                avail_evo_stones[#avail_evo_stones + 1] = evo_stones[k]
              end
            end
            local stone_key = pseudorandom_element(avail_evo_stones, pseudoseed('evostone_drill'))
            if stone_key then
              stone_key = 'c_poke_'..stone_key
            end
            SMODS.add_card{set = 'Item', key = stone_key}
            G.GAME.consumeable_buffer = 0
            return true
          end)
        }))
      end
    end
  end
  if mega then
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = (function()
          SMODS.add_card{set = 'Spectral', key = 'c_poke_megastone'}
          G.GAME.consumeable_buffer = 0
          return true
        end)
      }))
    end
  end
end

get_ancient_amount = function(hand, id, append_to_card)
  local count = 0
  for i = 1, #hand do
    if hand[i]:get_id() == id then count = count + 1 end
  end
  
  if append_to_card then
    append_to_card.ability.extra.ancient_count = count
  end
  return count
end

poke_can_save_consumable = function(card)
  return (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.label:find("Pocket"))
      or (G.GAME.poke_save_all and not (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.label:find("Wish")))
      or (card.config.center.saveable)
end

poke_get_consumeable_count = function()
  if G.STAGE ~= G.STAGES.RUN then return 0 end
  local count = 0
  local areas = {G.jokers.cards, G.consumeables.cards}
  for i = 1, #areas do
    local area = areas[i]
    for j = 1, #area do
      if area[j].ability.consumeable then
        count = count + 1
      end
    end
  end
  return count
end
