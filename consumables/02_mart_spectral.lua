local transformation = {
  name = "transformation",
  key = "transformation",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 2, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Trans",
  hidden = true,
  soul_set = "Energy",
  soul_rate = .025,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    return choice and get_type(choice) or false
  end,
  use = function(self, card, area, copier)
    local choice = poke_find_leftmost_or_highlighted()
    if get_type(choice) then energy_increase(choice, get_type(choice)) end
    if not choice.config.center.aux_poke then
      local highest = get_highest_evo(choice)
      if highest and type(highest) == "string" then
        local prefix = choice.config.center.poke_custom_prefix or "poke"
        local forced_key = "j_"..prefix.."_"..highest
        local context = {}
        poke_evolve(choice, forced_key)
      end
    end
  end
}

local get_mega_target = function(self)
  return poke_find_leftmost_or_highlighted(function(joker)
    return not self.ability.extra.used_on and get_mega(joker) and not joker.debuff
        or joker.config.center.rarity == "poke_mega" and joker.unique_val == self.ability.extra.used_on
        or G.GAME.modifiers.infinite_megastone and ((get_mega(joker) and not joker.debuff) or joker.config.center.rarity == "poke_mega")
  end)
end

local megastone = {
  name = "megastone",
  key = "megastone",
  set = "Spectral",
  artist = "MyDude_YT",
  helditem = true,
  saveable = true,
  config = {extra = {usable = true, used_on = nil}},
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Other', key = 'endless' }
    if not G.GAME.modifiers.infinite_megastone then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_rule'}
    end
    local joker = poke_find_card(function(joker)
        return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on
      end)
    if joker then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_used_on', vars = {localize({ type = "name_text", set = "Joker", key = joker.config.center.key})}}
    end
  end,
  pos = { x = 4, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  hidden = true,
  soul_set = "Item",
  soul_rate = .005,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    -- location-based usability checks
    if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) or #G.jokers.cards == 0 then return false end
    if not card.ability.extra.usable then return false end
    -- Find an eligible pokemon (also checks if the mega stone has been used, and on which joker)
    local target = get_mega_target(card)
    if not target then return false end
    -- If none of that nonsense happened you can use it I guess
    return true
  end,
  use = function(self, card, area, copier)
    local target = get_mega_target(card)
    local forced_key
    local prefix = target.config.center.poke_custom_prefix or "poke"
    if get_mega(target) then
      forced_key = "j_"..prefix.."_"..get_mega(target)
      card.ability.extra.used_on = not G.GAME.modifiers.infinite_megastone and target.unique_val
    else
      forced_key = get_previous_evo(target, true)
      card.ability.extra.used_on = nil
    end
    card.ability.extra.usable = false
    poke_evolve(target, forced_key)
  end,
  calculate = function(self, card, context)
    if context.end_of_round then
      local mega = poke_find_card(function(joker) return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on end)
      if not mega then card.ability.extra.used_on = nil end
      if not card.ability.extra.usable then
        card.ability.extra.usable = true
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      end
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    local mega_poke = G.jokers and poke_find_card(function(joker) return joker.config.center.megas end)
    return mega_poke
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then card.ability.extra.used_on = nil end
    card.ability.extra.usable = true
  end,
  remove_from_deck = function(self, card, from_debuff)
    local target = poke_find_card(function(joker) return joker.config.center.rarity == "poke_mega" and joker.unique_val == card.ability.extra.used_on end)
    if target then
      local forced_key = get_previous_evo(target, true)
      poke_evolve(target, forced_key)
    end
  end,
}

local obituary = {
  name = "obituary",
  key = "obituary",
  set = "Spectral",
  config = {extra = "Pink", max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
  end,
  pos = { x = 1, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local conv_card = G.hand.highlighted[1]
    G.E_MANAGER:add_event(Event({func = function()
      play_sound('tarot1')
      return true end }))
    
    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
        conv_card:set_seal("poke_pink_seal", nil, true)
        return true end }))
    
    delay(0.5)
    poke_unhighlight_cards()
  end,
}

local revenant = {
  name = "revenant",
  key = "revenant",
  set = "Spectral",
  config = {extra = "Silver", max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_silver_seal', set = 'Other'}
  end,
  pos = { x = 2, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local conv_card = G.hand.highlighted[1]
    G.E_MANAGER:add_event(Event({func = function()
      play_sound('tarot1')
      return true end }))
    
    G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
        conv_card:set_seal("poke_silver", nil, true)
        return true end }))
    
    delay(0.5)
    poke_unhighlight_cards()
  end,
}

local nightmare = {
  name = "nightmare",
  key = "nightmare",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 0, y = 4 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    if choice then
      local energy = matching_energy(choice, true) or "c_poke_colorless_energy"
      if energy then
        local max = (energy == "c_poke_bird_energy") and 1 or 2
        for _ = 1, max do
          local _card = SMODS.add_card({set = "Energy", area = G.consumeables, key = energy, skip_materialize = true, soulable = true})
          _card:set_edition({negative = true}, true)
        end
      end
      remove(self, choice)
    end
  end,
  can_use = function(self, card)
    local choice = poke_find_leftmost_or_highlighted()
    return choice and not choice.ability.eternal
  end,
}

local list = {obituary, revenant, nightmare, transformation, megastone}

return {name = "AtlasConsumablesBasic 2",
        list = list
}