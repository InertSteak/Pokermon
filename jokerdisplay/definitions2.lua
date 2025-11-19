
local jd_def = JokerDisplay.Definitions


--	Chikorita
jd_def["j_poke_chikorita"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD }
  },
  reminder_text = {
    {text = "End of Round"}
  },
  calc_function = function(card)
    -- beyond_start is a hard coded number and if changed will need to be updated here.
    local beyond_start = 4
    local count = 0
    local cards_in_hand = {}
    for i, playing_card in ipairs(G.hand.cards) do
      if not playing_card.highlighted then
        table.insert(cards_in_hand, playing_card)
      end
    end
    for k, playing_card in ipairs(cards_in_hand) do
      if k > beyond_start and not playing_card.debuff and not (playing_card.facing == 'back') then
        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
      end
    end
    card.joker_display_values.money = card.ability.extra.money * count
  end
}

--	Bayleef
jd_def["j_poke_bayleef"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD }
  },
  reminder_text = {
    {text = "End of Round"}
  },
  calc_function = function(card)
    -- beyond_start is a hard coded number and if changed will need to be updated here.
    local beyond_start = 2
    local count = 0
    local cards_in_hand = {}
    for i, playing_card in ipairs(G.hand.cards) do
      if not playing_card.highlighted then
        table.insert(cards_in_hand, playing_card)
      end
    end
    for k, playing_card in ipairs(cards_in_hand) do
      if k > beyond_start and not playing_card.debuff and not (playing_card.facing == 'back') then
        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
      end
    end
    card.joker_display_values.money = card.ability.extra.money * count
  end
}

--	Meganium
jd_def["j_poke_meganium"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD }
  },
  reminder_text = {
    {text = "End of Round"}
  },
  calc_function = function(card)
    local count = 0
    for i, playing_card in ipairs(G.hand.cards) do
      if not (playing_card.facing == 'back') and not playing_card.debuff and not playing_card.highlighted then
        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
      end
    end
    card.joker_display_values.money = card.ability.extra.money * count
  end
}

--	Cyndaquil
jd_def["j_poke_cyndaquil"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
end
}

--	Quilava
jd_def["j_poke_quilava"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
end
}

--	Typhlosion
jd_def["j_poke_typhlosion"] = { 
    text = {
        { text = "+", colour = G.C.MULT },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
            },
            border_colour = G.C.MULT
        }
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
    card.joker_display_values.mult = card.ability.extra.mult * G.GAME.current_round.discards_left
    card.joker_display_values.Xmult = 1 + (card.ability.extra.Xmult * G.GAME.current_round.discards_left)
    end
}

--	Totodile
jd_def["j_poke_totodile"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Croconaw
jd_def["j_poke_croconaw"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Feraligatr
jd_def["j_poke_feraligatr"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Sentret
jd_def["j_poke_sentret"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "Last Played: "},
        {ref_table = "card.ability.extra", ref_value = "last_hand" }
    },
    text_config = { colour = G.C.MULT },
}

--	Furret
jd_def["j_poke_furret"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    reminder_text = {
        {text = "Last Played: "},
        {ref_table = "card.ability.extra", ref_value = "last_hand" }
    },
    text_config = { colour = G.C.MULT },
}

--	Hoothoot
jd_def["j_poke_hoothoot"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    if G.scry_view then
        for k, v in pairs(G.scry_view.cards) do
            chips = chips + poke_total_chips(v) * (v:get_seal() == 'Red' and 2 or 1)
        end
        card.joker_display_values.chips = chips
    else
        card.joker_display_values.chips = 0
    end
end
}

--	Noctowl
jd_def["j_poke_noctowl"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
calc_function = function(card)
    local chips = 0
    if G.scry_view then
        for k, v in pairs(G.scry_view.cards) do
            chips = chips + poke_total_chips(v) * (v:get_seal() == 'Red' and 2 or 1)
        end
        card.joker_display_values.chips = chips
    else
        card.joker_display_values.chips = 0
    end
end
}

--	Ledyba
jd_def["j_poke_ledyba"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
    calc_function = function(card)
    card.joker_display_values.mult = card.ability.extra.mult * math.floor(#G.deck.cards/5)
    end

}

--	Ledian
jd_def["j_poke_ledian"] = { 
text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
},
text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult * math.floor(#G.deck.cards/3)
end

}

--	Spinarak
jd_def["j_poke_spinarak"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Ariados
jd_def["j_poke_ariados"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Crobat
jd_def["j_poke_crobat"] = {
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

--	Chinchou
jd_def["j_poke_chinchou"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.chips = 0
    card.joker_display_values.money = 0
    local text, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Pair'] and next(poker_hands['Pair']) then
      card.joker_display_values.chips = card.ability.extra.chips
      card.joker_display_values.money = card.ability.extra.money
    end
    card.joker_display_values.localized_text = localize('Pair', 'poker_hands')
  end
}

--	Lanturn
jd_def["j_poke_lanturn"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.chips = 0
    card.joker_display_values.money = 0
    local water_count = #find_pokemon_type("Water")
    local lightning_count = #find_pokemon_type("Lightning")
    local text, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Pair'] and next(poker_hands['Pair']) then
      card.joker_display_values.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * water_count)
      card.joker_display_values.money = card.ability.extra.money + (card.ability.extra.money_mod * lightning_count)
    end
    card.joker_display_values.localized_text = localize('Pair', 'poker_hands')
  end
}

--	Pichu
jd_def["j_poke_pichu"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
      },
    },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.ability.extra", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" },
  },
  calc_function = function(card)
    card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
  end
}

