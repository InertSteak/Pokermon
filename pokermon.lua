if SMODS.current_mod then
  local loaded, config = pcall(require, "pokermon.setup")
  if not loaded then
      error("Pokermon did not load correctly. Please make sure the Pokermon folder isn't nested within the Mods folder and that you have everything installed properly.")
  end
end

pokermon = {}

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

SMODS.current_mod.set_debuff = function(card)
  if card and card.ability and card.ability.fainted == G.GAME.round then
    return G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.HAND_PLAYED or G.STATE == G.STATES.DRAW_TO_HAND
  end
  return false
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

local helper, load_error = SMODS.load_file("functions/pokeanimations.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  helper()
end

local helper, load_error = SMODS.load_file("functions/uifunctions.lua")
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

--Commenting this out for now since it doesn't work 100% of the time
--check_for_needed_config()

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
        item.discovered = true
        if not item.key then
          item.key = item.name
        end
        if not item.custom_pool_func then
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
        item.discovered = not pokermon_config.pokemon_discovery
        local prev_load = item.load
        item.load = function(self, card, card_table, other_card)
          card_table.ability.extra.juiced = nil
          if type(self.calculate) == "function" then
            G.E_MANAGER:add_event(Event({
              func = function()
                self.calculate(self, card, {poke_load = true})
                return true
              end
            }))
          end
          if prev_load then
            prev_load(self, card, card_table, other_card)
          end
        end
        SMODS.Joker(item)
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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.ConsumableType(item)
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
      if not (item.pokeball and not pokermon_config.pokeballs) then
        item.discovered = not pokermon_config.pokemon_discovery
        SMODS.Consumable(item)
      end
    end
  end
end 


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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Booster(item)
    end
  end
end



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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Seal(item)
    end
  end
end

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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Sticker(item)
    end
  end
end

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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Edition(item)
    end
  end
end


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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Voucher(item)
    end
  end
end

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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Blind(item)
    end
  end
end

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
      item.discovered = not pokermon_config.pokemon_discovery
      SMODS.Tag(item)
    end
  end
end

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
--Load Sleeves

if (SMODS.Mods["CardSleeves"] or {}).can_load then
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

--To remove the booster slot from shinies
local removed = Card.remove
function Card:remove()
  if self.edition and self.edition.poke_shiny and not self.debuff and self.area and (self.area == G.jokers or self.area == G.hand or self.area == G.play) then
    SMODS.change_booster_limit(-1)
  end
  return removed(self)
end

--Tutorial WIP
--[[
local gu = Game.update
function Game:update(dt)
	gu(self, dt)
	if not G.PROFILES[G.SETTINGS.profile].poke_intro_complete then
		G.FUNCS.poke_intro_controller()
	end
end
G.FUNCS.poke_intro_controller = function()
  	G.PROFILES[G.SETTINGS.profile].poke_intro_progress = G.PROFILES[G.SETTINGS.profile].poke_intro_progress
		or {
			state = "start",
			completed = {},
		}
    if not G.SETTINGS.paused and not G.PROFILES[G.SETTINGS.profile].poke_intro_complete then
      if G.STATE == G.STATES.MENU and not G.PROFILES[G.SETTINGS.profile].poke_intro_progress.completed.start then
        G.PROFILES[G.SETTINGS.profile].poke_intro_progress.section = "start"
        G.FUNCS.poke_intro_part("start")
        G.PROFILES[G.SETTINGS.profile].poke_intro_progress.completed.start = true
        G:save_progress()
      end
    end
end
G.FUNCS.poke_intro_part = function(_part)
	local step = 1
	G.SETTINGS.paused = true
	if _part == "start" then
    step = poke_info({
        text_key = 'poke_intro_1',
        attach = {major = G.ROOM_ATTACH, type = 'cm', offset = {x = 0, y = 0}},
        step = step,
    })
  end
  G.E_MANAGER:add_event(Event({
      blockable = false,
      timer = 'REAL',
      func = function()
        G.E_MANAGER:clear_queue("tutorial")
        if G.OVERLAY_TUTORIAL.content then
          G.OVERLAY_TUTORIAL.content:remove()
        end
        if G.OVERLAY_TUTORIAL.Jimbo then
          G.OVERLAY_TUTORIAL.Jimbo:remove_button()
          G.OVERLAY_TUTORIAL.Jimbo:remove_speech_bubble()
        end
        G.OVERLAY_TUTORIAL.step = nil
      end
  }), 'tutorial')
  G.SETTINGS.paused = false
end


function poke_info(args)
  poke_debug("start poke info")
	local overlay_colour = { 0.32, 0.36, 0.41, 0 }
	ease_value(overlay_colour, 4, 0.6, nil, "REAL", true, 0.4)
	G.OVERLAY_TUTORIAL = G.OVERLAY_TUTORIAL
		or UIBox({
			definition = {
				n = G.UIT.ROOT,
				config = { align = "cm", padding = 32.05, r = 0.1, colour = overlay_colour, emboss = 0.05 },
				nodes = {},
			},
			config = {
				align = "cm",
				offset = { x = 0, y = 3.2 },
				major = G.ROOM_ATTACH,
				bond = "Weak",
			},
		})
	G.OVERLAY_TUTORIAL.step = G.OVERLAY_TUTORIAL.step or 1
	G.OVERLAY_TUTORIAL.step_complete = false
	local row_dollars_chips = G.HUD and G.HUD:get_UIE_by_ID("row_dollars_chips") or G.ROOM_ATTACH
	local align = args.align or "tm"
	local step = args.step or 1
	local attach = args.attach or { major = row_dollars_chips, type = "tm", offset = { x = 0, y = -0.5 } }
	local pos = args.pos or { x = attach.major.T.x + attach.major.T.w / 2, y = attach.major.T.y + attach.major.T.h / 2 }
	local button = args.button or { button = localize("b_next"), func = "tut_next" }
	args.highlight = args.highlight or {}
	G.E_MANAGER:add_event(
		Event({
			trigger = "after",
			delay = 0.3,
			func = function()
				if G.OVERLAY_TUTORIAL and G.OVERLAY_TUTORIAL.step == step and not G.OVERLAY_TUTORIAL.step_complete then
					if args.on_start then
						args.on_start()
					end
					G.CONTROLLER.interrupt.focus = true
					G.OVERLAY_TUTORIAL.Jimbo = G.OVERLAY_TUTORIAL.Jimbo or Card_Character(pos)
					if type(args.highlight) == "function" then
						args.highlight = args.highlight()
					end
					args.highlight[#args.highlight + 1] = G.OVERLAY_TUTORIAL.Jimbo
					if args.text_key then
						G.OVERLAY_TUTORIAL.Jimbo:add_speech_bubble(args.text_key, align, args.loc_vars)
					end
					G.OVERLAY_TUTORIAL.Jimbo:set_alignment(attach)
					if args.hard_set then
						G.OVERLAY_TUTORIAL.Jimbo:hard_set_VT()
					end
					G.OVERLAY_TUTORIAL.button_listen = nil
					if G.OVERLAY_TUTORIAL.content then
						G.OVERLAY_TUTORIAL.content:remove()
					end
					if args.content then
						G.OVERLAY_TUTORIAL.content = UIBox({
							definition = args.content(),
							config = {
								align = args.content_config and args.content_config.align or "cm",
								offset = args.content_config and args.content_config.offset or { x = 0, y = 0 },
								major = args.content_config and args.content_config.major or G.OVERLAY_TUTORIAL.Jimbo,
								bond = "Weak",
							},
						})
						args.highlight[#args.highlight + 1] = G.OVERLAY_TUTORIAL.content
					end
					if args.button_listen then
						G.OVERLAY_TUTORIAL.button_listen = args.button_listen
					end
					if not args.no_button then
						G.OVERLAY_TUTORIAL.Jimbo:add_button(
							button.button,
							button.func,
							button.colour,
							button.update_func,
							true
						)
					end
					G.OVERLAY_TUTORIAL.Jimbo:say_stuff(2 * #(G.localization.misc.tutorial[args.text_key] or {}) + 1)
					if args.snap_to then
						G.E_MANAGER:add_event(
							Event({
								trigger = "immediate",
								blocking = false,
								blockable = false,
								func = function()
									if
										G.OVERLAY_TUTORIAL
										and G.OVERLAY_TUTORIAL.Jimbo
										and not G.OVERLAY_TUTORIAL.Jimbo.talking
									then
										local _snap_to = args.snap_to()
										if _snap_to then
											G.CONTROLLER.interrupt.focus = false
											G.CONTROLLER:snap_to({ node = args.snap_to() })
										end
										return true
									end
								end,
							}),
							"tutorial"
						)
					end
					if args.highlight then
						G.OVERLAY_TUTORIAL.highlights = args.highlight
					end
					G.OVERLAY_TUTORIAL.step_complete = true
				end
				return not G.OVERLAY_TUTORIAL or G.OVERLAY_TUTORIAL.step > step or G.OVERLAY_TUTORIAL.skip_steps
			end,
		}),
		"tutorial"
	)
	return step + 1
end
--]]