local jd_def = JokerDisplay.Definitions

--	Treecko
jd_def["j_poke_treecko"] = {
  text = {
    { text = "+$", colour = G.C.GOLD},
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
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
    card.joker_display_values.money = count * card.ability.extra.money_mod
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
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { text = "[" },
    { ref_table = "card.joker_display_values", ref_value = "nature1",},
    { text = ", "},
    { ref_table = "card.joker_display_values", ref_value = "nature2",},
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature3",},
    { text = "]" },
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
  end,
  mod_function = function(card, mod_joker)
    if mod_joker.ability.extra.cards_discarded >= mod_joker.ability.extra.discard_target then
      return { x_mult = ((is_type(card, "Fire") or is_type(card, "Fighting")) and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
    else
      return { xmult = nil }
    end
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
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
    { text = " +", colour = G.C.SECONDARY_SET.Tarot },
    { ref_table = "card.joker_display_values", ref_value = "tarot", retrigger_type = "mult", colour = G.C.SECONDARY_SET.Tarot },
  },
  reminder_text = {
    { text = "[" },
    { ref_table = "card.joker_display_values", ref_value = "nature1" },
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature2" },
    { text = ", " },
    { ref_table = "card.joker_display_values", ref_value = "nature3" },
    { text = "]" },
  },
  calc_function = function(card)
    local count = 0
    local chips = card.ability.extra.chip_mod
    local nature_cards = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == card.ability.extra.targets[1].id or
          scoring_card:get_id() == card.ability.extra.targets[2].id or
          scoring_card:get_id() == card.ability.extra.targets[3].id then
          count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
          nature_cards = nature_cards + 1
        end
      end
    end
    if nature_cards >= 5 then
      local water_jokers = #find_pokemon_type("Water")
      local earth_jokers = #find_pokemon_type("Earth")
      card.joker_display_values.tarot = math.floor((water_jokers + earth_jokers)/2)
    else
      card.joker_display_values.tarot = 0
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
jd_def["j_poke_wurmple"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
    { text = " or ", colour = G.C.GREY },
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
}

--	Silcoon
jd_def["j_poke_silcoon"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "nature_suit1" },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.nature_suit1 = localize(card.ability.extra.targets[1].suit, 'suits_plural')
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children[2] then
      reminder_text.children[2].config.colour = lighten(G.C.SUITS[card.ability.extra.targets[1].suit], 0.35)
    end
    return false
  end
}

--	Beautifly
jd_def["j_poke_beautifly"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "nature_suit1" },
    { text = ")" },
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'beautifly')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
    card.joker_display_values.nature_suit1 = localize(card.ability.extra.targets[1].suit, 'suits_plural')
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children[2] then
      reminder_text.children[2].config.colour = lighten(G.C.SUITS[card.ability.extra.targets[1].suit], 0.35)
    end
    return false
  end
}

--	Cascoon
jd_def["j_poke_cascoon"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "nature_suit1" },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.nature_suit1 = localize(card.ability.extra.targets[1].suit, 'suits_plural')
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children[2] then
      reminder_text.children[2].config.colour = lighten(G.C.SUITS[card.ability.extra.targets[1].suit], 0.35)
    end
    return false
  end
}

--	Dustox
jd_def["j_poke_dustox"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
      }
    }
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "nature_suit1" },
    { text = ")" },
  },
  calc_function = function(card)
    local playing_hand = next(G.play.cards)
    local nature_suit_count, all_cards = 0, 0
    for _, playing_card in ipairs(G.hand.cards) do
      if playing_hand or not playing_card.highlighted then
        all_cards = all_cards + 1
        if playing_card.facing and not (playing_card.facing == 'back') and playing_card:is_suit(card.ability.extra.targets[1].suit, nil, true) then
          nature_suit_count = nature_suit_count + 1
        end
      end
    end
    if nature_suit_count >= all_cards then
      card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
      card.joker_display_values.Xmult = 1
    end

    card.joker_display_values.nature_suit1 = localize(card.ability.extra.targets[1].suit, 'suits_plural')
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children[2] then
      reminder_text.children[2].config.colour = lighten(G.C.SUITS[card.ability.extra.targets[1].suit], 0.35)
    end
    return false
  end
}

--	Lotad
--	Lombre
--	Ludicolo
--	Seedot
--	Nuzleaf
--	Shiftry
--	Taillow
jd_def["j_poke_taillow"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT},
  },
}

--	Swellow
jd_def["j_poke_swellow"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT},
  },
}