--	Cleffa
jd_def["j_poke_cleffa"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Igglybuff
jd_def["j_poke_igglybuff"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Togepi
jd_def["j_poke_togepi"] = {
    text = {
        {
            border_nodes = {
                {
                    dynatext = {
                        string = {"X0.50","X0.55","X0.60","X0.65","X0.70","X0.75","X0.80","X0.85","X0.90","X0.95",
                        "X1.00","X1.05","X1.10","X1.15","X1.20","X1.25","X1.30","X1.35","X1.40","X1.45","X1.50"
                    },
                        colours = { G.C.WHITE },
                        pop_in_rate = 9999999,
                        silent = true,
                        random_element = true,
                        pop_delay = 0.5,
                        scale = 0.4,
                        min_cycle_time = 0
                    }
                },
            },
        },
    },
}

--	Togetic
jd_def["j_poke_togetic"] = {
  text = {
    { text = 'Max: ', colour = G.C.GREY },
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "exp", colour = G.C.CHIPS },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult_multi", retrigger_type = "exp" },
      },
    },
  },
  calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= "Unknown" then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card.ability.effect and scoring_card.ability.effect == "Lucky Card" then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.chips = card.ability.extra.chips * count
    card.joker_display_values.Xmult_multi = card.ability.extra.Xmult_multi ^ count
  end
}

