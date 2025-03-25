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
        {ref_table = "card.ability.extra", ref_value = "rerolls", colour = G.C.ORANGE},
        { text = " [", colour = G.C.GREY},
        { ref_table = "card.ability.extra", ref_value = "reroll_goal", colour = G.C.GREY },
        { text = "]", colour = G.C.GREY}
    },
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