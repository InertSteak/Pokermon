
local jd_def = JokerDisplay.Definitions


--	Chikorita
jd_def["j_poke_chikorita"] = { 
    text = {
        {text = "+$", colour = G.C.GOLD},
        {ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD}
        },
    reminder_text = {
        {text = "End of Round"}
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        local interval = card.ability.extra.interval or 3

                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    -- Check if the card is at the nth interval
                    if (i % interval == 0) and not (playing_card.facing == 'back') and not playing_card.debuff  then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.money = card.ability.extra.money * count
    end 
}

--	Bayleef
jd_def["j_poke_bayleef"] = { 
    text = {
        {text = "+$", colour = G.C.GOLD},
        {ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD}
        },
    reminder_text = {
        {text = "End of Round"}
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        local interval = card.ability.extra.interval or 2

                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    -- Check if the card is at the nth interval
                    if (i % interval == 0) and not (playing_card.facing == 'back') and not playing_card.debuff  then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.money = card.ability.extra.money * count
    end 
}

--	Meganium
jd_def["j_poke_meganium"] = { 
    text = {
        {text = "+$", colour = G.C.GOLD},
        {ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD}
        },
    reminder_text = {
        {text = "End of Round"}
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        local interval = card.ability.extra.interval or 1

                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    -- Check if the card is at the nth interval
                    if (i % interval == 0) and not (playing_card.facing == 'back') and not playing_card.debuff  then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.money = card.ability.extra.money * count
    end 
}

--	Cyndaquil
jd_def["j_poke_cyndaquil"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
end
}

--	Quilava
jd_def["j_poke_quilava"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
end
}

--	Typhlosion
jd_def["j_poke_typhlosion"] = { 
    text = {
        { text = "+", colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
            },
            border_colour = G.C.MULT
        }
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
    card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
    card.joker_display_values.Xmult = 1 + (card.ability.extra.Xmult * G.GAME.current_round.discards_left)
    end
}

--	Totodile
jd_def["j_poke_totodile"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Croconaw
jd_def["j_poke_croconaw"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Feraligatr
jd_def["j_poke_feraligatr"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Sentret
jd_def["j_poke_sentret"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "Last Played: "},
        {ref_table = "card.ability.extra", ref_value = "last_hand" }
    },
    text_config = { colour = G.C.MULT },
}

--	Furret
jd_def["j_poke_furret"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "Last Played: "},
        {ref_table = "card.ability.extra", ref_value = "last_hand" }
    },
    text_config = { colour = G.C.MULT },
}

--	Hoothoot
jd_def["j_poke_hoothoot"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    if G.scry_view then
        for k, v in pairs(G.scry_view.cards) do
            chips = chips + poke_total_chips(v) * (v:get_seal() == 'Red' and 2 or 1)
        end
        card.joker_display_values.chips = chips
    else
        card.joker_display_values.chips = 0
    end
end
}

--	Noctowl
jd_def["j_poke_noctowl"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    if G.scry_view then
        for k, v in pairs(G.scry_view.cards) do
            chips = chips + poke_total_chips(v) * (v:get_seal() == 'Red' and 2 or 1)
        end
        card.joker_display_values.chips = chips
    else
        card.joker_display_values.chips = 0
    end
end
}

--	Ledyba
jd_def["j_poke_ledyba"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
    card.joker_display_values.mult = card.ability.extra.mult * math.floor(#G.deck.cards/5)
    end

}

--	Ledian
jd_def["j_poke_ledian"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * math.floor(#G.deck.cards/3)
end

}

--	Spinarak
jd_def["j_poke_spinarak"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Ariados
jd_def["j_poke_ariados"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Crobat
--	Chinchou
--	Lanturn
--	Pichu
jd_def["j_poke_pichu"] = {
    extra = {{
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },},
    text = {
        {text = "$", colour = G.C.GOLD},
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD  },
    
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
    },
    calc_function = function(card)
        local money
        money = math.min(10, #G.jokers.cards * card.ability.extra.money)
        card.joker_display_values.money = money
        card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}


--	Cleffa
jd_def["j_poke_cleffa"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Igglybuff
jd_def["j_poke_igglybuff"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Togepi
jd_def["j_poke_togepi"] = {
    text = {
        {
            border_nodes = {
                {
                    dynatext = {
                        string = {"X0.50","X0.55","X0.60","X0.65","X0.70","X0.75","X0.80","X0.85","X0.90","X0.95",
                        "X1.00","X1.05","X1.10","X1.15","X1.20","X1.25","X1.30","X1.35","X1.40","X1.45","X1.50"
                    },
                        colours = { G.C.WHITE },
                        pop_in_rate = 9999999,
                        silent = true,
                        random_element = true,
                        pop_delay = 0.5,
                        scale = 0.4,
                        min_cycle_time = 0
                    }
                },
            },
        },
    },
}

--	Togetic
--	Natu
--	Xatu
--	Mareep
--	Flaaffy
--	Ampharos
--	Bellossom
jd_def["j_poke_bellossom"] = {
    text = {
        { text = "Max: ", colour = G.C.GREY, },
        { text = "+",                              colour = G.C.MULT , },
        {ref_table = "card.joker_display_values",    ref_value = "upper", colour = G.C.MULT,   }
    },
    extra = {
        {        
                { text = "Min: ", colour = G.C.GREY, },
                { text = "+",                              colour = G.C.MULT },
                {ref_table = "card.joker_display_values",    ref_value = "lower", colour = G.C.MULT,   }
        }
            },  
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local editioncount = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 3 or 
            scoring_card:get_id() == 5 or 
            scoring_card:get_id() == 7 or 
            scoring_card:get_id() == 9 or 
            scoring_card:get_id() == 14 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
        for _, scoring_card in pairs(scoring_hand) do
            if not (scoring_card.facing == 'back') and not scoring_card.debuff and scoring_card.edition then
                editioncount = editioncount + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
            end
        end
    end
    card.joker_display_values.lower = editioncount * card.ability.extra.mult
    card.joker_display_values.upper = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. ",9,7,5,3)"
end
}

--	Marill
--	Azumarill
--	Sudowoodo
jd_def["j_poke_sudowoodo"] = {
    text = {            
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
},
calc_function = function(card)
    local mult = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:is_face() then
                mult = mult +
                    card.ability.extra.mult *
                    JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.localized_text = localize("k_face_cards")
end,
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    local total = #find_pokemon_type("Water")
    if held_in_hand then return 0 end
    if not is_type(joker_card, "Grass") or total > 0 then
    return playing_card:is_face() and
        joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 end
end
}

--	Politoed
jd_def["j_poke_politoed"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.GREY, 0.35},
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        local suit = card.ability.extra.suits[card.ability.extra.indice]
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit(suit) then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.localized_text = localize(suit, 'suits_plural')
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        local suit = joker_card.ability.extra.suits[joker_card.ability.extra.indice]
        local total = #find_pokemon_type("Water")
        local cards = scoring_hand and #scoring_hand or 0
        local pos
        local remainder
        if cards > 0 then
          for i=1, cards do
            if scoring_hand[i] == playing_card then
              pos = i
              break
            end
          end
          local retriggers = math.floor(total/cards)
          remainder = total % cards
          if pos <= remainder then retriggers = retriggers + 1 end
          if held_in_hand then return 0 end
              return (playing_card:is_suit(suit)) and (retriggers * JokerDisplay.calculate_joker_triggers(joker_card or 0)) or 0
        end
    end
}

--	Hoppip
--	Skiploom
--	Jumpluff
--	Aipom
--	Sunkern
--	Sunflora
--	Yanma
--	Wooper
--	Quagsire
--	Espeon
jd_def["j_poke_espeon"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    reminder_text = {
        {ref_table = "card.joker_display_values", ref_value = "rank"},
        {text = " of "},
        {ref_table = "card.joker_display_values", ref_value = "suit"}
    },
    calc_function = function(card)
        local rank = G.GAME.current_round.espeon_rank
        local suit = G.GAME.current_round.espeon_suit
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit(suit) then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.Xmult = 1 * (card.ability.extra.Xmult_multi^count)
        card.joker_display_values.rank = localize(rank or "2", 'ranks')
        card.joker_display_values.suit = localize(suit or "Spades", 'suits_plural')
    end,
        retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
            local rank = G.GAME.current_round.espeon_rank
            if held_in_hand then return 0 end
            return (playing_card:get_id() == rank) and
                joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 1
        end
}

--	Umbreon
jd_def["j_poke_umbreon"] = { 
    text = {
        {ref_table = "card.joker_display_values", ref_value = "hand", colour = G.C.GREY}
},
    reminder_text = {
        {ref_table = "card.ability.extra", ref_value = "decreases", colour = G.C.ORANGE},
        {text = " "},
        {text = "["},
        {ref_table = "card.ability.extra", ref_value = "decrease_goal"},
        {text = "]"},



    },
    calc_function = function(card)
        card.joker_display_values.hand = localize(card.ability.extra.hand_played, 'poker_hands')
end
}
--	Murkrow
jd_def["j_poke_murkrow"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local dark = #find_pokemon_type("Dark")
        card.joker_display_values.Xmult = 1 + (dark * card.ability.extra.Xmult)
    end
}

--	Slowking
jd_def["j_poke_slowking"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_multi", retrigger_type = "exp" },
            },
        },
    },
}

--	Misdreavus
jd_def["j_poke_misdreavus"] = { 
text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
},
text_config = { colour = G.C.CHIPS },
}

--	Unown
--	Wobbuffet
jd_def["j_poke_wobbuffet"] = {
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    card.joker_display_values.localized_text = "(6,7,8,9,10)"
end,
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    return (playing_card:get_id() == 6 or playing_card:get_id() == 7 or
            playing_card:get_id() == 8 or playing_card:get_id() == 9 or playing_card:get_id() == 10) and
        joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
end
}

--	Girafarig
jd_def["j_poke_girafarig"] = {
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
            (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(last_face, scoring_hand) + (JokerDisplay.calculate_card_triggers(first_face, scoring_hand)))) or 1, 1)

    end
}



--	Pineco
jd_def["j_poke_pineco"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
},
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
local count = 0
local pos = 0

-- Check if `G.jokers.cards` exists and has more than one card
if G.jokers and G.jokers.cards and #G.jokers.cards > 1 then
    -- Find the position of the card
    for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then
            pos = i
            break
        end
    end

    -- Count the cards matching the specific conditions before `pos`
    for i = 1, pos - 1 do
        local joker_card = G.jokers.cards[i]
        if joker_card and joker_card.config and joker_card.config.center and
           joker_card.config.center.volatile and
           joker_card.config.center.config and joker_card.config.center.config.extra and
           joker_card.config.center.config.extra.volatile == 'left' then
            count = count + 1
        end
    end

    -- Set `x_mult` based on the condition
    if count == pos - 1 then
        card.joker_display_values.chips = card.ability.extra.chips or 1
    else
        card.joker_display_values.chips = 0
    end
else
    -- Handle cases where there are not enough jokers
    card.joker_display_values.chips = card.ability.extra.chips
end

-- Update `joker_display_values` with count and pos
card.joker_display_values.count = count
card.joker_display_values.pos = pos
end

}

