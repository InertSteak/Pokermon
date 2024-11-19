local apply_shader = function ()
  SMODS.Shader({ key = 'booster', path = 'booster.fs' })
  SMODS.Shader({ key = 'shiny', path = 'shiny.fs' })
end

local shiny = ({
    key = "shiny",
    atlas = "Shinydex1",
    -- Stop shadow from being rendered under the card
    disable_shadow = false,
    -- Stop extra layer from being rendered below the card.
    -- For edition that modify shape or transparency of the card.
    disable_base_shader = false,
    shader = "booster",
    discovered = true,
    unlocked = true,
    config = {},
    in_shop = true,
    weight = 2,
    extra_cost = 6,
    apply_to_float = true,
    loc_vars = function(self)
        return { vars = {} }
    end,
    on_apply = function(card)
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
          card.config.center.atlas = "poke_Shinyothers"
        end
        --we don't want to do this in the collection screen
        if card.area and card.area.config and not card.area.config.collection then
          if card.area == G.pack_cards or card.area == G.shop_jokers then
            card.config.shiny_on_add = true
          else
            if G.GAME.modifiers.poke_booster_packs then
              G.GAME.modifiers.poke_booster_packs = G.GAME.modifiers.poke_booster_packs + 1
            else
              G.GAME.modifiers.poke_booster_packs = 3
            end
          end
        elseif not card.area then
          card.config.shiny_on_add = true
        end
    end,
    on_remove = function(card)
      if G.GAME.modifiers.poke_booster_packs then
        G.GAME.modifiers.poke_booster_packs = G.GAME.modifiers.poke_booster_packs - 1
      else
        G.GAME.modifiers.poke_booster_packs = 0
      end
    end,
    on_load = function(card)
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
          card.config.center.atlas = "poke_Shinyothers"
        end
    end
})

return {
  name = "Editions",
  init = apply_shader,
  list = {shiny,}
}
