-- Welcome to pl.lua!

--Progress report:
--Update this as you go! Or don't, I know Cryptid doesn't (lmfao)

--[[
Decks: No
Jokers: No
Settings/Mod: No
Items: No
Energy: No
Deck Sleeves (requires Decksleeves Mod): No
Boss Blinds: No
Challenges: No
Spectrals: No
Tarots: Yes (there aren't any lmao)
Stickers: No
Planets: Yes (there aren't any lmao)
Dictonary: No
Editions: No
Vouchers: No
Tags: No
Misc Infoqueues (ancient, baby, eitem, Type, etc): No
Other (packs, stickers, etc): No
Misc: No
]]--


return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Trainer Deck",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
                    "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
                } 
            },
            b_poke_obituarydeck = {
                name = "Obituary Deck",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Luminous Deck",
                text = {
                    "All Jokers are created",
                    "with random {C:pink}Type{} stickers",
                    "and have {C:attention}+1{} {C:pink}Energy{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Chartreuse Chamber",
                text = {
                    "Random Types are debuffed",
                    "every hand",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Create a random",
                    "{C:attention}Basic Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Create a random",
                    "{C:attention}Stage 1 Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_moonstone = {
                name = "Moon Stone",
                text = {
                    "Creates a {C:attention}Moon{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_sunstone = {
                name = "Sun Stone",
                text = {
                    "Creates a {C:attention}Sun{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_waterstone = {
                name = "Water Stone",
                text = {
                    "Creates a {C:attention}Hierophant{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_thunderstone = {
                name = "Thunder Stone",
                text = {
                    "Creates a {C:attention}Devil{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_firestone = {
                name = "Fire Stone",
                text = {
                    "Creates a {C:attention}Lovers{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_leafstone = {
                name = "Leaf Stone",
                text = {
                    "Creates a {C:attention}World{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_linkcable = {
                name = "Linking Cord",
                text = {
                    "Creates a {C:attention}Death{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_leftovers = {
                name = "Leftovers",
                text = {
                    "Creates a {C:attention}Hanged Man{} card",
                    "{C:attention}Held Card{}",
                    "{C:inactive}(Must have room){}"
                }
            },
            c_poke_leek = {
                name = "Leek",
                text = {
                    "Creates a {C:attention}Wheel of Fortune{} card",
                    "{C:attention}Held Card{}",
                    "{C:inactive}(Must have room){}"
                }
            },
            c_poke_thickclub = {
                name = "Thick Club",
                text = {
                    "Creates a {C:attention}Strength{} card",
                    "{C:attention}Held Card{}",
                    "{C:inactive}(Must have room){}"
                }
            },
            c_poke_teraorb = {
                name = "Tera Orb",
                text = {
                    "Applies a random",
                    "{C:pink}Type{} sticker",
                    "to leftmost Joker{}", 
                    "and gives {C:attention}+1{} {C:pink}Energy{}"
                },
            },
            c_poke_metalcoat = {
                name = "Metal Coat",
                text = {
                    "Applies a {C:metal}Metal{} sticker",
                    "to leftmost Joker.",
                    "Creates a {C:attention}Chariot{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_dragonscale = {
                name = "Dragon Scale",
                text = {
                    "Applies a {C:dragon}Dragon{} sticker",
                    "to leftmost Joker.",
                    "Creates an {C:attention}Emperor{} card",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_kingsrock = {
                name = "King's Rock",
                text = {
                    "Turns {C:attention}#1#{} selected",
                    "card into a {C:attention}King{}",
                    "{C:attention}Evolution Card{}",
                },
            },
            c_poke_upgrade = {
                name = "Upgrade",
                text = {
                    "Gives {C:attention}#1#{} selected cards",
                    "a random {C:attention}Enhancement{}",
                    "{C:attention}Evolution Card{}",
                }
            },
            c_poke_icestone = {
                name = "Ice Stone",
                text = {
                    "Creates a {C:attention}Justice{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                }
            },
            c_poke_shinystone = {
                name = "Shiny Stone",
                text = {
                    "Creates a {C:attention}Star{} card",
                    "{C:attention}Evolution Card{}",
                    "{C:inactive}(Must have room){}"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Grass Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Grass{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_fire_energy = {
                name = "Fire Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Fire{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_water_energy = {
                name = "Water Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Water{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_lightning_energy = {
                name = "Lightning Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Lightning{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_psychic_energy = {
                name = "Psychic Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Psychic{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_fighting_energy = {
                name = "Fighting Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Fighting{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_colorless_energy = {
                name = "Colorless Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "of leftmost Joker permanently if able",
                    "Half as effective with ",
                    "non-{C:attention}Colorless{} Jokers",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
                },
            },
            c_poke_darkness_energy = {
                name = "Darkness Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Dark{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_metal_energy = {
                name = "Metal Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Metal{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_fairy_energy = {
                name = "Fairy Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Fairy{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Dragon Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Dragon{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_earth_energy = {
                name = "Earth Energy",
                text = {
                    "Increases most {C:attention}scoring{} and {C:money}${} number",
                    "values of leftmost {C:attention}Earth{} type",
                    "Joker permanently if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)",
                },
            },
            c_poke_emergy = {
                name = "Emergy",
                text = {
                    "Create {C:attention}1{} random {C:green}Energy",
                    "card with {C:dark_edition}Negative{} for each",
                    "{C:attention}Jolly Joker{} or {C:legendary}M Joker{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Shiny",
                label = "Shiny",
                text = {
                    "{C:attention}+1{} Booster Pack slot",
                    "available in shop",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} hand size",
                    "Earn {C:money}$#1#{} for each {C:attention}#3#{}",
                    "held in hand, rank",
                    "changes every round",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
                    "{C:inactive}(Evolves at {C:money}$16{}{C:inactive} earned)"
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} hand size",
                    "Earn {C:money}$#1#{} or {C:money}$#5#{} for each {C:attention}#4#{}",
                    "held in hand, rank",
                    "changes every round",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
                    "{C:inactive}(Evolves at {C:money}$16{}{C:inactive} earned)"
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} hand size",
                    "Earn {C:money}$#1#{} for each {C:attention}#4#{}",
                    "held in hand, rank",
                    "changes every round",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive} earned)",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} discard",
                    "Gains {C:mult}+#2#{} Mult per hand played",
                    "when {C:attention}#3#{} discards remaining",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+16{}{C:inactive} Mult)"
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} discard",
                    "Gains {C:mult}+#2#{} Mult per hand played",
                    "when {C:attention}#3#{} discards remaining",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+36{}{C:inactive} Mult)"
                } 
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} discard, {C:mult}+#1#{} Mult",
                    "{X:mult,C:white} X#2# {} Mult when {C:attention}#3#{} discards remaining",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#3#{} hands",
                    "Gains {C:chips}+#2#{} Chips for each hand",
                    "remaining at end of round",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Evolves at {C:chips}+16{} {C:inactive}Chips)"
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} hands",
                    "Gains {C:chips}+#2#{} Chips for each hand",
                    "remaining at end of round",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Evolves at {C:chips}+36{} {C:inactive}Chips)"
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} hands, {C:chips}+#1#{} Chips",
                    "{C:chips}+#2#{} Chips for each",
                    "remaining hand",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_butterfree = {
                name = "Butterfree",
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_weedle = {
                name = "Weedle",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Chips",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "All {C:planet}Planet{} cards and",
                    "{C:planet}Celestial Packs{} in",
                    "the shop cost {C:money}$2{} less",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "All {C:planet}Planet{} cards and",
                    "{C:planet}Celestial Packs{} in",
                    "the shop cost {C:money}$3{} less",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeotto",
                text = {
                    "All {C:planet}Planet{} cards and",
                    "{C:planet}Celestial Packs{} in the",
                    "shop are {C:attention}free{}, using",
                    "{C:planet}Planet{} cards earns you {C:money}$#1#{}"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Retrigger {C:attention}first{} played",
                    "card used in scoring",
                    "{C:attention}#1#{} additional time",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Retrigger {C:attention}first{} and {C:attention}second{}",
                    "played cards used in scoring",
                    "{C:attention}#1#{} additional time",
                } 
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Adds {C:attention}double{} the",
                    "level of the highest",
                    "level poker hand to Mult",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_fearow = {
                name = "Spearow",
                text = {
                    "Adds {C:attention}quadruple{} the",
                    "level of the highest",
                    "level poker hand to Mult",
                } 
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} Mult if",
                    "played hand contains",
                    "a {C:attention}Straight{}",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Mult if played hand",
                    "contains a {C:attention}Straight{}",
                    "Create a Tarot card if it",
                    "also contains an {C:attention}Ace{}."
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Earn {C:money}$#1#{} at",
                    "end of round for",
                    "each Joker you have",
                    "{C:inactive}(Max of {C:money}$10{C:inactive})",
                    "{C:inactive}(Evolves with a {C:attention}Thunder Stone{} {C:inactive}card)"
                } 
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Applies {C:dark_edition}Negative{} to self",
                    "at end of round if you",
                    "have at least {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Increases per Raichu you have){}",
                    "Earn {C:money}$#1#{} at end of",
                    "round for each Joker you have",
                    "{C:inactive}(Max of {C:money}$10{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "When a {C:attention}Glass{} card is",
                    "destroyed, add a {C:attention}Stone{} copy to",
                    "deck and draw it to {C:attention}hand{}",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "When a {C:attention}Glass{} card is",
                    "destroyed, add a {C:attention}Steel{} copy to",
                    "deck and draw it to {C:attention}hand{}",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Each {C:attention}Queen{}",
                    "held in hand",
                    "gives {C:chips}+#1#{} Chips",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Each {C:attention}Queen{}",
                    "held in hand",
                    "gives {C:chips}+#1#{} Chips",
                    "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} hand size",
                    "Each {C:attention}Queen{}",
                    "held in hand",
                    "gives {C:chips}+#1#{} Chips",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Each {C:attention}King{}",
                    "held in hand",
                    "gives {C:mult}+#1#{} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Each {C:attention}King{}",
                    "held in hand",
                    "gives {C:mult}+#1#{} Mult",
                    "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} hand size",
                    "Each {C:attention}King{}",
                    "held in hand",
                    "gives {C:mult}+#1#{} Mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Played cards with",
                    "{C:clubs}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Moon Stone{}{C:inactive} card)"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Played cards with",
                    "{C:clubs}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}9{} to create a",
                    "{C:spectral}Medium{} card when scored",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Evolves with a{} {C:attention}Fire Stone{}{C:inactive} card)"
                } 
            },
            j_poke_ninetales = {
                name = "ninetales",
                text = {
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}9{} to create a",
                    "{C:spectral}Medium{} card when scored",
                    "{C:inactive}(Must have room)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Played cards with",
                    "{C:spades}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Moonstone{}{C:inactive} card)"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Played cards with",
                    "{C:spades}#3#{} suit give",
                    "{C:mult}+#1#{} Mult and ",
                    "{C:chips}+#2#{} Chips when scored",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "{C:mult}+#1#{} Mult for each Enhanced",
                    "card in your full deck",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult, {C:attention}#4#{}{C:inactive} Enhancements)",
                    "{C:inactive}(Evolves at {C:mult}#3#{C:inactive} Enhancements)"
                } 
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Remove scoring card Enhancements",
                    "Gain {C:mult}+#2#{} for {C:attention}Mult{} and {C:attention}Wild{} cards",
                    "{C:chips}+#4#{} for {C:attention}Bonus{} and {C:attention}Stone{} cards,",
                    "{X:red,C:white}X#6#{} for {C:attention}Steel{} and {C:attention}Glass{} cards,",
                    "{C:money}$#8#{} for {C:attention}Gold{} and {C:attention}Lucky{} cards",
                    "{C:inactive}(Evolves at {C:attention}#9#{}{C:inactive}/20 Enhancements eaten)",
                    "{C:inactive}(Currently {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} end of round)"
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Leaf/Sun Stone{}{C:inactive} card)"
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#2#{} Mult or",
                    "{X:mult,C:white} X#1# {} Mult when scored"
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult per played hand",
                    "that contains a {C:attention}Two Pair{}", 
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Evolves at {C:mult}+8{}{C:inactive} Mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Mult per played hand",
                    "that contains a {C:attention}Two Pair{}",
                    "{C:mult}-#3#{} Mult per played hand",
                    "that does not",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Adds {C:attention}#1#{} to all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                    "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}2 in 6{C:inactive})",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Adds {C:attention}#1#{} to all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                    "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}3 in 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "When you get this,",
                    "create a {C:attention}Venus{} card",
                    "{C:inactive}(Must have room){}",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{X:red,C:white} X#1# {} Mult for each",
                    "level of {C:attention}Three of a Kind{},",
                    "beyond the first",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Earn {C:money}${} at end of",
                    "round equal to {C:attention}double{} the", 
                    "sell value of the leftmost {C:attention}Joker{}",
                    "{C:inactive}(Except itself){}",
                    "{C:inactive}(Currently {C:money}$#1#{C:inactive}, Max of {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "If played hand is a",
                    "single {C:attention}face card{}, earn {C:money}$#1#{}",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "If played hand is a single",
                    "{C:attention}face card{}, earn {C:money}$#1#{} and it",
                    "becomes {C:attention}Gold{} when scored"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Each played {C:attention}2{},",
                    "{C:attention}3{}, {C:attention}5{} gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips",
                    "when scored",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Each played {C:attention}2{},",
                    "{C:attention}3{}, {C:attention}5{} gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips",
                    "when scored",
                    "{C:inactive}(Evolves after triggering {C:attention}#3#{}{C:inactive}/25 times){}"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Mult if played",
                    "hand contains a {C:attention}Flush{}",
                    "{C:inactive}(Evolves with a{} {C:attention}Fire Stone{}{C:inactive} card)"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} Mult if played",
                    "hand contains a {C:attention}Flush{}.",
                    "Create a {C:attention}Lovers{} card",
                    "when {C:attention}Blind{} is selected"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Played cards with {V:1}#3#{} suit",
                    "give {C:mult}+#1#{} Mult when scored,",
                    "Suit changes in order after",
                    "hand is played",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Played cards with {V:1}#2#{} suit ",
                    "give {C:mult}+#1#{} Mult when scored,",
                    "Suit changes in order after",
                    "hand is played",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Evolves with a{} {C:attention,s:0.8}Water Stone{}{C:inactive,s:0.8} or {C:attention,s:0.8}King's Rock{}{C:inactive,s:0.8} card)"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Played cards with {V:1}#2#{} suit",
                    "give {C:mult}+#7#{} Mult",
                    "and {X:mult,C:white} X#1# {} Mult when scored,",
                    "Suit changes in order after",
                    "hand is played",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:attention}Fool{} card if",
                    "played {C:attention}poker hand{} has",
                    "already been played this round",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:attention}Fool{} card if",
                    "played {C:attention}poker hand{} has",
                    "already been played this round",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} consumable slot",
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:attention}Fool{} card if",
                    "played {C:attention}poker hand{} has",
                    "already been played this round",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} hands",
                    "{C:mult}-#2# discards{}",
                    "{C:mult}+#4#{} Mult",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} hands",
                    "{C:mult}-#2# discards{}",
                    "{C:mult}+#3#{} Mult",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} hands",
                    "{C:mult}-#2# discards{}",
                    "{C:mult}+#3#{} Mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Played cards with {C:attention}Even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Played cards with {C:attention}Even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Leaf Stone{}{C:inactive} card)"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebell",
                text = {
                    "Played cards with {C:attention}Even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "and {C:attention}retrigger{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Each played {C:attention}10{}",
                    "gives {C:mult}+#1#{} Mult when scored",
                    "if hand only contains {C:attention}10{}s",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Each played {C:attention}10{}",
                    "gives {C:mult}+#1#{} Mult when scored",
                    "{C:attention}10s can't{} be debuffed"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} hand size",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} hand size",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} hand size",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Gains {C:chips}#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Evolves at {C:chips}+60{} {C:inactive}Chips)"
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Gains {C:chips}#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "Applies {C:attention}Shortcut{} for first hand",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult on {C:attention}final",
                    "{C:attention}hand{} of round",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult on {C:attention}final {C:attention}hand{} of round",
                    "{C:green}#3# in #4#{} chance to create",
                    "a {C:attention}King's Rock{} card at",
                    "end of round {C:inactive,s:0.8}(Must have room){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} rounds or with a {C:attention,s:0.8}King's Rock{} {C:inactive,s:0.8}card)"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Gains {X:red,C:white} X#1# {} Mult",
                    "per hand played,",
                    "resets at end of round",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Played {C:attention}Steel{} cards",
                    "give {X:red,C:white}X#1#{} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Played {C:attention}Steel{} cards",
                    "give {X:red,C:white}X#1#{} Mult",
                    "{C:inactive}(Evolves with a {C:attention}Thunder Stone{}{C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "When you get this,",
                    "create a {C:attention}Leek{} card.",
                    "{C:green}#2# in #3#{} chance for {X:red,C:white}X#1#{} Mult",
                    "The chance is doubled for",
                    "each {C:attention}Leek{} card you have",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains at least",
                    "{C:attention}2{} face cards",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',      
                text = {
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains at least",
                    "{C:attention}3{} face cards"
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "If {C:attention}first hand{} of round", 
                    "has only {C:attention}1{} card, {C:green}#1# in #2#{} chance to",
                    "add a random {C:attention}seal{} to that card",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "If {C:attention}first hand{} of round", 
                    "has only {C:attention}1{} card, add a",
                    "random {C:attention}seal{} to that card",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult if",
                    "deck size > {C:attention}#3#{}",
                    "Add a random playing card",
                    "to your deck at end of round",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult for every card",
                    "above {C:attention}#3#{} in your full deck",
                    "{X:mult,C:white} X#2# {} Mult if deck size > {C:attention}#4#{}",
                    "{C:inactive,s:0.8}(Currently {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}Mult){}",
                    "Add two random playing cards to deck",
                    "and remove one random card from deck",
                    "at end of round"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "If hand has {C:attention}5{} scoring",
                    "cards, each have a {C:green}#1# in #2#{}",
                    "chance to retrigger",
                    "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "If hand has {C:attention}5{} scoring",
                    "cards, each have a {C:green}#1# in #2#{}",
                    "chance to retrigger",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add {C:dark_edition}Negative{} to a",
                    "random {C:attention}Joker{}",
                    "{S:1.1,C:red,E:2}self destructs{}",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add {C:dark_edition}Negative{} to a",
                    "random {C:attention}Joker{}",
                    "{S:1.1,C:red,E:2}self destructs{}",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add {C:dark_edition}Negative{} to a",
                    "random {C:attention}Joker{}",
                    "at end of round",
                    "{C:inactive,s:0.8}(Exludes self, odds can't be increased){}"
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "The leftmost scoring card of",
                    "your {C:attention}first hand{} of round",
                    "becomes a {C:attention}Stone{} card",
                    "{C:inactive}(Evolves with a {C:metal}Metal{} {C:inactive}sticker){}"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{C:mult}+#2#{} Mult per",
                    "unique {C:planet}Planet{} card",
                    "used this run",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+21{C:inactive} Mult)"
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:mult}+#2#{} Mult per unique",
                    "{C:planet}Planet{} card used this run.",
                    "When you get this,",
                    "create a {C:spectral}Trance{} card",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Played {C:attention}face{} cards",
                    "give {C:chips}+#1#{} Chips",
                    "when scored",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "All played {C:attention}face{} cards",
                    "become {C:attention}Bonus{} cards",
                    "when scored",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "If this is the {C:attention}leftmost{}",
                    "Joker, gain {C:mult}+#1#{} Mult",
                    "and debuff this Joker",
                    "until end of round",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "If this is the {C:attention}leftmost{}",
                    "Joker, gain {C:mult}+#1#{} Mult and {C:money}$#2#{}",
                    "and debuff this Joker",
                    "until end of round"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Played cards with",
                    "{C:hearts}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Leaf Stone{}{C:inactive} card)"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "{C:green}#4# in #5#{} chance for",
                    "played cards with",
                    "{C:hearts}#3#{} suit to give",
                    "{C:mult}+#1#{} Mult and {X:mult,C:white}X#2#{} Mult",
                    "when scored", 
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',      
                text = {
                    "When you get this, create",
                    "a {C:attention}Thick Club{} card",
                    "Gives {C:mult}+#1#{} Mult for each",
                    "filled consumable slot",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Thick Clubs{}{C:inactive,s:0.75} count as double){}",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} consumable slots",
                    "Gives {X:mult,C:white} X#1# {} Mult for each ",
                    "filled consumable slot",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Thick Clubs{}{C:inactive,s:0.75} count as double){}",
                    "{C:inactive}(Currently {X:mult,C:white} X#3# {}{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:red,C:white}X#1#{} Mult for every 2 cards",
                    "below {C:attention}#2#{} in your full deck",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:red,C:white}X#1#{} Mult for every 2 cards",
                    "above {C:attention}#2#{} in your full deck",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "First and second played",
                    "{C:attention}Jacks{} give {X:mult,C:white} X#1# {} Mult",
                    "when scored",
                    "{C:inactive}(Evolves after triggering {C:attention}#2#{}{C:inactive}/20 times){}"
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Sell this card to reduce the",
                    "score requirement of the",
                    "current {C:attention}Boss Blind{} by {C:attention}half{}",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Sell this card to reduce the",
                    "score requirement of the",
                    "current {C:attention}Boss Blind{} by {C:attention}half{}",
                    "and disable it",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Every played {C:attention}Stone{} card",
                    "permanently gains",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Every played {C:attention}Stone{} card",
                    "permanently gains",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "The first {C:attention}#1#{} times a",
                    "{C:attention}Lucky{} card triggers each round,",
                    "add a permanent copy to your",
                    "deck and draw it to {C:attention}Hand",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(Evolves when deck is >= 25% {C:attention}Lucky{C:inactive} cards)"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                    "{C:inactive}(Evolves when deck is >= 20% {C:attention}Wild{C:inactive} cards)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} consumable slots",
                    "{C:chips}-#2#{} hands",
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "for each scoring {C:attention}6{}",
                    "in {C:attention}first hand{} of round",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+12{} {C:inactive}Mult)"
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "for each scoring {C:attention}6{}",
                    "in your first {C:attention}2{} hands",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves with a {C:dragon}Dragon{} {C:inactive}sticker){}"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Retrigger each {C:attention}Gold{}",
                    "card held in hand {C:attention}#1#{} time",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Retrigger each {C:attention}Gold{}",
                    "card held in hand {C:attention}#1#{} times",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Played cards with",
                    "{C:diamonds}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Played cards with",
                    "{C:diamonds}#3#{} suit give",
                    "{C:mult}+#1#{} Mult and ",
                    "{C:money}$#2#{} when scored",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Retrigger leftmost card",
                    "held in hand {C:attention}#1#{} times"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "When Blind is selected, destroy",
                    "Joker to the right and gain {C:mult}+#2#{} Mult or {C:chips}+#4#{} Chips",
                    "Gain {C:attention}Foil{}, {C:attention}Holographic{}, or {C:attention}Polychrome{}",
                    "if Joker was {C:red}Rare{} or higher",
                    "{C:inactive}(Evolves with a {C:metal}Metal{} {C:inactive}sticker){}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {C:chips}+#3#{C:inactive} Chips)"
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "{C:attention}Playing cards{} added to your",
                    "deck from the {C:attention}Shop{}, {C:attention}Standard{} packs,",
                    "{C:spectral}Cryptid{} and certain Jokers",
                    "are {C:attention}duplicated{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "When a card is {C:attention}sold{}",
                    "and at end of round",
                    "gains {C:money}$#1#{} of {C:attention}sell value{}",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "If the {C:attention}first{} discard of",
                    "the round has only {C:attention}1{} card",
                    "destroy it and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:attention}Leftmost{} Joker becomes",
                    "{C:attention}pinned{} at end of shop",
                    "{C:attention}Unpin{} that Joker at end of round"
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Leader)',
                text = {
                    "{C:attention}Tauros{} Jokers each give {X:mult,C:white} X#1# {} Mult",
                    "Each reroll in the shop has a",
                    "{C:green}#2# in #3#{} chance to add",
                    "a {C:attention}Tauros (Herd){} to shop",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Herd)',
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "Applies {C:attention}Splash{}",
                    "{C:inactive}(Evolves after {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} Chips for each",
                    "{C:attention}Blind{} skipped this run",
                    "{C:inactive}(Currently {C:chips}+#1# {C:inactive}Chips)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Sell this to duplicate",
                    "the leftmost Joker",
                    "with {C:attention}Perishable{}",
                    "{C:inactive}(removes Eternal){}",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "Earn {C:money}$#1#{} for",
                    "the first {C:attention}5{} {C:green}rerolls{}",
                    "{C:inactive}(Evolves with...a lot){}",
                    "{C:inactive}Curently {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Gains {C:chips}+#2#{} Chips",
                    "for every {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Currently {C:attention}#3#{}{C:inactive}/3 rerolls)",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Earn {C:money}$#1#{}",
                    "for every {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Currently {C:attention}#2#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Gains {X:red,C:white} X#2# {} Mult",
                    "for every {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Currently {C:attention}#3#{}{C:inactive}/3 rerolls)",
                    "{C:inactive}(Currently {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "Create an {C:pink}Energy{} card",
                    "when any {C:attention}Booster Pack{}",
                    "is opened",
                    "{C:inactive}(Evolves with a{} {C:attention}Upgrade{}{C:inactive} card)"
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{C:attention}1{} #1#: Gain {C:money}$#2#{} of sell value",
                    "{C:attention}2{} #1#s: Earn {C:money}$#3#{}",
                    "{C:attention}3+{} #1#s: Create a random {C:attention}Tarot{} card {C:inactive}(Must have room)",
                    "{C:inactive}(Evolves after {C:attention}#4#{}{C:inactive} rounds)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{C:attention}2{} #1#s: Gain {C:money}$#2#{} of sell value",
                    "{C:attention}3{} #1#s: Earn {C:money}$#3#{}",
                    "{C:attention}4+{} #1#s: Create 2 random {C:attention}Tarot{} cards {C:inactive}(Must have room)",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{C:attention}1{} #1#s: {C:chips}+#2#{} Chips",
                    "{C:attention}2{} #1#s: Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{C:attention}3+{} #1#s: {C:chips}+#4#{} Chips",
                    "{C:inactive}(Evolves after {C:attention}#5#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{C:attention}2{} #1#s: {C:chips}+#2#{} Chips",
                    "{C:attention}3{} #1#s: Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{C:attention}4+{} #1#s: {C:chips}+#4#{} Chips",
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{C:attention}2{} #1#s: {C:mult}+#2#{} Mult",
                    "{C:attention}3{} #1#s: {C:mult}+#3#{} Mult and {C:chips}+#4#{} Chips",
                    "{C:attention}4+{} #1#s: {X:red,C:white}X#5#{} Mult"
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "When you get this, create a",
                    "{C:attention}Leftovers{} card. At end of",
                    "round gain {X:red,C:white}X#1#{} Mult ",
                    "for each {C:attention}Leftovers{} you have",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Add {C:attention}Foil{}, a",
                    "random {C:attention}enhancement{}, and a",
                    "random {C:attention}seal{} to unscored cards",
                    "on the {C:attention}first hand{} of the round"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Mult for",
                    "every {C:money}$#2#{} you have",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Upgrade the level of the",
                    "first {C:attention}3 discarded{}",
                    "poker hands each round"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "{C:attention}#3#{} or fewer cards",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+10{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "{C:attention}#3#{} or fewer cards",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+30{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "If played hand has",
                    "only {C:attention}1{} card",
                    "retrigger it {C:attention}#2#{} times"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "At end of shop, create a",
                    "{C:dark_edition}Polychrome{} {C:attention}duplicate{} of",
                    "leftmost {C:attention}Joker{} with {C:attention}+1{} {C:pink}Energy{}",
                    "then destroy leftmost {C:attention}Joker{}",
                    "{C:dark_edition}Polychrome{} Jokers each give {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Can't destroy self)",
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "At end of shop, create",
                    "a random {C:dark_edition}Negative{} {C:attention}Tarot{}",
                    "{C:spectral}Spectral{} or {C:item}Item{} card",
                    "{C:green}#1# in {C:green}#2#{} chance to create",
                    "a random {C:dark_edition}Negative{} Joker {C:attention}instead{}",
                    "{C:inactive,s:0.8}(Odds can't be increased){}"
                } 
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} Mult when played hand",
                    "isn't the last played hand",
                    "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Evolves at {C:mult}+7{} {C:inactive}Mult)"
                }  
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} Mult when played hand",
                    "isn't the last played hand",
                    "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
                }  
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "{C:attention}Randomize{} existing scoring card Enhancements",
                    "Gain {C:mult}+#2#{} for {C:attention}Mult{} and {C:attention}Wild{} cards",
                    "{C:chips}+#4#{} for {C:attention}Bonus{} and {C:attention}Stone{} cards,",
                    "{X:red,C:white}X#6#{} for {C:attention}Steel{} and {C:attention}Glass{} cards,",
                    "{C:money}$#8#{} for {C:attention}Gold{} and {C:attention}Lucky{} cards",
                    "{C:inactive}(Currently {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} end of round)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}",
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{X:red,C:white} X#2# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}",
                    "Create a {C:attention}Moon{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}",
                    "Create a {C:attention}World{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "During the {C:attention}Small Blind{}",
                    "played cards with {C:attention}Odd{} rank",
                    "become {C:attention}Wild{} cards when scored",
                    "If already {C:attention}Wild{}, adds {C:dark_edition}Polychrome"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Played cards with {V:1}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "Those cards retrigger based on",
                    "how many {X:water,C:white}Water{} Jokers you have",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Retrigger(s) divided evenly between scoring cards){}",
                    "Suit changes in order {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "Create a {C:attention}Sun{} card",
                    "every {C:attention}3{} {C:green}rerolls{}",
                    "Retrigger all played cards with",
                    "{C:hearts}Hearts{} suit in your {C:attention}first hand{}",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Create a {C:attention}Moon{} card every",
                    "{C:attention}3{} {C:green}rerolls{}, retrigger",
                    "all {C:attention}held in hand{} abilities of",
                    "cards with {C:clubs}#2#{} suit in {C:attention}final hand{}",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Played {C:attention}Kings{} give {X:red,C:white}X#1#{} Mult",
                    "when scored",
                    "Increases by {X:red,C:white}X#2#{} Mult",
                    "per hand played",
                    "resets at end of round",      
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "The leftmost scoring card of",
                    "your {C:attention}first hand{} of round",
                    "becomes a {C:attention}Steel{} card",
                    "{C:attention}Stone{} cards {C:attention}held{} in",
                    "hand become {C:attention}Steel{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "When Blind is selected, destroy",
                    "Joker to the right and gain",
                    "{C:attention}Foil{}, {C:attention}Holographic{}, or {C:attention}Polychrome{}",
                    "Those editions {C:attention}stack{} on this Joker",
                    "{C:inactive,s:0.75}(Matches destroyed Joker's edition if able){}",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Gains {C:mult}+#2#{} Mult for each",
                    "scoring {C:attention}6{}, if you have",
                    "a {C:attention}King{} held in hand gain",
                    "{X:red,C:white}X#4#{} Mult {C:attention}as well{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{} Mult{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+1{} Energy Limit",
                    "Create an {C:pink}Energy{} card",
                    "of the same {C:pink}Type{} of",
                    "leftmost Joker when any",
                    "{C:attention}Booster Pack{} is opened",
                    "{C:inactive}(Evolves with a{} {C:attention}Upgrade{}{C:inactive} card)"
                } 
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}",
                    "For the {C:attention}first hand{} of round",
                    "If {C:attention}2{} cards played, {C:attention}destroy{} one",
                    "If {C:attention}3+{} cards played, {C:attention}copy{} one to hand",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}",
                    "For the {C:attention}first hand{} of round",
                    "If {C:attention}2{} cards played, {C:attention}destroy{} one",
                    "If {C:attention}3+{} cards played, {C:attention}copy{} one to hand",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "if deck size",
                    "is exactly {C:attention}#2#{}"
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}",
                    "Create a {C:attention}Standard{} tag",
                    "when this Joker evolves",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}",
                    "Create a {C:attention}Coupon{} tag",
                    "when this Joker evolves",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}",
                    "{C:red}+#2#{} discards",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "The first {C:attention}#1#{} times a {C:attention}Lucky{}",
                    "card triggers each round, add a",
                    "permanent copy with {C:dark_edition}Polychrome{} to your",
                    "deck and draw it to {C:attention}Hand",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                } 
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Gains {C:chips}+#2#{} Chips",
                    "if played hand contains at least",
                    "one scoring {C:attention}Ace{} and is exactly {C:attention}#3#{} cards",
                    "{C:inactive}(Currently {C:chips}+#1#{}{C:inactive} Chips)",
                    "{C:inactive}(Evolves at {C:chips}+36{}{C:inactive} Chips)"
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Gains {C:chips}+#2#{} Chips",
                    "if played hand contains at least",
                    "two scoring {C:attention}Aces{} and is exactly {C:attention}#3#{} cards",
                    "{C:inactive}(Currently {C:chips}+#1#{}{C:inactive} Chips)",
                    "{C:inactive}(Evolves at {C:chips}+100{}{C:inactive} Chips)"
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Chips",
                    "If played hand is a {C:attention}Four of a Kind{}",
                    "each played card gives {X:mult,C:white}X{} Mult",
                    "equal to the {C:attention}cube root{} ",
                    "of that card's total chips",
                } 
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Chips for",
                    "each {C:attention}unscored{} card",
                    "in played hand",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} Chips for",
                    "each {C:attention}unscored{} card",
                    "in played hand",
                }  
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Baby{}",
                    "Apply a {C:attention}Red{} or {C:attention}Blue{} seal",
                    "to a random card in deck",
                    "at end of round",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}",
                    "Unscored cards in your",
                    "{C:attention}first hand{} become {C:attention}Lucky{}",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}",
                    "Create a random {C:item}Item{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Played {C:attention}Steel{} cards",
                    "give {X:red,C:white}X#1#{} Mult",
                    "{X:metal,C:white}Metal{} Jokers next to",
                    "this Joker each give {X:red,C:white}X#2#{} Mult"
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "First and second played",
                    "Played {C:attention}Jacks{} give {X:mult,C:white} X#1# {} Mult",
                    "when scored and further {C:attention}Jacks{}",
                    "give {X:mult,C:white} X#2# {} Mult when scored"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Every played {C:attention}Stone{} card",
                    "permanently gains",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:attention}Stone{} cards retrigger for each",
                    "{C:attention}other{} {X:earth,C:white}Earth{} Joker you have",
                    "{C:inactive}(Currently #2# retriggers)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                    "Wild cards {C:attention}can't{} be debuffed"
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "When a card is {C:attention}sold{}",
                    "and at end of round",
                    "gains {C:money}$#1#{} of {C:attention}sell value{}",
                    "Gives {X:mult,C:white}X#2#{} Mult for each",
                    "dollar of sell value this Joker has",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "If the {C:attention}first{} discard of",
                    "the round has only {C:attention}1{} card,",
                    "destroy it and gain {C:mult}+#2#{} Mult",
                    "Gains {X:mult,C:white}X#4#{} Mult for each",
                    "card discarded",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "Create a {C:attention}World{} card",
                    "every {C:attention}3{} {C:green}rerolls{}",
                    "Every played card with {C:spades}#2#{} suit",
                    "permanently gains {C:chips}+#3#{} Chips",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Create a random {C:attention}Tarot{} card",
                    "every {C:attention}3{} {C:green}rerolls{}",
                    "{C:green}#2#{} in {C:green}#3#{} chance for {C:dark_edition}Negative{} edition",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Energy Limit",
                    "This Joker gains",
                    "{X:red,C:white} X#2# {} Mult every time",
                    "an {C:pink}Energy{} card is used",
                    "{C:inactive}(Currently {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Create a {C:attention}Star{} card",
                    "every {C:attention}3{} {C:green}rerolls{}",
                    "Each card with {C:diamonds}#2#{} suit",
                    "held in hand gives {X:mult,C:white} X#3# {} Mult",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "This card scores {C:attention}triple{}",
                    "its Mult if you have",
                    "a {X:lightning, C:black}Lightning{} Joker",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "for each {X:lightning, C:black}Lightning{} Joker",
                    "you have {C:inactive}(includes self){}",
                     "{C:inactive}(Currently {C:mult}#2#{C:inactive} Mult)",
                    "{C:inactive}(Evolves with a{} {C:attention}Thunder Stone{}{C:inactive} card)"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult for each",
                    "other {X:lightning, C:black}Lightning{} Joker",
                    "you have{}",
                     "{C:inactive}(Currently {X:red,C:white} X#2# {}{C:inactive} Mult)",
                }  
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult and earn {C:money}$#2#{}",
                    "if played hand contains",
                    "a {C:attention}Straight{}",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} Mult and earn {C:money}$#2#{}",
                    "if played hand contains",
                    "a {C:attention}Straight{}",
                } 
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Each played {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored",
                    "for each hand played this round",
                    "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Chips)",
                } 
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Creates consumables",
                    "when obtained?",
                    "Creates {C:attention}#1#{}? {C:attention}Tags{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult for each",
                    "Joker with a {C:pink}Type{} you have",
                    "{C:attention}Pokemon{} may appear",
                    "multiple times",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokemon {C:attention}can't{} evolve",
                    "{C:attention}Basic{} Pokemon each give {X:mult,C:white} X#1# {} Mult",
                } 
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Trainer Sleeve",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
                    "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Obituary Sleeve",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Luminous Sleeve",
                text = {
                    "All Jokers are created",
                    "with random {C:pink}Type{} stickers",
                },
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultraball",
                text = {
                    "Create a random",
                    "{C:attention}Stage 2 Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_masterball = {
                name = "Masterball",
                text = {
                    "Create a random",
                    "{C:attention}Legendary Pokemon Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_transformation = {
                name = "Transformation",
                text = {
                    "Evolves leftmost Pokemon to",
                    "the highest {C:attention}stage{}",
                    "and increases most {C:attention}scoring{} and {C:money}${}", 
                    "number values if able",
                    "{C:inactive}(Max of {C:attention}#1#{}{C:inactive} increases per Joker)"
                },
            },
            c_poke_obituary = {
                name = "Obituary",
                text = {
                    "Adds a {C:pink}Pink{} seal",
                    "to {C:attention}1{} selected card",
                }
            },
            c_poke_nightmare = {
                name = "Nightmare",
                text = {
                    "Destroys a random Pokemon",
                    "Joker and creates {C:attention}3{}",
                    "random {C:pink}Energy{} with {C:dark_edition}Negative{}"
                },
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Pocket Tag",
                text = {
                    "Gives a free",
                    "{C:pink}Mega Pocket Pack",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Shiny Tag",
                text = {
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:colorless}Shiny{}",
                }, 
            },
        },
        Tarot = {
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Energy Search",
                text = {
                    "{C:pink}+1{} Energy Limit"
                },
            },
            v_poke_energyresearch = {
                name = "Energy Research",
                text = {
                    "{C:pink}+1{} Energy Limit"
                },
            },
            v_poke_goodrod = {
                name = "Good Rod",
                text = {
                    "{C:attention}Pocket{} packs have",
                    "{C:attention}1{} more card in them",
                },
            },
            v_poke_superrod = {
                name = "Super Rod",
                text = {
                    "{C:attention}Pocket{} packs have",
                    "{C:attention}1{} more card in them",
                },
            },
        },
        Other = {

            Grass = {
                name = "Type",
                text = {
                  "{X:grass,C:white}Grass{}",
                }
            },
            Fire = {
                name = "Type",
                text = {
                  "{X:fire,C:white}Fire{}",
                }
            },
            Water = {
                name = "Type",
                text = {
                  "{X:water,C:white}Water{}",
                }
            },
            Lightning = {
                name = "Type",
                text = {
                  "{X:lightning,C:black}Lightning{}",
                }
            },
            Psychic = {
                name = "Type",
                text = {
                  "{X:psychic,C:white}Psychic{}",
                }
            },
            Fighting = {
                name = "Type",
                text = {
                  "{X:fighting,C:white}Fighting{}",
                }
            },
            Colorless = {
                name = "Type",
                text = {
                  "{X:colorless,C:white}Colorless{}",
                }
            },
            Dark = {
                name = "Type",
                text = {
                  "{X:dark,C:white}Dark{}",
                }
            },
            Metal = {
                name = "Type",
                text = {
                  "{X:metal,C:white}Metal{}",
                }
            },
            Fairy = {
                name = "Type",
                text = {
                  "{X:fairy,C:white}Fairy{}",
                }
            },
            Dragon = {
                name = "Type",
                text = {
                  "{X:dragon,C:white}Dragon{}",
                }
            },
            Earth = {
                name = "Type",
                text = {
                  "{X:earth,C:white}Earth{}",
                }
            },
            Bird = {
                name = "Type",
                text = {
                  "{X:bird,C:white}Bird{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Ancient",
                text = {
                    "Effect based on",
                    "number of {C:attention}#1#s{}",
                    "in poker hand"
                }
            },
            eitem = {
                name = "Evolution Card",
                text = {
                    "Evolves leftmost",
                    "{C:attention}eligible{} Joker",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Held Card",
                text = {
                    "Used by {C:attention}#1#{}"
                }
            },
            basic = {
                name = "Basic",
                text = {
                    "A Pokemon Joker",
                    "that hasn't {C:attention}Evolved{}"
                }
            },
            stage1 = {
                name = "Stage 1",
                text = {
                    "A Pokemon Joker",
                    "that has {C:attention}Evolved{} once"
                }
            },
            stage2 = {
                name = "Stage 2",
                text = {
                    "A Pokemon Joker",
                    "that has {C:attention}Evolved{} twice"
                }
            },
            energy = {
                name = "Energy Used",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            baby = {
                name = "Baby",
                text = {
                    "{C:attention}Pins{} other Non-Baby Jokers",
                    "when you get this, Jokers are",
                    "unpinned when this card",
                    "evolves or is removed"
                }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Can only be obtained",
                    "through {C:attention}Evolution{}",
                    "or certain {C:attention}Pokeball Items{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Pink Seal",
                text = {
                    "Creates an {C:pink}Energy{} card",
                    "if it scores in the",
                    "{C:attention}first hand{} of round"
                },
            },

            grass_sticker = {
                name = "Type",
                text = {
                    "{X:grass,C:white}Grass{}"
                } 
            },
            fire_sticker = {
                name = "Type",
                text = {
                    "{X:fire,C:white}Fire{}"
                } 
            },
            water_sticker = {
                name = "Type",
                text = {
                    "{X:water,C:white}Water{}"
                } 
            },
            lightning_sticker = {
                name = "Type",
                text = {
                    "{X:lightning,C:white}Lightning{}"
                } 
            },
            psychic_sticker = {
                name = "Type",
                text = {
                    "{X:psychic,C:white}Psychic{}"
                } 
            },
            fighting_sticker = {
                name = "Type",
                text = {
                    "{X:fighting,C:white}Fighting{}"
                } 
            },
            colorless_sticker = {
                name = "Type",
                text = {
                    "{X:colorless,C:white}Colorless{}"
                } 
            },
            dark_sticker = {
                name = "Type",
                text = {
                    "{X:dark,C:white}Dark{}"
                } 
            },
            metal_sticker = {
                name = "Type",
                text = {
                    "{X:metal,C:white}Metal{}"
                } 
            },
            fairy_sticker = {
                name = "Type",
                text = {
                    "{X:fairy,C:white}Fairy{}"
                } 
            },
            dragon_sticker = {
                name = "Type",
                text = {
                    "{X:dragon,C:white}Dragon{}"
                } 
            },
            earth_sticker = {
                name = "Type",
                text = {
                    "{X:earth,C:white}Earth{}"
                } 
            },
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "Not Discovered",
                text = {
                    "Purchase or use",
                    "this card in an",
                    "unseeded run to",
                    "learn what it does"
                }
            },
            undiscovered_item = {
                name = "Not Discovered",
                text = {
                    "Purchase or use",
                    "this card in an",
                    "unseeded run to",
                    "learn what it does"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Jumbo Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Mega Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Jumbo Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Mega Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} of",
                    "up to {C:attention}#2#",
                    "{C:pink}Energy{} or {C:item}Item{} Cards{}",
                },
            },
        },
    },
    misc = {
        achievement_names = {
   
        },
        achievement_descriptions = {
       
        },
        challenge_names = {
            c_poke_poke_master = "Pokemon Master",
        },
        dictionary = {
            k_energy = "Energy",
            k_item = "Item",
            k_poke_pocket_pack = "Pocket Pack",

            k_poke_safari = "Safari",

            b_save = "SAVE",
            b_energy_cards = "Energy Cards",
            b_item_cards = "Item Cards",
            
            --Mod Menu stuff
            poke_settings_pokemon_only = "Pokemon only?",
            poke_settings_unlimited_energy = "Unlmited Energy?",
            poke_settings_shiny_playing_cards = "Shiny on playing cards?",
            poke_settings_jokers_only = "Jokers only?",
            poke_settings_no_evolutions = "No Evolutions?",
            poke_settings_pokeballs = "Pokéballs?",
            poke_settings_pokedex_number = "Pokedex Numbers?",
            poke_settings_pokemon_splash = "Pokémon Splash Card?",
            poke_credits_actualcredits = "Credits",
            poke_credits_thanks = "Thanks to",
            poke_credits_lead = "Lead Developer: ",
            poke_credits_graphics = "Graphic Design: ",
            poke_credits_quality_assurance_main = "QA Lead: ",
            poke_credits_developer = "Developers: ",
            poke_credits_community_manager = "Community Managers: ",
            poke_credits_promotion_producer = "Promotion Producer: ",
            --This one is unused, for now
            poke_credits_localization = "Localization: ",

            poke_plus_pokeitem = "+1 Item",
            poke_plus_energy = "+1 Energy",
            poke_destroyed_ex = "Destroyed!",
            poke_evolve_success = "Evolved!",
            poke_evolve_level = "Level up!",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Metal!",
            poke_dragon_ex = "Dragon!",
            poke_unlimited_energy = "Infinity",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone and Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokéball",
            goodrod_variable = "Good Rod",
            pinkseal_variable = "Pink Seal",

            --From Gastly Line
            poke_lick_ex = "Lick!",
            poke_lick = "Lick",
            --From Kingler
            poke_surf_ex = "Surf!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            --From Exeggutor
            poke_solar_ex = "Solar!",
            poke_solar = "Solar",
            --From Pinsir
            poke_pinsir_pin = "Pinned!",
            poke_pinsir_remove_pin = "Unpinned!",
            --From Tangela line
            poke_tangela_bonus = "All!",
            --Golbat And Crobat thingy
            poke_screech_ex = "Skree!",
            --From Bellossom
            poke_petal_dance_ex = "Petal!",
            poke_petal_dance = "Petal",
            --From Scizor
            poke_x_scissor_ex = "X Scissor!",
            poke_x_scissor = "X Scissor",
            --From Kingdra
            poke_twister_ex = "Twister!",
            --From Mime Jr.
            poke_mime_ex = "Mime!",
            --From Magmortar
            poke_fire_blast_ex = "Fire Blast!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Thunder!",
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Pink Seal",

            poke_shiny = "Shiny",

            grass_sticker = "Tera",
            fire_sticker = "Tera",
            water_sticker = "Tera",
            lightning_sticker = "Tera",
            psychic_sticker = "Tera",
            fighting_sticker = "Tera",
            colorless_sticker = "Tera",
            dark_sticker = "Tera",
            metal_sticker = "Tera",
            fairy_sticker = "Tera",
            dragon_sticker = "Tera",
            earth_sticker = "Tera",

            k_poke_safari = "Safari",
        },
        v_dictionary = {
            
        },
        v_text = {
           
        },
    }
}