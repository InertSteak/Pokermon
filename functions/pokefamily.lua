local pokermon_family_map = {}

local default_family_list = {
  { "bulbasaur", "ivysaur", "venusaur", "mega_venusaur" },
  { "charmander", "charmeleon", "charizard", "mega_charizard_x", "mega_charizard_y", },
  { "squirtle", "wartortle", "blastoise", "mega_blastoise" },
  { "caterpie", "metapod", "butterfree" },
  { "weedle", "kakuna", "beedrill", "mega_beedrill" },
  { "pidgey", "pidgeotto", "pidgeot", "mega_pidgeot" },
  { "rattata", "raticate" },
  { "spearow", "fearow" },
  { "ekans", "arbok" },
  { "pichu", "pikachu", "raichu" },
  { "sandshrew", "sandslash" },
  { "nidoranf", "nidorina", "nidoqueen" },
  { "nidoranm", "nidorino", "nidoking" },
  { "cleffa", "clefairy", "clefable" },
  { "vulpix", "ninetales" },
  { "igglybuff", "jigglypuff", "wigglytuff" },
  { "zubat", "golbat", "crobat" },
  { "oddish", "gloom", "vileplume", "bellossom" },
  { "paras", "parasect" },
  { "venonat", "venomoth" },
  { "diglett", "dugtrio" },
  { "meowth", "persian" },
  { "psyduck", "golduck" },
  { "mankey", "primeape", "annihilape" },
  { "growlithe", "arcanine" },
  { "poliwag", "poliwhirl", "poliwrath", "politoed" },
  { "abra", "kadabra", "alakazam", "mega_alakazam" },
  { "machop", "machoke", "machamp" },
  { "bellsprout", "weepinbell", "victreebel" },
  { "tentacool", "tentacruel" },
  { "geodude", "graveler", "golem" },
  { "ponyta", "rapidash" },
  { "slowpoke", "slowbro", "slowking", "shell", "mega_slowbro" },
  { "magnemite", "magneton", "magnezone" },
  { "doduo", "dodrio" },
  { "seel", "dewgong" },
  { "grimer", "muk" },
  { "shellder", "cloyster" },
  { "gastly", "haunter", "gengar", "mega_gengar", },
  { "onix", "steelix", "mega_steelix" },
  { "drowzee", "hypno" },
  { "krabby", "kingler" },
  { "voltorb", "electrode" },
  { "exeggcute", "exeggutor" },
  { "cubone", "marowak" },
  { "koffing", "weezing" },
  { "rhyhorn", "rhydon", "rhyperior" },
  { "horsea", "seadra", "kingdra" },
  { "goldeen", "seaking" },
  { "staryu", "starmie" },
  { "scyther", "scizor", "mega_scizor", "kleavor" },
  { "mimejr", "mrmime" },
  { "tauros", "taurosh" },
  { "kangaskhan", "mega_kangaskhan" },
  { "elekid", "electabuzz", "electivire" },
  { "magby", "magmar", "magmortar" },
  { "tangela", "tangrowth" },
  { "smoochum", "jynx" },
  { "pinsir", "mega_pinsir" },
  { "magikarp", "gyarados", "mega_gyarados" },
  { "munchlax", "snorlax" },
  { "aerodactyl", "mega_aerodactyl" },
  { "happiny", "chansey", "blissey" },
  { "lickitung", "lickilicky" },
  { "porygon", "porygon2", "porygonz" },
  { "eevee", "vaporeon", "jolteon", "flareon", "espeon", "umbreon", "glaceon", "leafeon", "sylveon" },
  { "omanyte", "omastar" },
  { "kabuto", "kabutops" },
  { "dratini", "dragonair", "dragonite" },
  { "mewtwo", "mega_mewtwo_x", "mega_mewtwo_y" },
  { "chikorita", "bayleef", "meganium" },
  { "cyndaquil", "quilava", "typhlosion" },
  { "totodile", "croconaw", "feraligatr" },
  { "tyrogue", "hitmonlee", "hitmonchan", "hitmontop" },
  { "poochyena", "mightyena" },
  { "wurmple", "silcoon", "beautifly", "cascoon", "dustox" },
  { "numel", "camerupt", "mega_camerupt" },
  { "cacnea", "cacturne"},
  { "feebas", "milotic" },
  { "snorunt", "glalie", "froslass" },
  { "nosepass", "probopass" },
  { "beldum", "metang", "metagross" },
  { "jirachi", "jirachi_banker", "jirachi_booster", "jirachi_power", "jirachi_invis", "jirachi_fixer" },
  { "sentret", "furret" },
  { "hoothoot", "noctowl" },
  { "ledyba", "ledian" },
  { "spinarak", "ariados" },
  { "mareep", "flaaffy", "ampharos", "mega_ampharos" },
  { "wooper", "quagsire" },
  { "sneasel", "weavile" },
  { "teddiursa", "ursaring", "ursaluna" },
  { "remoraid", "octillery" },
  { "aipom", "ambipom" },
  { "heracross", "mega_heracross" },
  { "togepi", "togetic", "togekiss" },
  { "yanma", "yanmega" },
  { "natu", "xatu" },
  { "azurill", "marill", "azumarill" },
  { "phanpy", "donphan" },
  { "girafarig", "farigiraf" },
  { "murkrow", "honchkrow" },
  { "bonsly", "sudowoodo", "weird_tree" },
  { "hoppip", "skiploom", "jumpluff" },
  { "stantler", "wyrdeer" },
  { "sunkern", "sunflora" },
  { "houndour", "houndoom", "mega_houndoom" },
  { "misdreavus", "mismagius" },
  { "wynaut", "wobbuffet" },
  { "pineco", "forretress" },
  { "dunsparce", { key = "dudunsparce", form = 0 }, { key = "dudunsparce", form = 1 } },
  { "gligar", "gliscor" },
  { "slugma", "magcargo" },
  { "chinchou", "lanturn" },
  { "swinub", "piloswine", "mamoswine" },
  { "snubbull", "granbull" },
  { "mantyke", "mantine" },
  { "larvitar", "pupitar", "tyranitar", "mega_tyranitar" },
  { "treecko", "grovyle", "sceptile" },
  { "torchic", "combusken", "blaziken" },
  { "mudkip", "marshtomp", "swampert" },
  { "zigzagoon", "linoone" },
  { "shroomish", "breloom" },
  { "aron", "lairon", "aggron" },
  { "budew", "roselia", "roserade" },
  { "duskull", "dusclops", "dusknoir" },
  {"clamperl", "huntail", "gorebyss"},
  { "lileep", "cradily" },
  { "anorith", "armaldo" },
  { "bidoof", "bibarel" },
  { "kricketot", "kricketune" },
  { "buizel", "floatzel" },
  { "buneary", "lopunny", "mega_lopunny" },
  { "riolu", "lucario" },
  { "rotom", "rotomh", "rotomw", "rotomf", "rotomfan", "rotomm" },
  { "shaymin", "shaymin_sky" },
  { "gothita", "gothorita", "gothitelle" },
  { "vanillite", "vanillish", "vanilluxe" },
  { "frillish", "jellicent" },
  { "elgyem", "beheeyem" },
  { "trubbish", "garbodor" },
  { "litwick", "lampent", "chandelure" },
  { "drilbur", "excadrill" },
  { "pansage", "simisage" },
  { "pansear", "simisear" },
  { "panpour", "simipour" },
  { "golett", "golurk" },
  { "pawniard", "bisharp", "kingambit" },
  { "roggenrola", "boldore", "gigalith" },
  { "ferroseed", "ferrothorn" },
  { "zorua", "zoroark" },
  { "deino", "zweilous", "hydreigon" },
  { "litleo", "pyroar" },
  { { key = "pumpkaboo", form = 0 }, { key = "pumpkaboo", form = 1 }, { key = "pumpkaboo", form = 2 }, { key = "pumpkaboo", form = 3 },
    { key = "gourgeist", form = 0 }, { key = "gourgeist", form = 1 }, { key = "gourgeist", form = 2 }, { key = "gourgeist", form = 3 },
  },
  { "grubbin", "charjabug", "vikavolt" },
  { "rockruff", "lycanroc_day", "lycanroc_night", "lycanroc_dusk" },
  { "dreepy", "drakloak", "dragapult", "dreepy_dart" },
  { "hisuian_qwilfish", "overqwil" },
  { "nickit", "thievul" },
  { "yamper", "boltund" },
  { "tarountula", "spidops" },
  { "fidough", "dachsbun" },
  { "charcadet", "armarouge", "ceruledge" },
  { "bramblin", "brambleghast" },
  { "tinkatink", "tinkatuff", "tinkaton" },
  { "wiglett", "wugtrio" },
  { "gimmighoul", "gholdengo", "gimmighoulr" },
  { "ruins_of_alph" },
  --{{key = "oricorio", form = "Hearts"}, {key = "oricorio", form = "Clubs"}, {key = "oricorio", form = "Diamonds"}, {key = "oricorio", form = "Spades"}},
  { { key = "rival", form = 0 }, { key = "rival", form = 1 }, { key = "rival", form = 2 } },
  { { key = "unown", form = "A" }, { key = "unown", form = "B" }, { key = "unown", form = "C" }, { key = "unown", form = "D" }, { key = "unown", form = "E" }, { key = "unown", form = "F" },
    { key = "unown", form = "G" }, { key = "unown", form = "H" }, { key = "unown", form = "I" }, { key = "unown", form = "J" }, { key = "unown", form = "K" }, { key = "unown", form = "L" },
    { key = "unown", form = "M" }, { key = "unown", form = "N" }, { key = "unown", form = "O" }, { key = "unown", form = "P" }, { key = "unown", form = "Q" }, { key = "unown", form = "R" },
    { key = "unown", form = "S" }, { key = "unown", form = "T" }, { key = "unown", form = "U" }, { key = "unown", form = "V" }, { key = "unown", form = "W" }, { key = "unown", form = "X" },
    { key = "unown", form = "Y" }, { key = "unown", form = "Z" }, { key = "unown", form = "ZEx" }, { key = "unown", form = "ZQu" }
  },
  { "berry_juice", "berry_juice_tarot", "berry_juice_planet", "berry_juice_spectral", "berry_juice_item", "berry_juice_energy", "berry_juice_mystery" }
}

