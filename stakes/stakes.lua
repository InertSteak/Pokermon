local elite = { -- Elite Stake
    key = 'elite',
    applied_stakes = {'gold'},
    above_stake = 'gold',
    prefix_config = {
      above_stake = {mod = false},
      applied_stakes = {mod = false}
    },

    modifiers = function()
        G.GAME.win_ante = (G.GAME.win_ante + 2)
        G.GAME.modifiers.elite4 = true
    end,

    pos = {x = 0, y = 0},
    sticker_pos = {x = 0, y = 0},
    atlas = 'elite_stake',
    sticker_atlas = 'elite_stake_sticker',
    colour = HEX("ba8514"),
    shiny = true
}

return {
  name = "Stakes",
  list = {elite}
}