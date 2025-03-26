local jd_def = JokerDisplay.Definitions


-- Pokedex
jd_def["j_poke_pokedex"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
}

-- Everstone 
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

-- Tall Grass
jd_def["j_poke_tall_grass"] = {
    text = {
    },
    extra = {
        {
            { text = "(" },
            { ref_table = "card.joker_display_values", ref_value = "odds" },
            { text = ")" },
        }
    },
    extra_config = { colour = G.C.GREEN, scale = 0.3 },
    calc_function = function(card)
        card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end
}

-- Jelly Donut 
jd_def["j_poke_jelly_donut"] = {
    text = {
        {text = "["},
        {ref_table = "card.ability.extra", ref_value = "rounds"},
        {text = "/4]"}
    },
    text_config = {colour = G.C.UI.BACKGROUND_INACTIVE }
}

-- Treasure Eatery
jd_def["j_poke_treasure_eatery"] = {
    text = {
        {text = "["},
        {ref_table = "card.ability.extra", ref_value = "rounds"},
        {text = "/4]"}
    },
    text_config = {colour = G.C.UI.BACKGROUND_INACTIVE }
}

-- Rival
-- jd_def["j_poke_rival"] = {
--     text = {
--         { ref_table = "card.joker_display_values", ref_value = "plus", colour = G.C.MULT },
--         { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT },        
--         {
--             border_nodes = {
--                 { ref_table = "card.joker_display_values", ref_value = "x" },
--                 { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" },
--             },
--         },
--     },
--     calc_function = function(card)
--         if card.ability.extra.form == 0 then
--             card.joker_display_values.plus = "+"
--             card.joker_display_values.mult = card.ability.extra.mult
--             card.joker_display_values.x = ""
--             card.joker_display_values.xmult = ""
--         end
--         if card.ability.extra.form == 1 then
--             card.joker_display_values.plus = "+"
--             card.joker_display_values.mult = card.ability.extra.mult * 2
--             card.joker_display_values.x = ""
--             card.joker_display_values.xmult = ""
--         end
--         if card.ability.extra.form > 1 then
--             card.joker_display_values.plus = ""
--             card.joker_display_values.mult = ""
--             card.joker_display_values.x = "X"
--             card.joker_display_values.xmult = card.ability.extra.Xmult
--         end
--     end
-- }