--	Natu
--	Xatu
--	Mareep
jd_def["j_poke_mareep"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Flaaffy
jd_def["j_poke_flaaffy"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Ampharos
jd_def["j_poke_ampharos"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Mega Ampharos
jd_def["j_poke_mega_ampharos"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Bellossom
jd_def["j_poke_bellossom"] = {
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
    local editioncount = 0
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
        for _, scoring_card in pairs(scoring_hand) do
            if not (scoring_card.facing == 'back') and not scoring_card.debuff and scoring_card.edition then
                editioncount = editioncount + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
            end
        end
    end
    card.joker_display_values.lower = editioncount * card.ability.extra.mult
    card.joker_display_values.upper = count * card.ability.extra.mult
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. ",9,7,5,3)"
end
}

--	Marill
jd_def["j_poke_marill"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
      local enhanced_found = false
      local unenhanced_found = false
      local xmult = 1
      local text, _, scoring_hand = JokerDisplay.evaluate_hand()
      if text ~= "Unknown" then
        for _, scoring_card in pairs(scoring_hand) do
          if scoring_card.config.center == G.P_CENTERS.c_base then
            unenhanced_found = true
          else
            enhanced_found = true
          end
        end
      end
      if (enhanced_found == true) and (unenhanced_found == true) then
        card.joker_display_values.Xmult = card.ability.extra.Xmult
      else
        card.joker_display_values.Xmult = xmult
      end
    end
}

--	Azumarill
jd_def["j_poke_azumarill"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
      local bonus_found = false
      local nonbonus_found = false
      local text, _, scoring_hand = JokerDisplay.evaluate_hand()
      if text ~= "Unknown" then
        for _, scoring_card in pairs(scoring_hand) do
          if scoring_card.ability.effect and scoring_card.ability.effect == "Bonus Card" then
            bonus_found = true
          else
            nonbonus_found = true
          end
        end
      end
      if (bonus_found == true) and (nonbonus_found == true) then
        card.joker_display_values.Xmult = card.ability.extra.Xmult * 2
      else
        card.joker_display_values.Xmult = card.ability.extra.Xmult
      end
    end
}

--	Sudowoodo
jd_def["j_poke_sudowoodo"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.localized_text = localize("k_face_cards")
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    return playing_card:is_face() and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
  end
}

--	Politoed
jd_def["j_poke_politoed"] = {
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
        local suit = G.GAME.poke_poli_suit or "Spades"
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
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        local suit = joker_card.ability.extra.suits[joker_card.ability.extra.indice]
        local total = #find_pokemon_type("Water")
        local cards = scoring_hand and #scoring_hand or 0
        local pos
        local remainder
        if cards > 0 then
          for i=1, cards do
            if scoring_hand[i] == playing_card then
              pos = i
              break
            end
          end
          local retriggers = math.floor(total/cards)
          remainder = total % cards
          if pos <= remainder then retriggers = retriggers + 1 end
          if held_in_hand then return 0 end
              return (playing_card:is_suit(suit)) and (retriggers * JokerDisplay.calculate_joker_triggers(joker_card or 0)) or 0
        end
    end
}

--	Hoppip
--	Skiploom
--	Jumpluff
--	Aipom
--	Sunkern
--	Sunflora
--	Yanma
jd_def["j_poke_yanma"] = {
  text = {
    { text = "Min: ", colour = G.C.GREY, },
    { text = "+", colour = G.C.CHIPS , },
    {ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
    { text = " "},
    { text = "+", colour = G.C.MULT , },
    {ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT }
  },
  extra = {
    {
      { text = "Max: ", colour = G.C.GREY, },
      { text = "+", colour = G.C.CHIPS , },
      {ref_table = "card.joker_display_values", ref_value = "chips2", colour = G.C.CHIPS },
      { text = " "},
      { text = "+", colour = G.C.MULT , },
      {ref_table = "card.joker_display_values", ref_value = "mult2", colour = G.C.MULT },
    },
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
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
              scoring_card:get_id() == 6 then
                  count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
              end
          end
      end
      card.joker_display_values.chips = count * card.ability.extra.chips
      card.joker_display_values.mult = count * card.ability.extra.mult
      card.joker_display_values.chips2 = count * card.ability.extra.chips2
      card.joker_display_values.mult2 = count * card.ability.extra.mult2
      local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'yanma')
      card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
      card.joker_display_values.localized_text = "(3,6)"
  end
}

--	Wooper
jd_def["j_poke_wooper"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  calc_function = function(card)
    local negative_mult = 0
    for k, v in pairs(G.deck.cards) do
      if v:is_face() then
        negative_mult = negative_mult + card.ability.extra.mult_mod
      end
    end
    card.joker_display_values.mult = math.max(0, card.ability.extra.mult - negative_mult)
  end
}

--	Quagsire
jd_def["j_poke_quagsire"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  calc_function = function(card)
    local negative_mult = 0
    for k, v in pairs(G.deck.cards) do
      if v:is_face() then
        negative_mult = negative_mult + card.ability.extra.mult_mod
      end
    end
    card.joker_display_values.mult = math.max(0, card.ability.extra.mult - negative_mult)
  end
}

--	Espeon
jd_def["j_poke_espeon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    reminder_text = {
        {ref_table = "card.joker_display_values", ref_value = "rank"},
        {text = " of "},
        {ref_table = "card.joker_display_values", ref_value = "suit"}
    },
    calc_function = function(card)
        local rank = G.GAME.current_round.espeon_rank
        local suit = G.GAME.current_round.espeon_suit
        local count = 0
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
        card.joker_display_values.Xmult = 1 * (card.ability.extra.Xmult_multi^count)
        card.joker_display_values.rank = localize(rank or "2", 'ranks')
        card.joker_display_values.suit = localize(suit or "Spades", 'suits_plural')
    end,
        retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
            local rank = G.GAME.current_round.espeon_rank
            if held_in_hand then return 0 end
            return (playing_card:get_id() == rank) and
                joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 1
        end
}

--	Umbreon
jd_def["j_poke_umbreon"] = { 
    text = {
        {ref_table = "card.joker_display_values", ref_value = "hand", colour = G.C.GREY}
},
    calc_function = function(card)
        card.joker_display_values.hand = localize(card.ability.extra.hand_played, 'poker_hands')
end
}
--	Murkrow
jd_def["j_poke_murkrow"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
    calc_function = function(card)
        local dark = #find_pokemon_type("Dark")
        card.joker_display_values.Xmult = 1 + (dark * card.ability.extra.Xmult)
    end
}

--	Slowking
jd_def["j_poke_slowking"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_multi", retrigger_type = "exp" },
            },
        },
    },
}

--	Misdreavus
jd_def["j_poke_misdreavus"] = { 
text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
},
text_config = { colour = G.C.CHIPS },
}

