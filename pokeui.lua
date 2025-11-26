--Config UI
local energy_toggles = {
  {ref_value = "unlimited_energy", label = "poke_settings_unlimited_energy", tooltip = {set = 'Other', key = 'unlimited_energy_tooltip'}}, 
  {ref_value = "precise_energy", label = "poke_settings_pokemon_precise_energy", tooltip = {set = 'Other', key = 'precise_energy_tooltip'}},
}

local joker_pool_toggles = {
  {ref_value = "pokemon_only", label = "poke_settings_pokemon_only", tooltip = {set = 'Other', key = 'pokemononly_tooltip'}},
  {ref_value = "gen_oneb", label = "poke_settings_pokemon_gen_one", tooltip = {set = 'Other', key = 'gen1_tooltip'}},
  {ref_value = "gen_two", label = "poke_settings_pokemon_gen_two", tooltip = {set = 'Other', key = 'gen2_tooltip'}},
  {ref_value = "gen_three", label = "poke_settings_pokemon_gen_three", tooltip = {set = 'Other', key = 'gen3_tooltip'}},
  {ref_value = "gen_four", label = "poke_settings_pokemon_gen_four", tooltip = {set = 'Other', key = 'gen4_tooltip'}},
  {ref_value = "gen_five", label = "poke_settings_pokemon_gen_five", tooltip = {set = 'Other', key = 'gen5_tooltip'}},
  {ref_value = "gen_six", label = "poke_settings_pokemon_gen_six", tooltip = {set = 'Other', key = 'gen6_tooltip'}},
  {ref_value = "gen_seven", label = "poke_settings_pokemon_gen_seven", tooltip = {set = 'Other', key = 'gen7_tooltip'}},
  {ref_value = "gen_eight", label = "poke_settings_pokemon_gen_eight", tooltip = {set = 'Other', key = 'gen8_tooltip'}},
  {ref_value = "gen_nine", label = "poke_settings_pokemon_gen_nine", tooltip = {set = 'Other', key = 'gen9_tooltip'}},
  {ref_value = "hazards_on", label = "poke_settings_pokemon_hazards_on", tooltip = {set = 'Other', key = 'hazards_on_tooltip'}},
}

local misc_no_restart_toggles = {
  {ref_value = "shiny_playing_cards", label = "poke_settings_shiny_playing_cards", tooltip = {set = 'Other', key = 'shinyplayingcard_tooltip'}},
  {ref_value = "detailed_tooltips", label = "poke_settings_pokemon_detailed_tooltips", tooltip = {set = 'Other', key = 'detailed_tooltips_tooltip'}},
  {ref_value = "previous_evo_stickers", label = "poke_settings_previous_evo_stickers", tooltip = {set = 'Other', key = 'previous_evo_stickers_tooltip'}},
  {ref_value = "order_jokers", label = "poke_settings_order_jokers", tooltip = {set = 'Other', key = 'order_jokers_tooltip'}},
  {ref_value = "pokemon_only_collection", label = "poke_settings_pokemon_only_collection", tooltip = {set = 'Other', key = 'pokemon_only_collection_tooltip'}}
}

local content_toggles = {
  {ref_value = "pokemon_legacy", label = "poke_settings_pokemon_legacy", tooltip = {set = 'Other', key = 'legacycontent_tooltip'}},
  {ref_value = "pokemon_aprilfools", label = "poke_settings_pokemon_aprilfools", tooltip = {set = 'Other', key = 'jokecontent_tooltip'}},
}

local visual_toggles = {
  {ref_value = "pokemon_splash", label = "poke_settings_pokemon_splash", tooltip = {set = 'Other', key = 'splashcard_tooltip'}},
  {ref_value = "pokemon_title", label = "poke_settings_pokemon_title", tooltip = {set = 'Other', key = 'title_tooltip'}},
  {ref_value = "pokemon_altart", label = "poke_settings_pokemon_altart", tooltip = {set = 'Other', key = 'altart_tooltip'}},
  {ref_value = "poke_enable_animations", label = "poke_settings_enable_animations", tooltip = {set = 'Other', key = 'animation_tooltip'}}
}

local misc_restart_toggles = {
  {ref_value = "pokeballs", label = "poke_settings_pokeballs", tooltip = {set = 'Other', key = 'allowpokeballs_tooltip'}},
  {ref_value = "pokemon_discovery", label = "poke_settings_pokemon_discovery", tooltip = {set = 'Other', key = 'discovery_tooltip'}},
}

