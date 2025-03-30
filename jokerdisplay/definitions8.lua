local jd_def = JokerDisplay.Definitions


--	Grookey
--	Thwackey
--	Rillaboom
--	Scorbunny
--	Raboot
--	Cinderace
--	Sobble
--	Drizzile
--	Inteleon
--	Skwovet
--	Greedent
--	Rookidee
--	Corvisquire
--	Corviknight
--	Blipbug
--	Dottler
--	Orbeetle
--	Nickit
--	Thievul
--	Gossifleur
--	Eldegoss
--	Wooloo
--	Dubwool
--	Chewtle
--	Drednaw
--	Yamper
jd_def["j_poke_yamper"] = {
    text = {
        { text = "+"},
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" },
        { text = " " },
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "add", colour = G.C.GOLD }

    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local money = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        mult = card.ability.extra.mult
        money = card.ability.extra.money
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.money = money
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end
}

--	Boltund
jd_def["j_poke_boltund"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
        { text = " " },
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "add", colour = G.C.GOLD }

    },
text_config = { colour = G.C.WHITE },
calc_function = function(card)
    local Xmult = 0
    local money = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        Xmult = card.ability.extra.Xmult
        money = card.ability.extra.money
    end
    card.joker_display_values.Xmult = Xmult
    card.joker_display_values.money = money
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end
}

--	Rolycoly
--	Carkol
--	Coalossal
--	Applin
--	Flapple
--	Appletun
--	Silicobra
--	Sandaconda
--	Cramorant
--	Arrokuda
--	Barraskewda
--	Toxel
jd_def["j_poke_toxel"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}


--	Toxtricity
--	Sizzlipede
--	Centiskorch
--	Clobbopus
--	Grapploct
--	Sinistea
--	Polteageist
--	Hatenna
--	Hattrem
--	Hatterene
--	Impidimp
--	Morgrem
--	Grimmsnarl
--	Obstagoon
--	Perrserker
--	Cursola
--	Sirfetch'd
--	Mr. Rime
--	Runerigus
--	Milcery
--	Alcremie
--	Falinks
--	Pincurchin
--	Snom
--	Frosmoth
--	Stonjourner
--	Eiscue
--	Indeedee
--	Morpeko
--	Cufant
--	Copperajah
--	Dracozolt
--	Arctozolt
--	Dracovish
--	Arctovish
--	Duraludon
--	Dreepy
--	Drakloak
jd_def["j_poke_drakloak"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        card.joker_display_values.Xmult =  1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult
    end
}

--	Dragapult
jd_def["j_poke_dragapult"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        card.joker_display_values.Xmult =  1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult
    end
}

--	Zacian
--	Zamazenta
--	Eternatus
--	Kubfu
--	Urshifu
--	Zarude
--	Regieleki
--	Regidrago
--	Glastrier
--	Spectrier
--	Calyrex
--	Wyrdeer
--	Kleavor
--	Ursaluna
--	Basculegion
--	Sneasler
--	Overqwil
--	Enamorus