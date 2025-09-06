local apply_shader = function ()
  SMODS.Shader({ key = 'booster', path = 'booster.fs' })
  SMODS.Shader({ key = 'shiny', path = 'shiny.fs' })
end

local shiny = ({
    key = "shiny",
    atlas = "AtlasJokersBasicNatdexShiny",
    -- Stop shadow from being rendered under the card
    disable_shadow = false,
    -- Stop extra layer from being rendered below the card.
    -- For edition that modify shape or transparency of the card.
    disable_base_shader = false,
    shader = "shiny",
    discovered = true,
    unlocked = true,
    config = {},
    in_shop = true,
    weight = 2,
    extra_cost = 5,
    apply_to_float = true,
    sound = {
      sound = "poke_e_shiny",
      per = 1, 
      vol = 0.2
    },
    loc_vars = function(self)
        return { vars = {} }
    end,
    on_apply = function(card)
      G.P_CENTERS.e_poke_shiny.on_load(card)
      
      --we don't want to do this in the collection screen
      if card.area and card.area.config and not card.area.config.collection then
        if card.area == G.pack_cards or card.area == G.shop_jokers then
          card.config.shiny_on_add = true
        else
          SMODS.change_booster_limit(1)
        end
      elseif not card.area then
        card.config.shiny_on_add = true
      end
    end,
    on_remove = function(card)
      SMODS.change_booster_limit(-1)
    end,
    on_load = function(card)
      if card.config.center.atlas and G.ASSET_ATLAS[card.config.center.atlas..'Shiny'] then
        local old_atlas = card.config.center.atlas
        card.config.center.atlas = card.config.center.atlas..'Shiny'
        card:set_sprites(card.config.center)
        card.config.center.atlas = old_atlas
      end
      for i = 1, 9 do
        if card.config.center.atlas == "poke_Pokedex"..i then
          card.config.center.atlas = "poke_Shinydex"..i
          card:set_sprites(card.config.center)
          card.config.center.atlas = "poke_Pokedex"..i
          break
        end
      end
      if card.config.center.atlas == "poke_others" then
        card.config.center.atlas = "poke_Shinyothers"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_others"
      end
      if card.config.center.atlas and string.sub(card.config.center.atlas,1,12) == "poke_j_poke_" then
        local temp_atlas = card.config.center.atlas
        card.config.center.atlas = card.config.center.atlas.."_shiny"
        card:set_sprites(card.config.center)
        card.config.center.atlas = temp_atlas
      end
      if card.config.center.atlas == "poke_Megas" then
        card.config.center.atlas = "poke_ShinyMegas"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_Megas"
      end
      if card.config.center.atlas == "poke_Gmax" then
        card.config.center.atlas = "poke_ShinyGmax"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_Gmax"
      end
      if card.config.center.atlas == "poke_Regionals" then
        card.config.center.atlas = "poke_ShinyRegionals"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_Regionals"
      end
      if card.config.center.atlas == "poke_jirachi" then
        card.config.center.atlas = "poke_shinyjirachi"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_jirachi"
      end
      if card.config.center.atlas == "poke_altjirachi" then
        card.config.center.atlas = "poke_shinyaltjirachi"
        card:set_sprites(card.config.center)
        card.config.center.atlas = "poke_altjirachi"
      end
      if card.children.center.atlas.name == "Joker" and G.ASSET_ATLAS["poke_AtlasJokersVanillaShiny"] then
        SMODS.Joker:take_ownership(card.config.center_key, {atlas = "poke_AtlasJokersVanillaShiny", discovered = true, unlocked = true}, true)
        card.config.center.shiny = true
        card:set_sprites(card.config.center)
        card.config.center.atlas = "Joker"
      end
      
      --support for custom additions
      if card.config.center.atlas and card.config.center.poke_custom_prefix and not card.config.center.poke_no_custom_atlas then
        local prev_atlas = card.config.center.atlas
        local prelength = string.len(card.config.center.poke_custom_prefix) + 1 
        local noprefix_atlas = string.sub(prev_atlas, prelength)
        SMODS.Joker:take_ownership(card.config.center_key, {atlas = card.config.center.poke_custom_prefix..'_shiny'..noprefix_atlas, discovered = true, unlocked = true}, true)
        card:set_sprites(card.config.center)
        card.config.center.atlas = prev_atlas
      end
    end,
})

return {
  name = "Editions",
  init = apply_shader,
  list = {shiny,}
}
