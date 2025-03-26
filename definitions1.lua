local jd_def = JokerDisplay.Definitions


jd_def["j_poke_bulbasaur"] = {
    text = {
        { text = "+$",                              colour = G.C.GOLD },
        { ref_table = "card.joker_display_values",        ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
            { text = "(", colour = G.C.GREY },
            { ref_table = "card.joker_display_values", ref_value = "bulbcard", colour = G.C.ORANGE },
            { text = ")", colour = G.C.GREY },
 
    },
    reminder_text_config = { colour = G.C.ORANGE, scale = 0.3 },
    calc_function = function(card)
        local bulbcard = G.GAME.current_round.bulb1card.id
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() and playing_card:get_id() == bulbcard then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.bulbcard = localize(G.GAME.current_round.bulb1card.rank, 'ranks')
    end
}

jd_def["j_poke_ivysaur"] = {
    text = {
        { text = "Max: ", colour = G.C.GREY, },
        { text = "+$",                              colour = G.C.GOLD , },
        {ref_table = "card.joker_display_values",    ref_value = "upper", colour = G.C.GOLD,   }
    },
    extra = {
        {        
                { text = "Min: ", colour = G.C.GREY, },
                { text = "+$",                              colour = G.C.GOLD },
                {ref_table = "card.joker_display_values",    ref_value = "lower", colour = G.C.GOLD,   }
        }
            },
    reminder_text = {
            { text = "(", colour = G.C.GREY },
            { ref_table = "card.joker_display_values", ref_value = "bulbcard", colour = G.C.ORANGE },
            { text = ")", colour = G.C.GREY },
 
    },
    reminder_text_config = { colour = G.C.ORANGE, scale = 0.3 },
    calc_function = function(card)
        local bulbcard = G.GAME.current_round.bulb1card.id
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() and playing_card:get_id() == bulbcard then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.lower = count * card.ability.extra.money_mod
        card.joker_display_values.upper = count * (card.ability.extra.money_mod +1)
        card.joker_display_values.bulbcard = localize(G.GAME.current_round.bulb1card.rank, 'ranks')

    end
}

jd_def["j_poke_venusaur"] = {
    text = {
        { text = "+$",                              colour = G.C.GOLD },
        { ref_table = "card.joker_display_values",        ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
            { text = "(", colour = G.C.GREY },
            { ref_table = "card.joker_display_values", ref_value = "bulbcard", colour = G.C.ORANGE },
            { text = ")", colour = G.C.GREY },
 
    },
    reminder_text_config = { colour = G.C.ORANGE, scale = 0.3 },
    calc_function = function(card)
        local bulbcard = G.GAME.current_round.bulb1card.id
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() and playing_card:get_id() == bulbcard then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.bulbcard = localize(G.GAME.current_round.bulb1card.rank, 'ranks')
    end
}



jd_def["j_poke_charmander"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

jd_def["j_poke_charmeleon"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}

jd_def["j_poke_charizard"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
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
text_config = { colour = G.C.WHITE },
calc_function = function(card)
    if G.GAME and G.GAME.current_round and G.GAME.current_round.discards_left <= card.ability.extra.d_remaining then 
        card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
        card.joker_display_values.Xmult = 1
    end

end


}

jd_def["j_poke_mega_charizard_x"] = {
    text = {
            {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        }
    },
text_config = { colour = G.C.WHITE },
calc_function = function(card)
    if G.GAME and G.GAME.current_round and G.GAME.current_round.discards_left <= card.ability.extra.d_remaining then 
        card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
        card.joker_display_values.Xmult = 1
    end

end


}

jd_def["j_poke_squirtle"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_wartortle"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_blastoise"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chip_mod", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card) 
        card.joker_display_values.chip_mod = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.hands_left)


end
}

jd_def["j_poke_caterpie"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}

jd_def["j_poke_metapod"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}

jd_def["j_poke_butterfree"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}

jd_def["j_poke_weedle"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_kakuna"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_beedrill"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_mega_beedrill"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_pidgey"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local first_rank = nil
    local second_rank = nil
    local has_wild = false
    local not_flush = true
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for i = 1, #scoring_hand do
            if scoring_hand[i].ability.name == 'Wild Card' then
                has_wild = true
            end
        end
        for _, scoring_card in pairs(scoring_hand) do
            if not first_rank and scoring_card:get_id() > 0 then
                first_rank = scoring_card:get_id()
              elseif not second_rank and scoring_card:get_id() > 0 and scoring_card:get_id() ~= first_rank then
                second_rank = scoring_card:get_id()
              end
            end
        end
        if scoring_hand['Flush'] and next(scoring_hand['Flush']) then
            not_flush = false
        end
        if first_rank and second_rank and (has_wild or (not_flush and #scoring_hand > 1)) then
            mult = card.ability.extra.mult


    end
    card.joker_display_values.mult = mult
end
}

jd_def["j_poke_pidgeotto"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local first_rank = nil
    local second_rank = nil
    local has_wild = false
    local not_flush = true
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for i = 1, #scoring_hand do
            if scoring_hand[i].ability.name == 'Wild Card' then
                has_wild = true
            end
        end
        for _, scoring_card in pairs(scoring_hand) do
            if not first_rank and scoring_card:get_id() > 0 then
                first_rank = scoring_card:get_id()
              elseif not second_rank and scoring_card:get_id() > 0 and scoring_card:get_id() ~= first_rank then
                second_rank = scoring_card:get_id()
              end
            end
        end
        if scoring_hand['Flush'] and next(scoring_hand['Flush']) then
            not_flush = false
        end
        if first_rank and second_rank and (has_wild or (not_flush and #scoring_hand > 1)) then
            mult = card.ability.extra.mult


    end
    card.joker_display_values.mult = mult
end
}

jd_def["j_poke_pidgeot"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local first_rank = nil
    local second_rank = nil
    local has_wild = false
    local not_flush = true
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for i = 1, #scoring_hand do
            if scoring_hand[i].ability.name == 'Wild Card' then
                has_wild = true
            end
        end
        for _, scoring_card in pairs(scoring_hand) do
            if not first_rank and scoring_card:get_id() > 0 then
                first_rank = scoring_card:get_id()
              elseif not second_rank and scoring_card:get_id() > 0 and scoring_card:get_id() ~= first_rank then
                second_rank = scoring_card:get_id()
              end
            end
        end
        if scoring_hand['Flush'] and next(scoring_hand['Flush']) then
            not_flush = false
        end
        if first_rank and second_rank and (has_wild or (not_flush and #scoring_hand > 1)) then
            mult = card.ability.extra.mult


    end
    card.joker_display_values.mult = mult
end
}


jd_def["j_poke_mega_pidgeot"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
        { text = "x",                              scale = 0.35 },
        {
            border_nodes = {
                { text = "X",colour = G.C.WHITE },
                { ref_table = "card.ability.extra", ref_value = "discards_lost", colour = G.C.WHITE }
            }
        }
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
        card.joker_display_values.count = count
    end
}

---@param cards table Cards to calculate.
---@return table? # Leftmost card in hand if any.
JokerDisplay.calculate_second_card = function(cards)
    local sorted_cards = JokerDisplay.sort_cards(cards)
    return sorted_cards and sorted_cards[2]
end


jd_def["j_poke_rattata"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then return 0 end
        local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
        return first_card and playing_card == first_card and
        joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
    end
    }

jd_def["j_poke_raticate"] = {
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    local second_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[2]
    return first_card and playing_card == first_card and
    joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and 
    second_card and playing_card == second_card and
    joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
    end

}



jd_def["j_poke_spearow"] = {
    text = {
        { ref_table = "card.ability.extra", ref_value = "cards_scored", colour = G.C.ORANGE },
        {text = " "},
        { text = "[",                              colour = G.C.GREY },
        { ref_table = "card.ability.extra", ref_value = "card_threshold", colour = G.C.GREY  },
        { text = "]",                              colour = G.C.GREY }

    },
}

jd_def["j_poke_fearow"] = {
    text = {
        { ref_table = "card.ability.extra", ref_value = "cards_scored", colour = G.C.ORANGE },
        {text = " "},
        { text = "[",                              colour = G.C.GREY },
        { ref_table = "card.ability.extra", ref_value = "card_threshold", colour = G.C.GREY  },
        { text = "]",                              colour = G.C.GREY }

    },
}

jd_def["j_poke_ekans"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        chips = card.ability.extra.chips
    end
    card.joker_display_values.chips = chips
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end

}

jd_def["j_poke_arbok"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        chips = card.ability.extra.chips
    end
    card.joker_display_values.chips = chips
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end

}


jd_def["j_poke_pikachu"] = {
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

jd_def["j_poke_raichu"] = {
    text = {
        {text = "$", colour = G.C.GOLD},
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD  },

    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
    },
    calc_function = function(card)
        local money
        money = math.min(card.ability.extra.money_limit, #G.jokers.cards * card.ability.extra.money)
        card.joker_display_values.money = money
        card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

jd_def["j_poke_sandshrew"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips
    chips = card.ability.extra.sandshrew_tally * card.ability.extra.chip_mod
    card.joker_display_values.chips = chips
end
}

jd_def["j_poke_sandslash"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips
    chips = card.ability.extra.sandshrew_tally * card.ability.extra.chip_mod
    card.joker_display_values.chips = chips
end
}

jd_def["j_poke_nidoranf"] = {
    text = {
        { text = "+", colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 12 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * card.ability.extra.chips
    end
}

jd_def["j_poke_nidorina"] = {
    text = {
        { text = "+", colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 12 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * card.ability.extra.chips
    end
}

jd_def["j_poke_nidoqueen"] = {
    text = {
        { text = "+", colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 12 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.chips = count * card.ability.extra.chips
    end
}

jd_def["j_poke_nidoranm"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 13 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
    end
}

jd_def["j_poke_nidorino"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 13 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
    end
}

jd_def["j_poke_nidoking"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() == 13 then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
    end
}

jd_def["j_poke_clefairy"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Clubs"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Clubs") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.localized_text = localize("Clubs", 'suits_plural')
    end
}

jd_def["j_poke_clefable"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Clubs"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local count = 0
        if G.play then
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Clubs") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = card.ability.extra.mult_mod * count * #scoring_hand 
        card.joker_display_values.localized_text = localize("Clubs", 'suits_plural')
    end
}

jd_def["j_poke_vulpix"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
    },
    text_config = { colour = G.C.SECONDARY_SET.Tarot },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() and scoring_card:get_id() == 9 then
                    count = count +
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}

jd_def["j_poke_ninetales"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
    },
    text_config = { colour = G.C.SECONDARY_SET.Tarot },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() and scoring_card:get_id() == 9 then
                    count = count +
                        JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}


jd_def["j_poke_jigglypuff"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Spades"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Spades") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.localized_text = localize("Spades", 'suits_plural')
    end
}

jd_def["j_poke_wigglytuff"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
        { text = "x",                              scale = 0.35 },
        {ref_table = "card.ability.extra", ref_value = "mult", colour = G.C.MULT},
    },
    extra = {
        {
            { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
        { text = "x",                              scale = 0.35 },
        {ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS},
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Spades"], 0.35) },
        { text = ")" }
    },

    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Spades") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_text = localize("Spades", 'suits_plural')
    end
}

jd_def["j_poke_zubat"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

jd_def["j_poke_golbat"] = {
    text = {
        { text = "+",  colour = G.C.CHIPS },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult",  colour = G.C.CHIPS  },
        {text = " "},
        { text = "+",  colour = G.C.MULT },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult",  colour = G.C.MULT  },
        {text = " "},
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.ability.extra", ref_value = "Xmult", colour = G.C.WHITE }
            },
        },

        {text = " "},
        { text = "+$",  colour = G.C.GOLD  },
        { ref_table = "card.ability.extra", ref_value = "money", retrigger_type = "mult",  colour = G.C.GOLD  }
    },

}

jd_def["j_poke_oddish"] = {
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
    end
    card.joker_display_values.lower = count * card.ability.extra.mult
    card.joker_display_values.upper = count * card.ability.extra.mult2
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. ",9,7,5,3)"
end
}

jd_def["j_poke_gloom"] = {
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
    end
    card.joker_display_values.lower = count * card.ability.extra.mult
    card.joker_display_values.upper = count * card.ability.extra.mult2
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. ",9,7,5,3)"
end
}

jd_def["j_poke_vileplume"] = {
    text = {
        { text = "XMult: ", colour = G.C.GREY, },
        {
            border_nodes = {
                { text = "X1", colour = G.C.WHITE  },
            },
        },
        {text = "-", colour = G.C.GREY},
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                {ref_table = "card.joker_display_values", ref_value = "upper_Xmult", colour = G.C.WHITE}
            },
        },
    
    },
    extra = {
        {        
                { text = "Mult: ", colour = G.C.GREY, },
                { text = "+0",                              colour = G.C.MULT },
                {text = "-", colour = G.C.GREY},
                {text = "+", colour = G.C.MULT},
                {ref_table = "card.joker_display_values",    ref_value = "upper_mult", colour = G.C.MULT,   },
        }
            },  
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    calc_function = function(card)
    local count = 0
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
    end
    card.joker_display_values.upper_mult = count * card.ability.extra.mult
    card.joker_display_values.upper_Xmult = math.max(card.ability.extra.Xmult_multi^count, 1)
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. ",9,7,5,3)"
    end
}


jd_def["j_poke_paras"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}

jd_def["j_poke_parasect"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
}


jd_def["j_poke_diglett"] = {
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
            chips = card.ability.extra.chips
        end
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 2 or 
                scoring_card:get_id() == 3 or 
                scoring_card:get_id() == 4 then
                    mult = card.ability.extra.mult
                end
            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.mult = mult
        card.joker_display_values.localized_text = "(2,3,4)"
    end
}

jd_def["j_poke_dugtrio"] = {
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
            chips = card.ability.extra.chips
        end
        if text ~= 'Unknown' then

            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 2 or 
                scoring_card:get_id() == 3 or 
                scoring_card:get_id() == 4 then
                    mult = card.ability.extra.Xmult
                end

            end
        end
        card.joker_display_values.chips = chips
        card.joker_display_values.Xmult = mult 
        card.joker_display_values.localized_text = "(2,3,4)"
    end
}

jd_def["j_poke_meowth"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.ability.extra", ref_value = "money" },
    },
    text_config = { colour = G.C.GOLD },
}

jd_def["j_poke_persian"] = {
    text = {
        { text = "+$" },
        { ref_table = "card.joker_display_values", ref_value = "money" },
    },
    text_config = { colour = G.C.GOLD },
    calc_function = function(card)
        if #G.jokers.cards > 1 and G.jokers.cards[1] ~= card then
            card.joker_display_values.money = math.min(G.jokers.cards[1].sell_cost*2, 15)
        else
            card.joker_display_values.money = 0
        end
    end
}

jd_def["j_poke_psyduck"] = {
    text = {
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD}
        },
calc_function = function(card)
    local face_cards = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if poker_hands['High Card'] and next(poker_hands['High Card']) and #JokerDisplay.current_hand == 1 then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 11 or 
            scoring_card:get_id() == 12 or 
            scoring_card:get_id() == 13 then
                face_cards = card.ability.extra.money
            end
        end
    end
    card.joker_display_values.money = face_cards
end
}

jd_def["j_poke_golduck"] = {
text = {
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD}
        },
calc_function = function(card)
    local face_cards = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if poker_hands['High Card'] and next(poker_hands['High Card']) and #JokerDisplay.current_hand == 1 then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 11 or 
            scoring_card:get_id() == 12 or 
            scoring_card:get_id() == 13 then
                face_cards = card.ability.extra.money
            end
        end
    end
    card.joker_display_values.money = face_cards
end
}

jd_def["j_poke_mankey"] = {
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
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 or 
            scoring_card:get_id() == 3 or 
            scoring_card:get_id() == 5 or 
            scoring_card:get_id() == 7 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.chips = count * card.ability.extra.chips
    card.joker_display_values.mult = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(2,3,5,7)"
end
}

jd_def["j_poke_primeape"] = {
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
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 or 
            scoring_card:get_id() == 3 or 
            scoring_card:get_id() == 5 or 
            scoring_card:get_id() == 7 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.chips = count * card.ability.extra.chips
    card.joker_display_values.mult = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(2,3,5,7)"
end
}

jd_def["j_poke_growlithe"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
        mult = card.ability.extra.mult
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.localized_text = localize('Flush', 'poker_hands')
end

}

jd_def["j_poke_arcanine"] = {
    text = {
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", colour = G.C.WHITE }
            },
        },
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local Xmult = 1
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
        Xmult = card.ability.extra.Xmult
    end
    card.joker_display_values.Xmult = Xmult
    card.joker_display_values.localized_text = localize('Flush', 'poker_hands')
end

}

--Poliwag
jd_def["j_poke_poliwag"] = {
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
    end
}
--Poliwhirl
jd_def["j_poke_poliwhirl"] = {
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
    end
}
--Poliwrath
jd_def["j_poke_poliwrath"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
        { text = " ",                              colour = G.C.MULT },
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },

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
        card.joker_display_values.Xmult = count * card.ability.extra.Xmult_multi
        card.joker_display_values.localized_text = localize(suit, 'suits_plural')
    end
}

jd_def["j_poke_abra"] = {
text = {
    {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
},
extra = {
    {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
        { text = ")" },
    },
},
calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    
    local is_card_sharp_hand = text ~= 'Unknown' and G.GAME.hands and G.GAME.hands[text] and
        G.GAME.hands[text].played_this_round > (next(G.play.cards) and 1 or 0)
    card.joker_display_values.status = is_card_sharp_hand and "Active!" or "Not Active!"
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
end
}

jd_def["j_poke_kadabra"] = {
text = {
    {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
},
extra = {
    {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
        { text = ")" },
    },
},
calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    
    local is_card_sharp_hand = text ~= 'Unknown' and G.GAME.hands and G.GAME.hands[text] and
        G.GAME.hands[text].played_this_round > (next(G.play.cards) and 1 or 0)
    card.joker_display_values.status = is_card_sharp_hand and "Active!" or "Not Active!"
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
end
}

jd_def["j_poke_alakazam"] = {
text = {
    {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
},
extra = {
    {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
        { text = ")" },
    },
},
calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    
    local is_card_sharp_hand = text ~= 'Unknown' and G.GAME.hands and G.GAME.hands[text] and
        G.GAME.hands[text].played_this_round > (next(G.play.cards) and 1 or 0)
    card.joker_display_values.status = is_card_sharp_hand and "Active!" or "Not Active!"
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
end
}

jd_def["j_poke_mega_alakazam"] = {
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
        local xmult = 1
        local spoons = 0
        local consumables = 0
        if G.consumeables then
            for i = 1, #G.consumeables.cards do
                if G.consumeables.cards[i].ability.name == "twisted_spoon" then
                    spoons = spoons + 1
                elseif G.consumeables.cards[i].ability.name ~= "twisted_spoon" then
                    consumables = consumables + 1
                end
            end
        end
        xmult = math.max((card.ability.extra.Xmult_multi^consumables), 1) * math.max((card.ability.extra.Xmult_multi2^spoons), 1)
        card.joker_display_values.x_mult = xmult
    end
}


jd_def["j_poke_machop"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

jd_def["j_poke_machoke"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

jd_def["j_poke_machamp"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

jd_def["j_poke_bellsprout"] = {
text = {
    { text = "+", colour = G.C.CHIPS},
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
},
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 or 
            scoring_card:get_id() == 4 or 
            scoring_card:get_id() == 6 or 
            scoring_card:get_id() == 8 or
            scoring_card:get_id() == 10 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.chips = count * card.ability.extra.chips
    card.joker_display_values.localized_text = "(2,4,6,8,10)"
end
}

jd_def["j_poke_weepinbell"] = {
text = {
    { text = "+", colour = G.C.CHIPS},
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
},
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 or 
            scoring_card:get_id() == 4 or 
            scoring_card:get_id() == 6 or 
            scoring_card:get_id() == 8 or
            scoring_card:get_id() == 10 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.chips = count * card.ability.extra.chips
    card.joker_display_values.localized_text = "(2,4,6,8,10)"
end
}

jd_def["j_poke_victreebel"] = {
text = {
    { text = "+", colour = G.C.CHIPS},
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
},
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 or 
            scoring_card:get_id() == 4 or 
            scoring_card:get_id() == 6 or
            scoring_card:get_id() == 8 or 
            scoring_card:get_id() == 10 then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.chips = count * card.ability.extra.chips
    card.joker_display_values.localized_text = "(2,4,6,8,10)"
end,
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    return (playing_card:get_id() == 2 or playing_card:get_id() == 4 or
            playing_card:get_id() == 6 or playing_card:get_id() == 8 or playing_card:get_id() == 10) and
        joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
end
}

jd_def["j_poke_tentacool"] = {
text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
},
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 10 then 
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.mult = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(10)"
end
}

jd_def["j_poke_tentacruel"] = {
text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
},
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 10 then 
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.mult = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(10)"
end
}



jd_def["j_poke_geodude"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_graveler"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_golem"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_ponyta"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_rapidash"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

jd_def["j_poke_slowpoke"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        card.joker_display_values.x_mult = G.GAME and G.GAME.current_round.hands_left == 1 and card.ability.extra.Xmult or
            1
    end
}

jd_def["j_poke_slowbro"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        local xmult_total = card.ability.extra.Xmult + (G.GAME.current_round.hands_played) * card.ability.extra.Xmult_mod
        card.joker_display_values.x_mult = xmult_total            
    end
}

jd_def["j_poke_mega_slowbro"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
            }
        }
    },
    calc_function = function(card)
        local xmult_total = card.ability.extra.Xmult + (card.ability.extra.hands_played * card.ability.extra.Xmult_mod)
        card.joker_display_values.x_mult = xmult_total            
    end
}

jd_def["j_poke_magnemite"] = {
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
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
            if scoring_card.ability.effect and scoring_card.ability.effect == "Steel Card" then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.x_mult = math.max(card.ability.extra.Xmult_multi^count,1)
end
}

jd_def["j_poke_magneton"] = {
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
        },
    },
},
calc_function = function(card)
    local jokers = {}
    if #G.jokers.cards > 1 then
      local pos = 0
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i] == card then
          pos = i
          break
        end
      end
      if pos > 1 and G.jokers.cards[pos-1] then 
        table.insert(jokers, G.jokers.cards[pos-1])
      end
      if pos < #G.jokers.cards and G.jokers.cards[pos+1] then 
        table.insert(jokers, G.jokers.cards[pos+1])
      end
    end

    local adjacent = 0
    if G.jokers then
        for _, joker_card in ipairs(jokers) do
            if joker_card.config.center.ptype and joker_card.config.center.ptype == "Metal" then
                adjacent = adjacent + 1
            end
        end
    end

    local count = 0
    local playing_hand = next(G.play.cards)
    local hand = next(G.play.cards) and G.play.cards or G.hand.highlighted
    local text, _, scoring_hand = JokerDisplay.evaluate_hand(hand)
    if text ~= "Unknown" then
        for _, scoring_card in pairs(scoring_hand) do --Polychrome cards scored
            if scoring_card.ability.effect and scoring_card.ability.effect == "Steel Card" then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.x_mult = math.max((card.ability.extra.Xmult_multi+adjacent*card.ability.extra.Xmult_multi2)^count,1)
end
}

-- Farfetch'd

jd_def["j_poke_doduo"] = {
    text = {
        { text = "+", colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
    },
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local face = 0
    local facecount = 0
    local hand = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Full House'] and next(poker_hands['Full House']) then
        hand = card.ability.extra.mult
    end
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 11 or 
            scoring_card:get_id() == 12 or 
            scoring_card:get_id() == 13 then
                facecount = facecount + 1
            end
        end
    end
    if facecount >= 2 then face = card.ability.extra.mult end
    card.joker_display_values.mult = face + hand 
end
}

jd_def["j_poke_dodrio"] = {
    text = {
        { text = "+", colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
    },
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local face = 0
    local facecount = 0
    local hand = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Full House'] and next(poker_hands['Full House']) then
        hand = card.ability.extra.mult
    end
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 11 or 
            scoring_card:get_id() == 12 or 
            scoring_card:get_id() == 13 then
                facecount = facecount + 1
            end
        end
    end
    if facecount >= 3 then face = card.ability.extra.mult end
    card.joker_display_values.mult = face + hand 
end
}

jd_def["j_poke_seel"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}

jd_def["j_poke_dewgong"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
    end
}


jd_def["j_poke_grimer"] = {
    text = {
        {text = "+", colour = G.C.MULT},
        {ref_table ="card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
    },
    calc_function = function(card)
        local mult = 0
        if #G.playing_cards > G.GAME.starting_deck_size then 
            mult = card.ability.extra.mult
        end
        card.joker_display_values.mult = mult
    end
}

jd_def["j_poke_muk"] = {
    text = {
        {text = "+", colour = G.C.MULT},
        {ref_table ="card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
    },
    calc_function = function(card)
        local mult = 0
        mult = card.ability.extra.mult * (#G.playing_cards - G.GAME.starting_deck_size)
        card.joker_display_values.mult = mult
    end
}

jd_def["j_poke_shellder"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
    },
calc_function = function(card)
    local status
    local hand = JokerDisplay.current_hand
    if hand and #hand > 0 and #hand == 5 then
        status = "Active!"
    else
        status = "Not Active!"
    end
        card.joker_display_values.status = status
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
end
}

jd_def["j_poke_cloyster"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
    },
calc_function = function(card)
    local status
    local hand = JokerDisplay.current_hand
    if hand and #hand > 0 and #hand == 5 then
        status = "Active!"
    else
        status = "Not Active!"
    end
        card.joker_display_values.status = status
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
end
}

-- Gastly 
-- Haunter 
-- Gengar 
-- Mega Gengar 

jd_def["j_poke_onix"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
    end
}

jd_def["j_poke_drowzee"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local planets_used = card.ability.extra.planets_used
        local Xmult = card.ability.extra.Xmult_mod

        card.joker_display_values.x_mult = 1 + (planets_used * Xmult)
    end
}

jd_def["j_poke_hypno"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local planets_used = card.ability.extra.planets_used
        local Xmult = card.ability.extra.Xmult_mod

        card.joker_display_values.x_mult = 1 + (planets_used * Xmult)
    end
}

jd_def["j_poke_krabby"] = {
    text = {
            { text = "+", colour = G.C.CHIPS },
            { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS}
            },
    calc_function = function(card)
        local count = 0
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 11 or 
                scoring_card:get_id() == 12 or 
                scoring_card:get_id() == 13 then
                    count = count + 1
                end
            end
        card.joker_display_values.chips = count * card.ability.extra.chips
    end
}

jd_def["j_poke_kingler"] = {
    text = {
            { text = "+", colour = G.C.CHIPS },
            { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS}
            },
    calc_function = function(card)
        local count = 0
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 11 or 
                scoring_card:get_id() == 12 or 
                scoring_card:get_id() == 13 then
                    count = count + 1
                end
            end
        card.joker_display_values.chips = count * card.ability.extra.chips
    end
}

jd_def["j_poke_voltorb"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
            },
        },
    },
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
    
            -- Count the cards matching the specific conditions after `pos`
            for i = pos + 1, #G.jokers.cards do
                local joker_card = G.jokers.cards[i]
                if joker_card and joker_card.config and joker_card.config.center and
                   joker_card.config.center.volatile and
                   joker_card.config.center.config and joker_card.config.center.config.extra and
                   joker_card.config.center.config.extra.volatile == 'right' then
                    count = count + 1
                end
            end
    
            -- Set `x_mult` based on the condition
            if count + pos == #G.jokers.cards then
                card.joker_display_values.x_mult = card.ability.extra.Xmult or 1
            else
                card.joker_display_values.x_mult = 1
            end
        else
            -- Handle cases where there are not enough jokers
            card.joker_display_values.x_mult = card.ability.extra.Xmult
        end
    
        -- Update `joker_display_values` with count and pos
        card.joker_display_values.count = count
        card.joker_display_values.pos = pos
    end
    
}

jd_def["j_poke_electrode"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
            },
        },
    },
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
    
            -- Count the cards matching the specific conditions after `pos`
            for i = pos + 1, #G.jokers.cards do
                local joker_card = G.jokers.cards[i]
                if joker_card and joker_card.config and joker_card.config.center and
                   joker_card.config.center.volatile and
                   joker_card.config.center.config and joker_card.config.center.config.extra and
                   joker_card.config.center.config.extra.volatile == 'right' then
                    count = count + 1
                end
            end
    
            -- Set `x_mult` based on the condition
            if count + pos == #G.jokers.cards then
                card.joker_display_values.x_mult = card.ability.extra.Xmult or 1
            else
                card.joker_display_values.x_mult = 1
            end
        else
            -- Handle cases where there are not enough jokers
            card.joker_display_values.x_mult = card.ability.extra.Xmult
        end
    
        -- Update `joker_display_values` with count and pos
        card.joker_display_values.count = count
        card.joker_display_values.pos = pos
    end
    
}