--	Unown
jd_def["j_poke_unown"] = {
  text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
  },
  text_config = { colour = G.C.MULT },
  reminder_text = {
    { text = "[" },
    { ref_table = "card.joker_display_values", ref_value = "nature1",},
    { text = "]" },
  },
  calc_function = function(card)
    card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
  end
}

--	Wobbuffet
jd_def["j_poke_wobbuffet"] = {
reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
},
calc_function = function(card)
    card.joker_display_values.localized_text = "(6,7,8,9,10)"
end,
retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    return (playing_card:get_id() == 6 or playing_card:get_id() == 7 or
            playing_card:get_id() == 8 or playing_card:get_id() == 9 or playing_card:get_id() == 10) and
        joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
end
}

--	Girafarig
jd_def["j_poke_girafarig"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
      }
    }
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text_face", colour = G.C.ORANGE },
    { text = ")" },
  },
  text_config = { colour = G.C.WHITE },
  calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    local face_cards = {}
    if poker_hands['Two Pair'] and next(poker_hands['Two Pair']) then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:is_face() then
          table.insert(face_cards, scoring_card)
        end
      end
    end
    local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
    local last_face = JokerDisplay.calculate_rightmost_card(face_cards)
    if first_face ~= last_face then
      card.joker_display_values.x_mult = math.max(last_face and
        (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(last_face, scoring_hand) + (JokerDisplay.calculate_card_triggers(first_face, scoring_hand)))) or 1, 1)
    else
      card.joker_display_values.x_mult = math.max(last_face and
        (card.ability.extra.Xmult_multi ^ (JokerDisplay.calculate_card_triggers(last_face, scoring_hand))) or 1, 1)
    end
    card.joker_display_values.localized_text = localize('Two Pair', 'poker_hands')
    card.joker_display_values.localized_text_face = localize("k_face_cards")
  end
}



--	Pineco
jd_def["j_poke_pineco"] = { 
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

--	Forretress
jd_def["j_poke_forretress"] = { 
  text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
  },
  text_config = { colour = G.C.CHIPS },
  calc_function = function(card)
    local chips = 0
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

      -- Set chips based on the condition
      if count == pos - 1 then
        chips = card.ability.extra.chips or 1
      end
    else
      -- Handle cases where there are not enough jokers
      chips = card.ability.extra.chips
    end

    local playing_hand = next(G.play.cards)
    local steel_found = false
    for _, playing_card in ipairs(G.hand.cards) do
      if playing_hand or not playing_card.highlighted then
        if playing_card.facing and not (playing_card.facing == 'back') and SMODS.has_enhancement(playing_card, "m_steel") then
          steel_found = true
        end
      end
    end

    -- Update `joker_display_values` with count and pos and chips
    if steel_found == true then
      card.joker_display_values.chips = chips * 2
    else
      card.joker_display_values.chips = chips
    end
    card.joker_display_values.count = count
    card.joker_display_values.pos = pos
end
}

