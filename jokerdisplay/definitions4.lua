local jd_def = JokerDisplay.Definitions


--	Turtwig
--	Grotle
--	Torterra
--	Chimchar
--	Monferno
--	Infernape
--	Piplup
--	Prinplup
--	Empoleon
--	Starly
--	Staravia
--	Staraptor
--	Bidoof
--	Bibarel
--	Kricketot
--	Kricketune
--	Shinx
--	Luxio
--	Luxray
--	Budew
jd_def["j_poke_budew"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Roserade
--	Cranidos
--	Rampardos
--	Shieldon
--	Bastiodon
--	Burmy
--	Wormadam
--	Mothim
--	Combee
--	Vespiquen
--	Pachirisu
--	Buizel
--	Floatzel
--	Cherubi
--	Cherrim
--	Shellos
--	Gastrodon
--	Ambipom
--	Drifloon
--	Drifblim
--	Buneary
--	Lopunny
--	Mismagius
jd_def["j_poke_mismagius"] = { 
text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
},
text_config = { colour = G.C.CHIPS },
}

--	Honchkrow
--	Glameow
--	Purugly
--	Chingling
--	Stunky
--	Skuntank
--	Bronzor
--	Bronzong
--	Bonsly
jd_def["j_poke_bonsly"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Mime Jr.
jd_def["j_poke_mimejr"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Happiny
jd_def["j_poke_happiny"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Chatot
--	Spiritomb
--	Gible
--	Gabite
--	Garchomp
--	Munchlax
jd_def["j_poke_munchlax"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Riolu
jd_def["j_poke_riolu"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Lucario
--	Hippopotas
--	Hippowdon
--	Skorupi
--	Drapion
--	Croagunk
--	Toxicroak
--	Carnivine
--	Finneon
--	Lumineon

--	Mantyke
jd_def["j_poke_mantyke"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Snover
--	Abomasnow
--	Weavile
--	Magnezone
--	Lickilicky
--	Rhyperior
jd_def["j_poke_rhyperior"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    
        -- Find the first Stone Card in the scoring hand
        local rhytriggers = #find_pokemon_type("Earth")
        -- Check if the current playing card is the first Stone Card
        if held_in_hand then return 0 end
            return playing_card.ability.effect == "Stone Card" and (rhytriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end

    }

--	Tangrowth
--	Electivire
jd_def["j_poke_electivire"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },

calc_function = function(card)
    card.joker_display_values.Xmult =  1 + card.ability.extra.Xmult_mod * card.sell_cost
end

}

--	Magmortar
--	Togekiss
--	Yanmega
--	Leafeon
--	Glaceon
--	Gliscor
--	Mamoswine
--	Porygon-Z
--	Gallade
--	Probopass
jd_def["j_poke_probopass"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local count = 0
        local playing_hand = next(G.play.cards)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do --Polychrome cards scored
                if scoring_card.ability.effect and scoring_card.ability.effect == "Stone Card" then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.Xmult = math.max(card.ability.extra.Xmult_multi^count,1)
    end
}

--	Dusknoir
--	Froslass
--	Rotom
--	Uxie
--	Mesprit
--	Azelf
--	Dialga
--	Palkia
--	Heatran
--	Regigigas
--	Giratina
--	Cresselia
--	Phione
--	Manaphy
--	Darkrai
--	Shaymin
--	Arceus





