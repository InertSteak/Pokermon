if SMODS.current_mod then
  local loaded, config = pcall(require, "pokermon.setup")
  if not loaded then
      error("Pokermon did not load correctly. Please make sure the Pokermon folder isn't nested within the Mods folder and that you have everything installed properly.")
  end
end

pokermon = {}
SMODS.current_mod.optional_features = { quantum_enhancements = true }

--Undiscovered sprites, mostly for testing some localization things since the game crashes without them
--This can probably have a better integration or just be removed altogether since everything is discovered anyways
-- -Jevonn
SMODS.UndiscoveredSprite({
	key = "Energy",
	atlas = "unergy",
	path = "unergy.png",
	pos = { x = 0, y = 0 },
	px = 71,
	py = 95,
}):register()
SMODS.UndiscoveredSprite({
	key = "Item",
	atlas = "unitem",
	path = "unitem.png",
	pos = { x = 0, y = 0 },
	px = 71,
	py = 95,
}):register()

--Get mod path and load other files
mod_dir = ''..SMODS.current_mod.path
pokermon_config = SMODS.current_mod.config

--Load Joker Display if the mod is enabled
if (SMODS.Mods["JokerDisplay"] or {}).can_load then
  local jokerdisplays = NFS.getDirectoryItems(mod_dir.."jokerdisplay")

  for _, file in ipairs(jokerdisplays) do
    sendDebugMessage ("The file is: "..file)
    local helper, load_error = SMODS.load_file("jokerdisplay/"..file)
    if load_error then
      sendDebugMessage ("The error is: "..load_error)
    else
      helper()
    end
  end
end

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

--Load helper function files
assert(SMODS.load_file("functions/pokeconstants.lua"))()
assert(SMODS.load_file("functions/pokeutils.lua"))()
assert(SMODS.load_file("functions/pokefamily.lua"))()
assert(SMODS.load_file("functions/pokefunctions.lua"))()
assert(SMODS.load_file("functions/energyfunctions.lua"))()
assert(SMODS.load_file("functions/pokeanimations.lua"))()
assert(SMODS.load_file("functions/dex_order.lua"))()
assert(SMODS.load_file("functions/uifunctions.lua"))()

--Load Draw Logic file
assert(SMODS.load_file("functions/pokedraw.lua"))()

--Load Debuff logic
assert(SMODS.load_file("functions/debufffunctions.lua"))()

--Load API
assert(SMODS.load_file("functions/apifunctions.lua"))()

--Load Sprites Load
assert(SMODS.load_file("functions/pokespriteload.lua"))()

--Load Sprites file
assert(SMODS.load_file("pokesprites.lua"))()

--Load InputManager file
assert(SMODS.load_file("functions/inputmanager.lua"))()

--Load DisplayCard file
assert(SMODS.load_file("functions/displaycard.lua"))()

--Load UI file
assert(SMODS.load_file("pokeui.lua"))()

--Load quip file
assert(SMODS.load_file("pokequips.lua"))()

local load_directory = function(dirname, map_item, auto_discovery)
  local pfiles = NFS.getDirectoryItems(mod_dir .. dirname)

  for _, file in ipairs(pfiles) do
    sendDebugMessage ("The file is: "..file)
    local result, load_error = SMODS.load_file(dirname .. "/" ..file)
    if not result then
      sendDebugMessage ("The error is: "..load_error)
    else
      local items = result()
      if items.init then items:init() end

      if items.list and #items.list > 0 then
        for _, item in ipairs(items.list) do
          if auto_discovery and not item.poke_always_unlocked then
            item.discovered = not pokermon_config.pokemon_discovery
          end
          map_item(item)
        end
      end
    end
  end
end

--Load pokemon file
load_directory("pokemon", pokermon.load_pokemon)

--This is a new comment
----Don't believe his lies

--Load consumable types
load_directory("consumable types", SMODS.ConsumableType, true)

--Load consumables
load_directory("consumables", SMODS.Consumable, true)

--Load boosters
load_directory("boosters", SMODS.Booster, true)

--Load seals
load_directory("seals", SMODS.Seal, true)

--Load stickers
load_directory("stickers", function (item)
  item.hide_badge = true
  SMODS.Sticker(item)
end, true)

-- Sets custom skins according to config on load
G.E_MANAGER:add_event(Event({
  func = function()
    G.FUNCS.toggle_pokermon_skins()
	  return true
  end
}))

--Load editions
load_directory("editions", SMODS.Edition, true)

--Load enhancements
load_directory("enhancements", SMODS.Enhancement, true)

--Load vouchers
load_directory("vouchers", SMODS.Voucher, true)

--Load blinds
load_directory("blinds", SMODS.Blind, true)

--Load tags
load_directory("tags", SMODS.Tag, true)

--Load backs
load_directory("backs", SMODS.Back)

--Load Sleeves
if (SMODS.Mods["CardSleeves"] or {}).can_load then
  --Load Sleeves
  load_directory("sleeves", CardSleeves.Sleeve)
end

--Load challenges file
load_directory("challenges", SMODS.Challenge)


local set_edition = Card.set_edition
function Card:set_edition(edition, immediate, silent)
  if (edition and edition == "e_poke_shiny" and not pokermon_config.shiny_playing_cards) and (self.ability.set ~= 'Joker' and self.ability.set ~= 'Edition') then return end
  return set_edition(self, edition, immediate, silent)
end


--Add Jirachi's Negative rate increase

local previous_neg_get_weight = G.P_CENTERS.e_negative.get_weight
G.P_CENTERS.e_negative.get_weight = function(self)
  return previous_neg_get_weight(self) + ((G.GAME.negative_edition_rate or 1) - 1) * G.P_CENTERS.e_negative.weight
end

-- polychrome steals negative's chances with the Hone / Glow Up voucher, so we're gonna steal it back (won't decrease past base weight)
local previous_poly_get_weight = G.P_CENTERS.e_polychrome.get_weight
G.P_CENTERS.e_polychrome.get_weight = function(self)
  return math.max(G.P_CENTERS.e_polychrome.weight, previous_poly_get_weight(self) - ((G.GAME.negative_edition_rate or 1) - 1) * G.P_CENTERS.e_negative.weight)
end

--To support Debris sleeve combo
local card_set_ability_old = Card.set_ability
function Card:set_ability(center, initial, delay_sprites)
  if G.GAME.modifiers.negative_hazards and self.config.center and self.config.center.key == "m_poke_hazard" and self.ability and self.ability.card_limit then
      self.ability.card_limit = self.ability.card_limit - 1
  end
  local ret = card_set_ability_old(self, center, initial, delay_sprites)
  if G.GAME.modifiers.negative_hazards and self.config.center and self.config.center.key == "m_poke_hazard" then
      if not self.ability then self.ability = {} end
      self.ability.card_limit = (self.ability.card_limit or 0) + 1
  end
  return ret
end


function SMODS.current_mod.reset_game_globals(run_start)
  if run_start then
    if G.GAME.modifiers.no_energy then
      G.GAME.energy_rate = 0
    end
  end

  local rank_resets = {'bulb1card', 'sneaselcard', 'bramblincard'}
  for i = 1, #rank_resets do
    poke_reset_rank(rank_resets[i])
  end
  reset_espeon_card()
  reset_gligar_suit()
  
  poke_reset_type('cattype', {'skitty', 'delcatty'})
end

local old_end = end_round
function end_round()
  old_end()
  G.E_MANAGER:add_event(Event({
    trigger = 'after',
    delay = 0.2,
    func = function()
      SMODS.calculate_context({evolution = true})
      return true
    end
  }))
end