--	Dunsparce
--	Gligar
jd_def["j_poke_gligar"] = {
  text = {
      {
          border_nodes = {
              { text = "X" },
              { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
          }
      }
  },
  reminder_text = {
      { text = "(" },
      { ref_table = "card.joker_display_values", ref_value = "gligar_suit" },
      { text = ")" }
  },
  calc_function = function(card)
    local count = 0
    local suit_count = 0
    local playing_hand = next(G.play.cards)
    for _, playing_card in ipairs(G.hand.cards) do
        if playing_hand or not playing_card.highlighted then
            if not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:is_suit(G.GAME.current_round.gligar_suit) then
                suit_count = suit_count + 1
            end
        end
    end
    if G.play then
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card then
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
    end
    card.joker_display_values.x_mult = (1 + (card.ability.extra.Xmult_multi * suit_count)) ^ count
    card.joker_display_values.gligar_suit = localize(G.GAME.current_round.gligar_suit, 'suits_singular')
  end,
  style_function = function(card, text, reminder_text, extra)
      if reminder_text and reminder_text.children[2] then
          reminder_text.children[2].config.colour = lighten(G.C.SUITS[G.GAME.current_round.gligar_suit], 0.35)
      end
      return false
  end
}

--	Steelix
jd_def["j_poke_steelix"] = {
    text = {
        {ref_table ="card.joker_display_values", ref_value = "status", colour = G.C.GREY}
    },
    calc_function = function(card)
        local status = "Not Active!"
        if G.GAME.current_round.hands_played == 0 then status = "Active!" end
        card.joker_display_values.status = status
    end
}

jd_def["j_poke_mega_steelix"] = {
    text = {
      { text = "+$", colour = G.C.GOLD },
      { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
    },
    reminder_text = {
      { ref_table = "card.joker_display_values", ref_value = "localized_text" },
    },
    calc_function = function(card)
      local diamond_tally = 0
      for _, playing_card in ipairs(G.playing_cards) do
        if playing_card:is_suit(card.ability.extra.suit) then diamond_tally = diamond_tally + 1 end
      end

      card.joker_display_values.money = diamond_tally
      card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

--	Snubbull
jd_def["j_poke_snubbull"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
}
    }
  },
  text_config = { colour = G.C.WHITE},
  calc_function = function(card)
    local xmult = card.ability.extra.Xmult_multi
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    face_cards = {}
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
          if scoring_card:is_face() then
              table.insert(face_cards, scoring_card)
          end
      end
    end
    local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
    if first_face then
      xmult = card.ability.extra.Xmult_multi
    end
    card.joker_display_values.x_mult = math.max(first_face and (xmult ^ JokerDisplay.calculate_card_triggers(first_face, scoring_hand)) or 1, 1)
  end
}

--	Granbull
jd_def["j_poke_granbull"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
      }
    }
  },
  text_config = { colour = G.C.WHITE},
  calc_function = function(card)
    local xmult = card.ability.extra.Xmult_multi
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    face_cards = {}
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
          if scoring_card:is_face() then
              table.insert(face_cards, scoring_card)
          end
      end
    end
    local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
    if first_face then
      if first_face:get_id() == 12 then
        xmult = card.ability.extra.Xmult_multi2
      else
        xmult = card.ability.extra.Xmult_multi
      end
    end
    card.joker_display_values.x_mult = math.max(first_face and (xmult ^ JokerDisplay.calculate_card_triggers(first_face, scoring_hand)) or 1, 1)
  end
}

--	Qwilfish
jd_def["j_poke_qwilfish"] = {
    text = {
        { text = "+", colour = G.C.CHIPS},
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS }
    },
}

--	Scizor
jd_def["j_poke_scizor"] = { 
    text = {
        { text = "+",  colour = G.C.CHIPS },
        { ref_table = "card.ability.extra", ref_value = "scizor_chips", retrigger_type = "mult",  colour = G.C.CHIPS  },
        {text = " "},
        { text = "+",  colour = G.C.MULT },
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult",  colour = G.C.MULT  },
        {text = " "},
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.ability.extra", ref_value = "scizor_Xmult", colour = G.C.WHITE }
            },
        },
    },
}

--	Mega Scizor
jd_def["j_poke_mega_scizor"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "count", colour = G.C.ORANGE },
    { text = "x" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.BLUE },
    { text = ")" },
  },
  calc_function = function(card)
    local count = 0
    if G.jokers then
      for _, joker_card in ipairs(G.jokers.cards) do
        if joker_card.config.center.rarity and joker_card.config.center.rarity == 1 then
          count = count + 1
        end
      end
    end
    card.joker_display_values.count = count
    card.joker_display_values.localized_text = localize("k_common")
  end,
  mod_function = function(card, mod_joker)
    return { x_mult = (card.config.center.rarity == 1 and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
  end
}

--	Shuckle
--	Heracross
jd_def["j_poke_heracross"] = {
  text = {
    {
      border_nodes = {
        { text = "X", colour = G.C.WHITE  },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", colour = G.C.WHITE }
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
        else
          samerank = false
        end
    end
    if samerank == false then
        card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
        card.joker_display_values.Xmult = 1
    end
  end
}

-- Mega Heracross
jd_def["j_poke_mega_heracross"] = {
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    if #JokerDisplay.current_hand >= 5 then
      return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end
  end
}

--	Sneasel
jd_def["j_poke_sneasel"] = {
  text = {
    { text = "+$", colour = G.C.GOLD},
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD  },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "sneaselcard", colour = G.C.ORANGE },
    { text = ")" }
  },
  calc_function = function(card)
    local rank_found = false
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()

    if poker_hands['High Card'] and next(poker_hands['High Card']) and #JokerDisplay.current_hand == 1 then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == G.GAME.current_round.sneaselcard.id then
                rank_found = true
            end
        end
    end
    if rank_found == true then
      card.joker_display_values.money = card.ability.extra.money
    else
      card.joker_display_values.money = 0
    end
    card.joker_display_values.sneaselcard = localize(G.GAME.current_round.sneaselcard.rank, 'ranks')
  end
}

--	Teddiursa
jd_def["j_poke_teddiursa"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  }
}

--	Ursaring
jd_def["j_poke_ursaring"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  }
}

