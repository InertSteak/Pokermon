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

------------ DE-GLOBALIZING REFACTOR --------------

---@deprecated use `pokermon.find_pokemon_type` instead
type_sticker_applied = pokermon.type_sticker_applied

---@deprecated use `pokermon.find_pokemon_type` instead
find_pokemon_type = pokermon.find_pokemon_type

---@deprecated use `pokermon.is_type` instead
is_type = pokermon.is_type

---@deprecated use `pokermon.get_type` instead
get_type = pokermon.get_type

---@deprecated use `pokermon.copy_scaled_values` instead
copy_scaled_values = pokermon.copy_scaled_values

---@deprecated use `pokermon.fake_evolve` instead
poke_fake_evolve = pokermon.fake_evolve

---@deprecated use `pokermon.evolve` instead
poke_evolve = pokermon.evolve

---@deprecated use `pokermon.backend_evolve` instead
poke_backend_evolve = pokermon.backend_evolve

---@deprecated use `pokermon.can_evolve` instead
can_evolve = pokermon.can_evolve

---@deprecated use `pokermon.level_evo` instead
level_evo = pokermon.level_evo

---@deprecated use `pokermon.item_evo` instead
item_evo = pokermon.item_evo

---@deprecated use `pokermon.scaling_evo` instead
scaling_evo = pokermon.scaling_evo

---@deprecated use `pokermon.type_evo` instead
type_evo = pokermon.type_evo

---@deprecated use `pokermon.deck_suit_evo` instead
deck_suit_evo = pokermon.deck_suit_evo

---@deprecated use `pokermon.deck_enhance_evo` instead
deck_enhance_evo = pokermon.deck_enhance_evo

---@deprecated use `pokermon.deck_seal_evo` instead
deck_seal_evo = pokermon.deck_seal_evo

---@deprecated use `pokermon.get_lowest_evo` instead
get_lowest_evo = pokermon.get_lowest_evo

---@deprecated use `pokermon.get_highest_evo` instead
get_highest_evo = pokermon.get_highest_evo

---@deprecated use `pokermon.get_mega` instead
get_mega = pokermon.get_mega

---@deprecated use `pokermon.get_previous_from_mega` instead
get_previous_from_mega = pokermon.get_previous_from_mega

---@deprecated use `pokermon.get_previous_evo` instead
get_previous_evo = pokermon.get_previous_evo

---@deprecated use `pokermon.get_previous_evo_from_center` instead
get_previous_evo_from_center = pokermon.get_previous_evo_from_center

---@deprecated use `pokermon.get_family_keys` instead
get_family_keys = pokermon.get_family_keys

---@deprecated use `pokermon.get_evo_item_keys` instead
get_evo_item_keys = pokermon.get_evo_item_keys

---@deprecated use `pokermon.evo_item_use` instead
evo_item_use = pokermon.evo_item_use

---@deprecated use `pokermon.highlighted_evo_item` instead
highlighted_evo_item = pokermon.highlighted_evo_item

---@deprecated use `pokermon.is_evo_item_for` instead
is_evo_item_for = pokermon.is_evo_item_for

---@deprecated use `pokermon.evo_item_use_total` instead
evo_item_use_total = pokermon.evo_item_use_total

---@deprecated use `pokermon.evo_item_in_pool` instead
evo_item_in_pool = pokermon.evo_item_in_pool

---@deprecated use `pokermon.type_tooltip` instead
type_tooltip = pokermon.type_tooltip

---@deprecated use `pokermon.set_type_badge` instead
poke_set_type_badge = pokermon.set_type_badge

---@deprecated use `pokermon.apply_type_sticker` instead
apply_type_sticker = pokermon.apply_type_sticker

---@deprecated use `pokermon.get_random_poke_key` instead
get_random_poke_key = pokermon.get_random_poke_key

---@deprecated use `pokermon.get_random_poke_key_options` instead
get_random_poke_key_options = pokermon.get_random_poke_key_options

---@deprecated use `pokermon.create_random_poke_joker` instead
create_random_poke_joker = pokermon.create_random_poke_joker

---@deprecated use `pokermon.get_gen_allowed` instead
get_gen_allowed = pokermon.get_gen_allowed

---@deprecated use `pokermon.get_target_card_ranks` instead
get_poke_target_card_ranks = pokermon.get_target_card_ranks

---@deprecated use `pokermon.get_target_card_suit` instead
get_poke_target_card_suit = pokermon.get_target_card_suit

---@deprecated use `pokermon.get_target_card_enhancements` instead
get_poke_target_card_enhancements = pokermon.get_target_card_enhancements

---@deprecated use `pokermon.add_target_cards_to_vars` instead
add_target_cards_to_vars = pokermon.add_target_cards_to_vars

---@deprecated use `pokermon.find_cards_by_ptype` instead
find_other_poke_or_energy_type = pokermon.find_cards_by_ptype

---@deprecated use `pokermon.faint_baby_poke` instead
faint_baby_poke = pokermon.faint_baby_poke

---@deprecated use `pokermon.volatile_active` instead
volatile_active = pokermon.volatile_active

---@deprecated use `pokermon.total_chips` instead
poke_total_chips = pokermon.total_chips

---@deprecated use `pokermon.drain_value` instead
poke_drain = pokermon.drain_value

---@deprecated use `pokermon.fossil_generate_ui` instead
fossil_generate_ui = pokermon.fossil_generate_ui

---@deprecated use `pokermon.generate_pickup_item_key` instead
generate_pickup_item_key = pokermon.generate_pickup_item_key

---@deprecated use `pokermon.set_sprites` instead
poke_set_sprites = pokermon.set_sprites