local item_list = {}

local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_moon
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 8, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_moon')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local sunstone = {
  name = "sunstone",
  key = "sunstone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_sun
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 9, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_sun')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local waterstone = {
  name = "waterstone",
  key = "waterstone",
  set = "Item",
  config = {max_highlighted = 1, max_chips = 50},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted, self.config.max_chips}}
  end,
  pos = { x = 5, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    local bonus = math.min(self.config.max_chips, poke_total_chips(conv_card))
    juice_flip(card)
    conv_card.ability.perma_bonus = conv_card.ability.perma_bonus or 0
    conv_card.ability.perma_bonus = conv_card.ability.perma_bonus + bonus
    juice_flip(card, true)
    delay(0.5)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thunderstone = {
  name = "thunderstone",
  key = "thunderstone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_devil
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 6, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_devil')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local firestone = {
  name = "firestone",
  key = "firestone",
  set = "Item",
  config = {max_highlighted = 4, min_highlighted = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 4, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_mult, nil, true)
    end
    juice_flip(card, true)
    
    local target = pseudorandom_element(G.hand.highlighted, pseudoseed('firestone'))
    poke_remove_card(target, card)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leafstone = {
  name = "leafstone",
  key = "leafstone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_world
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 7, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_world')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local linkcable = {
  name = "linkcable",
  key = "linkcable",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card_left = G.hand.highlighted[1]
    local conv_card_right = G.hand.highlighted[2]
    juice_flip(card)
    poke_vary_rank(conv_card_left)
    poke_vary_rank(conv_card_right, true)
    juice_flip(card, true)
    delay(0.5)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Item",
  config = {max_highlighted = 3, min_highlighted = 3},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("snorlax_infoqueue")}}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 7, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local leftover =  pseudorandom_element(G.hand.highlighted, pseudoseed('leftover'))
    local deselect = {}
    for i = 1, #G.hand.highlighted do
      if G.hand.highlighted[i] ~= leftover then
        table.insert(deselect, G.hand.highlighted[i])
      end
    end
    for k = 1, #deselect do
      G.hand:remove_from_highlighted(deselect[k])
    end

    for j = 1, 2 do
      local leftover_copy = copy_card(leftover, nil, nil, G.playing_card)
      poke_add_card(leftover_copy, card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leek = {
  name = "leek",
  key = "leek",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_wheel_of_fortune
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("farfetchd_infoqueue")}}
  end,
  pos = { x = 8, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_strength
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("cubone_marowak_infoqueue")}}
  end,
  pos = { x = 9, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_strength')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local teraorb = {
  name = "teraorb",
  key = "teraorb",
  set = "Item",
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 9, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    else
      return
    end
    apply_type_sticker(choice)
    energy_increase(choice, type_sticker_applied(choice))
    card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
  end,
  in_pool = function(self)
    return true
  end
}

