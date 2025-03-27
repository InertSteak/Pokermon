local jd_def = JokerDisplay.Definitions


--	Chespin
--	Quilladin
--	Chesnaught
--	Fennekin
--	Braixen
--	Delphox
--	Froakie
--	Frogadier
--	Greninja
--	Bunnelby
--	Diggersby
--	Fletchling
--	Fletchinder
--	Talonflame
--	Scatterbug
--	Spewpa
--	Vivillon
--	Litleo
jd_def["j_poke_litleo"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS }
    },
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local chips = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
        chips = card.ability.extra.chips
    end
    card.joker_display_values.chips = chips
end
}

--	Pyroar
jd_def["j_poke_pyroar"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS }
    },
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local chips = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
        chips = card.ability.extra.chips
    end
    card.joker_display_values.chips = chips
end
}

--	Flabébé
--	Floette
--	Florges
--	Skiddo
--	Gogoat
--	Pancham
--	Pangoro
--	Furfrou
--	Espurr
--	Meowstic
--	Honedge
--	Doublade
--	Aegislash
--	Spritzee
--	Aromatisse
--	Swirlix
--	Slurpuff
--	Inkay
--	Malamar
--	Binacle
--	Barbaracle
--	Skrelp
--	Dragalge
--	Clauncher
--	Clawitzer
--	Helioptile
--	Heliolisk
--	Tyrunt
--	Tyrantrum
--	Amaura
--	Aurorus
--	Sylveon
jd_def["j_poke_sylveon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    reminder_text = {
        {ref_table = "card.ability.extra", ref_value = "rerolls", colour = G.C.ORANGE},
        { text = " [", colour = G.C.GREY},
        { ref_table = "card.ability.extra", ref_value = "reroll_goal", colour = G.C.GREY },
        { text = "]", colour = G.C.GREY}
        },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
                for i, playing_card in ipairs(G.hand.cards) do
                    if playing_hand or not playing_card.highlighted then
                    if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card.edition then
                        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                    end
                end
        end
        card.joker_display_values.Xmult = 1 * (card.ability.extra.Xmult_multi^count)
    end 
}

--	Hawlucha
--	Dedenne
--	Carbink
--	Goomy
--	Sliggoo
--	Goodra
--	Klefki
--	Phantump
--	Trevenant
--	Pumpkaboo
--	Gourgeist
--	Bergmite
--	Avalugg
--	Noibat
--	Noivern
--	Xerneas
--	Yveltal
--	Zygarde
--	Diancie
--	Hoopa
--	Volcanion