--	Wingull
jd_def["j_poke_wingull"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "wingull_card", colour = G.C.ORANGE },
    { text = ")" }
  },
  calc_function = function(card)
    local money = 0
    local hand = G.hand.highlighted
    for _, playing_card in pairs(hand) do
      if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() and playing_card:get_id() == G.GAME.current_round.wingullcard.id  then
        money = money + card.ability.extra.money_mod
      end
    end
    if G.GAME.current_round.discards_left  > 0 then
      card.joker_display_values.money = money
    else
      card.joker_display_values.money = 0
    end
    card.joker_display_values.wingull_card = localize(G.GAME.current_round.wingullcard.rank, 'ranks')
  end
}

--	Pelipper
jd_def["j_poke_pelipper"] = {
  text = {
    { text = "+$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "wingull_card", colour = G.C.ORANGE },
    { text = ")" }
  },
  calc_function = function(card)
    local money = 0
    local water_jokers = #find_pokemon_type("Water")
    local hand = G.hand.highlighted
    for _, playing_card in pairs(hand) do
      if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and playing_card:get_id() and playing_card:get_id() == G.GAME.current_round.wingullcard.id  then
        money = money + (card.ability.extra.money_mod + (card.ability.extra.water_money * water_jokers))
      end
    end
    if G.GAME.current_round.discards_left  > 0 then
      card.joker_display_values.money = money
    else
      card.joker_display_values.money = 0
    end
    card.joker_display_values.wingull_card = localize(G.GAME.current_round.wingullcard.rank, 'ranks')
  end
}

--	Ralts
jd_def["j_poke_ralts"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local energized_jokers = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    for k, v in ipairs(G.jokers.cards) do
      if get_total_energy(v) > 0 then
        energized_jokers = energized_jokers + 1
      end
    end
    if poker_hands['Pair'] and next(poker_hands['Pair']) then
      mult = card.ability.extra.mult_mod * energized_jokers
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.localized_text = localize('Pair', 'poker_hands')
  end
}

--	Kirlia
jd_def["j_poke_kirlia"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local energized_jokers = 0
    local mult = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    for k, v in ipairs(G.jokers.cards) do
      if get_total_energy(v) > 0 then
        energized_jokers = energized_jokers + 1
      end
    end
    if poker_hands['Pair'] and next(poker_hands['Pair']) then
      mult = card.ability.extra.mult_mod * energized_jokers
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.localized_text = localize('Pair', 'poker_hands')
  end
}

--	Gardevoir
jd_def["j_poke_gardevoir"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
      }
    }
  },
  calc_function = function(card)
    local energized_jokers = 0
    local level_target = card.ability.extra.hand_level
    local leveled_hands = 0
    for k, v in ipairs(G.jokers.cards) do
      if get_total_energy(v) > 0 then
        energized_jokers = energized_jokers + 1
      end
    end
    for k, v in pairs(G.GAME.hands) do
      local level = v.level
      if (SMODS.Mods["Talisman"] or {}).can_load then
        level = to_number(level)
      end
      if level >= level_target then
        leveled_hands = leveled_hands + 1
      end
    end
    card.joker_display_values.Xmult = 1 + card.ability.extra.Xmult_mod * (energized_jokers + leveled_hands)
  end
}