--	Forretress
jd_def["j_poke_forretress"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local count = 0
    local pos = 0

    -- Check if `G.jokers.cards` exists and has more than one card
    if G.jokers and G.jokers.cards and #G.jokers.cards > 1 then
        -- Find the position of the card
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                pos = i
                break
            end
        end

        -- Count the cards matching the specific conditions before `pos`
        for i = 1, pos - 1 do
            local joker_card = G.jokers.cards[i]
            if joker_card and joker_card.config and joker_card.config.center and
               joker_card.config.center.volatile and
               joker_card.config.center.config and joker_card.config.center.config.extra and
               joker_card.config.center.config.extra.volatile == 'left' then
                count = count + 1
            end
        end

        -- Set `x_mult` based on the condition
        if count == pos - 1 then
            card.joker_display_values.chips = card.ability.extra.chips or 1
        else
            card.joker_display_values.chips = 0
        end
    else
        -- Handle cases where there are not enough jokers
        card.joker_display_values.chips = card.ability.extra.chips
    end

    -- Update `joker_display_values` with count and pos
    card.joker_display_values.count = count
    card.joker_display_values.pos = pos
end

}

--	Dunsparce
--	Gligar
--	Steelix
jd_def["j_poke_steelix"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
    end
}

--	Snubbull
--	Granbull
--	Qwilfish
jd_def["j_poke_qwilfish"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS }
    },
}

