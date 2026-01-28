POKE_TYPES = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}

POKE_NATIVE_EVO_ITEMS = {
  "firestone", "waterstone", "leafstone", "thunderstone",
  "dawnstone", "shinystone", "moonstone", "duskstone",
  "sunstone", "icestone", "prismscale", "upgrade", "dubious_disc",
  "linkcable", "kingsrock", "dragonscale", "hardstone",
}

POKE_STAGES = {
  ["Baby"] = { prev = nil, next = "Basic" },
  ["Basic"] = { prev = "Baby", next = "One" },
  ["One"] = { prev = "Basic", next = "Two" },
  ["Two"] = { prev = "One", next = nil },
  ["Legendary"] = { prev = "Legendary", next = "Legendary" },
  ["Mega"] = { prev = nil, next = nil },
  ["???"] = { prev = nil, next = nil },
}

POKE_EVO_OVERRIDES = {
  { "cosmog", "cosmoem", { "solgaleo", "lunala" } },
  { "kubfu", { "urshifu_single_strike", "urshifu_rapid_strike" } },
}

-- Helper functions/getters for accessing constants

---@deprecated use `pokermon.add_stage` instead
poke_add_stage = function (stage, prev_stage, next_stage)
  pokermon.add_stage(stage, prev_stage, next_stage)
end

get_previous_stage = function(stage)
  return (POKE_STAGES[stage] or {}).prev
end

get_next_stage = function(stage)
  return (POKE_STAGES[stage] or {}).next
end

HIGHEST_EVO_OVERRIDES = {}
PREVIOUS_EVO_OVERRIDES = {}

for _, evo_line in ipairs(POKE_EVO_OVERRIDES) do
  for i, evo_stage in ipairs(evo_line) do
    local pokemon_in_stage = type(evo_stage) == 'table'
        and evo_stage or { evo_stage }

    for _, pokemon in ipairs(pokemon_in_stage) do
      if i > 1 then
        PREVIOUS_EVO_OVERRIDES[pokemon] = evo_line[1]
      end
      if i < #evo_line then
        HIGHEST_EVO_OVERRIDES[pokemon] = evo_line[#evo_line]
      end
    end
  end
end

-- Aliases for compatibility:

poketype_list = POKE_TYPES

native_evo_items = POKE_NATIVE_EVO_ITEMS
