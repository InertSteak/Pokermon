local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "Tarot",
  loc_txt = {
    name = "Pokeball",
    text = {
      "Create a random",
      "{C:attention}Basic Joker{} card",
      "{C:inactive}(Must have room)"
    }
  },
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
  end,
  pos = { x = 0, y = 0 },
  atlas = "balls",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        local allowedPokemon = {}
        local duplicatePokemon = false
        local f_key = ""
        
        for k, _ in pairs(G.P_CENTERS) do
          if G.P_CENTERS[k].stage and G.P_CENTERS[k].stage == "Basic" then
            if #G.jokers.cards > 0 then
              for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == G.P_CENTERS[k].name then
                  duplicatePokemon = true
                end
              end
              if duplicatePokemon == false then 
                  allowedPokemon[#allowedPokemon+1] = k
              end
              duplicatePokemon = false
            else
              allowedPokemon[#allowedPokemon+1] = k
            end
          end
        end
        
        if #allowedPokemon > 0 then
          f_key = pseudorandom_element(allowedPokemon, pseudoseed('poke_ball'))
        else
          f_key = "j_poke_caterpie"
        end
        
        play_sound('timpani')
        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, f_key)
        card:add_to_deck()
        G.jokers:emplace(card)
        return true end }))
    delay(0.6)
  end
}

local greatball = {
  name = "greatball",
  key = "greatball",
  set = "Spectral",
  loc_txt = {
    name = "Greatball",
    text = {
      "Create a random",
      "{C:attention}Stage 1 Joker{} card",
      "{C:inactive}(Must have room)"
    }
  },
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage1'}
  end,
  pos = { x = 1, y = 0 },
  atlas = "balls",
  cost = 4,
  hidden = true,
  soul_set = "Tarot",
  soul_rate = .025,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        local allowedPokemon = {}
        local duplicatePokemon = false
        local f_key = ""
        
        for k, _ in pairs(G.P_CENTERS) do
          if G.P_CENTERS[k].stage and G.P_CENTERS[k].stage == "One" then
            if #G.jokers.cards > 0 then
              for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == G.P_CENTERS[k].name then
                  duplicatePokemon = true
                end
              end
              if duplicatePokemon == false then 
                  allowedPokemon[#allowedPokemon+1] = k
              end
              duplicatePokemon = false
            else
              allowedPokemon[#allowedPokemon+1] = k
            end
          end
        end
        
        if #allowedPokemon > 0 then
          f_key = pseudorandom_element(allowedPokemon, pseudoseed('poke_ball'))
        else
          f_key = "j_poke_caterpie"
        end
        
        play_sound('timpani')
        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, f_key)
        card:add_to_deck()
        G.jokers:emplace(card)
        return true end }))
    delay(0.6)
  end
}

local ultraball = {
  name = "ultraball",
  key = "ultraball",
  set = "Spectral",
  loc_txt = {
    name = "Ultraball",
    text = {
      "Create a random",
      "{C:attention}Stage 2 Joker{} card",
      "{C:inactive}(Must have room)"
    }
  },
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage2'}
  end,
  pos = { x = 2, y = 0 },
  atlas = "balls",
  cost = 4,
  hidden = true,
  soul_set = "Tarot",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        local allowedPokemon = {}
        local duplicatePokemon = false
        local f_key = ""
        
        for k, _ in pairs(G.P_CENTERS) do
          if G.P_CENTERS[k].stage and G.P_CENTERS[k].stage == "Two" then
            if #G.jokers.cards > 0 then
              for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == G.P_CENTERS[k].name then
                  duplicatePokemon = true
                end
              end
              if duplicatePokemon == false then 
                  allowedPokemon[#allowedPokemon+1] = k
              end
              duplicatePokemon = false
            else
              allowedPokemon[#allowedPokemon+1] = k
            end
          end
        end
        
        if #allowedPokemon > 0 then
          f_key = pseudorandom_element(allowedPokemon, pseudoseed('poke_ball'))
        else
          f_key = "j_poke_caterpie"
        end
        
        play_sound('timpani')
        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, f_key)
        card:add_to_deck()
        G.jokers:emplace(card)
        return true end }))
    delay(0.6)
  end
}

