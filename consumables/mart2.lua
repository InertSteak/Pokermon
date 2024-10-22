local item_list = {}

local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Item",
  loc_txt = {
    name = "Moon Stone",
    text = {
      "Creates a {C:attention}Moon{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
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
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Sun Stone",
    text = {
      "Creates a {C:attention}Sun{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
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
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Water Stone",
    text = {
      "Creates a {C:attention}Star{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_star
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 5, y = 3 },
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
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Thunder Stone",
    text = {
      "Creates a {C:attention}Devil{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
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
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Fire Stone",
    text = {
      "Creates a {C:attention}Lovers{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_lovers
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 4, y = 3 },
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
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_lovers')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Leaf Stone",
    text = {
      "Creates a {C:attention}World{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
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
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Linking Cord",
    text = {
      "Creates a {C:attention}Death{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_death
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 6, y = 4 },
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
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_death')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Leftovers",
    text = {
      "Creates a {C:attention}Hanged Man{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_hanged_man
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Snorlax"}}
  end,
  pos = { x = 7, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_hanged_man')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
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
  loc_txt = {
    name = "Leek",
    text = {
      "Creates a {C:attention}Wheel of Fortune{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_wheel_of_fortune
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Farfetch\'d"}}
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
  loc_txt = {
    name = "Thick Club",
    text = {
      "Creates a {C:attention}Strength{} card",
      "{C:attention}Held Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_strength
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Cubone and Marowak"}}
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
  loc_txt = {
    name = "Tera Orb",
    text = {
      "Applies a random",
      "{C:pink}Type{} sticker",
      "to leftmost Joker{}"
    }
  },
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
    local leftmost = G.jokers.cards[1]
    apply_type_sticker(leftmost)
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Tera!", colour = G.C.SECONDARY_SET.Spectral})
  end,
  in_pool = function(self)
    return true
  end
}

local metalcoat = {
  name = "metalcoat",
  key = "metalcoat",
  set = "Item",
  loc_txt = {
    name = "Metal Coat",
    text = {
      "Applies a {C:metal}Metal{} sticker",
      "to leftmost Joker.",
      "Creates a {C:attention}Chariot{} card",
      "{C:inactive}(Must have room){}"
    }
  },
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
    local leftmost = G.jokers.cards[1]
    
    apply_type_sticker(leftmost, "Metal")
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Metal!", colour = G.ARGS.LOC_COLOURS["metal"]})
    
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
  loc_txt = {
    name = "Dragon Scale",
    text = {
      "Applies a {C:dragon}Dragon{} sticker",
      "to leftmost Joker.",
      "Creates an {C:attention}Emperor{} card",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_emperor
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
    local leftmost = G.jokers.cards[1]
    
    apply_type_sticker(leftmost, "Dragon")
    card_eval_status_text(leftmost, 'extra', nil, nil, nil, {message = "Dragon!", colour = G.ARGS.LOC_COLOURS["dragon"]})
    
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_emperor')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
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
  loc_txt = {
    name = "King's Rock",
    text = {
      "Turns {C:attention}#1#{} selected",
      "card into a {C:attention}King{}",
      "{C:attention}Evolution Card{}",
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
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
    juice_flip()
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            SMODS.change_base(conv_card, nil, "King"); return true
        end
    }))
    delay(0.5)
    juice_flip()
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
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
  loc_txt = {
    name = "Upgrade",
    text = {
      "Gives {C:attention}#1#{} selected cards",
      "a random {C:attention}Enhancement{}",
      "{C:attention}Evolution Card{}",
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
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
    juice_flip()
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(enhancement, nil, true)
    end
    delay(0.5)
    juice_flip()
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local icestone = {
  name = "icestone",
  key = "icestone",
  set = "Item",
  loc_txt = {
    name = "Ice Stone",
    text = {
      "Creates a {C:attention}Justice{} card",
      "{C:attention}Evolution Card{}",
      "{C:inactive}(Must have room){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.c_justice
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 5, y = 4 },
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
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_justice')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    if #G.jokers.cards > 0 then
      return evo_item_use(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

return {name = "Items",
        list = {moonstone, sunstone, waterstone, leafstone, firestone, thunderstone, linkcable, leftovers, leek, thickclub, teraorb, metalcoat, dragonscale, kingsrock, upgrade, icestone}
}
