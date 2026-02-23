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

--[[

  Note: If you don't specify rarities when using `SMODS.ObjectType` to create a new pool,
  all of the members are treated equally and the usual rarity poll is omitted

  this includes both Safari and Legendary Jokers that are in your pool.
  A custom pool consisting of:
  ```
  ["Fire Types"] = function(center) return center.ptype == "Fire" end,
  ```
  will make you equally likely to hit a Slugma as you are to hit Ho-oh

  ]]

local get_rarity = function(center)
  return ({ "Common", "Uncommon", "Rare", "Legendary" })[center.rarity] or center.rarity
end

--- Custom Pool for Rarity-dependent Joker Generation
-- Note: there is currently a bug where specifying
-- rarities for custom pools has to be done with 1, 2,
-- and 3 for the vanilla rarities
SMODS.ObjectType {
  key = "Pokemon",
  default = 'j_poke_caterpie',
  rarities = {
    { key = "Common" },
    { key = "Uncommon" },
    { key = "Rare" },
    { key = "poke_safari" },
  }
}

POKE_CUSTOM_POOLS = {
  ["Mystery Egg"] = function(center)
    local stage, rarity = center.stage, get_rarity(center)
    return (stage == "Baby" or stage == "Basic")
        and (rarity == "Common" or rarity == "Uncommon" or rarity == "Rare")
  end,
  ["Corsola"] = function(center)
    return center.stage == "Basic" and center.ptype == "Water"
  end,
}

poke_setup_custom_pool = function(pool)
  SMODS.ObjectType {
    key = pool,
    default = 'j_poke_caterpie'
  }
end

for pool, _ in pairs(POKE_CUSTOM_POOLS) do
  poke_setup_custom_pool(pool)
end

local function add_pools_to_center(center)
  if not center.stage or not POKE_STAGES[center.stage] or center.aux_poke then return end
  center.pools = center.pools or {}
  center.pools['Pokemon'] = true
  center.pools['Stage ' .. center.stage] = true

  for pool, is_member in pairs(POKE_CUSTOM_POOLS) do
    if is_member(center) then
      center.pools[pool] = true
    end
  end
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

-- used for generating just a random key without the card.
poke_poll_center_key = function(options)
  -- Code taken from `create_card`.
  local type = options.type or options.set or 'Joker'
  local rarity = ({ ['Common'] = 1, ['Uncommon'] = 2, ['Rare'] = 3, ['Legendary'] = 4 })[options.rarity] or options.rarity
  local legendary = rarity == 4
  local key_append = options.key_append or options.seed

  local pool, pool_key = get_current_pool(type, rarity, legendary, key_append)
  local new_key = pseudorandom_element(pool, pseudoseed(pool_key))
  local it = 1
  while new_key == 'UNAVAILABLE' do
    it = it + 1
    new_key = pseudorandom_element(pool, pseudoseed(pool_key .. '_resample' .. it))
  end

  return new_key
end