jd_def["j_poke_exeggcute"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
        { text = "x",                              scale = 0.35 },
        {ref_table = "card.ability.extra", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Hearts"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Hearts") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_text = localize("Hearts", 'suits_plural')
    end
}

jd_def["j_poke_exeggutor"] = {
    text = {
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
        { text = "x",                              scale = 0.35 },
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_multi" }
            }
        }
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Hearts"], 0.35) },
        { text = ")" }
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds",colour = G.C.GREEN, scale = 0.3  },
            { text = ")" },
        },
        {
            { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult",  colour = G.C.WHITE },
            { text = "x",  colour = G.C.WHITE },
            { text = "+",  colour = G.C.MULT},
    
            {ref_table = "card.ability.extra", ref_value = "mult_mod", colour = G.C.MULT},
        }

    },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Hearts") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.count = count
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
        card.joker_display_values.localized_text = localize("Hearts", 'suits_plural')
    end
}

jd_def["j_poke_cubone"] = {
    text = {
        { text = "+",colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult",colour = G.C.MULT }
    },
    calc_function = function(card)
        local mult = 0
        local consumables = 0
        if G.consumeables then
            for i = 1, #G.consumeables.cards do
                if G.consumeables.cards[i].ability.name == "thickclub" then
                    consumables = consumables + 2
                elseif G.consumeables.cards[i].ability.name ~= "thickclub" then
                    consumables = consumables + 1
                end
            end
        end
        mult = card.ability.extra.mult * consumables
        card.joker_display_values.mult = mult
    end
}

jd_def["j_poke_marowak"] = {
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
        local Xmult = 1
        local clubs = 0
        local consumables = 0
        if G.consumeables then
            for i = 1, #G.consumeables.cards do
                if G.consumeables.cards[i].ability.name == "thickclub" then
                    clubs = clubs + 1
                elseif G.consumeables.cards[i].ability.name ~= "thickclub" then
                    consumables = consumables + 1
                end
            end
        end
        Xmult = 1 + (card.ability.extra.Xmult_mod*consumables) + (card.ability.extra.Xmult_mod*2*clubs)
        card.joker_display_values.x_mult = Xmult
    end
}

jd_def["j_poke_hitmonlee"] = {
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
        card.joker_display_values.x_mult = 1 + (math.max(0,
            card.ability.extra.Xmult_mod * (G.playing_cards and (G.GAME.starting_deck_size - #G.playing_cards) or 0)))
    end
}

jd_def["j_poke_hitmonchan"] = {
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
        local xmult = 0
        xmult = 1 + (card.ability.extra.Xmult_mod * math.max((#G.playing_cards - G.GAME.starting_deck_size), 0))
        card.joker_display_values.x_mult = xmult
    end
}

jd_def["j_poke_hitmonchan"] = {
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
        local xmult = 0
        xmult = 1 + (card.ability.extra.Xmult_mod * math.max((#G.playing_cards - G.GAME.starting_deck_size), 0))
        card.joker_display_values.x_mult = xmult
    end
}

jd_def["j_poke_lickitung"] = {
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
        local jacks = {}
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 11 then
                    table.insert(jacks, scoring_card)
                end
            end
        end
        local first_face = JokerDisplay.calculate_leftmost_card(jacks)
        local last_face = JokerDisplay.calculate_second_card(jacks)
        if #jacks == 1 then
            card.joker_display_values.x_mult = math.max(first_face and
            (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(first_face, scoring_hand))) or 1)
        else
        card.joker_display_values.x_mult = math.max(last_face and
            (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(last_face, scoring_hand) + ((JokerDisplay.calculate_card_triggers(first_face, scoring_hand) or 0)))) or 1)
        end

    end
}

-- Rhydon
jd_def["j_poke_rhydon"] = {
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end

    -- Find the first Stone Card in the scoring hand
    local first_stone_card = nil
    for _, card in pairs(scoring_hand) do
        if card.ability.effect and card.ability.effect == "Stone Card" then
            first_stone_card = card
            break
        end
    end

    -- Check if the current playing card is the first Stone Card
    if first_stone_card and playing_card == first_stone_card then
        return joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)
    end

    return 0
end
}


jd_def["j_poke_chansey"] = {
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

-- Tangela
jd_def["j_poke_tangela"] = {
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

jd_def["j_poke_mega_kangaskhan"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if held_in_hand then
            return 0
        end
        return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end,
}

jd_def["j_poke_horsea"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

jd_def["j_poke_seadra"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

jd_def["j_poke_goldeen"] = {
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    return held_in_hand and playing_card.ability.effect == "Gold Card" and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
end
}

jd_def["j_poke_seaking"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        return held_in_hand and playing_card.ability.effect == "Gold Card" and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end
}

jd_def["j_poke_staryu"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Diamonds"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Diamonds") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.localized_text = localize("Diamonds", 'suits_plural')
    end
}

jd_def["j_poke_starmie"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT},
        { text = " +$",                              colour = G.C.GOLD },
        {ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD},
    },
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = lighten(G.C.SUITS["Diamonds"], 0.35) },
        { text = ")" }
    },

    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Diamonds") then
                        count = count +
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
            end
        else
            count = 3
        end
        card.joker_display_values.mult = count * card.ability.extra.mult
        card.joker_display_values.money = count * card.ability.extra.money_mod
        card.joker_display_values.localized_text = localize("Diamonds", 'suits_plural')
    end
}

jd_def["j_poke_mrmime"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        if not held_in_hand then return 0 end

        -- Identify the leftmost card held in hand
        local leftmost_card = nil
        for _, card in ipairs(G.hand.cards or {}) do
            leftmost_card = card
            break -- Stop after finding the first (leftmost) card
        end

        -- Check if the playing card is the leftmost card
        if playing_card == leftmost_card then
            return held_in_hand and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
        end

        return 0
    end
}

jd_def["j_poke_scyther"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}
-- Electabuzz
jd_def["j_poke_electabuzz"] = {
    text = {
        { text = "+$" ,
        colour = G.C.GOLD},
        { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult", 
        colour = G.C.GOLD},
    },
calc_function = function(card)
    card.joker_display_values.money =  math.min(card.ability.extra.max, math.ceil(card.sell_cost * card.ability.extra.percent/100))
end
}

jd_def["j_poke_magmar"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

-- Pinsir
jd_def["j_poke_pinsir"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local samerank = false
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        local found_ranks = {}
        for _,played_card in pairs(scoring_hand) do
            found_ranks[played_card:get_id()] = true
        end
        for _,hand_card in pairs(G.hand.cards) do
            if not hand_card.highlighted and found_ranks[hand_card:get_id()] then
                samerank = true
            end
        end
        if samerank == true then 
            card.joker_display_values.Xmult = card.ability.extra.Xmult
        else 
            card.joker_display_values.Xmult = 1
        end
    end
}

jd_def["j_poke_mega_pinsir"] = {
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" },
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
            if scoring_card.config.center == G.P_CENTERS.c_base then
                count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
        end
    end
    card.joker_display_values.x_mult = math.max(card.ability.extra.Xmult_multi^count,1)
end
}

jd_def["j_poke_tauros"] = {
    text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "count",          colour = G.C.ORANGE },
        { text = "x" },
        { text = "Tauros", colour = G.C.ORANGE , scale = 0.3},
        { text = ")" },
    },
    calc_function = function(card)
        local count = 0
        if G.jokers then
            for _, joker_card in ipairs(G.jokers.cards) do
                if joker_card.config.center.name and joker_card.config.center.name == "tauros" or joker_card.config.center.name == "taurosh" then
                    count = count + 1
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_basic = localize({type = "name_text", set = "Joker", key = "j_poke_tauros"})
        card.joker_display_values.localized_baby = localize({type = "name_text", set = "Joker", key = "j_poke_taurosh"})
    end,
    mod_function = function(card, mod_joker)
        return { x_mult = ((card.config.center.name and card.config.center.name == "tauros" or card.config.center.name == "taurosh") and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
    end
}

jd_def["j_poke_taurosh"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

jd_def["j_poke_magikarp"] = {
    text = {
        { text = "+" ,
        colour = G.C.CHIPS},
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", 
        colour = G.C.CHIPS},
    },
scoring_function = function(playing_card, scoring_hand, joker_card)
    return true
end
}

jd_def["j_poke_gyarados"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

jd_def["j_poke_mega_gyarados"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

jd_def["j_poke_lapras"] = {
    text = {
        { text = "+" ,
        colour = G.C.CHIPS},
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", 
        colour = G.C.CHIPS},
    },
}

jd_def["j_poke_vaporeon"] = {
    text = {
        { text = "+" ,
        colour = G.C.CHIPS},
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", 
        colour = G.C.CHIPS},
    },
}

jd_def["j_poke_flareon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

jd_def["j_poke_omanyte"] = {
    text = {

        { text = "+$",                              colour = G.C.GOLD , },
        {ref_table = "card.joker_display_values",    ref_value = "money", colour = G.C.GOLD,   }
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 3 then 
                count = count + 1
            end
        end
    end
    if count >= 2 then
        card.joker_display_values.money = card.ability.extra.money
    else
        card.joker_display_values.money = 0
    end
    card.joker_display_values.localized_text = "(".."3"..")"
end
}

jd_def["j_poke_omastar"] = {
    text = {

        { text = "+$",                              colour = G.C.GOLD , },
        {ref_table = "card.joker_display_values",    ref_value = "money", colour = G.C.GOLD,   }
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 3 then 
                count = count + 1
            end
        end
    end
    if count >= 2 then
        card.joker_display_values.money = card.ability.extra.money
    else
        card.joker_display_values.money = 0
    end
    card.joker_display_values.localized_text = "(".."3"..")"
end
}
-- Kabuto
jd_def["j_poke_kabuto"] = {
    text = {

        { text = "+",                              colour = G.C.CHIPS , },
        {ref_table = "card.joker_display_values",    ref_value = "chips", colour = G.C.CHIPS,   }
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 then 
                count = count + 1
            end
        end
    end
    if count >= 1 and count < 3 then
        card.joker_display_values.chips = card.ability.extra.chips1
    elseif count >= 3 then
        card.joker_display_values.chips = card.ability.extra.chips1 + card.ability.extra.chips3
    else
        card.joker_display_values.chips = 0
    end
    card.joker_display_values.localized_text = "(".."2"..")"
end
}
-- Kabutops
jd_def["j_poke_kabutops"] = {
    text = {

        { text = "+",                              colour = G.C.CHIPS , },
        {ref_table = "card.joker_display_values",    ref_value = "chips", colour = G.C.CHIPS,   }
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 then 
                count = count + 1
            end
        end
    end
    if count >= 1 and count < 3 then
        card.joker_display_values.chips = card.ability.extra.chips1
    elseif count >= 3 then
        card.joker_display_values.chips = card.ability.extra.chips1 + card.ability.extra.chips3
    else
        card.joker_display_values.chips = 0
    end
    card.joker_display_values.localized_text = "(".."2"..")"
end,
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()

    -- Count the number of 2's in the scoring hand
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 2 then
                count = count + 1
            end
        end
    end

    -- Only proceed if at least 4 2's have been played
    if count < 4 then
        return 0
    end

    -- Check for retrigger conditions
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    local second_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[2]

    if playing_card == first_card or playing_card == second_card then
        return joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)
    end

    return 0
end

}
-- Aerodactyl
jd_def["j_poke_aerodactyl"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
    calc_function = function(card)
        local Xmult = 1
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == 14 then 
                    count = count + 1
                end
            end
        end
        if count >= 1 then card.joker_display_values.Xmult = card.ability.extra.Xmult else card.joker_display_values.Xmult = Xmult end
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks")..")"
    end
}

jd_def["j_poke_mega_aerodactyl"] = {
    text = {
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                {ref_table = "card.joker_display_values", ref_value = "Xmult"}
            },
        },
},  
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" }
    },
    calc_function = function(card)
    local count = 0
    local triggers = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == 14 then 
                triggers = triggers + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                count = count + 1
            end
        end
    end
    card.joker_display_values.Xmult = math.max((card.ability.extra.Xmult_multi*count)^triggers, 1)
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks")..")"
    end
}

jd_def["j_poke_snorlax"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

jd_def["j_poke_zapdos"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        card.joker_display_values.Xmult = 1 + card.ability.extra.Xmult*math.floor((G.GAME.dollars + (G.GAME.dollar_buffer or 0))/card.ability.extra.money_threshold)
    end
}

jd_def["j_poke_moltres"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME and G.GAME.current_round.discards_used == 0 then status = "Active!" end
        card.joker_display_values.status = status
    end
}

jd_def["j_poke_dratini"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

jd_def["j_poke_dragonair"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
}

jd_def["j_poke_dragonite"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if #scoring_hand == 1 and #JokerDisplay.current_hand == 1 then
            return joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)
        end
    end

}

jd_def["j_poke_mewtwo"] = {
text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "count",          colour = G.C.ORANGE },
    { text = "x" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.DARK_EDITION },
    { text = ")" },
},
calc_function = function(card)
    local count = 0
    if G.jokers then
        for _, joker_card in ipairs(G.jokers.cards) do
            if joker_card.edition and joker_card.edition.polychrome then
                count = count + 1
            end
        end
    end
    card.joker_display_values.count = count
    card.joker_display_values.localized_text = localize({ type = "name_text", set = "Edition", key = "e_polychrome" })
end,
mod_function = function(card, mod_joker) --Polychrome Jokers
			return {
				x_mult = (card ~= mod_joker and card.edition and card.edition.polychrome == true)
						and mod_joker.ability.extra.Xmult_mod ^ JokerDisplay.calculate_joker_triggers(mod_joker)
					or nil,
			}
		end,
}

-- Mega Mewtwo X
jd_def["j_poke_mega_mewtwo_x"] = {
    calc_function = function(card)
        local count = 0
        if G.jokers then
            for _, joker_card in ipairs(G.jokers.cards) do
                    count = count + 1
                
            end
        end
    end,
    mod_function = function(card, mod_joker)
        return { x_mult =  mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil}
    end
}
-- Mega Mewtwo Y
