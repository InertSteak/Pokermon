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
jd_def["j_poke_simisear"] = {
    text = {
        { text = "[" },
        { ref_table = "card.joker_display_values", ref_value = "localized_text"},
        { text = "]" }
    },
    text_config = {colour = G.C.UI.BACKGROUND_INACTIVE},
    calc_function = function(card)
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands').." / "..localize('Flush', 'poker_hands')
    end
}

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
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and SMODS.has_no_rank(playing_card) then
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
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and SMODS.has_no_rank(playing_card) then
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
                if playing_card.facing and not (playing_card.facing == 'back') and not playing_card.debuff and SMODS.has_no_rank(playing_card) then
                    count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                end
            end
        end
        card.joker_display_values.mult = count * card.ability.extra.mult_mod
    end,
    retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
        return held_in_hand and SMODS.has_no_rank(playing_card) and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    end
}

--	Woobat
--	Swoobat
--	Drilbur
--	Excadrill
jd_def["j_poke_excadrill"] = {
  text = {
    { text = "+" },
    { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
  },
  text_config = { colour = G.C.MULT },
  calc_function = function(card)
    card.joker_display_values.mult = math.max(0, card.ability.extra.mult_mod * (G.playing_cards and (G.GAME.starting_deck_size - #G.playing_cards) or 0))
  end
}

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
jd_def["j_poke_trubbish"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
    { text = " " },
    { text = "+$",  colour = G.C.GOLD },
    { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult", colour = G.C.GOLD }
  },
  calc_function = function(card)
    card.joker_display_values.money = (G.GAME and G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 and G.GAME.current_round.discards_left * card.ability.extra.money or 0)
  end
}

--	Garbodor
jd_def["j_poke_garbodor"] = {
  text = {
    { text = "+", colour = G.C.CHIPS },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
  },
}

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
jd_def["j_poke_frillish"] = {
  text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
  },
  text_config = { colour = G.C.CHIPS }
}

--	Jellicent
jd_def["j_poke_jellicent"] = {
  text = {
    { text = "+" },
    { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
  },
  text_config = { colour = G.C.CHIPS }
}

--	Alomomola
--	Joltik
--	Galvantula
--	Ferroseed
--	Ferrothorn
jd_def["j_poke_ferrothorn"] = {
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    card.joker_display_values.localized_text = localize('Flush', 'poker_hands')
  end,
  retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
    if not held_in_hand then return 0 end
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Flush'] and next(poker_hands['Flush']) then
      return held_in_hand and SMODS.has_enhancement(playing_card, "m_steel") and (joker_card.ability.extra.retriggers * JokerDisplay.calculate_joker_triggers(joker_card)) or 0
    else
      return 0
    end
  end

}
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
    if card.sell_cost >= 7 then
      card.joker_display_values.mult = card.ability.extra.mult * 3
    else
      card.joker_display_values.mult = card.ability.extra.mult
    end
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
    card.joker_display_values.mult = card.sell_cost
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
    card.joker_display_values.mult = card.sell_cost
  end,
  mod_function = function(card, mod_joker)
    return { x_mult = (card.sell_cost < 2 and mod_joker.ability.extra.Xmult_multi ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil) }
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
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local count = 0
    for i, playing_card in ipairs(G.hand.cards) do
      if not (playing_card.facing == 'back') and not playing_card.debuff and not playing_card.highlighted and SMODS.has_enhancement(playing_card, "m_poke_hazard") then
        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
      end
    end
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'golett')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
    card.joker_display_values.Xmult = card.ability.extra.Xmult_multi ^ count
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
  extra = {
    {
      { text = "(", colour = G.C.GREEN, scale = 0.3 },
      { ref_table = "card.joker_display_values", ref_value = "odds", colour = G.C.GREEN, scale = 0.3 },
      { text = ")", colour = G.C.GREEN, scale = 0.3 },
    },
  },
  calc_function = function(card)
    local count = 0
    for i, playing_card in ipairs(G.hand.cards) do
      if not (playing_card.facing == 'back') and not playing_card.debuff and not playing_card.highlighted and SMODS.has_enhancement(playing_card, "m_poke_hazard") then
        count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
      end
    end
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'golurk')
    card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { num, dem } }
    card.joker_display_values.Xmult = card.ability.extra.Xmult_multi ^ count
  end
}

--	Pawniard
jd_def["j_poke_pawniard"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

--	Bisharp
jd_def["j_poke_bisharp"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
}

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
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    if text == "Three of a Kind" then
      card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
      card.joker_display_values.Xmult = 1
    end
    card.joker_display_values.localized_text = localize('Three of a Kind', 'poker_hands')
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
  reminder_text = {
    { text = "(" },
    { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
    { text = ")" },
  },
  calc_function = function(card)
    local text, _, _ = JokerDisplay.evaluate_hand()
    if text == "Three of a Kind" then
      card.joker_display_values.Xmult = card.ability.extra.Xmult
    else
      card.joker_display_values.Xmult = 1
    end
    card.joker_display_values.localized_text = localize('Three of a Kind', 'poker_hands')
  end
}

--	Hydreigon
jd_def["j_poke_hydreigon"] = {
  text = {
    {
      border_nodes = {
        { text = "X" },
        { ref_table = "card.ability.extra", ref_value = "Xmult", retrigger_type = "exp" },
      },
    },
  },
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