--	Scizor
jd_def["j_poke_scizor"] = { 
    text = {
        { text = "+",  colour = G.C.CHIPS },
        { ref_table = "card.ability.extra", ref_value = "scizor_chips", retrigger_type = "mult",  colour = G.C.CHIPS  },
        {text = " "},
        { text = "+",  colour = G.C.MULT },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult",  colour = G.C.MULT  },
        {text = " "},
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.ability.extra", ref_value = "scizor_Xmult", colour = G.C.WHITE }
            },
        },
    },

}

--	Shuckle
--	Heracross
--	Sneasel
--	Teddiursa
--	Ursaring
--	Slugma
--	Magcargo
--	Swinub
--	Piloswine
--	Corsola
jd_def["j_poke_corsola"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult_mod * card.ability.extra.corsola_tally
end
}

--	Remoraid
jd_def["j_poke_remoraid"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "status", retrigger_type = "mult" },
        { text = " Left" },
    },
    text_config = { colour = G.C.GREY },
    calc_function = function(card)
        card.joker_display_values.status = card.ability.extra.card_max - card.ability.extra.cards
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then return 0 end
        local remaining = joker_card.ability.extra.card_max - joker_card.ability.extra.cards
        if remaining >= #scoring_hand then return 1 end

        for i = 1, remaining do
            if playing_card == scoring_hand[i] then
                return 1
            end
        end
        return 0
    end,
}
--	Octillery
jd_def["j_poke_octillery"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "status", retrigger_type = "mult" },
        { text = " Left" },
    },
    text_config = { colour = G.C.GREY },
    calc_function = function(card)
        card.joker_display_values.status = card.ability.extra.card_max - card.ability.extra.cards
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then return 0 end
        local remaining = joker_card.ability.extra.card_max - joker_card.ability.extra.cards
        if remaining >= #scoring_hand then return 1 end

        for i = 1, remaining do
            if playing_card == scoring_hand[i] then
                return 1
            end
        end
        return 0
    end,
}
--	Delibird
--	Mantine
jd_def["j_poke_mantine"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
    }

