--Config UI
local restart_toggles_left = { 
                 {ref_value = "jokers_only", label = "poke_settings_jokers_only"}, {ref_value = "no_evos", label = "poke_settings_no_evolutions"}, 
                 {ref_value = "pokeballs", label = "poke_settings_pokeballs"}
                }
                
local restart_toggles_right = { 
  {ref_value = "pokemon_splash", label = "poke_settings_pokemon_splash"}, 
  {ref_value = "pokemon_discovery", label = "poke_settings_pokemon_discovery", tooltip = {set = 'Other', key = 'discovery_tooltip'}}
}

local no_restart_toggles = {{ref_value = "pokemon_only", label = "poke_settings_pokemon_only"}, {ref_value = "shiny_playing_cards", label = "poke_settings_shiny_playing_cards"},
                          {ref_value = "gen_one", label = "poke_settings_pokemon_gen_one"}}
 
local energy_toggles = {{ref_value = "unlimited_energy", label = "poke_settings_unlimited_energy"}, 
                        {ref_value = "precise_energy", label = "poke_settings_pokemon_precise_energy"}, title = "Test", text = {"First Line", "Second Line"}}
 
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
        padding = 0,
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
    no_restart_settings,
    UIBox_button({
      minw = 3.85,
      colour = HEX("FF7ABF"),
      button = "pokermon_energy",
      label = {"Energy Options"}
    }),
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
            text = localize("poke_settings_header_required"),
            shadow = true,
            scale = 0.75 * 0.8,
            colour = HEX("ED533A")
          }
        }
      },
    },
    {
      n = G.UIT.R,
      config = {
        padding = 0,
        align = "tm"
      },
      nodes = {restart_left_settings, restart_right_settings},
    },
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

SMODS.current_mod.extra_tabs = function()
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
                  text = localize("poke_credits_quality_assurance_main"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Mus, drspectred, Lemmanade",
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
                  text = "SDM0, Jevonnissocoolman, Ishtech, Fem, MathIsFun_, Kek",
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
                  text = "Xilande, Mus, Lemmanade, PrincessRoxie, Catzzadilla",
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
                  text = "Rafael, PainKiller, FlamingRok, Mr. Clover",
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
                  text = "PIPIKAI, PanbimboGD, HuyCorn",
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
                  text = localize("poke_credits_promotion_producer"),
                  shadow = true,
                  scale = scale * 0.8,
                  colour = G.C.UI.TEXT_LIGHT
                }
              },
              {
                n = G.UIT.T,
                config = {
                  text = "Marie|Tsunami",
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
  love.system.openURL("https://discord.gg/3GZTGppef4")
end
function G.FUNCS.pokermon_energy(e)
  local ttip = {set = 'Other', key = 'precise_energy_tooltip'}
  local energy_settings = {n = G.UIT.R, config = {align = "tm", padding = 0.05, scale = 0.75, colour = G.C.CLEAR, detailed_tooltip = ttip}, nodes = {}}
  create_menu_toggles(energy_settings, energy_toggles)
  
  local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
      contents = {energy_settings}
  })
  G.FUNCS.overlay_menu{definition = t}
end

--Reserve Area for Pocket packs (adapted from betmma)
local G_UIDEF_use_and_sell_buttons_ref=G.UIDEF.use_and_sell_buttons
    function G.UIDEF.use_and_sell_buttons(card)
        if (card.area == G.pack_cards and G.pack_cards) and card.ability.consumeable then --Add a use button
            if (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and SMODS.OPENED_BOOSTER.label:find("Pocket")) or (G.GAME.poke_save_all) or (card.ability.name == 'megastone') then
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

poke_joker_page = 1

