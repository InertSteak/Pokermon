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
  pos = { x = 0, y = 2 },
  atlas = "Mart1",
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
  set = "Tarot",
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
  pos = { x = 1, y = 2 },
  atlas = "Mart1",
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
  pos = { x = 2, y = 2 },
  atlas = "Mart1",
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
  pos = { x = 3, y = 2 },
  soul_pos = { x=4, y = 2},
  atlas = "Mart1",
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

return {name = "Mart 1",
        list = {pokeball, greatball, ultraball, masterball, }
}