--	Slugma
jd_def["j_poke_slugma"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
  },
  reminder_text = {
    { text = "Hands Remaining: ", colour = G.C.GREY },
    { ref_table = "card.ability.extra", ref_value = "hands", colour = G.C.GREY }
  },
}

--	Magcargo
jd_def["j_poke_magcargo"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
  },
  reminder_text = {
    { text = "Hands Remaining: ", colour = G.C.GREY },
    { ref_table = "card.ability.extra", ref_value = "hands", colour = G.C.GREY }
  },
}

--	Swinub
jd_def["j_poke_swinub"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
    { text = " +$", colour = G.C.GOLD},
    { ref_table = "card.ability.extra", ref_value = "money", colour = G.C.GOLD  },
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local count = 0
    local first_card_triggers = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    if first_card then
      first_card_triggers = JokerDisplay.calculate_card_triggers(first_card, scoring_hand)
    end
    if text ~= "Unknown" then
      for _, scoring_card in pairs(scoring_hand) do
        if (scoring_card.ability.effect and scoring_card.ability.effect == "Glass Card") or (scoring_card.ability.effect and scoring_card.ability.effect == "Stone Card") then
          count = count + 1
        end
      end
    end
    card.joker_display_values.mult = card.ability.extra.mult * count * first_card_triggers
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'swinub')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
  end
}

--	Piloswine
jd_def["j_poke_piloswine"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
    { text = " +$", colour = G.C.GOLD},
    { ref_table = "card.ability.extra", ref_value = "money", colour = G.C.GOLD  },
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local count = 0
    local first_card_triggers = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    if first_card then
      first_card_triggers = JokerDisplay.calculate_card_triggers(first_card, scoring_hand)
    end
    if text ~= "Unknown" then
      for _, scoring_card in pairs(scoring_hand) do
        if (scoring_card.ability.effect and scoring_card.ability.effect == "Glass Card") or (scoring_card.ability.effect and scoring_card.ability.effect == "Stone Card") then
          count = count + 1
        end
      end
    end
    card.joker_display_values.mult = card.ability.extra.mult * count * first_card_triggers
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'piloswine')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
  end
}

--	Corsola
jd_def["j_poke_corsola"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
calc_function = function(card)
card.joker_display_values.mult = card.ability.extra.mult_mod * card.ability.extra.corsola_tally
end
}

--	Remoraid
jd_def["j_poke_remoraid"] = {
  text = {
    { text = "(", colour = G.C.GREY },
    { ref_table = "card.joker_display_values", ref_value = "active", colour = G.C.GREY },
    { text = ")", colour = G.C.GREY },
  },
  calc_function = function(card)
    if G.GAME and G.GAME.current_round.hands_played == 0 then
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    if G.GAME and G.GAME.current_round.hands_played == 0 then
      return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    else
      return 0
    end
  end
}

--	Octillery
jd_def["j_poke_octillery"] = {
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
  end
}

--	Delibird
--	Mantine
jd_def["j_poke_mantine"] = { 
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.CHIPS },
    }