local pfm_to_name = function(a) return type(a) == 'string' and a or a.key end

-- Initialize family map with default values
for _, family in ipairs(default_family_list) do
  for _, v in ipairs(family) do
    pokermon_family_map[pfm_to_name(v)] = family
  end
end

local pfm_compare = function(a, b)
  return a == b or
      (type(a) == table and type(b) == table
        and a.key == b.key
        and a.form == b.form)
end

local pfm_to_family = function(a) return (type(a) ~= 'table' or a.key) and { a } or a end

local family_contains = function(family, member)
  for _, v in ipairs(family) do
    if pfm_compare(v, member) then return true end
  end
  return false
end

local get_existing_family = function(family_or_member)
  for _, v in ipairs(pfm_to_family(family_or_member)) do
    local existing_family = poke_get_family_list(pfm_to_name(v))
    if existing_family then return existing_family end
  end
end

local append_to_family = function(family, new_members, insert_after, allow_duplicates)
  local index
  if insert_after then
    for i, v in ipairs(family) do
      if pfm_compare(v, insert_after) then index = i end
      -- keep looping to find the last match
    end
  end

  for i, v in ipairs(new_members) do
    if allow_duplicates or not family_contains(get_existing_family(v), v) then
      pokermon_family_map[pfm_to_name(v)] = family
      if index then
        table.insert(family, index + i, v)
      else
        table.insert(family, v)
      end
    end
  end
end

-- API Functions

--- Extends an existing family, or creates a new one if none exists
poke_add_to_family = function(insert_after, new_family_or_member, allow_duplicates)
  local new_family = pfm_to_family(new_family_or_member)

  local family = (insert_after and get_existing_family { insert_after }) or get_existing_family(new_family) or {}

  append_to_family(family, new_family, insert_after, allow_duplicates)
end

--- Returns the family list associated with the provided name
poke_get_family_list = function(name)
  return pokermon_family_map[name] or {}
end

--- Returns whether any cards present share a family with the provided center
poke_family_present = function(center)
  if next(find_joker("Showman")) or next(find_joker("pokedex")) then return false end
  local family_list = poke_get_family_list(center.name)
  local prefix = center.poke_custom_prefix or 'poke'
  for _, fam in pairs(family_list) do
    if G.GAME.used_jokers['j_' .. prefix .. '_' .. ((type(fam) == "table" and fam.key) or fam)] then
      return true
    end
  end
  return false
end
