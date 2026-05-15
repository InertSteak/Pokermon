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
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
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
jd_def["j_poke_pumpkaboo"] = {
  text = {
    { text = "+", colour = G.C.SECONDARY_SET.Spectral },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = G.C.SECONDARY_SET.Spectral }
  },
  reminder_text = {
    { text = "[", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "jacks_discarded", colour = G.C.GREY },
    { text = "/", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "jack_target", colour = G.C.ORANGE },
    { text = "]", colour = G.C.GREY },
  },
  calc_function = function(card)
    card.joker_display_values.count = 1
  end
}

--	Gourgeist
jd_def["j_poke_gourgeist"] = {
  text = {
    { text = "+", colour = G.C.SECONDARY_SET.Spectral },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = G.C.SECONDARY_SET.Spectral }
  },
  reminder_text = {
    { text = "[", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "jacks_discarded", colour = G.C.GREY },
    { text = "/", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "jack_target", colour = G.C.ORANGE },
    { text = "]", colour = G.C.GREY },
  },
  calc_function = function(card)
    card.joker_display_values.count = 1
  end
}

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
