local jd_def = JokerDisplay.Definitions

--	Treecko
jd_def["j_poke_treecko"] = {
    text = {
        { text = "+$",                              colour = G.C.GOLD },
        { ref_table = "card.joker_display_values",        ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}

--	Grovyle
jd_def["j_poke_grovyle"] = {
    text = {
        { text = "+$",                              colour = G.C.GOLD },
        { ref_table = "card.joker_display_values",        ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}

--	Sceptile
jd_def["j_poke_sceptile"] = {
    text = {
        { text = "+$",                              colour = G.C.GOLD },
        { ref_table = "card.joker_display_values",        ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Torchic
jd_def["j_poke_torchic"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded
        card.joker_display_values.mult = mult
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Combusken
jd_def["j_poke_combusken"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded
        card.joker_display_values.mult = mult
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Blaziken
jd_def["j_poke_blaziken"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        }
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        local mult = card.ability.extra.mult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
        local Xmult = 1 + card.ability.extra.Xmult * card.ability.extra.cards_discarded * (find_other_poke_or_energy_type(card, "Fire", true) + find_other_poke_or_energy_type(card, "Fighting", true))
        card.joker_display_values.mult = mult
        card.joker_display_values.Xmult = Xmult
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Mudkip
jd_def["j_poke_mudkip"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chips
        if find_other_poke_or_energy_type(card, "Water") > 0 or find_other_poke_or_energy_type(card, "Earth") > 0 then
          chips = chips * 2
        end
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Marshtomp
jd_def["j_poke_marshtomp"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chips
        if find_other_poke_or_energy_type(card, "Water") > 0 or find_other_poke_or_energy_type(card, "Earth") > 0 then
          chips = chips * 2
        end
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Swampert
jd_def["j_poke_swampert"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chips
        if find_other_poke_or_energy_type(card, "Water") or find_other_poke_or_energy_type(card, "Earth") then
          chips = chips + card.ability.extra.chip_mod * (find_other_poke_or_energy_type(card, "Water") + find_other_poke_or_energy_type(card, "Earth"))
        end
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Poochyena
--	Mightyena
--	Zigzagoon
--	Linoone
--	Wurmple
--	Silcoon
--	Beautifly
--	Cascoon
--	Dustox
--	Lotad
--	Lombre
--	Ludicolo
--	Seedot
--	Nuzleaf
--	Shiftry
--	Taillow
--	Swellow
--	Wingull
--	Pelipper
--	Ralts
--	Kirlia
--	Gardevoir
--	Surskit
--	Masquerain
--	Shroomish
--	Breloom
--	Slakoth
--	Vigoroth
--	Slaking
--	Nincada
--	Ninjask
--	Shedinja
--	Whismur
--	Loudred
--	Exploud
--	Makuhita
--	Hariyama
--	Azurill
--	Nosepass
--	Skitty
--	Delcatty
--	Sableye
--	Mawile
--	Aron
--	Lairon
--	Aggron
--	Meditite
--	Medicham
--	Electrike
--	Manectric
--	Plusle
--	Minun
--	Volbeat
--	Illumise
--	Roselia
--	Gulpin
--	Swalot
--	Carvanha
--	Sharpedo
--	Wailmer
--	Wailord
--	Numel
--	Camerupt
--	Torkoal
--	Spoink
--	Grumpig
--	Spinda
--	Trapinch
--	Vibrava
--	Flygon
--	Cacnea
--	Cacturne
--	Swablu
--	Altaria
--	Zangoose
--	Seviper
--	Lunatone
--	Solrock
--	Barboach
--	Whiscash
--	Corphish
--	Crawdaunt
--	Baltoy
--	Claydol
--	Lileep
--	Cradily
--	Anorith
--	Armaldo
--	Feebas
--	Milotic
--	Castform
--	Kecleon
--	Shuppet
--	Banette
--	Duskull
--	Dusclops
--	Tropius
--	Chimecho
--	Absol
--	Wynaut
jd_def["j_poke_wynaut"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Snorunt
--	Glalie
--	Spheal
--	Sealeo
--	Walrein
--	Clamperl
--	Huntail
--	Gorebyss
--	Relicanth
--	Luvdisc
--	Bagon
--	Shelgon
--	Salamence
--	Beldum
jd_def["j_poke_beldum"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Metang
jd_def["j_poke_metang"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Metagross
jd_def["j_poke_metagross"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Regirock
--	Regice
--	Registeel
--	Latias
--	Latios
--	Kyogre
--	Groudon
--	Rayquaza
--	Jirachi
--	Deoxys