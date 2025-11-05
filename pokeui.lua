--Config UI
local restart_toggles_left = { 
                 {ref_value = "pokeballs", label = "poke_settings_pokeballs"},
                 {ref_value = "pokemon_altart", label = "poke_settings_pokemon_altart"},
                 {ref_value = "pokemon_aprilfools", label = "poke_settings_pokemon_aprilfools"},
                 {ref_value = "poke_enable_animations", label = "poke_settings_enable_animations"}
                }
                
local restart_toggles_right = { 
  {ref_value = "pokemon_splash", label = "poke_settings_pokemon_splash"}, 
  {ref_value = "pokemon_discovery", label = "poke_settings_pokemon_discovery", tooltip = {set = 'Other', key = 'discovery_tooltip'}},
  {ref_value = "pokemon_legacy", label = "poke_settings_pokemon_legacy"}
}

local no_restart_toggles = {{ref_value = "pokemon_only", label = "poke_settings_pokemon_only"}, {ref_value = "shiny_playing_cards", label = "poke_settings_shiny_playing_cards"},
                          {ref_value = "gen_oneb", label = "poke_settings_pokemon_gen_one"}, }
 
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
  {ref_value = "previous_evo_stickers", label = "poke_settings_previous_evo_stickers", tooltip = {set = 'Other', key = 'previous_evo_stickers_tooltip'}}
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
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
    })
    if v.tooltip then
      parent.nodes[#parent.nodes].config.detailed_tooltip = v.tooltip
    end
  end
end

pokemonconfig = function()
  local restart_left_settings = {n = G.UIT.C, config = {align = "tl", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
  create_menu_toggles(restart_left_settings, restart_toggles_left)

  local restart_right_settings = {n = G.UIT.C, config = {align = "tl", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
  create_menu_toggles(restart_right_settings, restart_toggles_right)

  local no_restart_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR,}, nodes = {}}
  create_menu_toggles(no_restart_settings, no_restart_toggles)
  
  local config_nodes =   
  {
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
  return config_nodes
end

SMODS.current_mod.config_tab = function()
    return {
      n = G.UIT.ROOT,
      config = {
        align = "cm",
        padding = 0.05,
        colour = G.C.CLEAR,
      },
      nodes = pokemonconfig()
    }
end

local pokermon_actual_credits = function()
  local scale = 0.75
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
        nodes = {
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_thanks"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_lead"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "InertSteak",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_graphics"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "GayCoonie, Joey J. Jester, Larantula, The Kuro, Lemmanade",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            },
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_graphics"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Yamper, MyDude, Numbuh 214, SMG9000, Sonfive, PrincessRoxie",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            },
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_graphics"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Catzzadilla, bt, KatRoman",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            },
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_quality_assurance_main"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Lemmanade, drspectred",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_sound"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Dread",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_developer"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "SDM0, Jevonnissocoolman, Ishtech, Fem, MathIsFun_, Kek, Eternalnacho",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_designer"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Xilande, Lemmanade, PrincessRoxie, Catzzadilla",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_localization"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Rafael, PainKiller, FlamingRok, Mr. Onyx",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_localization"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "PIPIKAI, PanbimboGD, HuyCorn, IlPastaio, heyctf",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_community_manager"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Astra, Kaethela",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
            n = G.UIT.R,
            config = {
              padding = 0,
              align = "cm"
            },
            nodes = {
              {
                n = G.UIT.T,
                config = {
                  text = localize("poke_credits_special_thanks"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Marie|Tsunami, CBMX, 64x64 Pokémon Sprite Resource...and you!",
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.BLUE
                }
              }
            }
          },
          {
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
          },
        },
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
            label = {artist},
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

SMODS.current_mod.extra_tabs = function()
  return {
    pokermon_actual_credits(),
    pokermon_actual_credits_artists(),
  }
end

G.FUNCS.pokermon_sprite_resource = function()
  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'exit_overlay_menu', contents = {
    {n=G.UIT.R, config={align = "cm"}, nodes={
      {n=G.UIT.T, config={text = "Hello! This page is under construction!", colour = G.C.UI.TEXT_LIGHT, scale = 1}}
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

-- Moveables are called with delta time multiplied by 0,
-- so this is a hacked together way to use the dt variable from `Game:update` instead
local poke_dt = 0
local upd = Game.update
function Game:update(dt)
  poke_dt = dt
  upd(self, dt)
end

function poke_create_display_card(args, x, y, w, h)
  local display_text = args.display_text
  local pos = args.pos
  local soul_pos = args.soul_pos
  local anim_key = args.anim_key

  local w = w or args.w or G.CARD_W
  local h = h or args.h or G.CARD_H

  local card = Moveable(x, y, w, h)

  card.atlas = args.atlas
  card.shiny = false
  card.poke_toggle_shiny = function(self)
    if self.atlas then
      if self.shiny then
        self.shiny = false
        self.children.center.atlas = G.ASSET_ATLAS[self.atlas]
        if self.children.floating_sprite then
          self.children.floating_sprite.atlas = G.ASSET_ATLAS[self.atlas]
        end
        self:juice_up(0.05, 0.03)
      else
        local shiny_atlas = self.atlas..'Shiny'
        if G.ASSET_ATLAS[shiny_atlas] then
          self.shiny = true
          self.children.center.atlas = G.ASSET_ATLAS[shiny_atlas]
          if self.children.floating_sprite then
            self.children.floating_sprite.atlas = G.ASSET_ATLAS[shiny_atlas]
          end
          self:juice_up(0.05, 0.03)
        end
      end
    end
  end

  if anim_key then
    -- Animation code modified from Aura
    local t = 0
    card.update = function(self)
      local dt = poke_dt

      local next_frame = false
      local anim = AnimatedPokemon[anim_key]
      t = t + dt
      if t > 1 / (anim.fps or 10) then
        t = t - 1 / (anim.fps or 10)
        next_frame = true
      end
      if next_frame then
        local loc = pos.y * (anim.frames_per_row or anim.frames) + pos.x
        loc = loc + 1
        if loc >= anim.frames then loc = anim.start_frame or 0 end
        pos.x = loc % (anim.frames_per_row or anim.frames)
        pos.y = math.floor(loc / (anim.frames_per_row or anim.frames))
        self.children.center:set_sprite_pos(pos)
        -- There is no current standard for animated soul layers in the PokemonSprites table,
        -- so this serves as an example for how it might work but never actually gets called
        -- (Yes, Unown Swarm isn't in the PokemonSprites table. Tragic.)
        if soul_pos then
          soul_pos.x = pos.x
          soul_pos.y = pos.y
          self.children.floating_sprite:set_sprite_pos(soul_pos)
        end
      end
    end
  end

  card.children.center = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[card.atlas], pos)
  card.children.center.states.hover = card.states.hover
  card.children.center.states.click = card.states.click
  card.children.center.states.drag = card.states.drag
  card.children.center.states.collide.can = false
  card.children.center:set_role({major = card, role_type = 'Glued', draw_major = card})

  if soul_pos then
    card.children.floating_sprite = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[card.atlas], soul_pos)
    card.children.floating_sprite.role.draw_major = card
    card.children.floating_sprite.states.hover.can = false
    card.children.floating_sprite.states.click.can = false
  end

  -- These are required so that CardArea doesn't crash the game
  -- They're not important, trust me
  card.ability = {}
  card.set_card_area = function() end
  card.remove_from_area = function() end
  card.highlight = function() end
  card.update_alert = function() end

  -- CardArea will just call this without arguments, which messes with Moveable
  card.hard_set_T = function(self, X, Y, W, H)
    local x = (X or self.T.x)
    local y = (Y or self.T.y)
    local w = (W or self.T.w)
    local h = (H or self.T.h)
    Moveable.hard_set_T(self, x, y, w, h)
    self.children.center:hard_set_T(x, y, w, h)
  end

  card.hover = function(self)
    self:juice_up(0.05, 0.03)
    play_sound('paper1', math.random()*0.2 + 0.9, 0.35)

    if display_text then
      self.config.h_popup = {n=G.UIT.ROOT, config = {align = 'cm', colour = G.C.CLEAR}, nodes={
        {n=G.UIT.R, config = {align = "cm", padding = 0.05, r = 0.12, colour = lighten(G.C.JOKER_GREY, 0.5), emboss = 0.07},nodes={
          {n=G.UIT.R, config = {align = "cm", minw = G.CARD_W, r = 0.1, padding = 0.07, colour = adjust_alpha(darken(G.C.BLACK, 0.1), 0.8)},nodes={
            {n=G.UIT.T, config = {text = display_text, colour = G.C.UI.TEXT_LIGHT, scale = 0.55 - 0.004 * #display_text, shadow = true }},
          }}
        }}
      }}

      self.config.h_popup_config = {
        major = self,
        parent = self,
        xy_bond = 'Strong',
        r_bond = 'Weak',
        wh_bond = 'Weak',
        type = 'bm',
        offset = { x = 0, y = 0.1 },
      }
    end

    Node.hover(self)
  end

  card.draw = function(self, layer)
    layer = layer or 'both'

    G.shared_shadow = self.children.center

    if G.SETTINGS.GRAPHICS.shadows == 'On' and (layer == 'shadow' or layer == 'both') then
      self.shadow_height = 0*(0.08 + 0.4*math.sqrt(self.velocity.x^2)) + (self.states.drag.is and 0.35 or 0.1)
      G.shared_shadow:draw_shader('dissolve', self.shadow_height)
    end

    if layer == 'card' or layer == 'both' then
      self.children.center:draw_shader('dissolve')

      if self.children.floating_sprite and not self.hide_soul_layer then
        -- For more on what this is about, ask LocalThunk
        local scale_mod = 0.07 + 0.02*math.sin(1.8*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL))*math.pi*14)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^3
        local rotate_mod = 0.05*math.sin(1.219*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL)*math.pi*5)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^2

        self.children.floating_sprite:draw_shader('dissolve',0, nil, nil, self.children.center,scale_mod, rotate_mod,nil, 0.1 + 0.03*math.sin(1.8*G.TIMERS.REAL),nil, 0.6)
        self.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, self.children.center, scale_mod, rotate_mod)
      end
    end

    add_to_drawhash(self)
  end

  card.click = function(self)
    self.hide_soul_layer = not self.hide_soul_layer
  end

  return card
end
local function get_series_localize_key(atlas_prefix)
  local series_start = string.find(atlas_prefix, "Series")
  local series = string.sub(atlas_prefix, series_start)
  local localize_prefix = 'poke_settings_pokemon_spritesheet_'
  return localize_prefix .. string.lower(series)
end
local function get_sprite_keys_by_artist(artist)
  local keys = {}

  for _, sprite_info in ipairs(PokemonSprites.list) do
    if sprite_info and sprite_info.alts then
      for atlas_prefix, alt in pairs(sprite_info.alts) do
        local artists = type(alt.artist) == 'table' and alt.artist or {alt.artist}
        for _, alt_artist in pairs(artists) do
          if alt_artist == artist then
            local key = {}
            key.display_text = localize(get_series_localize_key(atlas_prefix))
            if alt.anim_atlas then
              key.anim_key = 'j_poke_'..sprite_info.name
              key.atlas = 'poke_'..alt.anim_atlas
              key.pos = { x = 0, y = 0 }
            else
              local stub
              if sprite_info.gen_atlas then
                stub = (sprite_info.gen_atlas < 10 and 'Gen0' or 'Gen')..sprite_info.gen_atlas
              else
                stub = 'Natdex'
              end
              key.atlas = 'poke_'..atlas_prefix..stub
              key.pos = sprite_info.base.pos
              key.soul_pos = alt.soul_pos or sprite_info.base.soul_pos
            end
            keys[#keys+1] = key
            break
          end
        end
      end
    else
      -- Grab Jokers that don't have alts in the PokemonSprites table, like Ruins of Alph
      local center = G.P_CENTERS['j_poke_'..sprite_info.name]
      if center and center.artist == artist then
        local key = {}
        key.display_text = localize { type = 'name_text', set = 'Joker', key = center.key }
        key.atlas = center.atlas
        key.pos = center.pos
        if center.soul_pos then key.soul_pos = center.soul_pos end
        keys[#keys+1] = key
      end
    end
  end

  local add_pool_to_keys = function(pool, w, h)
    for _, center in ipairs(pool) do
      if center.artist == artist then
        local key = { atlas = center.atlas, pos = center.pos }
        if w then key.w = w end
        if h then key.h = h end
        local set = center.set
        -- TODO: Seals and probably Stickers don't work
        if center.set == 'Booster' or center.set == 'Seal' or center.set == 'Sticker' then
          set = 'Other'
        end
        local display_text = localize { type = 'name_text', set = set, key = center.key }
        if display_text and display_text ~= 'ERROR' then key.display_text = display_text end
        keys[#keys+1] = key
      end
    end
  end

  add_pool_to_keys(G.P_CENTER_POOLS.Consumeables)
  add_pool_to_keys(G.P_CENTER_POOLS.Enhanced)
  add_pool_to_keys(G.P_CENTER_POOLS.Booster, G.CARD_W*1.27, G.CARD_H*1.27)
  add_pool_to_keys(G.P_CENTER_POOLS.Seal)
  add_pool_to_keys(G.P_CENTER_POOLS.Tag, 0.8, 0.8)
  add_pool_to_keys(G.P_CENTER_POOLS.Back)

  if artist == 'Sonfive' then
    keys[#keys+1] = { atlas = "poke_logo", pos = { x = 0, y = 0 }, w = G.CARD_H*1.80092593 }
  end

  return keys
end

local function parse_url(url)
  -- simple Url parser for getting domain name and path
  local protocol = url:match('[a-z]+://')
  if protocol then url = url:sub(protocol:len()+1) end
  local domains = {}
  for domain in url:gmatch('([a-z0-9%-]+)%.') do
    table.insert(domains, domain)
  end
  local domain_name = domains[#domains]
  local path = url:match('.[a-z]+/(.*)')
  return domain_name, path
end

local site_colours = {
  ['youtube'] = G.C.RED,
  ['twitch'] = G.C.PURPLE,
  ['steam'] = G.C.BLACK,
  ['steamcommunity'] = G.C.BLACK,
  ['x'] = G.C.BLACK,
  ['twitter'] = G.C.BLUE,
  ['reddit'] = G.C.ORANGE,
}

local function get_site_colour(domain)
  return site_colours[domain] or G.C.RED
end

local function first_to_upper(str)
  return str:gsub("^%l", string.upper)
end

function G.FUNCS.pokermon_open_site(e)
  if e and e.config then
    local url = e.config.url
    if url then
      love.system.openURL(url)
    end
  end
end

function poke_create_button(args)
  -- TODO: just wrap the regular UIBox_button function and fiddle with the outcome
  args = args or {}

  local config = {
    align = "cm",
    r = 0.1,
    hover = true,
    colour = G.C.RED,
    minw = 2.7,
    maxw = 2.5,
    minh = 0.9,
    shadow = true,
  }
  
  for k, v in pairs(args.config or {}) do
    config[k] = v
  end

  local labels = args.labels or {}
  local label_nodes = {}

  for _, label in ipairs(labels) do
    label_nodes[#label_nodes+1] = {n=G.UIT.R, config={align="cm"}, nodes={
      {n=G.UIT.T, config={
        text = label.text,
        colour = label.colour or G.C.UI.TEXT_LIGHT,
        scale = label.scale or args.text_scale or 0.75
      }}
    }}
  end

  return {n=G.UIT.C, config={align="cm"}, nodes={
    {n=G.UIT.C, config = config, nodes = label_nodes},
  }}
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
        local domain_name, path = parse_url(link.url)
        local colour = link.colour or get_site_colour(domain_name)
        local site_text = link.site_text or first_to_upper(domain_name)
        local account_text = link.account_text or path
        col_nodes[#col_nodes+1] = {n=G.UIT.C, config={align="cm", padding=0.1}, nodes = {
          poke_create_button({
            labels = {
              {text = site_text, scale = 0.55},
              {text = account_text, scale = 0.32},
            },
            config = {
              colour = colour,
              padding = 0.1,
              button = "pokermon_open_site",
              url = link.url
            }
          })
        }}
      end
      row_link_nodes[#row_link_nodes+1] = {n=G.UIT.R, nodes=col_nodes}
      marker = marker + cols
    end
  end

  return {n=G.UIT.ROOT, config={align = "cm", colour = G.C.CLEAR}, nodes = {
    {n=G.UIT.R, config={align="cm"}, nodes = {
      {n=G.UIT.R, config={colour = colour, r = 0.1, padding = 0.1}, nodes = {
        {n=G.UIT.T, config={text = display_name, colour = text_colour, scale = 1}},
      }}
    }},
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
      create_card_func = poke_create_display_card,
    }
  }
end

G.FUNCS.your_collection_pokemon_artist_credit_page = function(args)
  if not args or not args.cycle_config then return end
  local rows, cols = 3, 5
  for j = 1, #G.your_collection do
    for i = #G.your_collection[j].cards,1, -1 do
      local c = G.your_collection[j]:remove_card(G.your_collection[j].cards[i])
      c:remove()
      c = nil
    end
  end
  local row_start = 1 + (rows * cols * (args.cycle_config.current_option - 1))
  for i = 1, rows do
    for j = row_start, row_start + cols - 1 do
      local akeys = args.cycle_config.keys
      local key = akeys[j]
      if not key then break end
      local card = poke_create_display_card(key, G.your_collection[i].T.x + G.your_collection[i].T.w/2, G.your_collection[i].T.y)
      G.your_collection[i]:emplace(card)
    end
    row_start = row_start + cols
  end
end

G.FUNCS.pokermon_actual_credits_artists_view_artist = function(e)
  if not e then return end
  local artist = e.config.id -- Yes, this is a hacked way of transferring values. Take it up with god.
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

function G.FUNCS.pokermon_energy(e)
  local ttip = {set = 'Other', key = 'precise_energy_tooltip'}
  local energy_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(energy_settings, energy_toggles)
  
  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {energy_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end
function G.FUNCS.pokermon_joker_pool(e)
  local joker_pool_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR}, nodes = {}}
  create_menu_toggles(joker_pool_settings, joker_pool_toggles)
  
  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {joker_pool_settings}
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

poke_joker_page = 1

create_UIBox_pokedex_jokers = function(keys, previous_menu)
  return create_UIBox_generic_options {
    back_func = previous_menu or 'exit_overlay_menu',
    contents = poke_create_UIBox_your_collection {
      keys = keys,
      cols = 4,
      dynamic_sizing = true
    }
  }
end

G.FUNCS.pokedexui = function(e)
  if G.STAGE == G.STAGES.RUN then
    if G.jokers and G.jokers.highlighted and G.jokers.highlighted[1] then
      local selected = G.jokers.highlighted[1]
      if selected.config.center.stage then
        G.FUNCS.overlay_menu{
          definition = create_UIBox_pokedex_jokers(get_family_keys(selected.config.center.name, selected.config.center.poke_custom_prefix, selected)),
        }
      end
    end
  end
end

G.FUNCS.pokedex_back = function()
  G.FUNCS.your_collection_jokers()
  G.FUNCS.SMODS_card_collection_page({cycle_config = {current_option = poke_joker_page}})
  local page = G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders').children[1].children[1]
  page.config.ref_table.current_option = poke_joker_page
  page.config.ref_table.current_option_val = page.config.ref_table.options[poke_joker_page]
end

-- Functionality for Pokedex View
SMODS.Keybind({
    key = "openPokedex",
    key_pressed = "p",
    action = function(controller)
        G.FUNCS.pokedexui()
    end
})

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

poke_input_manager:add_listener({ 'right_click', 'double_click' }, function(target)
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
end)

poke_input_manager:add_listener('right_click', function(target)
  if target and target.poke_change_sprite then
    G.FUNCS.pokemon_toggle_sprite(target)
  end
end)

poke_input_manager:add_listener('right_click', function(target)
  if target and target.poke_toggle_shiny then
    target:poke_toggle_shiny()
  end
end)

function poke_artist_credit(artists)
    local artist_name, artist_colour, artist_highlight_colour
    if type(artists) == 'string' then
        local artist_info = poke_get_artist_info(artists)
        artist_name = artist_info.display_name
        artist_colour = {artist_info.artist_colour or G.C.FILTER}
        artist_highlight_colour = artist_info.highlight_colour
    else
        artist_name, artist_colour, artist_highlight_colour = {}, {}, {}
        for _, artist in ipairs(artists) do
            local artist_info = poke_get_artist_info(artist)
            artist_name[#artist_name+1] = artist_info.display_name
            artist_colour[#artist_colour+1] = artist_info.artist_colour or {G.C.FILTER}
            artist_highlight_colour[#artist_highlight_colour+1] = artist_info.highlight_colour
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
    if type(artist_name) == 'string' then
      outline_node = {n=G.UIT.C, config={align = "m", colour = artist_highlight_colour or G.C.CLEAR, r = 0.05, padding = 0.03, res = 0.15}, nodes = {}}
      
      artist_node = {n=G.UIT.O, config={
          object = DynaText({string = artist_name,
          colours = artist_colour,
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
      outline_nodes[1] = outline_node
    else
      for i = 1, #artist_name do
        outline_node = {n=G.UIT.C, config={align = "m", colour = artist_highlight_colour and artist_highlight_colour[i] or G.C.CLEAR, r = 0.05, padding = 0.03, res = 0.15}, nodes = {}}
        
        artist_node = {n=G.UIT.O, config={
          object = DynaText({string = artist_name[i],
          colours = {artist_colour[i]},
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