local create_menu_toggles = function (parent, toggles)
  for k, v in ipairs(toggles) do
    parent.nodes[#parent.nodes + 1] = create_toggle({
          label = localize(v.label),
          ref_table = pokermon_config,
          ref_value = v.ref_value,
    })
    if v.tooltip then
      parent.nodes[#parent.nodes].config.detailed_tooltip = v.tooltip
    end
  end
end

local pokemonconfig = function()
  return {
    n = G.UIT.ROOT,
    config = {
      align = "cm",
      padding = 0.05,
      colour = G.C.CLEAR,
    },
    nodes = {
      {
        n = G.UIT.R,
        config = {
          padding = 0.25,
          align = "cm"
        },
        nodes = {
          {
            n = G.UIT.T,
            config = {
              text = localize("poke_settings_header_norequired"),
              shadow = true,
              scale = 0.75 * 0.8,
              colour = HEX("ED533A")
            }
          }
        },
      },
      UIBox_button({
        minw = 3.85,
        colour = HEX("ED533A"),
        button = "pokermon_joker_pool",
        label = {"Joker Pool Options"}
      }),
      UIBox_button({
        minw = 3.85,
        colour = HEX("FF7ABF"),
        button = "pokermon_energy",
        label = {"Energy Options"}
      }),
      UIBox_button({
        minw = 3.85,
        colour = HEX("9AA4B7"),
        button = "pokermon_misc_no_restart",
        label = {"Misc Options"}
      }),
      {
        n = G.UIT.R,
        config = {
          padding = 0.25,
          align = "cm"
        },
        nodes = {
          {
            n = G.UIT.T,
            config = {
              text = localize("poke_settings_header_required"),
              shadow = true,
              scale = 0.75 * 0.8,
              colour = HEX("ED533A")
            }
          }
        },
      },
      UIBox_button({
        minw = 3.85,
        colour = HEX("38b8f8"),
        button = "pokermon_content",
        label = {"Content Options"}
      }),
      UIBox_button({
        minw = 3.85,
        colour = HEX("c135ff"),
        button = "pokermon_visual",
        label = {"Visual Options"}
      }),
      UIBox_button({
        minw = 3.85,
        colour = HEX("9AA4B7"),
        button = "pokermon_misc_restart",
        label = {"Misc Options"}
      }),
    }
  }
end

function G.FUNCS.pokermon_joker_pool(e)
  local joker_pool_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(joker_pool_settings, joker_pool_toggles)

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {joker_pool_settings}
  })
  G.FUNCS.overlay_menu {
    definition = t
  }
end

