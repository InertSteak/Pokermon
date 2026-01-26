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

--To remove the booster slot from shinies
local removed = Card.remove
function Card:remove()
  if self.edition and self.edition.poke_shiny and not self.debuff and self.area and (self.area == G.jokers or self.area == G.hand or self.area == G.play) then
    SMODS.change_booster_limit(-1)
  end
  return removed(self)
end

function SMODS.current_mod.reset_game_globals(run_start)
  local rank_resets = {'bulb1card', 'sneaselcard', 'bramblincard'}
  for i = 1, #rank_resets do
    poke_reset_rank(rank_resets[i])
  end
  reset_espeon_card()
  reset_gligar_suit()
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
