local pokeball = {
  name = "pokeball",
  key = "pokeball",
  set = "Item",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
  end,
  pos = { x = 0, y = 3 },
  atlas = "AtlasConsumablesBasic",
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
    set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("pokeball", "Basic")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

local greatball = {
  name = "greatball",
  key = "greatball",
  set = "Item",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage1'}
  end,
  pos = { x = 1, y = 3 },
  atlas = "AtlasConsumablesBasic",
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
    set_spoon_item(card)
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        play_sound('timpani')
        local _card = create_random_poke_joker("greatball", "One")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

local ultraball = {
  name = "ultraball",
  key = "ultraball",
  set = "Spectral",
  loc_vars = function(self, info_queue, center)
   info_queue[#info_queue+1] = {set = 'Other', key = 'stage2'}
  end,
  pos = { x = 2, y = 3 },
  atlas = "AtlasConsumablesBasic",
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
        play_sound('timpani')
        local _card = create_random_poke_joker("ultraball", "Two")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

local masterball = {
  name = "masterball",
  key = "masterball",
  set = "Spectral",
  pos = { x = 3, y = 3 },
  soul_pos = { x = 4, y = 2},
  atlas = "AtlasConsumablesBasic",
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
        play_sound('timpani')
        local _card = create_random_poke_joker("masterball", "Legendary")
        _card:add_to_deck()
        G.jokers:emplace(_card)
        return true end }))
    delay(0.6)
  end
}

local grass_energy = {
  name = "grass_energy",
  key = "grass_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 0, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Grass",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local fire_energy = {
  name = "fire_energy",
  key = "fire_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 1, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Fire",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local water_energy = {
  name = "water_energy",
  key = "water_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 2, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Water",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local lightning_energy = {
  name = "lightning_energy",
  key = "lightning_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 3, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Lightning",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local psychic_energy = {
  name = "psychic_energy",
  key = "psychic_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 4, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Psychic",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local fighting_energy = {
  name = "fighting_energy",
  key = "fighting_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 5, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Fighting",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local colorless_energy = {
  name = "colorless_energy",
  key = "colorless_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 6, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Colorless",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local darkness_energy = {
  name = "darkness_energy",
  key = "darkness_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 7, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Dark",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local metal_energy = {
  name = "metal_energy",
  key = "metal_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 8, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Metal",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local fairy_energy = {
  name = "fairy_energy",
  key = "fairy_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 9, y = 0 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Fairy",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local dragon_energy = {
  name = "dragon_energy",
  key = "dragon_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 0, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Dragon",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local earth_energy = {
  name = "earth_energy",
  key = "earth_energy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 1, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Earth",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_use(self, card, area, copier)
    else
      return highlighted_energy_use(self, card, area, copier)
    end
  end
}

local bird_energy = {
  name = "bird_energy",
  key = "bird_energy",
  set = "Energy",
  animated = true,
  artist = "Catzzadilla",
  pos = { x = 0, y = 0 },
  atlas = "AtlasConsumablesBirdEnergy",
  cost = 4,
  etype = "Bird",
  unlocked = true,
  discovered = true,
  no_collection = true,
  loc_vars = function(self, info_queue, card)
        local r_mults = {}
        for i = 1, 23 do
            r_mults[#r_mults + 1] = tostring(i)
        end
        local gives_strings = {{ string = localize('poke_water_gun_ex'), colour = G.ARGS.LOC_COLOURS.water }, { string = localize('poke_sky_attack_ex'), colour = G.ARGS.LOC_COLOURS.colorless },
                               { string = 'HEX("FF7ABF")', colour = G.C.JOKER_GREY}, { string = '?????', colour = G.C.JOKER_GREY}
                             }
        local energy_strings = {{ string = '?????', colour = G.C.JOKER_GREY}, { string = self.name, colour = G.C.JOKER_GREY}, { string = localize('k_poke_pp'), colour = G.C.JOKER_GREY},
                                { string = localize('k_mult'), colour = G.C.MULT}, { string = 'ERROR', colour = G.C.CHIPS}
                               }
        local energy_strings2 = {{ string = '?????', colour = G.C.JOKER_GREY}, { string = self.name, colour = G.C.JOKER_GREY}, { string = localize('k_poke_pp'), colour = G.C.JOKER_GREY},
                        { string = localize('k_mult'), colour = G.C.MULT}, { string = 'ERROR', colour = G.C.CHIPS}
                       }
        main_start = {
          {n = G.UIT.R,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = {
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(gives_strings, {poke_rep_string = localize('k_poke_gives'), poke_rep_num = 5})) } },
              { n = G.UIT.T, config = { text = ' +'..(energy_max + (G.GAME.energy_plus or 0))..' ', colour = HEX("FF7ABF"), scale = 0.32 } },
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(energy_strings, {poke_rep_string = localize('k_energy'), poke_rep_num = 5})) } },
            }
          },
          {n = G.UIT.R,
          config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
          },
          nodes = {
              { n = G.UIT.T, config = { text = '('..localize('k_poke_ignores')..' ', colour = G.C.JOKER_GREY, scale = 0.32 } },
              { n = G.UIT.O, config = { object = DynaText(poke_random_text(energy_strings2, {poke_rep_string = localize('k_energy'), poke_rep_num = 5})) } },
              { n = G.UIT.T, config = { text = ' '..localize('k_poke_limit')..')', colour = G.C.JOKER_GREY, scale = 0.32 } },
            }
          },
        }
        return { main_start = main_start }
    end,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      choice = energy_can_use(self, card)
    else
      choice = highlighted_energy_can_use(self, card)
    end
    if choice then
      local max = energy_max + (G.GAME.energy_plus or 0)
      for i = 1, max do
        increment_energy(choice, self.etype)
      end
    end
    if G.GAME.energies_used then
      G.GAME.energies_used = G.GAME.energies_used  + 1
    else
      G.GAME.energies_used = 1
    end
  end,
  in_pool = function(self)
    return false
  end
}

local double_rainbow_energy = {
  name = "double_rainbow_energy",
  key = "double_rainbow_energy",
  set = "Spectral",
  artist = "MyDude_YT",
  config = {},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {(pokermon_config.unlimited_energy and localize("poke_unlimited_energy")) or energy_max + (G.GAME.energy_plus or 0)}}
  end,
  pos = { x = 0, y = 6 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  etype = "Trans",
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return energy_can_use(self, card)
    else
      return highlighted_energy_can_use(self, card)
    end
  end,
  use = function(self, card, area, copier)
    for i = 1, 2 do
      if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
        energy_use(self, card, area, copier, true)
      else
        highlighted_energy_use(self, card, area, copier, true)
      end
    end
    if not G.GAME.modifiers.no_interest then
      G.GAME.modifiers.reset_no_interest = true
      G.GAME.modifiers.no_interest = true
    end
  end
}

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
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    else
      return false
    end
    if choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and choice.ability.extra.ptype then
      return true
    else
      return false
    end
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    if choice.config and choice.config.center.stage and not type_sticker_applied(choice) then
      energy_increase(choice, choice.ability.extra.ptype)
    elseif type_sticker_applied(choice) then
      energy_increase(choice, type_sticker_applied(choice))
    end
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
local megastone = {
  name = "megastone",
  key = "megastone",
  set = "Spectral",
  artist = "MyDude_YT",
  helditem = true,
  config = {extra = {usable = true, used_on = nil}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue + 1] = { set = 'Other', key = 'endless' }
    if not G.GAME.modifiers.infinite_megastone then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_rule'}
    end
    if center and center.ability.extra.used_on then
      info_queue[#info_queue+1] = {set = 'Other', key = 'mega_used_on', vars = {localize({ type = "name_text", set = "Joker", key = center.ability.extra.used_on})}}
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
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) then return false end
    if #G.jokers.cards == 0 then return false end
    if not card.ability.extra.usable then return false end
    local target = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and (G.jokers.highlighted[1].config.center.megas or G.jokers.highlighted[1].config.center.rarity == "poke_mega") and 
       not (G.jokers.highlighted[1].debuff and G.jokers.highlighted[1].config.center.megas) then
      target = G.jokers.highlighted[1]
    else
      for k, poke in pairs(G.jokers.cards) do
        if (poke.config.center.megas or poke.config.center.rarity == "poke_mega") and not (poke.debuff and poke.config.center.megas) then
          target = poke
          break
        end
      end
    end
    if not target then return false end
    if card.ability.extra.used_on and target.config.center.key ~= card.ability.extra.used_on and next(SMODS.find_card(card.ability.extra.used_on)) then return false end
    return true
  end,
  use = function(self, card, area, copier)
    local target = nil
    local forced_key = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and (G.jokers.highlighted[1].config.center.megas or G.jokers.highlighted[1].config.center.rarity == "poke_mega") and
       not (G.jokers.highlighted[1].debuff and G.jokers.highlighted[1].config.center.megas) then
      target = G.jokers.highlighted[1]
    else
      for k, poke in pairs(G.jokers.cards) do
        if (poke.config.center.megas or poke.config.center.rarity == "poke_mega") and not (poke.debuff and poke.config.center.megas) then
          target = poke
          break
        end
      end
    end
    local prefix = target.config.center.poke_custom_prefix or "poke"
    local forced_mega_key = "j_"..prefix.."_"
    if target.config.center.megas then
      local mega = target.config.center.megas[1]
      if #target.config.center.megas > 1 then
        if target.config.center.getMega then
          mega = target.config.center:getMega(target)
        else
          mega = pseudorandom_element(mega, pseudoseed('megastone_'..target.config.center.name))
        end
      end
      forced_key = forced_mega_key.. mega
      if not G.GAME.modifiers.infinite_megastone then
        card.ability.extra.used_on = forced_key
      end
    else
      forced_key = get_previous_evo(target, true)
      card.ability.extra.used_on = nil
    end
    local context = {}
    card.ability.extra.usable = false
     
    poke_evolve(target, forced_key)
  end,
  calculate = function(self, card, context)
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    local mega_poke = false
    if G.jokers and G.jokers.cards then
      for k, poke in pairs(G.jokers.cards) do
        if poke.config.center.megas then
          mega_poke = true
        end
      end
    end
    return mega_poke
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.used_on = nil
    card.ability.extra.usable = true
  end,
  remove_from_deck = function(self, card, from_debuff)
    if card.ability.extra.used_on and next(SMODS.find_card(card.ability.extra.used_on)) then
      for k, v in ipairs(G.jokers.cards) do
        if v.config.center.key == card.ability.extra.used_on then
          local forced_key = get_previous_evo(v, true)
          poke_evolve(v, forced_key)
          break
        end
      end
    end
  end
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
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    local energy = matching_energy(choice, true) or "c_poke_colorless_energy"
    if energy then
      local max = (energy == "c_poke_bird_energy") and 1 or 2
      local context = {}
      for i= 1, max do
        local _card = create_card("Energy", G.pack_cards, nil, nil, true, true, energy, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
    remove(self, choice)
  end,
  can_use = function(self, card)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    return not choice.ability.eternal
  end,
}

local emergy = {
  name = "emergy",
  key = "emergy",
  set = "Energy",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
  end,
  pos = { x = 3, y = 1 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
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
        -- is_jolly() is a cryptid function. It's basically a better Jolly Joker check    -Jevonn
        G.jokers.cards[i]:is_jolly()
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
  end,
  in_pool = function(self)
    --another Cryptid Function, This checks for M jokers   -Jevonn
    local mcheck = 0
    if get_m_jokers then
      mcheck = get_m_jokers()
    elseif Cryptid and Cryptid.get_m_jokers then
      mcheck = Cryptid.get_m_jokers()
    end
		if (mcheck + #find_joker('Jolly Joker')) > 0 then
			return true
		end
		return false
	end,
}

local list = {pokeball, greatball, ultraball, masterball, grass_energy, fire_energy, water_energy, lightning_energy, psychic_energy, fighting_energy, colorless_energy, darkness_energy,              metal_energy, fairy_energy, dragon_energy, earth_energy, bird_energy, double_rainbow_energy, transformation, obituary, nightmare, revenant, megastone}

if (SMODS.Mods["Cryptid"] or {}).can_load then
  table.insert(list, emergy)
end

return {name = "AtlasConsumablesBasic 1",
        list = list
}