--	Skarmory
jd_def["j_poke_skarmory"] = { 
    text = {
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", colour = G.C.WHITE }
            },
        },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and SMODS.has_enhancement(playing_card, "m_poke_hazard") then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.Xmult = 1 + (count * card.ability.extra.Xmult_mod)
    end
}

--	Houndour
--	Houndoom
--	Kingdra
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


--	Phanpy
jd_def["j_poke_phanpy"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Donphan
jd_def["j_poke_donphan"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Porygon2
--	Stantler
jd_def["j_poke_stantler"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local highest_rank = nil
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if poker_hands['Pair'] and next(poker_hands['Pair']) then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card.base.nominal and not highest_rank then
            highest_rank = scoring_card.base.nominal
            elseif scoring_card.base.nominal and highest_rank and scoring_card.base.nominal > highest_rank then
            highest_rank = scoring_card.base.nominal
            end
        end
        local chips = card.ability.extra.chips * highest_rank
        if G.GAME.current_round.hands_left <= 1 then
            card.joker_display_values.chips = chips * 2
        else
            card.joker_display_values.chips = chips
        end
    else card.joker_display_values.chips = 0
    end
end
}

--	Smeargle
--	Tyrogue
jd_def["j_poke_tyrogue"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Hitmontop
jd_def["j_poke_hitmontop"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Smoochum
jd_def["j_poke_smoochum"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Elekid
jd_def["j_poke_elekid"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Magby
jd_def["j_poke_magby"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Miltank
jd_def["j_poke_miltank"] = {
    text = {
        {text = "$", colour = G.C.GOLD},
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD  },

    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
    },
    calc_function = function(card)
        local type = #find_pokemon_type("Colorless")
        card.joker_display_values.money = type * card.ability.extra.money
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

--	Blissey
jd_def["j_poke_blissey"] = {
    text = {
        {text = "[", colour = G.C.GREY},
        {ref_table ="card.joker_display_values", ref_value = "count", colour = G.C.GREY},
        {text = "/", colour = G.C.GREY},
        {ref_table ="card.joker_display_values", ref_value = "limit", colour = G.C.ORANGE},
        {text = "]", colour = G.C.GREY},
    },
    calc_function = function(card)
        local count = card.ability.extra.triggers
        local limit = card.ability.extra.limit
        card.joker_display_values.count = count
        card.joker_display_values.limit = limit
    end
}

--	Raikou
--	Entei
--	Suicune
--	Larvitar
--	Pupitar
--	Tyranitar
--	Lugia
--	Ho-oh
--	Celebi
jd_def["j_poke_celebi"] = {
    text = {
        {text = "[", colour = G.C.GREY},
        {ref_table ="card.ability.extra", ref_value = "skip_count", colour = G.C.GREY},
        {text = "/", colour = G.C.GREY},
        {ref_table ="card.joker_display_values", ref_value = "limit", colour = G.C.ORANGE},
        {text = "]", colour = G.C.GREY},
    },
    calc_function = function(card)
        local limit = G.GAME.celebi_skips
        card.joker_display_values.limit = limit
    end
}






