POKE_TYPES = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}

POKE_STAGES = {
  ["Baby"] = { prev = nil, next = "Basic" },
  ["Basic"] = { prev = "Baby", next = "One" },
  ["One"] = { prev = "Basic", next = "Two" },
  ["Two"] = { prev = "One", next = nil },
  ["Legendary"] = { prev = "Legendary", next = "Legendary" },
  ["Mega"] = { prev = nil, next = nil },
  ["???"] = { prev = nil, next = nil },
}

POKE_NATIVE_EVO_ITEMS = {
  "firestone", "waterstone", "leafstone", "thunderstone",
  "dawnstone", "shinystone", "moonstone", "duskstone",
  "sunstone", "icestone", "prismscale", "upgrade", "dubious_disc",
  "linkcable", "kingsrock", "dragonscale", "hardstone",
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

poke_get_evo_overrides = function(name)
  for _, evo_line in ipairs(POKE_EVO_OVERRIDES) do
    for i, evo_stage in ipairs(evo_line) do
      local pokemon_in_stage = type(evo_stage) == 'table'
          and evo_stage or { evo_stage }

      for _, pokemon in ipairs(pokemon_in_stage) do
        if pokemon == name then
          local overrides = {}
          if i > 1 then
            overrides.previous_evo = evo_line[1]
          end
          if i < #evo_line then
            overrides.highest_evo = evo_line[#evo_line]
          end
          return overrides
        end
      end
    end
  end
  return {}
end

-- Aliases for compatibility:

poketype_list = POKE_TYPES

native_evo_items = POKE_NATIVE_EVO_ITEMS

HIGHEST_EVO_OVERRIDES = setmetatable({}, { __index = function(_, index) return poke_get_evo_overrides(index).highest_evo end})
PREVIOUS_EVO_OVERRIDES = setmetatable({}, { __index = function(_, index) return poke_get_evo_overrides(index).previous_evo end})
