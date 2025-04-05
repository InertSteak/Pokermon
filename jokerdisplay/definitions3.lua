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
jd_def["j_poke_nosepass"] = { 
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
        }
    }
},
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local face_cards = {}
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:is_face() then
                table.insert(face_cards, scoring_card)
            end
        end
    end
    local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
    card.joker_display_values.x_mult = first_face and
        (card.ability.extra.Xmult_multi ^ JokerDisplay.calculate_card_triggers(first_face, scoring_hand)) or 1
end
}

--	Skitty
--	Delcatty
--	Sableye
--	Mawile
--	Aron
jd_def["j_poke_aron"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Lairon
jd_def["j_poke_lairon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Aggron
jd_def["j_poke_aggron"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

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
jd_def["j_poke_feebas"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
scoring_function = function(playing_card, scoring_hand, joker_card)
    return true
end
}

--	Milotic
jd_def["j_poke_milotic"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        local first_suit = nil
        local second_suit = nil
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        for _, scoring_card in pairs(scoring_hand) do
        if not first_suit and not SMODS.has_no_suit(scoring_card) then
            first_suit = scoring_card.base.suit
        elseif not second_suit and not SMODS.has_no_suit(scoring_card) and scoring_card.base.suit ~= first_suit then
            second_suit = scoring_card.base.suit
        end
        end
        if held_in_hand then
            return 0
        end
        if first_suit and not second_suit then
            return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
        end
    end
}




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
        { text = "+", colour = G.C.CHIPS },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
        { text = " " },
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        },
    },
    calc_function = function(card)
        local x_mult = 1
        local _, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
        if poker_hands['Four of a Kind'] and next(poker_hands['Four of a Kind']) then
            for _, scoring_card in pairs(scoring_hand) do
                local total_chips = poke_total_chips(scoring_card)
                local retriggers = JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                x_mult = x_mult * (total_chips ^ (retriggers/3))
            end
        end
        card.joker_display_values.x_mult = x_mult
    end,
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
jd_def["j_poke_jirachi_power"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "loyalty_text" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.loyalty_text = localize { type = 'variable', key = (card.ability.extra.loyalty_remaining == 0 and 'loyalty_active' or 'loyalty_inactive'), vars = { card.ability.extra.loyalty_remaining } }

        if card.ability.extra.loyalty_remaining == 0 then
            local total_triggers = 0
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    total_triggers = total_triggers + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
            card.joker_display_values.x_mult = card.ability.extra.Xmult_multi ^ total_triggers
        else
            card.joker_display_values.x_mult = 1
        end
    end
}
jd_def["j_poke_jirachi_fixer"] = {
    reminder_text = {
        { text = "(Hand: " },
        { ref_table = "card.joker_display_values", ref_value = "hand_active_text" },
        { text = "  Discard: " },
        { ref_table = "card.joker_display_values", ref_value = "discard_active_text" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.hand_active_text = localize(G.GAME.current_round.hands_played == 0 and 'k_active_ex' or 'k_copied_ex')
        card.joker_display_values.discard_active_text = localize(G.GAME.current_round.discards_used == 0 and 'k_active_ex' or 'k_copied_ex')
    end
}
--	Deoxys