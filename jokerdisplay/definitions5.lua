local jd_def = JokerDisplay.Definitions


--	Victini
--	Snivy
--	Servine
--	Serperior
--	Tepig
--	Pignite
--	Emboar
--	Oshawott
--	Dewott
--	Samurott
--	Patrat
--	Watchog
--	Lillipup
--	Herdier
--	Stoutland
--	Purrloin
--	Liepard
--	Pansage
--	Simisage
--	Pansear
--	Simisear
--	Panpour
--	Simipour
--	Munna
--	Musharna
--	Pidove
--	Tranquill
--	Unfezant
--	Blitzle
--	Zebstrika
--	Roggenrola
jd_def["j_poke_roggenrola"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
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
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
    end
}

--	Boldore
jd_def["j_poke_boldore"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
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
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
    end
}

--	Gigalith
jd_def["j_poke_gigalith"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
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
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        return held_in_hand and SMODS.has_enhancement(playing_card, "m_poke_hazard") and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end
}

--	Woobat
--	Swoobat
--	Drilbur
--	Excadrill
--	Audino
--	Timburr
--	Gurdurr
--	Conkeldurr
--	Tympole
--	Palpitoad
--	Seismitoad
--	Throh
--	Sawk
--	Sewaddle
--	Swadloon
--	Leavanny
--	Venipede
--	Whirlipede
--	Scolipede
--	Cottonee
--	Whimsicott
--	Petilil
--	Lilligant
--	Basculin
--	Sandile
--	Krokorok
--	Krookodile
--	Darumaka
--	Darmanitan
--	Maractus
--	Dwebble
--	Crustle
--	Scraggy
--	Scrafty
--	Sigilyph
--	Yamask
--	Cofagrigus
--	Tirtouga
--	Carracosta
--	Archen
--	Archeops
--	Trubbish
--	Garbodor
--	Zorua
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

--	Zoroark
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

--	Minccino
--	Cinccino
--	Gothita
--	Gothorita
--	Gothitelle
--	Solosis
--	Duosion
--	Reuniclus
--	Ducklett
--	Swanna
--	Vanillite
jd_def["j_poke_vanillite"] = { 
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

--	Vanillish
jd_def["j_poke_vanillish"] = { 
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
--	Vanilluxe
jd_def["j_poke_vanilluxe"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS }
    }
--	Deerling
--	Sawsbuck
--	Emolga
--	Karrablast
--	Escavalier
--	Foongus
--	Amoonguss
--	Frillish
--	Jellicent
--	Alomomola
--	Joltik
--	Galvantula
--	Ferroseed
--	Ferrothorn
--	Klink
--	Klang
--	Klinklang
--	Tynamo
--	Eelektrik
--	Eelektross
--	Elgyem
--	Beheeyem
--	Litwick
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

--	Lampent
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

--	Chandelure
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

--	Axew
--	Fraxure
--	Haxorus
--	Cubchoo
--	Beartic
--	Cryogonal
--	Shelmet
--	Accelgor
--	Stunfisk
--	Mienfoo
--	Mienshao
--	Druddigon
--	Golett
jd_def["j_poke_golett"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        local interval = card.ability.extra.interval or 1 -- Default to interval of 1 if none is provided

                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    if (i % interval == 0) and not (playing_card.facing == 'back') and not playing_card.debuff  then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.Xmult = 1 * (card.ability.extra.Xmult_multi^count)
    end 
}

--	Golurk
jd_def["j_poke_golurk"] = { 
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        local interval = card.ability.extra.interval or 1 -- Default to interval of 1 if none is provided

                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    if (i % interval == 0) and not (playing_card.facing == 'back') and not playing_card.debuff  then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.Xmult = 1 * (card.ability.extra.Xmult_multi^count)
    end 
}

--	Pawniard
--	Bisharp
--	Bouffalant
--	Rufflet
--	Braviary
--	Vullaby
--	Mandibuzz
--	Heatmor
--	Durant
--	Deino
jd_def["j_poke_deino"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        if poker_hands['Three of a Kind'] and next(poker_hands['Three of a Kind']) then
            card.joker_display_values.Xmult = card.ability.extra.Xmult
        else 
            card.joker_display_values.Xmult = 1
        end
    end
}

--	Zweilous
jd_def["j_poke_zweilous"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        if poker_hands['Three of a Kind'] and next(poker_hands['Three of a Kind']) then
            card.joker_display_values.Xmult = card.ability.extra.Xmult
        else 
            card.joker_display_values.Xmult = 1
        end
    end
}

--	Hydreigon
jd_def["j_poke_hydreigon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local _, poker_hands, _ = JokerDisplay.evaluate_hand()
        if poker_hands['Three of a Kind'] and next(poker_hands['Three of a Kind']) then
            card.joker_display_values.Xmult = card.ability.extra.Xmult
        else 
            card.joker_display_values.Xmult = 1
        end
    end
}

--	Larvesta
--	Volcarona
--	Cobalion
--	Terrakion
--	Virizion
--	Tornadus
--	Thundurus
--	Reshiram
--	Zekrom
--	Landorus
--	Kyurem
--	Keldeo
--	Meloetta
--	Genesect












