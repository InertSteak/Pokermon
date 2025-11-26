local jd_def = JokerDisplay.Definitions

--	Treecko
jd_def["j_poke_treecko"] = {
  text = {
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult" },
    { text = "x", scale = 0.35 },
    { text = "$", colour = G.C.GOLD},
    { ref_table = "card.ability.extra", ref_value = "money_mod", colour = G.C.GOLD },
  },
  reminder_text = {
    {text = "["},
    { ref_table = "card.joker_display_values", ref_value = "nature1",},
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature2",},
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature3",},
    {text = "]"},
  },
  calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == card.ability.extra.targets[1].id or
          scoring_card:get_id() == card.ability.extra.targets[2].id or
          scoring_card:get_id() == card.ability.extra.targets[3].id then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.count = count
    card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
    card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
    card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
  end
}

--	Grovyle
jd_def["j_poke_grovyle"] = {
  text = {
      { text = "Max: ", colour = G.C.GREY, },
      { text = "+$",                              colour = G.C.GOLD , },
      {ref_table = "card.joker_display_values",    ref_value = "upper", colour = G.C.GOLD,   }
  },
  extra = {
      {        
              { text = "Min: ", colour = G.C.GREY, },
              { text = "+$",                              colour = G.C.GOLD },
              {ref_table = "card.joker_display_values",    ref_value = "lower", colour = G.C.GOLD,   }
      }
  },
  reminder_text = {
    {text = "["},
    { ref_table = "card.joker_display_values", ref_value = "nature1",},
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature2",},
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature3",},
    {text = "]"},
  },
  calc_function = function(card)
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == card.ability.extra.targets[1].id or
          scoring_card:get_id() == card.ability.extra.targets[2].id or
          scoring_card:get_id() == card.ability.extra.targets[3].id then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.lower = count * card.ability.extra.money_mod
    card.joker_display_values.upper = count * (card.ability.extra.money_mod + 1)
    card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
    card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
    card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
  end
}

--	Sceptile
jd_def["j_poke_sceptile"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "[" },
    { ref_table = "card.joker_display_values", ref_value = "nature1" },
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature2" },
    { text = ", "},
    { ref_table = "card.joker_display_values", ref_value = "nature3" },
    { text = "]" },
  },
  calc_function = function(card)
    local count = 0
    local grass_count = #find_pokemon_type("Grass", card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == card.ability.extra.targets[1].id or
          scoring_card:get_id() == card.ability.extra.targets[2].id or
          scoring_card:get_id() == card.ability.extra.targets[3].id then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    card.joker_display_values.money = count * (card.ability.extra.money_mod + (card.ability.extra.money_increase * grass_count))
    card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
    card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
    card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
  end
}