--	Skarmory
jd_def["j_poke_skarmory"] = { 
    text = {
        {
            border_nodes = {
                { text = "X", colour = G.C.WHITE  },
                { ref_table = "card.joker_display_values", ref_value = "Xmult", colour = G.C.WHITE }
            },
        },
    },
    calc_function = function(card)
        local playing_hand = next(G.play.cards)
        local count = 0
        for _, playing_card in ipairs(G.hand.cards) do
            if playing_hand or not playing_card.highlighted then
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and (SMODS.has_enhancement(playing_card, "m_poke_hazard") or SMODS.has_enhancement(playing_card, "m_steel") ) then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.Xmult = 1 + (count * card.ability.extra.Xmult_mod)
    end
}

--	Houndour
--	Houndoom
--	Mega Houndoom
jd_def["j_poke_mega_houndoom"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Kingdra
jd_def["j_poke_kingdra"] = { 
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
        {text = " "},
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        }
    },
}


--	Phanpy
jd_def["j_poke_phanpy"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Donphan
jd_def["j_poke_donphan"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Porygon2
--	Stantler
jd_def["j_poke_stantler"] = {
  text = {
    { text = "+"},
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" },
  },
  text_config = { colour = G.C.MULT },
  calc_function = function(card)
    local mult = 0
    local highest = nil
    local highest_card = nil

    if G.scry_view then
      for k, v in pairs(G.scry_view.cards) do
        if not highest then highest = v.base.id; highest_card = v end
        if v.base.id > highest then
          highest = v.base.id
          highest_card = v
        end
        if highest_card ~= nil then
          if highest_card.debuff == false then
            mult = highest_card.base.nominal * (highest_card:get_seal() == 'Red' and 2 or 1)
          else
            mult = 0
          end
        end
      end
    end
    card.joker_display_values.mult = mult
  end
}

--	Smeargle
--	Tyrogue
jd_def["j_poke_tyrogue"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Hitmontop
jd_def["j_poke_hitmontop"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Smoochum
jd_def["j_poke_smoochum"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Elekid
jd_def["j_poke_elekid"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Magby
jd_def["j_poke_magby"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Miltank
jd_def["j_poke_miltank"] = {
    text = {
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },

    },
    reminder_text = {
        { ref_table = "card.joker_display_values", ref_value = "localized_text" },
    },
    calc_function = function(card)
        local type = #find_pokemon_type("Colorless")
        card.joker_display_values.money = type * card.ability.extra.money
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
    end
}

--	Blissey
jd_def["j_poke_blissey"] = {
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

--	Raikou
jd_def["j_poke_raikou"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "(", colour = G.C.GREY },
    { ref_table = "card.joker_display_values", ref_value = "active", colour = G.C.GREY },
    { text = ")", colour = G.C.GREY },
  },
  calc_function = function(card)
    local money = 0
    local status = false
    if G.GAME and G.GAME.current_round.hands_played == 0 then
      status = true
      card.joker_display_values.active = localize("jdis_active")
    else
      status = false
      card.joker_display_values.active = localize("jdis_inactive")
    end
    if #JokerDisplay.current_hand == 1 and status == true then
      money = 9
    end
    card.joker_display_values.money = money
  end
}

--	Entei
jd_def["j_poke_entei"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Suicune
--	Larvitar
--	Pupitar
--	Tyranitar
--	Lugia
jd_def["j_poke_lugia"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
  reminder_text = {
    { text = " (", colour = G.C.GREY },
    { ref_table = "card.joker_display_values", ref_value = "drawn", colour = G.C.GREY },
    { text = "/", colour = G.C.GREY },
    { ref_table = "card.ability.extra", ref_value = "to_draw", colour = G.C.GREY },
    { text = ")", colour = G.C.GREY },
  },
  calc_function = function(card)
    card.joker_display_values.drawn = card.ability.extra.to_draw - card.ability.extra.drawn
  end
}

--	Ho-oh
jd_def["j_poke_ho_oh"] = {
  text = {
    { text = "(", colour = G.C.GREY },
    { ref_table = "card.joker_display_values", ref_value = "active", colour = G.C.GREY },
    { text = ")", colour = G.C.GREY },
  },
  calc_function = function(card)
    if card.ability.extra.used < card.ability.extra.limit then
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end
}

--	Celebi
jd_def["j_poke_celebi"] = {
    text = {
        {text = "[", colour = G.C.GREY},
        {ref_table ="card.ability.extra", ref_value = "skip_count", colour = G.C.GREY},
        {text = "/", colour = G.C.GREY},
        {ref_table ="card.ability.extra", ref_value = "skip_target", colour = G.C.ORANGE},
        {text = "]", colour = G.C.GREY},
    }
}






