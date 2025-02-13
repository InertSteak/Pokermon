--Visual Code for Pokemon
--Load config
local lovely = require("lovely")

--Load all Atlas
SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

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

SMODS.Atlas({
    key = "Pokedex2",
    path = "Pokedex2.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Shinydex2",
    path = "Shinydex2.png",
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
    key = "Shinydex3",
    path = "Shinydex3.png",
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
    key = "Shinydex4",
    path = "Shinydex4.png",
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
    key = "Shinydex5",
    path = "Shinydex5.png",
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
    key = "Shinydex6",
    path = "Shinydex6.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex7",
    path = "Pokedex7.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Shinydex7",
    path = "Shinydex7.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex8",
    path = "Pokedex8.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Shinydex8",
    path = "Shinydex8.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Pokedex9",
    path = "Pokedex9.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Shinydex9",
    path = "Shinydex9.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Mart",
    path = "Mart.png",
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

SMODS.Atlas({
    key = "pokevouchers",
    path = "pokevouchers.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Megas",
    path = "Megas.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "others",
    path = "others.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "Shinyothers",
    path = "Shinyothers.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "pokeboss",
    atlas_table = "ANIMATION_ATLAS",
    path = "pokeboss.png",
    px = 34,
    py = 34,
    frames = 21,
}):register()

SMODS.Atlas({
    key = "poketag",
    path = "poketag.png",
    px = 34,
    py = 34,
}):register()

SMODS.Atlas({
    key = "pokedeck",
    path = "pokedeck.png",
    px = 71,
    py = 95,
}):register()

SMODS.Atlas({
      key = "pokesleeves",
      path = "pokesleeves.png",
      px = 71,
      py = 95
  }):register()

SMODS.Atlas({
    key = "shinyjoker",
    path = "shinyjokersatlas.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "placeholder_item",
    path = "placeholder_item.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "unergy",
    path = "unergy.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "unitem",
    path = "unitem.png",
    px = 71,
    py = 95
}):register()

--Custom sounds
SMODS.Sound({
    key = "e_shiny",
    path = "e_shiny.ogg"
}):register()

SMODS.Sound({
	key = "pocklet_music_high",
	path = "pocklet_music_high.ogg",
  volume = 3,
	select_music_track = function()
		return G.STATE and G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.label:find("Pocket")
	end,
})

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
  G.ARGS.LOC_COLOURS["item"] = HEX("9AA4B7")
  G.ARGS.LOC_COLOURS["safari"] = HEX("F2C74E")
  return pokecolors(_c, _default)
end