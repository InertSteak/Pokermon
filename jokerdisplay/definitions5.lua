local jd_def = JokerDisplay.Definitions




jd_def["j_poke_litwick"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        card.joker_display_values.mult = card.sell_cost * 1
    end
}


jd_def["j_poke_lampent"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        card.joker_display_values.mult = card.sell_cost * 2
    end
}

jd_def["j_poke_chandelure"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        card.joker_display_values.mult = card.sell_cost * 3
    end
}


jd_def["j_poke_zorua"] = {
reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "blueprint_compat", colour = G.C.RED },
    { text = ")" }
},
calc_function = function(card)
    local copied_joker, copied_debuff = JokerDisplay.calculate_blueprint_copy(card)
    card.joker_display_values.blueprint_compat = localize('k_incompatible')
    JokerDisplay.copy_display(card, copied_joker, copied_debuff)
end,
get_blueprint_joker = function(card)
    return G.jokers.cards[#G.jokers.cards]
end
}


jd_def["j_poke_zoroark"] = {
    reminder_text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "blueprint_compat", colour = G.C.RED },
        { text = ")" }
    },
    calc_function = function(card)
        local copied_joker, copied_debuff = JokerDisplay.calculate_blueprint_copy(card)
        card.joker_display_values.blueprint_compat = localize('k_incompatible')
        JokerDisplay.copy_display(card, copied_joker, copied_debuff)
    end,
    get_blueprint_joker = function(card)
        return G.jokers.cards[#G.jokers.cards]
    end
    }