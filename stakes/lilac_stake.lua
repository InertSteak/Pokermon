local lilac = {
    key = 'lilac_stake',
    applied_stakes = {'gold'},
    above_stake = 'gold',
    prefix_config = {above_stake = {mod = false}, applied_stakes = {mod = false}},

    modifiers = function()
        G.GAME.modifiers.enable_poke_weakened = true
    end,

    colour = HEX('E8CCE8'),

    pos = {x = 0, y = 0},
    sticker_pos = {x = 8, y = 1},
    atlas = 'AtlasStakesBasic',
    sticker_atlas = 'AtlasStickersBasic'
}



return {name = "Stakes",
      list = {lilac}
}