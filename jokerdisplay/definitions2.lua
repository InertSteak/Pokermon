local jd_def = JokerDisplay.Definitions


jd_def["j_poke_kingdra"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        }
    },
}