--	Surskit
--	Masquerain
--	Shroomish
--	Breloom
--	Slakoth
jd_def["j_poke_slakoth"] = {
  text = {
    { text = "+" , colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
}

--	Vigoroth
jd_def["j_poke_vigoroth"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
  calc_function = function(card)
    local hands_left = G.GAME.current_round.hands_left
    card.joker_display_values.Xmult = 1 + (card.ability.extra.Xmult_mod * hands_left)
  end
}

--	Slaking
jd_def["j_poke_slaking"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Nincada
jd_def["j_poke_nincada"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    card.joker_display_values.localized_text = "(" .. localize("9", "ranks") .. "," .. localize("Jack", "ranks") .. ")"
  end
}

--	Ninjask
jd_def["j_poke_ninjask"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local triggers = 0
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 9 or scoring_card:get_id() == 11 then
          triggers = triggers + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
        end
      end
    end
    if G.GAME.current_round.hands_played == 0 then
      card.joker_display_values.mult = card.ability.extra.mult_mod * triggers
    else
      card.joker_display_values.mult = 0
    end
    card.joker_display_values.localized_text = "(" .. localize("9", "ranks") .. "," .. localize("Jack", "ranks") .. ")"
  end
}

--	Shedinja
jd_def["j_poke_shedinja"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

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
jd_def["j_poke_skitty"] = {
  reminder_text = {
      { text = "(" },
      { ref_table = "card.joker_display_values", ref_value = "blueprint_compat", colour = G.C.RED },
      { text = ")" }
  },
  extra = {
    {
      { ref_table = "card.joker_display_values", ref_value = "cattype", colour = G.C.GREY }
    }
  },
  calc_function = function(card)
    local copied_joker, copied_debuff = JokerDisplay.calculate_blueprint_copy(card)
    card.joker_display_values.blueprint_compat = localize('k_incompatible')
    JokerDisplay.copy_display(card, copied_joker, copied_debuff)
    card.joker_display_values.cattype = G.GAME.current_round.cattype
  end,
  get_blueprint_joker = function(card)
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i] == card then
        if is_type(G.jokers.cards[i+1], G.GAME.current_round.cattype) then
          return G.jokers.cards[i + 1]
        else
          return nil
        end
      end
    end
    return nil
  end
}

--	Delcatty
jd_def["j_poke_delcatty"] = {
  reminder_text = {
      { text = "(" },
      { ref_table = "card.joker_display_values", ref_value = "blueprint_compat", colour = G.C.RED },
      { text = ")" }
  },
  extra = {
    {
      { ref_table = "card.joker_display_values", ref_value = "cattype", colour = G.C.GREY }
    }
  },
  calc_function = function(card)
    local copied_joker, copied_debuff = JokerDisplay.calculate_blueprint_copy(card)
    local true_copy = copied_joker
    card.joker_display_values.blueprint_compat = localize('k_incompatible')
    if true_copy then
      if card.joker_display_values and card.joker_display_values.fake_card and card.joker_display_values.fake_card.config.center.key == true_copy.config.center.key then
        true_copy = card.joker_display_values.fake_card
        while get_total_energy(true_copy) - get_total_energy(copied_joker) < card.ability.extra.energy_buff do
          energize(true_copy, nil, nil, true)
          if true_copy.ability.extra and type(true_copy.ability.extra) == "table" then
            true_copy.ability.extra.energy_count = (true_copy.ability.extra.energy_count or 0) + 1
          else
            true_copy.ability.energy_count = (true_copy.ability.energy_count or 0) + 1
          end
        end

        true_copy:update_joker_display(true)
      else
        true_copy = copy_card(copied_joker)

        card.joker_display_values.to_track = {}
        card.joker_display_values.extra_to_track = {}
        for i = 1, card.ability.extra.energy_buff do
          energize(true_copy, nil, nil, true)
        end
        for k,v in pairs(copied_joker.ability) do
          if type(true_copy.ability[k]) ~= "table" then
            if true_copy.ability[k] == v then
              true_copy.ability[k] = nil
            end
          end
        end
        setmetatable(true_copy.ability, {__index=copied_joker.ability})
        if type(copied_joker.ability.extra) == "table" then
          for k,v in pairs(copied_joker.ability.extra) do
            if true_copy.ability.extra[k] == v then
              true_copy.ability.extra[k] = nil
            end
          end
          setmetatable(true_copy.ability.extra, {__index=copied_joker.ability.extra})
        end

        if true_copy.ability.extra and type(true_copy.ability.extra) == "table" then
          true_copy.ability.extra.energy_count = (true_copy.ability.extra.energy_count or 0) + card.ability.extra.energy_buff
          true_copy.ability.extra.c_energy_count = (true_copy.ability.extra.c_energy_count or 0)
        else
          true_copy.ability.energy_count = (true_copy.ability.energy_count or 0) + card.ability.extra.energy_buff
          true_copy.ability.c_energy_count = (true_copy.ability.c_energy_count or 0)
        end

        true_copy:remove()
        true_copy:update_joker_display(true, true)
        if card.joker_display_values then
            card.joker_display_values.fake_card = true_copy
        end
      end
    end
    JokerDisplay.copy_display(card, true_copy, copied_debuff)

    card.joker_display_values.cattype = G.GAME.current_round.cattype
  end,
  get_blueprint_joker = function(card)
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i] == card then
        if is_type(G.jokers.cards[i+1], G.GAME.current_round.cattype) then
          return G.jokers.cards[i + 1]
        else
          return nil
        end
      end
    end
    return nil
  end
}

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
jd_def["j_poke_meditite"] = {
  text = {
    { text = "+" , colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  calc_function = function(card)
    local empty_consumable_slots = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards)
    if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
      card.joker_display_values.mult = empty_consumable_slots * card.ability.extra.mult_mod
    else
      card.joker_display_values.mult = 0
    end
  end
}

--	Medicham
jd_def["j_poke_medicham"] = {
  text = {
    { text = "+" , colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
    { text = " +", colour = G.C.SECONDARY_SET.Spectral },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = G.C.SECONDARY_SET.Spectral }
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text",},
  },
  calc_function = function(card)
    local empty_consumable_slots = math.max(0, G.consumeables.config.card_limit - #G.consumeables.cards)
    local _, _, scoring_hand = JokerDisplay.evaluate_hand()
    local sixth_sense_eval = #scoring_hand == 1 and scoring_hand[1]:get_id() == 6
    card.joker_display_values.count = sixth_sense_eval and 1 or 0
    card.joker_display_values.localized_text = "(" .. localize("6", "ranks")..")"

    if G.GAME.current_round.discards_left == card.ability.extra.d_remaining then
      card.joker_display_values.mult = empty_consumable_slots * card.ability.extra.mult_mod
    else
      card.joker_display_values.mult = 0
    end

  end
}

--	Electrike
--	Manectric
--	Plusle
--	Minun
--	Volbeat
jd_def["j_poke_volbeat"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Illumise
--	Roselia
jd_def["j_poke_roselia"] = {
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  extra = {
    {
      { text = "(", colour = G.C.UI.TEXT_INACTIVE, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "active", scale = 0.3 },
      { text = ")", colour = G.C.UI.TEXT_INACTIVE, scale = 0.3 },
    }
  },
  calc_function = function(card)
    if G.GAME.current_round.hands_played == 0 then
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.active = localize("jdis_inactive")
    end
    card.joker_display_values.localized_text = "(" .. localize("Ace", "ranks") .. "," .. localize("3", "ranks") .. "," .. localize("5", "ranks") .. "," ..
    localize("5", "ranks") .. "," .. localize("7", "ranks") .. "," .. localize("9", "ranks") .. ")"
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    if G.GAME.current_round.hands_played == 0 and (first_card:get_id() == 3 or first_card:get_id() == 5 or first_card:get_id() == 7 or first_card:get_id() == 9 or first_card:get_id() == 14) then
      return first_card and playing_card == first_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
    else
      return 0
    end
  end,
  style_function = function(card, text, reminder_text, extra)
    if extra and extra.children and extra.children[1] then
      if card.joker_display_values.active == localize("jdis_active") then
        extra.children[1].children[2].config.colour = G.C.GREEN
      else
        extra.children[1].children[2].config.colour = G.C.UI.TEXT_INACTIVE
      end
    end
  end
}

--	Gulpin
--	Swalot
--	Carvanha
jd_def["j_poke_carvanha"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
      }
    }
  },
  calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    local is_card_sharp_hand = text ~= 'Unknown' and G.GAME.hands and G.GAME.hands[text] and
      G.GAME.hands[text].played_this_round > (next(G.play.cards) and 1 or 0)
    card.joker_display_values.x_mult = is_card_sharp_hand and card.ability.extra.Xmult or 1
  end
}

--	Sharpedo
jd_def["j_poke_sharpedo"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
      }
    }
  },
  calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    local is_card_sharp_hand = text ~= 'Unknown' and G.GAME.hands and G.GAME.hands[text] and
      G.GAME.hands[text].played_this_round > (next(G.play.cards) and 1 or 0)
    card.joker_display_values.x_mult = is_card_sharp_hand and card.ability.extra.Xmult or 1
  end
}

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
jd_def["j_poke_torkoal"] = {
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    local torkoal_retriggers = G.GAME.current_round.discards_left
    if held_in_hand then return 0 end
    return SMODS.has_enhancement(playing_card, 'm_mult') and (torkoal_retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
  end
}

--	Spoink
--	Grumpig
--	Spinda
--	Trapinch
--	Vibrava
--	Flygon
--	Cacnea
--	Cacturne
jd_def["j_poke_cacturne"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "active" },
    { text = ")" },
  },
  calc_function = function(card)
    if G.GAME.current_round.hands_played == 0 then
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children and reminder_text.children[2] then
      if card.joker_display_values.active == localize("jdis_active") then
        reminder_text.children[2].config.colour = G.C.GREEN
      else
        reminder_text.children[2].config.colour = G.C.UI.TEXT_INACTIVE
      end
    end
  end
}

