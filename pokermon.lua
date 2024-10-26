--- STEAMODDED HEADER
--- MOD_NAME: Pokermon
--- MOD_ID: Pokermon
--- MOD_AUTHOR: [See Credits Tab]
--- MOD_DESCRIPTION: A full content Balatro mod where every joker is a Pokemon.
--- BADGE_COLOUR: ED533A
--- VERSION: 1.6.0

pokermon = {}

--Get mod path and load other files
mod_dir = ''..SMODS.current_mod.path
pokermon_config = SMODS.current_mod.config

--Load helper function file
local helper, load_error = SMODS.load_file("pokefunctions.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

--Load Sprites file
--Load UI file
local sprite, load_error = SMODS.load_file("pokesprites.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  sprite()
end

--Load UI file
local UI, load_error = SMODS.load_file("pokeui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
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
    
    if curr_pokemon.list and #curr_pokemon.list > 0 then
      for i, item in ipairs(curr_pokemon.list) do
        if (pokermon_config.jokers_only and not item.joblacklist) or not pokermon_config.jokers_only  then
          item.discovered = true
          if not item.key then
            item.key = item.name
          end
          if not pokermon_config.no_evos and item.name ~= "taurosh" then
            item.in_pool = function(self)
              return pokemon_in_pool(self, false)
            end
          end
          if not item.config then
            item.config = {}
          end
          if item.ptype then
            if item.config and item.config.extra then
              item.config.extra.ptype = item.ptype
            elseif item.config then
              item.config.extra = {ptype = item.ptype}
            end
          end
          if item.item_req then
            if item.config and item.config.extra then
              item.config.extra.item_req = item.item_req
            elseif item.config then
              item.config.extra = {item_req = item.item_req}
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
end

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
      if (not pokermon_config.jokers_only) or (not pokermon_config.no_evos and item.key == "Item") then
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
      if ((not pokermon_config.jokers_only and not item.pokeball) or (item.pokeball and pokermon_config.pokeballs)) or (item.evo_item and not pokermon_config.no_evos) then
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
  --Load seals
  local pseals = NFS.getDirectoryItems(mod_dir.."seals")

  for _, file in ipairs(pseals) do
    sendDebugMessage ("The file is: "..file)
    local seal, load_error = SMODS.load_file("seals/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_seal = seal()
      if curr_seal.init then curr_seal:init() end
      
      for i, item in ipairs(curr_seal.list) do
        SMODS.Seal(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load stickers
  local pseals = NFS.getDirectoryItems(mod_dir.."stickers")

  for _, file in ipairs(pseals) do
    sendDebugMessage ("The file is: "..file)
    local sticker, load_error = SMODS.load_file("stickers/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_sticker = sticker()
      if curr_sticker.init then curr_sticker:init() end
      
      for i, item in ipairs(curr_sticker.list) do
        SMODS.Sticker(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load editions
  local editions = NFS.getDirectoryItems(mod_dir.."editions")

  for _, file in ipairs(editions) do
    sendDebugMessage ("The file is: "..file)
    local edition, load_error = SMODS.load_file("editions/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_edition = edition()
      if curr_edition.init then curr_edition:init() end
      
      for i, item in ipairs(curr_edition.list) do
        SMODS.Edition(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load vouchers
  local vouchers = NFS.getDirectoryItems(mod_dir.."vouchers")

  for _, file in ipairs(vouchers) do
    sendDebugMessage ("The file is: "..file)
    local voucher, load_error = SMODS.load_file("vouchers/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_voucher = voucher()
      if curr_voucher.init then curr_voucher:init() end
      
      for i, item in ipairs(curr_voucher.list) do
        SMODS.Voucher(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load blinds
  local blinds = NFS.getDirectoryItems(mod_dir.."blinds")

  for _, file in ipairs(blinds) do
    sendDebugMessage ("The file is: "..file)
    local blind, load_error = SMODS.load_file("blinds/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_blind = blind()
      if curr_blind.init then curr_blind:init() end
      
      for i, item in ipairs(curr_blind.list) do
        SMODS.Blind(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load tags
  local tags = NFS.getDirectoryItems(mod_dir.."tags")

  for _, file in ipairs(tags) do
    sendDebugMessage ("The file is: "..file)
    local tag, load_error = SMODS.load_file("tags/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_tag = tag()
      if curr_tag.init then curr_tag:init() end
      
      for i, item in ipairs(curr_tag.list) do
        SMODS.Tag(item)
      end
    end
  end
end

if not pokermon_config.jokers_only then
  --Load backs
  local backs = NFS.getDirectoryItems(mod_dir.."backs")

  for _, file in ipairs(backs) do
    sendDebugMessage ("The file is: "..file)
    local back, load_error = SMODS.load_file("backs/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      local curr_back = back()
      if curr_back.init then curr_back:init() end
      
      for i, item in ipairs(curr_back.list) do
        SMODS.Back(item)
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
    
    G.localization.descriptions.Other['energy'] = {
      name = "Energy Used",
      text = {
        "{C:attention}#1#{}/#2#",
      }
    }
    
    G.localization.descriptions.Other['reserve'] = {
      name = "Reservable",
      text = {
        "Creates a {C:attention}copy{} of",
        "self if used in pack and", 
        "its effect didn't apply"
      }
    }
    
    G.localization.misc.dictionary['k_poke_pocket_pack'] = "Pocket Pack"
    
    G.localization.misc.dictionary.b_save = "SAVE"
    
    local ptype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth", "Bird"}
    for k, v in ipairs(ptype_list) do
      local text_color = "white"
      if v == "Lightning" then
        text_color = "black"
      end
      local tooltip = {
        name = "Type",
        text = {
          "{X:"..string.lower(v)..",C:"..text_color.."}"..v.."{}",
        }
      }
      G.localization.descriptions.Other[v] = tooltip
    end
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
