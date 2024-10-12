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
  soul_pos = { x = 4, y = 2},
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

local grass_energy = {
  name = "grass_energy",
  key = "grass_energy",
  set = "Energy",
  loc_txt = {
    name = "Grass Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Grass{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 0, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Grass",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fire_energy = {
  name = "fire_energy",
  key = "fire_energy",
  set = "Energy",
  loc_txt = {
    name = "Fire Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Fire{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 1, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Fire",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local water_energy = {
  name = "water_energy",
  key = "water_energy",
  set = "Energy",
  loc_txt = {
    name = "Water Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Water{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 2, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Water",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local lightning_energy = {
  name = "lightning_energy",
  key = "lightning_energy",
  set = "Energy",
  loc_txt = {
    name = "Lightning Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Lightning{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 3, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Lightning",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local psychic_energy = {
  name = "psychic_energy",
  key = "psychic_energy",
  set = "Energy",
  loc_txt = {
    name = "Psychic Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Pyschic{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 4, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Psychic",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fighting_energy = {
  name = "fighting_energy",
  key = "fighting_energy",
  set = "Energy",
  loc_txt = {
    name = "Fighting Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Fighting{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 5, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Fighting",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local colorless_energy = {
  name = "colorless_energy",
  key = "colorless_energy",
  set = "Energy",
  loc_txt = {
    name = "Colorless Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost Pokemon ",
      "Joker for {C:attention}2{} rounds",
      "{C:attention}5{} rounds if {C:attention}Colorless{}",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 6, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Colorless",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local darkness_energy = {
  name = "darkness_energy",
  key = "darkness_energy",
  set = "Energy",
  loc_txt = {
    name = "Darkness Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Dark{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 7, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Dark",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local metal_energy = {
  name = "metal_energy",
  key = "metal_energy",
  set = "Energy",
  loc_txt = {
    name = "Metal Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Metal{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 8, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Metal",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local fairy_energy = {
  name = "fairy_energy",
  key = "fairy_energy",
  set = "Energy",
  loc_txt = {
    name = "Fairy Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Fairy{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 9, y = 0 },
  atlas = "Mart1",
  cost = 3,
  etype = "Fairy",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local dragon_energy = {
  name = "dragon_energy",
  key = "dragon_energy",
  set = "Energy",
  loc_txt = {
    name = "Dragon Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Dreagon{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 0, y = 1 },
  atlas = "Mart1",
  cost = 3,
  etype = "Dragon",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local earth_energy = {
  name = "earth_energy",
  key = "earth_energy",
  set = "Energy",
  loc_txt = {
    name = "Earth Energy",
    text = {
      "{C:attention}Doubles{} most number values",
      "of leftmost {C:attention}Earth{} type Joker",
      "for {C:attention}5{} rounds",
      "(C:inactive)(Can't apply more than once)"
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 1, y = 1 },
  atlas = "Mart1",
  cost = 3,
  etype = "Ground",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return energy_can_use(self, card)
  end,
  use = function(self, card, area, copier)
    return energy_use(self, card, area, copier)
  end
}

local transformation = {
  name = "transformation",
  key = "transformation",
  set = "Spectral",
  loc_txt = {
    name = "Transformation",
    text = {
      "Evolves {C:attention}1{}",
      "selected Pokemon to",
      "the highest {C:attention}stage{}",
    }
  },
  loc_vars = function(self, info_queue, center)
  end,
  pos = { x = 2, y = 1 },
  atlas = "Mart1",
  cost = 3,
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local emergy = {
  name = "emergy",
  key = "emergy",
  set = "Energy",
  loc_txt = {
    name = "Emergy",
    text = {
      "Converts all held",
      "{C:attention}Jolly Jokers{} into",
      "random {C:green}Energy{} cards",
      "with {C:dark_edition}Negative{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 3, y = 1 },
  atlas = "Mart1",
  cost = 3,
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local list = {pokeball, greatball, ultraball, masterball, grass_energy, fire_energy, water_energy, lightning_energy, psychic_energy, fighting_energy, colorless_energy, darkness_energy, metal_energy,
        fairy_energy, dragon_energy, earth_energy, transformation}

if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "Mart 1",
        list = list
}
