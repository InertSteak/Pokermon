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
jd_def["j_poke_honchkrow"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "count",          colour = G.C.ORANGE },
        { text = "x" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.GREEN },
        { text = ")" },
    },
    calc_function = function(card)
        local count = 0
        if G.jokers then
            for _, joker_card in ipairs(G.jokers.cards) do
                if joker_card.config.center.rarity and is_type(joker_card, "Dark") then
                    count = count + 1
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_text = "Dark"
    end,
    mod_function = function(card, mod_joker)
        return { x_mult = (is_type(card, "Dark") and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
    end
}
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
        {text = "+", colour = G.C.CHIPS},
        {ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS},
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card.ability.effect and playing_card.ability.effect == "Gold Card" then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.chips = card.ability.extra.chips * count
    end 
}

--	Snover
--	Abomasnow
--	Weavile
--	Magnezone
jd_def["j_poke_magnezone"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local metal = #find_pokemon_type("Metal")
        local count = 0
        local playing_hand = next(G.play.cards)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do 
                if scoring_card.ability.effect and scoring_card.ability.effect == "Steel Card" then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.x_mult = math.max((card.ability.extra.Xmult_multi+metal*card.ability.extra.Xmult_multi2)^count,1)
    end
    }

--	Lickilicky
jd_def["j_poke_lickilicky"] = {
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
        local xmult1 = card.ability.extra.Xmult_multi
        local xmult2 = card.ability.extra.Xmult_multi - card.ability.extra.subtract
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local jacks = {}
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 11 then
                    table.insert(jacks, scoring_card)
                end
            end
        end
    
        -- Calculate multipliers based on jack count and triggers
        local x_mult_total = 1
        for i, jack in ipairs(jacks) do
            local multiplier = (i <= 2) and xmult1 or xmult2
            local triggers = JokerDisplay.calculate_card_triggers(jack, scoring_hand) or 0
            x_mult_total = x_mult_total * (multiplier ^ triggers)
        end
    
        -- Assign the calculated x_mult value
        card.joker_display_values.x_mult = math.max(x_mult_total, 1)
    end
}

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
jd_def["j_poke_tangrowth"] = {
    text = {
        { text = "+", colour = G.C.CHIPS  },
        {ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS},
        {text = " +", colour = G.C.MULT},
        {ref_table = "card.joker_display_values",    ref_value = "mult", colour = G.C.MULT,   },
 
        {text = " +$", colour = G.C.GOLD},
        {ref_table = "card.joker_display_values",    ref_value = "money", colour = G.C.GOLD,   },
    }, 
    calc_function = function(card)
        local count = 0
        local playing_hand = next(G.play.cards)
        local chance = math.min((G.GAME.probabilities.normal / card.ability.extra.odds),1)
        local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
        local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
        if text ~= "Unknown" then
            for _, scoring_card in pairs(scoring_hand) do --Polychrome cards scored
                if scoring_card.ability.effect and scoring_card.ability.effect == "Wild Card" then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = card.ability.extra.chips * count * chance
        card.joker_display_values.mult = card.ability.extra.mult * count * chance
        card.joker_display_values.money = card.ability.extra.money_mod * count * chance
    end
}

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
jd_def["j_poke_magmortar"] = {
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
text_config = { colour = G.C.WHITE },
}
--	Togekiss
--	Yanmega
--	Leafeon
--	Glaceon
--	Gliscor
--	Mamoswine
--	Porygon-Z
jd_def["j_poke_porygonz"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local Xmult = 1 + ((G.GAME.energies_used or 0) * card.ability.extra.Xmult_mod)
        card.joker_display_values.Xmult = Xmult
    end
}

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





