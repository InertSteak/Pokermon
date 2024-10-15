local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Tarot",
  loc_txt = {
    name = "Moon Stone",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 0, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local waterstone = {
  name = "waterstone",
  key = "waterstone",
  set = "Tarot",
  loc_txt = {
    name = "Water Stone",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 1, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local thunderstone = {
  name = "thunderstone",
  key = "thunderstone",
  set = "Tarot",
  loc_txt = {
    name = "Thunder Stone",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 2, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local firestone = {
  name = "firestone",
  key = "firestone",
  set = "Tarot",
  loc_txt = {
    name = "Fire Stone",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 3, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local leafstone = {
  name = "leafstone",
  key = "leafstone",
  set = "Tarot",
  loc_txt = {
    name = "Leaf Stone",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 4, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local linkcable = {
  name = "linkcable",
  key = "linkcable",
  set = "Tarot",
  loc_txt = {
    name = "Link Cable",
    text = {
      "{C:attention}Evolution Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 5, y = 1 },
  atlas = "balls",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards > 0 then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    return evo_item_use(self, card, area, copier)
  end,
  in_pool = function(self)
    return evo_item_in_pool(self)
  end
}

local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Tarot",
  loc_txt = {
    name = "Leftovers",
    text = {
      "{C:attention}Held Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Snorlax"}}
  end,
  pos = { x = 0, y = 2 },
  atlas = "balls",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return false
  end,
  in_pool = function(self)
    return next(find_joker('snorlax'))
  end
}

local leek = {
  name = "leek",
  key = "leek",
  set = "Tarot",
  loc_txt = {
    name = "Leek",
    text = {
      "{C:attention}Held Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Farfetch\'d"}}
  end,
  pos = { x = 1, y = 2 },
  atlas = "balls",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return false
  end,
  in_pool = function(self)
    return next(find_joker('farfetchd'))
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Tarot",
  loc_txt = {
    name = "Thick Club",
    text = {
      "{C:attention}Held Card{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {"Cubone and Marowak"}}
  end,
  pos = { x = 2, y = 2 },
  atlas = "balls",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return false
  end,
  in_pool = function(self)
    return next(find_joker('cubone')) or next(find_joker('marowak'))
  end
}

return {name = "Pokemon Consumables",
        list = {moonstone, waterstone, thunderstone, firestone, leafstone, linkcable, leftovers, leek, thickclub,}
}