--	Swablu
jd_def["j_poke_swablu"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.ability.extra", ref_value = "money_mod", colour = G.C.GOLD },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    card.joker_display_values.localized_text = "(Draw " .. localize("9", "ranks")..")"
  end
}

--	Altaria
jd_def["j_poke_altaria"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    local dragon_count = #find_pokemon_type("Dragon")
    if is_type(card, "Dragon") then
        dragon_count= dragon_count - 1
    end
    if dragon_count >= 1 then
      card.joker_display_values.money = card.ability.extra.money_mod + card.ability.extra.money_mod_extra
    else
      card.joker_display_values.money = card.ability.extra.money_mod
    end
    card.joker_display_values.localized_text = "(Draw " .. localize("9", "ranks")..")"
  end
}

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
jd_def["j_poke_lileep"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    local eight_count = 0
    local triggers = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 8 then
          eight_count = eight_count + 1
        end
      end
    end
    if eight_count >= 3 then
      local playing_hand = next(G.play.cards)
      for i, playing_card in ipairs(G.hand.cards) do
        if playing_hand or not playing_card.highlighted then
          if not (playing_card.facing == 'back') and not playing_card.debuff then
            triggers = triggers + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
          end
        end
      end
    end
    card.joker_display_values.chips = triggers * card.ability.extra.chip_mod
    card.joker_display_values.localized_text = "(" .. localize("8", "ranks") .. ")"
  end
}

