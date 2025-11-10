--Visual Code for Pokemon
--Load config
local lovely = require("lovely")

--Load all Atlas
local joker_basic_atlases = {"Gen01", "Gen02", "Gen03", "Gen04", "Gen05", "Gen06", "Gen07", "Gen08", "Gen09", "Natdex", "Others"}
local basic_prefix = "AtlasJokersBasic"
local series_a_prefix = "AtlasJokersSeriesA"

for i = 1, #joker_basic_atlases do
  local atlas_base = basic_prefix..joker_basic_atlases[i]
  local atlas_shiny = atlas_base.."Shiny"
  --load normal and shiny atlas
  SMODS.Atlas({
    key = atlas_base,
    path = 'Basic Series/'..atlas_base..".png",
    px = 71,
    py = 95
  }):register()

  SMODS.Atlas({
    key = atlas_shiny,
    path = 'Basic Series/'..atlas_shiny..".png",
    px = 71,
    py = 95
  }):register()
  if joker_basic_atlases[i] ~= "Others" then
    local atlas_seriesa = series_a_prefix..joker_basic_atlases[i]
    local atlas_seriesa_shiny = atlas_seriesa.."Shiny"
    --load normal and shiny atlas
    SMODS.Atlas({
      key = atlas_seriesa,
      path = 'Series A/'..atlas_seriesa..".png",
      px = 71,
      py = 95
    }):register()

    SMODS.Atlas({
      key = atlas_seriesa_shiny,
      path = 'Series A/'..atlas_seriesa_shiny..".png",
      px = 71,
      py = 95
    }):register()
  end
end

SMODS.Atlas({
    key = "AtlasJokersSeriesBNatdex",
    path = "Series B/AtlasJokersSeriesBNatdex.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasJokersSeriesBNatdexShiny",
    path = "Series B/AtlasJokersSeriesBNatdexShiny.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasBoosterpacksBasic",
    path = "Basic Series/AtlasBoosterpacksBasic.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasBoosterpacksSeriesA",
    path = "Series A/AtlasBoosterpacksSeriesA.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasBossblinds",
    atlas_table = "ANIMATION_ATLAS",
    path = "AtlasBossblinds.png",
    px = 34,
    py = 34,
    frames = 21,
}):register()

SMODS.Atlas({
    key = "placeholder_blind",
    atlas_table = "ANIMATION_ATLAS",
    path = "placeholder_blind.png",
    px = 34,
    py = 34,
    frames = 21,
}):register()

SMODS.Atlas({
    key = "AtlasConsumablesBasic",
    path = "Basic Series/AtlasConsumablesBasic.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasConsumablesBirdEnergy",
    path = "Basic Series/AtlasConsumablesBirdEnergy.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasConsumablesSeriesA",
    path = "Series A/AtlasConsumablesSeriesA.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasDecksBasic",
    path = "Basic Series/AtlasDecksBasic.png",
    px = 71,
    py = 95,
}):register()

SMODS.Atlas({
    key = "AtlasDecksSeriesA",
    path = "Series A/AtlasDecksSeriesA.png",
    px = 71, 
    py = 95,
}):register()

SMODS.Atlas({
    key = "AtlasEnhancementsBasic",
    path = "Basic Series/AtlasEnhancementsBasic.png",
    px = 71,
    py = 95,
}):register()

SMODS.Atlas({
    key = "AtlasEnhancementsSeriesA",
    path = "Series A/AtlasEnhancementsSeriesA.png",
    px = 71,
    py = 95,
}):register()

SMODS.Atlas({
    key = "AtlasJokersVanillaShiny",
    path = "AtlasJokersVanillaShiny.png",
    px = 71,
    py = 95,
}):register()

SMODS.Atlas({
    key = "AtlasStickersBasic",
    path = "Basic Series/AtlasStickersBasic.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasStickersSeriesA",
    path = "Series A/AtlasStickersSeriesA.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasTags",
    path = "AtlasTags.png",
    px = 34,
    py = 34,
}):register()

