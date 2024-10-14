--- STEAMODDED HEADER
--- MOD_NAME: Pokermon
--- MOD_ID: Pokermon
--- MOD_AUTHOR: [See Credits Tab]
--- MOD_DESCRIPTION: A full content Balatro mod where every joker is a Pokemon.
--- BADGE_COLOUR: ED533A
--- VERSION: 1.0.0

pokermon = {}
-- Custom Rarity setup (based on Relic-Jokers)
Game:set_globals()
G.C.RARITY["poke_safari"] = HEX("F2C74E");
local ip = SMODS.insert_pool
function SMODS.insert_pool(pool, center, replace)
    if pool == nil then pool = {} end
    ip(pool, center, replace)
end
local get_badge_colourref = get_badge_colour
function get_badge_colour(key)
    local fromRef = get_badge_colourref(key)
    if key == 'poke_safari' then return G.C.RARITY["poke_safari"] end
    return fromRef
end

--Load all Atlas
SMODS.Atlas({
    key = "Pokedex1",
    path = "Pokedex1.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex2",
    path = "Pokedex2.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex3",
    path = "Pokedex3.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex4",
    path = "Pokedex4.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex5",
    path = "Pokedex5.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex6",
    path = "Pokedex6.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "balls",
    path = "balls.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Mart1",
    path = "Mart1.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "taurosh_atlas",
    path = "taurosh.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "pokepack",
    path = "pokepacks.png",
    px = 71,
    py = 95
}):register()

--Custom colors for Types (humplydinkle wuz here)
local pokecolors = loc_colour
function loc_colour(_c, _default)
  if not G.ARGS.LOC_COLOURS then
    pokecolors()
  end
  G.ARGS.LOC_COLOURS["dark"] = HEX("0086a5")
  G.ARGS.LOC_COLOURS["lightning"] = HEX("f8f800")
  G.ARGS.LOC_COLOURS["fire"] = HEX("f81020")
  G.ARGS.LOC_COLOURS["water"] = HEX("38b8f8")
  G.ARGS.LOC_COLOURS["earth"] = HEX("e97333")
  G.ARGS.LOC_COLOURS["fairy"] = HEX("ff3db6")
  G.ARGS.LOC_COLOURS["fighting"] = HEX("b85838")
  G.ARGS.LOC_COLOURS["colorless"] = HEX("c8c0f8")
  G.ARGS.LOC_COLOURS["psychic"] = HEX("c135ff")
  G.ARGS.LOC_COLOURS["metal"] = HEX("888080")
  G.ARGS.LOC_COLOURS["grass"] = HEX("289830")
  G.ARGS.LOC_COLOURS["dragon"] = HEX("c8a800") 
  return pokecolors(_c, _default)
end

--Get mod path and load other files
local mod_dir = ''..SMODS.current_mod.path

--Load config
local lovely = require("lovely")
pokermon_config = SMODS.current_mod.config

