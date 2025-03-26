local jd_def = JokerDisplay.Definitions

--	Treecko
--	Grovyle
--	Sceptile
--	Torchic
--	Combusken
--	Blaziken
--	Mudkip
--	Marshtomp
--	Swampert
--	Poochyena
--	Mightyena
--	Zigzagoon
--	Linoone
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
--	Nosepass
--	Skitty
--	Delcatty
--	Sableye
--	Mawile
--	Aron
--	Lairon
--	Aggron
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
--	Camerupt
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
--	Milotic
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
        { text = "+" },
        { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
    },
text_config = { colour = G.C.CHIPS },
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
--	Deoxys