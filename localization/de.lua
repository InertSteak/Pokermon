-- Welcome to de.lua!
-- de stands for Deutsch Aka German

--Progress report:
--Update this as you go! Or don't, I know Cryptid doesn't (lmfao)

--[[
Decks: Yes
Jokers: Yes
Settings/Mod: Yes
Items: Yes
Energy: Yes
Deck Sleeves (requires Decksleeves Mod): No
Boss Blinds: Yes
Challenges: Yes
Spectrals: Yes
Tarots: Yes (there aren't any lmao)
Stickers: Yes
Planets: Yes (there aren't any lmao)
Dictonary: Yes
Editions: Yes
Vouchers: Yes
Tags: Yes
Misc Infoqueues (ancient, baby, eitem, Type, etc): Yes
Other (packs, stickers, etc): Yes
Misc: Yes
]]--


return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Trainer Deck",
                text = {
                    "Beginne den Durchlauf mit dem",
                    "{C:tarot,T:v_poke_goodrod}#1#{}-Gutschein",
                    "und einer {C:tarot,T:c_poke_pokeball}#2#{}-Karte",
                } 
            },
			b_poke_telekineticdeck = {
                name = "Telekinetisches Deck",
                text = {
                    "Beginne den Durchlauf mit dem",
                    "{C:tarot,T:v_crystal_ball}#1#{}-Gutschein",
                    "und {C:attention}2{} Kopien",
                    "von {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            b_poke_obituarydeck = {
                name = "Nachruf Deck",
                text = {
                    "Alle Karten haben ein {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Leuchtendes Deck",
                text = {
                    "Alle Joker haben einen",
                    "zufälligen {C:pink}Typ{}",
                    "und haben {C:attention}+1{} {C:pink}Energie"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Kammer der Chartreuse",
                text = {
                    "Bei jeder Hand wird ein zufälliger",
                    "Pokémon Typ geschwächt",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Erzeugt eine zufällige",
                    "{C:attention}Basis Joker{}-Karte",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
            c_poke_greatball = {
                name = "Superball",
                text = {
                    "Erzeugt eine zufällige",
                    "{C:attention}Phase 1 Joker{}-Karte",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
            c_poke_moonstone = {
                name = "Mondstein",
                text = {
                    "{C:green}#2#-zu-#3#{}-Chance das",
                    "Level der ausgewählten",
                    "{C:attention}Poker Hand{} zu erhöhen",
                    "{C:attention}Entwicklungskarte{}",
                    "{C:inactive}(Hand: {C:attention}#1#{C:inactive}){}",
                },
            },
            c_poke_sunstone = {
                name = "Sonnenstein",
                text = {
                    "Verstärkt {C:attention}#1#{} ausgewählte Karten",
                    "in {C:attention}Wild Cards{} mit einem",
                    "{C:attention}zufälligen{} Rang",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_waterstone = {
                name = "Wasserstein",
                text = {
                    "Verstärkt {C:attention}#1#{} ausgewählte Karte",
                    "in eine {C:attention}Bonuskarte{}",
					"{C:attention}Verdoppelt{} die gesamten Chips",
                    "wenn es bereits eine {C:attention}Bonuskarte{} ist",
                    "{C:inactive}(Maximal {C:chips}+#2#{C:inactive} Chips)",
                    "{C:attention}Entwicklungskarte{}"
                },
            },
            c_poke_thunderstone = {
                name = "Donnerstein",
                text = {
                    "Fügt {C:attention}2 Gold{} Karten zum Deck hinzu",
                    "mit dem gleichen Rang wie",
                    "{C:attention}1{} ausgewählte Karte",
                    "und zieht {C:attention}1{} auf die Hand",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_firestone = {
                name = "Feuerstein",
                text = {
                    "Wähle {C:attention}#1#{} Karte,",
                    "Verstärkt gewählte Karte in {C:attention}Mult-Karte{}",
                    "und zerstört dann {C:attention}1{} zufällige Karte",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_leafstone = {
                name = "Blattstein",
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance dass",
                    "jede Karte auf der Hand in eine",
                    "{C:attention}Glückskarte{} verstärkt wird",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_linkcable = {
                name = "Linkkabel",
                text = {
                    "Wähle {C:attention}#1#{} Karten,",
                    "{C:attention}Erhöhe{} den Rang der {C:attention}linken{} Karte",
                    "{C:attention}Verringere{} den Rang der {C:attention}rechten{} Karte",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_leftovers = {
                name = "Überreste",
                text = {
                    "{C:attention}Wiederverwendbar{}",
                    "Fügt {C:money}$#2#{} dem Verkaufswert des",
                    "Jokers ganz links hinzu",
                    "{C:inactive}(Einmal pro Runde verwendbar)",
                }
            },
            c_poke_leek = {
                name = "Lauch",
                text = {
                    "{C:attention}Wiederverwendbar{}",
                    "{C:green}#1#-zu-#2#{}-Chance sich selbst den",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holografisch{}, oder",
                    "{C:dark_edition}Polychrom{} Effekt hinzuzufügen",
                    "{C:green}#1#-zu-#3#{}-Chance sich {S:1.1,C:red,E:2}selbst zu zerstören{}",
                    "{C:inactive}(Einmal pro Runde verwendbar)",
                }
            },
            c_poke_thickclub = {
                name = "Kampfknochen",
                text = {
                    "{C:attention}Wiederverwendbar{}",
                    "Füge dauerhaft {C:chips}+#2#{} Chips",
                    "zu {C:attention}#1#{} ausgewählten Karte hinzu und",
                    "verstärke die Karte in {C:attention}Stein-Karte{} wenn der Karte",
                    "bereits Chips hinzugefügt wurden",
                    "{C:inactive}(Einmal pro Runde verwendbar)",
                }
            },
            c_poke_teraorb = {
                name = "Terakristall-Orb",
                text = {
                    "Gibt {C:attention}+1{} {C:pink}Energie{}",
                    "einem ausgewählten Joker{} oder Joker{} ganz link",
                    "{C:attention}Typänderung{}"
                },
            },
            c_poke_metalcoat = {
                name = "Metallmantel",
                text = {
                    "Erzeugt eine {C:attention}Stahl-Karte{} Kopie von",
                    "{C:attention}1{} ausgewählten Karte",
                    "{C:attention}Typänderung{}"
                },
            },
            c_poke_dragonscale = {
                name = "Drachenschuppe",
                text = {
                    "Erzeugt bis zu {C:attention}3{} zufällige",
                    "{C:item}Item{} oder {C:pink}Energie{} Karten",
                    "{C:attention}Typänderung{}",
                    "{C:inactive}(Muss Platz haben){}"
                },
            },
            c_poke_kingsrock = {
                name = "King-Stein",
                text = {
                    "Verwandelt {C:attention}#1#{} ausgewählte",
                    "Karte in einen {C:attention}König{}",
                    "{C:attention}Entwicklungskarte{}",
                },
            },
            c_poke_upgrade = {
                name = "Upgrade",
                text = {
                    "Gibt {C:attention}#1#{} ausgewählten Karte",
                    "eine zufällige {C:attention}Verbesserung{}",
                    "{C:attention}Entwicklungskarte{}",
                }
            },
			c_poke_dubious_disc = {
                name = "Dubiosdisc",
                text = {
                    "Wählt ein zufälliges oder entfernt {C:attention}Verbesserungen{}",
                    "aller Karten auf der Hand",
                    "{C:attention}Entwicklungskarte{}",
                    "{C:inactive}(Beinhaltet Karten ohne Verstärkungen){}"
                }
            },
            c_poke_icestone = {
                name = "Eisstein",
                text = {
                    "Verstärkt {C:attention}#1#{} ausgewählte Karten",
                    "in {C:attention}Glas-Karten{}",
                    "{C:green}#2#-zu-#3#{}-Chance für jede",
                    "ausgewählte Karte zu {C:attention}zerstören{}",
                    "{C:attention}Entwicklungskarte{}",
                }
            },
            c_poke_shinystone = {
                name = "Leuchtstein",
                text = {
                    "Fügt {C:dark_edition}Foil{}, {C:dark_edition}Holografisch{},",
                    "oder {C:dark_edition}Polychrom{} Effekt",
                    "{C:attention}1{} ausgewählten Karte auf der Hand hinzu und",
                    "{C:attention}ziehe{} {C:money}$#2#{} von jedem Joker ab",
                    "{C:attention}Entwicklungskarte{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Krummlöffel",
                text = {
                    "Erzeugt die letzte benutzte",
                    "{C:item}Item{} Karte oder {C:pink}Energie{} Karte",
                    "von diesem Durchlauf",
                    "{s:0.8,C:item}Krummlöffel und wiederverwendbare Materialien{s:0.8} ausgenommen"
                }
            },
            c_poke_prismscale = {
                name = "Schönschuppe",
                text = {
                    "Verwandelt {C:attention}#2#{} zufällige {C:attention}gehaltene{}",
                    "Karten in die {C:attention}Farbe{} von",
                    "{C:attention}#1#{} ausgewählten Karte",
                    "{C:attention}Entwicklungskarte{}"
                }
            },
            c_poke_duskstone = {
                name = "Finsterstein",
                text = {
                    "Erhalte {C:money}$#1#{}",
                    "wenn es {C:attention}#2#{} Runden",
                    "später benutzt wird",
                    "{C:attention}Entwicklungskarte{}",
                    "{C:inactive}(Erhält {C:money}${C:inactive} Startrunde {C:attention}#3#{C:inactive})"
                }
            },
            c_poke_dawnstone = {
                name = "Funkelstein",
                text = {
                    "Erhalte {C:money}${} gleich {c:attention}doppelt{}",
                    "dem {C:mult}Mult{} Wert von {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:attention}Entwicklungskarte{}",
                    "{C:inactive}(Aktuell {C:money}$#2#{C:inactive}/$40 maximal)",
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Pflanze Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Pflanze{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_fire_energy = {
                name = "Feuer Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Feuer{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_water_energy = {
                name = "Wasser Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Wasser{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_lightning_energy = {
                name = "Elektro Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Elektro{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_psychic_energy = {
                name = "Psycho Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Psycho{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_fighting_energy = {
                name = "Kampf Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Kampf{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_colorless_energy = {
                name = "Normal Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker wenn möglich",
                    "Halbe Effektivität für ",
                    "nicht-{C:attention}Normal{} Joker",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_darkness_energy = {
                name = "Unlicht Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Unlicht{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_metal_energy = {
                name = "Stahl Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Stahl{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_fairy_energy = {
                name = "Fee Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Fee{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Drache Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Drache{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
                },
            },
            c_poke_earth_energy = {
                name = "Boden Energie",
                text = {
                    "Erhöht dauerhaft {C:attention}Punktzahl{} und {C:money}${} Werte",
                    "des ganz linken oder ausgewählten Joker vom Typ {C:attention}Boden{}",
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)",
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
                    "{C:attention}+1{} Booster Pack Plätze",
                    "im Shop verfügbar",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bisasam",
                text = {
                    "{C:attention}+#4#{} Handgröße",
                    "Erhalte {C:money}$#1#{} für jedes",
                    "{C:attention}#3#{} auf der Hand,",
                    "Rang ändert sich jede Runde",
                    "{C:inactive}(Aktuell {C:money}$#2#{C:inactive} erhalten)",
                    "{C:inactive}(Entwicklung bei {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_ivysaur = {
                name = "Bisaknosp",
                text = {
                    "{C:attention}+#3#{} Handgröße",
                    "Erhalte {C:money}$#1#{} oder {C:money}$#5#{} für jedes",
                    "{C:attention}#4#{} auf der Hand,",
                    "Rang ändert sich jede Runde",
                    "{C:inactive}(Aktuell {C:money}$#2#{C:inactive} erhalten)",
                    "{C:inactive}(Entwicklung bei {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_venusaur = {
                name = "Bisaflor",
                text = {
                    "{C:attention}+#3#{} Handgröße",
                    "Erahlte {C:money}$#1#{} für jedes {C:attention}#4#{} auf der Hand,",
                    "Rang ändert sich jede Runde",
                    "{C:inactive}(Aktuell {C:money}$#2#{C:inactive} erhalten)",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Bisaflor",
                text = {
                    "{C:attention}+#1#{} Handgröße",
                }
            },
            j_poke_charmander = {
                name = "Glumanda",
                text = {
                    "{C:red}+#4#{} Abwurf",
                    "Erhalte {C:mult}+#2#{} Mult pro gespielter Hand",
                    "mit {C:attention}#3#{} verbleibenden Abwürfen",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+16{}{C:inactive} Mult)"
                } 
            },
            j_poke_charmeleon = {
                name = "Glutexo",
                text = {
                    "{C:red}+#4#{} Abwurf",
                    "Erhalte {C:mult}+#2#{} Mult pro gespielter Hand",
                    "mit {C:attention}#3#{} verbleibenden Abwürfen",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+36{}{C:inactive} Mult)"
                } 
            },
            j_poke_charizard = {
                name = "Glurak",
                text = {
                    "{C:red}+#4#{} Abwurf, {C:mult}+#1#{} Mult",
                    "{X:mult,C:white} X#2# {} Mult bei {C:attention}#3#{} verbleibenden Abwürfen",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Glurak X",
                text = {
                    "{X:mult,C:white} X#1# {} Mult bei {C:attention}#2#{} verbleibenden Abwürfen",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "Mega Glurak Y",
                text = {
                    "{C:red}+#1#{} Abwürfe",
                } 
            },
            j_poke_squirtle = {
                name = "Schiggy",
                text = {
                    "{C:chips}+#3#{} Hand",
                    "Erhalte {C:chips}+#2#{} Chips für jede",
                    "verbleibende Hand am Ende der Runde",
                    "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Entwicklung bei {C:chips}+32{} {C:inactive}Chips)"
                } 
            },
            j_poke_wartortle = {
                name = "Schillok",
                text = {
                    "{C:chips}+#3#{} Hand",
                    "Erhalte {C:chips}+#2#{} Chips für jede",
                    "verbleibende Hand am Ende der Runde",
                    "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Entwicklung bei {C:chips}+72{} {C:inactive}Chips)"
                } 
            },
            j_poke_blastoise = {
                name = "Turtok",
                text = {
                    "{C:chips}+#3#{} Hand, {C:chips}+#1#{} Chips",
                    "{C:chips}+#2#{} Chips für jede verbleibende Hand",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Turtok",
                text = {
                    "{C:chips}+#2#{} Hände",
                } 
            },
            j_poke_caterpie = {
                name = "Raupy",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_metapod = {
                name = "Safcon",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_butterfree = {
                name = "Smettbo",
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_weedle = {
                name = "Hornliu",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_kakuna = {
                name = "Kokuna",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_beedrill = {
                name = "Bibor",
                text = {
                    "{C:chips}+#1#{} Chips"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Bibor",
                text = {
                    "{C:chips}+#1#{} Chips",
                } 
            },
            j_poke_pidgey = {
                name = "Taubsi",
                text = {
                    "Alle {C:planet}Planeten{} Karten und",
                    "{C:planet}Himmelspakete{} im",
                    "Shop kosten {C:money}$2{} weniger",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Tauboga",
                text = {
                    "Alle {C:planet}Planeten{} Karten und",
                    "{C:planet}Himmelspakete{} im",
                    "Shop kosten {C:money}$3{} weniger",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_pidgeot = {
                name = "Tauboss",
                text = {
                    "Alle {C:planet}Planeten{} Karten und",
                    "{C:planet}Himmelspakete{} im",
                    "Shop sind {C:attention}kostenlos{}, Nutzung von",
                    "{C:planet}Planeten{} Karten gibt {C:money}$#1#{}"
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Tauboss",
                text = {
                    "{C:planet}Planeten{} Karten geben",
                    "{C:attention}#1#{} zusätzliche Level",
                } 
            },
            j_poke_rattata = {
                name = "Rattfratz",
                text = {
                    "Löse die {C:attention}erste{} gespielte Karte,",
                    "die für die Wertung verwendet wurde,",
                    "{C:attention}#1#{} weitere Male aus",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_raticate = {
                name = "Rattikarl",
                text = {
                    "Löse die {C:attention}erste{} und {C:attention}zweite{} gespielte",
                    "Karte, die für die Wertung verwendet wurde,",
                    "{C:attention}#1#{} weitere Male aus",
                } 
            },
            j_poke_spearow = {
                name = "Habitak",
                text = {
                    "Nach dem Spielen von {C:attention}#2#{} gewerteten Karten",
                    "erhöhe das Level der nächsten gespielten {C:attention}Poker Hand{}",
                    "{C:inactive}(Aktuell {C:attention}#3#{}{C:inactive}/#2#) {C:inactive}#4#{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_fearow = {
                name = "Ibitak",
                text = {
                    "Nach dem Spielen von {C:attention}#1#{} gewerteten Karten",
                    "erhöhe das Level der nächsten gespielten {C:attention}Poker Hand{}",
                    "{C:inactive}(Aktuell {C:attention}#2#{}{C:inactive}/#1#) {C:inactive}#3#{}",
                } 
            },
            j_poke_ekans = {
                name = "Rettan",
                text = {
                    "{C:mult}+#1#{} Mult wenn",
                    "gespielte Hand",
                    "{C:attention}Straight{} enthält",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Mult wenn gespielte Hand",
                    "{C:attention}Straight{} enthält",
                    "Erzeuge eine Tarot-Karte wenn",
                    "Hand auch ein {C:attention}Ass{} enthält"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Erhalte {C:money}$#1#{} am",
                    "Ende der Runde für",
                    "jeden Joker im Besitz",
                    "{C:inactive}(Maximal {C:money}$10{C:inactive})",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Donnerstein{} {C:inactive}Karte)"
                } 
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Wende {C:dark_edition}Negativ{} auf sich selbst an",
                    "am Ende der Runde bei dem Besitz",
                    "von mindestens {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Erhöht sich pro Raichu im Besitz){}",
                    "Erhalte {C:money}$#1#{} am Ende der",
                    "Runde für jeden Joker im Besitz",
                    "{C:inactive}(Maximal {C:money}$#3#{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandan",
                text = {
                    "{C:chips}+#2#{} Chips für jede {C:attention}Glas-Karte{}",
                    "im vollen Deck",
                    "Die erste zerstörte {C:attention}Glas-Karte{} jeder",
                    "Runde fügt eine Kopie dieser Karte der Hand hinzu",
                    "{C:inactive}(Aktuell {C:chips}+#3#{}{C:inactive} Chips){C:inactive}#4#{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandamer",
                text = {
                    "{C:chips}+#1#{} Chips für jede {C:attention}Glas-Karte{}",
                    "im vollen Deck",
                    "Die erste zerstörte {C:attention}Glas-Karte{} jeder",
                    "Runde fügt eine Kopie dieser Karte der Hand hinzu",
                    "{C:inactive}(Aktuell {C:chips}+#2#{}{C:inactive} Chips){C:inactive}#3#{}",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran♀",
                text = {
                    "Jede {C:attention}Dame{}",
                    "auf der Hand",
                    "gibt {C:chips}+#1#{} Chips",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Jede {C:attention}Dame{}",
                    "auf der Hand",
                    "gibt {C:chips}+#1#{} Chips",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Mondstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} Handgröße",
                    "Jede {C:attention}Dame{}",
                    "auf der Hand",
                    "gibt {C:chips}+#1#{} Chips",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran♂",
                text = {
                    "Jeder {C:attention}König{}",
                    "auf der Hand",
                    "gibt {C:mult}+#1#{} Mult",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Jeder {C:attention}König{}",
                    "auf der Hand",
                    "gibt {C:mult}+#1#{} Mult",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Mondstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} Handgröße",
                    "Jeder {C:attention}König{}",
                    "auf der Hand",
                    "gibt {C:mult}+#1#{} Mult",
                } 
            },
            j_poke_clefairy = {
                name = "Piepi",
                text = {
                    "Gespielte Karten mit",
                    "{C:clubs}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Mondstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_clefable = {
                name = "Pixi",
                text = {
                    "Gespielte Karten mit {C:clubs}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult für jede {C:clubs}#2#{} Karte",
                    "in der gewerteten Hand dieser Runde",
                    "{C:inactive,s:0.8}(Bei 5 gespielten Kreuz Karten, würde jede Karte{C:mult,s:0.8}+5{} {C:inactive,s:0.8}Mult){} geben",
                    "{C:inactive}(Aktuell {C:mult}#3#{}{C:inactive} Mult){}"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance für jede",
                    "gespielte und wertende {C:attention}9{} eine",
                    "{C:attention}Tarot-Karte{} zu erzeugen",
                    "{C:inactive}(Muss Platz haben)",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Feuerstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_ninetales = {
                name = "Vulnona",
                text = {
                    "{C:attention}Hält {C:dark_edition}Negativ{} Medium{}",
                    "{C:green}#1#-zu-#2#{}-Chance für jede",
                    "gespielte und wertende {C:attention}9{} eine",
                    "{C:attention}Tarot-Karte{} oder {C:planet}Planeten-Karte{} zu erzeugen",
                    "{C:inactive}(Muss Platz haben)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Pummeluff",
                text = {
                    "Gespielte Karten mit",
                    "{C:spades}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Mondstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_wigglytuff = {
                name = "Knuddeluff",
                text = {
                    "Gespielte Karten mit {C:spades}#3#{}-Farbe",
                    "geben {C:mult}+#1#{} Mult und",
                    "{C:chips}+#2#{} Chips plus die gesamten Chips",
                    "dieser Karte, wenn gezählt",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "{C:mult}+#1#{} Mult für jede verbesserte",
                    "Karte im vollen Deck",
                    "{C:inactive}(Aktuell {C:mult}+#2#{}{C:inactive} Mult, {C:attention}#4#{}{C:inactive} Verbesserungen)",
                    "{C:inactive}(Entwicklung bei {C:attention}#3#{C:inactive} Verbesserungen)"
                } 
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Entferne Verbesserungen von wertenden Karten",
                    "Erhalte {C:mult}+#2#{} für {C:attention}Mult{} und {C:attention}Wildcard{},",
                    "{C:chips}+#4#{} für {C:attention}Bonuskarten{} und {C:attention}Stein-Karten{},",
                    "{X:red,C:white}X#6#{} für {C:attention}Stahl-Karten{} und {C:attention}Glas-Karten{},",
                    "{C:money}$#8#{} für {C:attention}Gold-Karten{} and {C:attention}Glückskarten{}",
                    "{C:inactive}(Entwicklung bei {C:attention}#9#{}{C:inactive}/20 entfernten Verbesserungen)",
                    "{C:inactive}(Aktuell {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} am Ende der Runde)"
                } 
            },
            j_poke_oddish = {
                name = "Myrapla",
                text = {
                    "Gespielte Karten mit {C:attention}ungeradem{} Rang",
                    "geben {C:mult}+#1#{} oder {C:mult}+#2#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_gloom = {
                name = "Duflor",
                text = {
                    "Gespielte Karten mit {C:attention}ungeradem{} Rang",
                    "geben {C:mult}+#1#{} oder {C:mult}+#2#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Blattstein{} {C:inactive}oder {C:attention}Sonnenstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_vileplume = {
                name = "Giflor",
                text = {
                    "Gespielte Karten mit {C:attention}ungeradem{} Rang",
                    "geben {C:mult}+#2#{} Mult oder",
                    "{X:mult,C:white} X#1# {} Mult, wenn gezählt"
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult für jede gespielte Hand",
                    "die {C:attention}Zwei Paare{} enthält", 
                    "{C:inactive}(Aktuell {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+8{}{C:inactive} Mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasek",
                text = {
                    "{C:mult}+#2#{} Mult für jede gespielte Hand",
                    "die {C:attention}Zwei Paare{} enthält",
                    "{C:mult}-#3#{} Mult für jede gespielte Hand",
                    "die es nicht tut",
                    "{C:inactive}(Aktuell {C:mult}+#1#{} {C:inactive}Mult)",
                } 
            },
            j_poke_venonat = {
                name = "Bluzuk",
                text = {
                    "Fügt {C:attention}#1#{} zu allen {C:attention}aufgelisteten",
                    "{C:green,E:1,S:1.1}Wahrscheinlichkeiten{} hinzu",
                    "{C:inactive}(z.B.: {C:green}1-zu-6{C:inactive} -> {C:green}2-zu-6{C:inactive})",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_venomoth = {
                name = "Omot",
                text = {
                    "Fügt {C:attention}#1#{} zu allen {C:attention}aufgelisteten",
                    "{C:green,E:1,S:1.1}Wahrscheinlichkeiten{} hinzu",
                    "{C:inactive}(z.B.: {C:green}1-zu-6{C:inactive} -> {C:green}3-zu-6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Digda",
                text = {
                    "{C:chips}+#2#{} Chips wenn gespielte Hand",
                    "{C:attention}Drilling{} enthält",
                    "{C:mult}+#3#{} Mult wenn gespielte Hand",
                    "eine {C:attention}2{}, {C:attention}3{}, oder {C:attention}4{} enthält",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_dugtrio = {
                name = "Digdri",
                text = {
                    "{C:chips}+#2#{} Chips wenn gespielte Hand",
                    "{C:attention}Drilling{} enthält",
                    "{X:red,C:white} X#1# {} Mult wenn gespielte Hand",
                    "eine {C:attention}2{}, {C:attention}3{}, or {C:attention}4{} enthält",
                } 
            },
            j_poke_meowth = {
                name = "Mauzi",
                text = {
                    "Erhalte {C:money}$#1#{} am",
                    "Ende der Runde",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_persian = {
                name = "Snobilikat",
                text = {
                    "Erhalte {C:money}${} am Ende der",
                    "Runde gleich dem {C:attention}doppelten{}", 
                    "Verkaufswert des {C:attention}Joker{} ganz links",
                    "{C:inactive}(Ausgenommen sich selbst){}",
                    "{C:inactive}(Aktuell {C:money}$#1#{C:inactive}, Maximal {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Enton",
                text = {
                    "Wenn gespielte Hand eine",
                    "einzige {C:attention}Bildkarte{} ist, erhalte {C:money}$#1#{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_golduck = {
                name = "Entoron",
                text = {
                    "Wenn gespielte Hand eine einzige",
                    "{C:attention}Bildkarte{} ist, erhalte {C:money}$#1#{} und verwandle sie",
                    "in eine {C:attention}Gold-Karte{}, wenn gezählt"
                } 
            },
            j_poke_mankey = {
                name = "Menki",
                text = {
                    "Jede gespielte {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, oder {C:attention}7{} gibt",
                    "{C:mult}+#1#{} Mult und {C:chips}+#2#{} Chips",
                    "wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            j_poke_primeape = {
                name = "Rasaff",
                text = {
                    "Jede gespielte {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, oder {C:attention}7{} gibt",
                    "{C:mult}+#1#{} Mult und {C:chips}+#2#{} Chips",
                    "wenn gezählt",
                    "{C:inactive}(Entwicklung wenn {C:attention}#3#{}{C:inactive}/25 mal ausgelöst){}"
                } 
            },
            j_poke_growlithe = {
                name = "Fukano",
                text = {
                    "{C:mult}+#1#{} Mult wenn gespielte",
                    "Hand {C:attention}Flush{} enthält",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Feuerstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_arcanine = {
                name = "Arkani",
                text = {
                    "{X:red,C:white} X#1# {} Mult wenn gespielte",
                    "Hand {C:attention}Flush{} enthält",
                    "Erzeuge eine {C:attention}Die Liebenden{} Karte",
                    "wenn {C:attention}Blind{} ausgewählt wird"
                } 
            },
            j_poke_poliwag = {
                name = "Quapsel",
                text = {
                    "Gespielte Karten mit {V:1}#3#{}-Farbe",
                    "geben {C:mult}+#1#{} Mult, wenn gezählt",
                    "Farbe ändert sich nach jeder",
                    "gespielten Hand",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Quaputzi",
                text = {
                    "Gespielte Karten mit {V:1}#2#{}-Farbe",
                    "geben {C:mult}+#1#{} Mult, wenn gezählt",
                    "Farbe ändert sich nach jeder",
                    "gespielten Hand",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Entwicklung mit einer {C:attention,s:0.8}Wasserstein{}{C:inactive,s:0.8} oder {C:attention,s:0.8}King-Stein{}{C:inactive,s:0.8} Karte)"
                } 
            },
            j_poke_poliwrath = {
                name = "Quappo",
                text = {
                    "Gespielte Karten mit {V:1}#2#{}-Farbe",
                    "geben {C:mult}+#7#{} Mult",
                    "und {X:mult,C:white} X#1# {} Mult, wenn gezählt",
                    "Farbe ändert sich nach jeder",
                    "gespielten Hand",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance eine",
                    "{C:attention}Der Narr{} Karte zu erzeugen wenn",
                    "gespielte {C:attention}Poker Hand{} bereits",
                    "diese Runde gespielt wurde",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance eine",
                    "{C:attention}Der Narr{} oder {C:item}Krummlöffel{} Karte zu erzeugen",
                    "wenn gespielte {C:attention}Poker Hand{} bereits",
                    "diese Runde gespielt wurde",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_alakazam = {
                name = "Simsala",
                text = {
                    "{C:attention}+#3#{} Slot für Verbrauchsgegenstände",
                    "{C:green}#1#-zu-#2#{}-Chance eine",
                    "{C:attention}Der Narr{} oder {C:item}Krummlöffel{} Karte zu erzeugen",
                    "wenn gespielte {C:attention}Poker Hand{} bereits",
                    "diese Runde gespielt wurde",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Simsala",
                text = {
                    "{C:attention}+#3#{} Slot für Verbrauchsgegenstände",
                    "Jeder {C:attention}Verbrauchsgegenstand{} im Besitz gibt {X:mult,C:white}X#1#{} Mult",
                    "{C:item}Krummlöffel{} gibt {X:mult,C:white}X#2#{} Mult",
                } 
            },
            j_poke_machop = {
                name = "Machollo",
                text = {
                    "{C:chips}+#1#{} Hand",
                    "{C:mult}-#2# Abwurf{}",
                    "{C:mult}+#4#{} Mult",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_machoke = {
                name = "Maschock",
                text = {
                    "{C:chips}+#1#{} Hände",
                    "{C:mult}-#2# Abwürfe{}",
                    "{C:mult}+#3#{} Mult",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_machamp = {
                name = "Machomei",
                text = {
                    "{C:chips}+#1#{} Hände",
                    "{C:mult}-#2# Abwürfe{}",
                    "{C:mult}+#3#{} Mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Knofensa",
                text = {
                    "Gespielte Karten mit {C:attention}geradem{} Rang",
                    "geben {C:chips}+#1#{} Chips, wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_weepinbell = {
                name = "Ultrigaria",
                text = {
                    "Gespielte Karten mit {C:attention}geradem{} Rang",
                    "geben {C:chips}+#1#{} Chips, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Blattstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_victreebel = {
                name = "Sarzenia",
                text = {
                    "Gespielte Karten mit {C:attention}geradem{} Rang",
                    "geben {C:chips}+#1#{} Chips, wenn gezählt",
                    "und {C:attention}löse erneut aus{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacha",
                text = {
                    "Jede gespielte {C:attention}10{}",
                    "gibt {C:mult}+#1#{} Mult, wenn gezählt",
                    "und wenn die Hand nur {C:attention}10{}er enthält",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_tentacruel = {
                name = "Tentoxa",
                text = {
                    "Jede gespielte {C:attention}10{}",
                    "gibt {C:mult}+#1#{} Mult, wenn gezählt",
                    "{C:attention}10er können nicht{} geschwächt werden"
                } 
            },
            j_poke_geodude = {
                name = "Kleinstein",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} Handgröße",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_graveler = {
                name = "Georok",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} Handgröße",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_golem = {
                name = "Geowaz",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "{C:attention}-#2#{} Handgröße",
                } 
            },
            j_poke_ponyta = {
                name = "Ponita",
                text = {
                    "Erhält {C:chips}#2#{} Chips wenn gespielte", 
                    "Hand {C:attention}Straight{} enthält",
                    "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                    "{C:inactive}(Entwicklung bei {C:chips}+60{} {C:inactive}Chips)"
                } 
            }, 
            j_poke_rapidash = {
                name = "Galoppa",
                text = {
                    "Erhält {C:chips}#2#{} Chips wenn gespielte", 
                    "Hand {C:attention}Straight{} enthält",
                    "Wende {C:attention}Abkürzung{} für die erste Hand an",
                    "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Flegmon",
                text = {
                    "{X:red,C:white} X#1# {} Mult bei der {C:attention}finalen {C:attention}Hand{} der Runde",
                    "{C:inactive}(Entwicklung wenn {C:attention}#2#{}{C:inactive}/#3# mal ausgelöst)",
                    "{C:inactive}(Entwicklung mit einer {C:attention}King-Stein{}{C:inactive} Karte)"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Flegmon",
                text = {
                    "{X:red,C:white} X#1# {} Mult bei der {C:attention}finalen {C:attention}Hand{} der Runde",
                    "{C:green}#3#-zu-#4#{}-Chance eine",
                    "{C:attention}King-Stein{} Karte am Ende",
                    "der Runde zu erzeugen {C:inactive,s:0.8}(Muss Platz haben){}",
                    "{C:inactive,s:0.8}(Entwicklung nach {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} Runden oder mit einer {C:attention,s:0.8}King-Stein{} {C:inactive,s:0.8}Karte)"
                } 
            },
            j_poke_slowbro = {
                name = "Lahmus",
                text = {
                    "Erhält {X:red,C:white} X#1# {} Mult",
                    "pro gespielter Hand,",
                    "Wird am Ende der Runde zurückgesetzt",
                    "{C:inactive}(Aktuell {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Lahmus",
                text = {
                    "Erhält {X:red,C:white} X#1# {} Mult pro",
                    "gespielter Hand, wird zurückgesetzt wenn",
                    "{C:attention}Boss Blind{} besiegt wurde",
                    "{C:inactive}(Aktuell {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnetilo",
                text = {
                    "Gespielte {C:attention}Stahl-Karten{}",
                    "geben {X:red,C:white}X#1#{} Mult",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Gespielte {C:attention}Stahl-Karten{} geben {X:red,C:white}X#1#{} Mult",
                    "plus {X:red,C:white}X#2#{} Mult für jeden",
                    "benachbarten {X:metal,C:white}Stahl{} Joker",
                    "{C:inactive}(Aktuell {X:red,C:white}X#3#{}{C:inactive} Mult){}",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Donnerstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_farfetchd = {
                name = 'Porenta',      
                text = {
                    "{C:attention}Hält Lauch{}",
                    "{C:green}#2#-zu-#3#{}-Chance erhalte {C:money}$#1#",
                    "jedes mal wenn ein {C:attention}Verbrauchsgegenstand{} benutzt wird",
                    "{C:money}${} garantiert wenn {C:attention}Lauch{} benutzt wird",
                } 
            },
            j_poke_doduo = {
                name = 'Dodu',      
                text = {
                    "{C:mult}+#1#{} Mult wenn gespielte Hand",
                    "mindestens {C:attention}2{} Bildkarten enthält",
                    "{C:mult}+#1#{} Mult wenn gespielte Hand",
                    "{C:attention}Full House{} enthält",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_dodrio = {
                name = 'Dodri',      
                text = {
                    "{C:mult}+#1#{} Mult wenn gespielte Hand",
                    "mindestens {C:attention}3{} Bildkarten enthält",
                    "{C:mult}+#1#{} Mult wenn gespielte Hand",
                    "{C:attention}Full House{} enthält",
                } 
            },
            j_poke_seel = {
                name = 'Jurob',      
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance ein",
                    "zufälliges {C:attention}Siegel{} der wertenden Karte",
                    "ganz links bei der",
                    "{C:attention}ersten Hand{} der Runde hinzuzufügen",
                    "{C:inactive,s:0.75}(Enwicklung wenn das volle Deck mindestens {C:attention,s:0.75}#3#{}{C:inactive,s:0.75} {C:attention,s:0.75}Siegel{C:inactive,s:0.75} enthält)"
                } 
            },
            j_poke_dewgong = {
                name = 'Jugong',      
                text = {
                    "Füge ein zufälliges {C:attention}Siegel{} der",
                    "wertenden Karte ganz links der",
                    "{C:attention}ersten Hand{} der Runde hinzu",
                } 
            },
            j_poke_grimer = {
                name = 'Sleima',      
                text = {
                    "{C:mult}+#1#{} Mult wenn",
                    "Deckgröße > {C:attention}#3#{}",
                    "Füge am Ende der Runde eine zufällige",
                    "Spiekarte dem Deck hinzu",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_muk = {
                name = 'Sleimok',      
                text = {
                    "{C:mult}+#1#{} Mult für jede Karte",
                    "über {C:attention}#3#{} im vollen Deck",
                    "{X:mult,C:white} X#2# {} Mult wenn Deckgröße > {C:attention}#4#{}",
                    "{C:inactive,s:0.8}(Aktuell {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}Mult){}",
                    "Füge am Ende der Runde zwei zufällige Spielkarten",
                    "dem Deck hinzu und entferne eine zufällige",
                    "Spielkarte vom Deck"
                } 
            },
            j_poke_shellder = {
                name = 'Muschas',      
                text = {
                    "Wenn die Hand {C:attention}5{} wertende",
                    "Karten enthält, hat jede Karte eine {C:green}#1#-zu-#2#{}-Chance",
                    "erneut auszulösen",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Wasserstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_cloyster = {
                name = 'Austos',      
                text = {
                    "Wenn die Hand {C:attention}5{} wertende",
                    "Karten enthält, hat jede Karte eine {C:green}#1#-zu-#2#{}-Chance",
                    "erneut auszulösen",
                } 
            },
            j_poke_gastly = {
                name = 'Nebulak',      
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance am Ende der Runde die",
                    "Edition von einem zufälligen",
                    "{C:attention}Joker{} durch {C:dark_edition}Negativ{} zu {C:attention}ersetzen{}",
                    "{S:1.1,C:red,E:2}Zerstört sich selbst{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_haunter = {
                name = 'Apollo',      
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance am Ende der Runde die",
                    "Edition von einem zufälligen",
                    "{C:attention}Joker{} durch {C:dark_edition}Negativ{} zu {C:attention}ersetzen{}",
                    "{S:1.1,C:red,E:2}Zerstört sich selbst{} am Ende der Runde",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}Prozent Chance{}",
                    "Manchmal wird  am Ende der Runde die Edition",
                    "von einem zufälligen {C:attention}Joker{} durch",
                    "{C:dark_edition}Negativ{} {C:attention}ersetzt{}",
                    "{C:inactive,s:0.8}(Ausgenommen Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "{C:dark_edition}Polychrom{} Joker die im",
                    "{C:attention}Shop{} und in {C:attention}Booster-Paketen{} erscheinen würden",
                    "sind stattdessen {C:dark_edition}Negativ{}",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "Die ganz linke wertende Karte",
                    "der {C:attention}ersten Hand{} jeder Runde",
                    "wird eine {C:attention}Stein-Karte{}",
                    "{C:inactive}(Entwicklung mit einem {C:metal}Stahl{} {C:inactive}Sticker){}"
                } 
            },
            j_poke_drowzee = {
                name = 'Traumato',      
                text = {
                    "{C:mult}+#2#{} Mult pro",
                    "benutzter einzigartiger {C:planet}Planeten-Karte{}",
                    "in diesem Durchlauf",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+28{C:inactive} Mult)"
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Hält Trance{}",
                    "{C:mult}+#2#{} Mult pro benutzter einzigartiger",
                    "{C:planet}Planeten-Karte{} in diesem Durchlauf",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Gespielte {C:attention}Bildkarten{}",
                    "geben {C:chips}+#1#{} Chips",
                    "wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Alle gespielte {C:attention}Bildkarten{}",
                    "werden zu {C:attention}Bonuskarten{}",
                    "und geben {C:chips}+#1#{} Chips",
                    "wenn gezählt",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltobal',      
                text = {
                    "Wenn der Joker {C:attention}ganz links{} positioniert ist,",
                    "erhalte {C:mult}+#1#{} Mult",
                    "und schwäche diesen Joker",
                    "bis zu Ende der Runde",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_electrode = {
                name = 'Lektroball',      
                text = {
                    "Wenn der Joker {C:attention}ganz links{} positioniert ist,",
                    "erhalte {C:mult}+#1#{} Mult und {C:money}$#2#{}",
                    "und schwäche diesen Joker",
                    "bis zu Ende der Runde"
                } 
            },
            j_poke_exeggcute = {
                name = 'Owei',      
                text = {
                    "Gespielte Karten mit",
                    "{C:hearts}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Blattstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_exeggutor = {
                name = 'Kokowei',      
                text = {
                    "{C:green}#4#-zu-#5#{}-Chance dass",
                    "gespielte Karten mit",
                    "{C:hearts}#3#{}-Farbe",
                    "{C:mult}+#1#{} Mult und {X:mult,C:white}X#2#{} Mult geben",
                    "wenn gezählt", 
                } 
            },
            j_poke_cubone = {
                name = 'Tragosso',      
                text = {
                    "{C:attention}Hält Kampfknochen{}",
                    "Gibt {C:mult}+#1#{} Mult für",
                    "jeden Verbrauchsgegenstand {C:attention}im Besitz{}",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Kampfknochen{}{C:inactive,s:0.75} zählt doppelt){}",
                    "{C:inactive}(Aktuell {C:mult}+#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.75}(Entwicklung bei {C:attention,s:0.75}#4#{}{C:inactive,s:0.75}/#5# benutzten Verbrauchsgegenständen)"
                } 
            },
            j_poke_marowak = {
                name = 'Knogga',      
                text = {
                    "{C:attention}+#2#{} Slot für Verbrauchsgegenstände",
                    "Gibt {X:mult,C:white} X#1# {} Mult für jeden",
                    "gefüllten Slot für Verbrauchsgegenstände",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Kampfknochen{}{C:inactive,s:0.75} zählt doppelt){}",
                    "{C:inactive}(Aktuell {X:mult,C:white} X#3# {}{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Kicklee',      
                text = {
                    "{X:red,C:white}X#1#{} Mult für jede Karte",
                    "über {C:attention}#2#{} im vollen Deck",
                    "{C:inactive}(Aktuell {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Nockchan',      
                text = {
                    "{X:red,C:white}X#1#{} Mult für jede Karte",
                    "über {C:attention}#2#{} im vollen Deck",
                    "{C:inactive}(Aktuell {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Schlurp',      
                text = {
                    "Erster und zweiter gespielter",
                    "{C:attention}Bube{} gibt {X:mult,C:white} X#1# {} Mult",
                    "wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive}/20 mal ausgelöst){}"
                } 
            },
            j_poke_koffing = {
                name = 'Smogon',      
                text = {
                    "Verkaufe diese Karte um die",
                    "benötigte Punktzahl des aktuellen",
                    "{C:attention}Boss Blind{} zu {C:attention}halbieren{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_weezing = {
                name = 'Smogmog',      
                text = {
                    "Verkaufe diese Karte um die",
                    "benötigte Punktzahl des aktuellen",
                    "{C:attention}Boss Blind{} zu {C:attention}halbieren{}",
                    "und zu deaktivieren",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rihorn',      
                text = {
                    "Jede gespielte {C:attention}Stein-Karte{}",
                    "erhält permanent",
                    "{C:chips}+#1#{} Chips wenn gezählt",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_rhydon = {
                name = 'Rizeros',      
                text = {
                    "Jede gespielte {C:attention}Stein-Karte{}",
                    "erhält permanent {C:chips}+#1#{} Chips, wenn gezählt",
                    "Löse {C:attention}erste{} gespielte",
                    "{C:attention}Stein-Karte{} der Wertung erneut aus",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_chansey = {
                name = 'Chaneira',      
                text = {
                    "Die ersten {C:attention}#1#{} Male jede Runde",
                    "wenn eine {C:attention}Glückskarte{} ausgelöst wird,",
                    "füge dem Deck eine permanente Kopie hinzu",
                    "und ziehe sie auf die {C:attention}Hand",
                    "{C:inactive}(Aktuell {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(Entwicklung wenn Deck >= 25% {C:attention}Glückskarten{C:inactive} enthält)"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Gespielte {C:attention}Wildcards{} geben",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips oder {C:money}$#3#{}",
                    "{C:green}#4#-zu-#5#{}-Chance von {C:attention}allen drei{}",
                    "{C:inactive}(Entwicklung bei {C:attention}#6#{C:inactive}/#7# {C:inactive}gezählten{} {C:attention}Wildcards{})"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangama',      
                text = {
                    "{C:attention}+#1#{} Slots für Verbrauchsgegenstände",
                    "{C:chips}-#2#{} Hand",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangama',      
                text = {
                    "Löse alle gespielten Karten erneut aus",
                    "Erhalte einen {C:attention}Doppel-Tag{} am",
                    "Ende der Runde wenn mindestens",
                    "{C:attention}#1# Verbrauchsgegenstände{} diese Runde benutzt wurden",
                    "{C:inactive}(Aktuell {C:attention}#2#{C:inactive} Verbrauchsgegenstände benutzt){}"
                } 
            },
            j_poke_horsea = {
                name = 'Seeper',      
                text = {
                    "Erhält {C:mult}+#2#{} Mult",
                    "für jede wertende {C:attention}6{}",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+12{} {C:inactive}Mult)"
                } 
            },
            j_poke_seadra = {
                name = 'Seemon',      
                text = {
                    "Erhält {C:mult}+#2#{} Mult",
                    "wenn eine {C:attention}6{} punktet",
                    "Wird verdoppelt wenn ein {C:attention}König{}",
                    "auf der Hand gehalten wird",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung mit einem {C:dragon}Drachen{} {C:inactive}Sticker){}"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldini',      
                text = {
                    "Löse jede {C:attention}Gold-Karte{}",
                    "auf der Hand {C:attention}#1#{} weiteres Mal aus",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                } 
            },
            j_poke_seaking = {
                name = 'Golking',      
                text = {
                    "Löse jede {C:attention}Gold-Karte{}",
                    "auf der Hand {C:attention}#1#{} weitere Male aus",
                } 
            },
            j_poke_staryu = {
                name = 'Sterndu',      
                text = {
                    "Gespielte Karten mit",
                    "{C:diamonds}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult, wenn gezählt",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Wasserstein{}{C:inactive} Karte)"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Gespielte Karten mit",
                    "{C:diamonds}#3#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult und",
                    "{C:money}$#2#{} wenn gezählt",
                } 
            },
            j_poke_mrmime = {
                name = 'Pantimos',      
                text = {
                    "Löse die Karte ganz links auf der Hand",
                    "{C:attention}#1#{} weitere Male aus"
                } 
            },
            j_poke_scyther = {
                name = 'Sichlor',      
                text = {
                    "Wenn Blind ausgewählt wird,",
                    "wird der rechte Joker zerstört und erhalte {C:mult}+#2#{} Mult",
                    "Erhalte {C:attention}Foil{}, {C:attention}Holografisch{}, or {C:attention}Polychrom{}",
                    "wenn der Joker {C:red}Selten{} oder höher war",
                    "{C:inactive}(Entwicklung mit einem {C:dragon}Stahl{} {C:inactive}Sticker){}",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_jynx = {
                name = 'Rossana',      
                text = {
                    "{C:attention}Spielkarten{} die dem Deck hinzugefügt werden",
                    "aus dem {C:attention}Shop{}, {C:attention}Standardpaketen{},",
                    "{C:spectral}Cryptid{}, {C:item}Items{} und bestimmten Jokern",
                    "werden {C:attention}verdoppelt{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Elektek',      
                text = {
                    "Wenn eine Karte am Ende der Runde",
                    "{C:attention}verkauft{} wird",
                    "erhalte {C:money}$#1#{} des {C:attention}Verkaufswerts{}",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Wenn der {C:attention}erste{} Abwurf",
                    "der Runde nur {C:attention}1{} Karte hat",
                    "zerstöre sie und erhalte {C:mult}+#2#{} Mult",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Linkkabel{}{C:inactive} Karte)"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Mult wenn eine",
                    "gespielte Karte",
                    "den {C:attention}gleichen Rang{} hat wie",
                    "eine Karte {C:attention}auf der Hand{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Gespielte {C:attention}unverbesserte{} Karten",
                    "geben {X:mult,C:white} X#1# {} Mult wenn gezählt",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Anführer)',
                text = {
                    "Jeder {C:attention}Tauros{} Joker gibt {X:mult,C:white} X#1# {} Mult",
                    "Jede Aktualisierung im Shop hat eine",
                    "{C:green}#2#-zu-#3#{}-Chance dem Shop eine",
                    "{C:attention}Tauros (Herde){} Karte hinzuzufügen",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Herde)',
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_magikarp = {
                name = 'Karpador',
                text = {
                    "{C:chips}+#2#{} Chip",
                    "{C:attention}Platscher{}",
                    "{C:inactive}(Entwicklung nach {C:attention}#1#{}{C:inactive} Runden)"
                } 
            },
            j_poke_gyarados = {
                name = 'Garados',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Garados',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "Deaktiviert den Effekt",
                    "jedes {C:attention}Boss Blind{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} Chips für jeden übersprungenen",
                    "{C:attention}Blind{} in diesem Durchlauf",
                    "{C:inactive}(Aktuell {C:chips}+#1# {C:inactive}Chips)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Verkaufe diese Karte um den Joker",
                    "ganz links zu duplizieren",
                    "mit {C:attention}Verderblich{}",
                    "und einem {C:colorless}Normal{} Sticker",
                    "{C:inactive}(entfernt Ewig, ausgenommen Dittos){}",
                } 
            },
            j_poke_eevee = {
                name = 'Evoli',
                text = {
                    "Erhalte {C:money}$#1#{} für",
                    "die ersten {C:attention}5{} {C:green}Aktualisierungen{}",
                    "{C:inactive}(Entwicklung mit...einer Menge){}",
                    "{C:inactive}Aktuell {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'Aquana',
                text = {
                    "Erhält {C:chips}+#2#{} Chips",
                    "für alle {C:attention}3{} {C:green}Aktualisierungen{}",
                    "{C:inactive}(Aktuell {C:attention}#3#{}{C:inactive}/3 Aktualisierungen)",
                    "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            j_poke_jolteon = {
                name = 'Blitza',
                text = {
                    "Erhalte {C:money}$#1#{}",
                    "für alle {C:attention}3{} {C:green}Aktualisierungen{}",
                    "{C:inactive}(Aktuell {C:attention}#2#{}{C:inactive}/3 Aktualisierungen)"
                } 
            },
            j_poke_flareon = {
                name = 'Flamara',
                text = {
                    "Erhalte {X:red,C:white} X#2# {} Mult",
                    "für alle {C:attention}3{} {C:green}Aktualisierungen{}",
                    "{C:inactive}(Aktuell {C:attention}#3#{}{C:inactive}/3 Aktualisierungen)",
                    "{C:inactive}(Aktuell {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Energie Limit",
                    "Erzeuge eine {C:pink}Energie{} Karte",
                    "wenn ein {C:attention}Booster-Paket{}",
                    "geöffnet wird",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Upgrade{}{C:inactive} Karte)"
                } 
            },
            j_poke_omanyte = {
                name = 'Amonitas',
                text = {
                    "{C:attention}Antike #1#er{}",
                    "{X:attention,C:white}Eins{} : Erhalte {C:money}$#2#{} des Verkaufswerts",
                    "{X:attention,C:white}Zwei{} : Erhalte {C:money}$#3#{}",
                    "{X:attention,C:white}Drei+{} : Erzeuge eine zufällige {C:attention}Tarot-Karte{}",
                    "{C:inactive}(Muss Platz haben)",
                    "{C:inactive}(Entwicklung wenn die dritte Stufe {C:attention}#4#{}{C:inactive}/#5# mal ausgelöst wurde)"
                } 
            },
            j_poke_omastar = {
                name = 'Amoroso',
                text = {
                    "{C:attention}Antike #1#er{}",
                    "{X:attention,C:white}Eins{} : Erhalte {C:money}$#2#{} des Verkaufswerts",
                    "{X:attention,C:white}Zwei{} : Erhalte {C:money}$#3#{}",
                    "{X:attention,C:white}Drei{} : Erzeuge eine zufällige {C:attention}Tarot-Karte{}",
                    "{X:attention,C:white}Vier+{} : Erzeuge ein zufälliges {C:item}Item{}",
                    "{C:inactive}(Muss Platz haben){}"
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Antike #1#er{}",
                    "{X:attention,C:white}Eins{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}Zwei{} : Wertende {C:attention}#1#er{} erhalten permanent {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}Drei+{} : {C:chips}+#4#{} Chips",
                    "{C:inactive}(Entwicklung wenn die dritte Stufe {C:attention}#5#{}{C:inactive}/#6# mal ausgelöst wurde)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Antike #1#er{}",
                    "{X:attention,C:white}Eins{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}Zwei{} : Wertende {C:attention}#1#er{} erhalten permanent {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}Drei{} : {C:chips}+#4#{} Chips",
                    "{X:attention,C:white}Vier+{} : {C:attention}Erste{} und {C:attention}zweite{} gespielte Karte werden",
                    "{C:attention}#5#{} weiteres Mal ausgelöst"
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Antike #1#e{}",
                    "{X:attention,C:white}Eins{} : {C:mult}+#2#{} Mult",
                    "{X:attention,C:white}Zwei{} : {C:mult}+#3#{} Mult und {C:chips}+#4#{} Chips",
                    "{X:attention,C:white}Drei{} : {X:red,C:white}X#5#{} Mult",
                    "{X:attention,C:white}Vier+{} : Die Punkzahlen dieses Jokers werden {C:attention}verdoppelt{}"
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Gespielte {C:attention}#1#e{} geben",
                    "{X:mult,C:white} X#2# {} Mult für jedes {C:attention}#1#{} in",
                    "der gespielten Hand, wenn gezählt",
                    "{C:green}#3#-zu-#4#{}-Chance für jedes",
                    "gespielte {C:attention}#1#{} es zu zerstören",
                } 
            },
            j_poke_snorlax = {
                name = 'Relaxo',
                text = {
                    "{C:attention}Hält Überreste{}",
                    "Erhalte {X:red,C:white}X#1#{} Mult am Ende der Runde",
                    "für jedes {C:attention}Überreste{} im Besitz",
                    "{C:inactive}(Aktuell {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Arktos',
                text = {
                    "Füge {C:attention}Foil{}, eine",
                    "zufällige {C:attention}Verbesserung{} und ein",
                    "zufälliges {C:attention}Siegel{} nicht wertenden Karten",
                    "der {C:attention}ersten Hand{} der Runde hinzu"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Mult für",
                    "jede {C:money}$#2#{} im Besitz",
                    "{C:inactive}(Aktuell {X:red,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Lavados',
                text = {
                    "Upgrade das Level der",
                    "ersten {C:attention}3 abgeworfenen{}",
                    "Poker Hände jeder Runde"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Erhält {C:mult}+#2#{} Mult",
                    "wenn die gespielte Hand",
                    "{C:attention}#3#{} oder weniger Karten enthält",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+10{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonir',
                text = {
                    "Erhält {C:mult}+#2#{} Mult",
                    "wenn die gespielte Hand",
                    "{C:attention}#3#{} oder weniger Karten enthält",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+30{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonite = {
                name = 'Dragoran',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Wenn gespielte Hand",
                    "nur {C:attention}1{} Karte hat",
                    "löse sie {C:attention}#2#{} weitere Male aus"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtu',
                text = {
                    "Am Ende des Shops, erzeuge ein",
                    "{C:dark_edition}Polychromes{} {C:attention}Duplikat{} von",
                    "dem {C:attention}Joker{} ganz links mit {C:attention}+1{} {C:pink}Energie{}",
                    "und zerstöre dann den {C:attention}Joker{} ganz links",
                    "{C:dark_edition}Polychrome{} Joker geben {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Kann sich nicht selbst zerstören)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtu X",
                text = {
                    "Alle Joker geben {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtu Y",
                text = {
                    "Gibt dem Joker ganz links ",
                    "am Ende des Shops {C:attention}+2{} {C:pink}Energie{}",
                    "{C:pink}+1{} Energie Limit wenn der",
                    "{C:attention}Boss Blind{} besiegt wird"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "Am Ende des Shops, erzeuge",
                    "eine zufällige {C:dark_edition}Negative{} {C:attention}Tarot-Karte{},",
                    "{C:spectral}Geister-Karte{} oder {C:item}Item{}",
                    "Erzeugt manchmal {C:attention}stattdessen{} einen",
                    "{C:dark_edition}Negativen{} Joker",
                } 
            },
            j_poke_sentret = {
                name = 'Wiesor',
                text = {
                    "{C:mult}+#2#{} Mult pro",
                    "{C:attention}fortlaufender{} gespielter Hand, die",
                    "nicht der letzten gespielten Hand entspricht",
                    "{C:inactive}(Letzte Hand: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Aktuell {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Entwicklung bei {C:mult}+15{} {C:inactive}Mult)"
                }  
            },
            j_poke_furret = {
                name = 'Wiesenior',
                text = {
                    "{C:mult}+#2#{} Mult wenn die gespielte Hand",
                    "nicht der letzten gespielten Hand entspricht",
                    "{C:inactive}(Letzte Hand: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Aktuell {C:mult}+#1#{} {C:inactive}Mult)",
                }  
            },
            j_poke_crobat = {
                name = 'Iksbat',
                text = {
                    "Verändere {C:attention}zufällig{} bestehende Verbesserungen von wertenden Karten",
                    "Erhalte {C:mult}+#2#{} für {C:attention}Mult{} und {C:attention}Wildcards{}",
                    "{C:chips}+#4#{} für {C:attention}Bonuskarten{} und {C:attention}Stein-Karten{},",
                    "{X:red,C:white}X#6#{} für {C:attention}Stahl-Karten{} und {C:attention}Glas-Karten{},",
                    "{C:money}$#8#{} für {C:attention}Gold-Karten{} and {C:attention}Glückskarten{}",
                    "{C:inactive}(Aktuell {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} am Ende der Runde)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#2# {} Mult",
                    "Erhalte {C:money}$#1#{} am",
                    "Ende der Runde",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_cleffa = {
                name = 'Pii',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erzeuge eine {C:attention}Der Mond{} Karte mit",
                    "{C:dark_edition}Negativ{} am Ende der Runde",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_igglybuff = {
                name = 'Fluffeluff',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erzeuge eine {C:attention}Die Welt{} Karte mit",
                    "{C:dark_edition}Negativ{} am Ende der Runde",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_bellossom = {
                name = 'Blubella',
                text = {
                    "Gespielte Karten mit {C:attention}ungeradem{} Rang",
                    "geben {C:mult}+#1#{} Mult oder werden",
                    "{C:attention}Wildcards{} wenn gezählt",
                    "Wenn Karte bereits {C:attention}Wildcard{} ist, füge {C:dark_edition}Foil{},",
                    "{C:dark_edition}Holografisch{} or {C:dark_edition}Polychrom{} Effekt hinzu"
                } 
            },
            j_poke_politoed = {
                name = 'Quaxo',
                text = {
                    "Gespielte Karten mit {V:1}#2#{}-Farbe geben",
                    "{C:mult}+#1#{} Mult wenn gezählt",
                    "Diese Karten lösen erneut aus je nachdem",
                    "wie viele {X:water,C:white}Wasser{} Joker im Besitz",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Auslösungen werden gleichmäßig auf die wertenden Karten verteilt){}",
                    "Farben ändern in der Reihenfolge {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = 'Psiana',
                text = {
                    "Löse jede gespielte {C:attention}#3#{} erneut aus wenn gezählt",
                    "Jede gespielte Karte mit {V:1}#4#{}-Farbe",
                    "gibt {X:red,C:white}X#2#{} Mult wenn gezählt",
                    "Benötigter {C:attention}Rang{} und {C:attention}Farbe{} werden",
                    "{C:attention}zufällig{} ausgewählt bei jeder {C:green}Aktualisierung{}"
                } 
            },
            j_poke_umbreon = {
                name = 'Nachtara',
                text = {
                    "Verringere Level von {C:attention}#1#{}",
                    "Alle {C:attention}#2#{} Verringerungen, erzeuge",
                    "einen {C:attention}Orbital Tag{} oder {C:dark_edition}Negativ Tag{}",
                    "Benötigte Hand {C:attention}wechselt{} bei jeder {C:green}Aktualisierung{}",
                    "{C:inactive}(Aktuell {C:attention}#3#{}{C:inactive}/#2# Verringerungen)"
                } 
            },
            j_poke_slowking = {
                name = 'Laschoking',
                text = {
                    "Gespielte {C:attention}Könige{} geben {X:red,C:white}X#1#{} Mult",
                    "wenn gezählt, erhöht sich um {X:red,C:white}X#2#{} Mult",
                    "pro gespielter Hand nach der ersten Hand",
                    "Wird am Ende der Runde zurückgesetzt",      
                }
            },
            j_poke_steelix = {
                name = 'Stahlos',
                text = {
                    "Die wertende Karte ganz links",
                    "der {C:attention}ersten Hand{} der Runde",
                    "wird eine {C:attention}Stahl-Karte{}",
                    "{C:attention}Stein-Karten{} {C:attention}auf der Hand{}",
                    "werden zu {C:attention}Stahl-Karten{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scherox',
                text = {
                    "Wenn Blind ausgewählt wird, zerstöre den Joker",
                    "rechts davon und erhalte {C:mult}+#4#{} Mult. Erhalte {C:attention}Foil{}",
                    "{C:attention}Holografisch{}, oder {C:attention}Polychrom{} wenn er nicht {C:attention}Gewöhnlich{} war",
                    "Editionen werden {C:attention}gestapelt{} auf diesem Joker",
                    "{C:inactive,s:0.75}(Übereinstimmungen zerstören die Edition wenn möglich){}",
                    "{C:inactive}(Aktuell {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_delibird = {
                name = "Botogel",
                text = {
                  "Erhalte am Ende der Runde",
                  "ein {S:1.1,C:green,E:2}Geschenk{}",
                  "{C:inactive}(Muss Platz haben)"
                }
            },
            j_poke_mantine = {
                name = "Mantax",
                text = {
                  "Erhalte {C:chips}+#2#{} Chips wenn eine",
                  "{C:attention}Gold-Karte{} auf der Hand gehalten wird",
                  "oder wenn eine {C:attention}Gold-Karte{} gezählt wird",
                  "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_kingdra = {
                name = 'Seedraking',
                text = {
                    "Erhalte {C:mult}+#2#{} Mult",
                    "wenn eine {C:attention}6{} gezählt wird",
                    "Erhalte {X:red,C:white}X#4#{} Mult {C:attention}stattdessen{} wenn ein",
                    "{C:attention}König{} auf der Hand gehalten wird",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{} Mult{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Energie Limit",
                    "Erzeuge eine {C:pink}Energie{} Karte",
                    "von demselben {C:pink}Typ{} wie",
                    "der Joker ganz links wenn ein",
                    "{C:attention}Booster-Paket{} geöffnet wird",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Dubiosdisc{}{C:inactive} Karte)"
                } 
            },
            j_poke_stantler = {
                name = "Damhirplex",
                text = {
                  "Wenn gespielte Hand ein {C:attention}Paar{} enthält",
                  "gibt {C:chips}+#1#{} Chips mal den",
                  "{C:attention}Basischips{} der ersten gezählten Karte",
                  "Chips werden {C:attention}verdoppelt{} bei der {C:attention}finalen Hand{} der Runde",
                }
            },
            j_poke_tyrogue = {
                name = 'Rabauz',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Wenn {C:attention}erste Hand oder Abwurf{} der Runde",
                    "genau {C:attention}5{} Karten hat, wird eine",
                    "zufällige Karte bei gespielter Hand kopiert oder",
                    "bei Abwurf zerstört",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Kapoera',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "Wenn Blind ausgewählt wird",
                    "erhalte {X:red,C:white} X#3# {} Mult wenn",
                    "Deckgröße genau {C:attention}#2#{} ist",
                } 
            },
            j_poke_smoochum = {
                name = 'Kussilla',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erhalte einen {C:attention}Standard-Tag{}",
                    "wenn dieser Joker sich entwickelt",
                    "{C:inactive}(Ja, dies {C:attention}reduziert{C:inactive} dein Mult)",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erhalte einen {C:attention}Coupon-Tag{}",
                    "wenn dieser Joker sich entwickelt",
                    "{C:inactive}(Ja, dies {C:attention}reduziert{C:inactive} dein Mult)",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "{C:red}+#2#{} Abwurf",
                    "{C:inactive}(Ja, dies {C:attention}reduziert{C:inactive} dein Mult)",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                }
            },
            j_poke_blissey = {
                name = 'Heiteira',
                text = {
                    "Die ersten {C:attention}#1#{} Male jede Runde wenn {C:attention}Glückskarten{}",
                    "ausgelöst werden, füge eine",
                    "permanente Kopie mit {C:dark_edition}Polychrom{} zum Deck",
                    "hinzu und ziehe sie auf die {C:attention}Hand",
                    "{C:inactive}(Aktuell {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                } 
            },
            j_poke_treecko = {
                name = "Geckarbor",
                text = {
                    "{C:attention}+#3#{} Handgröße, {C:attention}Natur{}",
                    "Gespielt {C:attention}#6#, #7# oder #8#{} haben",
                    "eine {C:green}#4#-zu-#5#{}-Chance {C:money}$#1#{} zu geben wenn gezählt",
                    "Garantiert wenn eine andere {X:grass,C:white}Pflanze{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Entwicklung nach Ertag von {C:money}$#2#/16{})"
                } 
            },
            j_poke_grovyle = {
                name = "Reptain",
                text = {
                    "{C:attention}+#3#{} Handgröße, {C:attention}Natur{}",
                    "Gespielte {C:attention}#6#, #7# oder #8#{} haben",
                    "eine {C:green}#4#-zu-#5#{}-Chance {C:money}$#1#{} zu geben wenn gezählt",
                    "Garantiert wenn eine andere {X:grass,C:white}Pflanze{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Entwicklung nach Ertag von {C:money}$#2#/32{})"
                } 
            },
            j_poke_sceptile = {
                name = "Gewaldro",
                text = {
                    "{C:attention}+#3#{} Handgröße, {C:attention}Natur{}",
                    "Gespielte {C:attention}#5#, #6# oder #7#{} geben {C:money}$#1#{} wenn gezählt",
                    "Erhalte {C:money}$#1#{} am Ende der Runde für",
                    "jede andere {X:grass,C:white}Pflanze{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Aktuell {C:money}$#4#{}, Maximal {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Flemmli",
                text = {
                    "{C:mult}+#3#{} Abwurf, {C:attention}Natur{}",
                    "{C:mult}+#1#{} Mult für jede abgeworfene {C:attention}#5#, #6# oder #7#{} diese Runde",
                    "Erhalte doppelt wenn eine andere {X:fire,C:white}Feuer{} oder {X:earth,C:white}Kampf{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Aktuell {C:mult}#4#{}{C:inactive} Mult){}",
                    "{C:inactive}(Entwicklung bei {C:mult}#2#/60{} {C:inactive}Mult)"
                } 
            },
            j_poke_combusken = {
                name = "Jungglut",
                text = {
                    "{C:mult}+#3#{} Abwurf, {C:attention}Natur{}",
                    "{C:mult}+#1#{} Mult für jede abgeworfene {C:attention}#5#, #6# oder #7#{} diese Runde",
                    "Erhalte doppelt wenn eine andere {X:fire,C:white}Feuer{} oder {X:earth,C:white}Kampf{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Aktuell {C:mult}#4#{}{C:inactive} Mult){}",
                    "{C:inactive}(Entwicklung bei {C:mult}#2#/150{} {C:inactive}Mult)"
                } 
            },
            j_poke_blaziken = {
                name = "Lohgock",
                text = {
                    "{C:mult}+#2#{} Abwurf, {C:attention}Natur{}",
                    "Für jede abgeworfene {C:attention}#6#, #7# oder #8#{} diese Runde",
                    "erhalte {C:mult}+#4#{} Mult und {X:red,C:white} X#1# {} Mult für",
                    "jede {X:fire,C:white}Feuer{} oder {X:earth,C:white}Kampf{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Aktuell {C:mult}+#5#{}{C:inactive} Mult, {X:red,C:white} X#3# {}{C:inactive} Mult){}",
                } 
            },
            j_poke_mudkip = {
                name = "Hydropi",
                text = {
                    "{C:chips}+#3#{} Hand, {C:attention}Natur{}",
                    "Gespielte {C:attention}#4#, #5# oder #6#{} geben {C:chips}+#1#{} Chips",
                    "Erhalte doppelte Chips wenn eine",
                    "andere {X:water,C:white}Wasser{} oder {X:earth,C:white}Boden{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Entwicklung bei {C:chips}#2#/400{} {C:inactive}Chips)"
                } 
            },
            j_poke_marshtomp = {
                name = "Moorabbel",
                text = {
                    "{C:chips}+#3#{} Hand, {C:attention}Natur{}",
                    "Gespielte {C:attention}#4#, #5# oder #6#{} geben {C:chips}+#1#{} Chips",
                    "Erhalte doppelte Chips wenn eine",
                    "andere {X:water,C:white}Wasser{} oder {X:earth,C:white}Boden{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Entwicklung bei {C:chips}#2#/960{} {C:inactive}Chips)"
                } 
            },
            j_poke_swampert = {
                name = "Sumpex",
                text = {
                    "{C:chips}+#3#{} Hand, {C:attention}Natur{}",
                    "Gespielte {C:attention}#6#, #7# oder #8#{} geben {C:chips}+#1#{} Chips",
                    "Geben zusätzlich {C:chips}+#5#{} Chips pro",
                    "andere {X:water,C:white}Wasser{} oder {X:earth,C:white}Boden{} Karte im Besitz",
                    "{C:inactive,s:0.8}(beinhaltet Joker und Energie Karten){}",
                    "{C:inactive}(Aktuell {C:chips}+#4#{}{C:inactive} total)"
                } 
            },
            j_poke_aron = {
                name = 'Stollunior',
                text = {
                    "Erzeuge eine {C:attention}Der Wagen{} Karte",
                    "wenn {C:attention}Small Blind{} ausgewählt wird",
                    "Wenn eine Stahl-Karte gezählt wird,",
                    "erhalte {X:mult,C:white}X#2#{} Mult und zerstöre sie",
                    "{C:inactive}(Entwicklung bei {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{} {C:inactive}Mult)",
                }
            },
            j_poke_lairon = {
                name = 'Stollrak',
                text = {
                    "Erzeuge eine {C:attention}Der Wagen{} Karte wenn",
                    "{C:attention}Small Blind{} oder {C:attention}Big Blind{} ausgewählt wird.",
                    "Wenn eine Stahl-Karte gezählt wird,",
                    "erhalte {X:mult,C:white}X#2#{} Mult und zerstöre sie",
                    "{C:inactive}(Entwicklung bei {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{} {C:inactive}Mult)"
                }
            },
            j_poke_aggron = {
                name = 'Stolloss',
                text = {
                    "Erzeuge eine {C:attention}Der Wagen{} Karte",
                    "wenn {C:attention}Blind{} ausgewählt wird.",
                    "Wenn eine Stahl-Karte gezählt wird,",
                    "erhalte {X:mult,C:white}X#2#{} Mult und zerstöre sie",
                    "{C:inactive}(Aktuell {X:mult,C:white}X#1#{}{C:inactive} Mult)"
                }
            },
            j_poke_feebas = {
                name = 'Barschwa',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:attention}Platscher{}",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Schönschuppe{}{C:inactive} Karte)"
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Löse alle gespielten Karten erneut aus",
                  "wenn sie alle die gleiche {C:attention}Farbe{} haben",
                }
            },
            j_poke_snorunt = {
                name = "Schneppke",
                text = {
                  "Nimm bis zu {C:mult}-$#1#{} Schulden auf",
                  "{C:inactive,s:0.8}(Entwicklung nach {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} Runden in den Schulden)",
                  "{C:inactive,s:0.8}(Entwicklung mit einem {C:attention,s:0.8}Funkelstein{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Firnontor",
                text = {
                  "Nimm bis zu {C:mult}-$#1#{} Schulden auf",
                  "Setzt das Geld am Ende der Runde auf {C:money}$0"
                }
            },
            j_poke_beldum = {
                name = 'Tanhel',
                text = {
                    "Erhält {C:chips}+#2#{} Chips",
                    "wenn die Hand mindestens eine wertende",
                    "{C:attention}Ass{} enthält, erhalte {C:attention}doppelt{} wenn",
                    "gespielte Hand ein {C:attention}Vierling{} ist",
                    "{C:inactive}(Aktuell {C:chips}+#1#{}{C:inactive} Chips)",
                    "{C:inactive}(Entwicklung bei {C:chips}+64{}{C:inactive} Chips)"
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Erhält {C:chips}+#2#{} Chips",
                    "wenn die Hand mindestens zwei wertende",
                    "{C:attention}Asse{} enthält, erhalte {C:attention}vierfach{} wenn",
                    "gespielte Hand ein {C:attention}Vierling{} ist",
                    "{C:inactive}(Aktuell {C:chips}+#1#{}{C:inactive} Chips)",
                    "{C:inactive}(Entwicklung bei {C:chips}+256{}{C:inactive} Chips)"
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Chips",
                    "Wenn gespielte Hand ein {C:attention}Vierling{} ist",
                    "gibt jeder gespielten Karte {X:mult,C:white}X{} Mult",
                    "gleich der {C:attention}Quadratwurzel{} ",
                    "der gesamten Chips dieser Karte",
                } 
            },
            j_poke_buizel = {
                name = 'Bamelin',
                text = {
                    "{C:chips}+#1#{} Chips für",
                    "jede {C:attention}nicht wertende{} Karte",
                    "in der gespielten Hand",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)",
                }  
            },
            j_poke_floatzel = {
                name = 'Bojelin',
                text = {
                    "{C:chips}+#1#{} Chips für",
                    "jede {C:attention}nicht wertende{} Karte",
                    "in der gespielten Hand",
                }  
            },
            j_poke_mimejr = {
                name = 'Pantimimi',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Gibt am Ende der Runde ein {C:attention}Rotes{} oder {C:attention}Blaues{} Siegel",
                    "einer zufälligen Karte im Deck",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_happiny = {
                name = 'Wonneira',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erzeuge eine {C:attention}Der Magier{} Karte mit",
                    "{C:dark_edition}Negativ{} am Ende der Runde",
                    "{C:green}#3#-zu-#4#{}-Chance {C:attention}2{} Stück zu erzeugen",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_munchlax = {
                name = 'Mampfaxo',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Erzeuge eine zufällige {C:item}Item{} Karte mit",
                    "{C:dark_edition}Negativ{} am Ende der Runde",
                    "{C:inactive}(Ja, dies {C:attention}reduziert{C:inactive} dein Mult)",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }
            },
            j_poke_mantyke = {
                name = "Mantirps",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#2#{} Mult",
                  "Am Ende der Runde wird eine zufällige",
                  "Karte im {C:attention}Deck{} zu einer {C:attention}Gold-Karte{}.",
                  "{C:attention}Gold-Karten{} {C:attention}auf der Hand{}",
                  "geben {C:chips}+#1#{} Chips",
                  "{C:inactive}(Entwicklung nach {C:attention}#3#{C:inactive} Runden)",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Gespielte {C:attention}Stahl-Karten{} geben {X:red,C:white}X#1#{} Mult",
                    "plus {X:red,C:white}X#2#{} Mult für jeden",
                    "{X:metal,C:white}Stahl{} Joker im Besitz",
                    "{C:inactive}(Aktuell {X:red,C:white}X#3#{}{C:inactive} Mult){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Schlurplek',
                text = {
                    "Der erste und zweite gespielte",
                    "{C:attention}Bube{} gibt {X:mult,C:white} X#1# {} Mult",
                    "wenn gezählt und weitere {C:attention}Buben{}",
                    "geben {X:mult,C:white} X#2# {} Mult wenn gezählt"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rihornior',
                text = {
                    "Jede gespielte {C:attention}Stein-Karte{}",
                    "erhält permanent",
                    "{C:chips}+#1#{} Chips wenn gezählt",
                    "{C:attention}Stein-Karten{} lösen erneut aus für jeden",
                    "{X:earth,C:white}Boden{} Joker im Besitz",
                    "{C:inactive}(Aktuell #2# mal ausgelöst)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangoloss',
                text = {
                    "Gespielte {C:attention}Wildcards{} geben",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips oder {C:money}$#3#{}",
                    "{C:green}#4#-zu-#5#{}-Chance von {C:attention}allen drei{}",
                    "Wildcards {C:attention}können nicht{} geschwächt werden"
                } 
            },
            j_poke_electivire = {
                name = 'Elevoltek',
                text = {
                    "Wenn eine Karte {C:attention}verkauft{} wird",
                    "erhalte am Ende der Runde",
                    "{C:money}$#1#{} dem eigenen {C:attention}Verkaufswert{}",
                    "Gibt {X:mult,C:white}X#2#{} Mult für jeden",
                    "{C:money}${} an Verkaufswert den dieser Joker hat",
                    "{C:inactive}(Aktuell {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magbrant',
                text = {
                    "Wenn der {C:attention}erste{} Abwurf der",
                    "Runde nur {C:attention}1{} Karte hat,",
                    "zerstöre sie und erhalte {C:mult}+#2#{} Mult",
                    "Erhält {X:mult,C:white}X#4#{} Mult für jede",
                    "abgeworfene Karte",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_leafeon = {
                name = 'Folipurba',
                text = {
                    "Wenn eine {C:attention}Glückskarte{} ausgelöst wird",
                    "erhält sie permanent {C:chips}+#2#{} Chips",
                    "pro {C:green}Aktualisierung{} im letzten Shop",
                    "{C:inactive}(Aktuell {C:chips}+#3#{}{C:inactive} Chips erhalten)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaziola',
                text = {
                    "Jede Aktualisierung im Shop hat eine",
                    "{C:green}#1#-zu-#2#{}-Chance eine Kopie",
                    "als {C:attention}Glas-Karte{} von einer zufälligen",
                    "Karte im Deck dem Shop hinzuzufügen",
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Energie Limit",
                    "{X:red,C:white} X#2# {} Mult pro benutzte {C:pink}Energie{}",
                    "Karte in diesem {C:attention}Durchlauf{}",
                    "{C:inactive}(Aktuell {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_froslass = {
                name = "Frosdedje",
                text = {
                  "Nimm bis zu {C:mult}-$#1#{} Schulden auf",
                  "Erzeuge ein {C:item}Item{} wenn",
                  "eine Hand gespielt wird während man Schulden hat",
                  "{C:inactive}(Muss Platz haben){}"
                }
            },
            j_poke_sylveon = {
                name = 'Feelinara',
                text = {
                    "Erhalte einen {C:attention}Tag{} alle {C:attention}#3#{} {C:green}Aktualisierungen{}",
                    "Wenn {C:attention}< 2{} Tags im Besitz",
                    "gibt jede Karte mit {C:attention}Edition{} die {C:attention}auf der Hand{}",
                    "gehalten wird {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Aktuell {C:attention}#2#{}{C:inactive}/#3# Aktualisierungen)"
                } 
            },
            j_poke_elgyem = {
              name = "Pygraulon",
              text = {
                "Erzeuge eine {C:dark_edition}Negative{} {C:planet}Planeten-Karte{}",
                "von einer der {}Poker Hände{} mit den",
                "{C:attention}#1#{} höchsten Leveln",
                "wenn {C:attention}Blind{} ausgewählt wird",
                "{C:inactive,s:0.8}(Entwicklung bei {C:planet,s:0.8}#2#{C:inactive,s:0.8}/#3# verschiedenen Planeten-Karten im Besitz){}"
              }
            },
            j_poke_beheeyem = {
                name = "Megalon",
                text = {
                  "Erzeuge eine {C:dark_edition}Negative{} {C:planet}Planeten-Karte{}",
				  "von einer der {}Poker Hände{} mit den",
				  "{C:attention}#1#{} höchsten Leveln",
				  "wenn {C:attention}Blind{} ausgewählt wird",
                  "Nachdem {C:attention}#2# Booster-Pakete{} geöffnet wurden, erzeuge",
                  "{C:attention}Teleskop{} oder {C:attention}Observatorium{} wenn möglich"
                }
            },
            j_poke_grubbin = {
                name = 'Mabula',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Karte punktet {C:attention}dreifach{}",
                    "Mult wenn ein",
                    "{X:lightning, C:black}Elektro{} Joker im Besitz",
                    "{C:inactive}(Entwicklung nach {C:attention}#2#{}{C:inactive} Runden)"
                }  
            },
            j_poke_charjabug = {
                name = 'Akkup',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "für jeden {X:lightning, C:black}Elektro{} Joker",
                    "im Besitz {C:inactive}(inklusive sich selbst){}",
                     "{C:inactive}(Aktuell {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive}(Entwicklung mit einer {C:attention}Donnerstein{}{C:inactive} Karte)"
                }  
            },
            j_poke_vikavolt = {
                name = 'Donarion',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult für jeden",
                    "anderen {X:lightning, C:black}Elektro{} Joker",
                    "im Besitz{}",
                     "{C:inactive}(Aktuell {X:red,C:white} X#2# {}{C:inactive} Mult)",
                }  
            },
            j_poke_mimikyu = {
                name = "Mimigma",
                text = {
                  "{C:chips}+#1#{} Chips wenn gespielte",
                  "Hand keine wertende {C:hearts}#2#{} hat",
                  "Verhindert Tod wenn Punktzahl",
                  "mindestens {C:attention}50%{} der benötigten Chips beträgt",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Voldi',
                text = {
                    "{C:mult}+#1#{} Mult und erhalte {C:money}$#2#{}",
                    "wenn gespielte Hand",
                    "einen {C:attention}Straight{} enthält",
                    "{C:inactive}(Entwicklung nach {C:attention}#3#{}{C:inactive} Runden)"
                } 
            },
            j_poke_boltund = {
                name = 'Bellektro',
                text = {
                    "{X:red,C:white}X#1#{} Mult und erhalte {C:money}$#2#{}",
                    "wenn gespielte Hand",
                    "einen {C:attention}Straight{} enthält",
                } 
            },
            j_poke_dreepy = {
                name = "Grolldra",
                text = {
                  "Wenn verkauft wird, addiere {C:money}$#1#{} zum Verkaufswert",
                  "von jedem Joker und",
                  "ändere alle Karten {C:attention}auf der Hand",
                  "zu {C:spades}#2#{}",
                  "{C:inactive}(Entwicklung wenn ein Straight Flush gespielt wird){}",
                }
            },
            j_poke_drakloak = {
                name = "Phandra",
                text = {
                  "{X:red,C:white} X#4# {} Mult für jeden {C:money}${} an",
                  "Verkaufswert von allen {C:attention}Jokern{} im Besitz",
                  "Wenn gespielte Hand ein {C:attention}Straight Flush{} ist",
                  "addiere {C:money}$#1#{} zum Verkaufswert von jedem Joker im Besitz",
                  "{C:inactive}(Aktuell {X:red,C:white} X#5# {C:inactive} Mult){}",
                  "{C:inactive}(Entwicklung bei {C:money}$#2#{}{C:inactive}/#3# Verkaufswert aller Joker)",
                }
            },
            j_poke_dragapult = {
                name = "Katapuldra",
                text = {
                  "{X:red,C:white} X#2# {} Mult füpr jeden {C:money}${} an",
                  "Verkaufswert von allen {C:attention}Jokern{} im Besitz",
                  "Wenn gespielte Hand ein {C:attention}Straight Flush{} ist",
                  "und es keine {C:attention}Drachenpfeile{} im Besitz sind,",
                  "erzeuge {C:attention}2 Drachenpfeile{} mit {C:dark_edition}Negativ{}",
                  "{C:inactive}(Aktuell {X:red,C:white} X#3# {C:inactive} Mult){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Grolldra Pfeil",
                text = {
                  "Wenn verkauft wird, addiere {C:money}$#1#{} zum Verkaufswert",
                  "von jedem Joker und",
                  "ändere alle Karten {C:attention}auf der Hand{}",
                  "zu {C:spades}#2#{}",
                }
            },
            j_poke_fidough = {
                name = "Hefel",
                text = {
                  "Erhält {C:chips}+#2#{} Chips wenn gespielte Hand eine {C:attention}#3#{} enthält",
                  "Benötigter {C:attention}Rang{} wird bei jeder Verstärkung erhöht",
                  "{C:inactive,s:0.8}(Wenn der Rang der höchste ist, wird er zum niedrigsten)",
                  "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                  "{C:inactive}(Entwicklung wenn ein {X:fire,C:white}Feuer{}{C:inactive} Joker im Besitz)",
                }
            },
            j_poke_dachsbun = {
                name = "Backel",
                text = {
                  "Erhält {C:chips}+#2#{} Chips wenn gespielte Hand eine {C:attention}#3#{} enthält",
                  "Benötigter {C:attention}Rang{} wird bei jeder Verstärkung erhöht",
                  "Erhaltene Chips um {C:chips}+2{} erhöht für jeden",
                  "{X:fire,C:white}Feuer{} Joker im Besitz",
                  "{C:inactive,s:0.8}(Wenn der Rang der höchste ist, wird er zum niedrigsten)",
                  "{C:inactive}(Aktuell {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_tinkatink = {
                name = "Forgita",
                text = {
                  "Gespielte Karten geben {C:mult}+#1#{} Mult.",
                  "Wenn Blind ausgewählt wird ",
                  "schwäche {C:attention}#3#{} Karten im Deck",
                  "die keine {C:attention}Stahl-Karten{} sind",
                  "{C:inactive}(Entwicklung nach {C:attention}#2#{C:inactive} Runden)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tafforgita",
                text = {
                  "Gespielte Karten geben {C:mult}+#1#{} Mult.",
                  "Wenn Blind ausgewählt wird ",
                  "schwäche {C:attention}#3#{} Karten im Deck",
                  "die keine {C:attention}Stahl-Karten{} sind",
                  "{C:inactive}(Entwicklung nach {C:attention}#2#{C:inactive} Runden)",
                }
            },
            j_poke_tinkaton = {
                name = "Granforgita",
                text = {
                  "Gespielte Karten geben {C:mult}+#1#{} Mult.",
                  "Wenn Blind ausgewählt wird ",
                  "schwäche {C:attention}#3#{} Karten im Deck",
                  "die keine {C:attention}Stahl-Karten{} sind",
                  "Gespielte {C:attention}Stahl-Karten{}",
                  "verhalten sich wie {C:attention}Glas-Karten{}"
                }
            },
            j_poke_annihilape = {
                name = 'Epitaff',
                text = {
                    "Jede gespielte {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, oder {C:attention}7{} gibt",
                    "{C:mult}+#1#{} Mult und {C:chips}+#2#{} Chips wenn gezählt",
                    "für jede gespielte Hand diese Runde",
                    "{C:inactive}(Aktuell {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Chips)",
                } 
            },
            j_poke_gimmighoul = {
                name = "Gierspenst (Truhe)",
                text = {
                  "Gespielte {C:attention}Gold-Karten{}",
                  "geben {C:money}$#1#{} wenn gezählt",
                  "Überspringe ein {C:attention}Booster-Paket{} um...?",
                  "{C:inactive}(Entwicklung wenn {C:money}$#2#{C:inactive}/$#3# verdient oder ausgegeben wurde){}"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gierspenst (Verirrt)",
                text = {
                  "Verdiene etwas {C:money}${}",
                  "{S:1.1,C:red,E:2}zerstört sich selbst{}",
                }
            },
            j_poke_gholdengo = {
                name = "Monetigo",
                text = {
                  "Gespielte {C:attention}Gold-Karten{} {C:red}geben{} {C:money}$#2#{}",
                  "wenn gezählt und multiplizieren",
                  "{X:red,C:white}X{} Mult von diesem Joker mit {X:red,C:white}X#3#",
                  "Dieser Joker kann nicht geschwächt werden",
                  "{C:inactive}(Aktuell {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive}(Wird am Ende der Runde zurückgesetzt)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Erzeugt Verbrauchsgegenstände",
                    "bei Erhalt?",
                    "Erzeugt {C:attention}#1#{}? {C:attention}Tags{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult für jeden",
                    "Joker mit einem {C:pink}Typ{} im Besitz",
                    "Es können {C:attention}Pokemon{} von der gleichen", 
                    "evolutionären Linie erscheinen",
                    "{C:inactive}(Aktuell {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Ewigstein',
                text = {
                    "Pokemon können sich {C:attention}nicht entwickeln{}",
                    "Jedes {C:attention}Basis{} Pokemon gibt {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_tall_grass = {
                name = 'Hohes Gras',
                text = {
                    "{C:green}#1#-zu-#2#{}-Chance einen",
                    "{C:chips}Gewöhnlichen{} Pokemon {C:attention}Joker{} zu erzeugen",
                    "wenn eine Hand gespielt wird",
                    "Garantiert wenn gespielte Hand",
                    "eine {C:attention}Wildcard{} enthält",
                } 
            },
            j_poke_jelly_donut = {
                name = "Jelly Donut",
                text = {
                  "Erzeuge eine {C:colorless}Normal",
                  "{C:pink}Energíe{} wenn Blind",
                  "ausgewählt wird",
                  "{C:inactive}({C:attention}#1#{}{C:inactive} Runden verbleibend){}"
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
                name = "Hyperball",
                text = {
                    "Erschaffe einen zufälligen",
                    "{C:attention}Phase 2 Joker{}",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
            c_poke_masterball = {
                name = "Meisterball",
                text = {
                    "Erschaffe einen zufälligen",
                    "{C:attention}Legendären Pokemon Joker{}",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
            c_poke_transformation = {
                name = "Transformation",
                text = {
                    "Entwickelt das Pokemon ganz links",
                    "auf die höchste {C:attention}Stufe{}",
                    "und erhöht die meisten {C:attention}Werte{} and {C:money}${}", 
                    "wenn möglich",
                    "{C:inactive}(Maximal {C:attention}#1#{}{C:inactive} Erhöhungen pro Joker)"
                },
            },
            c_poke_obituary = {
                name = "Nachruf",
                text = {
                    "Fügt ein {C:pink}Pinkes Siegel{}",
                    "zu {C:attention}1{} ausgewählten Karte hinzu",
                }
            },
            c_poke_nightmare = {
                name = "Albtraum",
                text = {
                    "Zerstört einen zufälligen Pokemon",
                    "Joker und erzeugt {C:attention}3{}",
                    "zufällige {C:pink}Energien{} mit {C:dark_edition}Negativ{}"
                },
            },
			c_poke_revenant = {
                name = "Rächer",
                text = {
                    "Fügt ein {C:item}Silbernes Siegel{}",
                    "zu {C:attention}1{} ausgewählten Karte hinzu",
                }
            },
			c_poke_megastone = {
                name = "Mega-Stein",
                text = {
                    "{C:attention}Wiederverwendbar{}",
                    "{C:attention}Mega Entwicklung{} von einem Pokemon", 
                    "oder {C:attention}Zurückentwicklung{} einer Mega Entwicklung",
                    "{C:attention}Zurückentwicklung{} der Mega Entwicklung wenn verkauft",
                    "{C:inactive}(Einmal pro Runde verwendbar)",
                },
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Taschen-Tag",
                text = {
                    "Gibt ein kostenloses {C:pink}Mega-Taschen-Pack",
                    "{C:green}25%{} Chance Paket beinhaltet",
                    "einen {C:attention}Mega-Stein{} bei {C:attention}Ante 5+{}"
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Shiny-Tag",
                text = {
                    "Nächster Basis-Edition Shop",
                    "Joker ist kostenlos und",
                    "wird {C:colorless}Shiny{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Phase 1-Tag",
                text = {
                    "Shop hat einen kostenlosen",
                    "{C:attention}Phase 1{} Joker",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Safari-Tag",
                text = {
                    "Shop hat einen kostenlosen",
                    "{C:safari}Safari{} Joker",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Create a random",
                    "{C:attention}Basic Joker{} card",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Create a random",
                    "{C:attention}Stage 1 Joker{} card",
                    "{C:inactive}(Muss Platz haben)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Energiesuche",
                text = {
                    "{C:pink}+1{} Energie Limit"
                },
            },
            v_poke_energyresearch = {
                name = "Energieforschung",
                text = {
                    "{C:pink}+1{} Energie Limit"
                },
            },
            v_poke_goodrod = {
                name = "Angel",
                text = {
                    "{C:attention}Taschen-Pakete{} beinhalten",
                    "{C:attention}1{} Karte mehr",
                },
            },
            v_poke_superrod = {
                name = "Superangel",
                text = {
                    "{C:attention}Taschen-Pakete{} beinhalten",
                    "{C:attention}1{} Karte mehr",
                },
            },
        },
        Other = {

            Grass = {
                name = "Typ",
                text = {
                  "{X:grass,C:white}Pflanze{}",
                }
            },
            Fire = {
                name = "Typ",
                text = {
                  "{X:fire,C:white}Feuer{}",
                }
            },
            Water = {
                name = "Typ",
                text = {
                  "{X:water,C:white}Wasser{}",
                }
            },
            Lightning = {
                name = "Typ",
                text = {
                  "{X:lightning,C:black}Elektro{}",
                }
            },
            Psychic = {
                name = "Typ",
                text = {
                  "{X:psychic,C:white}Psycho{}",
                }
            },
            Fighting = {
                name = "Typ",
                text = {
                  "{X:fighting,C:white}Kampf{}",
                }
            },
            Colorless = {
                name = "Typ",
                text = {
                  "{X:colorless,C:white}Normal{}",
                }
            },
            Dark = {
                name = "Typ",
                text = {
                  "{X:dark,C:white}Unlicht{}",
                }
            },
            Metal = {
                name = "Typ",
                text = {
                  "{X:metal,C:white}Stahl{}",
                }
            },
            Fairy = {
                name = "Typ",
                text = {
                  "{X:fairy,C:white}Fee{}",
                }
            },
            Dragon = {
                name = "Typ",
                text = {
                  "{X:dragon,C:white}Drache{}",
                }
            },
            Earth = {
                name = "Typ",
                text = {
                  "{X:earth,C:white}Boden{}",
                }
            },
            Bird = {
                name = "Typ",
                text = {
                  "{X:bird,C:white}Flug{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Antik",
                text = {
                    "Effekt basierend auf",
                    "der Anzahl an {C:attention}#1#{}",
                    "in der Poker Hand"
                }
            },
            eitem = {
                name = "Entwicklungskarte",
                text = {
                    "Entwickelt {C:attention}geeigneten{}",
                    "Joker ganz links",
                }
            },
			typechanger = {
                name = "Typänderung",
                text = {
                    "Wendet einen {V:1}#1#{} Sticker",
                    "auf den ganz linken oder ausgewählten Joker an"
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Heldenkarte",
                text = {
                    "Benutzt von {C:attention}#1#{}"
                }
            },
            basic = {
                name = "Basis",
                text = {
                    "Ein Pokemon Joker,",
                    "der nicht {C:attention}entwickelt{} wurde"
                }
            },
            stage1 = {
                name = "Phase 1",
                text = {
                    "Ein Pokemon Joker,",
                    "der einmal {C:attention}entwickelt{} wurde"
                }
            },
            stage2 = {
                name = "Phase 2",
                text = {
                    "Ein Pokemon Joker,",
                    "der zweimal {C:attention}entwickelt{} wurde"
                }
            },
            energy = {
                name = "Energie",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
			money_chance = {
                name = "Geld Chance",
                text = {
                    "{C:attention}#1#%{} Chance",
                    "zusätzlich {C:money}$1{} zu verdienen"
                }
            },
            mult_progress = {
                name = "Mult Gewinn Fortschritt",
                text = {
                    "{C:attention}#1#%{} Fortschritt",
                    "bis {C:mult}Mult{} Gewinn",
                    "um {C:mult}+1{} erhöht"
                }
            },
            chip_progress = {
                name = "Chip Gewinn Fortschritt",
                text = {
                    "{C:attention}#1#%{} Fortschritt",
                    "bis {C:chips}Chip{} Gewinn",
                    "um {C:chips}+1{} erhöht"
                }
            },
            money_progress = {
                name = "Geld Gewinn Fortschritt",
                text = {
                    "{C:attention}#1#%{} Fortschritt",
                    "bis {C:money}${} Gewinn",
                    "um {C:money}1${} erhöht"
                }
            },
			availability = {
                name = "Verfügbarkeit",
                text = {
                    "Nicht verfügbar wenn",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Baby",
                text = {
                    "Andere Nicht-Baby Joker werden {C:attention}angeheftet{}",
                    "wenn du die Karte bekommst, Joker werden",
                    "losgelöst wenn diese Karte",
                    "entwickelt oder entfernt wird"
                }
            },
			nature = {
                name = "Natur",
                text = {
                    "Benötigte {C:attention}#1#{} werden",
                    "zufällig gesetzt bei der Erstellung",
                    "des Jokers"
                }
            },
			mega_rule = {
                name = "Beschränkung",
                text = {
                    "Nur 1 Joker mit",
                    "{C:attention}Mega Entwicklung{} pro",
                    "{C:attention}Mega-Stein{} im Besitz"
                }
            },
            mega_poke = {
                name = "Mega Entwicklung",
                text = {
                    "{C:attention}Mega Entwicklung{}",
                    "mit einem {C:attention}Mega-Stein{}"
                }
            },
            mega_used_on = {
                name = "Benutzt für",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "XY Mega",
                text = {
                  "{C:attention}Mega Entwicklung{} basierend auf der Position",
                  "Ganz links - {C:attention}#1#{}",
                  "Ganz rechts - {C:attention}#2#{}"
                }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Kann man nur erhalten",
                    "durch {C:attention}Entwicklung{}",
                    "oder bestimmte {C:attention}Pokeball Items{}"
                } 
            },
			playing_card_to_evolve = {
                name = "Anforderung",
                text = {
                    "Muss auf eine",
                    "{C:attention}Spielkarte{} angewendet werden",
                    "für eine Entwicklung"
                }
            },
            deli_gift = {
                name = "Geschenk",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}Item{} {C:attention}Karte",
                    "{C:green}20%{} - {C:attention}Coupon-Tag",
                    "{C:green}15%{} - {C:dark_edition}Polychrom{} {C:attention}Geschenk Karte",
                }
            },
			holding = {
                name = "Hält",
                text = {
                  "Dieser Joker kommt mit",
                  "einer {C:attention}#1#{} Karte",
                  "{C:inactive}(Muss Platz haben){}"
                }
            },
			eeveelution = {
                name = "Entwicklungen",
                text = {
                    "{C:attention}Wasserstein{} - {X:water,C:white}Aquana{}",
                    "{C:attention}Donnerstein{} - {X:lightning,C:black}Blitza{}",
                    "{C:attention}Feuerstein{} - {X:fire,C:white}Flamara{}",
                    "{C:attention}Sonnenstein{} - {X:psychic,C:white}Psiana{}",
                    "{C:attention}Mondsteine{} - {X:dark,C:white}Nachtara{}",
                    "{C:attention}Blattstein{} - {X:grass,C:white}Folipurba{}",
                    "{C:attention}Eisstein{} - {X:water,C:white}Glaziola{}",
                    "{C:attention}Funkelstein{} - {X:fairy,C:white}Feelinara{}"
                }
            },
			percent_chance = {
                name = "Prozent Chance",
                text = {
                  "{C:green}#1#%{} Chance",
                  "dass {C:attention}Effekt{} eintrifft",
                  "{C:inactive}(Wahrscheinlichkeit kann nicht erhöht werden){}"
                }
            },
			precise_energy_tooltip = {
                name = "Präzise Energie Skalierung",
                text = {
                    "{s:0.8}Nutze {C:attention,s:0.8}Dezimalstellen{} für alle Werte bei der Anwendung von {C:pink,s:0.8}Energie{}{s:0.8} Bonus{}",
                    "{s:0.8}Wird diese Option {C:attention,s:0.8}ausgeschaltet{}{s:0.8} gilt folgendes für den Bonus:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - Nutze Dezimalstellen",
                    "{C:attenion}2. {s:0.8}Flaches {C:mult,s:0.8}Mult{}{s:0.8} und {C:chips,s:0.8}Chips{}{s:0.8} - Werden zur nächsten Ganzen Zahl gerundet",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Mult Gewinn{}{s:0.8} und {C:chips,s:0.8}Chips Gewinn{}{s:0.8} - Dezimalkomponente wird prozentual", 
                    "{s:0.8}angezeigt, zur Anwendung des Bonus auf die Basis {C:mult,s:0.8}Mult{}{s:0.8} und {C:chips,s:0.8}Chips{}",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Dezimalkomponenten werden prozentual angezeigt,",
                    "{s:0.8}mit der Chance extra {C:money,s:0.8}${}{s:0.8} zu erhalten{}",
                    "{C:inactive,s:0.8}(Nicht-Pokemon Joker werden immer präzise Skalierung nutzen){}"
                }
            },
			discovery_tooltip = {
              name = "Entdeckung",
              text = {
                "Pokermon Mod Objekte sind standardmäßig",
                "nicht entdeckt. Deaktivieren dieser Konfigurationsoption",
                "entdeckt alle Mod Objekte",
                "{C:red}Entdeckung aller Objekte kann nicht rückgängig gemacht werden{}"
              }
            }, 
            designed_by = {
              name = "Designed von",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
			endless = {
              name = "Wiederverwendbar",
              text = {
                "Wird bei Benutzung nicht verbraucht",
                "{C:inactive,s:0.8}(Ausgenommen {C:attention,s:0.8}Krummlöffel{C:inactive,s:0.8})"
              }
            },
            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Pinkes Siegel",
                text = {
                    "Erzeugt eine {C:pink}Energie{} Karte",
                    "wenn die Karte bei der",
                    "{C:attention}ersten Hand{} der Runde punktet"
                },
            },
			
			--less cursed
            poke_silver_seal = {
                name = "Silbernes Siegel",
                text = {
                  "Erzeugt eine {C:item}Item{} Karte",
                  "und wird {C:attention}abgelegt{} wenn auf der Hand {C:attention}gehalten{}",
                  "während der Punktezählung"
                }
            },

            grass_sticker = {
                name = "Typ",
                text = {
                    "{X:grass,C:white}Pflanze{}"
                } 
            },
            fire_sticker = {
                name = "Typ",
                text = {
                    "{X:fire,C:white}Feuer{}"
                } 
            },
            water_sticker = {
                name = "Typ",
                text = {
                    "{X:water,C:white}Wasser{}"
                } 
            },
            lightning_sticker = {
                name = "Typ",
                text = {
                    "{X:lightning,C:white}Elektro{}"
                } 
            },
            psychic_sticker = {
                name = "Typ",
                text = {
                    "{X:psychic,C:white}Psycho{}"
                } 
            },
            fighting_sticker = {
                name = "Typ",
                text = {
                    "{X:fighting,C:white}Kampf{}"
                } 
            },
            colorless_sticker = {
                name = "Typ",
                text = {
                    "{X:colorless,C:white}Normal{}"
                } 
            },
            dark_sticker = {
                name = "Typ",
                text = {
                    "{X:dark,C:white}Unlicht{}"
                } 
            },
            metal_sticker = {
                name = "Typ",
                text = {
                    "{X:metal,C:white}Stahl{}"
                } 
            },
            fairy_sticker = {
                name = "Typ",
                text = {
                    "{X:fairy,C:white}Fee{}"
                } 
            },
            dragon_sticker = {
                name = "Typ",
                text = {
                    "{X:dragon,C:white}Drache{}"
                } 
            },
            earth_sticker = {
                name = "Typ",
                text = {
                    "{X:earth,C:white}Boden{}"
                } 
            },
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "Nicht entdeckt",
                text = {
                    "Kaufe oder verwende",
                    "diese Karte in einem",
                    "Durchlauf ohne Code, um",
                    "herauszufinden, was sie bewirkt"
                }
            },
            undiscovered_item = {
                name = "Nicht entdeckt",
                text = {
                    "Kaufe oder verwende",
                    "diese Karte in einem",
                    "Durchlauf ohne Code, um",
                    "herauszufinden, was sie bewirkt"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Jumbo-Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Mega-Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Taschen-Paket",
                text = {
                   "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Jumbo-Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Mega-Taschen-Paket",
                text = {
                    "Wähle {C:attention}#1#{} von",
                    "bis zu {C:attention}#2#",
                    "{C:pink}Energie{} oder {C:item}Item{} Karten{}",
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
            c_poke_nuzlocke = "Nusslocke",
        },
        dictionary = {
            k_energy = "Energie",
            k_item = "Item",
            k_poke_pocket_pack = "Taschen-Paket",

            k_poke_safari = "Safari",
			k_poke_mega = "Mega",

            b_save = "SPEICHERN",
            b_energy_cards = "Energie-Karten",
            b_item_cards = "Item-Karten",
            
            --Mod Menu stuff
            poke_settings_header_required = "Neustart nötig:",
            poke_settings_header_norequired = "Kein Neustart nötig:",
            poke_settings_pokemon_only = "Nur Pokemon?",
            poke_settings_unlimited_energy = "Unbegrenzt Energie?",
            poke_settings_shiny_playing_cards = "Shiny auf Spielkarten?",
            poke_settings_jokers_only = "Nur Joker?",
            poke_settings_no_evolutions = "Keine Entwicklungen?",
            poke_settings_pokeballs = "Pokébälle?",
            poke_settings_pokedex_number = "Pokedex Nummern?",
            poke_settings_pokemon_splash = "Pokémon Platscher Karten?",
            poke_settings_pokemon_gen_one = "Nur erste Generation?",
            poke_settings_pokemon_precise_energy = "Nutze Präzise Energie Skalierung?",
            poke_settings_pokemon_discovery = "! Entdeckung?",
            poke_credits_actualcredits = "Credits",
            poke_credits_thanks = "Dank an",
            poke_credits_lead = "Hauptentwickler: ",
            poke_credits_graphics = "Grafisches Design: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "Entwickler: ",
            poke_credits_designer = "Design Assistenten: ",
            poke_credits_community_manager = "Community Manager: ",
            poke_credits_promotion_producer = "Promotion Producer: ",
            poke_credits_localization = "Lokalisierung: ",
            poke_credits_sound = "Tontechniker: ",

            poke_plus_pokeitem = "+1 Item",
            poke_plus_energy = "+1 Energie",
            poke_destroyed_ex = "Zerstört!",
            poke_evolve_success = "Entwickelt!",
            poke_evolve_level = "Level up!",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Stahl!",
            poke_dragon_ex = "Drache!",
			poke_energized_ex = "Erregt!",
            poke_unlimited_energy = "Unendlichkeit",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Porenta\'d",
            cubone_marowak_infoqueue = "Tragosso und Knogga",
            snorlax_infoqueue = "Relaxo",
            pokeball_variable = "Pokéball",
            goodrod_variable = "Angel",
            pinkseal_variable = "Pinkes Siegel",
			twisted_spoon_variable = "Krummlöffel",

            --From Gastly Line
            poke_lick_ex = "Lecken!",
            poke_lick = "Lecken",
            --From Kingler
            poke_surf_ex = "Surfen!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            --From Exeggutor
            poke_solar_ex = "Solar!",
            poke_solar = "Solar",
            --From Pinsir
            poke_pinsir_pin = "Angeheftet!",
            poke_pinsir_remove_pin = "Nicht angeheftet!",
            --From Tangela line
            poke_tangela_bonus = "Alle!",
            --Golbat And Crobat thingy
            poke_screech_ex = "Skree!",
            --From Bellossom
            poke_petal_dance_ex = "Blüte!",
            poke_petal_dance = "Blüte",
            --From Scizor
            poke_x_scissor_ex = "X Scheren!",
            poke_x_scissor = "X Scheren",
            --From Kingdra
            poke_twister_ex = "Wirbelwind!",
            --From Mime Jr.
            poke_mime_ex = "Mimen!",
            --From Magmortar
            poke_fire_blast_ex = "Feuersturm!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Donner!",
			poke_gift_ex = "Geschenk!",
            poke_faint_ex = "Ohnmacht!",
            poke_nido_ex = "Nido!",
			poke_disguise_intact = "Tarnung intakt! Tod abgewendet!",
            poke_disguise_broken = "Tarnung gebrochen! Tod nicht verhindert!",
			poke_dig_ex = "Dig!",
            poke_blazekick_ex = "Blaze Kick!",
            poke_darts_ex = "Pfeile!",
            poke_none = "None",
            poke_dawn_info1 = "(Nächte gespielte Hand setzt den Handtyp)",
            poke_dawn_info2 = "(Handtyp gesetzt!)",
            poke_make_it_rain = "Lass es regnen!",
            poke_val_down = "Wertverlust!",
            poke_powder_ex = "Pulverschnee!",
            poke_future_sight = "Blick in die Zukunft!"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Pinkes Siegel",
			poke_silver_seal = "Silbernes Siegel",

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
			k_poke_mega = "Mega",
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Joker Slot wenn Boss Blind besiegt wurde {C:inactive}(bis zu 5)"},
           ch_c_poke_nuzlocke = {"Erster Shop jeder Ante hat ein {C:attention}Clownspaket"}
        },
    }
}