--Load helper function file
local helper, load_error = SMODS.load_file("pokefunctions.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

--Load pokemon file
local pfiles = NFS.getDirectoryItems(mod_dir.."pokemon")

for _, file in ipairs(pfiles) do
  sendDebugMessage ("The file is: "..file)
  local pokemon, load_error = SMODS.load_file("pokemon/"..file)
  if load_error then
    sendDebugMessage ("The error is: "..load_error)
  else
    local curr_pokemon = pokemon()
    if curr_pokemon.init then curr_pokemon:init() end
    
    for i, item in ipairs(curr_pokemon.list) do
      if (pokermon_config.jokers_only and not item.joblacklist) or not pokermon_config.jokers_only  then
        item.discovered = true
        if not item.key then
          item.key = item.name
        end
        if not pokermon_config.no_evos and item.name ~= "taurosh" then
          item.in_pool = pokemon_in_pool
        end
        if item.ptype then
          if item.config and item.config.extra then
            item.config.extra.ptype = item.ptype
          elseif item.config then
            item.config.extra = {ptype = item.ptype}
          end
        end
        if pokermon_config.jokers_only and item.rarity == "poke_safari" then
          item.rarity = 3
        end
        SMODS.Joker(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load consumable types
  local pconsumable_types = NFS.getDirectoryItems(mod_dir.."consumable types")

  for _, file in ipairs(pconsumable_types) do
    sendDebugMessage ("The file is: "..file)
    local con_type, load_error = SMODS.load_file("consumable types/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_type = con_type()
      if curr_type.init then curr_type:init() end
      
      for i, item in ipairs(curr_type.list) do
        SMODS.ConsumableType(item)
      end
    end
  end
end

--Load consumables
local pconsumables = NFS.getDirectoryItems(mod_dir.."consumables")

for _, file in ipairs(pconsumables) do
  sendDebugMessage ("The file is: "..file)
  local consumable, load_error = SMODS.load_file("consumables/"..file)
  if load_error then
    sendDebugMessage ("The error is: "..load_error)
  else
    local curr_consumable = consumable()
    if curr_consumable.init then curr_consumable:init() end
    
    for i, item in ipairs(curr_consumable.list) do
      if (not pokermon_config.jokers_only and not item.pokeball) or (item.pokeball and pokermon_config.pokeballs) then
        SMODS.Consumable(item)
      end
    end
  end
end 

if not pokermon_config.jokers_only then
  --Load boosters
  local pboosters = NFS.getDirectoryItems(mod_dir.."boosters")

  for _, file in ipairs(pboosters) do
    sendDebugMessage ("The file is: "..file)
    local booster, load_error = SMODS.load_file("boosters/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_booster = booster()
      if curr_booster.init then curr_booster:init() end
      
      for i, item in ipairs(curr_booster.list) do
        SMODS.Booster(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load challenges file
  local pchallenges = NFS.getDirectoryItems(mod_dir.."challenges")

  for _, file in ipairs(pchallenges) do
    local challenge, load_error = SMODS.load_file("challenges/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_challenge = challenge()
      if curr_challenge.init then curr_challenge:init() end
      
      for i, item in ipairs(curr_challenge.list) do
        SMODS.Challenge(item)
      end
    end
  end 
end

local il = init_localization
function init_localization()
    il()
    G.localization.misc.v_text.ch_c_poke_master = {"Only Pokemon are allowed."}
end

function SMODS.current_mod.process_loc_text()
    G.localization.descriptions.Other['ancient'] = {
      name = 'Ancient',
      text = {
        "Effect based on",
        "number of {C:attention}#1#s{}",
        "in scoring hand"
      }
    }
    G.localization.descriptions.Other['eitem'] = {
      name = "Evolution Card",
      text = {
        "Evolves leftmost",
        "{C:attention}eligible{} Joker",
      }
    }
    G.localization.descriptions.Other['hitem'] = {
      name = "Held Card",
      text = {
        "Used by {C:attention}#1#{}"
      }
    }
    G.localization.descriptions.Other['basic'] = {
      name = "Basic",
      text = {
        "A Pokemon Joker",
        "that hasn't {C:attention}Evolved{}"
      }
    }
    G.localization.descriptions.Other['stage1'] = {
      name = "Stage 1",
      text = {
        "A Pokemon Joker",
        "that has {C:attention}Evolved{} once"
      }
    }
    G.localization.descriptions.Other['stage2'] = {
      name = "Stage 2",
      text = {
        "A Pokemon Joker",
        "that has {C:attention}Evolved{} twice"
      }
    }
    local ptype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
    for k, v in ipairs(ptype_list) do
      local tooltip = {
        name = "Type",
        text = {
          "{C:"..string.lower(v).."}"..v.."{}",
        }
      }
      G.localization.descriptions.Other[v] = tooltip
    end
end

--Override set cost function
function Card:set_cost()
    self.extra_cost = 0 + G.GAME.inflation
    if self.edition then
        self.extra_cost = self.extra_cost + (self.edition.holo and 3 or 0) + (self.edition.foil and 2 or 0) + 
        (self.edition.polychrome and 5 or 0) + (self.edition.negative and 5 or 0)
    end
    self.cost = math.max(1, math.floor((self.base_cost + self.extra_cost + 0.5)*(100-G.GAME.discount_percent)/100))
    if self.ability.set == 'Booster' and G.GAME.modifiers.booster_ante_scaling then self.cost = self.cost + G.GAME.round_resets.ante - 1 end
    if self.ability.set == 'Booster' and (not G.SETTINGS.tutorial_complete) and G.SETTINGS.tutorial_progress and (not G.SETTINGS.tutorial_progress.completed_parts['shop_1']) then
        self.cost = self.cost + 3
    end
    if (self.ability.set == 'Planet' or (self.ability.set == 'Booster' and self.ability.name:find('Celestial'))) and #find_joker('pidgey') > 0 then self.cost = 2 end
    if (self.ability.set == 'Planet' or (self.ability.set == 'Booster' and self.ability.name:find('Celestial'))) and #find_joker('Astronomer') + #find_joker('pidgeotto') + #find_joker('pidgeot') > 0        then self.cost = 0 end
    if self.ability.rental then self.cost = 1 end
    self.sell_cost = math.max(1, math.floor(self.cost/2)) + (self.ability.extra_value or 0)
    if self.area and self.ability.couponed and (self.area == G.shop_jokers or self.area == G.shop_booster) then self.cost = 0 end
    self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
end

--Override straight function for Rapidash
function get_straight(hand)
  local ret = {}
  local four_fingers = next(find_joker('Four Fingers'))
  if #hand > 5 or #hand < (5 - (four_fingers and 1 or 0)) then return ret else
    local t = {}
    local IDS = {}
    for i=1, #hand do
      local id = hand[i]:get_id()
      if id > 1 and id < 15 then
        if IDS[id] then
          IDS[id][#IDS[id]+1] = hand[i]
        else
          IDS[id] = {hand[i]}
        end
      end
    end

    local straight_length = 0
    local straight = false
    local can_skip = next(find_joker('Shortcut')) or next(find_joker('rapidash'))
    local skipped_rank = false
    for j = 1, 14 do
      if IDS[j == 1 and 14 or j] then
        straight_length = straight_length + 1
        skipped_rank = false
        for k, v in ipairs(IDS[j == 1 and 14 or j]) do
          t[#t+1] = v
        end
      elseif can_skip and not skipped_rank and j ~= 14 then
          skipped_rank = true
      else
        straight_length = 0
        skipped_rank = false
        if not straight then t = {} end
        if straight then break end
      end
      if straight_length >= (5 - (four_fingers and 1 or 0)) then straight = true end 
    end
    if not straight then return ret end
    table.insert(ret, t)
    return ret
  end
end

if not pokermon_config.jokers_only then
  --Register custom rarity pools
  local is = SMODS.injectItems
  function SMODS.injectItems()
      local m = is()
      G.P_JOKER_RARITY_POOLS.poke_safari = {}
      for k, v in pairs(G.P_CENTERS) do
          v.key = k
          if v.rarity and (v.rarity == 'poke_safari') and v.set == 'Joker' and not v.demo then 
              table.insert(G.P_JOKER_RARITY_POOLS[v.rarity], v)
          end
      end
      return m
  end
end

--Config UI
SMODS.current_mod.config_tab = function()
    return {
      n = G.UIT.ROOT,
      config = {
        align = "cm",
        padding = 0.05,
        colour = G.C.CLEAR,
      },
      nodes = {
        create_toggle({
          label = "Pokemon Only?",
          ref_table = pokermon_config,
          ref_value = "pokemon_only",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Jokers Only?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "jokers_only",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "No Evolutions?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "no_evos",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Pokeballs?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "pokeballs",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
      },
    }
end

SMODS.current_mod.extra_tabs = function()
  local scale = 0.75
  return {
    label = "Credits",
    tab_definition_function = function()
      return {
        n = G.UIT.ROOT,
        config = {
          align = "cm",
          padding = 0.05,
          colour = G.C.CLEAR,
        },
        nodes = {
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "Thanks to",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "InertSteak",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "Larantula, Joey J. Jester",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "GayCoonie, Marie|Tsunami",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "Yamper, Jevonnissocoolman",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = "TheKuro",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0.2,
              align = "cm",
            },
            nodes = {
              UIBox_button({
                minw = 3.85,
                button = "pokermon_github",
                label = {"Github"}
              })
            }
          },
        },
      }
    end
  }
end
function G.FUNCS.pokermon_github(e)
	love.system.openURL("https://github.com/InertSteak/Pokermon")
end