local masterball = {
  name = "masterball",
  key = "masterball",
  set = "Spectral",
  loc_txt = {
    name = "Masterball",
    text = {
      "Create a random",
      "{C:attention}Legendary Pokemon Joker{} card",
      "{C:inactive}(Must have room)"
    }
  },
  pos = { x = 3, y = 0 },
  atlas = "balls",
  cost = 4,
  hidden = true,
  soul_set = "Tarot",
  soul_rate = .003,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if #G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers then
        return true
    else
        return false
    end
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        local allowedPokemon = {}
        local duplicatePokemon = false
        local f_key = ""
        
        for k, _ in pairs(G.P_CENTERS) do
          if G.P_CENTERS[k].stage and G.P_CENTERS[k].stage == "Legendary" then
            if #G.jokers.cards > 0 then
              for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == G.P_CENTERS[k].name then
                  duplicatePokemon = true
                end
              end
              if duplicatePokemon == false then 
                  allowedPokemon[#allowedPokemon+1] = k
              end
              duplicatePokemon = false
            else
              allowedPokemon[#allowedPokemon+1] = k
            end
          end
        end
        
        if #allowedPokemon > 0 then
          f_key = pseudorandom_element(allowedPokemon, pseudoseed('poke_ball'))
        else
          f_key = "j_poke_caterpie"
        end
        
        play_sound('timpani')
        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, f_key)
        card:add_to_deck()
        G.jokers:emplace(card)
        return true end }))
    delay(0.6)
  end
}

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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "nidorina" or v.ability.name == "nidorino" 
        or v.ability.name == "clefairy" or v.ability.name == "jigglypuff" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability.name == "nidorina" or v.ability.name == "nidorino" 
        or v.ability.name == "clefairy" or v.ability.name == "jigglypuff" then
          return true
        end
      end
    end
    return false
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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "poliwhirl" or v.ability.name == "shellder" 
        or v.ability.name == "staryu" or v.ability.name == "eevee" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            
            if v.ability.name == "eevee" then
              v.ability.extra.water = true
            end
            
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability.name == "poliwhirl" or v.ability.name == "shellder" 
        or v.ability.name == "staryu" or v.ability.name == "eevee" then
          return true
        end
      end
    end
    return false
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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "pikachu" or v.ability.name == "eevee" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            
            if v.ability.name == "eevee" then
              v.ability.extra.thunder = true
            end
            
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability.name == "pikachu" or v.ability.name == "eevee" then 
          return true
        end
      end
    end
    return false
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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "growlithe" or v.ability.name == "vulpix" 
        or v.ability.name == "eevee" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            
            if v.ability.name == "eevee" then
              v.ability.extra.fire = true
            end
            
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability.name == "growlithe" or v.ability.name == "vulpix" 
        or v.ability.name == "eevee" then 
          return true
        end
      end
    end
    return false
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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "gloom" or v.ability.name == "weepinbell" 
        or v.ability.name == "exeggcute" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability.name == "gloom" or v.ability.name == "weepinbell" 
        or v.ability.name == "exeggcute" then
          return true
        end
      end
    end
    return false
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
    local applied = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability.name == "machoke" or v.ability.name == "kadabra" 
        or v.ability.name == "graveler" or v.ability.name == "haunter" then
          if v.ability.extra.evolve ~= true then
            v.ability.extra.evolve = true
            
            if v.ability.name == "eevee" then
              v.ability.extra.water = true
            end
            
            applied = true
            local eval = function(v) return not v.REMOVED end
            juice_card_until(v, eval, true)
          end
        end
      end
    end
    return true
  end,
  in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
          if v.ability.name == "machoke" or v.ability.name == "kadabra" 
          or v.ability.name == "graveler" or v.ability.name == "haunter" then
          return true
        end
      end
    end
    return false
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
        list = {pokeball, greatball, ultraball, masterball, moonstone, waterstone, thunderstone, firestone, leafstone, linkcable, leftovers, leek, thickclub,}
}
