local jd_def = JokerDisplay.Definitions


--	Rowlet
--	Dartrix
--	Decidueye
--	Litten
--	Torracat
--	Incineroar
--	Popplio
--	Brionne
--	Primarina
--	Pikipek
--	Trumbeak
--	Toucannon
--	Yungoos
--	Gumshoos
--	Grubbin
jd_def["j_poke_grubbin"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local count = #find_pokemon_type("Lightning")
        if count >= 1 then
          card.joker_display_values.mult = card.ability.extra.mult * 3
        else
          card.joker_display_values.mult = card.ability.extra.mult
        end
    end
}

--	Charjabug
jd_def["j_poke_charjabug"] = {
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
        local count = #find_pokemon_type("Lightning")
        card.joker_display_values.mult = card.ability.extra.mult * count
    end
}
        
--	Vikavolt
jd_def["j_poke_vikavolt"] = {
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
        local count = #find_pokemon_type("Lightning")
        if is_type(card, "Lightning") then
            count = count - 1
          end
        card.joker_display_values.Xmult = 1 + (card.ability.extra.Xmult * count)
    end
}

--	Crabrawler
--	Crabominable
--	Oricorio
--	Cutiefly
--	Ribombee
--	Rockruff
jd_def["j_poke_rockruff"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
  },
  calc_function = function(card)
    local count = 0
    local mult = card.ability.extra.mult
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if not scoring_card:is_face() then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.mult = count * mult
  end
}

--	Lycanroc (Midday)
jd_def["j_poke_lycanroc_day"] = {
  text = {
    { text = "+", colour = G.C.CHIPS},
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " " },
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
  },
  calc_function = function(card)
    local even_count = 0
    local non_even_count = 0
    local chips = card.ability.extra.chip_mod
    local mult = card.ability.extra.mult
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if G.GAME and G.GAME.current_round.hands_played == 0 and #JokerDisplay.current_hand == 1 then
      if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
          non_even_count = non_even_count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 2 or scoring_card:get_id() == 4 or scoring_card:get_id() == 6 or scoring_card:get_id() == 8 or scoring_card:get_id() == 10 then
          even_count = even_count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.mult = even_count * mult
    card.joker_display_values.chips = non_even_count * chips
  end
}

--	Lycanroc (Midnight)
jd_def["j_poke_lycanroc_night"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
  },
  calc_function = function(card)
    local count = 0
    local mult = card.ability.extra.mult
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 3 or scoring_card:get_id() == 5 or scoring_card:get_id() == 7 or scoring_card:get_id() == 9 or scoring_card:get_id() == 14 then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.mult = count * mult
  end
}

--	Lycanroc (Dusk)
jd_def["j_poke_lycanroc_dusk"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT}
  },
  calc_function = function(card)
    local count = 0
    local mult = card.ability.extra.mult
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if not scoring_card:is_face() then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.mult = count * mult
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    local even_cards = {}
    local odd_cards = {}
    local even_triggered = true
    local odd_triggered = true
    if joker_card.ability.extra.even_triggered == nil then
      even_triggered = false
    end
    if joker_card.ability.extra.odd_triggered == nil then
      odd_triggered = false
    end
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    for _, scoring_card in pairs(scoring_hand) do
      if scoring_card:get_id() == 2 or scoring_card:get_id() == 4 or scoring_card:get_id() == 6 or scoring_card:get_id() == 8 or scoring_card:get_id() == 10 then
        table.insert(even_cards, scoring_card)
      end
      if scoring_card:get_id() == 3 or scoring_card:get_id() == 5 or scoring_card:get_id() == 7 or scoring_card:get_id() == 9 or scoring_card:get_id() == 14 then
        table.insert(odd_cards, scoring_card)
      end
    end
    local first_even = scoring_hand and JokerDisplay.calculate_leftmost_card(even_cards)
    local first_odd = scoring_hand and JokerDisplay.calculate_leftmost_card(odd_cards)
    if playing_card == first_even and not even_triggered then
      return 1
    end
    if playing_card == first_odd and not odd_triggered then
      return 1
    end
  end
}

--	Wishiwashi
--	Mareanie
--	Toxapex
--	Mudbray
--	Mudsdale
--	Dewpider
--	Araquanid
--	Fomantis
--	Lurantis
--	Morelull
--	Shiinotic
--	Salandit
--	Salazzle
--	Stufful
--	Bewear
--	Bounsweet
--	Steenee
--	Tsareena
--	Comfey
--	Oranguru
--	Passimian
--	Wimpod
--	Golisopod
--	Sandygast
--	Palossand
--	Pyukumuku
--	Type: Null
--	Silvally
--	Minior
--	Komala
--	Turtonator
--	Togedemaru
--	Mimikyu
jd_def["j_poke_mimikyu"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS }
    },
    calc_function = function(card)
        card.joker_display_values.chips = card.ability.extra.chips
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    if scoring_card:is_suit("Hearts") then
                        card.joker_display_values.chips = 0
                    end
                end
            end
        end
    end
}

--	Bruxish
--	Drampa
--	Dhelmise
--	Jangmo-o
--	Hakamo-o
--	Kommo-o
--	Tapu Koko
--	Tapu Lele
--	Tapu Bulu
--	Tapu Fini
--	Cosmog
--	Cosmoem
--	Solgaleo
--	Lunala
--	Nihilego
--	Buzzwole
--	Pheromosa
--	Xurkitree
--	Celesteela
--	Kartana
--	Guzzlord
--	Necrozma
--	Magearna
--	Marshadow
--	Poipole
--	Naganadel
--	Stakataka
--	Blacephalon
--	Zeraora
--	Meltan
--	Melmetal