--	Cradily
jd_def["j_poke_cradily"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD},
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    local eight_count = 0
    local triggers = 0
    local money = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 8 then
          eight_count = eight_count + 1
        end
      end
    end
    if eight_count >= 3 then
      local playing_hand = next(G.play.cards)
      for i, playing_card in ipairs(G.hand.cards) do
        if playing_hand or not playing_card.highlighted then
          if not (playing_card.facing == 'back') and not playing_card.debuff then
            triggers = triggers + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
          end
        end
      end
    end
    if eight_count > 3 then
      local highest_sell = 0
      for k, v in ipairs(G.consumeables.cards) do
        if v.sell_cost > highest_sell then highest_sell = v.sell_cost end
      end
      money = highest_sell
    end
    card.joker_display_values.chips = triggers * card.ability.extra.chip_mod
    card.joker_display_values.money = money
    card.joker_display_values.localized_text = "(" .. localize("8", "ranks") .. ")"
  end
}

--	Anorith
jd_def["j_poke_anorith"] = {
  text = {
    { text = "+" , colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local mult = 0
    local count = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 7 then
          count = count + 1
        end
      end
    end
    if count >= 1 then
      mult = card.ability.extra.mult
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.localized_text = "(" .. localize("7", "ranks") .. ")"
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'anorinth')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
  end
}

--	Armaldo
jd_def["j_poke_armaldo"] = {
  text = {
    { text = "+" , colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
      }
    },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local mult = 0
    local Xmult = 1
    local count = 0
    local enhanced_seven_tally = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 7 then
          count = count + 1
        end
      end
    end
    if count >= 1 then
      mult = card.ability.extra.mult
    end
    if count >= 4 then
      for k, v in pairs(G.playing_cards) do
        if v:get_id() == 7 and v.config.center ~= G.P_CENTERS.c_base then
          enhanced_seven_tally = enhanced_seven_tally + 1
          Xmult = 1 + (card.ability.extra.Xmult_multi * enhanced_seven_tally)
        end
      end
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.Xmult = Xmult
    card.joker_display_values.localized_text = "(" .. localize("7", "ranks") .. ")"
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'armaldo')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
  end
}

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
jd_def["j_poke_duskull"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "active" },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.active = G.GAME and G.GAME.current_round.hands_left <= 1 and localize("jdis_active") or localize("jdis_inactive")
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    local second_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[2]
    local third_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[3]
    local fourth_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[4]
    if G.GAME.current_round.hands_left <= 1 then
      return first_card and playing_card == first_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      second_card and playing_card == second_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      third_card and playing_card == third_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      fourth_card and playing_card == fourth_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
    else
      return 0
    end
  end
}

