-- Benvenuto in it.lua!
-- Questo è anche il file predefinito, se ci sono cose qui che "mancano" negli altri file, verrà utilizzato questo

-- Rapporto di avanzamento: (questo è il file in italiano, non ho a che fare con le traduzioni ne per per studio ne per lavoro, fatevelo andare bene così com'è :P)

--[[
Mazzi: Sì
Jolly: Sì
Impostazioni/Mod: Sì
Oggetti: Sì
Energia: Sì
Foderi per mazzi (richiede il mod Deck Sleeves): Sì
Buio Boss: Sì
Sfide: Sì
Spettrali: Sì
Tarocchi: Sì (non ce ne sono, lol)
Adesivi: Sì
Pianeti: Sì (non ce ne sono, lol)
Dizionario: Sì
Edizioni: Sì
Buoni: Sì
Tag: Sì
Info varie (antico, baby, eitem, Tipo, ecc.): Sì
Altro (pacchetti, adesivi, ecc.): Sì
Varie: Sì
]]--

return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Mazzo Allenatore",
                text = {
                    "Inizia la partita con il",
                    "{C:tarot,T:v_poke_goodrod}#1#{} buono",
                    "e una carta {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Mazzo Telecinetico",
                text = {
                    "Inizia la partita con il",
                    "buono {C:tarot,T:v_crystal_ball}#1#{}",
                    "e {C:attention}2{} copie",
                    "di {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            -- Curiosità: questo e il mazzo luminoso avevano le descrizioni scambiate
            b_poke_obituarydeck = {
                name = "Mazzo Necrologio",
                text = {
                    "Tutte le carte hanno un'edizione {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Mazzo Luminoso",
                text = {
                    "Tutti i Jolly sono creati",
                    "con adesivi {C:pink}Tipo{} casuali",
                    "e hanno {C:attention}+1{} {C:pink}Energia{}"
                }
            },
        },
        Buio = {
            bl_poke_cgoose = {
                name = "Camera Chartreuse",
                text = {
                    "Tipi casuali vengono indeboliti",
                    "ogni mano",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Crea un Jolly {C:attention}Base{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Crea un Jolly {C:attention}Stage 1{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_moonstone = {
                name = "Pietralunare",
                text = {
                    "{C:green}#2# su #3#{} possibilità di",
                    "aumentare il livello della",
                    "{C:attention}mano di poker{} selezionata",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Mano: {C:attention}#1#{Cinactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Pietrasolare",
                text = {
                    "Potenzia {C:attention}#1#{} carte selezionate",
                    "in {C:attention}Carte Multiuso{} e",
                    "{C:attention}randomizza{} i loro ranghi",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_waterstone = {
                name = "Pietraidrica",
                text = {
                    "Potenzia {C:attention}#1#{} carta selezionata",
                    "in una carta {C:attention}Bonus{}",
                    "Se è già una carta {C:attention}Bonus{}",
                    "{C:attention}Raddoppia{} le fiche totali",
                    "{C:inactive}(Massimo di {C:fiche}+#2#{C:inactive} fiche)",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_thunderstone = {
                name = "Pietratuono",
                text = {
                    "Aggiunge {C:attention}2{} carte {C:attention}Oro{}",
                    "con lo stesso valore di",
                    "{C:attention}1{} carta selezionata al mazzo",
                    "e pescane {C:attention}1{} in mano",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_firestone = {
                name = "Pietrafocaia",
                text = {
                    "Seleziona {C:attention}#1#{} carte,",
                    "Potenzia le carte selezionate in {C:attention}Carte mult{}",
                    "poi distrugge {C:attention}1{} a caso",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_leafstone = {
                name = "Pietrafoglia",
                text = {
                    "{C:green}#1# su #2#{} possibilità per",
                    "ogni carta in mano di",
                    "diventare una {C:attention}Carta Fortunata{}",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_linkcable = {
                name = "Cavo di Collegamento",
                text = {
                    "Seleziona {C:attention}#1#{} carta,",
                    "{C:attention}Aumenta{} il valore della carta {C:attention}sinistra{}",
                    "{C:attention}Diminuisci{} il valore della carta {C:attention}destra{}",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_leftovers = {
                name = "Avanzi",
                text = {
                    "{C:attention}Riutilizzabile{}",
                    "Aggiunge {C:money}$#2#{} di valore di vendita",
                    "al Jolly più a sinistra o selezionato",
                    "{C:inactive}(Usabile una volta per round)",
                }
            },
            c_poke_leek = {
                name = "Porro",
                text = {
                    "{C:attention}Riutilizzabile{}",
                    "{C:green}#1# su #2#{} possibilità di aggiungere",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Olografico{}, o",
                    "{C:dark_edition}Policromo{} su di sè",
                    "{C:green}#1# su #3#{} possibilità di {S:1.1,C:red,E:2}autodistruggersi{}",
                    "{C:inactive}(Usabile una volta per round)",
                }
            },
            c_poke_thickclub = {
                name = "Ossospesso",
                text = {
                    "{C:attention}Riutilizzabile{}",
                    "Aggiunge permanentemente {C:fiche}+#2#{} fiche",
                    "a {C:attention}#1#{} carta selezionata e",
                    "la potenzia in {C:attention}Pietra{} se",
                    "ha già fiche aggiunti",
                    "{C:inactive}(Usabile una volta per round)",
                }
            },
            c_poke_teraorb = {
                name = "Tera Sfera",
                text = {
                    "Dà {C:attention}+1{} {C:pink}Energia{}",
                    "al Jolly più a sinistra o selezionato{}",
                    "{C:attention}Cambiatore di Tipo{}"
                },
            },
            c_poke_metalcoat = {
                name = "Metalcoperta",
                text = {
                    "Crea una copia {C:attention}Acciaio{} di",
                    "{C:attention}1{} carta selezionata",
                    "{C:attention}Cambiatore di Tipo{}"
                },
            },
            c_poke_dragonscale = {
                name = "Squama di Drago",
                text = {
                    "Crea fino a {C:attention}3{} carte",
                    "{C:item}Oggetto{} o {C:pink}Energia{} casuali",
                    "{C:attention}Cambiatore di Tipo{}",
                    "{C:inactive}(Devi avere spazio){}"
                },
            },
            c_poke_kingsrock = {
                name = "Roccia del Re",
                text = {
                    "Trasforma {C:attention}#1#{} carta",
                    "selezionata in un {C:attention}Re{}",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_upgrade = {
                name = "Potenziamento",
                text = {
                    "Dà a {C:attention}#1#{} carta selezionata",
                    "un {C:attention}Potenziamento{} casuale",
                    "{C:attention}Carta Evoluzione{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Dubbiodisco",
                text = {
                    "Randomizza o rimuove i {C:attention}potenziamenti{}",
                    "di tutte le carte in mano",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Include carte senza potenziamenti){}"
                }
            },
            c_poke_icestone = {
                name = "Pietragelo",
                text = {
                    "Trasforma {C:attention}#1#{} carta selezionata",
                    "in {C:attention}Carta di Vetro{}",
                    "{C:green}#2# su #3#{} possibilità per ogni",
                    "carta selezionata di {C:attention}sbriciolarsi{}",
                    "{C:attention}Carta Evoluzione{}",
                }
            },
            c_poke_shinystone = {
                name = "Pietrabrillo",
                text = {
                    "Aggiunge un effetto {C:dark_edition}Foil{}, {C:dark_edition}Olografico{},",
                    "o {C:dark_edition}Polychrome{} ad una",
                    "{C:attention}1{} carta selezionata in mano",
                    "e remove rimuove un {C:attention}potenziamento{}",
                    "{C:attention}Evolution Card{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Cucchiaio Torto",
                text = {
                    "Crea l'ultima",
                    "{C:item}Carta Oggetto{} o {C:pink}Energia{}",
                    "usata durante questa partita",
                    "{s:0.8,C:item}Cucchiaio Torto e Riutilizzabili{s:0.8} esclusi"
                }
            },
            c_poke_prismscale = {
                name = "Squama Bella",
                text = {
                    "Converte {C:attention}#2#{} carte {C:attention}tenute{} casuali",
                    "nel {C:attention}seme{} di",
                    "{C:attention}#1#{} carta selezionata",
                    "{C:attention}Carta Evoluzione{}"
                }
            },
            c_poke_duskstone = {
                name = "Neropietra",
                text = {
                    "Guadagni {C:money}$#1#{} per ogni Jolly in possesso",
                    "{C:attention}Assorbe {C:money}$1{} da ogni Jolly in possesso",
                    "Nessun {C:attention}Assorbimento{} dopo {C:attention}#2#{} Round {C:inactive}(Round #3#)",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Currently {C:money}$#4#{C:inactive}/$#5# Max)"
                }
            },
            c_poke_dawnstone = {
                name = "Pietralbore",
                text = {
                    "Guadagna {C:money}${} pari a {c:attention}due volte{}",
                    "il valore {C:mult}mult{} di {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive}/$40 Max)",
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Energia Erba",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Erba{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_fire_energy = {
                name = "Energia Fuoco",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Fuoco{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_water_energy = {
                name = "Energia Acqua",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Acqua{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energia Elettro",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Elettro{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energia Psico",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Psico{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energia Lotta",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Lotta{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energia Incolore",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly più a sinistra o selezionato permanentemente, se possibile",
                    "La metà dell'effetto con",
                    "Jolly non {C:attention}Incolore{}",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energia Oscurità",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Oscurità{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_metal_energy = {
                name = "Energia Metallo",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Metallo{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energia Folletto",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Folletto{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            -- Drago deez
            c_poke_dragon_energy = {
                name = "Energia Drago",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Drago{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_earth_energy = {
                name = "Energia Terra",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Terra{} più a sinistra o selezionato permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_emergy = {
                name = "Emergia",
                text = {
                    "Crea {C:attention}1{} carta {C:green}Energia",
                    "casuale con {C:dark_edition}Negativo{} per ogni",
                    "{C:attention}Jolly Felice{} o {C:legendary}M Jolly{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Shiny",
                label = "Shiny",
                text = {
                    "{C:attention}+1{} slot per Pacchetto Potenziato",
                    "disponibile nel negozio",
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
                    "{C:attention}+#4#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} per ogni",
                    "{C:attention}#3#{} tenuto in mano,",
                    "il valore cambia ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnato)",
                    "{C:inactive}(Si evolve a {C:money}$16{}{C:inactive} guadagnato)"
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} o {C:money}$#5#{} per ogni",
                    "{C:attention}#4#{} tenuto in mano,",
                    "il valore cambia ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnato)",
                    "{C:inactive}(Si evolve a {C:money}$16{}{C:inactive} guadagnato)"
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} per ogni {C:attention}#4#{} tenuto in mano,",
                    "il valore cambia ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnato)",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} dimensione della mano",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} scarti",
                    "Guadagna {C:mult}+#2#{} mult per mano giocata",
                    "quando rimangono {C:attention}#3#{} scarti",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve a {C:mult}+16{}{C:inactive} mult)"
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} scarti",
                    "Guadagna {C:mult}+#2#{} mult per mano giocata",
                    "quando rimangono {C:attention}#3#{} scarti",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve a {C:mult}+36{}{C:inactive} mult)"
                } 
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} scarti, {C:mult}+#1#{} mult",
                    "{X:mult,C:white} X#2# {} mult quando rimangono {C:attention}#3#{} scarti",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Charizard X",
                text = {
                    "{X:mult,C:white} X#1# {} mult quando rimangono {C:attention}#2#{} scarti",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "Mega Charizard Y",
                text = {
                    "{C:red}+#1#{} scarti",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:fiche}+#3#{} mani",
                    "Guadagna {C:fiche}+#2#{} fiche per ogni mano",
                    "rimanente alla fine del round",
                    "{C:inactive}(Attualmente {C:fiche}+#1#{C:inactive} fiche)",
                    "{C:inactive}(Si evolve a {C:fiche}+32{} {C:inactive}fiche)"
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:fiche}+#3#{} mani",
                    "Guadagna {C:fiche}+#2#{} fiche per ogni mano",
                    "rimanente alla fine del round",
                    "{C:inactive}(Attualmente {C:fiche}+#1#{C:inactive} fiche)",
                    "{C:inactive}(Si evolve a {C:fiche}+72{} {C:inactive}fiche)"
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:fiche}+#3#{} mani, {C:fiche}+#1#{} fiche",
                    "{C:fiche}+#2#{} fiche per ogni mano rimanente",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:fiche}+#2#{} mani",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} mult",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} mult",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_butterfree = {
                name = "Butterfree",
                text = {
                    "{C:mult}+#1#{} mult",
                } 
            },
            j_poke_weedle = {
                name = "Weedle",
                text = {
                    "{C:fiche}+#1#{} fiche",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:fiche}+#1#{} fiche",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:fiche}+#1#{} fiche"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:fiche}+#1#{} fiche",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "{C:mult}+#2#{} Mult se la mano giocata contiene",
                    "valori multipli e semi multipli",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "{C:mult}+#2#{} Mult se la mano giocata include",
                    "valori multipli e semi multipli",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Crea una carta {C:planet}Pianeta{} quando il {C:attention}Buio{} è selezionato",
                    "{br:2}text needs to be here to work",
                    "{C:mult}+#1#{} Mult se la manio giocata include",
                    "valori multipli e semi multipli",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Quando il {C:attention}Buio{} è selezionato {C:attention}perdi tutti gli scarti{}",
                    "{br:2}text needs to be here to work",
                    "Ogni carta da {X:mult,C:white}X{} Mult",
                    "uguale agli {C:attention}scarti perduti{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Rinnova {C:attention}prima{} carta giocata",
                    "usata nel punteggio",
                    "{C:attention}#1#{} volta aggiuntiva",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Rinnova {C:attention}prima{} e {C:attention}seconda{}",
                    "carta giocata usata nel punteggio",
                    "{C:attention}#1#{} volta aggiuntiva",
                } 
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Dopo aver giocato {C:attention}#2#{} carte di punteggio",
                    "aumenta il livello della prossima {C:attention}mano di poker{} giocata",
                    "{C:inactive}(Attualmente {C:attention}#3#{}{C:inactive}/#2#) {C:inactive}#4#{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Dopo aver giocato {C:attention}#1#{} carte di punteggio",
                    "aumenta il livello della prossima {C:attention}mano di poker{} giocata",
                    "{C:inactive}(Attualmente {C:attention}#2#{}{C:inactive}/#1#) {C:inactive}#3#{}",
                } 
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} mult se",
                    "la mano giocata contiene",
                    "una {C:attention}Scala{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "contiene una {C:attention}Scala{}",
                    "Crea una carta Tarocchi se",
                    "contiene anche un {C:attention}Asso{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Guadagna {C:money}$#1#{} alla",
                    "fine del round per",
                    "ogni Jolly che hai",
                    "{C:inactive}(Massimo di {C:money}$10{C:inactive})",
                    "{C:inactive}(Si evolve con una {C:attention}Pietratuono{} {C:inactive}carta)"
                } 
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Applica {C:dark_edition}Negativo{} a sé stesso",
                    "alla fine del round se hai",
                    "almeno {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Aumenta per ogni Raichu che hai){}",
                    "Guadagna {C:money}$#1#{} alla fine del",
                    "round per ogni Jolly che hai",
                    "{C:inactive}(Massimo di {C:money}$#3#{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:fiche}+#2#{} fiche per ogni carta",
                    "{C:attention}Vetro{} nel tuo mazzo completo",
                    "La prima carta {C:attention}Vetro{} distrutta ogni",
                    "round aggiunge una copia alla mano",
                    "{C:inactive}(Attualmente {C:fiche}+#3#{}{C:inactive} fiche){C:inactive}#4#{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} Fiche per ogni carta di {C:attention}Vetro{}",
                    "nel tuo mazzo completo",
                    "{br:3}text needs to be here to work",
                    "{V:1}Aggiunge una copia della prime carte di {C:attention,V:1}#3#{} {C:inactive}[#4#]{} {C:attention,V:1}Vetro{V:1}",
                    "{V:1}distrutte in ogni round nella mano",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Ogni {C:attention}Regina{}",
                    "tenuta in mano",
                    "dà {C:fiche}+#1#{} fiche",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Ogni {C:attention}Regina{}",
                    "tenuta in mano",
                    "dà {C:fiche}+#1#{} fiche",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietralunare{}{C:inactive} carta)"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} dimensione della mano",
                    "Ogni {C:attention}Regina{}",
                    "tenuta in mano",
                    "dà {C:fiche}+#1#{} fiche",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Ogni {C:attention}Re{}",
                    "tenuta in mano",
                    "dà {C:mult}+#1#{} mult",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Ogni {C:attention}Re{}",
                    "tenuta in mano",
                    "dà {C:mult}+#1#{} mult",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietralunare{}{C:inactive} carta)"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} dimensione della mano",
                    "Ogni {C:attention}Re{}",
                    "tenuta in mano",
                    "dà {C:mult}+#1#{} mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Carte giocate con",
                    "{C:clubs}#2#{} seme danno",
                    "{C:mult}+#1#{} mult quando segnano",
                    "{C:inactive}(Si evolve con{} {C:attention}Pietralunare{}{C:inactive} carta)"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Carte giocate con {C:clubs}#2#{} seme danno",
                    "",
                    "{C:mult}+#1#{} mult per ogni {C:clubs}#2#{}",
                    "nelle mani di punteggio di questo round",
                    "{C:inactive,s:0.8}(Se hai giocato 5 fiori, ognuno darebbe {C:mult,s:0.8}+5{} {C:inactive,s:0.8}mult){}",
                    "{C:inactive}(Attualmente {C:mult}#3#{}{C:inactive} mult){}"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# in #2#{} possibilità per ogni",
                    "carta {C:attention}9{} giocata di creare una",
                    "carta {C:attention}Tarocchi{} quando assegnano punti",
                    "{C:inactive}(Devi avere spazio)",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafocaia{}{C:inactive} carta)"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Tenendo {C:dark_edition}Negativo{} Medio{}",
                    "{C:green}#1# in #2#{} possibilità per ogni",
                    "carta {C:attention}9{} giocata di creare una",
                    "carta {C:attention}Tarocchi{} o {C:planet}Pianeta{} quando assegnano punti",
                    "{C:inactive}(Devi avere spazio)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Carte giocate con",
                    "{C:spades}#2#{} seme danno",
                    "{C:mult}+#1#{} mult quando segnano",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietralunare{}{C:inactive} carta)"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Carte giocate con {C:spades}#3#{}",
                    "seme danno {C:mult}+#1#{} mult e",
                    "{C:fiche}+#2#{} fiche più i fiche totali di quella carta",
                    "quando segnano",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "Guadagna {C:mult}+#2#{} Mult per ogni carta ",
                    "Potenziata nella mano giocata",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolve a {C:mult}+#1#{C:inactive} / +#3# Mult)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Guadagna {C:chips}+#4#{} dopo la giocata {C:attention}Bonus{} / Carte di {C:attention}Pietra{} ",
                    "{C:mult}+#2#{} quando assegnano punti {C:attention}Mult{} / Carte {C:attention}Multiuso{} ",
                    "{X:red,C:white}X#6#{} quando assegnano punti {C:attention}Acciaio{} / carte di {C:attention}Vetro{} ",
                    "{C:money}$#8#{} quando assegnano punti {C:attention}Dorate{} / Carte {C:attention}Fortunate{} ",
                    "Rimuovi {C:dark_edition}Potenziamento{} dalle carte giocate",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:red,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} end of round)",
                    "{C:inactive,s:0.8}(Evolve dopo aver mangiato {C:attention,s:0.8}#9#{C:inactive,s:0.8} potenziamenti)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Carte giocate con {C:attention}Dispari{} valore",
                    "danno {C:mult}+#1#{} o {C:mult}+#2#{} mult quando segnano",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Carte giocate con {C:attention}Dispari{} valore",
                    "danno {C:mult}+#1#{} o {C:mult}+#2#{} mult quando segnano",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafoglia/Pietrasolare{}{C:inactive} carta)"
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Carte giocate con {C:attention}Dispari{} valore",
                    "danno {C:mult}+#2#{} mult o",
                    "{X:mult,C:white} X#1# {} mult quando segnano"
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} mult per mano giocata",
                    "che contiene un {C:attention}Doppia Coppia{}", 
                    "{C:inactive}(Attualmente {C:mult}+#1#{} {C:inactive}mult)",
                    "{C:inactive}(Si evolve a {C:mult}+8{}{C:inactive} mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} mult per mano giocata",
                    "che contiene un {C:attention}Doppia Coppia{}",
                    "{C:mult}-#3#{} mult per mano giocata",
                    "che non la contiene",
                    "{C:inactive}(Attualmente {C:mult}+#1#{} {C:inactive}mult)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Aggiunge {C:attention}#1#{} a tutte le {C:attention}probabilità",
                    "{C:green,E:1,S:1.1}elencate",
                    "{C:inactive}(es: {C:green}1 su 6{C:inactive} -> {C:green}2 su 6{C:inactive})",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Aggiunge {C:attention}#1#{} a tutte le {C:attention}probabilità",
                    "{C:green,E:1,S:1.1}elencate",
                    "{C:inactive}(es: {C:green}1 su 6{C:inactive} -> {C:green}3 su 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:fiche}+#2#{} fiche se la mano giocata",
                    "contiene un {C:attention}Tris{}",
                    "{C:mult}+#3#{} mult se la mano giocata",
                    "contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:fiche}+#2#{} fiche se la mano giocata",
                    "contiene un {C:attention}Tris{}",
                    "{X:red,C:white} X#1# {} mult se la mano giocata",
                    "contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Guadagna {C:money}$#1#{} alla",
                    "fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Guadagna {C:money}${} alla fine del",
                    "round pari a {C:attention}due volte{} il", 
                    "valore di vendita del Jolly più a sinistra {C:attention}Joker{}",
                    "{C:inactive}(Tranne sé stesso){}",
                    "{C:inactive}(Attualmente {C:money}$#1#{C:inactive}, Massimo di {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Se la mano giocata è una",
                    "singola {C:attention}carta figura{}, guadagna {C:money}$#1#{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Se la mano giocata è una singola",
                    "{C:attention}carta figura{}, guadagna {C:money}$#1#{} e diventa",
                    "{C:attention}Oro{} quando assegnano punti"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Ogni carta {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, o {C:attention}7{} giocata dà",
                    "{C:mult}+#1#{} mult e {C:fiche}+#2#{} fiche",
                    "quando assegnano punti",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Ogni carta {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, o {C:attention}7{} giocata dà",
                    "{C:mult}+#1#{} mult e {C:fiche}+#2#{} fiche",
                    "quando assegnano punti",
                    "{C:inactive}(Si evolve dopo aver attivato {C:attention}#3#{}{C:inactive}/25 volte){}"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "contiene un {C:attention}Colore{}",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafocaia{}{C:inactive} carta)"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} mult se la mano giocata",
                    "contiene un {C:attention}Colore{}",
                    "Crea una carta {C:attention}Amanti{}",
                    "quando {C:attention}Buio{} è selezionato"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Carte giocate con {V:1}#3#{} seme",
                    "danno {C:mult}+#1#{} mult quando segnano",
                    "Il seme cambia in ordine dopo",
                    "che la mano è giocata",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Carte giocate con {V:1}#2#{} seme ",
                    "danno {C:mult}+#1#{} mult quando segnano",
                    "Il seme cambia in ordine dopo",
                    "che la mano è giocata",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Si evolve con una{} {C:attention,s:0.8}Pietraidrica{}{C:inactive,s:0.8} o {C:attention,s:0.8}Roccia del Re{}{C:inactive,s:0.8} carta)"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Carte giocate con {V:1}#2#{} seme",
                    "danno {C:mult}+#7#{} mult",
                    "e {X:mult,C:white} X#1# {} mult quando segnano",
                    "Il seme cambia in ordine dopo",
                    "che la mano è giocata",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# in #2#{} possibilità di",
                    "creare una carta {C:attention}Matto{} se",
                    "la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# in #2#{} possibilità di",
                    "creare una carta {C:attention}Matto{} o {C:item}Cucchiaio Torto{}",
                    "se la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                    "{C:inactive}(Si evolve con una{} {C:attention}Cavo di Collegamento{}{C:inactive} carta)"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} slot consumabili",
                    "{C:green}#1# in #2#{} possibilità di",
                    "creare una carta {C:attention}Matto{} o {C:item}Cucchiaio Torto{}",
                    "se la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} slot consumabili",
                    "Ogni {C:attention}Consumabile{} tenuto dà {X:mult,C:white}X#1#{} mult",
                    "{C:item}Cucchiai Contorti{} danno {X:mult,C:white}X#2#{} mult",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:fiche}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#4#{} mult",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:fiche}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#3#{} mult",
                    "{C:inactive}(Si evolve con una{} {C:attention}Cavo di Collegamento{}{C:inactive} carta)"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:fiche}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#3#{} mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Carte giocate con {C:attention}Pari{} valore",
                    "danno {C:fiche}+#1#{} fiche quando segnano",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Carte giocate con {C:attention}Pari{} valore",
                    "danno {C:fiche}+#1#{} fiche quando segnano",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafoglia{}{C:inactive} carta)"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebell",
                text = {
                    "Carte giocate con {C:attention}Pari{} valore",
                    "danno {C:fiche}+#1#{} fiche quando segnano",
                    "e {C:attention}ritriggerano{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Ogni giocata da {C:attention}10{}",
                    "{C:mult}+#1#{} Mult quando assegna punti",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Ogni giocata da{C:attention}10{}",
                    "{C:mult}+#1#{} Mult quando assegna punti",
                    "{br:2}text needs to be here to work",
                    "{C:attention}10s non può essere{} penalizzata"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:attention}-#2#{} hand size",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:attention}-#2#{} hand size",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:attention}-#2#{} hand size",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Gains {C:chips}#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +60 Chips)",
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Gains {C:chips}#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "{br:3}text needs to be here to work",
                    "Applies {C:attention}Shortcut{} for first hand",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult durante la {C:attention}mano finale{}",
                    "{C:inactive,s:0.8}(Evolve dopo essersi attivato{C:attention,s:0.8}#2#{C:inactive,s:0.8} volte)",
                    "{C:inactive,s:0.8}(Evolve con una {C:attention,s:0.8}Roccia di Re{C:inactive,s:0.8})"
                } 
            },
            -- not used currently
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult on {C:attention}final hand{} of round",
                    "{C:green}#3# in #4#{} chance to create",
                    "a {C:attention}King's Rock{} card at",
                    "end of round {C:inactive,s:0.8}(Must have room){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds or with a {C:attention,s:0.8}King's Rock{} {C:inactive,s:0.8}card)"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Guadagna {X:red,C:white} X#1# {} mult",
                    "per mano giocata,",
                    "Resetta alla fine del round",
                    "{C:inactive}(Attualmente {X:red,C:white} X#2# {}{C:inactive} mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "Guadagna {X:red,C:white} X#1# {} mult per",
                    "mano giocata,si resetta quando",
                    "un {C:attention}Buio Boss{} viene sconfitto",
                    "{C:inactive}(Attualmente {X:red,C:white} X#2# {}{C:inactive} mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Carte {C:attention}Acciaio{} giocate",
                    "danno {X:red,C:white}X#1#{} mult",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Carte {C:attention}Acciaio{} giocate danno {X:red,C:white}X#1#{} mult",
                    "più {X:red,C:white}X#2#{} mult per ogni",
                    "Jolly {X:metal,C:white}Metallo{} adiacente",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{}{C:inactive} mult){}",
                    "{C:inactive}(Si evolve con una {C:attention}Pietratuono{}{C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Ottieni Porro{}",
                    "{C:green}#2# in #3#{} possibilità di guadagnare {C:money}$#1#",
                    "ogni volta che un {C:attention}Consumabile{} viene usato",
                    "{C:money}${} garantito quando si usa {C:attention}Porro{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "contiene almeno {C:attention}2{} figure",
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "è un {C:attention}Full{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',      
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "contiene almeno {C:attention}3{} figure",
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "è un {C:attention}Full{}",
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# in #2#{} possibilità di",
                    "aggiungere un {C:attention}sigillo{} casuale alla",
                    "carta che assegna punti più a sinistra nella",
                    "{C:attention}prima mano{} del round",
                    "{C:inactive,s:0.75}(Si evolve quando il tuo mazzo completo ha almeno {C:attention,s:0.75}#3#{}{C:inactive,s:0.75} {C:attention,s:0.75}sigilli{C:inactive,s:0.75})"
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Aggiunge un {C:attention}sigillo{} casuale alla",
                    "carta che assegna punti più a sinistra nella",
                    "{C:attention}prima mano{} del round",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult se il tuo mazzo > {C:attention}#3#{}",
                    "Aggiunge una carta casuale al mazzo",
                    "alla fine del round",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} turni)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult per ogni carta aggiunta {C:attention}#2#{} nel tuo mazzo",
                    "{br:4}text needs to be here to work",
                    "Alla fine del round, rimuovi 1 carta casuale",
                    "dal mazzo e aggiungine due casuali",
                    "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult){}"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Se la mano ha {C:attention}5{} carte di punteggio",
                    "ogni carta ha una {C:green}#1# in #2#{}",
                    "possibilità di ritriggerare",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietraidrica{}{C:inactive} carta)"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Se la mano ha {C:attention}5{} carte di punteggio",
                    "ogni carta ha una {C:green}#1# in #2#{}",
                    "possibilità di ritriggerare",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# in #2#{} possibilità di",
                    "{C:attention}sostituire{} l'edizione di un",
                    "Jolly casuale con {C:dark_edition}Negativo{}",
                    "alla fine del round",
                    "{S:1.1,C:red,E:2}si autodistrugge{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# in #2#{} possibilità di",
                    "{C:attention}sostituire{} l'edizione di un",
                    "Jolly casuale con {C:dark_edition}Negativo{}",
                    "{S:1.1,C:red,E:2}si autodistrugge{}",
                    "alla fine del round",
                    "{C:inactive}(Si evolve con una{} {C:attention}Cavo di Collegamento{}{C:inactive} carta)"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}Percentuale di possibilità{}",
                    "A volte {C:attention}sostituisce{} l'edizione",
                    "di un casuale Jolly in tuo possesso con",
                    "un'edizione {C:dark_edition}Negativa{} alla fine del round",
                    "{C:inactive,s:0.8}(Esclude Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "Jolly {C:dark_edition}Policromo{} che apparirebbero",
                    "nel {C:attention}Negozio{} e nei {C:attention}Pacchetti Booster{}",
                    "sono {C:dark_edition}Negativi{} invece",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "La carta di punteggio più a sinistra della",
                    "tua {C:attention}prima mano{} del round",
                    "diventa una carta {C:attention}Pietra{}",
                    "{C:inactive}(Si evolve con un adesivo {C:metal}Metallo{}{C:inactive}){}"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{X:mult,C:white}X#2#{} Mult per ogni carta",
                    "{C:planet}Pianeta{} usata durante questa run",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolve dopo aver giocato {C:planet,s:0.8}#3#{C:inactive,s:0.8} carte pianeta uniche)",
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Holding Trance{}",
                    "{X:mult,C:white}X#2#{} Mult per ogni carta",
                    "{C:planet}Pianeta{} usata questa run",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Carte {C:attention}figura{} giocate",
                    "danno {C:fiche}+#1#{} fiche",
                    "quando segnate",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Tutte le carte {C:attention}figura{} giocate",
                    "diventano carte {C:attention}Bonus{}",
                    "e danno {C:fiche}+#1#{} fiche",
                    "quando segnate",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "{C:attention}Volatile Right{}",
                    "{X:mult,C:white} X#1# {} Mult",
                    "{br:2}text needs to be here to work",
                    "dopo essersi attivato",
                    "viene penalizzato fino alla fine del round",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round senza attivarsi)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "{C:attention}Volatile Right{}",
                    "{X:mult,C:white} X#1# {} Mult",
                    "Ottieni {C:money}$#2#{} quando la giocata assegna punti",
                    "{br:2}text needs to be here to work",
                    "dopo essersi attivato",
                    "viene penalizzato fino alla fine del round",
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Carte giocate con",
                    "{C:hearts}#2#{} seme danno",
                    "{C:mult}+#1#{} mult quando segnano",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafoglia{}{C:inactive} carta)"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "{C:green}#4# in #5#{} possibilità per",
                    "carte giocate con",
                    "{C:hearts}#3#{} seme di dare",
                    "{C:mult}+#1#{} mult e {X:mult,C:white}X#2#{} mult",
                    "quando segnano", 
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',      
                text = {
                    "{C:attention}Avere Ossospesso{}",
                    "Da {C:mult}+#1#{} mult per",
                    "ogni consumabile {C:posseduto}{} ",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Ossospessi{}{C:inactive,s:0.75} valgono il doppio){}",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} mult)",
                    "{C:inactive,s:0.75}(Evolves at {C:attention,s:0.75}#4#{}{C:inactive,s:0.75}/#5# consumables used)"
                } 
            },
             j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} slot consumabili",
                    "Dà {X:mult,C:white} X#1# {} mult per ogni ", 
                    "slot consumabile riempito",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Ossospessi{}{C:inactive,s:0.75} valgono il doppio){}",
                    "{C:inactive}(Attualmente {X:mult,C:white} X#3# {}{C:inactive} mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:mult,C:white}X#1#{} mult per ogni carta",
                    "sotto {C:attention}#2#{} nel tuo mazzo",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:mult,C:white}X#1#{} mult per ogni carta",
                    "sopra {C:attention}#2#{} nel tuo mazzo",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "La prima e la seconda carta {C:attention}Jack{} giocate",
                    "danno {X:mult,C:white} X#1# {} mult",
                    "quando assegnano punti",
                    "{C:inactive}(Si evolve dopo aver attivato {C:attention}#2#{}{C:inactive}/20 volte){}"
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Vendi questa carta per ridurre il",
                    "punteggio richiesto dal",
                    "{C:attention}Buio Boss{} attuale della metà{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Vendi questa carta per ridurre il",
                    "punteggio richiesto dal",
                    "{C:attention}Buio Boss{} attuale della metà{}",
                    "e disabilitarlo",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Ogni carta {C:attention}Pietra{} giocata",
                    "guadagna permanentemente",
                    "{C:fiche}+#1#{} fiche quando assegna punti",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Ogni carta {C:attention}Pietra{} giocata",
                    "guadagna permanentemente {C:fiche}+#1#{} fiche quando assegna punti",
                    "Ritriggera la {C:attention}prima{} carta",
                    "{C:attention}Pietra{} giocata usata nel punteggio",
                    "{C:inactive}(Si evolve con una carta {} {C:attention}Cavo di Collegamento{}{C:inactive})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "Le prime {C:attention}#1#{} volte che una",
                    "carta {C:attention}Fortunata{} si attiva ogni round,",
                    "aggiungi una copia permanente al tuo",
                    "mazzo e pescala in {C:attention}Mano",
                    "{C:inactive}(Attualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(Si evolve quando il mazzo è >= 25% carte {C:attention}Fortunate{C:inactive})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Le carte {C:attention}Multiuso{} giocate danno",
                    "{C:mult}+#1#{} mult, {C:fiche}+#2#{} fiche, o {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} possibilità di attivare {C:attention}tutti e tre{}",
                    "{C:inactive}(Si evolve a {C:attention}#6#{C:inactive}/#7# {C:attention}Carte Multiuso{C:inactive} a punteggio)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} slot consumabili",
                    "{C:fiche}-#2#{} mani",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "Ritriggera tutte le carte giocate",
                    "Crea un {C:attention}Doppio Patto{} alla",
                    "fine del round se almeno",
                    "{C:attention}#1# Consumabili{} sono stati usati questo round",
                    "{C:inactive}(Attualmente {C:attention}#2#{C:inactive} Consumabili usati){}"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "per ogni {C:attention}6{}",
                    "nella mano di punteggio",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve a {C:mult}+12{} {C:inactive}mult)"
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "quando un {C:attention}6{} assegna punti",
                    "Raddoppia i guadagni se un {C:attention}Re{}",
                    "è tenuto in mano",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve con un adesivo {C:dragon}Drago{}{C:inactive}){}"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Ritriggera ogni carta {C:attention}Oro{}",
                    "tenuta in mano {C:attention}#1#{} volta",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Ritriggera ogni carta {C:attention}Oro{}",
                    "tenuta in mano {C:attention}#1#{} volte",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Carte giocate con",
                    "seme {C:diamonds}#2#{} danno",
                    "{C:mult}+#1#{} mult quando segnano",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietraidrica{}{C:inactive} carta)"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Carte giocate con",
                    "seme {C:diamonds}#3#{}  danno",
                    "{C:mult}+#1#{} mult e ",
                    "{C:money}$#2#{} quando segnano",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Ritriggera la carta più a sinistra",
                    "tenuta in mano {C:attention}#1#{} volte"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "Quando un Buio è selezionato, distrugge",
                    "il Jolly a destra e guadagna {C:mult}+#2#{} mult",
                    "Guadagna {C:attention}Foil{}, {C:attention}Olografico{}, o {C:attention}Policromo{}",
                    "se il Jolly era {C:red}Raro{} o superiore",
                    "{C:inactive}(Si evolve con un adesivo {C:metal}Metallo{}{C:inactive}){}",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)"
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "Quando il {C:attention}Buio{} viene selezionato, ottieni {C:attention}+#1#{} +1 carte permanentementi",
                    "in mano, se la tua mano contiene {C:attention}#2#{} o più carte",
                    "{br:4}text needs to be here to work",
                    "{C:attention}Giocarte carte{} aggiunte al",
                    "tuo mazzo tramite {C:attention}Negozio{}, {C:attention}Standard{} packs,",
                    "{C:spectral}Cryptid{}, {C:item}Items{} and certain Jokers",
                    "sono {C:attention}duplicatia{}"
                }
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Ottiene {C:money}$#1#{} {C:attention}Valore di vendita{}",
                    "quando una carta viene venduta alla fine del round",
                    "{br:3.5}text needs to be here to work",
                    "Ottieni {C:attention}#2#%{} del valore di vendita ",
                    "di questo jolly alla fine del round {C:inactive}(rounded up){}",
                    "{C:inactive}(Currently earns {C:money}$#3#{C:inactive}/$#4# Max)",
                    "{C:inactive,s:0.8}(Evolve tramite carta {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Se {C:attention}il primo scarta{} del round ha solo",
                    "{C:attention}1{} carta, distruggila e ottieni {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolve tramite carta {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} mult se una carta",
                    "che assegna punti nella mano giocata",
                    "ha lo stesso {C:attention}valore{} di",
                    "una carta {C:attention}tenuta in mano{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Carte {C:attention}non potenziate{} giocate",
                    "danno {X:mult,C:white} X#1# {} mult quando assegano punti",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Leader)',
                text = {
                    "Ogni Jolly {C:attention}Tauros{} dà {X:mult,C:white} X#1# {} mult",
                    "Ogni reroll nel negozio ha una",
                    "{C:green}#2# in #3#{} possibilità di aggiungere",
                    "un {C:attention}Tauros (Mandria){} al negozio",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Mandria)',
                text = {
                    "{C:mult}+#1#{} mult",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "{C:fiche}+#2#{} fiche",
                    "Applica {C:attention}Splash{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} mult",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} mult",
                    "Disabilita l'effetto di",
                    "ogni {C:attention}Buio Boss{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:fiche}+#2#{} fiche per ogni",
                    "{C:attention}Buio{} saltato in questa partita",
                    "{C:inactive}(Attualmente {C:fiche}+#1# {C:inactive}fiche)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Vendi questo per duplicare",
                    "il Jolly più a sinistra",
                    "con {C:attention}Perishable{}",
                    "e un adesivo {C:colorless}Incolore{}",
                    "{C:inactive}(rimuove Eternal, esclude Dittos){}",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "Guadagna {C:money}$#1#{} per",
                    "i primi {C:attention}5{} {C:green}reroll{}",
                    "{C:inactive}(Si evolve con...multi){}",
                    "{C:inactive}Attualmente {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Guadagna {C:fiche}+#2#{} fiche",
                    "per ogni {C:attention}3{} {C:green}reroll{}",
                    "{C:inactive}(Attualmente {C:attention}#3#{}{C:inactive}/3 reroll)",
                    "{C:inactive}(Attualmente {C:fiche}+#1#{C:inactive} fiche)",
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Guadagna {C:money}$#1#{}",
                    "per ogni {C:attention}3{} {C:green}reroll{}",
                    "{C:inactive}(Attualmente {C:attention}#2#{}{C:inactive}/3 reroll)"
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Guadagna {X:red,C:white} X#2# {} mult",
                    "per ogni {C:attention}3{} {C:green}reroll{}",
                    "{C:inactive}(Attualmente {C:attention}#3#{}{C:inactive}/3 reroll)",
                    "{C:inactive}(Attualmente {X:red,C:white} X#1# {}{C:inactive} mult)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Limite di Energia",
                    "Crea una carta {C:pink}Energia{}",
                    "quando un {C:attention}Booster Pack{}",
                    "viene aperto",
                    "{C:inactive}(Si evolve con una carta{} {C:attention}Potenziamento{}{C:inactive})"
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Antico #1#{}",
                    "{X:attention,C:white}Uno{} : Guadagna {C:money}$#2#{} del valore di vendita",
                    "{X:attention,C:white}Due{} : Guadagna {C:money}$#3#{}",
                    "{X:attention,C:white}Tre+{} : Crea una carta {C:attention}Tarocchi{} casuale",
                    "{C:inactive}(Devi avere spazio)",
                    "{C:inactive}(Si evolve dopo aver attivato il terzo livello {C:attention}#4#{}{C:inactive}/#5# volte)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Antico #1#{}",
                    "{X:attention,C:white}Uno{} : Guadagna {C:money}$#2#{} del valore di vendita",
                    "{X:attention,C:white}Due{} : Guadagna {C:money}$#3#{}",
                    "{X:attention,C:white}Tre{} : Crea una carta {C:attention}Tarocchi{} casuale",
                    "{X:attention,C:white}Quattro+{} : Crea una carta {C:item}Oggetto{} casuale",
                    "{C:inactive}(Devi avere spazio){}"
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Antico #1#{}",
                    "{X:attention,C:white}Uno{} : {C:fiche}+#2#{} fiche",
                    "{X:attention,C:white}Due{} : Le carte {C:attention}#1#{} segnate guadagnano {C:fiche}+#3#{} fiche permanentemente",
                    "{X:attention,C:white}Tre+{} : {C:fiche}+#4#{} fiche",
                    "{C:inactive}(Si evolve dopo aver attivato il terzo livello {C:attention}#5#{}{C:inactive}/#6# volte)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Antico #1#{}",
                    "{X:attention,C:white}Uno{} : {C:fiche}+#2#{} fiche",
                    "{X:attention,C:white}Due{} : Le carte {C:attention}#1#{} giocate guadagnano {C:fiche}+#3#{} fiche permanentemente",
                    "{X:attention,C:white}Tre{} : {C:fiche}+#4#{} fiche",
                    "{X:attention,C:white}Quattro+{} : Riattiva la {C:attention}prima{} e la {C:attention}seconda{}",
                    "carta giocata {C:attention}#5#{} : Riattiva la {C:attention}prima{} e la {C:attention}seconda{}",
                    "carta giocata altre {C:attention}#5#{} volte"
                } 
            },
                        j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Antico #1#{}",
                    "{X:attention,C:white}Uno{} : {C:mult}+#2#{} mult",
                    "{X:attention,C:white}Due{} : {C:mult}+#3#{} mult e {C:fiche}+#4#{} fiche",
                    "{X:attention,C:white}Tre{} : {X:red,C:white}X#5#{} mult",
                    "{X:attention,C:white}Quattro+{} : Questo Jolly segna {C:attention}doppio{} mult"
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Carte {C:attention}#1#s{} giocate danno",
                    "{X:mult,C:white} X#2# {} mult per ogni {C:attention}#1#{} in",
                    "mano giocata quando assegnano punti",
                    "{C:green}#3# in #4#{} possibilità per ogni",
                    "carta {C:attention}#1#{} giocata di essere distrutta",
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "{C:attention}Ottieni Avanzi{}",
                    "Alla fine del round guadagna {X:red,C:white}X#1#{} mult",
                    "per ogni {C:attention}Avanzi{} che hai",
                    "{C:inactive}(Attualmente {X:red,C:white} X#2# {}{C:inactive} mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Aggiunge un effetto {C:attention}Foil{} e un {C:attention}sigillo{}",
                    "alla carta più a sinistra che assegna punti",
                    "nella mano giocata"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} mult per",
                    "ogni {C:money}$#2#{} che hai",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{}{C:inactive} mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Multres',
                text = {
                    "Aumenta il livello delle prime",
                    "{C:attention}3 mani scartate{}",
                    "ogni round"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "se la mano giocata contiene",
                    "{C:attention}#3#{} o meno carte",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve a {C:mult}+10{}{C:inactive} mult)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "se la mano giocata contiene",
                    "{C:attention}#3#{} or meno carte",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult)",
                    "{C:inactive}(Si evolve a {C:mult}+30{}{C:inactive} mult)"
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} mult",
                    "Se la mano giocata ha",
                    "solo {C:attention}1{} carta",
                    "la ritriggera {C:attention}#2#{} volte"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "Alla fine del negozio, crea un",
                    "duplicato {C:dark_edition}Policromo{} del",
                    "Jolly più a sinistra con {C:attention}+1{} {C:pink}Energia{}",
                    "poi distrugge il Jolly più a sinistra",
                    "{C:dark_edition}Policromo{} Jolly danno {X:mult,C:white} X#1# {} mult",
                    "{C:inactive}(Non può distruggere sé stesso)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtwo X",
                text = {
                    "Tutti i Jolly danno {X:mult,C:white} X#1# {} mult",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtwo Y",
                text = {
                    "Dà {C:attention}+2{} {C:pink}Energia{} al",
                    "Jolly più a sinistra alla fine del negozio",
                    "{C:pink}+1{} Limite di Energia quando",
                    "un {C:attention}Buio Boss{} è sconfitto"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "Alla fine del negozio, crea",
                    "una carta {C:dark_edition}Negativa{} {C:attention}Tarocchi{},",
                    "{C:spectral}Spettrale{} o {C:item}Oggetto{} casuale",
                    "A volte crea un Jolly {C:dark_edition}Negativo{} casuale {C:attention}invece{}",
                } 
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} mult per",
                    "ogni {C:attention}mano consecutiva{} giocata che",
                    "non è l'ultima mano giocata",
                    "{C:inactive}(Ultima mano: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Attualmente {C:mult}+#1#{} {C:inactive}mult)",
                    "{C:inactive}(Si evolve a {C:mult}+15{} {C:inactive}mult)"
                }  
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} mult quando la mano giocata",
                    "non è l'ultima mano giocata",
                    "{C:inactive}(Ultima mano: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Attualmente {C:mult}+#1#{} {C:inactive}mult)",
                }  
            },
            j_poke_hoothoot = {
                name = 'Hoothoot',
                text = {
                    "{C:purple}+#1# Chiaroveggenza ",
                    "Ogni carta {C:attention}prevista{}",
                    "fornisce il valore totale delle fiche",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Chiaroveggenza",
                    "Ogni carta {C:attention}prevista{} ",
                    "fornisce il valore totale delle fiche",
                }
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "{C:attention}Randomizza{} i potenziamenti delle carte di punteggio esistenti",
                    "Guadagna {C:mult}+#2#{} per {C:attention}mult{} e {C:attention}Multiuso{} carte",
                    "{C:fiche}+#4#{} per {C:attention}Bonus{} e {C:attention}Pietra{} carte,",
                    "{X:red,C:white}X#6#{} per {C:attention}Acciaio{} e {C:attention}Vetro{} carte,",
                    "{C:money}$#8#{} per {C:attention}Oro{} e {C:attention}Fortunato{} carte",
                    "{C:inactive}(Attualmente {C:mult}+#1#{}, {C:fiche}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} fine round)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#2# {} mult",
                    "Guadagna {C:money}$#1#{} alla",
                    "fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea una carta {C:attention}Luna{} con",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea una carta {C:attention}Mondo{} con",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_natu = {
                name = 'Natu',
                text = {
                    "Le carte {C:planet}Pianeta{} danno un livello extra",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_xatu = {
                name = 'Xatu',
                text = {
                    "Le carte {C:planet}Pianeta{} danno {C:attention}#1#{} livello extra",
                    "{C:planet}Celestial Packs{} contiene tutte le carte {C:planet}Pianeta{}",
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "{C:attention}Type Changer Pokemon{}",
                  "Le {C:attention}Figure{} giocate danno {C:mult}+#1#{} Mult quando assegnano punti",
                  "{br:2}text needs to be here to work",
                  "Riattiva tutte le {C:attention}face{} giocate se",
                  "questo Jolly non è {X:grass,C:white}Erba{} o",
                  "Se hai un jolly {X:water,C:white}Acqua{} Joker"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Carte giocate con valore {C:attention}Dispari{}",
                    "danno {C:mult}+#1#{} mult o diventano",
                    "carte {C:attention}Multiuso{} quando assegnano punti",
                    "Se già {C:attention}Multiuso{}, aggiunge effetto {C:dark_edition}Foil{},",
                    "{C:dark_edition}Olografico{} o {C:dark_edition}Policromo{} "
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Carte giocate con seme {V:1}#2#{} danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "Quelle carte ritriggerano in base a",
                    "quanti Jolly {X:water,C:white}Acqua{} hai",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Ritrigger(s) divisi equamente tra le carte di punteggio){}",
                    "Il seme cambia in ordine {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_hoppip = {
                name = 'Hoppip',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Le prime due {C:attention}carte scartate {} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}si autodistrugge{} durante lo scarto",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Le prime 3{C:attention}carte scartate{} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}si autodistrugge{} durante lo scarto",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Tutte le {C:attention}carte scarta{} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}si autodistrugge{} durante lo scarto",
                }
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "Ritriggera ogni carta {C:attention}#3#{} giocata quando assegna punti",
                    "Ogni carta giocata con seme {V:1}#4#{}",
                    "dà {X:red,C:white}X#2#{} mult quando assegna punti",
                    "Il {C:attention}valore{} e il {C:attention}seme{} richiesti sono",
                    "{C:attention}randomizzati{} ad ogni {C:green}Reroll{}"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Diminuisce il livello della mano {C:attention}#1#{} giocata",
                    "Ogni {C:attention}#2#{} diminuzioni, crea",
                    "un {C:attention}Patto Orbitale{} o {C:dark_edition}Patto Negativo{}",
                    "La mano richiesta {C:attention}cambia{} ad ogni {C:green}Reroll{}",
                    "{C:inactive}(Attualmente {C:attention}#3#{}{C:inactive}/#2# diminuzioni)"
                } 
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Le carte {C:attention}Re{} giocate danno {X:red,C:white}X#1#{} mult",
                    "quando assegnano punti, aumenta di {X:red,C:white}X#2#{} mult",
                    "per ogni mano giocata oltre la prima",
                    "Resetta alla fine del round",      
                }
            },
            j_poke_dunsparce = {
                name = 'Dunsparce',
                text = {
                  "{C:inactive}Non fa nulla...?",
                  "{S:1.1,C:red,E:2}si aut+{} durante il {C:green}Reroll{}",
                  "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "La carta di punteggio più a sinistra della",
                    "tua {C:attention}prima mano{} del round",
                    "diventa una carta {C:attention}Acciaio{}",
                    "Carte {C:attention}Pietra{} {C:attention}tenute{} in",
                    "mano diventano {C:attention}Acciaio{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Quando selezioni un Buio, distruggi il Jolly",
                    "a destra e ottieni {C:mult}+#4#{} Mult",
                    "Ottieni effetto {C:attention}Foil{}, {C:attention}Olografico{}, o {C:attention}Policromo{}",
                    "se era {C:red}Raro{} o superiore",
                    "Gli effetti si {C:attention}accumulano{} su questo jolly",
                    "{C:inactive,s:0.8}(Matches destroyed Joker's edition if able){}",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "{C:mult}+#1#{} Mult per ogni carta ",
                "{C:attention}Potenziata{}nel tuo mazzo completo",
                "{br:2}text needs to be here to work",
                "Crea un Jolly {C:attention}Comune{} {X:water,C:white}Water{} se",
                "la mano giocata contiene {C:attention}5 carte potenziate{}",
                "{C:inactive,s:0.8}(Must have room)",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "Alla fine del round",
                  "ricevi un {S:1.1,C:green,E:2}Regalo{}",
                  "{C:inactive}(Devi avere spazio)"
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Guadagna {C:fiche}+#2#{} fiche quando una",
                  "carta {C:attention}Oro{} è tenuta in mano",
                  "o quando una carta {C:attention}Oro{} giocata assegna punti",
                  "{C:inactive}(Attualmente{C:fiche}+#1#{C:inactive} fiche)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "quando un {C:attention}6{} assegna punti",
                    "Guadagna {X:red,C:white}X#4#{} mult {C:attention}invece{} se un",
                    "{C:attention}Re{} è tenuto in mano",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} mult, {X:red,C:white}X#3#{} mult{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Limite di Energia",
                    "Crea una carta {C:pink}Energia{}",
                    "dello stesso {C:pink}Tipo{} del",
                    "Jolly più a sinistra quando un",
                    "{C:attention}Booster Pack{} è aperto",
                    "{C:inactive}(Si evolve con una{} {C:attention}Disco Dubbio{}{C:inactive} carta)"
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                  "Se la mano giocata contiene una {C:attention}Coppia{}",
                  "dà {C:fiche}+#1#{} fiche moltiplicate per le",
                  "fiche base della prima carta che assegna punti",
                  "fiche {C:attention}raddoppiate{} nella {C:attention}mano finale{} del round",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Se la {C:attention}prima mano o scarto{} del round",
                    "è di esattamente {C:attention}5{} carte, una di esse",
                    "è selezionata casualmente per essere",
                    "copiata se giocata o distrutta se scartata",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} mult",
                    "Quando un Buio è selezionato",
                    "guadagna {X:red,C:white} X#3# {} mult se",
                    "la dimensione del mazzo è esattamente {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea un {C:attention}Patto Standard{}",
                    "quando questo Jolly evolve",
                    "{C:inactive}(Sì, questo {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} turni)"
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea un {C:attention}Patto Coupon{}",
                    "quando questo Jolly evolve",
                    "{C:inactive}(Sì, questo {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "{C:red}+#2#{} scarti",
                    "{C:inactive}(Sì, questo {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Le prima {C:attention}#1#{} volta che una",
                    "carta {C:attention}Fortunata{} si attiva ogni round,",
                    "aggiungi una copia permanente con effetto{C:dark_edition}Policromo{} al tuo",
                    "mazzo e pescala in {C:attention}Mano",
                    "{C:inactive}(Attualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                }
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} Ante per ogni {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}Blinds{} saltato",
                    "{C:inactive}(Il numero di bui saltati richiesti aumenta sempre)"
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} carte della mano, {C:attention}Natura{}",
                    "Le carte {C:attention}#6#s, #7#s o #8#s{} giocate hanno",
                    "una {C:green}#4# in #5#{} possibilità di guadagnare {C:money}$#1#{} quando assegnano punti",
                    "Garantito se hai altre carte {X:grass,C:white}Erba{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Si evolve dopo aver guadagnato {C:money}$#2#/16{})"
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} carte della mano, {C:attention}Natura{}",
                    "Le carte {C:attention}#6#s, #7#s o #8#s{} giocate hanno",
                    "una {C:green}#4# in #5#{} possibilità di guadagnare {C:money}$#1#{} quando assegnano punti",
                    "Garantito se hai altre carte {X:grass,C:white}Erba{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Si evolve dopo aver guadagnato {C:money}$#2#/32{})"
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} carte della mano, {C:attention}Natura{}",
                    "Le carte {C:attention}#5#s, #6#s o #7#s{} giocate guadagnano {C:money}$#1#{} quando assegnano punti",
                    "Guadagna {C:money}$#1#{} alla fine del round per",
                    "ogni altra carta {X:grass,C:white}Erba{} che hai",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:money}$#4#{}, Massimo di {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} scarti, {C:attention}Natura{}",
                    "{C:mult}+#1#{} mult per ogni {C:attention}#5#, #6# o #7#{} scartato questo round",
                    "Raddoppia i guadagni se hai altre carte {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}#4#{}{C:inactive} mult){}",
                    "{C:inactive}(Si evolve dopo aver segnato {C:mult}#2#/60{} {C:inactive}mult)"
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} scarti, {C:attention}Natura{}",
                    "{C:mult}+#1#{} mult per ogni {C:attention}#5#, #6# or #7#{} scartato questo round",
                    "Raddoppia i guadagni se hai altre carte {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}#4#{}{C:inactive} mult){}",
                    "{C:inactive}(Si evolve dopo aver segnato {C:mult}#2#/150{} {C:inactive}mult)"
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} scarti, {C:attention}Natura{}",
                    "Per ogni {C:attention}#6#, #7# o #8#{} scartato questo round",
                    "guadagna {C:mult}+#4#{} mult e {X:red,C:white} X#1# {} mult per",
                    "ogni carta {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{} che hai",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}+#5#{}{C:inactive} mult, {X:red,C:white} X#3# {}{C:inactive} mult){}",
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:fiche}+#3#{} mani, {C:attention}Natura{}",
                    "Le carte {C:attention}#4#s, #5#s o #6#s{} giocate danno {C:fiche}+#1#{} fiche",
                    "Raddoppia le fiche guadagnate se hai",
                    "altre carte {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Si evolve dopo aver assegnato {C:fiche}#2#/400{} {C:inactive}fiche)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:fiche}+#3#{} mani, {C:attention}Natura{}",
                    "Le carte {C:attention}#4#s, #5#s o #6#s{} giocate danno {C:fiche}+#1#{} fiche",
                    "Raddoppia le fiche guadagnate se hai",
                    "altre carte {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Si evolve dopo aver assegnato {C:fiche}#2#/960{} {C:inactive}fiche)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:fiche}+#3#{} mani, {C:attention}Natura{}",
                    "Le carte {C:attention}#6#s, #7#s o #8#s{} giocate danno {C:fiche}+#1#{} fiche",
                    "Danno ulteriori {C:fiche}+#5#{} fiche per",
                    "ogni altra carta {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:fiche}+#4#{}{C:inactive} totale)"
                } 
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "Quando un {C:attention}Buio{} viene selezionato, ottieni",
                  "{C:chips}+#1#{} Mani, {C:mult}+#2#{} Scarti, o {C:attention}+#3#{} carte della mano",
                  "{C:inactive,s:0.8}(Evolve dopo aver sconfitto il {C:attention,s:0.8}Ante #4#{C:inactive,s:0.8} Buio Boss){}"
                }
            }, 
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "Quando un {C:attention}Buio{} viene selezionato, ottieni",
                  "{C:chips}+#1#{} Mani, {C:mult}+#2#{} Scarti, o {C:attention}+#3#{} carte della mano",
                }
            }, 
            j_poke_nosepass = {
                name = 'Nosepass',      
                text = {
                    "La prima {C:attention}figura{} giocata",
                    "diventa una carta di{C:attention}Pietra{} e",
                    "{X:mult,C:white} X#1# {} Mult quando assegna punti",
                    "{C:inactive,s:0.8}(Evolves con una {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                } 
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "Crea un tarocco {C:attention}Carro{}",
                    "quando un {C:attention}Piccolo Buio{} è selezionato",
                    "Quando una carta {C:attention}Acciaio{} assegna punti,",
                    "guadagna {X:mult,C:white}X#2#{} mult poi la distrugge",
                    "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{} {C:inactive}mult)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Crea un tarocco {C:attention}Carro{} quando",
                    "un {C:attention}Small Buio{} o {C:attention}Grande Buio{} è selezionato.",
                    "Quando una carta {C:attention}Acciaio{} assegna punti,",
                    "guadagna {X:mult,C:white}X#2#{} mult poi la distrugge",
                    "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{} {C:inactive}mult)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Crea un tarocco {C:attention}Carro{}",
                    "quando un {C:attention}Buio{} è selezionato.",
                    "Quando una carta {C:attention}Acciaio{} assegna punti,",
                    "guadagna {X:mult,C:white}X#2#{} mult poi la distrugge",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#1#{}{C:inactive} mult)"
                }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} mult",
                    "Applica {C:attention}Splash{}",
                    "{C:inactive}(Si evolve con una carta{} {C:attention}Squama Bella{}{C:inactive})"
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Riattiva tutte le carte giocate se",
                  "hanno lo stesso {C:attention}seme{}",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Il debito arriva fino a{C:mult}-$#1#{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} round in debito)",
                  "{C:inactive,s:0.8}(Si evolve con una {C:attention,s:0.8}Pietralbore{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Il debito arriva fino a {C:mult}-$#1#{}",
                  "Alla fine del round, imposta i soldi a {C:money}$0"
                }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "è {C:attention}Poker{}",
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "contiene un {C:attention}Asso",
                    "{C:inactive}(Evolve a {C:chips}+#1#{C:inactive} / +64 Chips)",
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "è {C:attention}Poker{}",
                    "Ottieni{C:chips}+#2#{} fiche se la mano giocata",
                    "contiene {C:attention}2+{} {C:attention}Assi",
                    "{C:inactive}(Evolve a {C:chips}+#1#{C:inactive} / +256 Chips)",
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Fiche",
                    "{br:3}text needs to be here to work",
                    "Se la mano giocata è un {C:attention}Poker{}",
                    "ogni carta da {X:mult,C:white}X{} Mult",
                    "uguale alla {C:attention}radice cubica{} ",
                    "del valore totale di fiche delle carte",
                } 
            },
            j_poke_jirachi = {
                name = 'Jirachi',
                text = {
                    "Alla fine del negozio,",
                    "{C:dark_edition}esprimi un desiderio!",
                }
            },
            j_poke_jirachi_banker = {
                name = 'Jirachi',
                text = {
                    "{C:attention}Raddioppia{} gli interessi alla fine del round",
                }
            },
            j_poke_jirachi_booster = {
                name = 'Jirachi',
                text = {
                    "+1 {C:attention}slot Booster Pack ",
                    "{C:attention}Booster Packs{} hanno {C:attention}1{} carta in più",
                }
            },
            j_poke_jirachi_power = {
                name = 'Jirachi',
                text = {
                    "Ogni{C:attention}#2# {C:inactive}[#3#]{} mano, le carte giocate",
                    "danno {X:mult,C:white}X#1#{} Mult quando assegnano punti",
                }
            },
            j_poke_jirachi_negging = {
                name = 'Jirachi',
                text = {
                    "{C:blue}+2{} slot Jolly",
                    "Le carte {C:dark_edition}Negative{} appaiono {C:attention}2X{} più spesso",
                }
            },
            j_poke_jirachi_copy = {
                name = 'Jirachi',
                text = {
                    "Copia l'abilità del {C:attention}Jolly{} a destra",
                    "con {C:attention}#1#{} extra {C:pink}Energy",
                }
            },
            j_poke_jirachi_fixer = {
                name = 'Jirachi',
                text = {
                    "Se{C:attention}la prima mano{} contiene esattamente {C:attention}1{} carta,",
                    "aggiungi un effetto {C:dark_edition}Foil{}, {C:dark_edition}Olografico{}",
                    "o {C:dark_edition}Policromo{} alla carta",
                    "{br:3}text needs to be here to work",
                    "Se {C:attention}il primo scarto{} contiene esattamente {C:attention}1{} carta,",
                    "{C:attention}distruggila{}",
                }
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:fiche}+#1#{} fiche per",
                    "ogni carta che {C:attention}non assegna punti{}",
                    "nella mano giocata",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:fiche}+#1#{} fiche per",
                    "ogni carta che{C:attention}non assegna punti{}",
                    "nella mano giocata",
                }  
            },
            j_poke_bonsly = {
                name = "Bonsly",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#1#{} Mult",
                  "Alla fine del round, aggiungi una",
                  "{C:attention}figura potenziata{} al tuo mazzo",
                  "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Applica un sigillo {C:attention}Rosso{} o {C:attention}Blu{}",
                    "a una carta casuale nel mazzo",
                    "alla fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Crea un tarocco {C:attention}Magician{} con effetto",
                    "{C:dark_edition}Negative{} alla fine del round",
                    "{C:green}#3# in #4#{} possibilità di crearne {C:attention}2{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea una carta {C:item}Oggetto{} casuale con effetto",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive}(Sì, questo {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive}(Evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#2#{} mult",
                  "Alla fine del round, una carta",
                  "casuale nel {C:attention}mazzo{} diventa {C:attention}Oro{}.",
                  "Le carte {C:attention}Oro{} {C:attention}tenute{} in",
                  "mano danno {C:fiche}+#1#{} fiche",
                  "{C:inactive}(Si evolve dopo {C:attention}#3#{C:inactive} round)",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Le carte {C:attention}Acciaio{} giocate danno {X:red,C:white}X#1#{} mult",
                    "più {X:red,C:white}X#2#{} mult per ogni",
                    "Jolly {X:metal,C:white}Metallo{} in possesso",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{}{C:inactive} mult){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "Il primo e secondo {C:attention}Fante{} giocati",
                    "danno {X:mult,C:white} X#1# {} mult",
                    "quando assegnano punti e ogni {C:attention}Fante{} ulteriore",
                    "danno {X:mult,C:white} X#2# {} mult quando assegnano punti"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Ogni carta di {C:attention}Pietra{} giocata",
                    "guadagna permanentemente",
                    "{C:fiche}+#1#{} fiche quando assegna punti",
                    "Le carte {C:attention}Pietra{} riattivano per ogni",
                    "Jolly {X:earth,C:white}Terra{} che hai",
                    "{C:inactive}(Attualmente #2# ritrigger)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Le carte multiuso {C:attention}non possono essere{} penalizzate",
                    "{br:3}text needs to be here to work",
                    "Le carte{C:attention}multiuso{} danno",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fiche, o {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} possibilità {C:attention}tutti e 3 gli effetti{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Guadagni {C:money}$#1#{} per {C:attention}valore di vendita{}",
                    "alla fine del round quando una carta viene {C:attention}venduta{}",
                    "{br:3.5}text needs to be here to work",
                    "Da {X:mult,C:white}X#2#{} Mult per ogni $",
                    "del valore di vendita di questo Jolly",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Se il {C:attention}primo scarto{} del round ha ",
                    "{C:attention}1 sola{} carta, distruggila e ottini {C:mult}+#2#{} Mult",
                    "{br:4}text needs to be here to work",
                    "Ottieni {X:mult,C:white}X#4#{} Mult per ogni carta scartata",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "Quando una carta {C:attention}Fortunata{} si attiva",
                    "guadagna permanentemente {C:fiche}+#2#{} fiche",
                    "per ogni {C:green}Reroll{} usato nell'ultimo negozio",
                    "{C:inactive}(Attualmente {C:fiche}+#3#{}{C:inactive} fiche guadagnati)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Ogni reroll nel negozio ha una",
                    "{C:green}#1# in #2#{} possibilità di aggiungere",
                    "una copia di {C:attention}Vetro{} di una carta casuale",
                    "nel tuo mazzo al negozio",
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Limite di Energia",
                    "{X:red,C:white} X#2# {} mult per ogni carta {C:pink}Energia{}",
                    "usata in questa {C:attention}partita{}",
                    "{C:inactive}(Attualmente {X:red,C:white} X#1# {}{C:inactive} mult)"
                } 
            },
            j_poke_probopass = {
                name = 'Probopass',      
                text = {
                    "Le carta di {C:attention}Pietra{} sono considerate figure",
                    "{br:2}text needs to be here to work",
                    "Giocare carte di {C:attention}Pietra{} ",
                    "aggiunge {X:mult,C:white} X#1# {} Mult quando si assegnano i punti"
                } 
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "Il debito arriva fino a {C:mult}-$#1#{}",
                  "{br:2.5}text needs to be here to work",
                  "Crea una carta {C:item}Oggetto{} se",
                  "la mano viene giocata mentre si è in debito",
                  "{C:inactive,s:0.8}(Must have room)",
                }
            },
            j_poke_zorua = {
                name = "Zorua",
                text = {
                    "Copia l'abilità del {C:attention}Jolly{} più a destra",
                    "Illusione si rompe dopo la prima mano",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_zoroark = {
                name = "Zoroark",
                text = {
                    "Copia l'abilità del {C:attention}Jolly{} più a destra",
                }
            },
            j_poke_gothita = {
                name = "Gothita",
                text = {
                    "Tutte le carte {C:planet}Pianeta{} e i {C:planet}Celestial Pack{}",
                    "Nel negozio sono scontati di {C:money}$2{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_gothorita = {
                name = "Gothorita",
                text = {
                    "Tutte le carte {C:planet}Pianeta{} e i {C:planet}Celestial Pack{}",
                    "Nel negozio sono scontati di {C:money}$3{} ",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_gothitelle = {
                name = "Gothitelle",
                text = {
                    "Tutte le carte {C:planet}Pianeta{} e i {C:planet}Celestial Pack{}",
                    "nel negozio sono {C:attention}gratis{}",
                    "{br:2}text needs to be here to work",
                    "Ottieni {C:money}$#1#{} quando utilizzi una carta {C:planet}Pianeta{}"
                } 
            },
            j_poke_vanillite = {
                name = "Vanillite",
                text = {
                  "{C:attention}Volatile Left",
                  "{C:chips}+#1#{} Fiche",
                  "{C:chips}-#3#{} Fiche per mano giocata",
                  "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round senza essere attivata)",
                }
            },
            j_poke_vanillish = {
                name = "Vanillish",
                text = {
                  "{C:attention}Volatile Left",
                  "{C:chips}+#1#{} Fiche",
                  "{C:chips}-#3#{} Fiche per mano giocata",
                  "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round senza essere attivata)",
                }
            },
            j_poke_vanilluxe = {
                name = "Vanilluxe",
                text = {
                  "{C:chips}+#1#{} Fiche",
                  "{C:chips}-#2#{} Fiche per mano giocata",
                  "{br:2}text needs to be here to work",
                  "Quando è completamente sciolto",
                  "crea {C:attention}#3# Patto doppio{} "
                }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato, crea",
                    "una carta {C:planet}Pianeta{} {C:dark_edition}Negativa{}",
                    "di {C:attention}#1#{} delle mani di poker più altre giocate",
                    "{C:inactive,s:0.8}(Evolve se hai #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} carte pianeta diverse nei consumabili){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato, crea",
                    "una carta {C:planet}Pianeta{} {C:dark_edition}Negativa{}",
                    "di {C:attention}#1#{} delle mani di poker più altre giocate",
                    "{br:3.5}text needs to be here to work",
                    "Dopo aver aperto un {C:attention}#2# Boosters{}, crea un voucher",
                    "{C:attention}Telescopio{} o {C:attention}Osservatorio{} se possibile"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:attention}Assorbi {C:money}$#1#{} dai Jolly",
                    "adiacenti alla fine del round",
                    "{br:3.5}text needs to be here to work",
                    "Aggiungi il valore di vendita di questo Jolly al Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult){}",
                    "{C:inactive,s:0.8}(Evolve a {C:money,s:0.8}$#2#{C:inactive,s:0.8} di valore di vendita)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
                "{C:attention}Assorbe {C:money}$#1#{} da tutti",
                "i Jolly alla fine del round",
                "{br:3.5}text needs to be here to work",
                "Aggiungi il {C:attention}doppio{} del valore di vendita di questo Jolly al Mult",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                "{C:inactive,s:0.8}(Evolve con una carta {C:attention,s:0.8}Neropietra{C:inactive,s:0.8})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
                    "Ogni Jolly con {C:money}1${} di valore di vendita",
                    "da {X:mult,C:white} X#1# {} Mult e guadagni {C:money}$#2#{}",
                    "{br:3.5}text needs to be here to work",
                    "Aggiugni il {C:attention}triplo{} del valore di vendita di questo Jolly al Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult){}",
                }
            },
            j_poke_litleo = {
                name = "Litleo",
                text = {
                    "{C:chips}+#1#{} se la mano giocata contiene",
                    "una {C:attention}Scala{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "{C:chips}+#1#{} Se la mano giocata contiene una {C:attention}Scala{}",
                    "{br:2}text needs to be here to work",
                    "Crea una carta {C:pink}Energia{} se contiene",
                    "inoltre un {C:attention}Re{} o una {C:attention}Regina{}"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Crea un {C:attention}Patto{} ogni {C:attention}#3# {C:inactive}[#2#]{} {C:green}reroll{} ",
                    "Se hai{C:attention}< 2{} patti",
                    "{br:2.5}text needs to be here to work",
                    "Ogni carta con una {C:attention}edizione non base{}",
                    " {C:attention}tenuta in mano{} da {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:attention}Triplica{} se hai",
                    "un Jolly di tipo {X:lightning, C:black}Elettro{} ",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult per ogni",
                    "Jolly {X:lightning, C:black}Elettro{} in possesso",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolve tramite carta {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult per ogni",
                    "Jolly {X:lightning, C:black}Lightning{} in possesso",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:fiche}+#1#{} fiche se la mano",
                  "giocata non contiene carte {C:hearts}#2#{} che assegnano punti",
                  "Previene la Morte se le fiche assegnate sono",
                  "almeno {C:attention}50%{} delle fiche richieste",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} mult e guadagna {C:money}$#2#{}",
                    "se la mano giocata contiene",
                    "una {C:attention}Scala{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#3#{}{C:inactive} round)"
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} mult e guadagna {C:money}$#2#{}",
                    "se la mano giocata contiene",
                    "una {C:attention}Scala{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Quando venduta, aggiunge {C:money}$#1#{} di valore di vendita",
                  "a ogni Jolly e converte tutte le carte {C:attention}tenute",
                  "in mano in {C:spades}#2#{}",
                  "{C:inactive}(Si evolve quando una scala reale viene giocata){}",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:red,C:white} X#4# {} mult per ogni {C:money}${} di",
                  "valore di vendita di tutti i Jolly posseduti",
                  "Se la mano giocata è una {C:attention}Scala Reale{}",
                  "aggiunge {C:money}$#1#{} di valore di vendita a ogni Jolly",
                  "{C:inactive}(Attualmente {X:red,C:white} X#5# {C:inactive} mult){}",
                  "{C:inactive}(Si evolve a {C:money}$#2#{}{C:inactive}/#3# valore di vendita totale dei Jolly)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:red,C:white} X#2# {} mult per ogni {C:money}${} di",
                  "valore di vendita di tutti i Jolly posseduti",
                  "Se la mano giocata è una {C:attention}Scala Reale{}",
                  "e non hai {C:attention}Frecce Dreepy{}",
                  "crea {C:attention}2 Frecce Dreepy{} con {C:dark_edition}Negativo{}",
                  "{C:inactive}(Attualmente {X:red,C:white} X#3# {C:inactive} mult){}"
                }
            },
            _poke_dreepy_dart = {
                name = "Freccia Dreepy",
                text = {
                  "Quando venduta, aggiunge {C:money}$#1#{} di valore di vendita",
                  "a ogni Jolly e",
                  "converte tutte le carte {C:attention}tenute{}",
                  "in mano in {C:spades}#2#{}",
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Guadagna {C:fiche}+#2#{} fiche se la mano di punteggio contiene un {C:attention}#3#{}",
                  "Il {C:attention}valore{} richiesto aumenta con ogni guadagno",
                  "{C:inactive,s:0.8}(Se il valore è il più alto, torna al più basso)",
                  "{C:inactive}(Attualmente {C:fiche}+#1#{C:inactive} fiche)",
                  "{C:inactive}(Si evolve quando hai un Jolly {X:fire,C:white}Fuoco{}{C:inactive})",
                }
            },      
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Gains {C:chips}+#2#{} Chips if scoring hand contains a {C:attention}#3#{}",
                  "Required {C:attention}rank{} rises with each trigger",
                  "{br:4}text needs to be here to work",
                  "Increase Chip gain by {C:chips}+2{} for each",
                  "{X:fire,C:white}Fire{} Joker you have",
                  "{C:inactive,s:0.8}(If rank is highest, it becomes lowest)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Carte giocate danno {C:mult}+#1#{} mult.",
                  "Quando un Buio è selezionato ",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono carte {C:attention}Acciaio{}",
                  "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Carte giocate danno {C:mult}+#1#{} mult.",
                  "Quando un Buio è selezionato ",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono carte {C:attention}Acciaio{}",
                  "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Carte giocate danno {C:mult}+#1#{} mult.",
                  "Quando un Buio è selezionato ",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono {c:attention}Acciaio{} carte.",
                  "Le carte {C:attention}Acciaio{} giocate",
                  "si comportano come carte di {C:attention}Vetro{}"
                }
            },
            j_poke_wiglett = {
                name = "Wiglett",
                text = {
                    "{C:mult}+#3#{} Mult se la mano giocata",
                    "contiene un {C:attention}Tris{}",
                    "{br:2}text needs to be here to work",
                    "{C:chips}+#2#{} Fiche se la mano giocata",
                    "contiene un {C:attention}5{}, un {C:attention}6{}, o un {C:attention}7{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_wugtrio = {
                name = "Wugtrio",
                text = {
                    "{X:red,C:white} X#1# {} Mult se la mano giocata",
                    "contiene un{C:attention}Tris{}",
                    "{br:2}text needs to be here to work",
                    "{C:chips}+#2#{} Fiche se la mano giocata",
                    "contine un {C:attention}5{}, un {C:attention}6{}, o un{C:attention}7{}",
                } 
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Ogni {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, o {C:attention}7{} da",
                    "{C:mult}+#1#{} Mult e {C:chips}+#2#{} per ogni mano giocata questo round",
                    "quando assegna punti",
                    "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Fiche)",
                } 
            },
            j_poke_dudunsparce = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}+#1#{} slot carte nel negozio",
                  "{C:attention}+#1#{} Slot Booster Pack nel negozio",
                  "{C:attention}+#1#{} Slot Voucher nel negozio",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}Ottieni Patto doppio{}",
                  "{C:attention}+#1#{} slot carte nel negozio",
                  "{C:attention}+#1#{} Slot Booster Pack nel negozio",
                  "{C:attention}+#1#{} Slot Voucher nel negozio",
                }
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Scrigno)",
                text = {
                  "Le carte {C:attention}Oro{} giocate",
                  "danno {C:money}$#1#{} quando assegnano punti",
                  "Salta un {C:attention}Booster Pack{} per...?",
                  "{C:inactive}(Si evolve quando {C:money}$#2#{C:inactive}/$#3# totale viene guadagnato o speso){}"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Errante)",
                text = {
                    "Guadagna alcuni {C:money}${}",
                    "{S:1.1,C:red,E:2}autodistruzione{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                    "Carte {C:attention}Oro{} giocate {C:red}spendono{} {C:money}$#2#{}",
                    "quando assegnano punti e aumentano il moltiplicatore",
                  "this Joker's {X:red,C:white}X{} Mult by {X:red,C:white}X#3#",
                  "{br:3}text needs to be here to work",
                  "Questo jolly non può essere penalizzato",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Si resett alla fine del round)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Crea consumabili",
                    "quando ne ottieni?",
                    "Crea {C:attention}#1#{}? {C:attention}Patto{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult per ogni jolly",
                    "che ha un {C:pink}Tipo{}",
                    "{br:3}text needs to be here to work",
                    "Possono apparire{C:attention}Pokemon{}", 
                    "della stessa linea evolutiva",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Pietrastante',
                text = {
                    "I Pokemon {C:attention}non possono {}evolversi",
                    "{br:3.5}text needs to be here to work",
                    "I Pokemon {C:attention}Base{} e {C:attention}Baby{} danno {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_tall_grass = {
                name = 'Erba alta',
                text = {
                    "{C:green}#1# in #2#{} possibilità di creare",
                    "{C:attention}Jolly{}Pokemon {C:chips}Comuni{} ",
                    "quando giochi una mano",
                    "Assegna {C:attention}sempre{} punti se ",
                    "la mano contiene una carta {C:attention}Multiuso{}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Onigiri",
                text = {
                  "Quando selezioni un Buio",
                  "crea una {C:pink}Energia{} {C:colorless}Incolore ",
                  "{C:inactive}({C:attention}#1#{C:inactive} round rimanenti){}"
                }
            },
            j_poke_rival = {
                name = "Il Rivale",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Se il punteggio {C:attention}>#3#X{} delle fiche richieste dal Buio",
                    "{S:1.1,C:red,E:2}Si autodistrugge} e ottieni {C:money}$#2#",
                }
            },
            j_poke_bitter_rival = {
                name = "Acerrimo rivale",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Se il punteggio{C:attention}>#3#X{} delle fiche richieste dal Buio",
                    "{S:1.1,C:red,E:2}Si autodistrugge{} e ottieni{C:money}$#2#",
                }
            },
            j_poke_champion = {
                name = "Il Campione",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Se il punteggio {C:attention}>#3#X{} delle fiche richieste dal Buio",
                    "{S:1.1,C:red,E:2}Si autodistrugge{} e ottieni{C:money}$#2#",
                }
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Mazzo Allenatore",
                text = {
                    "Inizia la partita con il",
                    "{C:tarot,T:v_poke_goodrod}#1#{} buono",
                    "e una carta {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Mazzo Necrologio",
                text = {
                    "Tutte le carte hanno un'edizione {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Mazzo Luminoso",
                text = {
                    "Tutti i Jolly sono creati",
                    "con adesivi {C:pink}Tipo{} casuali",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Mazzo Telecinetico",
                text = {
                    "Inizia la partita con il",
                    "{C:tarot,T:v_crystal_ball}#1#{} buono",
                    "e {C:attention}2{} copie",
                    "di {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultraball",
                text = {
                    "Crea un Jolly {C:attention}Stage 2{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_masterball = {
                name = "Masterball",
                text = {
                    "Crea un Jolly {C:attention}Leggendario{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_transformation = {
                name = "Trasformazione",
                text = {
                    "Evolve il Pokémon più a sinistra o selezionato al",
                    "massimo {C:attention}stage{}",
                    "e dà {}+1{} {C:pink}Energia{}", 
                },
            },
            c_poke_megastone = {
                name = "Mega Pietra",
                text = {
                    "{C:attention}Riutilizzabile{}",
                    "{C:attention}Mega Evolve{} un Pokémon", 
                    "o {C:attention}Devolve{} un Mega Pokémon",
                    "se {C:attention}venduto{} ",
                    "{C:inactive}(Usabile una volta per round)",
                },
            },
            
            c_poke_obituary = {
                name = "Necrologio",
                text = {
                    "Aggiunge un sigillo {C:pink}Rosa{}",
                    "a {C:attention}1{} carta selezionata",
                }
            },
            c_poke_nightmare = {
                name = "Incubo",
                text = {
                    "Distrugge il Jolly selezionato con",
                    "un {C:pink}tipo{} e crea {C:attention}2{}",
                    "{C:pink}Energia{} di quel Jolly", 
                    "{C:pink}tipo{} con {C:dark_edition}Negativo{}"
                },
            },
            c_poke_revenant = {
                name = "Revenant",
                text = {
                    "Aggiunge un sigillo {C:item}Argento{}",
                    "a {C:attention}1{} carta selezionata",
                }
            },
            c_poke_fake_banker = {
                name = 'Desiderio dei soldi',
                text = {
                    "{C:dark_edition}Desidera dei soldi!",
                }
            },
            c_poke_fake_booster = {
                name = 'Booster Wish',
                text = {
                    "{C:dark_edition}Wish for Options!",
                }
            },
            c_poke_fake_power = {
                name = 'Desiderio di Potere',
                text = {
                    "{C:dark_edition}Desidera Potere!",
                }
            },
            c_poke_fake_negging = {
                name = 'Desiderio negativo',
                text = {
                    "{C:dark_edition}Desidera degli amici!",
                }
            },
            c_poke_fake_copy = {
                name = 'Desiderio di copia',
                text = {
                    "{C:dark_edition}Desidera altruismo!",
                }
            },
            c_poke_fake_fixer = {
                name = 'Desiderio Purificativo',
                text = {
                    "{C:dark_edition}Desidera un mazzo migliore!",
                }
            },
            c_poke_fake_masterball = {
                name = 'Desiderio di evocazione',
                text = {
                    "{C:dark_edition}Desidera di evocare un Pokermon Leggendario!",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Patto Pocket",
                text = {
                    "Ottieni un {C:pink}Mega Pocket Pack",
                    "{C:green}25%{} possibilità che contenga",
                    "una {C:attention}Mega Pietra{} o {C:attention}Ante 5+{}"
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Patto Shiny",
                text = {
                    "Il prossimo jolly base",
                    "nek negozio è gratuito",
                    "e diventa {C:colorless}Shiny{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Patto Stage 1",
                text = {
                    "Il negozio ha un Jolly",
                    "{C:attention}Stage 1{} gratuito",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Patto Safari",
                text = {
                    "Il negozio ha un Jolly",
                    "{C:safari}Safari{} gratuito",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Crea un Jolly {C:attention}Base{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Crea un Jolly {C:attention}Stage 1{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Ricerca di Energia",
                text = {
                    "{C:pink}+2{} Limite di Energia"
                },
            },
            v_poke_energyresearch = {
                name = "Ricerca di Energia Avanzata",
                text = {
                    "{C:pink}+3{} Limite di Energia"
                },
            },
            v_poke_goodrod = {
                name = "Amo Buono",
                text = {
                    "I {C:attention}Booster{} pack hanno",
                    "{C:attention}1{} carta in più",
                },
            },
            v_poke_superrod = {
                name = "Super Amo",
                text = {
                    "Puoi {C:pink}Salvare{} carte",
                    "da tutti i pacchetti {C:attention}consumabili{}",
                },
            },
        },
        Other = {

            Grass = {
                name = "Tipo",
                text = {
                  "{X:grass,C:white}Erba{}",
                }
            },
            Fire = {
                name = "Tipo",
                text = {
                  "{X:fire,C:white}Fuoco{}",
                }
            },
            Water = {
                name = "Tipo",
                text = {
                  "{X:water,C:white}Acqua{}",
                }
            },
            Lightning = {
                name = "Tipo",
                text = {
                  "{X:lightning,C:black}Elettro{}",
                }
            },
            Psychic = {
                name = "Tipo",
                text = {
                  "{X:psychic,C:white}Psico{}",
                }
            },
            Fighting = {
                name = "Tipo",
                text = {
                  "{X:fighting,C:white}Lotta{}",
                }
            },
            Colorless = {
                name = "Tipo",
                text = {
                  "{X:colorless,C:white}Incolore{}",
                }
            },
            Dark = {
                name = "Tipo",
                text = {
                  "{X:dark,C:white}Oscurità{}",
                }
            },
            Metal = {
                name = "Tipo",
                text = {
                  "{X:metal,C:white}Acciaio{}",
                }
            },
            Fairy = {
                name = "Tipo",
                text = {
                  "{X:fairy,C:white}Folletto{}",
                }
            },
            Dragon = {
                name = "Tipo",
                text = {
                  "{X:dragon,C:white}Drago{}",
                }
            },
            Earth = {
                name = "Tipo",
                text = {
                  "{X:earth,C:white}Terra{}",
                }
            },
            --Have you Heard? Bird is the wordddd
            Bird = {
                name = "Type",
                text = {
                  "{X:bird,C:white}Uccello{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Antico",
                text = {
                    "Effetto basato sul",
                    "numero di {C:attention}#1#s{}",
                    "nella mano di poker",
                    "{C:inactive}(Gli effetti sono {C:attention}cumulativi{}{C:inactive})"
                }
            },
            eitem = {
                name = "Carta Evoluzione",
                text = {
                    "Quando consumata, evolve il Jolly",
                    "più a sinistra o selezionato {C:attention}idoneo{}",
                    "alla fine del round successivo",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Carta Tenuta",
                text = {
                    "Usata da {C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "Cambiatore di Tipo",
                text = {
                    "Applica un adesivo {V:1}#1#{}",
                    "al Jolly più a sinistra o selezionato"
                }
            },
            basic = {
                name = "Base",
                text = {
                    "Un Jolly Pokémon",
                    "che non ha {C:attention}Evoluto{}"
                }
            },
            stage1 = {
                name = "Stage 1",
                text = {
                    "Un Jolly Pokémon",
                    "che ha {C:attention}Evoluto{} una volta"
                }
            },
            stage2 = {
                name = "Stage 2",
                text = {
                    "Un Jolly Pokémon",
                    "che ha {C:attention}Evoluto{} due volte"
                }
            },
            energy = {
                name = "Energia Usata",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Possibilità di Denaro",
                text = {
                    "{C:attention}#1#%{} possibilità di",
                    "guadagnare un ulteriore {C:money}$1{}"
                }
            },
            mult_progress = {
                name = "Progresso mult",
                text = {
                    "{C:attention}#1#%{} progresso",
                    "verso il guadagno di {C:mult}mult{}",
                    "aumentando di {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Progresso fiche",
                text = {
                    "{C:attention}#1#%{} progresso",
                    "verso il guadagno di {C:fiche}fiche{}",
                    "aumentando di {C:fiche}+1{}"
                }
            },
            money_progress = {
                name = "Progresso Denaro",
                text = {
                    "{C:attention}#1#%{} progresso",
                    "verso il guadagno di {C:money}${}",
                    "aumentando di {C:money}1${}"
                }
            },
            availability = {
                name = "Disponibilità",
                text = {
                    "Non disponibile se",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Baby",
                text = {
                    "Quando una mano è giocata",
                    "se ci sono Jolly {C:attention}non-Baby{}",
                    "a destra di questo Jolly, {C:attention}debuffa{} questo Jolly"
                }
            },
            nature = {
                name = "Natura",
                text = {
                    "I {C:attention}#1#{} desiderati",
                    "sono impostati casualmente alla",
                    "creazione del Jolly"
                }
            },
            mega_rule = {
                name = "Limitazione",
                text = {
                    "Una {C:attention}Mega Pietra{} può",
                    "{C:attention}Mega Evolvere{}",
                    "un solo{C:attention}Jolly{} in tuo possesso"
                }
            },
            mega_poke = {
                name = "Mega Evoluzione",
                text = {
                    "Può {C:attention}Mega Evolvere{}",
                    "con una {C:attention}Mega Pietra{}"
                }
            },
            mega_used_on = {
                name = "Usato su",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "XY Mega",
                text = {
                  "{C:attention}Mega Evolve{} in base alla posizione",
                  "Più a sinistra - {C:attention}#1#{}",
                  "Più a destra - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "Requisito",
                text = {
                    "Deve essere usato su",
                    "una {C:attention}carta da gioco{} per",
                    "poter evolvere"
                }
            },
            deli_gift = {
                name = "Regali",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}Oggetto{} {C:attention}Carta",
                    "{C:green}20%{} - {C:attention}Tag Coupon",
                    "{C:green}15%{} - {C:dark_edition}Policromo{} {C:attention}Carta Regalo",
                }
            },

            percent_chance = {
                name = "Percent Chance",
                text = {
                  "{C:green}#1#%{} possibilità",
                  "che {C:attention}l'effetto{} si verifici",
                  "{C:inactive}(Le probabilità non possono essere aumentate){}"
                }
            },
            holding = {
                name = "Possesso",
                text = {
                  "Ottieni un Jolly e",
                  "una carta {C:attention}#1#{}",
                  "{C:inactive}(Devi avere spazio){}"
                }
            },
            eeveelution = {
                name = "Eevoluzioni",
                text = {
                    "{C:attention}Pietraidrica{} - {X:water,C:white}Vaporeon{}",
                    "{C:attention}Pietratuono{} - {X:lightning,C:black}Jolteon{}",
                    "{C:attention}Pietrafocaia{} - {X:fire,C:white}Flareon{}",
                    "{C:attention}Pietrasolare{} - {X:psychic,C:white}Espeon{}",
                    "{C:attention}Pietralunare{} - {X:dark,C:white}Umbreon{}",
                    "{C:attention}Pietrafoglia{} - {X:grass,C:white}Leafeon{}",
                    "{C:attention}Pietragelo{} - {X:water,C:white}Glaceon{}",
                    "{C:attention}Pietralbore{} - {X:fairy,C:white}Sylveon{}"
                }
            },
            poke_drain = {
                name = "Assorbimento",
                text = {
                    "Rimuovi il valore di vendita da",
                    "un Jolly e aggiungilo a sé stesso",
                    "se il Jolly ha un valore di vendita maggiore di",
                    "{C:money}$1{}"
                }
            },
            poke_drain_item = {
                name = "Assorbimento",
                text = {
                    "Rimuovi il valore di vendita da",
                    "un Jolly se il Jolly ha",
                    "un valore di vendita maggiore di {C:money}$1{}",
                }
            },
            poke_volatile_left = {
              name = "Volatile Sinistra",
              text = {
                "Questo jolly si attiva quando è",
                "nella positizione {C:attention}più a sinistra{}",
                "{C:inactive}(Ignora Pokemon{C:attention}Volatile{C:inactive})"
              }
            },
            poke_volatile_right = {
              name = "Volatile Destra",
              text = {
                "Questo jolly si attiva quando è",
                "nella positizione {C:attention}più a destra{}",
                "{C:inactive}(Ignora Pokemon{C:attention}Volatile{C:inactive})"
              }
            },
            precise_energy_tooltip = {
                name = "Scala Energia Precisa",
                text = {
                    "{s:0.8}Usa {C:attention,s:0.8}decimali{} per tutti i valori quando applichi il bonus {C:pink,s:0.8}Energia{}{s:0.8}",
                    "{s:0.8}Con questa opzione {C:attention,s:0.8}disattivata{}{s:0.8} si verificherà quanto segue per il bonus:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - Usa Decimali",
                    "{C:attenion}2. {s:0.8}Flat {C:mult,s:0.8}Mult{}{s:0.8} e {C:chips,s:0.8}Chip{}{s:0.8} - Arrotonda al numero intero più vicino",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Guadagno Mult{}{s:0.8} e {C:chips,s:0.8}Guadagno Chip{}{s:0.8} - La componente decimale viene visualizzata", 
                    "{s:0.8}come percentuale, usata per applicare il bonus al {C:mult,s:0.8}Mult{}{s:0.8} e {C:chips,s:0.8}Chip{} di base",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - La componente decimale viene visualizzata come percentuale,",
                    "{s:0.8}usata come possibilità di guadagnare un extra {C:money,s:0.8}${}{s:0.8}",
                    "{C:inactive,s:0.8}(I Jolly non Pokémon useranno sempre la scala precisa){}"
                }
            },
            discovery_tooltip = {
                name = "Scoperta",
                text = {
                    "Gli oggetti della mod Pokermon non sono scoperti",
                    "di default. Disattivando questa opzione",
                    "scoprirai tutti gli oggetti del mod",
                    "{C:red}Scoprire tutti gli oggetti non può essere annullato{}"
                }
            }, 
            designed_by = {
                name = "Progettato Da",
                text = {
                    "{C:dark_edition}#1#{}"
                }
            },
            endless = {
                name = "Riutilizzabile",
                text = {
                    "Non viene consumato quando usato",
                    "{C:inactive,s:0.8}(Escluso da {C:attention,s:0.8}Cucchiaio Torto{C:inactive,s:0.8})"
                }
            },
            sylveon_tag_pool = {
              name = "Pool di Patti",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "Pool di Patti",
              text = {
                "{C:money}#1#",
                "{C:money}#2#",
                "{C:money}#3#",
                "{C:money}#4#",
                "{C:money}#5#",
              }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Può essere ottenuto solo",
                    "attraverso {C:attention}Evoluzione{}",
                    "o determinati {C:attention}Oggetti Pokéball{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Sigillo Rosa",
                text = {
                    "Crea una carta {C:pink}Energia{}",
                    "corrispondente al {C:attention}tipo{} di un Jolly posseduto",
                    "se segna nella",
                    "{C:attention}prima mano{} del round",
                    "{C:inactive}(Devi avere spazio){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Sigillo argento",
                text = {
                  "Crea una carta {C:item}Oggetto{}",
                  "e viene {C:attention}scartata{} se {C:attention}tenuta{}",
                  "mentre i punti vengono assegnati"
                }
            },

             grass_sticker = {
                name = "Tipo",
                text = {
                    "{X:grass,C:white}Erba{}"
                } 
            },
            fire_sticker = {
                name = "Tipo",
                text = {
                    "{X:fire,C:white}Fuoco{}"
                } 
            },
            water_sticker = {
                name = "Tipo",
                text = {
                    "{X:water,C:white}Acqua{}"
                } 
            },
            lightning_sticker = {
                name = "Tipo",
                text = {
                    "{X:lightning,C:white}Elettro{}"
                } 
            },
            psychic_sticker = {
                name = "Tipo",
                text = {
                    "{X:psychic,C:white}Psico{}"
                } 
            },
            fighting_sticker = {
                name = "Tipo",
                text = {
                    "{X:fighting,C:white}Lotta{}"
                } 
            },
            colorless_sticker = {
                name = "Tipo",
                text = {
                    "{X:colorless,C:white}Incolore{}"
                } 
            },
            dark_sticker = {
                name = "Tipo",
                text = {
                    "{X:dark,C:white}Oscurità{}"
                } 
            },
            metal_sticker = {
                name = "Tipo",
                text = {
                    "{X:metal,C:white}Acciaio{}"
                } 
            },
            fairy_sticker = {
                name = "Tipo",
                text = {
                    "{X:fairy,C:white}Folletto{}"
                } 
            },
            dragon_sticker = {
                name = "Tipo",
                text = {
                    "{X:dragon,C:white}Drago{}"
                } 
            },
            earth_sticker = {
                name = "Tipo",
                text = {
                    "{X:earth,C:white}Terra{}"
                } 
            },
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "Non Scoperto",
                text = {
                    "Acquista o usa",
                    "questa carta in una",
                    "partita senza seed per",
                    "scoprire cosa fa"
                }
            },
            undiscovered_item = {
                name = "Non Scoperto",
                text = {
                    "Acquista o usa",
                    "questa carta in una",
                    "partita senza seed per",
                    "scoprire cosa fa"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Pacchetto Tascabile",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Pacchetto Tascabile",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Pacchetto Tascabile Jumbo",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Pacchetto Tascabile Mega",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Pacchetto Tascabile",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Pacchetto Tascabile",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Pacchetto Tascabile Jumbo",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Pacchetto Tascabile Mega",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            p_poke_pokepack_wish_pack = {
                name = "Pacchetto Desiderio",
                text = {
                    "{C:dark_edition}Esprimi un desiderio!{}",
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
            c_poke_poke_master = "Maestro Pokémon",
            c_poke_nuzlocke = "Nuzlocke",
        },
        dictionary = {
            k_energy = "Energia",
            k_item = "Oggetto",
            k_poke_pocket_pack = "Pacchetto Pocket",
            k_poke_wish_pack = "Pacchetto Desiderio",

            k_poke_safari = "Safari",
            k_poke_mega = "Mega",

            b_save = "SALVA",
            b_energy_cards = "Carte Energia",
            b_item_cards = "Carte Oggetto",
            
            --Mod Menu stuff
            poke_settings_header_required = "Riavvio Richiesto:",
            poke_settings_header_norequired = "Nessun Riavvio Richiesto:",
            poke_settings_pokemon_only = "Solo Pokémon?",
            poke_settings_unlimited_energy = "Energia Illimitata?",
            poke_settings_shiny_playing_cards = "Carte da gioco Shiny?",
            poke_settings_jokers_only = "Solo Jolly?",
            poke_settings_no_evolutions = "Nessuna Evoluzione?",
            poke_settings_pokeballs = "Pokéball?",
            poke_settings_pokedex_number = "Numeri Pokédex?",
            poke_settings_pokemon_splash = "Carta Splash Pokémon?",
            poke_settings_pokemon_gen_one = "Solo Prima Generazione?",
            poke_settings_pokemon_precise_energy = "Usa Scala Energia Precisa?",
            poke_settings_pokemon_discovery = "! Scoperta?",
            poke_settings_pokemon_altart = "Alt Art?",
            poke_credits_actualcredits = "Crediti",
            poke_credits_thanks = "Grazie a",
            poke_credits_lead = "Lead Developer: ",
            poke_credits_graphics = "Graphic Design: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "Developers: ",
            poke_credits_designer = "Design Assistants: ",
            poke_credits_community_manager = "Community Managers: ",
            poke_credits_promotion_producer = "Promotion Producer: ",
            poke_credits_localization = "Localizzazione: ",
            poke_credits_sound = "Audio Engineer: ",

            poke_plus_pokeitem = "+1 Oggetto",
            poke_plus_energy = "+1 Energia",
            poke_plus_shop = "+1 Carta Negozio",
            poke_destroyed_ex = "Distrutto!",
            poke_evolve_success = "Evoluto!",
            poke_evolve_level = "Livello aumentato!",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Metallo!",
            poke_dragon_ex = "Drago!",
            poke_energized_ex = "Energizzato!",
            poke_unlimited_energy = "Infinito",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch'd",
            cubone_marowak_infoqueue = "Cubone e Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokéball",
            goodrod_variable = "Amo Buono",
            pinkseal_variable = "Sigillo Rosa",
            twisted_spoon_variable = "Cucchiaio Torto",

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
            --Hoppip Line
            poke_hop_ex = "Hop!",
            poke_skip_ex = "Skip!",
            poke_jump_ex = "Jump!",
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
            poke_gift_ex = "Present!",
            poke_faint_ex = "Fainted!",
            poke_reveal_ex = "Revealed!",
            poke_nido_ex = "Nido!",
            poke_disguise_intact = "Disguise Intact! Death Prevented!",
            poke_disguise_broken = "Disguise Broken! Death Not Prevented!",
            poke_dig_ex = "Dig!",
            poke_blazekick_ex = "Blaze Kick!",
            poke_darts_ex = "Darts!",
            poke_none = "None",
            poke_dawn_info1 = "(Next hand played sets hand type)",
            poke_dawn_info2 = "(Hand type set!)",
            poke_make_it_rain = "Make it Rain!",
            poke_val_down = "Value Down!",
            poke_powder_ex = "Powder Snow!",
            poke_future_sight = "Future Sight!",
            poke_smell_ya = "Smell Ya Later!",
            poke_wowthree = "Wow! Three!",
            poke_illusion = "...?",
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Sigillo Rosa",
            poke_silver_seal = "Sigillo argento",

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
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Slot Jolly quando il Buio Boss viene sconfitto {C:inactive}(fino a 5)"},
           ch_c_poke_nuzlocke = {"Il primo negozio di ogni Anta contiene sempre un {C:attention}Pacchetto Buffone"}
        },
    }
}
