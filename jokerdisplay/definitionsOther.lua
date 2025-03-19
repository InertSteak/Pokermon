local jd_def = JokerDisplay.Definitions



jd_def["j_poke_everstone"] = {
    text = {
        { text = "(" },
        { ref_table = "card.joker_display_values", ref_value = "count",          colour = G.C.ORANGE },
        { text = "x" },
        { ref_table = "card.joker_display_values", ref_value = "localized_basic", colour = G.C.ORANGE },
        {text = "/"},
        { ref_table = "card.joker_display_values", ref_value = "localized_baby", colour = G.C.ORANGE },
        { text = ")" },
    },
    calc_function = function(card)
        local count = 0
        if G.jokers then
            for _, joker_card in ipairs(G.jokers.cards) do
                if joker_card.config.center.stage and joker_card.config.center.stage == "Basic" or joker_card.config.center.stage == "Baby" then
                    count = count + 1
                end
            end
        end
        card.joker_display_values.count = count
        card.joker_display_values.localized_basic = localize({type = "name_text", set = "Other", key = "basic"})
        card.joker_display_values.localized_baby = localize({type = "name_text", set = "Other", key = "baby"})
    end,
    mod_function = function(card, mod_joker)
        return { x_mult = ((card.config.center.stage == "Basic" or card.config.center.stage == "Baby") and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
    end
    }