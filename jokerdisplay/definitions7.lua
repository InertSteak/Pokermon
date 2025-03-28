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
--	Charjabug
--	Vikavolt
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