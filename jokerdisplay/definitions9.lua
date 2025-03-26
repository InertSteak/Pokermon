local jd_def = JokerDisplay.Definitions


--	Sprigatito
--	Floragato
--	Meowscarada
--	Fuecoco
--	Crocalor
--	Skeledirge
--	Quaxly
--	Quaxwell
--	Quaquaval
--	Lechonk
--	Oinkologne
--	Tarountula
-- jd_def["j_poke_tarountula"] = { 
--     text = {
--         {ref_table = "card.ability.extra", ref_value = "hazards_drawn", colour = G.C.ORANGE},
--         {text = " "},
--         {text = "[", colour = G.C.GREY},
--         {ref_table = "card.ability.extra", ref_value = "planet_goal", colour = G.C.GREY},
--         {text = "]", colour = G.C.GREY},
--     },
-- }

-- --	Spidops
-- jd_def["j_poke_spidops"] = { 
--     text = {
--         {ref_table = "card.ability.extra", ref_value = "hazards_drawn", colour = G.C.ORANGE},
--         {text = " "},
--         {text = "[", colour = G.C.GREY},
--         {ref_table = "card.ability.extra", ref_value = "planet_goal", colour = G.C.GREY},
--         {text = "]", colour = G.C.GREY},
--     },
-- }

--	Nymble
--	Lokix
--	Pawmi
--	Pawmo
--	Pawmot
--	Tandemaus
--	Maushold
--	Fidough
jd_def["j_poke_fidough"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "["},
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
        {text = "]"},
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    card.joker_display_values.localized_text = localize(card.ability.extra.rank, 'ranks')
end
}

--	Dachsbun
jd_def["j_poke_dachsbun"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "["},
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
        {text = "]"},
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    card.joker_display_values.localized_text = localize(card.ability.extra.rank, 'ranks')
end
}

--	Smoliv
--	Dolliv
--	Arboliva
--	Squawkabilly
--	Nacli
--	Naclstack
--	Garganacl
--	Charcadet
--	Armarouge
--	Ceruledge
--	Tadbulb
--	Bellibolt
--	Wattrel
--	Kilowattrel
--	Maschiff
--	Mabosstiff
--	Shroodle
--	Grafaiai
--	Bramblin
--	Brambleghast
--	Toedscool
--	Toedscruel
--	Klawf
--	Capsakid
--	Scovillain
--	Rellor
--	Rabsca
--	Flittle
--	Espathra
--	Tinkatink
jd_def["j_poke_tinkatink"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
calc_function = function(card)
    local count = 0
    if G.play then
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                count = count +
                    JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    else
        count = 3
    end
    card.joker_display_values.mult = count * card.ability.extra.mult
end
}

--	Tinkatuff
jd_def["j_poke_tinkatuff"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
calc_function = function(card)
    local count = 0
    if G.play then
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                count = count +
                    JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    else
        count = 3
    end
    card.joker_display_values.mult = count * card.ability.extra.mult
end
}

--	Tinkaton
jd_def["j_poke_tinkaton"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
calc_function = function(card)
    local count = 0
    if G.play then
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                count = count +
                    JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    else
        count = 3
    end
    card.joker_display_values.mult = count * card.ability.extra.mult
end
}

--	Wiglett
jd_def["j_poke_wiglett"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
        {text = " "},
        { text = "+", colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    calc_function = function(card)
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local chips = 0
        local mult = 0
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        if poker_hands['Three of a Kind'] and next(poker_hands['Three of a Kind']) then
            mult = card.ability.extra.mult
        end
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 5 or 
                scoring_card:get_id() == 6 or 
                scoring_card:get_id() == 7 then
                    chips = card.ability.extra.chips
                end
            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = "(5,6,7)"
    end
}

--	Wugtrio
jd_def["j_poke_wugtrio"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
        {text = " "},
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", colour = G.C.WHITE }
            },
        },
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    calc_function = function(card)
        local chips = 0
        local mult = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        if poker_hands['Three of a Kind'] and next(poker_hands['Three of a Kind']) then
            mult = card.ability.extra.Xmult
        end
        if text ~= 'Unknown' then

            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 5 or 
                scoring_card:get_id() == 6 or 
                scoring_card:get_id() == 7 then
                    chips = card.ability.extra.chips
                end

            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.Xmult = math.max(1,mult) 
        card.joker_display_values.localized_text = "(5,6,7)"
    end
}

--	Bombirdier
--	Finizen
--	Palafin
--	Varoom
--	Revavroom
--	Cyclizar
--	Orthworm
--	Glimmet
--	Glimmora
--	Greavard
--	Houndstone
--	Flamigo
--	Cetoddle
--	Cetitan
--	Veluza
--	Dondozo
--	Tatsugiri
--	Annihilape
--	Clodsire
--	Farigiraf
jd_def["j_poke_farigiraf"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        }
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local face_cards = {}
        if text == 'Two Pair' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:is_face() then
                    table.insert(face_cards, scoring_card)
                end
            end
        end
        local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
        local last_face = JokerDisplay.calculate_rightmost_card(face_cards)
        card.joker_display_values.x_mult = math.max(last_face and
            (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(last_face, scoring_hand) + (JokerDisplay.calculate_card_triggers(first_face, scoring_hand)))) or 1)

    end
}

--	Dudunsparce
--	Kingambit
--	Great Tusk
--	Scream Tail
--	Brute Bonnet
--	Flutter Mane
--	Slither Wing
--	Sandy Shocks
--	Iron Treads
--	Iron Bundle
--	Iron Hands
--	Iron Jugulis
--	Iron Moth
--	Iron Thorns
--	Frigibax
--	Arctibax
--	Baxcalibur
--	Gimmighoul
jd_def["j_poke_gimmighoul"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult" },
},
text_config = { colour = G.C.GOLD },
calc_function = function(card)
    local count = 0
    local playing_hand = next(G.play.cards)
    local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
    local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
    if text ~= "Unknown" then
        for _, scoring_card in pairs(scoring_hand) do --Polychrome cards scored
            if scoring_card.ability.effect and scoring_card.ability.effect == "Gold Card" then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.money = card.ability.extra.money * count
end
}

--	Gholdengo
jd_def["j_poke_gholdengo"] = {
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
        },
    },
},
}

--	Wo-Chien
--	Chien-Pao
--	Ting-Lu
--	Chi-Yu
--	Roaring Moon
--	Iron Valiant
--	Koraidon
--	Miraidon
--	Walking Wake
--	Iron Leaves
--	Dipplin
--	Poltchageist
--	Sinistcha
--	Okidogi
--	Munkidori
--	Fezandipiti
--	Ogerpon
--	Archaludon
--	Hydrapple
--	Gouging Fire
--	Raging Bolt
--	Iron Boulder
--	Iron Crown
--	Terapagos
--	Pecharunt

