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
        { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
    },
    text_config = { colour = G.C.MULT },
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
        if get_type(card) == "Lightning" then
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
--	Lycanroc
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