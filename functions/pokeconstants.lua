POKE_TYPES = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}

POKE_STAGES = {
  ["Baby"] = { prev = nil, next = "Basic" },
  ["Basic"] = { prev = "Baby", next = "One" },
  ["One"] = { prev = "Basic", next = "Two" },
  ["Two"] = { prev = "One", next = nil },
  ["Legendary"] = { prev = "Legendary", next = "Legendary" },
  ["Mega"] = { prev = nil, next = nil },
  ["Other"] = { prev = nil, next = nil },
  ["???"] = { prev = nil, next = nil },
}

POKE_NATIVE_EVO_ITEMS = {
  "firestone", "waterstone", "leafstone", "thunderstone",
  "dawnstone", "shinystone", "moonstone", "duskstone",
  "sunstone", "icestone", "prismscale", "upgrade", "dubious_disc",
  "linkcable", "kingsrock", "dragonscale", "hardstone",
}

POKE_EVO_OVERRIDES = {
  { "silcoon", { "beautifly" } },
  { "cascoon", { "dustox" } },
  { "cosmog", "cosmoem", { "solgaleo", "lunala" } },
  { "kubfu", { "urshifu_single_strike", "urshifu_rapid_strike" } },
}

SMODS.Attribute {key = "grass_type"}
SMODS.Attribute {key = "fire_type"}
SMODS.Attribute {key = "water_type"}
SMODS.Attribute {key = "lightning_type"}
SMODS.Attribute {key = "psychic_type"}
SMODS.Attribute {key = "fighting_type"}
SMODS.Attribute {key = "colorless_type"}
SMODS.Attribute {key = "dark_type"}
SMODS.Attribute {key = "metal_type"}
SMODS.Attribute {key = "fairy_type"}
SMODS.Attribute {key = "dragon_type"}
SMODS.Attribute {key = "earth_type"}

SMODS.Attribute {key = "stage_baby"}
SMODS.Attribute {key = "stage_basic"}
SMODS.Attribute {key = "stage_one"}
SMODS.Attribute {key = "stage_two"}
SMODS.Attribute {key = "stage_legendary"}
SMODS.Attribute {key = "stage_mega"}
SMODS.Attribute {key = "stage_other"}
SMODS.Attribute {key = "stage_???"}

SMODS.Attribute {key = "round_evo"}
SMODS.Attribute {key = "scaling_evo"}
SMODS.Attribute {key = "item_evo"}
SMODS.Attribute {key = "type_evo"}
SMODS.Attribute {key = "trigger_evo"}
SMODS.Attribute {key = "condition_evo"}
SMODS.Attribute {key = "starter"}
SMODS.Attribute {key = "holding"}
SMODS.Attribute {key = "item"}
SMODS.Attribute {key = "types"}
SMODS.Attribute {key = "volatile"}
SMODS.Attribute {key = "energy"}
SMODS.Attribute {key = "energy_count"}
SMODS.Attribute {key = "energy_limit"}
SMODS.Attribute {key = "ancient"}
SMODS.Attribute {key = "foresight"}
SMODS.Attribute {key = "baby"}
SMODS.Attribute {key = "nature"}
SMODS.Attribute {key = "hazards"}
SMODS.Attribute {key = "applies"}
SMODS.Attribute {key = "drain"}
