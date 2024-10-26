local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "Item",
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
  pos = { x = 0, y = 3 },
  atlas = "Mart",
  cost = 3,
  pokeball = true,
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
  set = "Item",
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
  pos = { x = 1, y = 3 },
  atlas = "Mart",
  cost = 4,
  pokeball = true,
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
  pos = { x = 2, y = 3 },
  atlas = "Mart",
  cost = 4,
  pokeball = true,
  hidden = true,
  soul_set = "Item",
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
  pos = { x = 3, y = 3 },
  soul_pos = { x = 4, y = 2},
  atlas = "Mart",
  cost = 4,
  pokeball = true,
  hidden = true,
  soul_set = "Item",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Grass{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 0, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Fire{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 1, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Water{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 2, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Lightning{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 3, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Psychic{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 4, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Fighting{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 5, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "of leftmost Joker permanently if able",
      "Half as effective with ",
      "non-{C:attention}Colorless{} Jokers",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 6, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Dark{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 7, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Metal{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 8, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Fairy{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 9, y = 0 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Dragon{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 0, y = 1 },
  atlas = "Mart",
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
      "Increases most {C:attention}scoring{} and {C:money}${} number",
      "values of leftmost {C:attention}Earth{} type",
      "Joker permanently if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 1, y = 1 },
  atlas = "Mart",
  cost = 3,
  etype = "Earth",
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
      "Evolves leftmost Pokemon to",
      "the highest {C:attention}stage{}",
      "and increases most {C:attention}scoring{} and {C:money}${}", 
      "number values if able",
      "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
    }
  },
  loc_vars = function(self, info_queue, center)
    return {vars = {(pokermon_config.unlimited_energy and "unlimited") or "5"}}
  end,
  pos = { x = 2, y = 1 },
  atlas = "Mart",
  cost = 3,
  etype = "Trans",
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.cards and #G.jokers.cards > 0 then
      local joker = G.jokers.cards[1]
      if joker.ability and joker.ability.extra and type(joker.ability.extra) == "table" and joker.ability.extra.ptype then
        return true
      else
        return false
      end
    else
      return false
    end
  end,
  use = function(self, card, area, copier)
    if G.jokers.cards and #G.jokers.cards > 0 then
      energy_use(self, G.jokers.cards[1], area, copier)
      local highest = pokemon_in_pool(G.jokers.cards[1], true)
      if highest and type(highest) == "string" and G.jokers.cards[1].ability.name ~= highest then
        local forced_key = "j_poke_"..highest
        local context = {}
        evolve(G.jokers.cards[1], G.jokers.cards[1], context, forced_key)
      end
    end
  end
}

local obituary = {
  name = "obituary",
  key = "obituary",
  set = "Spectral",
  config = {extra = "Pink", max_highlighted = 1},
  loc_txt = {
    name = "Obituary",
    text = {
      "Adds a {C:pink}Pink{} seal",
      "to {C:attention}1{} selected card",
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'poke_pink_seal_seal', set = 'Other'}
  end,
  pos = { x = 1, y = 4 },
  atlas = "Mart",
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
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
  end,
}

local nightmare = {
  name = "nightmare",
  key = "nightmare",
  set = "Spectral",
  loc_txt = {
    name = "Nightmare",
    text = {
      "Destroys a random Pokemon",
      "Joker and creates {C:attention}3{}",
      "random {C:pink}Energy{} with {C:dark_edition}Negative{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 0, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    local victims = {}
    for k, v in pairs(G.jokers.cards) do
      if v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype and not v.ability.eternal then
        table.insert(victims, v)
      end
    end
    if #victims > 0 then
      local victim = pseudorandom_element(victims, pseudoseed("nightmare"))
      local context = {}
      remove(victim, victim, context)
    end
    for i= 1, 3 do
      local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  can_use = function(self, card)
    for k, v in pairs(G.jokers.cards) do
      if v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype then
        return true
      end
    end
    return false
  end,
}

local emergy = {
  name = "emergy",
  key = "emergy",
  set = "Energy",
  loc_txt = {
    name = "Emergy",
    text = {
      "For each {C:attention}Jolly Joker{}",
      "you have create a",
      "random {C:green}Energy{} card",
      "with {C:dark_edition}Negative{}"
    }
  },
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 3, y = 1 },
  atlas = "Mart",
  cost = 3,
  hidden = true,
  soul_set = "Energy",
  soul_rate = .01,
  unlocked = true,
  discovered = true,
  use = function(self, card)
    --Code taken from Cryptid
    local jollycount = 0
    for i = 1, #G.jokers.cards do
      if
        G.jokers.cards[i].ability.name == "Jolly Joker"
        or G.jokers.cards[i].edition and G.jokers.cards[i].edition.key == "e_cry_m"
        or G.jokers.cards[i].ability.effect == "M Joker"
      then
        jollycount = jollycount + 1
      end
    end
    for i= 1, jollycount do
      local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, nil, nil)
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
  end,
  can_use = function(self, card)
    return true
  end
}

if pokermon_config.jokers_only then
  pokeball.set = "Tarot"
  pokeball.pos.y = 2
  greatball.set = "Tarot"
  greatball.pos.y = 2
  ultraball.pos.y = 2
  masterball.pos.y = 2
end

local list = {pokeball, greatball, ultraball, masterball, grass_energy, fire_energy, water_energy, lightning_energy, psychic_energy, fighting_energy, colorless_energy, darkness_energy, metal_energy,
        fairy_energy, dragon_energy, earth_energy, transformation, obituary, nightmare}

if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "Mart 1",
        list = list
}