SMODS.Atlas({
    key = "AtlasVouchersBasic",
    path = "Basic Series/AtlasVouchersBasic.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasVouchersSeriesA",
    path = "Series A/AtlasVouchersSeriesA.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasJokersSeriesAVoltorb",
    path = "Series A/AtlasJokersSeriesAVoltorb.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasJokersSeriesAVoltorbShiny",
    path = "Series A/AtlasJokersSeriesAVoltorbShiny.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasJokersSeriesAElectrode",
    path = "Series A/AtlasJokersSeriesAElectrode.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "AtlasJokersSeriesAElectrodeShiny",
    path = "Series A/AtlasJokersSeriesAElectrodeShiny.png",
    px = 71,
    py = 95
}):register()


SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

SMODS.Atlas({
    key = "placeholder_item",
    path = "placeholder_item.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "placeholder_deck",
    path = "placeholder_deck.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "placeholder_sleeve",
    path = "placeholder_sleeve.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "placeholder_joker",
    path = "placeholder_joker.png",
    px = 71,
    py = 95
}):register()

SMODS.Atlas({
    key = "placeholder_jokerShiny",
    path = "placeholder_jokerShiny.png",
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

SMODS.Atlas({
    key = "smeargle_logo",
    path = "smeargle_logo.png",
    px = 300,
    py = 194
}):register()

SMODS.Atlas({
    key = "poke_logo",
    path = "poke_logo.png",
    px = 389,
    py = 216
}):register()

--Custom sounds
SMODS.Sound({
    key = "e_shiny",
    path = "e_shiny.ogg"
}):register()

SMODS.Sound({
	key = "pocket_music_high",
	path = "pocket_music_high.ogg",
	select_music_track = function()
		return G.STATE and G.STATE == G.STATES.SMODS_BOOSTER_OPENED and (SMODS.OPENED_BOOSTER.label:find("Pocket") or SMODS.OPENED_BOOSTER.label:find("Starter"))
	end,
})
SMODS.Sound({
	key = "energy_use",
	path = "energy_use.ogg",
})

SMODS.Sound({
    key = "shellchomp",
    path = "chomp.ogg",
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
  G.ARGS.LOC_COLOURS["pocket"] = HEX("E8C069")
  return pokecolors(_c, _default)
end

--Stake textures for Malverk
if (SMODS.Mods["malverk"] or {}).can_load then
  AltTexture({
      key = 'chips', -- the key of the texture
      set = 'Stake', -- define the object type that you are retexturing, see wiki for full list of types
      path = 'pokestakes.png', -- the filename of your spritesheet, saved in assets/1x AND assets/2x
      stickers = true,
      original_sheet = true,
    })
  TexturePack({
      key = 'pokestakes', -- the key of the texture
      textures = {'poke_chips'}, -- a table of keys of your AltTexture objects
      loc_txt = { -- Localization text for tooltips displayed in the texture selection screen - can be added to a localization file under [descriptions][texture_packs]
        name = 'Pokéball Stakes',
        text = {'Adds Pokéball sprites to the stake chips!'}
      }
    })
end

--Deck Skins
--RBY sprites skins by GAME FREAK, arranged by Catzzadilla
local RBYspades = SMODS.Atlas{
    key = 'RBY_Spades_atlas',
    path = 'DeckSkins/Gen01RBYSpades.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYclubs = SMODS.Atlas{
    key = 'RBY_Clubs_atlas',
    path = 'DeckSkins/Gen01RBYClubs.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYhearts = SMODS.Atlas{
    key = 'RBY_Hearts_atlas',
    path = 'DeckSkins/Gen01RBYHearts.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYdiamonds = SMODS.Atlas{
    key = 'RBY_Diamonds_atlas',
    path = 'DeckSkins/Gen01RBYDiamonds.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYspadesHC = SMODS.Atlas{
    key = 'RBY_Spades_HC_atlas',
    path = 'DeckSkins/Gen01RBYSpadesHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYclubsHC = SMODS.Atlas{
    key = 'RBY_Clubs_HC_atlas',
    path = 'DeckSkins/Gen01RBYClubsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYheartsHC = SMODS.Atlas{
    key = 'RBY_Hearts_HC_atlas',
    path = 'DeckSkins/Gen01RBYHeartsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local RBYdiamondsHC = SMODS.Atlas{
    key = 'RBY_Diamonds_HC_atlas',
    path = 'DeckSkins/Gen01RBYDiamondsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

SMODS.DeckSkin {
	key = "RBY_Spades_Skins",
	suit = "Spades",
	loc_txt = {
        ['en-us'] = 'RBY Sprites: Ghost Trio'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYspades.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYspadesHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "RBY_Clubs_Skins",
	suit = "Clubs",
	loc_txt = {
        ['en-us'] = 'RBY Sprites: Fossil Trio'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYclubs.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYclubsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "RBY_Hearts_Skins",
	suit = "Hearts",
	loc_txt = {
        ['en-us'] = 'RBY Sprites: Eeveelution Trio'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYhearts.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYheartsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "RBY_Diamonds_Skins",
	suit = "Diamonds",
	loc_txt = {
        ['en-us'] = 'RBY Sprites: Dragon Trio'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYdiamonds.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = RBYdiamondsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

-- GSC Sprites Skins by GAME FREAK, arranged by Catzzadilla

local GSCmorning = SMODS.Atlas{
    key = 'GSC_morning_atlas',
    path = 'DeckSkins/Gen02GSCSpadesMorning.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCevening = SMODS.Atlas{
    key = 'GSC_evening_atlas',
    path = 'DeckSkins/Gen02GSCSpadesEvening.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCclubs = SMODS.Atlas{
    key = 'GSC_clubs_atlas',
    path = 'DeckSkins/Gen02GSCClubs.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSChearts = SMODS.Atlas{
    key = 'GSC_Hearts_atlas',
    path = 'DeckSkins/Gen02GSCHearts.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCdiamonds = SMODS.Atlas{
    key = 'GSC_Diamonds_atlas',
    path = 'DeckSkins/Gen02GSCDiamonds.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCmorningHC = SMODS.Atlas{
    key = 'GSC_morning_HC_atlas',
    path = 'DeckSkins/Gen02GSCSpadesMorningHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCeveningHC = SMODS.Atlas{
    key = 'GSC_evening_HC_atlas',
    path = 'DeckSkins/Gen02GSCSpadesEveningHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCclubsHC = SMODS.Atlas{
    key = 'GSCClubs_HC_atlas',
    path = 'DeckSkins/Gen02GSCClubsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCheartsHC = SMODS.Atlas{
    key = 'GSC_Hearts_HC_atlas',
    path = 'DeckSkins/Gen02GSCHeartsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

local GSCdiamondsHC = SMODS.Atlas{
    key = 'GSCDiamonds_HC_atlas',
    path = 'DeckSkins/Gen02GSCDiamondsHC.png',
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS'
}

SMODS.DeckSkin {
	key = "GSC_Spades_Skins",
	suit = "Spades",
	loc_txt = {
        ['en-us'] = 'GSC Sprites: Day and Night'
    },
	palettes = {
		{
			key = 'morninglc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCmorning.key,
			loc_txt = {
        		['en-us'] = 'Morning'
    		},
			pos_style = 'collab',
		},
		{
			key = 'eveninglc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCevening.key,
			loc_txt = {
        		['en-us'] = 'Evening'
    		},
			pos_style = 'collab',
		},
		{
			key = 'morninghc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCmorningHC.key,
			loc_txt = {
        		['en-us'] = 'Morning (High Contrast)'
    		},
			pos_style = 'collab',
			hc_default = true,
		},
		{
			key = 'eveninghc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCeveningHC.key,
			loc_txt = {
        		['en-us'] = 'Evening (High Contrast)'
    		},
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "GSC_Clubs_skins",
	suit = "Clubs",
	loc_txt = {
        ['en-us'] = 'GSC Sprites: Mystic Mons'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCclubs.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCclubsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "GSC_Hearts_Skins",
	suit = "Hearts",
	loc_txt = {
        ['en-us'] = 'GSC Sprites: Allies of Ash'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSChearts.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCheartsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}

SMODS.DeckSkin {
	key = "GSC_Diamonds_Skins",
	suit = "Diamonds",
	loc_txt = {
        ['en-us'] = 'GSC Sprites: Johto Giants'
    },
	palettes = {
		{
			key = 'lc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCdiamonds.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {'Jack', 'Queen', "King",},
			display_ranks = {"King", "Queen", "Jack"},
			atlas = GSCdiamondsHC.key,
			pos_style = 'collab',
			hc_default = true,
		},
	},
}