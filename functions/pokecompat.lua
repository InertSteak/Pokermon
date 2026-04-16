---@deprecated use `SMODS.destroy_cards` instead
remove = function(self, card, context, check_shiny)
  SMODS.destroy_cards(card, nil, nil, true)
end

---@deprecated use `pokermon.add_stage` instead
poke_add_stage = function (stage, prev_stage, next_stage)
  pokermon.add_stage(stage, prev_stage, next_stage)
end

---@deprecated functionality is handled by generation code instead
pokemon_in_pool = function()
  return true
end

---@deprecated use `POKE_TYPES` instead
poketype_list = POKE_TYPES

---@deprecated use `POKE_NATIVE_EVO_ITEMS` instead
native_evo_items = POKE_NATIVE_EVO_ITEMS

---@deprecated use `poke_get_evo_overrides` instead
HIGHEST_EVO_OVERRIDES = setmetatable({}, { __index = function(_, index) return poke_get_evo_overrides(index).highest_evo end})

---@deprecated use `poke_get_evo_overrides` instead
PREVIOUS_EVO_OVERRIDES = setmetatable({}, { __index = function(_, index) return poke_get_evo_overrides(index).previous_evo end})