--	Dusclops
jd_def["j_poke_dusclops"] = {
  text = {
    { text = "+", colour = G.C.SECONDARY_SET.Spectral },
    { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = G.C.SECONDARY_SET.Spectral }
  },
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "active" },
    { text = ")" },
  },
  calc_function = function(card)
    local count = 0
    local hand = JokerDisplay.current_hand
    local _, _, scoring_hand = JokerDisplay.evaluate_hand()
    if scoring_hand and #scoring_hand > 0 and G.GAME.current_round.hands_left <= 1 then
      count = #hand - #scoring_hand
      if count == 1 then count = 1 else count = 0
      end
    end
    card.joker_display_values.active = G.GAME and G.GAME.current_round.hands_left <= 1 and localize("jdis_active") or localize("jdis_inactive")
    card.joker_display_values.count = count
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if held_in_hand then return 0 end
    local first_card = scoring_hand and JokerDisplay.calculate_leftmost_card(scoring_hand)
    local second_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[2]
    local third_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[3]
    local fourth_card = scoring_hand and JokerDisplay.sort_cards(scoring_hand)[4]
    if G.GAME.current_round.hands_left <= 1 then
      return first_card and playing_card == first_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      second_card and playing_card == second_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      third_card and playing_card == third_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0 and
      fourth_card and playing_card == fourth_card and joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card) or 0
    else
      return 0
    end
  end
}

--	Tropius
--	Chimecho
jd_def["j_poke_chimecho"] = {
  reminder_text = {
    { text = "[", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "glass_restored", colour = G.C.GREY },
    { text = "/", colour = G.C.GREY },
    { ref_table ="card.ability.extra", ref_value = "glass_limit", colour = G.C.ORANGE },
    { text = "]", colour = G.C.GREY },
  },
}

--	Absol
jd_def["j_poke_absol"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" }
      }
    },
  },
}

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
jd_def["j_poke_huntail"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" }
      }
    },
  },
}

--	Gorebyss
jd_def["j_poke_gorebyss"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" }
      }
    },
  },
}

--	Relicanth
jd_def["j_poke_relicanth"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS },
    { text = " +$", colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", colour = G.C.GOLD },
    { text = " " },
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.joker_display_values", ref_value = "Xmult", retrigger_type = "exp" }
      }
    },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" }
  },
  calc_function = function(card)
    local four_count = 0
    local chips = 0
    local money = 0
    local Xmult = 1
    local last_card_triggers = 0
    local text, _, scoring_hand = JokerDisplay.evaluate_hand()
    local last_card = JokerDisplay.calculate_rightmost_card(scoring_hand)
    if last_card then
      last_card_triggers = JokerDisplay.calculate_card_triggers(last_card, scoring_hand)
    end
    if text ~= 'Unknown' then
      for _, scoring_card in pairs(scoring_hand) do
        if scoring_card:get_id() == 4 then
          four_count = four_count + 1
        end
      end
    end
    if four_count >= 1 then
      chips = card.ability.extra.chips * last_card_triggers
    end
    if four_count >= 3 then
      money = card.ability.extra.money
    end
    if four_count >= 4 then
      Xmult = (card.ability.extra.Xmult_multi ^ last_card_triggers) or 1
    end
    card.joker_display_values.chips = chips
    card.joker_display_values.money = money
    card.joker_display_values.Xmult = Xmult
    card.joker_display_values.localized_text = "(" .. localize("4", "ranks") .. ")"
  end
}
--	Luvdisc
jd_def["j_poke_luvdisc"] = {
  scoring_function = function(playing_card, scoring_hand, joker_card)
    return true
  end
}

--	Bagon
jd_def["j_poke_bagon"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
  },
  calc_function = function(card)
    card.joker_display_values.mult = G.GAME.hands["Straight"].played * card.ability.extra.mult_mod
  end
}

--	Shelgon
jd_def["j_poke_shelgon"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
  },
  calc_function = function(card)
    card.joker_display_values.mult = G.GAME.hands["Straight"].played * card.ability.extra.mult_mod
  end
}

--	Salamence
jd_def["j_poke_salamence"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT }
  },
  calc_function = function(card)
    card.joker_display_values.mult = G.GAME.hands["Straight"].played * card.ability.extra.mult_mod
  end
}

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
jd_def["j_poke_deoxys"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "active" },
    { text = ")" },
  },
  calc_function = function(card)
    if G.GAME.current_round.discards_used == 0 then
      card.joker_display_values.active = localize("jdis_active")
    else
      card.joker_display_values.active = localize("jdis_inactive")
    end
  end,
  style_function = function(card, text, reminder_text, extra)
    if reminder_text and reminder_text.children and reminder_text.children[2] then
      if card.joker_display_values.active == localize("jdis_active") then
        reminder_text.children[2].config.colour = G.C.GREEN
      else
        reminder_text.children[2].config.colour = G.C.UI.TEXT_INACTIVE
      end
    end
  end
}