--	Torchic
jd_def["j_poke_torchic"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
          for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == card.ability.extra.targets[1].id or
              scoring_card:get_id() == card.ability.extra.targets[2].id or
              scoring_card:get_id() == card.ability.extra.targets[3].id then
              count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
          end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Combusken
jd_def["j_poke_combusken"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
          for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == card.ability.extra.targets[1].id or
              scoring_card:get_id() == card.ability.extra.targets[2].id or
              scoring_card:get_id() == card.ability.extra.targets[3].id then
              count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
          end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Blaziken
jd_def["j_poke_blaziken"] = {
    text = {
        { text = "+",                              colour = G.C.MULT },
        { ref_table = "card.joker_display_values",        ref_value = "mult", colour = G.C.MULT },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
          for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:get_id() == card.ability.extra.targets[1].id or
              scoring_card:get_id() == card.ability.extra.targets[2].id or
              scoring_card:get_id() == card.ability.extra.targets[3].id then
              count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
            end
          end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Mudkip
jd_def["j_poke_mudkip"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chip_mod
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Marshtomp
jd_def["j_poke_marshtomp"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chip_mod
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Swampert
jd_def["j_poke_swampert"] = {
    text = {
        { text = "+",                              colour = G.C.CHIPS },
        { ref_table = "card.joker_display_values",        ref_value = "chips", colour = G.C.CHIPS },
    },
    reminder_text = {
            {text = "["},
            { ref_table = "card.joker_display_values", ref_value = "nature1",},
            { text = ", " },
            { ref_table = "card.joker_display_values", ref_value = "nature2",},
            { text = ", "},
            { ref_table = "card.joker_display_values", ref_value = "nature3",},
            {text = "]"},
    },
    calc_function = function(card)
        local count = 0
        local chips = card.ability.extra.chip_mod
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        if text ~= 'Unknown' then
            for _, scoring_card in pairs(scoring_hand) do
                if scoring_card:get_id() == card.ability.extra.targets[1].id or
                   scoring_card:get_id() == card.ability.extra.targets[2].id or
                   scoring_card:get_id() == card.ability.extra.targets[3].id then              
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        end
        card.joker_display_values.chips = count * chips
        card.joker_display_values.nature1 = localize(card.ability.extra.targets[1].value, 'ranks')
        card.joker_display_values.nature2 = localize(card.ability.extra.targets[2].value, 'ranks')
        card.joker_display_values.nature3 = localize(card.ability.extra.targets[3].value, 'ranks')
    end
}

--	Poochyena
jd_def["j_poke_poochyena"] = {
  text = {
    { text = "+" , colour = G.C.MULT},
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT},
  },
}

--	Mightyena
jd_def["j_poke_mightyena"] = {
  text = {
    { text = "+" , colour = G.C.MULT},
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT},
  },
}

--	Zigzagoon
jd_def["j_poke_zigzagoon"] = {
  text = {
    { text = "+", colour = HEX("9AA4B7") },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = HEX("9AA4B7") },
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    card.joker_display_values.count = 1
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'zigzagoon')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
  end
}

--	Linoone
jd_def["j_poke_linoone"] = {
  text = {
    { text = "+", colour = HEX("9AA4B7") },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = HEX("9AA4B7") },
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.count = 1
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'linoone')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
  end
}
--	Wurmple
--	Silcoon
--	Beautifly
--	Cascoon
--	Dustox
--	Lotad
--	Lombre
--	Ludicolo
--	Seedot
--	Nuzleaf
--	Shiftry
--	Taillow
--	Swellow
--	Wingull
--	Pelipper
--	Ralts
--	Kirlia
--	Gardevoir
--	Surskit
--	Masquerain
--	Shroomish
--	Breloom
--	Slakoth
--	Vigoroth
--	Slaking
--	Nincada
--	Ninjask
--	Shedinja
--	Whismur
--	Loudred
--	Exploud
--	Makuhita
--	Hariyama
--	Azurill
jd_def["j_poke_azurill"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Nosepass
jd_def["j_poke_nosepass"] = {
text = {
    {
        border_nodes = {
            { text = "X" },
            { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
        }
    }
},
calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local face_cards = {}
    if text ~= 'Unknown' then
        for _, scoring_card in pairs(scoring_hand) do
            if scoring_card:is_face() then
                table.insert(face_cards, scoring_card)
            end
        end
    end
    local first_face = JokerDisplay.calculate_leftmost_card(face_cards)
    card.joker_display_values.x_mult = first_face and
        (card.ability.extra.Xmult_multi --[[^ JokerDisplay.calculate_card_triggers(first_face, scoring_hand)--]]) or 1
end
}

--	Skitty
--	Delcatty
--	Sableye
--	Mawile
--	Aron
jd_def["j_poke_aron"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Lairon
jd_def["j_poke_lairon"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Aggron
jd_def["j_poke_aggron"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
            },
        },
    },
}

--	Meditite
--	Medicham
--	Electrike
--	Manectric
--	Plusle
--	Minun
--	Volbeat
--	Illumise
--	Roselia
--	Gulpin
--	Swalot
--	Carvanha
--	Sharpedo
--	Wailmer
--	Wailord
--	Numel
jd_def["j_poke_numel"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
  reminder_text = {
    { ref_table ="card.joker_display_values", ref_value = "active", colour = G.C.GREY }
  },
  calc_function = function(card)
    if card.ability.extra.cards_scored >= card.ability.extra.score_goal then
      card.joker_display_values.Xmult = card.ability.extra.Xmult
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.Xmult = 1
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end
}

--	Camerupt
jd_def["j_poke_camerupt"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
  reminder_text = {
    { ref_table ="card.joker_display_values", ref_value = "active", colour = G.C.GREY }
  },
  calc_function = function(card)
    if card.ability.extra.cards_scored >= card.ability.extra.score_goal then
      card.joker_display_values.Xmult = card.ability.extra.Xmult
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.Xmult = 1
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end
}

--	Mega Camerupt
jd_def["j_poke_mega_camerupt"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Torkoal
--	Spoink
--	Grumpig
--	Spinda
--	Trapinch
--	Vibrava
--	Flygon
--	Cacnea
--	Cacturne
--	Swablu
--	Altaria
--	Zangoose
--	Seviper
--	Lunatone
--	Solrock
--	Barboach
--	Whiscash
--	Corphish
--	Crawdaunt
--	Baltoy
--	Claydol
--	Lileep
--	Cradily
--	Anorith
--	Armaldo
--	Feebas
jd_def["j_poke_feebas"] = {
    text = {
        { text = "+" ,
        colour = G.C.MULT},
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", 
        colour = G.C.MULT},
    },
scoring_function = function(playing_card, scoring_hand, joker_card)
    return true
end
}

--	Milotic
jd_def["j_poke_milotic"] = {
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        local first_suit = nil
        local second_suit = nil
        local text, _, scoring_hand = JokerDisplay.evaluate_hand()
        for _, scoring_card in pairs(scoring_hand) do
        if not first_suit and not SMODS.has_no_suit(scoring_card) then
            first_suit = scoring_card.base.suit
        elseif not second_suit and not SMODS.has_no_suit(scoring_card) and scoring_card.base.suit ~= first_suit then
            second_suit = scoring_card.base.suit
        end
        end
        if held_in_hand then
            return 0
        end
        if first_suit and not second_suit then
            return (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
        end
    end
}




--	Castform
--	Kecleon
--	Shuppet
--	Banette
--	Duskull
--	Dusclops
--	Tropius
--	Chimecho
--	Absol
--	Wynaut
jd_def["j_poke_wynaut"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}

--	Snorunt
--	Glalie
--	Spheal
--	Sealeo
--	Walrein
--	Clamperl
--	Huntail
--	Gorebyss
--	Relicanth
--	Luvdisc
--	Bagon
--	Shelgon
--	Salamence
--	Beldum
jd_def["j_poke_beldum"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Metang
jd_def["j_poke_metang"] = {
    text = {
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
}

--	Metagross
jd_def["j_poke_metagross"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
      }
    },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local x_mult = 1
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text == 'Four of a Kind' then
      for _, scoring_card in pairs(scoring_hand) do
        local total_chips = poke_total_chips(scoring_card)
        local retriggers = JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        x_mult = x_mult * (total_chips ^ (retriggers/4))
      end
    end
    card.joker_display_values.localized_text = localize('Four of a Kind', 'poker_hands')
    card.joker_display_values.x_mult = x_mult
  end,
}

--	Regirock
--	Regice
--	Registeel
--	Latias
--	Latios
--	Kyogre
--	Groudon
--	Rayquaza
--	Jirachi
jd_def["j_poke_jirachi_power"] = {
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
        { ref_table = "card.joker_display_values", ref_value = "loyalty_text" },
        { text = ")" },
    },
    calc_function = function(card)
        card.joker_display_values.loyalty_text = localize { type = 'variable', key = (card.ability.extra.loyalty_remaining == 0 and 'loyalty_active' or 'loyalty_inactive'), vars = { card.ability.extra.loyalty_remaining } }

        if card.ability.extra.loyalty_remaining == 0 then
            local total_triggers = 0
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    total_triggers = total_triggers + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
            card.joker_display_values.x_mult = card.ability.extra.Xmult_multi ^ total_triggers
        else
            card.joker_display_values.x_mult = 1
        end
    end
}
-- Can't think of a good way to show this without it being ridiculous
-- jd_def["j_poke_jirachi_fixer"] = {
--     reminder_text = {
--         { text = "(Hand: " },
--         { ref_table = "card.joker_display_values", ref_value = "hand_active_text" },
--         { text = "  Discard: " },
--         { ref_table = "card.joker_display_values", ref_value = "discard_active_text" },
--         { text = ")" },
--     },
--     calc_function = function(card)
--         card.joker_display_values.hand_active_text = localize(G.GAME.current_round.hands_played == 0 and 'k_active_ex' or 'k_copied_ex')
--         card.joker_display_values.discard_active_text = localize(G.GAME.current_round.discards_used == 0 and 'k_active_ex' or 'k_copied_ex')
--     end
-- }

-- jd_def["j_poke_jirachi_copy"] = {
--     reminder_text = {
--         { text = "(" },
--         { ref_table = "card.joker_display_values", ref_value = "blueprint_compat", colour = G.C.RED },
--         { text = ")" }
--     },
--     calc_function = function(card)
--         local copied_joker, copied_debuff = JokerDisplay.calculate_blueprint_copy(card)
--         local true_copy = copied_joker
--         card.joker_display_values.blueprint_compat = localize('k_incompatible')
--         if true_copy then
--             if card.joker_display_values and card.joker_display_values.fake_card and card.joker_display_values.fake_card.config.center.key == true_copy.config.center.key then
--                 true_copy = card.joker_display_values.fake_card
--                 while get_total_energy(true_copy) - get_total_energy(copied_joker) < card.ability.extra.energy_buff do
--                     energize(true_copy, nil, nil, true)
--                     if true_copy.ability.extra and type(true_copy.ability.extra) == "table" then
--                       true_copy.ability.extra.energy_count = (true_copy.ability.extra.energy_count or 0) + 1
--                     else
--                       true_copy.ability.energy_count = (true_copy.ability.energy_count or 0) + 1
--                     end
--                 end
--
--                 true_copy:update_joker_display(true)
--             else
--                 true_copy = copy_card(copied_joker)
--
--                 card.joker_display_values.to_track = {}
--                 card.joker_display_values.extra_to_track = {}
--                 for i = 1, card.ability.extra.energy_buff do
--                   energize(true_copy, nil, nil, true)
--                 end
--                 for k,v in pairs(copied_joker.ability) do
--                     if type(true_copy.ability[k]) ~= "table" then
--                         if true_copy.ability[k] == v then
--                             true_copy.ability[k] = nil
--                         end
--                     end
--                 end
--                 setmetatable(true_copy.ability, {__index=copied_joker.ability})
--                 if type(copied_joker.ability.extra) == "table" then
--                     for k,v in pairs(copied_joker.ability.extra) do
--                         if true_copy.ability.extra[k] == v then
--                             true_copy.ability.extra[k] = nil
--                         end
--                     end
--                     setmetatable(true_copy.ability.extra, {__index=copied_joker.ability.extra})
--                 end
--
--                 if true_copy.ability.extra and type(true_copy.ability.extra) == "table" then
--                   true_copy.ability.extra.energy_count = (true_copy.ability.extra.energy_count or 0) + card.ability.extra.energy_buff
--                   true_copy.ability.extra.c_energy_count = (true_copy.ability.extra.c_energy_count or 0)
--                 else
--                   true_copy.ability.energy_count = (true_copy.ability.energy_count or 0) + card.ability.extra.energy_buff
--                   true_copy.ability.c_energy_count = (true_copy.ability.c_energy_count or 0)
--                 end
--
--                 true_copy:remove()
--                 true_copy:update_joker_display(true, true)
--                 if card.joker_display_values then
--                     card.joker_display_values.fake_card = true_copy
--                 end
--             end
--         end
--         JokerDisplay.copy_display(card, true_copy, copied_debuff)
--     end,
--     get_blueprint_joker = function(card)
--         for i = 1, #G.jokers.cards do
--             if G.jokers.cards[i] == card then
--                 return G.jokers.cards[i + 1]
--             end
--         end
--         return nil
--     end
-- }

--	Deoxys