create_UIBox_pokedex_jokers = function(keys, previous_menu)
  local deck_tables = {}

  G.your_collection = {}
  G.your_collection[1] = CardArea(
    G.ROOM.T.x + 0.2*G.ROOM.T.w/2,G.ROOM.T.h,
    math.min(4, #keys)*G.CARD_W,
    0.95*G.CARD_H, 
    {card_limit = #keys, type = 'title', highlight_limit = 0, collection = true})
  table.insert(deck_tables, 
  {n=G.UIT.R, config={align = "cm", padding = 0.07, no_fill = true}, nodes={
    {n=G.UIT.O, config={object = G.your_collection[1]}}
  }}
  )
  
  for i = 1, #keys do
    local key = (type(keys[i]) == "table" and keys[i].key) or keys[i]
    local card = Card(G.your_collection[1].T.x + G.your_collection[1].T.w/2, G.your_collection[1].T.y, G.CARD_W, G.CARD_H, nil, G.P_CENTERS[key])
    if type(keys[i]) == "table" and G.P_CENTERS[key].update_form then
      G.P_CENTERS[key].update_form(card,keys[i].form)
      update_pokemon_form_sprites(card)
    end
    G.your_collection[1]:emplace(card)
  end

  
  local t =  create_UIBox_generic_options({ back_func = previous_menu or 'exit_overlay_menu', contents = {
        {n=G.UIT.R, config={align = "cm", r = 0.1, colour = G.C.BLACK, emboss = 0.05}, nodes=deck_tables}, 
    }})
  return t
end

G.FUNCS.pokedexui = function(e)
  if G.STAGE == G.STAGES.RUN then
    if G.jokers and G.jokers.highlighted and G.jokers.highlighted[1] then
      local selected = G.jokers.highlighted[1]
      if selected.config.center.stage then
        G.FUNCS.overlay_menu{
          definition = create_UIBox_pokedex_jokers(get_family_keys(selected.config.center.name, selected.config.center.poke_custom_prefix)),
        }
      end
    end
  end
end

G.FUNCS.pokedex_back = function()
  G.FUNCS.your_collection_jokers()
  G.FUNCS.your_collection_joker_page({cycle_config = {current_option = poke_joker_page}})
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

local controller_queue_R_cursor_press_ref = Controller.queue_R_cursor_press
function Controller:queue_R_cursor_press(x, y)
    controller_queue_R_cursor_press_ref(self, x, y)
    local clicked = self.hovering.target or self.focused.target
    if clicked and type(clicked) == 'table' and clicked.config and type(clicked.config) == 'table' and clicked.config.center and clicked.facing ~= 'back' then
      if clicked.config.center.stage then
        local menu = G.SETTINGS.paused and 'pokedex_back' or nil
        if menu and G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders') then poke_joker_page = G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders').children[1].children[1].config.ref_table.current_option end
        G.FUNCS.overlay_menu{
          definition = create_UIBox_pokedex_jokers(get_family_keys(clicked.config.center.name, clicked.config.center.poke_custom_prefix), menu),
        }
      end
    end
end

local poke_capture_focused_input = Controller.capture_focused_input
function Controller:capture_focused_input(button, input_type, dt)
  if self.focused then
    local clicked = self.focused.target
    if input_type == 'press' and button == 'rightstick' then
      if clicked and type(clicked) == 'table' and clicked.config and type(clicked.config) == 'table' and clicked.config.center and clicked.facing ~= 'back' then
        if clicked.config.center.stage then
          local menu = G.SETTINGS.paused and 'pokedex_back' or nil
          if menu and G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders') then poke_joker_page = G.OVERLAY_MENU:get_UIE_by_ID('cycle_shoulders').children[1].children[1].config.ref_table.current_option end
          G.SETTINGS.paused = true
          G.FUNCS.overlay_menu{
            definition = create_UIBox_pokedex_jokers(get_family_keys(clicked.config.center.name, clicked.config.center.poke_custom_prefix), menu),
          }
          self:update_focus()
        end
      end
    end
  end
  
  return poke_capture_focused_input(self, button, input_type, dt)
end