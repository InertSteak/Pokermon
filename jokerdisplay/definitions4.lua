local jd_def = JokerDisplay.Definitions


jd_def["j_poke_mismagius"] = { --	Mismagius
text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
},
text_config = { colour = G.C.CHIPS },
}

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
        card.joker_display_values.x_mult = math.max(card.ability.extra.Xmult_multi^count,1)
    end
    }

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