function G.FUNCS.pokermon_energy(e)
  local energy_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(energy_settings, energy_toggles)

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {energy_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end

function G.FUNCS.pokermon_misc_no_restart(e)
  local misc_no_restart_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(misc_no_restart_settings, misc_no_restart_toggles)

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {misc_no_restart_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end

function G.FUNCS.pokermon_content(e)
  local content_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(content_settings, content_toggles)

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {content_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end

function G.FUNCS.pokermon_visual(e)
  local visual_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(visual_settings, visual_toggles)

  visual_settings.nodes[#visual_settings.nodes + 1] =
    create_option_cycle({
      label = localize("poke_settings_pokemon_spritesheet"),
      scale = 0.8,
      w = 6,
      options = {localize("poke_settings_pokemon_spritesheet_classic"), localize("poke_settings_pokemon_spritesheet_seriesa"),},
      opt_callback = 'pokermon_upd_sprite_setting',
      current_option = pokermon_config.pokemon_spritesheet_id,
    })

  visual_settings.nodes[#visual_settings.nodes + 1] = 
    UIBox_button({
      minw = 3.85,
      button = "pokermon_individual_sprites",
      label = {"Individual Sprites"}
    })

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {visual_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end
function G.FUNCS.pokermon_misc_restart(e)
  local misc_restart_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(misc_restart_settings, misc_restart_toggles)

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {misc_restart_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end

SMODS.current_mod.config_tab = pokemonconfig

-- Credits UI
local pokermon_actual_credits = function()
  local credits_text = {
    { localize("poke_credits_thanks") },
    { localize("poke_credits_lead"), "InertSteak" },
    { localize("poke_credits_graphics"), "GayCoonie, Joey J. Jester, Larantula, The Kuro, Lemmanade" },
    { localize("poke_credits_graphics"), "Yamper, MyDude, Numbuh 214, SMG9000, Sonfive, PrincessRoxie" },
    { localize("poke_credits_graphics"), "Catzzadilla, bt, KatRoman" },
    { localize("poke_credits_quality_assurance_main"), "Lemmanade, drspectred" },
    { localize("poke_credits_sound"), "Dread" },
    { localize("poke_credits_developer"), "SDM0, Jevonnissocoolman, Ishtech, Fem," },
    { localize("poke_credits_developer"), "MathIsFun_, Kek, Eternalnacho, Emma" },
    { localize("poke_credits_designer"), "Xilande, Lemmanade, PrincessRoxie, Catzzadilla" },
    { localize("poke_credits_localization"), "Rafael, PainKiller, FlamingRok, Mr. Onyx" },
    { localize("poke_credits_localization"), "PIPIKAI, PanbimboGD, HuyCorn, IlPastaio, heyctf" },
    { localize("poke_credits_community_manager"), "Astra, Kaethela" },
    { localize("poke_credits_special_thanks"), "Marie|Tsunami, CBMX, 64x64 Pokémon Sprite Resource...and you!" },
  }

  local content_nodes = {}

  for _, text_row in ipairs(credits_text) do
    local row_node = { n = G.UIT.R, config = { align = "cm" }, nodes = {} }
    for i, text in ipairs(text_row) do
      table.insert(row_node.nodes, {
        n = G.UIT.T,
        config = {
          text = text,
          shadow = true,
          scale = 0.6,
          colour = i == 1 and G.C.UI.TEXT_LIGHT or G.C.BLUE,
        }
      })
    end
    table.insert(content_nodes, row_node)
  end

  table.insert(content_nodes, {
    n = G.UIT.R,
    config = {
      padding = 0.2,
      align = "cm",
    },
    nodes = {
      UIBox_button({
        minw = 3.85,
        button = "pokermon_github",
        label = {"Github"}
      }),
      UIBox_button({
        minw = 3.85,
        colour = HEX("9656ce"),
        button = "pokermon_discord",
        label = {"Discord"}
      })
    },
  })

  return {
    label = localize("poke_credits_actualcredits"),
    tab_definition_function = function()
      return {
        n = G.UIT.ROOT,
        config = {
          align = "cm",
          padding = 0.05,
          colour = G.C.CLEAR,
        },
        nodes = content_nodes,
      }
    end
  }
end
function G.FUNCS.pokermon_github(e)
	love.system.openURL("https://github.com/InertSteak/Pokermon")
end
function G.FUNCS.pokermon_discord(e)
  love.system.openURL("https://discord.gg/AptX86Qsyz")
end

-- Art Credits UI
local pokermon_actual_credits_artists_create_grid = function()
  local page = G.pokermon_actual_credits_artists_grid_page or 1
  local rows, cols = 4, 5
  local artist_list = poke_get_artist_list()
  local row_nodes = {}
      
  local marker = 1 + rows * cols * (page - 1)
  for i = 1, rows do
    local col_nodes = {}
    local row_end = math.min(marker + cols - 1, #artist_list)
    for j = marker, row_end do
      local artist = artist_list[j]
      if not artist then break end
      local info = poke_get_artist_info(artist)
      local button = {
        n = G.UIT.C,
        config = { align = "tm", padding = 0.1 },
        nodes = {
          UIBox_button {
            id = artist,
            label = {info.display_name},
            button = "pokermon_actual_credits_artists_view_artist",
            text_colour = info.artist_colour,
            colour = info.highlight_colour or G.C.BLACK
          },
        }}
      col_nodes[#col_nodes+1] = button
    end
    row_nodes[i] = {n=G.UIT.R, config={align="tm", minw = 3 * cols, minh = 1.2}, nodes=col_nodes}
    marker = marker + cols
  end

  local total_pages = math.ceil(#artist_list / (rows * cols))
  local cycle_options = {}
  for i = 1, total_pages do
    cycle_options[#cycle_options+1] = localize('k_page') .. " " .. i .. "/" .. total_pages
  end

  row_nodes[#row_nodes+1] = {n = G.UIT.R, config = {align = "cm"}, nodes={
    create_option_cycle {
      options = cycle_options,
      w = 2.5,
      cycle_shoulders = true,
      opt_callback = 'pokermon_actual_credits_artists_page',
      current_option = page,
      colour = G.C.RED,
      no_pips = true,
      focus_args = {snap_to = true, nav = 'wide'}
    }
  }}

  return {
    n = G.UIT.ROOT,
    config = {
      align = "cm",
      r = 0.1,
      padding = 0.1,
      colour = G.C.CLEAR,
    },
    nodes = row_nodes,
  }
end

local pokermon_actual_credits_artists = function()
  return {
    label = localize('poke_artist_credits_art_credits'),
    tab_definition_function = function()
      return {
        n = G.UIT.ROOT,
        config = {
          align = "cm",
          r = 0.1,
          padding = 0.1,
          colour = G.C.CLEAR,
        },
        nodes = {
          {n=G.UIT.R, config={align = "cm"}, nodes={
            {n=G.UIT.T, config={text = localize('poke_artist_credits_basic_sprites_by') .. ' ', padding = 0.1, colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.5), scale = 0.55}},
            UIBox_button { col = true, button = 'pokermon_sprite_resource', label={localize('poke_artist_credits_sprite_resource')}, text_colour = mix_colours(G.C.UI.TEXT_LIGHT, G.C.UI.TEXT_INACTIVE, 0.625), colour = adjust_alpha(G.C.UI.BACKGROUND_INACTIVE, 0.25), scale = 0.55, minw = 7.5 },
          }},
          {n=G.UIT.R, config={align = "cm", padding = 0.1}, nodes={
            {n=G.UIT.T, config={text = localize('poke_artist_credits_artists'), colour = G.C.UI.TEXT_LIGHT, scale = 1}}
          }},
          {n = G.UIT.R, config = {align = "tm"}, nodes={
            {n = G.UIT.O, config = { id = 'poke_artist_grid_wrap', object = UIBox {
              definition = pokermon_actual_credits_artists_create_grid(),
              config = { align = "cm" }
            }}}
          }},
        },
      }
    end,
  }
end

G.FUNCS.pokermon_sprite_resource = function()
  local lines = localize('poke_artist_credits_sprite_resource_content')
  local content_nodes = {}

  for _, text in ipairs(lines) do
    table.insert(content_nodes, { n = G.UIT.R, config = { align = "cm" }, nodes = {
      { n = G.UIT.T, config = { text = text, scale = 0.6, colour = G.C.UI.TEXT_LIGHT } }
    }})
  end

  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_" .. G.ACTIVE_MOD_UI.id or 'exit_overlay_menu', contents = {
    {n=G.UIT.C, config={align = "cm"}, nodes={
      { n = G.UIT.R, config = { align = "cm", padding = 0.1, }, nodes = {
        { n = G.UIT.C, config = { align = "cm" }, nodes = content_nodes }
      }},
      { n = G.UIT.R, config = { align = "cm" }, nodes = {
        { n = G.UIT.C, config = { align = "cm" }, nodes = {
          { n = G.UIT.R, config = { minh = 0.2 }},
          { n = G.UIT.R, config = { align = "cl", padding = 0.1, }, nodes = {
            poke_UIBox_link_button({ label = { "Gen I-V" }, col = true, minw = 3.85, scale = 0.6, url = "https://www.pokecommunity.com/threads/the-ds-style-64x64-pok%C3%A9mon-sprite-resource-completed.267728/" }),
            { n = G.UIT.T, config = { text = "by Chaos Rush", scale = 0.6, colour = G.C.UI.TEXT_LIGHT }}
          }},
          { n = G.UIT.R, config = { align = "cl", padding = 0.1, }, nodes = {
            poke_UIBox_link_button({ label = { "Gen VI" }, col = true, minw = 3.85, scale = 0.6, url = "https://www.pokecommunity.com/threads/gen-vi-ds-style-64x64-pokemon-sprite-resource.314422/" }),
            { n = G.UIT.T, config = { text = "by MrDollSteak", scale = 0.6, colour = G.C.UI.TEXT_LIGHT }}
          }},
          { n = G.UIT.R, config = { align = "cl", padding = 0.1, }, nodes = {
            poke_UIBox_link_button({ label = { "Gen VII+" }, col = true, minw = 3.85, scale = 0.6, url = "https://www.pokecommunity.com/threads/ds-style-gen-vii-and-beyond-pok%C3%A9mon-sprite-repository-in-64x64.368703/" }),
            { n = G.UIT.T, config = { text = "by thedarkdragon11", scale = 0.6, colour = G.C.UI.TEXT_LIGHT }}
          }},
        }}
      }},
    }},
  }})

  G.FUNCS.overlay_menu{
    definition = t,
  }
end

G.FUNCS.pokermon_actual_credits_artists_page = function(e)
  if not e or not e.cycle_config then return end
  local page = e.cycle_config.current_option

  G.pokermon_actual_credits_artists_grid_page = page

  if G.OVERLAY_MENU then
    local grid_wrap = G.OVERLAY_MENU:get_UIE_by_ID('poke_artist_grid_wrap')

    grid_wrap.config.object:remove()
    grid_wrap.config.object = UIBox {
      definition = pokermon_actual_credits_artists_create_grid(),
      config = { parent = grid_wrap, type = "cm" }
    }

    grid_wrap.UIBox:recalculate()
  end
end

SMODS.current_mod.extra_tabs = function()
  return {
    pokermon_actual_credits(),
    pokermon_actual_credits_artists(),
  }
end

local function get_series_localize_key(atlas_prefix)
  local series_start = string.find(atlas_prefix, "Series")
  if series_start then
    local series = string.sub(atlas_prefix, series_start)
    local localize_prefix = 'poke_settings_pokemon_spritesheet_'
    return localize_prefix .. string.lower(series)
  end
end

local function get_sprite_keys_by_artist(artist)
  local keys = {}

  for _, sprite in ipairs(poke_get_artist_sprites(artist)) do
    local key = {}

    key.display_text = localize(get_series_localize_key(sprite.atlas_prefix))
    key.layer = sprite.layer

    if sprite.anim_atlas then
      key.anim_key = 'j_poke_'..sprite.name
      key.atlas = 'poke_'..sprite.anim_atlas
      key.pos = { x = 0, y = 0 }
    else
      key.atlas = 'poke_'..poke_get_atlas_string(sprite.atlas_prefix, sprite.gen_atlas, sprite.others_atlas)
      key.pos = sprite.pos
      key.soul_pos = sprite.soul_pos
    end

    keys[#keys+1] = key
  end

  -- Jokers get special treatment because we only want jokers without alts
  for _, joker in ipairs(G.P_CENTER_POOLS["Joker"]) do
    if poke_get_artist_layer(joker, artist) and joker.stage == 'Other' then
      keys[#keys+1] = { existing_key = joker.key, set = "Joker" }
    end
  end

  local add_pool_to_keys = function(pool)
    for _, item in pairs(pool) do
      if poke_get_artist_layer(item, artist) then
        keys[#keys+1] = { existing_key = item.key, set = item.set }
      end
    end
  end

  -- We take from the pools because we want the sprites to be in order
  add_pool_to_keys(G.P_CENTER_POOLS["Back"])
  add_pool_to_keys(G.P_CENTER_POOLS["Voucher"])
  add_pool_to_keys(G.P_CENTER_POOLS["Consumeables"])
  add_pool_to_keys(G.P_CENTER_POOLS["Enhanced"])
  add_pool_to_keys(G.P_CENTER_POOLS["Edition"])
  add_pool_to_keys(G.P_CENTER_POOLS["Booster"])
  add_pool_to_keys(G.P_CENTER_POOLS["Seal"])
  add_pool_to_keys(G.P_CENTER_POOLS["Tag"])

  if artist == 'Sonfive' then
    keys[#keys+1] = { display_text = "Main Menu Logo", atlas = "poke_logo", pos = { x = 0, y = 0 }, w = G.CARD_H*1.80092593 }
  end

  return keys
end

local function pokermon_show_artist_info(artist)
  local artist_info = poke_get_artist_info(artist)
  local display_name = artist_info.display_name
  local text_colour = artist_info.artist_colour
  local colour = artist_info.highlight_colour
  local links = artist_info.links

  local row_link_nodes = {}

  if links then
    local rows, cols = 3, 3

    local marker = 1
    for i = 1, rows do
      local col_nodes = {}
      for j = marker, marker + cols - 1 do
        local link = links[j]
        if not link then break end
        col_nodes[#col_nodes+1] = {n=G.UIT.C, config={align="cm", padding=0.1}, nodes = {
          poke_UIBox_link_button {
            url = link.url,
            colour = link.colour,
            site_text = link.site,
            bottom_text = link.account,
            scale = { 0.55, 0.32 },
            minh = 1.12,
            padding = 0.1,
          }
        }}
      end
      row_link_nodes[#row_link_nodes+1] = {n=G.UIT.R, config={align = "cm"}, nodes=col_nodes}
      marker = marker + cols
    end
  end

  return {n=G.UIT.ROOT, config={align = "cm", colour = G.C.CLEAR}, nodes = {
    {n=G.UIT.R, config={align="bm", minh = 1.5}, nodes = {
      {n=G.UIT.R, config={align="cm", colour = colour, r = 0.1, padding = 0.1}, nodes = {
        {n=G.UIT.T, config={text = display_name, colour = text_colour, scale = 1}},
      }}
    }},
    {n=G.UIT.R, config={minh = 0.2}},
    {n=G.UIT.R, config={align="cm", padding = 0.1}, nodes = {
      {n=G.UIT.C, nodes = row_link_nodes},
    }},
  }}
end

local function pokermon_show_artist_jokers(artist)
  local keys = get_sprite_keys_by_artist(artist)

  return { n = G.UIT.ROOT, config = { align = "cm", colour = G.C.CLEAR },
    nodes = poke_create_UIBox_your_collection {
      keys = keys,
      create_card_func = PokeDisplayCard,
    }
  }
end

G.FUNCS.pokermon_actual_credits_artists_view_artist = function(e)
  if not e then return end
  local artist = e.config.id
  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'exit_overlay_menu', contents = {
    {
      n = G.UIT.R,
      config = {
        align = "tm",
        colour = G.C.CLEAR,
        -- minh = 10.9 -- required for the tab buttons to stay in place
      },
      nodes = {
        create_tabs {
          tabs = {
            {
              label = localize("poke_artist_credits_artist_info"),
              chosen = true,
              tab_definition_function = pokermon_show_artist_info,
              tab_definition_function_args = artist,
            },
            {
              label = localize("poke_artist_credits_art_collection"),
              tab_definition_function = pokermon_show_artist_jokers,
              tab_definition_function_args = artist,
            }
          },
        },
      }
    }
  }})

  G.FUNCS.overlay_menu{
    definition = t,
  }
end

-- Pokedex View Functionality
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

--Reserve Area for Pocket packs (adapted from betmma)
local G_UIDEF_use_and_sell_buttons_ref=G.UIDEF.use_and_sell_buttons
    function G.UIDEF.use_and_sell_buttons(card)
        if (card.area == G.pack_cards and G.pack_cards) and card.ability.consumeable then --Add a use button
            if (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.label:find("Pocket")) or (G.GAME.poke_save_all and not SMODS.OPENED_BOOSTER.label:find("Wish")) or (card.ability.name == 'megastone') then
                return {
                    n=G.UIT.ROOT, config = {padding = -0.1,  colour = G.C.CLEAR}, nodes={
                      {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, minh = 0.7*card.T.h, maxw = 0.7*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'use_card', func = 'can_use_consumeable'}, nodes={
                        {n=G.UIT.T, config={text = localize('b_use'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
                      }},
                      {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, maxw = 0.9*card.T.w - 0.15, minh = 0.1*card.T.h, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'Can Reserve', func = 'can_reserve_card'}, nodes={
                        {n=G.UIT.T, config={text = localize('b_save'),colour = G.C.UI.TEXT_LIGHT, scale = 0.45, shadow = true}}
                      }},
                      {n=G.UIT.R, config = {align = "bm", w=7.7*card.T.w}},
                      {n=G.UIT.R, config = {align = "bm", w=7.7*card.T.w}},
                      {n=G.UIT.R, config = {align = "bm", w=7.7*card.T.w}},
                      {n=G.UIT.R, config = {align = "bm", w=7.7*card.T.w}},
                      -- I can't explain it
                  }}
            end
        end
        return G_UIDEF_use_and_sell_buttons_ref(card)
    end
    G.FUNCS.can_reserve_card = function(e)
        if #G.consumeables.cards < G.consumeables.config.card_limit then 
            e.config.colour = G.ARGS.LOC_COLOURS.pink
            e.config.button = 'reserve_card' 
        else
          e.config.colour = G.C.UI.BACKGROUND_INACTIVE
          e.config.button = nil
        end
    end
    G.FUNCS.reserve_card = function(e) -- only works for consumeables
        local c1 = e.config.ref_table
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
              c1.area:remove_card(c1)
              c1:add_to_deck()
              if c1.children.price then c1.children.price:remove() end
              c1.children.price = nil
              if c1.children.buy_button then c1.children.buy_button:remove() end
              c1.children.buy_button = nil
              remove_nils(c1.children)
              G.consumeables:emplace(c1)
              G.GAME.pack_choices = G.GAME.pack_choices - 1
              if G.GAME.pack_choices <= 0 then
                G.FUNCS.end_consumeable(nil, delay_fac)
              end
              return true
            end
        }))
    end
    G.FUNCS.reserve_card_to_joker_slot = function(e) -- only works for consumeables
        local c1 = e.config.ref_table
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
              c1.area:remove_card(c1)
              c1:add_to_deck()
              if c1.children.price then c1.children.price:remove() end
              c1.children.price = nil
              if c1.children.buy_button then c1.children.buy_button:remove() end
              c1.children.buy_button = nil
              remove_nils(c1.children)
              G.jokers:emplace(c1)
              G.GAME.pack_choices = G.GAME.pack_choices - 1
              if G.GAME.pack_choices <= 0 then
                G.FUNCS.end_consumeable(nil, delay_fac)
              end
              return true
            end
        }))
    end

-- Toggle Individual Sprites UI
G.FUNCS.pokermon_upd_sprite_setting = function(e)
  local atlas = {"AtlasJokersBasic", "AtlasJokersSeriesA"}
  pokermon_config.pokemon_spritesheet_atlas = atlas[e.to_key]
  pokermon_config.pokemon_spritesheet_id = e.to_key
  pokermon_config.pokemon_spritesheet_overrides = {}
  NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
end

G.FUNCS.pokermon_individual_sprites = function(e)
  local keys = {}
  for k, v in ipairs(G.P_CENTER_POOLS["Joker"]) do
    local sprite_info = PokemonSprites[v.name]
    if v.stage and sprite_info and sprite_info.alts and sprite_info.alts["AtlasJokersSeriesA"] and not v.poke_custom_prefix then
      keys[#keys + 1] = v
    end
  end

  G.FUNCS.overlay_menu{
    definition = create_UIBox_generic_options {
      back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'exit_overlay_menu',
      contents = poke_create_UIBox_your_collection {
        keys = keys,
        cols = 3,
        create_card_func = function(key, x, y)
          local card = poke_create_your_collection_card(key, x, y)
          card.poke_change_sprite = true
          return card
        end,
        page_text = localize('poke_settings_pokemon_sprites_right_click_to_change')
      }
    }
  }
end

G.FUNCS.pokemon_toggle_sprite = function(card)
  local sprite_info = PokemonSprites[card.config.center.name]
  if sprite_info.alts and not card.config.center.poke_custom_prefix then
    local atlas = card.config.center.atlas
    local atlas_prefix = nil
    local atlas_find = nil
    
    local series_atlas_prefixes = {"AtlasJokersSeriesA", "AtlasJokersSeriesB"}
    local availible_atlas_prefixes = {"AtlasJokersBasic"}
    for i = 1, #series_atlas_prefixes do
      if sprite_info.alts[series_atlas_prefixes[i]] then
        availible_atlas_prefixes[#availible_atlas_prefixes + 1] = series_atlas_prefixes[i]
      end
    end
    for j = 1, #availible_atlas_prefixes do
      local _, found = string.find(atlas, availible_atlas_prefixes[j])
      if found then
        atlas_find = found
        if j == #availible_atlas_prefixes then
          atlas_prefix = availible_atlas_prefixes[1]
        else
          atlas_prefix = availible_atlas_prefixes[j + 1]
        end
        break
      end
    end
    
    if sprite_info.alts[atlas_prefix] and sprite_info.alts[atlas_prefix].anim_atlas then
      card.config.center.atlas = 'poke_'..sprite_info.alts[atlas_prefix].anim_atlas
      card.config.center.pos = {x = 0, y = 0}
      card.config.center.animated = true
      card:set_sprites(card.config.center)
    else
      card.config.center.animated = nil
      local base_pos = {}
      base_pos.x = sprite_info.base.pos.x
      base_pos.y = sprite_info.base.pos.y
      card.config.center.pos = base_pos
    end
    
    if sprite_info.alts[atlas_prefix] and sprite_info.alts[atlas_prefix].soul_pos then
      card.config.center.soul_pos = sprite_info.alts[atlas_prefix].soul_pos
    end
    
    if atlas_prefix then
      if not card.config.center.animated then
        local stub = string.sub(atlas, atlas_find + 1)
        if G.ASSET_ATLAS['poke_'..atlas_prefix..stub] then
          card.config.center.atlas = 'poke_'..atlas_prefix..stub
        else
          card.config.center.atlas = 'poke_'..atlas_prefix..'Natdex'
        end
        card:set_sprites(card.config.center)
      end
      
      pokermon_config.pokemon_spritesheet_overrides[card.config.center.name] = atlas_prefix
      NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
    end
  end
end

poke_input_manager:add_listener({ 'right_click', 'right_stick' }, function(target)
  if target and target.poke_change_sprite then
    G.FUNCS.pokemon_toggle_sprite(target)
  end
end)

-- Tooltip Credits UI
function poke_artist_credit(artists)
    local artist_names, artist_colours, artist_highlight_colours = {}, {}, {}
    local add_artist_info = function(artist)
      if type(artist) == 'table' then
        artist = artist.name
      end
      local artist_info = poke_get_artist_info(artist) or {}
      artist_names[#artist_names+1] = artist_info.display_name or artist
      artist_colours[#artist_colours+1] = artist_info.artist_colour or G.C.FILTER
      artist_highlight_colours[#artist_highlight_colours+1] = artist_info.highlight_colour
    end

    if type(artists) == 'string' or type(artists) == 'table' and artists.name then
        add_artist_info(artists)
    else
        for _, artist in ipairs(artists) do
            add_artist_info(artist)
        end
    end

    local artist_credit = {n=G.UIT.R, config = {align = 'tm'}, nodes = {
        {n=G.UIT.T, config={
            text = localize('poke_credits_artist'),
            shadow = true,
            colour = G.C.UI.BACKGROUND_WHITE,
            scale = 0.27}}
    }}
    local outline_nodes = {}
    local outline_node = nil
    local artist_node = nil

    for i = 1, #artist_names do
      outline_node = {n=G.UIT.C, config={align = "m", colour = artist_highlight_colours and artist_highlight_colours[i] or G.C.CLEAR, r = 0.05, padding = 0.03, res = 0.15}, nodes = {}}
        
      artist_node = {n=G.UIT.O, config={
        object = DynaText({string = artist_names[i],
          colours = {artist_colours[i]},
          bump = true,
          silent = true,
          pop_in = 0,
          pop_in_rate = 4,
          shadow = true,
          y_offset = -0.6,
          scale =  0.27
        })
      }}
      table.insert(outline_node.nodes, artist_node)
                
      outline_nodes[#outline_nodes + 1] = outline_node
    end
    
    for j = 1, #outline_nodes do
      table.insert(artist_credit.nodes, outline_nodes[j])
      if #outline_nodes > 1 and j ~= #outline_nodes then
        local amp_node = {n=G.UIT.T, config={
          text = ' & ',
          shadow = true,
          colour = G.C.UI.BACKGROUND_WHITE,
          scale = 0.27}}
        table.insert(artist_credit.nodes, amp_node)
      end
    end
    return artist_credit
end

function poke_designer_credit(designer_name)
    local designer_credit = {n=G.UIT.R, config = {align = 'tm'}, nodes = {
        {n=G.UIT.T, config={
            text = localize('poke_credits_designer'),
            shadow = true,
            colour = G.C.UI.BACKGROUND_WHITE,
            scale = 0.27}}
    }}
    
    local designer_node = {n=G.UIT.O, config={
            object = DynaText({string = designer_name,
            colours = {G.C.FILTER},
            bump = true,
            silent = true,
            pop_in = 0,
            pop_in_rate = 4,
            shadow = true,
            y_offset = -0.6,
            scale =  0.27
            })
        }}
    
    table.insert(designer_credit.nodes, designer_node)
    return designer_credit
end

local prev_card_h_popup = G.UIDEF.card_h_popup
function G.UIDEF.card_h_popup(card)
  local ret_val =prev_card_h_popup(card)
  local center = (card and card.config) and card.config.center or nil
  if center and center.artist then
    table.insert(ret_val.nodes[1].nodes[1].nodes[1].nodes, poke_artist_credit(center.artist))
  end
  if center and center.designer then
    table.insert(ret_val.nodes[1].nodes[1].nodes[1].nodes, poke_designer_credit(center.designer))
  end
  
  return ret_val
end
