pokermon = {}

--Undiscovered sprites, mostly for testing some localization things since the game crashes without them
--This can probably have a better integration or just be removed altogether since everything is discovered anyways
-- -Jevonn
SMODS.UndiscoveredSprite({
	key = "Energy",
	atlas = "Mart",
	path = "Mart.png",
	pos = { x = 0, y = 0 },
	px = 71,
	py = 95,
}):register()
SMODS.UndiscoveredSprite({
	key = "Item",
	atlas = "Mart",
	path = "Mart.png",
	pos = { x = 0, y = 0 },
	px = 71,
	py = 95,
}):register()

--Get mod path and load other files
mod_dir = ''..SMODS.current_mod.path
pokermon_config = SMODS.current_mod.config

--Load Custom Rarities
SMODS.Rarity{
    key = "safari",
    default_weight = 0,
    badge_colour = HEX("F2C74E"),
    pools = {["Joker"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.Rarity{
    key = "mega",
    default_weight = 0,
     -- color from bulbapedia (effect color around Mega Blaziken artwork: https://bulbapedia.bulbagarden.net/wiki/File:Blaziken_Mega_Evolution.png)
    badge_colour = HEX("E8578E"),
    pools = {["Joker"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.Rarity{
    key = "egg",
    default_weight = 0,
    badge_colour = G.C.DARK_EDITION,
    pools = {["Joker"] = true},
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

--Load helper function files
local helper, load_error = SMODS.load_file("functions/pokeutils.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

local helper, load_error = SMODS.load_file("functions/pokefunctions.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

local helper, load_error = SMODS.load_file("functions/energyfunctions.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

--Load Sprites file
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
          if not pokermon_config.no_evos and not item.custom_pool_func then
            item.in_pool = function(self)
              return pokemon_in_pool(self)
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
          if item.evo_list then
            if item.config and item.config.extra then
              item.config.extra.evo_list = item.evo_list
            elseif item.config then
              item.config.extra = {item_req = item.evo_list}
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
--Load Sleeves

if not pokermon_config.jokers_only and (SMODS.Mods["CardSleeves"] or {}).can_load then
  --Load Sleeves
  local sleeves = NFS.getDirectoryItems(mod_dir.."sleeves")

  for _, file in ipairs(sleeves) do
    sendDebugMessage ("the file is: "..file)
    local sleeve, load_error = SMODS.load_file("sleeves/"..file)
    if load_error then
      sendDebugMessage("The error is: "..load_error)
    else
      local curr_sleeve = sleeve()
      if curr_sleeve.init then curr_sleeve.init() end
      
      for i,item in ipairs (curr_sleeve.list) do
        CardSleeves.Sleeve(item)
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


--Add Rapidash's shortcut effect 2/2
--Hook SMODS.find_card to force it to return find_joker instead (EXTREMELY CURSED)

local scuffed_af = SMODS.find_card
function SMODS.find_card(key, count_debuffed)
	if key == "j_shortcut" and (G.GAME.current_round.hands_played or 0) == 0 then
		local bruh = find_joker("Shortcut")
		return bruh
	end	
	return scuffed_af(key, count_debuffed)
end

local set_edition = Card.set_edition
function Card:set_edition(edition, immediate, silent)
  if (edition and edition == "e_poke_shiny" and not pokermon_config.shiny_playing_cards) and (self.ability.set ~= 'Joker' and self.ability.set ~= 'Edition') then return end
  return set_edition(self, edition, immediate, silent)
end
