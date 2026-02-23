POKE_STAGES = {
  ["Baby"] = { prev = nil, next = "Basic" },
  ["Basic"] = { prev = "Baby", next = "One" },
  ["One"] = { prev = "Basic", next = "Two" },
  ["Two"] = { prev = "One", next = nil },
  ["Legendary"] = { prev = "Legendary", next = "Legendary" },
  ["Mega"] = { prev = nil, next = nil },
  ["???"] = { prev = nil, next = nil },
}

poke_setup_stage = function(stage)
  SMODS.ObjectType {
    key = 'Stage ' .. stage,
    default = 'j_poke_caterpie'
  }
end

for stage, _ in pairs(POKE_STAGES) do
  poke_setup_stage(stage)
end

get_previous_stage = function(stage)
  return (POKE_STAGES[stage] or {}).prev
end

get_next_stage = function(stage)
  return (POKE_STAGES[stage] or {}).next
end

-- Joker Pools

local get_rarity = function(center)
  return ({ "Common", "Uncommon", "Rare", "Legendary" })[center.rarity] or center.rarity
end

POKE_CUSTOM_POOLS = {
  ["Mystery Egg"] = function(center)
    local stage, rarity = center.stage, get_rarity(center)
    return (stage == "Baby" or stage == "Basic")
        and (rarity == "Common" or rarity == "Uncommon" or rarity == "Rare")
  end,
}

local function add_pools_to_center(center)
  if not center.stage or not POKE_STAGES[center.stage] or center.aux_poke then return end
  center.pools = center.pools or {}
  center.pools['Stage ' .. center.stage] = true
end

local smods_center_inject = SMODS.Center.inject
SMODS.Center.inject = function(self, ...)
  -- Doing it inside of `SMODS.Center.inject` instead of `pokermon.load_pokemon` lets us
  -- delay until the final loading step, making custom stages/pools from addons get included
  -- for base Pokermon Jokers
  add_pools_to_center(self)

  ---@diagnostic disable-next-line: need-check-nil
  return smods_center_inject(self, ...)
end
