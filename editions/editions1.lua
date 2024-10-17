local apply_shader = function ()
  SMODS.Shader({ key = 'booster', path = 'booster.fs' })
end

local shiny = ({
    key = "shiny",
    loc_txt = {
        name = "Shiny",
        label = "Shiny",
        text = {
          "{C:attention}+1{} Booster Pack slot",
          "available in shop",
        }
    },
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
    weight = 1,
    extra_cost = 6,
    apply_to_float = true,
    loc_vars = function(self)
        return { vars = {} }
    end,
    on_apply = function(card)
        if card.config.center.atlas == "poke_Pokedex1" then
          card.config.center.atlas = "poke_Shinydex1"
          card:set_sprites(card.config.center)
          card.config.center.atlas = "poke_Pokedex1"
        end
        if G.GAME.modifiers.poke_booster_packs then
          G.GAME.modifiers.poke_booster_packs = G.GAME.modifiers.poke_booster_packs + 1
        else
          G.GAME.modifiers.poke_booster_packs = 3
        end
    end,
    on_remove = function(card)
      G.GAME.modifiers.poke_booster_packs = G.GAME.modifiers.poke_booster_packs - 1
    end
})

return {
  name = "Editions",
  init = apply_shader,
  list = {shiny,}
}