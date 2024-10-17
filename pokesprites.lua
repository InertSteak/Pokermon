--Visual Code for Pokemon
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

--Load config
local lovely = require("lovely")
pokermon_config = SMODS.current_mod.config

--Load all Atlas
SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})
if pokermon_config.pokemon_num then
  SMODS.Atlas({
      key = "Pokedex1",
      path = "Pokedex1Num.png",
      px = 71,
      py = 95
  }):register()

  SMODS.Atlas({
      key = "Shinydex1",
      path = "Shinydex1Num.png",
      px = 71,
      py = 95
  }):register()
else
  SMODS.Atlas({
      key = "Pokedex1",
      path = "Pokedex1.png",
      px = 71,
      py = 95
  }):register()

  SMODS.Atlas({
      key = "Shinydex1",
      path = "Shinydex1.png",
      px = 71,
      py = 95
  }):register()
end

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
    key = "pokepack",
    path = "pokepacks.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "pinkseal",
    path = "pinkseal.png",
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
  G.ARGS.LOC_COLOURS["bird"] = HEX("F7B58C")
  G.ARGS.LOC_COLOURS["pink"] = HEX("FF7ABF")
  return pokecolors(_c, _default)
end