local metalcoat = {
  name = "metalcoat",
  key = "metalcoat",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_chariot
  end,
  pos = { x = 6, y = 2 },
  atlas = "Mart",
  cost = 4,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    
    apply_type_sticker(choice, "Metal")
    card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_metal_ex"), colour = G.ARGS.LOC_COLOURS["metal"]})
    
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_chariot')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local dragonscale = {
  name = "dragonscale",
  key = "dragonscale",
  set = "Item",
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 7, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    
    apply_type_sticker(choice, "Dragon")
    card_eval_status_text(choice, 'extra', nil, nil, nil, {localize("poke_dragon_ex"), colour = G.ARGS.LOC_COLOURS["dragon"]})
    
    for i = 1, 3 do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local card_type = nil
        if pseudorandom(pseudoseed('dragonscale')) > .50 then
          card_type = "Item"
        else
          card_type = "Energy"
        end
        
        local _card = create_card(card_type, G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
  end,
  in_pool = function(self)
    return true
  end
}

local kingsrock = {
  name = "kingsrock",
  key = "kingsrock",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 5, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    juice_flip(card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            SMODS.change_base(conv_card, nil, "King"); return true
        end
    }))
    delay(0.5)
    juice_flip(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local upgrade = {
  name = "upgrade",
  key = "upgrade",
  set = "Item",
  config = {max_highlighted = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 8, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local enhancement_type = pseudorandom(pseudoseed('upgrade'))
    local enhancement = nil
    if enhancement_type > .875 then enhancement = G.P_CENTERS.m_bonus
    elseif enhancement_type > .75 then enhancement = G.P_CENTERS.m_mult
    elseif enhancement_type > .625 then enhancement = G.P_CENTERS.m_wild
    elseif enhancement_type > .50 then enhancement = G.P_CENTERS.m_glass
    elseif enhancement_type > .375 then enhancement = G.P_CENTERS.m_steel
    elseif enhancement_type > .25 then enhancement = G.P_CENTERS.m_stone
    elseif enhancement_type > .125 then enhancement = G.P_CENTERS.m_gold
    else enhancement = G.P_CENTERS.m_lucky
    end
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(enhancement, nil, true)
    end
    juice_flip(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return not next(find_joker("porygon2"))
  end
}

local dubious_disc = {
  name = "dubious_disc",
  key = "dubious_disc",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 0, y = 5 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    juice_flip_hand(card)
    for i = 1, #G.hand.cards do
      local enhancement_type = pseudorandom(pseudoseed('dubious'))
      local enhancement = nil
      if enhancement_type > .89 then enhancement = G.P_CENTERS.m_bonus
      elseif enhancement_type > .78 then enhancement = G.P_CENTERS.m_mult
      elseif enhancement_type > .67 then enhancement = G.P_CENTERS.m_wild
      elseif enhancement_type > .56 then enhancement = G.P_CENTERS.m_glass
      elseif enhancement_type > .45 then enhancement = G.P_CENTERS.m_steel
      elseif enhancement_type > .34 then enhancement = G.P_CENTERS.m_stone
      elseif enhancement_type > .23 then enhancement = G.P_CENTERS.m_gold
      elseif enhancement_type > .12 then enhancement = G.P_CENTERS.m_lucky
      else enhancement = G.P_CENTERS.c_base end
      G.hand.cards[i]:set_ability(enhancement, nil, true)
    end
    juice_flip_hand(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return next(find_joker("porygon2"))
  end
}

local icestone = {
  name = "icestone",
  key = "icestone",
  set = "Item",
  config = {max_highlighted = 2, odds = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted, ''..(G.GAME and G.GAME.probabilities.normal or 1), self.config.odds}}
  end,
  pos = { x = 5, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_glass, nil, true)
    end
    juice_flip(card, true)
    for i = 1, #G.hand.highlighted do
      if pseudorandom(pseudoseed('icestone')) <  G.GAME.probabilities.normal/self.config.odds then
        poke_remove_card(G.hand.highlighted[i], card)
      end
    end
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local shinystone = {
  name = "shinystone",
  key = "shinystone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_star
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 2, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_star')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local twisted_spoon = {
  name = "twisted_spoon",
  key = "twisted_spoon",
  set = "Item",
  pos = { x = 1, y = 5 },
  atlas = "Mart",
  cost = 4,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if (#G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables) and G.GAME.last_poke_item and G.GAME.last_poke_item ~= 'c_poke_twisted_spoon' then 
      return true 
    end
    return false
  end,
  use = function(self, card, area, copier)
    local used_item = copier or card
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        if G.consumeables.config.card_limit > #G.consumeables.cards then
            play_sound('timpani')
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, G.GAME.last_poke_item, 'spoon')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            used_item:juice_up(0.3, 0.5)
        end
        return true end }))
    delay(0.6)
  end,
  in_pool = function(self)
    return true
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or self
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end
    local spoon_c = G.GAME.last_poke_item and G.P_CENTERS[G.GAME.last_poke_item] or nil
    local last_poke_item = spoon_c and localize{type = 'name_text', key = spoon_c.key, set = spoon_c.set} or localize('k_none')
    local colour = (not spoon_c or spoon_c.name == 'twisted_spoon') and G.C.RED or G.C.GREEN
    local main_end = {
        {n=G.UIT.C, config={align = "bm", padding = 0.02}, nodes={
            {n=G.UIT.C, config={align = "m", colour = colour, r = 0.05, padding = 0.05}, nodes={
                {n=G.UIT.T, config={text = ' '..last_poke_item ..' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true}},
            }}
        }}
    }
   local loc_vars = {last_poke_item}
   if not (not spoon_c or spoon_c.name == 'twisted_spoon') then
      info_queue[#info_queue+1] = spoon_c
   end
   
   localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = loc_vars}
   desc_nodes[#desc_nodes+1] = main_end 
  end
}

return {name = "Items",
        list = {moonstone, sunstone, waterstone, leafstone, firestone, thunderstone, linkcable, leftovers, leek, thickclub, teraorb, metalcoat, dragonscale, kingsrock, upgrade, dubious_disc, icestone,                shinystone, twisted_spoon}
}
