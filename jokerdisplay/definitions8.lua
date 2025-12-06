local jd_def = JokerDisplay.Definitions


--	Grookey
--	Thwackey
--	Rillaboom
--	Scorbunny
--	Raboot
--	Cinderace
--	Sobble
--	Drizzile
--	Inteleon
--	Skwovet
--	Greedent
--	Rookidee
--	Corvisquire
--	Corviknight
--	Blipbug
--	Dottler
--	Orbeetle
--	Nickit
jd_def["j_poke_nickit"] = {
  text = {
    { text = "+$" },
    { ref_table = "card.ability.extra", ref_value = "money" },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" },
  },
  text_config = { colour = G.C.GOLD },
  calc_function = function(card)
    card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
  end
}

--	Thievul
jd_def["j_poke_thievul"] = {
  text = {
    { text = "+$" },
    { ref_table = "card.joker_display_values", ref_value = "money" },
  },
  reminder_text = {
    { ref_table = "card.joker_display_values", ref_value = "localized_text" },
  },
  text_config = { colour = G.C.GOLD },
  calc_function = function(card)
    if #G.jokers.cards > 1 and G.jokers.cards[1] ~= card then
      card.joker_display_values.money = math.min(G.jokers.cards[1].sell_cost*2, 15)
    else
      card.joker_display_values.money = 0
    end
    card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
  end
}

--	Gossifleur
--	Eldegoss
--	Wooloo
--	Dubwool
--	Chewtle
--	Drednaw
--	Yamper
jd_def["j_poke_yamper"] = {
    text = {
        { text = "+"},
        { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" },
        { text = " " },
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "add", colour = G.C.GOLD }
    },
    reminder_text = {
      { text = "(" },
      { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
      { text = ")" },
    },
text_config = { colour = G.C.MULT },
calc_function = function(card)
    local mult = 0
    local money = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        mult = card.ability.extra.mult
        money = card.ability.extra.money
    end
    card.joker_display_values.mult = mult
    card.joker_display_values.money = money
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end
}

--	Boltund
jd_def["j_poke_boltund"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
        { text = " " },
        { text = "+$", colour = G.C.GOLD },
        { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "add", colour = G.C.GOLD }

    },
    reminder_text = {
      { text = "(" },
      { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
      { text = ")" },
    },
text_config = { colour = G.C.WHITE },
calc_function = function(card)
    local Xmult = 1
    local money = 0
    local _, poker_hands, _ = JokerDisplay.evaluate_hand()
    if poker_hands['Straight'] and next(poker_hands['Straight']) then
        Xmult = card.ability.extra.Xmult
        money = card.ability.extra.money
    end
    card.joker_display_values.Xmult = Xmult
    card.joker_display_values.money = money
    card.joker_display_values.localized_text = localize('Straight', 'poker_hands')
end
}

--	Rolycoly
--	Carkol
--	Coalossal
--	Applin
--	Flapple
--	Appletun
--	Silicobra
--	Sandaconda
--	Cramorant
--	Arrokuda
--	Barraskewda
--	Toxel
jd_def["j_poke_toxel"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.ability.extra", ref_value = "Xmult_minus", retrigger_type = "exp" },
            },
        },
    },
}


--	Toxtricity
--	Sizzlipede
--	Centiskorch
--	Clobbopus
--	Grapploct
--	Sinistea
--	Polteageist
--	Hatenna
--	Hattrem
--	Hatterene
--	Impidimp
--	Morgrem
--	Grimmsnarl
--	Obstagoon
--	Perrserker
--	Cursola
--	Sirfetch'd
--	Mr. Rime
--	Runerigus
--	Milcery
--	Alcremie
--	Falinks
--	Pincurchin
--	Snom
--	Frosmoth
--	Stonjourner
--	Eiscue
--	Indeedee
--	Morpeko
--	Cufant
--	Copperajah
--	Dracozolt
--	Arctozolt
--	Dracovish
--	Arctovish
--	Duraludon
--	Dreepy
--	Drakloak
jd_def["j_poke_drakloak"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        card.joker_display_values.Xmult =  1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult
    end
}

--	Dragapult
jd_def["j_poke_dragapult"] = {
    text = {
        {
            border_nodes = {
                { text = "X" },
                { ref_table = "card.joker_display_values", ref_value = "Xmult" }
            },
            border_colour = G.C.MULT
        },
    },
    text_config = { colour = G.C.WHITE },
    calc_function = function(card)
        card.joker_display_values.Xmult =  1 + card.ability.extra.total_sell_value * card.ability.extra.Xmult
    end
}

--	Zacian
--	Zamazenta
--	Eternatus
--	Kubfu
--	Urshifu
--	Zarude
--	Regieleki
--	Regidrago
--	Glastrier
--	Spectrier
--	Calyrex
--	Wyrdeer
jd_def["j_poke_wyrdeer"] = {
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
            mult = highest_card.base.nominal * 2 * (highest_card:get_seal() == 'Red' and 2 or 1)
          else
            mult = 0
          end
        end
      end
    end
    card.joker_display_values.mult = mult
  end
}

--	Kleavor
jd_def["j_poke_kleavor"] = {
  text = {
    { text = "+",  colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  },
}

--	Ursaluna
jd_def["j_poke_ursaluna"] = {
  text = {
    { text = "+", colour = G.C.MULT },
    { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
  }
}

--	Basculegion
--	Sneasler
--	Overqwil
--	Enamorus
