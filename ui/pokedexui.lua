-- Functionality for Pokedex View
poke_joker_page = 1

local function create_UIBox_pokedex_jokers(keys, previous_menu)
  return create_UIBox_generic_options {
    back_func = previous_menu or 'exit_overlay_menu',
    contents = poke_create_UIBox_your_collection {
      keys = keys,
      cols = 4,
      dynamic_sizing = true
    }
  }
end

local function open_pokedex(target)
  if target and target:is(Card) and target.facing ~= 'back'
      and not target.poke_change_sprite
      and (target.config.center.stage or target.config.center.poke_multi_item) then
    local menu = G.SETTINGS.paused and 'pokedex_back' or nil
    if menu and G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders') then poke_joker_page = G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders').children[1].children[1].config.ref_table.current_option end
    if menu and target.config.center.poke_multi_item then menu = 'your_collection_consumables' end
    G.FUNCS.overlay_menu {
      definition = create_UIBox_pokedex_jokers(get_family_keys(target.config.center.name, target.config.center.poke_custom_prefix, target), menu),
    }
    G.CONTROLLER:update_focus()
  end
end

local function open_pokedex_from_highlighted()
  local highlighted = (G.jokers and G.jokers.highlighted and G.jokers.highlighted[1])
      or (G.consumeables and G.consumeables.highlighted and G.consumeables.highlighted[1])

  if highlighted then
    open_pokedex(highlighted)
  end
end

G.FUNCS.pokedex_back = function()
  G.FUNCS.your_collection_jokers()
  G.FUNCS.SMODS_card_collection_page({ cycle_config = { current_option = poke_joker_page } })
  local page = G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders').children[1].children[1]
  page.config.ref_table.current_option = poke_joker_page
  page.config.ref_table.current_option_val = page.config.ref_table.options[poke_joker_page]
end

poke_input_manager:add_listener({ 'right_click', 'double_click', 'right_stick' }, open_pokedex)

SMODS.Keybind({ key = "openPokedex", key_pressed = "p", action = open_pokedex_from_highlighted })
