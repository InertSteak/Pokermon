--Config UI
SMODS.current_mod.config_tab = function()
    return {
      n = G.UIT.ROOT,
      config = {
        align = "cm",
        padding = 0.05,
        colour = G.C.CLEAR,
      },
      nodes = {
        create_toggle({
          label = "Pokemon Only?",
          ref_table = pokermon_config,
          ref_value = "pokemon_only",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Unlimited Energy?",
          ref_table = pokermon_config,
          ref_value = "unlimited_energy",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Jokers Only?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "jokers_only",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "No Evolutions?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "no_evos",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Pokeballs?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "pokeballs",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
        create_toggle({
          label = "Pokemon Numbers?(requires restart)",
          ref_table = pokermon_config,
          ref_value = "pokemon_num",
          callback = function(_set_toggle)
            NFS.write(mod_dir.."/config.lua", STR_PACK(pokermon_config))
          end,
        }),
      },
    }
end

SMODS.current_mod.extra_tabs = function()
  local scale = 0.75
  return {
    label = "Credits",
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
                  text = "Thanks to",
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
                  text = "Larantula, Joey J. Jester",
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
                  text = "GayCoonie, Marie|Tsunami",
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
                  text = "Yamper, Jevonnissocoolman",
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
                  text = "TheKuro, Ishtech",
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
                  text = "SDM0, SMG9000",
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
                  text = "Mus",
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
              })
            }
          },
        },
      }
    end
  }
end
function G.FUNCS.pokermon_github(e)
	love.system.openURL("https://github.com/InertSteak/Pokermon")
end