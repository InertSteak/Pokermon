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
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local chips = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
      chips = card.ability.extra.chips
    end
    card.joker_display_values.chips = chips
    card.joker_display_values.localized_text = localize('Flush', 'poker_hands')
  end
}

--	Pyroar
jd_def["j_poke_pyroar"] = {
  text = {
    { text = "+", colour = G.C.CHIPS},
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " +", colour = HEX("FF7ABF")},
    { ref_table = "card.joker_display_values", ref_value = "energy_card", retrigger_type = "mult", colour = HEX("FF7ABF") },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local chips = 0
    local energy_card = 0
    local _, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
      chips = card.ability.extra.chips
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 12 or scoring_card:get_id() == 13 then
          energy_card = 1
        end
      end
    end
    card.joker_display_values.chips = chips
    card.joker_display_values.energy_card = energy_card
    card.joker_display_values.localized_text = localize('Flush', 'poker_hands')
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
