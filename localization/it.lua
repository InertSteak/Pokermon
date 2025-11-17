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
                    "buono {C:tarot,T:v_poke_goodrod}#1#{} ",
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
            b_poke_revenantdeck = {
                name = "Mazzo Spettro",
                text = {
                    "Ogni carta ha una {C:dark_edition}#1#{}",
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
            b_poke_ampeddeck = {
                name = "Mazzo Amplificato",
                text = {
                    "Inizia la partita con un buono",
                    "{C:tarot,T:v_poke_energysearch}#1#{}",
                    "e una copia di",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
            b_poke_futuredeck = {
                name = "Mazzo Futuro",
                text = {
                    "{C:purple}+#1# Preveggenza{}",
                } 
            },
            b_poke_stadiumdeck = {
                name = "Mazzo Stadio",
                text = {
                    "Inizia la partita con",
                    "delle carte extra {C:attention}Bonus, Mult,",
                    "{C:attention}Multiuso, di Vetro, d'Acciaio, di Pietra,",
                    "{C:attention}Dorate{}, e {C:attention}Fortunate{}"
                } 
            },
            b_poke_megadeck = {
                name = "Mazzo Mega",
                text = {
                    "Inizia la partita con un buono",
                    "{C:tarot,T:v_reroll_surplus}#2#{} e {C:tarot,T:v_reroll_glut}#3#{}",
                    "e una carta {C:spectral,T:c_poke_megastone}#1#{}",
                    "{C:red}-#4#{} slot nel negozio"
                } 
            },
            b_poke_vendingdeck = {
                name = "Mazzo Distributore",
                text = {
                    "Dopo aver sconfitto un",
                    "{C:attention}Buio Boss pari{},ottieni dei",
                    "{C:attention,T:tag_vremade_double}#1#",
                } 
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Camera Chartreuse",
                text = {
                    "Ogni mano Pokèmon di Tipo casuale",
                    "vengono indeboliti",
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
                name = "Megaball",
                text = {
                    "Crea un Jolly {C:attention}Stage 1{} casuale",
                    "{C:inactive}(Devi avere spazio)"
                },
            },
            c_poke_moonstone = {
                name = "Pietralunare",
                text = {
                    "{C:green}#2# probabilità su #3#{} di",
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
                    "{C:attention}cambia{} il loro valore",
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
                    "{C:inactive}(Massimo di {C:chips}+#2#{C:inactive} fiche)",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_thunderstone = {
                name = "Pietratuono",
                text = {
                    "Aggiunge {C:attention}1{} carta {C:attention}dorata{}",
                    "al mazzo e {C:attention}1{} in mano con lo stesso valore di",
                    "{C:attention}1{} carta selezionata",
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
                    "{C:green}#1# probabilità su  #2#{}",
                    "per ogni carta in mano di",
                    "diventare una {C:attention}Carta Fortunata{}",
                    "{C:attention}Carta Evoluzione{}",
                },
            },
            c_poke_linkcable = {
                name = "Cavo di Collegamento",
                text = {
                    "Seleziona {C:attention}#1#{} carte,",
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
                    "{C:green}#1# possibilità su #2#{} di aggiungere un'edizione",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Olografico{}, o",
                    "{C:dark_edition}Policroma{} su di se",
                    "Rimuove l'{C:attention}Edizione{} alla fine del round",
                    "{C:inactive}(Usabile una volta per round)",
                }
            },
            c_poke_thickclub = {
                name = "Ossospesso",
                text = {
                    "{C:attention}Riutilizzabile{}",
                    "Aggiunge permanentemente {C:chips}+#2#{} fiche",
                    "a {C:attention}#1#{} carta selezionata",
                    "{C:inactive}(Usabile una volta per round)",
                }
            },
            c_poke_teraorb = {
                name = "Tera Sfera",
                text = {
                    "Dà {C:attention}+1{} {C:pink}Energia{}",
                    "al Jolly selezionato o più a sinistra{}",
                    "{C:attention}Cambiatore di Tipo{}"
                },
            },
            c_poke_metalcoat = {
                name = "Metalcoperta",
                text = {
                    "Crea una copia {C:attention}Carta d'Acciaio{} di",
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
                    "Dà a {C:attention}#1#{} carte selezionate",
                    "un {C:attention}Potenziamento{} casuale",
                    "{C:attention}Carta Evoluzione{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Dubbiodisco",
                text = {
                    "Modifica casualmente o rimuove i {C:attention}potenziamenti{}",
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
                    "{C:green}#2# possibilità su #3#{} per ogni",
                    "carta selezionata di {C:attention}sbriciolarsi{}",
                    "{C:attention}Carta Evoluzione{}",
                }
            },
            c_poke_shinystone = {
                name = "Pietrabrillo",
                text = {
                    "Aggiunge un'edizione {C:dark_edition}Foil{}, {C:dark_edition}Olografico{},",
                    "o {C:dark_edition}Polychrome{} ad una",
                    "{C:attention}1{} carta selezionata in mano",
                    "e rimuove un {C:attention}potenziamento{}",
                    "{C:attention}Evolution Card{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Cucchiaio Torto",
                text = {
                    "Crea l'ultima {C:item}Carta Oggetto{}",
                    "o {C:pink}Energia{} usata durante questa partita",
                    "esclusi {s:0.8,C:item}Cucchiaio Torto e Riutilizzabili{s:0.8}"
                }
            },
            c_poke_prismscale = {
                name = "Squama Bella",
                text = {
                    "Converte {C:attention}#2#{} carte casuali{C:attention}possedute{}",
                    "nel {C:attention}seme{} di {C:attention}#1#{} carta selezionata",
                    "{C:attention}Carta Evoluzione{}"
                }
            },
            c_poke_duskstone = {
                name = "Neropietra",
                text = {
                    "Guadagni {C:money}$#1#{} per ogni Jolly posseduto",
                    "{C:attention}Assorbe {C:money}$1{} da ogni Jolly posseduto",
                    "Nessun {C:attention}Assorbimento{} dopo {C:attention}#2#{} Round {C:inactive}(Round #3#)",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Currently {C:money}$#4#{C:inactive}/$#5# Max)"
                }
            },
            c_poke_dawnstone = {
                name = "Pietralbore",
                text = {
                    "Guadagna {C:money}${} pari a {c:attention}due volte{}",
                    "il valore {C:mult}mult{} dell'ultima mano giocata {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:attention}Carta Evoluzione{}",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive}/$40 Max)",
                }
            },
            c_poke_hardstone = {
                name = "Pietra Dura",
                text = {
                    "{C:attention}Carta Evoluzione{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Trasforma {C:attention}1{} carta selezionata in una",
                    "{C:attention}Carta di Pietra{} con {C:chips}+#2#{} fiche extra ",
                    "per ogni Jolly di tipo {X:earth,C:white}Terra{} in possesso"
                }
            },
            c_poke_berry_juice = {
                name = "Succo di Bacca",
                text = {
                    "L'effetto varia in basa al",
                    "{C:attention}Consumabile{} distrutto"
                }
            },
            c_poke_berry_juice_energy = {
                name = "Succo di Bacca Energetico",
                text = {
                    "{C:pink}Energia{} al Jolly più",
                    "a sinistra o selezionato",
                    "{C:inactive}(Massimo di {C:attention}#1#{C:inactive} utilizzo per ogni Jolly)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "Succo di Bacca Spettrale",
                text = {
                    "Aggiunge un {C:attention}sigillo{} casuale e un'edizione casuale {C:dark_edition}Foil{}, ",
                    "{C:dark_edition}Olografica{} o {C:dark_edition}Policroma{} a",
                    "{C:attention}1{} selezionata in mano"
                },
            },
            c_poke_berry_juice_planet = {
                name = "Succo di Bacca Stellare",
                text = {
                    "Aumenta il livello della",
                    "{C:attention}mano di poker{} più potenziata di un livello",
                },
            },
            c_poke_berry_juice_item = {
                name = "Succo di Bacca oggettizzato",
                text = {
                    "Crea un {C:item}Cucchiaio Torto{}",
                    "{C:green}#1# possibilità su #2#{} di",
                    "crearne {C:attention}2{}",
                    "{C:inactive}(Devi avere spazio){}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "Succo di Bacca dell'occulto",
                text = {
                    "Crea un tarocco {C:tarot}Il Matto{}",
                    "e guadagni {C:money}$#1#{}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "Succo di Bacca misterioso",
                text = {
                    "Crea una carta",
                    "{C:item}Succo di Bacca{} casuale"
                }
            },
            c_poke_oven = {
                name = "Microonde",
                text = {
                  "Ottieni {C:attention}+#1#{} scarti per questo round",
                  "se utilizzato durante un {C:attention}Buio",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Trasforma il {C:attention}Rotom ",
                  "più a sinistra o selezionato"
                }
            },
            c_poke_washing_machine = {
                name = "Lavatrice",
                text = {
                  "Ottieni {C:attention}+#1#{} mani per questo round",
                  "se utilizzato durante un {C:attention}Buio",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Trasforma il {C:attention}Rotom ",
                  "più a sinistra o selezionato"
                }
            },
            c_poke_fridge = {
                name = "Frigorifero",
                text = {
                  "Crea {C:attention}2{} {C:attention}Consumablili casuali",
                  "{C:inactive}(Devi avere spazio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Trasforma il {C:attention}Rotom ",
                  "più a sinistra o selezionato"
                }
            },
            c_poke_fan = {
                name = "Ventilatore",
                text = {
                  "Crea fino a {C:attention}2{}",
                  "Jolly {C:blue}Comuni{}",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Trasforma il {C:attention}Rotom ",
                  "più a sinistra o selezionato"
                }
            },
            c_poke_lawn_mower = {
                name = "Tagliaerba",
                text = {
                  "Ottieni {C:attention}+#1#{} dimensione della mano per questo round",
                  "se utilizzato durante un {C:attention}Buio",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Trasforma il {C:attention}Rotom ",
                  "più a sinistra o selezionato"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Energia Erba",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Erba{} selezionato più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_fire_energy = {
                name = "Energia Fuoco",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Fuoco{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_water_energy = {
                name = "Energia Acqua",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Acqua{}selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energia Elettro",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Elettro{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energia Psico",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Psico{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energia Lotta",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Lotta{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energia Incolore",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly più  selezionato o più a sinistra permanentemente, se possibile",
                    "L'effetto viene dimezzate se viene utilizzato su di un",
                    "Jolly {C:attention}NON Incolore{}",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energia Oscurità",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Oscurità{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per Jolly)",
                },
            },
            c_poke_metal_energy = {
                name = "Energia Acciaio",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Acciao{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per ogni Jolly)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energia Folletto",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Folletto{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per ogni Jolly)",
                },
            },
            -- Drago deez
            c_poke_dragon_energy = {
                name = "Energia Drago",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Drago{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per ogni Jolly)",
                },
            },
            c_poke_earth_energy = {
                name = "Energia Terra",
                text = {
                    "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                    "del Jolly {C:attention}Terra{} selezionato o più a sinistra permanentemente, se possibile",
                    "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per ogni Jolly)",
                },
            },
            c_poke_bird_energy = {
                name = " Energia Uccello",
                text = {
                  "Aumenta la maggior parte dei valori {C:attention}punteggio{} e {C:money}${}",
                  "del Jolly {C:attention}Uccello{} selezionato o più a sinistra permanentemente, se possibile",
                  "{C:inactive}(Massimo di {C:attention}#1#{}{C:inactive} aumenti per ogni Jolly)",
                },
            },
            c_poke_emergy = {
                name = "Emergia",
                text = {
                    "Crea {C:attention}1{} carta {C:green}Energia",
                    "{C:dark_edition}Negativa{} per ogni",
                    "{C:attention}Jolly Felice{} o {C:legendary}M Jolly{}"
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
            -- HA HA! Not anymore!

            m_poke_hazard = {
                name = "Carte Azzardo",
                text = {
                    "Nessun seme o valore",
                    "Il {C:attention}Potenziamento{} viene rimosso",
                    "alla fine del round",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#1# possibilità su #2#{} che venga",
                    "distrutta se {C:attention}tenuta in mano{}",
                    "alla fine del round"
                },
            },
            m_poke_flower = {
                name = "Carta Fiore",
                text = {
                    "{X:mult,C:white} X#1# {} Mult se la",
                    "mano giocata include {C:attention}4+ semi"
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "Puntata Diamante",
                colour = "Diamante",
                text = {
                    "I Pokemon {C:attention}Non-Baby{} Pokemon si evolvono più lentamente di {C:attention}1{} round",
                    "{s:0.8}Applica tutte le puntate precedenti"
                }
            },
            stake_poke_pearl = {
                name = "Puntata Perla",
                colour = "Perla",
                text = {
                    "{C:attention}-1{} Limite di Energia",
                    "{s:0.8}Applica tutte le puntate precedenti"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} per ogni",
                    "{C:attention}#3#{} tenuto in mano,",
                    "il valore è diverso ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnati)",
                    "{C:inactive}(Si evolve a {C:money}$16{}{C:inactive} guadagnati)"
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} o {C:money}$#5#{} per ogni",
                    "{C:attention}#4#{} tenuto in mano,",
                    "il valore è diverso ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnati)",
                    "{C:inactive}(Si evolve a {C:money}$16{}{C:inactive} guadagnati)"
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} dimensione della mano",
                    "Guadagna {C:money}$#1#{} per ogni {C:attention}#4#{} tenuto in mano,",
                    "il valore è diverso ogni round",
                    "{C:inactive}(Attualmente {C:money}$#2#{C:inactive} guadagnato)",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} Carte della mano",
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
                    "{C:chips}+#3#{} mani",
                    "Guadagna {C:chips}+#2#{} fiche per ogni mano",
                    "rimanente alla fine del round",
                    "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} fiche)",
                    "{C:inactive}(Si evolve a {C:chips}+32{} {C:inactive}fiche)"
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} mani",
                    "Guadagna {C:chips}+#2#{} fiche per ogni mano",
                    "rimanente alla fine del round",
                    "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} fiche)",
                    "{C:inactive}(Si evolve a {C:chips}+72{} {C:inactive}fiche)"
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} mani, {C:chips}+#1#{} fiche",
                    "{C:chips}+#2#{} fiche per ogni mano rimanente",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:chips}+#2#{} mani",
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
                    "{C:chips}+#1#{} fiche",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} fiche",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} fiche"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:chips}+#1#{} fiche",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "{C:mult}+#2#{} Mult se la mano giocata include",
                    "carte con valori e semi diversi",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "{C:mult}+#2#{} Mult se la mano giocata include",
                    "carte con valori e semi diversi",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Crea una carta {C:planet}Pianeta{} quando un {C:attention}Buio{} viene selezionato",
                    "{br:2}text needs to be here to work",
                    "{C:mult}+#1#{} Mult se la mano giocata include",
                    "carte con valori e semi diversi",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato {C:attention}perdi tutti gli scarti{}",
                    "{br:2}text needs to be here to work",
                    "Ogni carta da {X:mult,C:white}X{} Mult",
                    "pari al numero di {C:attention}scarti perduti{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Riattiva la {C:attention}prima{} e la {C:attention}seconda{}",
                    "carta della mano giocata",
                    "{C:attention}#1#{} volta aggiuntiva",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Riattiva le prime {C:attention}3{} carte",
                    "che assegnano punti della mano giocata",
                    "{C:attention}#1#{} volta aggiuntiva",
                } 
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Dopo aver giocato {C:attention}#2#{} carte che assegnano punti",
                    "aumenta il livello della prossima {C:attention}mano di poker{} giocata",
                    "{C:inactive}(Attualmente {C:attention}#3#{}{C:inactive}/#2#) {C:inactive}#4#{}",
                    "{C:inactive}(Si evolve dopo {C:attention}#1#{}{C:inactive} round)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Dopo aver giocato {C:attention}#1#{} carte che assegnano punti",
                    "aumenta il livello della prossima {C:attention}mano di poker{} giocata",
                    "{C:inactive}(Attualmente {C:attention}#2#{}{C:inactive}/#1#) {C:inactive}#3#{}",
                } 
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:chips}+#1#{} Fiche se la mano giocata",
                    "include una {C:attention}Scala{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:chips}+#1#{} Fiche se la mano giocata",
                    "include una {C:attention}Scala{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Crea un {C:attention}Tarocco{} se",
                    "include un {C:attention}Asso{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Guadgni {C:money}$#1#{} per ogni Jolly",
                    "posseduto alla fine del round",
                    "{C:inactive,s:0.8}(Massimo di {C:money,s:0.8}$10{C:inactive,s:0.8})",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Se hai {C:money}$#2#{} alla fine del round",
                    "questo jolly diventa {C:dark_edition}Negativo{}",
                    "{C:inactive,s:0.8}(Aumenta per ogni Raichu in possesso){}",
                    "Guadagni {C:money}$#1#{} per ogni Jolly",
                    "posseduto alla fine del round",
                    "{C:inactive,s:0.8}(Massimo di {C:money,s:0.8}$#3#{C:inactive,s:0.8})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} fiche per ogni carta",
                    "{C:attention}Vetro{} nel tuo mazzo completo",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Ogni round quando la prima carta {C:attention}Vetro{} viene distrutta",
                    "ne viene aggiunta una copia alla mano",
                    "{C:inactive}(Attualmente {C:chips}+#3#{}{C:inactive} fiche){C:inactive}#4#{}",
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
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} chips)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Ogni {C:attention}Regina{} tenuta in mano",
                    "da {C:chips}+#1#{} Fiche",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Ogni {C:attention}Regina{}",
                    "tenuta in mano",
                    "dà {C:chips}+#1#{} fiche",
                    "{C:inactive}(Si evolve tramite{} {C:attention}Pietralunare{}{C:inactive})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} dimensione della mano",
                    "Ogni {C:attention}Regina{}",
                    "tenuta in mano",
                    "dà {C:chips}+#1#{} fiche",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Ogni {C:attention}Re{} tenuto in mano",
                    "da {C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Ogni {C:attention}Re{}",
                    "tenuto in mano",
                    "dà {C:mult}+#1#{} mult",
                    "{C:inactive}(Si evolve tramite{} {C:attention}Pietralunare{}{C:inactive})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} dimensione della mano",
                    "Ogni {C:attention}Re{}",
                    "tenuto in mano",
                    "dà {C:mult}+#1#{} mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Le carte giocate con seme {C:clubs}#2#{} danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "{C:inactive}(Si evolve tramite {} {C:attention}Pietralunare{}{C:inactive})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Le carte giocate con seme {C:clubs}#2#{} danno",
                    "{C:mult}+#1#{} mult per ogni {C:clubs}#2#{}",
                    "giocata questo round",
                    "{C:inactive,s:0.8}(Se hai giocato 5 fiori, ognuno darebbe {C:mult,s:0.8}+5{} {C:inactive,s:0.8}mult){}",
                    "{C:inactive}(Attualmente {C:mult}#3#{}{C:inactive} mult){}"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# possibilità su #2#{} per ogni",
                    "carta {C:attention}9{} giocata di creare un",
                    "{C:attention}Tarocco{} quando assegna punti",
                    "{C:inactive}(Devi avere spazio)",
                    "{C:inactive}(Si evolve con una{} {C:attention}Pietrafocaia{}{C:inactive} carta)"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Ottieni {C:dark_edition}Medium{} Negativa{}",
                    "{C:green}#1# su #2#{} possibilità per ogni",
                    "carta {C:attention}9{} giocata di creare una",
                    "carta {C:attention}Tarocco{} o {C:planet}Pianeta{} quando assegna punti",
                    "{C:inactive,s:0.8}(Devi avere spazio)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Le carte giocate con seme",
                    "{C:spades}#2#{} danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietralunare{C:inactive,s:0.8})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Le carte giocate con seme {C:spades}#3#{}",
                    "danno {C:mult}+#1#{} mult e",
                    "{C:chips}+#2#{} fiche più i fiche totali di quella carta",
                    "quando assegnano punti",
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
                    "Guadagna {C:chips}+#4#{} quando le carte {C:attention}Bonus{} / {C:attention}di Pietra{} assegnano punti ",
                    "{C:mult}+#2#{} quando le carte {C:attention}Mult{} / {C:attention}Multiuso{} assegnano punti",
                    "{X:red,C:white}X#6#{} quando le carte{C:attention}d'Acciaio{} / {C:attention}di Vetro{} assegnano punti ",
                    "{C:money}$#8#{} quando le carte {C:attention}Dorate{} / {C:attention}Fortunate{} assegnano punti",
                    "Rimuovi il {C:dark_edition}Potenziamento{} dalle carte giocate",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:red,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} end of round)",
                    "{C:inactive,s:0.8}(Evolve dopo aver mangiato {C:attention,s:0.8}#9#{C:inactive,s:0.8} potenziamenti)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Le carte giocate con valore {C:attention}dispari{} danno ",
                    "{C:mult}+#1#{} o {C:mult}+#2#{} mult quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Le carte giocate con valore {C:attention}Dispari{} danno",
                    " {C:mult}+#1#{} o {C:mult}+#2#{} mult quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrafoglia{C:inactive,s:0.8} o {C:attention,s:0.8}Pietrasolare{C:inactive,s:0.8})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Le carte giocate con valore {C:attention}Dispari{} danno",
                    "{C:mult}+#2#{} mult o {X:mult,C:white} X#1# {} mult quando assegnano punti",
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} mult se la mano giocata",
                    "include una {C:attention}Doppia Coppia{}", 
                    "{C:inactive}(Attualmente {C:mult}+#1#{} {C:inactive}mult)",
                    "{C:inactive}(Si evolve a {C:mult}+8{}{C:inactive} mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} mult se la mano giocata",
                    "include una {C:attention}Doppia Coppia{}",
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
                    "{C:inactive}(ex: {C:green}1 possibilità su 6{C:inactive} -> {C:green}2 possibilità su 6{C:inactive})",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
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
                    "{C:chips}+#2#{} fiche se la mano giocata",
                    "include un {C:attention}Tris{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#3#{} mult se la mano giocata",
                    "include un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} fiche se la mano giocata",
                    "include un {C:attention}Tris{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{X:red,C:white} X#1# {} mult se la mano giocata",
                    "include un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Guadagna {C:money}$#1#{} alla",
                    "fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Guadagna {C:money}${} alla fine del",
                    "round pari al {C:attention}doppio{} del", 
                    "valore di vendita del {C:attention}Jolly{} più a sinistra ",
                    "{C:inactive,s:0.8}(Tranne sé stesso)",
                    "{C:inactive}(Attualmente {C:money}$#1#{C:inactive}, Massimo di {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Se la mano giocata è una",
                    "singola {C:attention}figura{}, guadagna {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Se la mano giocata è una singola",
                    "{C:attention}figura{}, guadagna {C:money}$#1#{} e diventa",
                    "una {C:attention}Carta Dorata{} quando assegna punti"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Ogni {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, o {C:attention}7{} giocato dà",
                    "{C:mult}+#1#{} mult e {C:chips}+#2#{} fiche",
                    "quando assegna punti",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Ogni {C:attention}2{}, {C:attention}3{}",
                    "{C:attention}5{}, o {C:attention}7{} giocato dà",
                    "{C:mult}+#1#{} mult e {C:chips}+#2#{} fiche",
                    "quando assegna punti",
                    "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#3#{C:inactive,s:0.8} volte)"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "contiene un {C:attention}Colore{}",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrafocaia{C:inactive,s:0.8})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} mult se la mano giocata",
                    "include un {C:attention}Colore{}",
                    "La prima carta del {C:attention}Colore{} se non ha potenziamenti",
                    "diventa una carta {C:attention}Mult{} quando assegna punti"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Le carte {V:1}#3#{} giocate ",
                    "danno {C:mult}+#1#{} mult quando assegnano punti",
                    "Il seme cambia in ordine dopo",
                    "che la mano viene giocata",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Le carte {V:1}#2#{} giocate ",
                    "danno {C:mult}+#1#{} mult quando assegnano punti",
                    "Il seme cambia in ordine dopo",
                    "che la mano è giocata",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietraidrica{C:inactive,s:0.8} o {C:attention,s:0.8}Roccia del Re{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Le carte {V:1}#2#{} giocate",
                    "danno {C:mult}+#7#{} mult e {X:mult,C:white} X#1# {}",
                    " quando assegnano punti",
                    "Il seme cambia in ordine dopo",
                    "che la mano è giocata",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# possibilità su #2#{} di creare",
                    "un {C:attention}Tarocco{} o un {C:item}Oggetto",
                    "se la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# possibilità su #2#{} di creare ",
                    "un {C:attention}Tarocco{} o {C:item}Cucchiaio Torto{}",
                    "se la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} slot consumabili",
                    "{C:green}#1# possibilità su #2#{} di creare",
                    " una carta {C:attention}Matto{} o {C:item}Cucchiaio Torto{}",
                    "se la {C:attention}mano di poker{} giocata è",
                    "già stata giocata questo round",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} slot consumabili",
                    "Ogni {C:attention}Consumabile{} posseduto dà {X:mult,C:white}X#1#{} mult",
                    "le carte {C:item}Cucchiao Torto{} danno {X:mult,C:white}X#2#{} mult",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#4#{} mult",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#3#{} mult",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} mani",
                    "{C:mult}-#2# scarti{}",
                    "{C:mult}+#3#{} mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Le carte giocate con valore {C:attention}Pari{}",
                    "danno {C:chips}+#1#{} fiche quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Carte giocate con valore {C:attention}Pari{}",
                    "danno {C:chips}+#1#{} fiche quando assegnano punti",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebell",
                text = {
                    "Le carte giocate con valore {C:attention}Pari{}",
                    "danno {C:chips}+#1#{} fiche quando assegnano punti",
                    "e {C:attention}si riattivano{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Ogni {C:attention}10{} giocato da ",
                    "{C:mult}+#1#{} Mult quando assegna punti",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Ogni {C:attention}10{} giocato da ",
                    "{C:mult}+#1#{} Mult quando assegna punti",
                    "{br:2}text needs to be here to work",
                    "{C:attention}I 10 non possono essere{} disattivati"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Fiche",
                    "{C:attention}-#2#{} Carte della mano",
                    "{C:inactive,s:0.8}(Evolve {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Fiche",
                    "{C:attention}-#2#{} Carte della mano",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Fiche",
                    "{C:attention}-#2#{} Carte della mano",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Se la mano giocata include una {C:attention}Scala{}", 
                    "ottieni {C:chips}#2#{} Fiche ",
                    "{C:inactive}(Evolve dopo {C:chips}+#1#{C:inactive} / +60 Fiche)",
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Se la mano giocata include una {C:attention}Scala{}", 
                    "ottieni {C:chips}#2#{} Fiche",
                    "Le fiche aumentano {C:chips}+1{} ogni volta",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} chips)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult durante la {C:attention}mano finale{}",
                    "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#2#{C:inactive,s:0.8} volte)",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Roccia di Re{C:inactive,s:0.8})"
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
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds or with a {C:attention,s:0.8}King's Rock{} {C:inactive,s:0.8}card)"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Guadagna {X:red,C:white} X#1# {} mult",
                    "per mano giocata,",
                    "{C:inactive,s:0.8}(Resets at end of round)",
                    "{C:inactive}(Attualmente {X:red,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "{X:red,C:white} X#1# {} Mult per mano giocata",
                    "{C:inactive,s:0.8}(Si resetta quando un {C:attention,s:0.8}Buio Boss{C:inactive,s:0.8} viene sconfitto)",
                    "{C:inactive}(Attualmente {X:red,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_shell = {
                name = "Shellder...?",
                text = {
                  "Evolve lo {C:attention}Slowpoke più a sinistra",
                  "{S:1.1,C:red,E:2}si autodistrugge{}",
                }
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Le carte {C:attention}Acciaio{} giocate",
                    "danno {X:red,C:white}X#1#{} mult",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Le carte {C:attention}Acciaio{} giocate danno {X:red,C:white}X#1#{} mult",
                    "più {X:red,C:white}X#2#{} mult per ogni",
                    "Jolly {X:metal,C:white}Acciaio{} adiacente",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Ottieni Porro{}",
                    "{C:green}#2# possibilità su #3#{} di guadagnare {C:money}$#1#",
                    "ogni volta che un {C:attention}Consumabile{} viene usato",
                    "{C:money}${} garantito quando si usa {C:attention}Porro{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "include almeno {C:attention}2{} figure",
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "è un {C:attention}Full{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',      
                text = {
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "include almeno {C:attention}3{} figure",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#1#{} mult se la mano giocata",
                    "è un {C:attention}Full{}",
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# possibilità su #2#{} di",
                    "aggiungere un {C:attention}sigillo casuale{} alla",
                    "carta che assegna punti più a sinistra nella",
                    "{C:attention}prima mano{} del round",
                    "{C:inactive,s:0.8}(Si evolve quando il tuo mazzo ha {C:attention,s:0.8}#4#{C:inactive,s:0.8} / #3# {C:attention,s:0.8}sigilli{C:inactive,s:0.8})",
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Aggiunge un {C:attention}sigillo casuale{} alla",
                    "carta che assegna punti più a sinistra nella",
                    "{C:attention}prima mano{} del round",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult per ogni carta sopra {C:attention}#3#{} nel tuo mazzo completo",
                    "Aggiunge una carta casuale al mazzo alla fine del round",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult per ogni carta sopra {C:attention}#2#{} nel tuo mazzo completo",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Alla fine del round,una carta casuale viene rimossa",
                    "dal mazzo e ne vengono aggiunte 2",
                    "{C:inactive}(Attualmente {C:mult}+#3#{} {C:inactive}Mult){}"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Se la mano giocata ha {C:attention}5{} carte",
                    "ogni carta ha una {C:green}#1# possibilità su #2#{}",
                    "di riattivarsi",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietraidrica{C:inactive,s:0.8})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Se la mano giocata ha {C:attention}5{} carte",
                    "ogni carta ha una {C:green}#1# possibilità #2#{}",
                    "di {C:attention}riattivarsi{}",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# possibilità #2#{} di",
                    "{C:attention}sostituire{} l'edizione di un",
                    "Jolly casuale con una {C:dark_edition}Negativa{}",
                    "alla fine del round",
                    "{S:1.1,C:red,E:2}se l'effetto si attiva si autodistrugge{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# possibilità #2#{} di",
                    "{C:attention}sostituire{} l'edizione di un",
                    "Jolly casuale con una {C:dark_edition}Negativa{}",
                    "{S:1.1,C:red,E:2}se l'effetto si attiva si autodistrugge{}",
                    "alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}Percentuale di possibilità{}",
                    "A volte {C:attention}sostituisce{} l'edizione",
                    "di un casuale Jolly in tuo possesso con",
                    "un'edizione {C:dark_edition}Negativa{} alla fine del round",
                    "{C:inactive,s:0.8}(Esclusi i Gengar){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "I Jolly con edizione {C:dark_edition}Policromo{} che apparirebbero",
                    "nel {C:attention}Negozio{} e nei {C:attention}Pacchetti Booster{}",
                    "sono invece {C:dark_edition}Negativi{}",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "La carta più a sinistra della",
                    "tua {C:attention}prima mano giocata{} del round",
                    "diventa una carta {C:attention}di Pietra{}",
                    "{C:inactive,s:0.8}(Si evolve con un adesivo {C:metal,s:0.8}Metallo{C:inactive,s:0.8})"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{X:mult,C:white}X#2#{} Mult per ogni carta",
                    "{C:planet}Pianeta{} usata durante questa partita",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolve dopo aver giocato {C:planet,s:0.8}#3#{C:inactive,s:0.8} carte pianeta diverse)",
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Ottieni Trance{}",
                    "{X:mult,C:white}X#2#{} Mult per ogni carta",
                    "{C:planet}Pianeta{} diversa usata questa partita",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Le {C:attention}figure{} giocate",
                    "danno {C:chips}+#1#{} fiche",
                    "quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve dopo  {C:attention,s:0.8}#2#{}{C:inactive} round)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Tutte le {C:attention}figure{} giocate",
                    "diventano carte {C:attention}Bonus{}",
                    "e danno {C:chips}+#1#{} fiche",
                    "quando assegnano punti",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "{C:attention}Destra Instabile{}",
                    "{X:mult,C:white} X#1# {} Mult e si disattiva",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "{C:attention}Destra Instabile{}",
                    "{X:mult,C:white} X#1# {} Mult e guadagni {C:money}$#2#{}",
                    "poi si disattiva"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Le carte giocate con seme {C:hearts}#2#{} danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrafoglia{C:inactive,s:0.8})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "{C:green}#4# possibilità su #5#{} per le carte con seme",
                    "{C:hearts}#3#{} giocate di dare {C:mult}+#1#{} Mult",
                    "e {X:mult,C:white}X#2#{} Mult quando assegnano punti",
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',      
                text = {
                    "{C:attention}Ottieni Ossospesso{}",
                    "Da {C:mult}+#1#{} mult per",
                    "ogni consumabile {C:posseduto}{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Ossospesso{C:inactive,s:0.8} vale il doppio){}",
                    "{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo aver usato {C:attention,s:0.8}#3#{C:inactive,s:0.8} consumabili)",
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} slot consumabili",
                    "{X:mult,C:white} X#1# {} Mult per",
                    "ogni consumabile {C:attention}in possesso{} ",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Ossospesso{C:inactive,s:0.8} vale il doppio){}",
                    "{C:inactive}(Attualmente {X:mult,C:white} X#3# {C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:red,C:white}X#1#{} Mult per ogni carta",
                    "carta sotto {C:attention}#2#{} nel tuo mazzo completo",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:red,C:white}X#1#{} Mult per ogni carta",
                    "sopra {C:attention}#2#{} nel tuo mazzo completo",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "Il primo e il secondo {C:attention}Fante{} giocati",
                    "danno {X:mult,C:white} X#1# {} mult",
                    "quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve dopo aver attivato {C:attention,s:0.8}#2#{C:inactive,s:0.8} volte)",
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Vendi questa carta per ridurre",
                    "il punteggio richiesto dal",
                    "{C:attention}Buio Boss{} attuale della metà{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Vendi questa carta per disattivare",
                    "il {C:attention}Buio Boss{} e ridurre{}",
                    "della {C:attention}metà{} il numero di fiche richieste",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Ogni {C:attention}carta di pietra{} giocata",
                    "guadagna permanentemente",
                    "{C:chips}+#1#{} fiche quando assegna punti",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Ogni {C:attention}carta di pietra{} giocata",
                    "guadagna permanentemente",
                    "{C:chips}+#1#{} fiche quando assegna punti",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Riattiva la {C:attention}prima{} {C:attention}Carta di Pietra{} che assegna punti",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "Le prime {C:attention}#1#{} volte che una",
                    "carta {C:attention}Fortunata{} si attiva ogni round,",
                    "aggiungi una copia permanente al tuo",
                    "mazzo e aggiungila alla {C:attention}Mano",
                    "{C:inactive,s:0.8}(Si evolve quando il mazzo è al 25% composto da #3#{C:attention,s:0.8}Carte fortunate{C:inactive,s:0.8})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Le {C:attention}carte multiuso{} giocate danno",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fiche, o {C:money}$#3#{}",
                    "{C:green}#4# possibilità su #5#{} di attivare {C:attention}tutti e tre{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#6# Carte Multiuso{C:inactive,s:0.8} giocate)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} slot consumabili",
                    "{C:chips}-#2#{} mani",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "{C:attention}Riattiva{} tutte le carte giocate",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Crea un {C:attention}Patto Doppio{}",
                    "alla fine del round se hai usato almeno",
                    "{C:attention}#1# Consumabili{} questo round",
                    "{C:inactive}(Attualmente {C:attention}#2#{C:inactive} Consumabili usati)"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Guadagna {C:mult}+#2#{} Mult",
                    "per ogni {C:attention}6{}",
                    "nella mano giocata",
                    "{C:inactive}(Si evolve a {C:mult}+#1#{C:inactive} / +12 Mult)",
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
                    "{C:inactive,s:0.8}(Si evolve con un adesivo {C:dragon,s:0.8}Drago{C:inactive,s:0.8})"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Riattiva ogni {C:attention}carta dorata{}",
                    "tenuta in mano {C:attention}#1#{} volte",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Riattiva ogni {C:attention}carta dorata{}",
                    "tenuta in mano {C:attention}#1#{} volte",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Le carte giocate con",
                    "seme {C:diamonds}#2#{} danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietraidrica{C:inactive,s:0.8})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Le carte giocate con",
                    "seme {C:diamonds}#3#{} danno",
                    "{C:mult}+#1#{} mult e ",
                    "{C:money}$#2#{} quando assegnano punti",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Riattiva la carta più a sinistra",
                    "tenuta in mano {C:attention}#1#{} volte"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "Quando un Buio viene selezionato, distrugge",
                    "il Jolly a destra e guadagna {C:mult}+#2#{} Mult",
                    "Ottiene un'edizione {C:attention}Foil{}, {C:attention}Olografico{}, o {C:attention}Policromo{}",
                    "se il Jolly era {C:red}Raro{} o superiore",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve con un adesivo {C:metal,s:0.8}Metallo{C:inactive,s:0.8})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato, ottieni {C:attention}+#1#{} carte della mano",
                    ", se il tuo mazzo ha {C:attention}#2#{} o più carte",
                    "{br:4}text needs to be here to work",
                    "{C:attention}Le carte aggiunte al mazzo{} tramite",
                    "{C:attention}Negozio{}, {C:attention}Standard{} pack,",
                    "{C:spectral}Criptide{}, {C:item}Oggetti{} e alcuni Jolly",
                    "quando vengono giocate vengono {C:attention}duplicate{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Aumenta di {C:money}$#1#{} {C:attention}il valore di vendita{}",
                    "quando una carta viene venduta alla fine del round",
                    "{br:3.5}text needs to be here to work",
                    "Ottieni {C:attention}#2#%{} del valore di vendita ",
                    "di questo jolly alla fine del round {C:inactive}(rounded up){}",
                    "{C:inactive}(Guadagno attuale {C:money}$#3#{C:inactive}/$#4# Max)",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Se {C:attention}il primo scarto{} del round ha",
                    "{C:attention}1{} sola carta, distruggila e ottieni {C:mult}+#2#{} Mult",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
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
                    "Le carte {C:attention}non potenziate{} giocate",
                    "danno {X:mult,C:white} X#1# {} mult quando assegano punti",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Leader)',
                text = {
                    "Ogni {C:attention}Tauros{} e {C:attention}Miltank{}",
                    "dan {X:mult,C:white} X#1# {} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Ogni cambio del negozio ha",
                    "{C:green}#2# possibilità su #3#{} di trovare un {C:attention}Tauros (Mandria){}",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Mandria)',
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "{C:chips}+#2#{} fiche",
                    "Usa {C:attention}Splash{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "{br:1.5}ERROR - CONTACT STEAK",
                    "Disabilità l'effetto",
                    "di tutti i {C:attention}Buio Boss{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} fiche per ogni",
                    "{C:attention}Buio{} saltato in questa partita",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Vai direttamente al {C:attention}negozio{}",
                    "quando salti un buio",
                    "{C:inactive}(Attualmente {C:chips}+#1# {C:inactive}fiche)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Vendi questo Jolly per creare",
                    "un'edizione base {C:attention}Deperibile{}",
                    "del Jolly più a sinistra",
                    "e di {C:colorless}Tipo Incolore{}",
                    "{C:inactive,s:0.8}(rimuove eventuali adesivi Eterni, esclude Ditto)",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:inactive,s:0.8}(Evolves with...a lot)",
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Ogni {C:attention}carta{} giocata",
                    "guadagna permanentemente",
                    "{C:chips}+#1#{} Fiche quando assegna punti",
                    "{C:attention}Raddoppia il guadagno{} per le carte {C:attention}Bonus{}"
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Guadagni {C:money}$#1#{} per ogni",
                    "carta {C:attention}Oro{} scartata",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "La prima carta {C:attention}Mult{}",
                    "{C:attention}tenuta{} in mano", 
                    "da {X:mult,C:white} X#1# {} Mult"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Limite di Energia",
                    "Crea una carta {C:pink}Energia{}",
                    "quando un {C:attention}Booster Pack{}",
                    "viene aperto",
                    "{C:inactive, s:0.8}(Si evolve con una carta{} {C:attention}Potenziamento{}{C:inactive})"
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}#1#Antico{}",
                    "{X:attention,C:white}1+{} : Crea un {C:tarot}Tarocco{}",
                    "{X:attention,C:white}2+{} : Guadagna {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Crea un {C:item}Oggetto{}",
                    "{C:inactive,s:0.8}(Devi avere spazio)",
                    "{C:inactive,s:0.8}(Si evolve dopo aver attivato il terzo effetto {C:attention,s:0.8}#3#{C:inactive,s:0.8} volte)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}#1# Antico{}",
                    "{X:attention,C:white}1+{} : Crea un {C:tarot}Tarocco{}",
                    "{X:attention,C:white}2+{} : Guadagni {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Crea un {C:item}Oggetto{}",
                    "{C:inactive,s:0.8}(Devi avere spazio)",
                    "{X:attention,C:white}4+{} : Crea un {C:attention}Patto{} una volte per round{C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}#1# Antico{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Fiche",
                    "{X:attention,C:white}2+{} : {}Giocare {C:attention}#1#{} fa guadagnare permanentemente {C:chips}+#3#{} Fiche",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Fiche",
                    "{C:inactive,s:0.8}(Si evolve dopo aver attivato il terzo effetto {C:attention,s:0.8}#5#{C:inactive,s:0.8} volte)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}#1# Antico{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Fiche",
                    "{X:attention,C:white}2+{} : {}Giocare {C:attention}#1#{} fa guadagnare permanentemente {C:chips}+#3#{} Fiche",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Fiche",
                    "{X:attention,C:white}4+{} : {}Riattiva la {C:attention}prima{} e la {C:attention}seconda{}",
                    "carta giocata{C:attention}#5#{} volte"
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}#1# Antico{}",
                    "{X:attention,C:white}1+{} : {X:red,C:white}X#2#{} Mult",
                    "{X:attention,C:white}2+{} : Guadagni {X:red,C:white}X#3#{} Mult",
                    "{X:attention,C:white}3+{} : Il primo {C:attention}#1#{} non potenziato",
                    "che assegna punti diventa una carta di {C:attention}Vetro{}",
                    "{X:attention,C:white}4+{} : {C:attention}Raddopia{} il {X:red,C:white}X{} Mult di questo jolly",
                    "{C:inactive}(Si resetta alla fine del round){}",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Gli {C:attention}#1#{} giocati danno {X:mult,C:white} X#2# {} Mult per ogni",
                    "{C:attention}#1#{} carta giocata nella mano",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "{C:green}#3# possibilità su #4#{} per ogni",
                    "{C:attention}#1#{} giocato di essere distrutto",
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
                    "Aggiunge un'edizione' {C:attention}Foil{} e un {C:attention}sigillo{}",
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
                name = 'Moltres',
                text = {
                    "Ogni round, aumenta il livello della prima mano",
                    "scartata di {C:attention}3 livelli{}",
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Guadagna {C:mult}+#2#{} mult",
                    "se la mano giocata include",
                    "{C:attention}#3#{} o meno carte",
                    "{C:inactive}(Si evolve a {C:mult}+10{}{C:inactive} mult)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Ottiene {C:mult}+#2#{} Mult",
                    "se la mano giocata ha",
                    "{C:attention}#3#{} o meno carte",
                    "{C:inactive}(Si evolve a {C:mult}+#1#{C:inactive} / +30 Mult)",
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{br:1.6}ERROR - CONTACT STEAK",
                    "Riattiva le carte giocate {C:attention}#2#{} volte",
                    "se la mano giocata",
                    "ha esattamente {C:attention}1{} carta"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "Alla fine del negozio, distrugge il Jolly più a sinistra",
                    "e ne crea una copia {C:dark_edition}Policroma{}",
                    "con {C:attention}+1{} {C:pink}Energia{}",
                    "I Jolly {C:dark_edition}policromi{} danno {X:mult,C:white} X#1# {} mult",
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
                    "un {C:attention}Buio Boss{} viene sconfitto"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "Alla fine del negozio, crea",
                    "una carta {C:attention}Tarocco{} ,{C:spectral}Spettrale{}",
                    " o {C:item}Oggetto{} {C:dark_edition}Negativo{}  casuale",
                    "A volte crea un Jolly {C:dark_edition}Negativo{} casuale",
                } 
            },
            j_poke_chikorita = {
                name = 'Chikorita',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Ogni {C:attention}terza{} carta {C:attention}tenuta in mano{}",
                    "ti fa guadagnare {C:money}$#2#{} alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_bayleef = {
                name = 'Bayleef',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Ogni {C:attention}altra{} carta {C:attention}tenuta in mano{}",
                    "ti fa guadagnare {C:money}$#2#{} alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_meganium = {
                name = 'Meganium',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Ogni carta{C:attention}tenuta in mano{}",
                    "ti fa guadagnare {C:money}$#2#{} alla fine del round",
                }
            },
            j_poke_cyndaquil = {
                name = 'Cyndaquil',
                text = {
                    "{C:red}+#1#{} scarti",
                    "{C:mult}+#2#{} Mult per ogni",
                    "{C:attention}scarto{} rimanente",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_quilava = {
                name = 'Quilava',
                text = {
                    "{C:red}+#1#{} scarti",
                    "{C:mult}+#2#{} Mult per ogni",
                    "{C:attention}scarto{} rimanente",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_typhlosion = {
                name = 'Typhlosion',
                text = {
                    "{C:red}+#1#{} scarti",
                    "{C:mult}+#2#{} Mult e {X:red,C:white} X#3# {} Mult per",
                    "{C:attention}scarto{} rimanente",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult and {X:red,C:white} X#5# {C:inactive} Mult)",
                }
            },
            j_poke_totodile = {
                name = 'Totodile',
                text = {
                    "{C:blue}+#1#{} Mani",
                    "{C:chips}+#2#{} fiche per ogni carta",
                    "giocata questo round",
                    "{C:inactive}(Attualmente {C:chips}+#3#{C:inactive} Fiche)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#4#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_croconaw = {
                name = 'Croconaw',
                text = {
                    "{C:blue}+#1#{} Mani",
                    "{C:chips}+#2#{} fiche per ogni carta",
                    "giocata questo round",
                    "{C:inactive}(Attualmente {C:chips}+#3#{C:inactive} Fiche)",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#4#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_feraligatr = {
                name = 'Feraligatr',
                text = {
                    "{C:blue}+#1#{} Mani",
                    "{C:chips}+#2#{} fiche per ogni carta",
                    "giocata questo round",
                    "{C:inactive}(Attualmente {C:chips}+#3#{C:inactive} Fiche)",
                }
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} Mult per",
                    "{C:attention}consecutive{} hand played that",
                    "isn't the last played hand",
                    "{C:inactive}(Last hand: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +15 Mult)",
                }
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} mult per",
                    "ogni {C:attention}mano consecutiva{} giocata che",
                    "non è l'ultima mano di poker giocata",
                    "{C:inactive}(Ultima mano: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Si evolve a {C:mult}+15{} {C:inactive}mult)"
                }  
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} mult quando la mano giocata",
                    "non è l'ultima mano di poker giocata",
                    "{C:inactive}(Ultima mano: {C:attention}#3#{}{C:inactive})",
                }  
            },
            j_poke_hoothoot = {
                name = 'Hoothoot',
                text = {
                    "{C:purple}+#1# Chiaroveggenza ",
                    "Vedi il valore delle prossime {C:attention}carte{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Chiaroveggenza",
                    "Vedi il valore delle prossime {C:attention}carte{}",
                }
            },
            j_poke_ledyba = {
                name = "Ledyba",
                text = {
                  "{C:mult}+#1#{} Mult ogni {C:attention}5{} carte",
                  "rimaste nel mazzo",
                  "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult)",
                  "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
                }
            },
            j_poke_ledian = {
                name = "Ledian",
                text = {
                  "{C:mult}+#1#{} Mult ogni {C:attention}3{} carte",
                  "rimaste nel mazzo",
                  "{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_poke_spinarak = {
                name = "Spinarak",
                text = {
                  "{C:chips}+#1#{} Fiche oppure,",
                  "{C:green}#2# possibilità su #3#{} di ottenere {C:chips}+#5#{} chips",
                  "{C:inactive,s:0.8}(Si evolve dopo  {C:attention}#4#{C:inactive} round)",
                }
            },
            j_poke_ariados = {
              name = "Ariados",
              text = {
                "{C:chips}+#1#{} Fiche oppure",
                "{C:green}#2# possibilità su #3#{} di ottenere {C:chips}+#4#{} chips",
              }
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "Ottieni{C:chips}+#4#{} quandi giochi una carta {C:attention}Bonus{} / {C:attention}di Pietra{}",
                    "{C:mult}+#2#{} quandi giochi una carta {C:attention}Mult{} / {C:attention}Multiuso{} ",
                    "{X:red,C:white}X#6#{} quandi giochi una carta {C:attention}d'Acciaio{} / {C:attention}di Vetro{}",
                    "{C:money}$#8#{} quandi giochi una carta {C:attention}Dorata{} / {C:attention}Fortunata{}",
                    "Poi {C:attention}mescola casualmente{} i {C:dark_edition}potenziamenti della mano giocata",
                    "{C:inactive}(Attualmente {C:chips}+#3#{}, {C:mult}+#1#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{C:inactive} alla fine del round)"
                } 
            },
            j_poke_chinchou = {
                name = "Chinchou",
                text = {
                  "Da {C:chips}+#1#{} Fiche e guadagni {C:money}$#2#{}",
                  "se la mano giocata include una {C:attention}Coppia",
                  "{C:inactive}(Si evolve dopo {C:attention}#3#{C:inactive} round)",
                }
            },
            j_poke_lanturn = {
                name = "Lanturn",
                text = {
                  "Da {C:chips}+#1#{} Fiche e guadagni {C:money}$#2#{}",
                  "se la mano giocata include una {C:attention}Coppia",
                  "{br:3}ERROR - CONTACT STEAK",
                  "{C:chips}+#3#{} Fiche extra per ogni Jolly di Tipo {X:water,C:white}Acqua{}",
                  "{C:money}$#4#{} extra per ogni Jolly di Tipo {X:lightning,C:black}Elettro{}",
                  "{C:inactive}(Attualmente {C:chips}+#6#{C:inactive} Fiche e {C:money}$#5#{C:inactive})"
                }
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#2# {} Mult",
                    "Ottieni {C:money}$#1#{} ",
                    "alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea un tarocco {C:attention}Luna{}",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo{C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea un tarocco {C:attention}Mondo{} ",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }
            },
            j_poke_togepi = {
                name = 'Togepi',
                text = {
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_togetic = {
                name = 'Togetic',
                text = {
                    "Le {C:attention}Carte Fortunate{} hanno",
                    "{C:green}#1# possibilità su #2#{} di dare {C:chips}+#4#{} fiche",
                    "e {C:green}#1# possibilità su #3#{} di dare {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrabrillo{C:inactive,s:0.8})"
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
                    "{C:planet}I Celestial Pack{} contengono tutte le carte {C:planet}Pianeta{}",
                }
            },
            j_poke_mareep = {
                name = "Mareep",
                text = {
                  "Ottiene {X:mult,C:white}X#2#{} Mult quando una o più ",
                  "{C:attention}carte{} vengono {C:attention}aggiunte{} al mazzo",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Perde {X:mult,C:white}X#3#{} Mult quando una o più ",
                  "{C:attention}carte{} vengono {C:attention}distrutte",
                  "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_flaaffy = {
                name = "Flaaffy",
                text = {
                  "Ottiene {X:mult,C:white}X#2#{} Mult quando una o più ",
                  "{C:attention}carte{} vengono {C:attention}aggiunte{} al mazzo",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Perde {X:mult,C:white}X#3#{} Mult quando una o più ",
                  "{C:attention}carte{} vengono {C:attention}distrutte",
                  "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_ampharos = {
                name = "Ampharos",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult Mult quando una o più ",
                  "{C:attention}carte{} vengono {C:attention}aggiunte{} al mazzo",
                  "{C:inactive}(Attualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_mega_ampharos = {
                name = "Mega Ampharos",
                text = {
                  "{X:mult,C:white} X#1# {} Mult",
                  "Quando un buio viene selezionato, aumenta",
                  "la dimensione della mano della {C:attention}metà{} del",
                  "numero di carte del mazzo e perdi",
                  "tutti gli scarti e  {C:attention}puoi giocare una sola mano{} ",
                  "{C:inactive}(Arrotonda, Attualmente C:attention}#2#{C:inactive})"
                }
            },
            j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white}X#1#{} Mult",
                    "Crea un {C:attention}Ierofante{}",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_marill = {
                name = 'Marill',
                text = {
                    "{X:mult,C:white}X#2#{} Mult se la mano giocata include",
                    "una carta {C:attention}non potenziate{} e una",
                    "carta {C:attention}potenziata{} che assegnano punti",
                    "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#1# Carte Bonus{C:inactive,s:0.8}) che assegnano punti",
                }
            },
            j_poke_azumarill = {
                name = 'Azumarill',
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Raddoppia il {X:mult,C:white}X{} Mult se la mano giocata include",
                    "una carta {C:attention}non Bonus{} e una",
                    "carta {C:attention}Bonus{} che assegnano punti"
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "{C:attention}Cambia Tipo Pokemon{}",
                  "Le {C:attention}Figure{} giocate danno {C:mult}+#1#{} Mult quando assegnano punti",
                  "{br:2}text needs to be here to work",
                  "Riattiva tutte le {C:attention}Figure{} giocate se",
                  "questo Jolly non è {X:grass,C:white}Erba{} o",
                  "Se hai un Jolly {X:water,C:white}Acqua{}"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Le carte giocate con valore {C:attention}Dispari{}",
                    "danno {C:mult}+#1#{} mult o diventano",
                    "carte {C:attention}Multiuso{} quando assegnano punti",
                    "Se le carte sono già {C:attention}Multiuso{}, aggiunge un'edizione {C:dark_edition}Foil{},",
                    "{C:dark_edition}Olografico{} o {C:dark_edition}Policromo{} "
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Le carte {V:1}#2#{} giocate danno",
                    "{C:mult}+#1#{} mult quando assegnano punti",
                    "Le carte si riattivano in base a",
                    "quanti Jolly {X:water,C:white}Acqua{} possiedi",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Il numero delle riattivazione si divide equamente tra le carte di punteggio){}",
                    "Il seme cambia in ordine {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_hoppip = {
                name = 'Hoppip',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Le prime 2 {C:attention}carte scartate{} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}Si autodistrugge{} durante lo scarto",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} carte della mano",
                    "Le prime 3 {C:attention}carte scartate{} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}Si autodistrugge{} durante lo scarto",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} Carte della mano",
                    "Tutte le {C:attention}carte scartate{} diventano {C:dark_edition}Multiuso{}",
                    "{S:1.1,C:red,E:2}si autodistrugge{} durante lo scarto",
                }
            },
            j_poke_aipom = {
              name = "Aipom",
              text = {
                "{C:chips}-#3#{} Mani",
                "Tutti i {C:attention}Colori{} e le {C:attention}Scale{} possono",
                "essere giocate con {C:attention}3{} carte",
                "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#1#{C:inactive,s:0.8} Scale e {C:attention,s:0.8}#2#{C:inactive,s:0.8} Colori){}"
              }
            },
            j_poke_sunkern = {
                name = 'Sunkern',
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato e quando una mando viene {C:attention}giocata{} ",
                    "Guadagni{C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrasolare{C:inactive,s:0.8})"
                }
            },
            j_poke_sunflora = {
                name = 'Sunflora',
                text = {
                    "Earn {C:money}$#1#{} when {C:attention}Blind{} is selected,",
                    "hand is {C:attention}played{}, hand is {C:attention}discarded{},",
                    "consumable is {C:attention}used{}, card is {C:attention}sold{},",
                    "and at end of round"
                }
            },
            j_poke_wooper = {
                name = "Wooper",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#3#{} Mult per ogni {C:attention}figura{}",
                  "rimanente nel {C:attention}mazzo",
                  "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult)",
                  "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
                }
            },
            j_poke_quagsire = {
                name = "Quagsire",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#2#{} Mult per ogni {C:attention}figura{}",
                  "rimanente nel {C:attention}mazzo",
                  "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult)",
                }
            },
            j_poke_yanma = {
              name = "Yanma",
              text = {
                "Ogni {C:attention}3{} e {C:attention}6{} giocati danno",
                "{C:chips}+#2#{} Fiche e {C:mult}+#1#{} Mult quando assegnano punti",
                "{C:green}#5# possibilità su #6#{} di ottenere invece {C:chips}+#4#{} Fiche",
                "e {C:mult}+#3#{} Mult",
                "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#7#{C:inactive,s:0.8} 3 o 6 che assegnano punti)"
              }
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "{C:attention}Riattiva{} ogni {C:attention}#3#{} giocata",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Ogni {V:1}#4#{} che assegna punti",
                    "da {X:mult,C:white}X#2#{} Mult",
                    "{C:inactive,s:0.7}Seme e valore cambiano ogni round{}"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Diminuise il livello della mano",
                    "scartata {C:attention}#1#{}",
                    "e lo aggiunge alla",
                    "{C:attention}mano di poker{} più giocata",
                    "{C:inactive,s:0.7}La mano cambia ogni round{}"
                } 
            },
            j_poke_murkrow = {
              name = "Murkrow",
              text = {
                "{X:red,C:white} X#1# {} Mult per ogni",
                "Joker di tipo {X:dark,C:white}Buio{} in possesso",
                "{C:inactive}(Attualmente {X:red,C:white} X#2#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Neropietra{C:inactive,s:0.8})"
              }
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Le carte {C:attention}Re{} giocate danno {X:red,C:white}X#1#{} mult",
                    "quando assegnano punti, aumenta di {X:red,C:white}X#2#{} mult",
                    "per ogni mano giocata oltre la prima",
                    "{C:inactive,s:0.8}(Si resetta alla fine del round)",
                }
            },
            j_poke_misdreavus = {
                name = 'Misdreavus',
                text = {
                    "Giocare {C:attention}figure{} fa perdere fino",
                    "a {C:chips}#1#{} fiche quando assegnano punti",
                    "Questo Jolly ottiene le fiche perse",
                    "{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} Fiche)",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Neropietra{C:inactive,s:0.8})",
                }
            },
            j_poke_unown = {
                name = "Unown",
                text = {
                  "{C:attention}Natura:{} {C:inactive}({C:attention}#2#{C:inactive})",
                  "{C:mult}+#1#{} Mult se la mano giocata",
                  "contiene carte della giusta {C:attention}Natura{} ",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{S:1.1,C:red,E:2}Si autodistrugge{} aalla fine del round",
                }
            },
            j_poke_wobbuffet = {
              name = "Wobbuffet",
              text = {
                "Retrigger i {C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} o {C:attention}10{}",
                "Giocati",
                "{br:2}text needs to be here to work",
                "{C:attention}Sinistra Instabile{}",
                "Quando un buio viene selezionato",
                "rendi {C:attention}Eterno{} il Joker più a destra",
              }
            },
            j_poke_girafarig = {
              name = "Girafarig",
              text = {
                "Se la giocata include una {C:attention}Doppia Coppia{}",
                "La prima e la ultima {C:attention}figura{} giocate",
                "danno {X:mult,C:white}X#1#{} Mult",
                "{C:inactive,s:0.8}(Si evolve dopo aver usato {C:attention,s:0.8}Morte{C:inactive,s:0.8} su {C:attention,s:0.8}2{C:inactive,s:0.8} Figure){}"
              }
            },
            j_poke_pineco = {
              name = "Pineco",
              text = {
                "{C:attention}Sinistra Instabile{}",
                "{C:chips}+#1#{} Fiche e poi si disattiva",
                "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
              }
            },
            j_poke_forretress = {
              name = "Forretress",
              text = {
                "Ottieni {C:chips}+#2#{} fiche quando",
                "una carta {C:attention}d'Acciaio{} {C:attention}tenuta in mano{} si attiva",
                "{br:2}text needs to be here to work",
                "{C:attention}Sinistra Instabile{}",
                "{C:chips}+#1#{} Fiche e si disattiva",
              }
            },
            j_poke_dunsparce = {
                name = 'Dunsparce',
                text = {
                  "{C:inactive}Non fa niente...?",
                  "{S:1.1,C:red,E:2}Si autodistrugge{} durante {C:green}il cambio{} nel negozio",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_gligar = {
                name = 'Gligar',
                text = {
                    "Le carte giocate danno {X:mult,C:white}X#1#{} Mult",
                    "per ogni {V:1}#2#{} {C:attention}tenuto{} in mano",
                    "{C:inactive, s:0.8}(Il seme varia ad ogni round)",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve tramite{C:attention,s:0.8}Neropietra{C:inactive,s:0.8})",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "La carta che assegna punti più a sinistra della",
                    "tua {C:attention}prima mano{} del round",
                    "diventa una carta {C:attention}d'acciaio{}",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Le carte {C:attention}di pietra{} {C:attention}tenute{} in",
                    "mano diventano {C:attention}d'acciaio{}"
                } 
            },
            j_poke_snubbull = {
                name = 'Snubbull',
                text = {
                    "Le prime {C:attention}figure{} giocate",
                    "danno {X:mult,C:white}X#2#{} Mult se sono",
                    "una {C:attention}Regina{} altrimenti da {X:mult,C:white}X#1#{} Mult ",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_granbull = {
                name = 'Granbull',
                text = {
                    "Le prime {C:attention}figure{} giocate",
                    "danno {X:mult,C:white}X#2#{} Mult se sono",
                    "una {C:attention}Regina{} altrimenti da {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_poke_qwilfish = {
                name = 'Qwilfish',
                text = {
                    "{C:purple}+#1# Carte Azzardo",
                    "Ottieni {C:chips}+#2#{} Fiche quando",
                    "una carta {C:attention}potenziata{}",
                    "viene distrutta",
                    "{C:inactive}(Attualmente {C:chips}+#3#{C:inactive} Fiche)",
                }
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Quando un Buio viene selezionato distruggi il Jolly",
                    "a destra e ottiene {C:mult}+#4#{} Mult",
                    "Ottieni un effetto {C:attention}Foil{}, {C:attention}Olografico{}, o {C:attention}Policromo{}",
                    "se era di rarità {C:red}Raro{} o superiore",
                    "Queste edizioni si {C:attention}accumulano{} su questo Jolly",
                    "{C:inactive,s:0.8}(Ottiene la stessa edizione del Jolly distrutto se possibile){}",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_mega_scizor = {
                name = "Mega Scizor",
                text = {
                  "I jolly {C:blue}comuni{} danno {X:mult,C:white} X#1# {} Mult",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Distruggi tutti i Jolly {C:blue}Comuni{}",
                  "alla fine del round"
                }
            },
            j_poke_shuckle = {
                name = "Shuckle",
                text = {
                  "Quando un {C:attention}Buio{} viene selezionato, distruggi",
                  "il {C:attention}Consumabile{} più a sinistra e",
                  "crea una carta {C:item}Succo di Bacca{} ",
                  "{C:inactive}(Il {C:item}Succo di Bacca{C:inactive} non può essere distrutto)"
                }
            },
            j_poke_sneasel = {
                name = 'Sneasel',
                text = {
                    "Se la mano giocata è un singolo {C:attention}#1#{}",
                    "distruggilo e ottieni {C:money}$#2#",
                    "{C:inactive,s:0.8}(Il valore cambia ad ogni round){}",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Neropietra{C:inactive,s:0.8})",
                }
            },
            j_poke_teddiursa = {
              name = "Teddiursa",
              text = {
                "Ottiene {C:mult}+#2#{} Mult quando un",
                "{C:attention}Pacchetto{} viene saltato",
                "{C:inactive}(Si evolve a {C:mult}+#1#{C:inactive} / #3# Mult)",
              }
            },
            j_poke_ursaring = {
              name = "Ursaring",
              text = {
                "Ottiene {C:mult}+#2#{} Mult e",
                "crea un {C:item}Oggetto{} quando un",
                "{C:attention}Pcchetto{} viene saltato {C:inactive,s:0.8}(Devi avere spazio)",
                "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Si evolve tramite{C:attention,s:0.8}Pietralunare{C:inactive,s:0.8})",
              }
            },
            j_poke_slugma = {
              name = "Slugma",
              text = {
                "Ogni {C:attention}4{} {C:inactive}[#4#]{} mani giocate, distruggi",
                "la prima carta {C:attention}tenuta{} in mano dopo che i punti sono stati assegnati",
                "e questo Jolly ottiene {C:chips}+#2#{} fiche",
                "{C:inactive}(Si evolve a {C:chips}+#1#{C:inactive} / #3# fiche)",
              }
            },
            j_poke_magcargo = {
                name = "Magcargo",
                text = {
                  "Ogni {C:attention}3{} {C:inactive}[#3#]{} mani giocate, distruggi",
                  "la prima carta {C:attention}tenuta{} in mano dopo che i punti sono stati assegnati",
                  "e questo Jolly ottiene{C:chips}+#2#{} Fiche",
                  "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} Fiche)",
                }
            },
            j_poke_swinub = {
                name = "Swinub",
                text = {
                  "Le prime carte giocate danno {C:mult}+#1#{} Mult per ogni carta",
                  "di {C:attention}Pietra{} o di {C:attention}Vetro{} che assegnano punti",
                  "{br:2}text needs to be here to work",
                  "{C:green}#3# possibilità su #4#{} di guadagnare {C:money}$#2#{} ",
                  "alla fine del round",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#5#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_piloswine = {
              name = "Piloswine",
              text = {
                "Le prime carte giocate danno {C:mult}+#1#{} Mult per ogni carta",
                "di {C:attention}Pietra{} o di {C:attention}Vetro{} che assegnano punti",
                "{br:2}text needs to be here to work",
                "{C:green}#3# possibilità su #4#{} di guadagnare {C:money}$#2#{} ",
                "alla fine del round",
                "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#5#{C:inactive,s:0.8} carte di Pietra o vetro che assegnano punti)",
              }
            },
            j_poke_heracross = {
                name = 'Heracross',
                text = {
                    "{X:mult,C:white} X#1# {} Mult se le carte giocate",
                    "non hanno {C:attention}lo stesso valore{} di",
                    "quelle {C:attention}tenute in mano{}"
                }
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "{C:mult}+#1#{} Mult per ogni carta ",
                "{C:attention}Potenziata{} nel tuo mazzo completo",
                "{br:2}text needs to be here to work",
                "Crea un Jolly {C:attention}Comune{} {X:water,C:white}Acqua{} se",
                "la mano giocata include {C:attention}5 carte potenziate{}",
                "{C:inactive,s:0.8}(Devi avere spazio)",
                "{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Mult)",
              }
            },
            j_poke_remoraid = {
              name = "Remoraid",
              text = {
                "Riattive la prime carte",
                "della mano giocata",
                "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
              }
            },
            j_poke_octillery = {
              name = "Octillery",
              text = {
                "Riattiva tutte le carte giocate",
                "{br:2}ERROR - CONTACT STEAK",
                "Si disattiva dopo aver assegnato punti",
                "se la mano non contiene un {C:attention}8{}"
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "Alla fine del round",
                  "ricevi un {S:1.1,C:green,E:2}Regalo{}",
                  "{C:inactive,s:0.8}(Devi avere spazio)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Guadagna {C:chips}+#2#{} fiche quando una",
                  "carta {C:attention}dorata{} è tenuta in mano",
                  "o quando una carta {C:attention}dorata{} giocata assegna punti",
                  "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} Fiche)",
                }
            },
            j_poke_skarmory = {
                name = 'Skarmory',
                text = {
                    "{C:purple}+#1# Carte Azzardo",
                    "{X:mult,C:white}X#2#{} Mult per ogni carta",
                    "{C:attention}Azzardo{} o {C:attention}d'Acciaio{}",
                    "{C:attention}tenute{} in mano",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Ottiene {C:mult}+#2#{} Mult per ogni {C:attention}6{}",
                    "Se un {C:attention}Re{} viene tenuto in mano,",
                    "{C:attention}ottieni{} {X:red,C:white}X#4#{} Mult per ogni {C:attention}6{} che assegna punti",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_phanpy = {
                name = "Phanpy",
                text = {
                  "Ottiene {X:red,C:white}X#2#{} Mult per ogni",
                  "mano {C:attention}consecutiva{} giocata",
                  "che include {C:attention}5{} carte",
                  "{C:inactive}(Attualmente {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_donphan = {
                name = "Donphan",
                text = {
                  "Ottiene {X:red,C:white}X#2#{} Mult per ogni",
                  "mano {C:attention}consecutiva{} giocata",
                  "che include {C:attention}5{} carte",
                  "{C:inactive}(Attualmente {X:red,C:white}X#1#{C:inactive} Mult)",
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
                    "{C:inactive,s:0.8}(Si evolve tramite {C:metal,s:0.8}Dubbiodisco{C:inactive,s:0.8})",
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                  "{C:purple}+#1# Chiaroveggenza ",
                    "Aggiunge il valore della carta più {C:attention}alta{}",
                    "{C:attention}Vista nel mazzo{} al Mult",
                    "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#2#{C:inactive,s:0.8} Volte)",
                }
            },
            j_poke_smeargle = {
                name = "Smeargle",
                text = {
                  "Quando un buio viene selezionato",
                  "{C:attention}Copia{} l'abilità del {C:attention}Jolly{} a destra",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Applica {C:attention}Imbrattato{}",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Se la {C:attention}prima mano o scarto{} del round",
                    "è di esattamente {C:attention}5{} carte, una di esse",
                    "è selezionata casualmente per essere copiata",
                    "{C:inactive}(Se giocata){} o distrutta {C:inactive}(o scartata){}",
                    "{C:inactive}(Si evolve dopo {C:attention}#2#{}{C:inactive} round)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} mult",
                    "Quando un Buio viene selezionato",
                    "guadagna {X:red,C:white} X#3# {} mult se",
                    "il tuo mazzo ha esattamente {C:attention}#2#{} carte",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Crea un patto {C:attention}Standard{}",
                    "quando questo Jolly si evolve",
                    "{C:inactive}(Si, questo {C:attention}ridurrà{C:inactive} il tuo Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea un {C:attention}Patto Coupon{}",
                    "quando questo Jolly evolve",
                    "{C:inactive}(Sì, questo Jolly {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "{C:red}+#2#{} scarti",
                    "{C:inactive}(Sì, questo Jolly {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_houndour = {
              name = "Houndour",
              text = {
                "Quando scarti {C:attention}3{} o più carte",
                "Vengono scartare altre {C:attention}#3#{} carte casuali {C:attention}tenute{} in mano",
                "{br:2}ERROR - CONTACT STEAK",
                "Gli scarti fanno guadagnare permanentemente {C:mult}+#1#{} Mult",
                "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
              }
            },
            j_poke_houndoom = {
              name = "Houndoom",
              text = {
                "Quando scarti {C:attention}3{} o più carte",
                "vengono scartate {C:attention}tutte{} le carte {C:attention}tenute{} in mano",
                "{br:2}ERROR - CONTACT STEAK",
                "Gli scarti fanno guadagnare permanentemente {C:mult}+#1#{} Mult",
              }
            },
            j_poke_miltank = {
                name = "Miltank",
                text = {
                  "Ottieni {C:money}$#1#{} per ogni Jolly", 
                  "{C:colorless}Incolore{} Joker in possesso",
                  "alla fine del round",
                  "{C:inactive}(Attualmente {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Ogni round, la prima {C:attention}#1#{C:inactive} [#2#]{} volta che",
                    "una {C:attention}carta fortunata{} si attiva, aggiunge una copia {C:dark_edition}Policroma{} ",
                    "al tuo mazzo e la mette nella C:attention}mano",
                } 
            },
            j_poke_raikou = {
                name = "Raikou",
                text = {
                  "Se la prima mano giocata ha solo {C:attention}1{} carta,",
                  "trasforma nel suo {C:attention}valore{} {C:attention}3{} carte ",
                  "{C:attention}tenute{} in mano e ottieni {C:money}$#1#{}",
                }
            },
            j_poke_entei = {
                name = "Entei",
                text = {
                  "Se il {C:attention}primo{} scarto è di esattamente",
                  "{C:attention}4{} carte, distruggine una",
                  "e ottieni {X:red,C:white}X#2#{} Mult",
                  "{C:inactive}(Attualmente {X:red,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_suicune = {
                name = "Suicune",
                text = {
                  "{C:attention}Raddoppia{} permanentemente le fiche totali",
                  "di ogni carta nella mano giocata",
                  "{C:inactive}(Fino {C:chips}+#1#{C:inactive} fiche per aumento)",
                }
            },
            j_poke_larvitar = {
                name = "Larvitar",
                text = {
                  "Se la mano giocata è un {C:attention}Full{}",
                  "ogni carta guadagna permanentemente",
                  "{C:chips}+#1#{} fiche quando assegna punti",
                  "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full)"
                }
            },
            j_poke_pupitar = {
                name = "Pupitar",
                text = {
                  "Se la mano giocata è un {C:attention}Full{}",
                  "ogni carta guadagna permanentemente",
                  "{C:chips}+#1#{} fiche quando assegna punti",
                  "{C:inactive,s:0.8}(Si evolve dopo aver giocato {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full)"
                }
            },
            j_poke_tyranitar = {
                name = "Tyranitar",
                text = {
                  "Se la mano giocata è un {C:attention}Full{}",
                  "dopo aver assegnato i punti, ogni carta giocata",
                  "perde permanentemente {C:chips}#1#{} fiche",
                  "e guadagna permanentemente {X:mult,C:white}X#2#{} Mult se",
                  "finchè si possono rimuovere fiche dalle carte"
                }
            },
            j_poke_mega_tyranitar = {
                name = "Mega Tyranitar",
                text = {
                  "Se la mano giocata è un {C:attention}Full{}",
                  "aumenta il livello, e poi viene giocata",
                  "Le carta guadagnano permanentemente {C:chips}Fiche",
                  "in base al livello del {C:attention}Full{}"
                }
            },
            j_poke_lugia = {
              name = "Lugia",
              text = {
                "Ottieni {X:mult,C:white} X#2# {} Mult ogni",
                "{C:attention}#3#{} {C:inactive}[#4#]{} carte",
                "pescate durante il {C:attention}Buio{}",
                "{C:inactive}(Attualmente {X:mult,C:white} X#1# {C:inactive} Mult){}"
              }
            },
            j_poke_ho_oh = {
                name = "Ho-Oh",
                text = {
                  "La prima volta che un {C:attention}Consumabile{}",
                  "viene usato ogni round, viene creata",
                  "una copia {C:dark_edition}Policroma{}",
                  "{C:inactive}(Devi avere spazio)",
                }
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} Ante per ogni {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}Buio{} saltato",
                    "{C:inactive}(Il numero di bui saltati richiesti aumenta sempre)"
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} Carte della mano, {C:attention}Natura{}",
                    "Ogni {C:attention}#6#, #7# o #8#{} giocato ha {C:green}#4# possibilità su #5#{}",
                    "di guadagnare {C:money}$#1#{} quando assegna punti",
                    "Garantito se hai altre carte {X:grass,C:white}Erba{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive,s:0.8}(Si evolve dopo aver guadagnato {C:money, s:0.8}$#2#/16{})"
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} Carte della mano, {C:attention}Natura{}",
                    "Ogni {C:attention}#6#, #7# o #8#{} giocato ha {C:green}#4# possibilità su #5#{}",
                    "di guadagnare {C:money}$#1#{} quando assegna punti",
                    "Garantito se hai altre carte {X:grass,C:white}Erba{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive,s:0.8}(Si evolve dopo aver guadagnato {C:money,s:0.8}$#2#/32{})"
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} Carte della mano, {C:attention}Natura{}",
                    "Per ogni {C:attention}#5#, #6# o #7#{} giocati guadagni {C:money}$#1#{}",
                    "{br:5}ERROR - CONTACT STEAK",
                    "quando assegnano punti. Guadagna {C:money}$#1#{} alla fine del round per",
                    "ogni altre carte {X:grass,C:white}Erba{} in tuo possesso",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive,s:0.8}(Attualmente {C:money}$#4#{}, Massimo di {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} scarti, {C:attention}Natura{}",
                    "{C:mult}+#1#{} mult per ogni {C:attention}#5#, #6# o #7#{} scartato questo round",
                    "Raddoppia i guadagni se hai altre carte {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult )",
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} scarti, {C:attention}Natura{}",
                    "{C:mult}+#1#{} mult per ogni {C:attention}#5#, #6# o #7#{} scartato questo round",
                    "Raddoppia i guadagni se hai altre carte {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult)",
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} scarti, {C:attention}Natura{}",
                    "Per ogni {C:attention}#6#, #7# o #8#{} scartati questo round",
                    "guadagna {C:mult}+#4#{} mult e {X:red,C:white} X#1# {} mult per",
                    "ogni carta {X:fire,C:white}Fuoco{} o {X:earth,C:white}Lotta{} che hai",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:mult}+#5#{C:inactive} Mult, {X:red,C:white}X#3#{C:inactive} Mult){}",
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} Mani, {C:attention}Natura{}",
                    "Per ogni {C:attention}#4#, #5# o #6#{} giocato ottieni {C:chips}+#1#{} Fiche",
                    "Raddoppia le fiche guadagnate se hai carte {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive,s:0.8}(Si evolve dopo aver guadagnato {C:chips,s:0.8}#2#{C:inactive,s:0.8} fiche)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} Mani, {C:attention}Natura{}",
                    "Per ogni {C:attention}#4#, #5# o #6#{} giocato ottieni {C:chips}+#1#{} Fiche",
                    "Raddoppia le fiche guadagnate se hai carte {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive,s:0.8}(Si evolve dopo aver guadagnato {C:chips,s:0.8}#2#{C:inactive,s:0.8} fiche)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#3#{} mani, {C:attention}Natura{}",
                    "Per ogni {C:attention}#6#, #7# o #8#{} giocato ottieni {C:chips}+#1#{} fiche",
                    "Ottieni ulteriori {C:chips}+#5#{} fiche per",
                    "ogni altra carta {X:water,C:white}Acqua{} o {X:earth,C:white}Terra{}",
                    "{C:inactive,s:0.8}(include Jolly e carte Energia){}",
                    "{C:inactive}(Attualmente {C:chips}+#4#{}{C:inactive} totale)"
                } 
            },
            j_poke_poochyena = {
              name = "Poochyena",
              text = {
                "Ottiene {C:mult}+#2#{} Mult quando",
                "{C:attention}una carta giocata{} viene distrutta",
                "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)",
              }
            },
            j_poke_mightyena = {
              name = "Mightyena",
              text = {
                "Ottiene {C:mult}+#2#{} Mult quando",
                "{C:attention}una carta giocata{} viene distrutta",
                "{br:2}ERROR - CONTACT STEAK",
                "Bonus aumento di {C:mult}+#3#{} Mult",
                "per ogni Jolly {X:dark,C:white}Buio{} in possesso",
                "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_zigzagoon = {
              name = "Zigzagoon",
              text = {
                "{C:attention}Raccolta{} {C:item}Ottieni un Oggetto{}",
                "{C:green}#1# possibilità su #2#{} di creare un ",
                "{C:item}Oggetto{} quando una mano viene giocata",
                "{C:inactive}(Devi avere spazio)",
                "{C:inactive,s:0.8}(Si evolve dopo {C:attention}#3#{C:inactive,s:0.8} round)",
              }
            },
            j_poke_linoone = {
              name = "Linoone",
              text = {
                "{C:green}#1# possibilità su #2#{} di creare un",
                "{C:item}Oggetto{} quando una mano viene giocata",
                "Garantito se la mano giocata",
                "include una {C:attention}scala{}",
                "{C:inactive}(Devi avere spazio)"
              }
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "Quando un {C:attention}Buio{} viene selezionato, ottieni",
                  "{C:chips}+#1#{} Mani, {C:mult}+#2#{} Scarti, o {C:attention}+#3#{} Carte della mano",
                  "{C:inactive,s:0.8}(Evolve dopo aver sconfitto {C:attention,s:0.8}Ante #4#{C:inactive,s:0.8} Buio Boss){}"
                }
            }, 
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "Quando un {C:attention}Buio{} viene selezionato, ottieni",
                  "{C:chips}+#1#{} Mani, {C:mult}+#2#{} Scarti, o {C:attention}+#3#{} Carte della mano",
                }
            }, 
            j_poke_nosepass = {
                name = 'Nosepass',      
                text = {
                    "La prima {C:attention}figura{} giocata",
                    "diventa una carta di {C:attention}Pietra{} e",
                    "{X:mult,C:white} X#1# {} Mult quando assegna punti",
                    "{C:inactive,s:0.8}(Evolve con una carta {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                } 
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "Quando una carta {C:attention}d'Acciaio{} assegna punti,",
                    "ottieni {X:mult,C:white}X#2#{} Mult e poi viene distrutta",
                    "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} Mult)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Quando una carta {C:attention}d'Acciaio{} o {C:attention}di Pietra{} assegna punti,",
                    "ottieni {X:mult,C:white}X#2#{} Mult e poi viene distrutta",
                    "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} Mult)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Quando una carta {C:attention}d'Acciaio{} o {C:attention}di Pietra{} o {C:attention}dorata{} assegna punti,",
                    "ottieni {X:mult,C:white}X#2#{} Mult e poi viene distrutta",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_poke_numel = {
                name = "Numel",
                text = {
                  "{X:red,C:white}X#1#{} Mult ogni",
                  "{C:attention}#3#{} carte che assegnano punti",
                  "{C:inactive}#4# rimanenti{}",
                  "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
                }
            },
            j_poke_camerupt = {
              name = "Camerupt",
              text = {
                "{X:red,C:white}X#1#{} Mult ogni",
                "{C:attention}#2#{} carte che assegnano punti,",
                "le carte {C:attention}Mult{} ",
                "contano due volte",
                "{C:inactive}#3# rimanenti{}",
              }
            },
            j_poke_mega_camerupt = {
              name = "Mega Camerupt",
              text = {
                "Gains {X:mult,C:white} X#2# {} Mult quando",
                "una carta {C:attention}Mult{} assegna punti",
                "si resetta alla fine del round",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
              }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Usa {C:attention}Splash{}",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Squama Bella{C:inactive,s:0.8})",
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Riattiva tutte le carte giocate",
                  "se sono tutte dello stesso {C:attention}seme{}",
                }
            },
            j_poke_duskull = {
              name = "Duskull",
              text = {
                "Riattiva le prime {C:attention}4{} carte che assegnano punti",
                "durante la {C:attention}mano finale{} del round",
                "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
              }
            },
            j_poke_dusclops = {
              name = "Dusclops",
              text = {
                "Riattiva le prime {C:attention}4{} carte che assegnano punti",
                "durante la {C:attention}mano finale{} del round",
                "{br:2}ERROR - CONTACT STEAK",
                "Se c'è {C:attention}1{} carta che non assegna",
                "punti nella mano finale, viene distrutta",
                "e ottieni una carta {C:spectral}Spettrale{}",
                "{C:inactive}(Devi avere spazio){}",
                "{C:inactive}(Si evolve tramite {C:attention}Cavo di Collegamento{C:inactive})",
              }
            },
            j_poke_absol = {
                name = "Absol",
                text = {
                  "{X:red,C:white}X#1#{} Mult",
                  "Tutte le {C:green,E:1,S:1.1}possibilità{} {C:attention}elencate{}", 
                  "sono sempre {C:attention}0{}",
                  "{C:inactive}(ex: {C:green}1 possibilità su 6{C:inactive} -> {C:green}0 possibilità su 6{C:inactive})",
                }
            },
            j_poke_wynaut = {
                name = 'Wynaut',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Crea un {C:attention}Matto{} ",
                    "{C:dark_edition}Negativo{} alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Il debito arriva fino a {C:mult}-$#1#{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} round in debito)",
                  "{C:inactive,s:0.8}(Si evolve con una {C:attention,s:0.8}Pietralbore{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Il debito arriva fino a {C:mult}-$#1#{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Alla fine del round,",
                  "porta i soldi a {C:money}$0"
                }
            },
            j_poke_luvdisc = {
              name = "Luvdisc",
              text = {
                "{C:attention}Ottieni {C:hearts}Squama cuore",
                "Usa {C:attention}Splash",
              }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "è {C:attention}Poker{}",
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "include un {C:attention}Asso",
                    "{C:inactive}(Evolve a {C:chips}+#1#{C:inactive} / +64 chips)",
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "è {C:attention}Poker{}",
                    "Ottieni {C:chips}+#2#{} fiche se la mano giocata",
                    "include {C:attention}2+{} {C:attention}Assi",
                    "{C:inactive}(Evolve a {C:chips}+#1#{C:inactive} / +256 chips)",
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
                    "Ogni {C:attention}#2# {C:inactive}[#3#]{} mano, le carte giocate",
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
                    "Se{C:attention}la prima mano{} ha esattamente {C:attention}1{} carta,",
                    "aggiungi un effetto {C:dark_edition}Foil{}, {C:dark_edition}Olografico{}",
                    "o {C:dark_edition}Policromo{} alla carta",
                    "{br:3}text needs to be here to work",
                    "Se {C:attention}il primo scarto{} ha esattamente {C:attention}1{} carta,",
                    "{C:attention}distruggila{}",
                }
            },
            j_poke_kricketot = {
              name = "Kricketot",
              text = {
                "Ottieni {C:money}$#1#{} se la mano giocata",
                "ha esattamente {C:attention}4{} carte e ha",
                "{C:attention}4{} {C:attention}semi{} diversi",
                "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
              }
            },
            j_poke_kricketune = {
              name = "Kricketune",
              text = {
                "Ottieni {C:money}$#1#{} se la mano giocata",
                "ha esattamente {C:attention}4{} carte e ha",
                "{C:attention}4{} {C:attention}semi{} diversi",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:green}#2# possibilità su #3#{} di creare",
                "un {C:tarot}Tarocco{}"
              }
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} fiche per ogni carta",
                    "che {C:attention}non assegna punti{} nella mano giocata",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} fiche per ogni carta giocata",
                    "{C:attention}non assegna punti{}",
                }  
            },
            j_poke_ambipom = {
              name = "Ambipom",
              text = {
                "Tutti i {C:attention}Colori {} e le {C:attention}Scale{} possono",
                "essere giocati con {C:attention}3{} carte",
              }
            },
            j_poke_buneary = {
              name = "Buneary",
              text = {
                "{C:mult}+#1#{} Mult per",
                "ogni carta che {C:attention}non{} assegna punti",
                "nella mano giocata",
                "{C:inactive}(Si evolve dopo {C:attention}#2#{C:inactive} round)",
              }
            },
            j_poke_lopunny = {
                name = "Lopunny",
                text = {
                  "{C:purple}+#3# Preveggenza",
                  "{C:mult}+#1#{} Mult per",
                  "ogni carta che {C:attention}non{} assegna punti",
                  "nella mano giocata",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{X:mult,C:white} X#2# {} Mult se una carta che",
                  "non assegna punti ha {C:attention}lo stesso valore{}",
                  "di una carta vista con {C:attention}Preveggenza{}"
                }
            },
            j_poke_mega_lopunny = {
                name = "Mega Lopunny",
                text = {
                  "{C:purple}+#1# Preveggenza",
                  "Da {X:mult,C:white}X{} Mult",
                  "uguale al{C:attention}valore",
                  "delle mano vista con {C:attention}Preveggenza",
                  "{C:inactive}(Mano Preveggenza: {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_mismagius = {
                name = 'Mismagius',
                text = {
                    "Le {C:attention}figure{} giocate perdono permanentemente",
                    "fino a {C:chips}#1#{} fiche quando assegnano punti",
                    "Questo Jolly ottiene le fiche perse",
                    "{br:3}text needs to be here to work",
                    "{C:green}#3# possibilità su #4#{} per le carte giocate di poter",
                    "guadagnare permanentemente {C:chips}#5#{} fiche",
                    "{C:inactive}(Attualmente {C:chips}+#2#{C:inactive} fiche)",
                }
            },
            j_poke_honchkrow = {
                name = "Honchkrow",
                text = {
                  "Ogni Jolly di tipo {X:dark,C:white}Buio{} da {X:red,C:white}X#1#{} Mult",
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
                    "a una carta casuale nel mazzo alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Crea un tarocco {C:attention}Mago{} {C:dark_edition}Negativo{}",
                    " alla fine del round",
                    "{C:green}#3# possibilità su #4#{} di crearne {C:attention}2{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} mult",
                    "Crea una carta {C:item}Oggetto{} {C:dark_edition}Negativo{} casuale ",
                    "alla fine del round",
                    "{C:inactive}(Sì, questo {C:attention}ridurrà{C:inactive} il tuo mult)",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#2#{} mult",
                  "Alla fine del round, una carta",
                  "casuale nel {C:attention}mazzo{} diventa {C:attention}dorata{}.",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Le carte {C:attention}dorate{} {C:attention}tenute{} in",
                  "mano danno {C:chips}+#1#{} fiche",
                  "{C:inactive}(Si evolve dopo {C:attention}#3#{C:inactive} round)",
                }
            },
            j_poke_weavile = {
                name = 'Weavile',
                text = {
                    "If played hand is a single {C:attention}#3#{} destroy it,",
                    "earn {C:money}$#4#{} and this gains {X:mult,C:white}X#1#{} Mult,",
                    "resets when {C:attention}Boss Blind{} is defeated",
                    "{C:inactive,s:0.8}(Rank changes every round){}",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} Mult){}",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Le carte {C:attention}d'acciaio{} giocate danno {X:red,C:white}X#1#{} mult",
                    "più {X:red,C:white}X#2#{} mult per ogni",
                    "Jolly {X:metal,C:white}Acciaio{} in possesso",
                    "{C:inactive}(Attualmente {X:red,C:white}X#3#{}{C:inactive} mult){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "Il primo e il secondo {C:attention}Fante{} giocati",
                    "danno {X:mult,C:white} X#1# {} mult",
                    "quando assegnano punti e ogni {C:attention}Fante{} ulteriore",
                    "danno {X:mult,C:white} X#2# {} mult quando assegnano punti"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Ogni carta {C:attention}di pietra{} giocata",
                    "guadagna permanentemente",
                    "{C:chips}+#1#{} fiche quando assegna punti",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Le carte {C:attention}di pietra{} si riattivano per ogni",
                    "Jolly {X:earth,C:white}Terra{} che hai",
                    "{C:inactive}(Attualmente #2# riattivazioni)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Le carte multiuso {C:attention}non possono essere{} penalizzate",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Le carte {C:attention}multiuso{} danno",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fiche, o {C:money}$#3#{}",
                    "{C:green}#4# possibilità su #5#{} {C:attention}tutti e 3 gli effetti{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Guadagni {C:money}$#1#{} {C:attention}di valore di vendita{}",
                    "alla fine del round quando una carta viene {C:attention}venduta{}",
                    "{br:3.5}text needs to be here to work",
                    "Da {X:mult,C:white}X#2#{} Mult per ogni $",
                    "del valore di vendita di questo Jolly",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Se il {C:attention}primo scarto{} del round ha ",
                    "{C:attention}1 sola{} carta, distruggila e ottieni {C:mult}+#2#{} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Ottieni {X:mult,C:white}X#4#{} Mult per ogni carta scartata",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_togekiss = {
                name = 'Togekiss',
                text = {
                    "Le {C:attention}Carte Fortunate{} hanno",
                    "{C:green}#1# possibilità su #2#{} di dare {C:chips}+#4#{} fiche",
                    "e {C:green}#1# possibilità su #3#{} di dare {X:mult,C:white}X#5#{} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Le probabilità delle {C:attention}Carte Fortunate{} sono {C:attention}triplicate{}",
                    "{C:inactive}(ex: {C:green}2 possibilità su 5{C:inactive} -> {C:green}6 possibilità su 5{C:inactive})",
                }
            },
            j_poke_yanmega = {
              name = "Yanmega",
              text = {
                "Each played {C:attention}3{} or {C:attention}6{} gives",
                "{C:chips}+#2#{} Chips and {C:mult}+#1#{} Mult when scored",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:green}#3# in #4#{} chance to retrigger each",
                "played {C:attention}3{} or {C:attention}6{}"
              }
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "{C:attention}+#1#{} dimensione della mano",
                    "Si riduce di {C:red}#2#{}",
                    "ad ogni mano giocata",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Ottieni {C:attention}+#2#{} dimensione della mano",
                    "quando una carta {C:attention}fortunata{}",
                    "{C:green}si attiva{}",
                    "{C:inactive}(Max aumento {C:attention}+#3#{C:inactive} dimensione della mano){}"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Ogni cambio nel negozio ha",
                    "{C:green}#1# possibilità su #2#{} di aggiungere",
                    "una copia di {C:attention}Vetro{}",
                    "di una carta casuale del tuo mazzo.",
                } 
            },
            j_poke_gliscor = {
                name = 'Gliscor',
                text = {
                    "Le carte giocate {X:mult,C:white}X#1#{} Mult per ogni",
                    "{V:1}#2#{} or carta penalizzata {C:attention}tenuta{} in mano",
                    "{C:inactive, s:0.8}(Il seme cmbia ad ogni round)",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_mamoswine = {
              name = "Mamoswine",
              text = {
                "Le prime carte giocate danno {C:mult}+#1#{} Mult per ogni",
                "carta di {C:attention}Pietra{} e di {C:attention}Vetro{} nella mano giocata che assegna punti",
                "{br:2}text needs to be here to work",
                "{C:green}#3# possibilità su #4#{} per ogni carta di {C:attention}Pietra{} e",
                "di {C:attention}Vetro{} di guadagnare {C:money}$#2#{} quando assegnano punti",
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
                    "{br:2}ERROR - CONTACT STEAK",
                    "Giocare carte di {C:attention}Pietra{} ",
                    "aggiunge {X:mult,C:white} X#1# {} Mult quando vengono assegnati punti"
                } 
            },
            j_poke_dusknoir = {
                name = "Dusknoir",
                text = {
                  "Riattiva tutte le carte giocate",
                  "nella {C:attention}mano finale{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Le carte {C:spectral}Spettrali{} possono apparire",
                  "nel negozio",
                  "{C:inactive,s:0.8}(La probabilità aumenta se ne sono già apparse){}"
                }
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "Il debito arriva fino a {C:mult}-$#1#{}",
                  "{br:2.5}ERROR - CONTACT STEAK",
                  "Crea una carta {C:item}Oggetto{} se",
                  "la mano viene giocata mentre si è in debito",
                  "{C:inactive,s:0.8}(Devi avere spazio)",
                }
            },
            j_poke_rotom = {
                name = "Rotom",
                text = {
                  "{C:green}#1# possibilità su #2#{} di creare",
                  "un {C:item}oggetto{} quando apri una qualsiasi",
                  "{C:attention}Busta d'espansione{}",
                  "{C:inactive}(Devi avere spazio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Tutti i paccheti{} costano {C:money}$1{} in meno",
                  "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
                }
            },
            j_poke_rotomh = {
                name = "Rotom (Calore)",
                text = {
                  "{C:green}#1# possibilità su #2#{} di creare",
                  "un {C:item}oggetto{} quando apri una qualsiasi",
                  "{C:attention}Busta d'espansione{}",
                  "{C:inactive}(Devi avere spazio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Se il primo scarto è di esattamente",
                  "{C:attention}2{} carte, diventanto",
                  "entrambe carte {C:attention}Mult{} ",
                  "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
                }
            },
            j_poke_rotomw = {
                name = "Rotom (Lavaggio)",
                text = {
                  "{C:green}#1# possibilità su #2#{} di creare",
                  "un {C:item}oggetto{} quando apri una qualsiasi",
                  "{C:attention}Busta d'espansione{}",
                  "{C:inactive}(Devi avere spazio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Guadagni {C:money}$#3#{} per ogni carta",
                  "{C:attention}Potenziata{} giocata che assegna punti",
                  "Rimuovi i {C:attention}potenziamenti",
                  "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
                }
            },
            j_poke_rotomf = {
              name = "Rotom (Gelo)",
              text = {
                "{C:green}#1# possibilità su #2#{} di creare",
                "un {C:item}oggetto{} quando apri una qualsiasi",
                "{C:attention}Busta d'espansione{}",
                "{C:inactive}(Devi avere spazio){}",
                "{br:2}ERROR - CONTACT STEAK",
                "Quando un buio viene selezionato, crea",
                "un {C:attention}Consumabile{} casuale con un'edizione",
                "{C:dark_edition}Foil{}, {C:dark_edition}Olografica{}, o {C:dark_edition}Policroma{}",
                "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
              }
            },
            j_poke_rotomfan = {
                name = "Rotom (Vortice)",
                text = {
                  "{C:green}#1# possibilità su #2#{} di creare",
                  "un {C:item}oggetto{} quando apri una qualsiasi",
                  "{C:attention}Busta d'espansione{}",
                  "{C:inactive}(Devi avere spazio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Quando un Buio viene selezionato,",
                  "distruggi il jolly",
                  "e crea un {C:attention}Patto",
                  "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
                }
            },
            j_poke_rotomm = {
                name = "Rotom (Taglio)",
                text = {
                  "{C:green}#1# possibilità su #2#{} di creare",
                  "un {C:item}oggetto{} quando apri una qualsiasi",
                  "{C:attention}Busta d'espansione{}",
                  "{C:inactive}(Devi avere spazio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Riduci{} il valore delle",
                  "prime {C:attention}2{} carte {C:attention}tenute{} in",
                  "mano alla fine del round",
                  "{C:inactive}(Si trasforma quando usi una{C:attention}Macchina{C:inactive}){}"
                }
            },
            j_poke_shaymin = {
              name = "Shaymin",
              text = {
                "La carta più a destra che assegna punti",
                "della {C:attention}prima mano{} del round",
                "diventa una carta {C:attention}Fiore{}",
                "{C:inactive,s:0.8}(Si trasforma dopo che {C:attention,s:0.8}#1#{C:inactive,s:0.8} Carte Fiore hanno assegnato punti)"
              }
            },
            j_poke_shaymin_sky = {
              name = "Shaymin (Cielo)",
              text = {
                "Le carte {C:attention}Fiore{} sono",
                "considerate anche carte {C:attention}Multiuso{}",
                "{C:inactive,s:0.8}(Si trasforma tramite una carta{C:attention,s:0.8}Morte{C:inactive,s:0.8})"
              }
            },
            j_poke_pansage = {
                name = "Pansage",
                text = {
                    "Usa {C:attention}Scorciatoia",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrafoglia{C:inactive,s:0.8})"
                }
            },
            j_poke_simisage = {
                name = "Simisage",
                text = {
                    "Usa {C:attention}Scorciatoia",
                    "Tutte le carte non potenziate giocate hanno",
                    "{C:green}#1# possibilità su #2#{} di diventare carte {C:attention}Fortunate{}"
                }
            },
            j_poke_pansear = {
                name = "Pansear",
                text = {
                    "Usa {C:attention}Quattro dita",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietrafocaia{C:inactive,s:0.8})"
                }
            },
            j_poke_simisear = {
                name = "Simisear",
                text = {
                    "Usa {C:attention}Quattro dita",
                    "Se la prima mano giocata include una {C:attention}Scala",
                    "o un {C:attention}Colore{}, crea una {C:attention}Imperatrice{} ",
                    "e ogni carta che non assegna punti viene distrutta {C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "Panpour",
                text = {
                    "Usa {C:attention}Pareidolia",
                    "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Pietraidrica{C:inactive,s:0.8})"
                }
            },
            j_poke_simipour = {
                name = "Simipour",
                text = {
                    "Usa {C:attention}Pareidolia",
                    "La carta giocata con valore di fiche",
                    "più basso giocata a partire da sinistra",
                    "diventa una carta {C:attention}Bonus{}",
                }
            },
            j_poke_roggenrola = {
                name = "Roggenrola",
                text = {
                    "{C:purple}+#1# Carte Azzardo",
                    "Per ogni carta {C:attention}senza valore{}",
                    "{C:attention}held{} in hand gives {C:mult}+#2#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#3#{C:inactive,s:0.8} times)",
                }
            },
            j_poke_boldore = {
                name = "Boldore",
                text = {
                    "{C:purple}+#1# Carte Azzardo",
                    "Ogni carta {C:attention}senza valore{}",
                    "{C:attention}tenuta{} in mano da {C:mult}+#2#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_gigalith = {
                name = "Gigalith",
                text = {
                    "{C:purple}+#1# Carte Azzardo",
                    "Ogni carta {C:attention}senza valore{}",
                    "{C:attention}tenuta{} in mano da {C:mult}+#2#{} Mult",
                    "e si riattiva"
                }
            },
            j_poke_drilbur = {
                name = "Drilbur",
                text = {
                  "La prima carta {C:attention}di Pietra{} giocata",
                  "ogni round viene distrutta",
                  "e crea un {C:money}Tesoro{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{C:inactive,s:0.8}(Si evole dopo essersi attivata {C:attention,s:0.8}#1#{C:inactive,s:0.8} volte)"
                }
            },
            j_poke_excadrill = {
              name = "Excadrill",
              text = {
                "Le carte di {C:attention}Pietra{} giocata",
                "vengono distrutte e crea un {C:money}Tesoro{}",
                "{C:inactive}(Devi avere spazio)",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:mult}+#1#{} Mult per ogni carta in meno",
                "{C:attention}#2#{} nel tuo mazzo pieno",
                "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult)",
              }
            },
            j_poke_trubbish = {
              name = "Trubbish",
              text = {
                "Ottieni {C:chips}+#2#{} Fiche e guadagni",
                "{C:money}$#3#{} per ogni scarto rimasto se",
                "non effettui scarti fino",
                "alla fine del round",
                "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} Fiche)",
                "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#4#{C:inactive,s:0.8} volte)"
              }
            },
            j_poke_garbodor = {
                name = "Garbodor",
                text = {
                  "Ottieni {C:chips}+#2#{} Fiche per ogni scarto rimasto se",
                  "non effettui scarti fino",
                  "alla fine del round",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Ottieni un {C:attention}Patto Spazzatura{} se",
                  "non effettui scarti fino",
                  "alla fine del round",
                  "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_zorua = {
                name = "Zorua",
                text = {
                    "{V:1}Copia l'abilità del {C:attention}Jolly{} più a destra",
                    "{br:2.5}ERROR - CONTACT STEAK",
                    "Se viene giocata una mano mentre l'effetto di copia",
                    "è attivo, l'effetto viene rimosso",
                    "e rimane disattivato fino alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
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
                  "{C:attention}Sinistra Instabile",
                  "{C:chips}+#1#{} Fiche",
                  "{C:chips}-#3#{} Fiche per mano giocata",
                  "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round senza essere attivata)",
                }
            },
            j_poke_vanillish = {
                name = "Vanillish",
                text = {
                  "{C:attention}Sinistra Instabile",
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
            j_poke_frillish = {
                name = "Frillish",
                text = {
                    "Ottieni {C:chips}+#2#{} Fiche per ogni",
                    "{C:attention}figura{} scartata",
                    "{C:inactive}(Si evolve a {C:chips}+#1#{C:inactive} / +#3# Fiche)",
                } 
            },
            j_poke_jellicent = {
                name = "Jellicent",
                text = {
                  "Gains {C:chips}+#2#{} Fiche per ogni",
                  "{C:attention}figura{} scartata",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Ottieni {C:attention}il doppo{} se vengono scartati",
                  "{C:attention}Re{} o {C:attention}Regine{}",
                  "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} Fiche)",
                }
            },
            j_poke_ferroseed = {
                name = "Ferroseed",
                text = {
                  "Le carte {C:attention}multiuso{} e le carte {C:attention}Azzardo{} ",
                  "sono considerate anche carte {C:attention}d'acciaio{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_ferrothorn = {
              name = "Ferrothorn",
              text = {
                "Le carte {C:attention}multiuso{} e le carte {C:attention}Azzardo{} ",
                "sono considerate anche carte {C:attention}d'acciaio{}",
                "{br:2}ERROR - CONTACT STEAK",
                "Se la mano include un",
                "{C:attention}colore{}, riattiva tutte le",
                "carte {C:attention}d'Acciaio{} {C:attention}tenute{} in mano",
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
                    "{C:attention}#1#{} delle mani di poker più alte giocate",
                    "{br:3.5}text needs to be here to work",
                    "Dopo aver aperto {C:attention}#2# Buste d'espansione{}, crea un buono",
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
                    "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult){}",
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
                    "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult){}",
                }
            },
            j_poke_golett = {
                name = "Golett",
                text = {
                  "{C:purple}+#1# Carte Azzardo",
                  "{C:green}#4# possibilità su #5#{} per ogni carta {C:attention}tenuta{}",
                  "in mano di dare {X:mult,C:white}X#2#{} Mult",
                  "Garantito per ogni carta {C:attention}Azzardo{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} round)"
                }
            },
            j_poke_golurk = {
                name = "Golurk",
                text = {
                  "{C:purple}+#1# Carte Azzardo",
                  "{C:green}#3# possibilità su #4#{} per ogni carta {C:attention}tenuta{}",
                  "in mano di dare {X:mult,C:white}X#2#{} Mult", 
                  "Garantito per ogni carta {C:attention}Azzardo{}",
                }
            },
            j_poke_pawniard = {
                name = "Pawniard",
                text = {
                  "Ottieni {X:red,C:white}X#2#{} Mult quando una",
                  "{C:attention}Figura{} vine distrutta",
                  "{C:inactive}(Si evolve a {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_bisharp = {
              name = "Bisharp",
              text = {
                "Ottieni {X:red,C:white}X#2#{} Mult quando una",
                "{C:attention}figura{} viene distrutta",
                "{br:2}ERROR - CONTACT STEAK",
                "Se la mano giocata",
                "è una sola {C:attention}figura{}, distruggila",
                "{C:inactive}(Attualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Si evolve dopo aver distrutto {C:attention,s:0.8}#3#{C:inactive,s:0.8} Re)",
              }
            },
            j_poke_zweilous = {
                name = "Zweilous",
                text = {
                  "{X:mult,C:white} X#1# {} Mult se la mano giocata",
                  "è un {C:attention}Tris{}",
                  "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#2#{C:inactive,s:0.8} volte){}"
                }
            },
            j_poke_hydreigon = {
                name = "Hydreigon",
                text = {
                  "Se la mano giocata è un {C:attention}Tris{}",
                  "ogni carta che non assegna punti viene distrutta",
                  "{br:3}text needs to be here to work",
                  "Ottieni {X:mult,C:white} X#2# {} Mult quando una carta viene distrutta",
                  "{C:inactive}(Attualmente {X:mult,C:white} X#1# {C:inactive} Mult){}"
                }
            },
            j_poke_deino = {
                name = "Deino",
                text = {
                  "{X:mult,C:white} X#1# {} Mult se la mano giocata",
                  "è un {C:attention}Tris{}",
                  "{C:inactive,s:0.8}(Si evolve dopo essersi attivato {C:attention,s:0.8}#2#{C:inactive,s:0.8} volte){}"
                }
            },
            j_poke_litleo = {
                name = "Litleo",
                text = {
                    "{C:chips}+#1#{} Fiche se la mano",
                    "giocata include un {C:attention}Colore{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                } 
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "{C:chips}+#1#{} Fiche se la mano giocata include un {C:attention}Colore{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Crea una carta {C:pink}Energia{} se la giocata",
                    "include un {C:attention}Re{} o una {C:attention}Regina{}"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Se la {C:attention}prima mano giocata{} contiene",
                    "esattamente {C:attention}1{} carta non potenziata,",
                    "aggiunge un effetto {C:dark_edition}Foil{}, {C:dark_edition}Olografico{},",
                    "o {C:dark_edition}Policromo{} alla carta",
                } 
            },
            j_poke_pumpkaboo_small = {
                name = 'Pumpkaboo (Piccolo)',
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "create una  carta{C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_average = {
                name = 'Pumpkaboo (Medio)',
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_large = {
                name = 'Pumpkaboo (Grande)',
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_super = {
                name = 'Pumpkaboo (Super)',
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{C:inactive,s:0.8}(Si evolve tramite {C:attention,s:0.8}Cavo di Collegamento{C:inactive,s:0.8})"
                }
            },
            j_poke_gourgeist_small = {
                name = "Gourgeist (Piccolo)",
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Guadagni {C:money}$#3#{} quando una carta{C:spectral}Spettrale{}",
                  "viene usata e applica un adesivo{X:psychic,C:white}Psico{}",
                  "al Jolly {C:attention}più a sinistra{}"
                }
            },
            j_poke_gourgeist_average = {
                name = "Gourgeist (Medio)",
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Guadagni {C:money}$#3#{} quando una carta{C:spectral}Spettrale{}",
                  "viene usata e applica un adesivo{X:psychic,C:white}Psico{}",
                  "al Jolly {C:attention}più a sinistra{}"
                }
            },
            j_poke_gourgeist_large = {
                name = "Gourgeist (Grande)",
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Guadagni {C:money}$#3#{} quando una carta{C:spectral}Spettrale{}",
                  "viene usata e applica un adesivo{X:psychic,C:white}Psico{}",
                  "al Jolly {C:attention}più a sinistra{}"
                }
            },
            j_poke_gourgeist_super = {
                name = "Gourgeist (Super)",
                text = {
                  "Dopo aver scartato {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jack,",
                  "crea una carta {C:spectral}Spettrale{}",
                  "{C:inactive}(Devi avere spazio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Guadagni {C:money}$#3#{} quando una carta{C:spectral}Spettrale{}",
                  "viene usata e applica un adesivo{X:psychic,C:white}Psico{}",
                  "al Jolly {C:attention}più a sinistra{}"
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
                    "{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolve tramite carta {C:attention,s:0.8}Pietratuono{C:inactive,s:0.8})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult per ogni",
                    "Jolly {X:lightning, C:black}Elettro{} in possesso",
                    "{C:inactive}(Attualmente {X:red,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_poke_rockruff = {
              name = "Rockruff",
              text = {
                "Ogni carta che {C:attention}non è una figura{}",
                "da {C:mult}+#1#{} Mult quando assegna putni",
                "{C:inactive,s:0.8}(Si evolve dopo che {C:attention,s:0.8}#2#{C:inactive,s:0.8} carte pari hanno assegnato punti)",
                "{C:inactive,s:0.8}(Si evolve dopo che{C:attention,s:0.8}#3#{C:inactive,s:0.8} carte dispari hanno assegnato punti)"
              }
            },
            j_poke_lycanroc_day = {
              name = "Lycanroc (Giorno)",
              text = {
                "Ogni carta {C:attention}pari{} giocata",
                "data {C:mult}+#1#{} Mult quando assegna punti",
                "{br:3}ERROR - CONTACT STEAK",
                "Se la prima mano giocata ha",
                "esattamente {C:attention}1{} carta ottieni", 
                "{C:chips}+#2#{} Fiche e {C:blue}+1{} mani",
                "per questo round"
              }
            },
            j_poke_lycanroc_night= {
              name = "Lycanroc (Mezzanotte)",
              text = {
                "Ogni carta {C:attention}dispari{} giocata",
                "da {C:mult}+#1#{} Mult quando assegna punti",
                "{br:3}ERROR - CONTACT STEAK",
                "Quando un Buio viene selezionato",
                "ottieni {C:chips}+#2#{} mani, {C:mult}+#3#{} scarti", 
                "e {C:attention}+#2#{} dimensione della mano per questo round",
              }
            },
            j_poke_lycanroc_dusk = {
              name = "Lycanroc (Crepuscolo)",
              text = {
                "Ogni carta che non è una {C:attention}figura{}",
                "da {C:mult}+#1#{} Mult quando assegna punti",
                "{br:3}ERROR - CONTACT STEAK",
                "Riattiva la {C:attention}prima{} carta che",
                "assegna punti con un valore {C:attention}pari{} e",
                "la {C:attention}prima{} carta con valore",
                "{C:attention}Dispari{} una volta per round"
              }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} Fiche se la mano",
                  "giocata non include carte {C:hearts}#2#{} che assegnano punti",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Previene la morte se le fiche assegnate sono",
                  "almeno {C:attention}50%{} delle fiche richieste",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_nickit = {
                name = "Nickit",
                text = {
                    "Guadagni {C:money}$#1#{}",
                    "alla fine del round",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_thievul = {
                name = "Thievul",
                text = {
                    "Guadagni {C:money}${} alla fine del round",
                    "equivalente al {C:attention}doppio{} del valore di vendita", 
                    "del {C:attention}Jolly{} più a sinistra",
                    "{C:inactive,s:0.8}(Tranne questo Jolly)",
                    "{C:inactive}(Attualmente {C:money}$#1#{C:inactive}, Massimo di {C:money}$15{C:inactive})",
                } 
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult e guadagni {C:money}$#2#{}",
                    "se la mano giocata include",
                    "una {C:attention}Scala{}",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} mult e guadagna {C:money}$#2#{}",
                    "se la mano giocata include",
                    "una {C:attention}Scala{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Quando viene venduto, aggiunge {C:money}$#1#{} al valore di vendita",
                  "di ogni Jolly in tuo possesso e converte tutte le carte ",
                  " {C:attention}{C:spades}#2#{} tenute in mano",
                  "{C:inactive}(Si evolve quando una scala reale viene giocata){}",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:red,C:white} X#4# {} mult per ogni {C:money}${} del",
                  "valore di vendita di tutti i Jolly posseduti",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Se la mano giocata è una {C:attention}Scala Reale{}",
                  "aggiunge {C:money}$#1#{} al valore di vendita di ogni Jolly",
                  "{C:inactive}(Attualmente {X:red,C:white} X#5# {C:inactive} mult){}",
                  "{C:inactive}(Si evolve a {C:money}$#2#{}{C:inactive}/#3# valore di vendita totale dei Jolly)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:red,C:white} X#2# {} mult per ogni {C:money}${} del",
                  "valore di vendita di tutti i Jolly posseduti",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Se la mano giocata è una {C:attention}Scala Reale{}",
                  "e non hai {C:attention}Frecce Dreepy{}",
                  "crea {C:attention}2 Frecce Dreepy {}{C:dark_edition}Negative{}",
                  "{C:inactive}(Attualmente {X:red,C:white} X#3# {C:inactive} mult){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Freccia Dreepy",
                text = {
                  "Quando viene venduta, aggiunge {C:money}$#1#{} di valore di vendita",
                  "a ogni Jolly e converte tutte le carte {C:attention}tenute{}",
                  "in mano in {C:spades}#2#{}",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "Qwilfish (Forma di Hisui)",
                text = {
                    "{C:purple}+#1# Carte Azzardo {C:inactive}(1 ogni #2# carte)",
                    "Ottieni {C:chips}+#3#{} Fiche quando peschi",
                    "una {C:attention}Carta Azzardo{}",
                    "{C:inactive}(Si evolve a {C:chips}+#4#{C:inactive} / +#5# Fiche)",
                }
            },
            j_poke_overqwil = {
                name = "Overqwil",
                text = {
                    "{C:purple}+#1# Carte Azzardo {C:inactive}(1 ogni #2# carte)",
                    "Ottieni {C:chips}+#3#{} Fiche quando peschi",
                    "una {C:attention}Carta Azzardo{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}Dimezza{} le fiche dopo aver giocato la mano",
                    "{C:inactive}(Attualmente {C:chips}+#4#{C:inactive} Fiche)",
                }
            },
            j_poke_wyrdeer = {
                name = "Wyrdeer",
                text = {
                    "{C:purple}+#1# Chiaroveggenza",
                    "Aggiunge il {C:attention}doppio{} del valore della carta più {C:attention}alta{}",
                    "{C:attention}vista nel mazzo{} al Mult",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Ottieni {C:purple}+#2# Chiaroveggenza{} quando una mano viene giocata",
                    "{C:inactive,s:0.8}(Si resetta alla fine del round)",
                    
                }
            },
            j_poke_kleavor = {
                name = 'Kleavor',      
                text = {
                    "Quando viene selezionato un Buio, distruggi",
                    "il Jolly a destra e ottieni {C:mult}+#2#{} Mult",
                    "e aggiunge una carta di {C:attention}Pietra{} al mazzo con un'edizione",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Olografiaca{}, o {C:dark_edition}Policroma{} se",
                    "il Jolly distrutto era non {C:green}Non comune{} o più raro",
                    "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_ursaluna = {
              name = "Ursaluna",
              text = {
                "Ottiene {C:mult}+#2#{} Mult e crea",
                "un {C:item}Oggetto{} con edizione {C:dark_edition}Policroma{} quando un",
                "{C:attention}Pacchetto{} viene saltato {C:inactive,s:0.8}(Devi avere spazio)",
                "{C:inactive}(Attualmente {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_tarountula = {
                name = "Tarountula",
                text = {
                    "{C:purple}+#1# Carte Azzardo{}, {C:attention}+#3#{} dimensione della mano",
                    "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_spidops = {
                name = "Spidops",
                text = {
                    "{C:purple}+#1# Carte Azzardo, {C:attention}+#2#{} dimensione della mano",
                    "Se la prima mano giocata",
                    "include solo carte {C:attention}Azzardo{}, ottieni",
                    "{C:attention}+#2#{} dimensione della mano per",
                    "ogni carta nella mano giocata per tutto il round"
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Se la mano giocata include un {C:attention}#3#{} guadagni {C:chips}+#2#{} fiche ",
                  "Il {C:attention}valore{} richiesto aumenta ad ogni attivazione",
                  "{C:inactive,s:0.8}(Se il valore raggiunge il massimo, torna il minimo)",
                  "{C:inactive}(Attualmente {C:chips}+#1#{C:inactive} fiche)",
                  "{C:inactive,s:0.8}(Si evolve quando hai un Jolly {X:fire,C:white,s:0.8}di tipo Fuoco{C:inactive,s:0.8})",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Se la mano giocata include un {C:attention}#3#{} guadagni {C:chips}+#2#{} Fiche ",
                  "Il {C:attention}valore{} aumenta ad ogni attivazione",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Le fiche aumentano di {C:chips}+2{} per ogni",
                  "Jolly di tipo {X:fire,C:white}Fuoco{} in possesso",
                  "{C:inactive,s:0.8}(Se il valore raggiunge il massimo, ritorna al minimo)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} chips)",
                }
            },
            j_poke_charcadet = {
              name = "Charcadet",
              text = {
                "Ottieni {C:mult}+#2#{} Mult dopo che la mano",
                "giocata assegna punti",
                "{C:inactive,s:0.8}(Si resetta alla fine round)",
                "{C:inactive,s:0.8}(Si evolve tra {C:attention,s:0.8}Pietralbore{C:inactive,s:0.8} or {C:attention,s:0.8}Neropietra{C:inactive,s:0.8})",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_armarouge = {
              name = "Armarouge",
              text = {
                "{X:mult,C:white} X#1# {} Mult",
                "Perdi {X:mult,C:white} X#2# {} Mult dopo che la mano",
                "giocata assegna punti",
                "{C:inactive,s:0.8}(Si resetta alla fine round)",
              }
            },
            j_poke_ceruledge = {
              name = "Ceruledge",
              text = {
                "Ottieni {X:mult,C:white} X#2# {} Mult dopo che la mano giocata",
                "assegna punti e assorbi {C:money}$#3#{}",
                "da un altro Jolly casuale",
                "{C:inactive,s:0.8}(Si resetta alla fine del round)",
                "{C:inactive}(Attualmente {X:mult,C:white} X#1# {C:inactive} Mult)",
              }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Le carte giocate danno {C:mult}+#1#{} mult.",
                  "Quando un Buio viene selezionato",
                  "{br:3}ERROR - CONTACT STEAK",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono carte {C:attention}d'acciaio{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Le carte giocate danno {C:mult}+#1#{} mult.",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Quando un Buio viene selezionato",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono carte {C:attention}d'acciaio{}",
                  "{C:inactive,s:0.8}(Si evolve dopo {C:attention,s:0.8}#2#{C:inactive,s:0.8} round)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Le carte giocate danno {C:mult}+#1#{} mult.",
                  "Quando un Buio viene selezionato",
                  "penalizza {C:attention}#3#{} carte nel tuo mazzo",
                  "che non sono {c:attention}d'acciaio{} carte.",
                  "Le carte {C:attention}d'acciaio{} giocate",
                  "{br:4}ERROR - CONTACT STEAK",
                  "si comportano come carte di {C:attention}Vetro{}"
                }
            },
            j_poke_wiglett = {
                name = "Wiglett",
                text = {
                    "{C:mult}+#3#{} Mult se la mano giocata",
                    "include un {C:attention}Tris{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:chips}+#2#{} Fiche se la mano giocata",
                    "include un {C:attention}5{}, un {C:attention}6{}, o un {C:attention}7{}",
                    "{C:inactive,s:0.8}(Evolve dopo {C:attention,s:0.8}#1#{C:inactive,s:0.8} round)"
                } 
            },
            j_poke_wugtrio = {
                name = "Wugtrio",
                text = {
                    "{X:red,C:white} X#1# {} Mult se la mano giocata",
                    "include un {C:attention}Tris{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:chips}+#2#{} Fiche se la mano giocata",
                    "contiene un {C:attention}5{}, un {C:attention}6{}, o un{C:attention}7{}",
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
                  "{C:attention}+#1#{} Slot Buoni nel negozio",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}Ottieni Patto doppio{}",
                  "{C:attention}+#1#{} slot carte nel negozio",
                  "{C:attention}+#1#{} Slot Booster Pack nel negozio",
                  "{C:attention}+#1#{} Slot Buoni nel negozio",
                }
            },
            j_poke_kingambit = {
                name = "Kingambit",
                text = {
                  "{X:red,C:white}X#1#{} Mult",
                  "Se la mano include l'unico",
                  "{C:attention}Re{} del tuo mazzo completo, ogni",
                  "carta giocata che {C:attention}non è una figura{} ottiene",
                  "metà del {X:mult,C:white}X{} Mult di questo Jolly quando assegna punti",
                }
            },
            j_poke_farigiraf = {
              name = "Farigiraf",
              text = {
                "{C:attention}Ottieni{} {C:spectral}Criptide{}",
                "da alla prima e all'ultima {C:attention}figura{}",
                "{X:mult,C:white}X#1#{} Mult quando assegnano punti",
                "se la mano giocata include una {C:attention}Doppia Coppia{}",
              }
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Scrigno)",
                text = {
                  "Le carte {C:attention}dorate{} giocate",
                  "{br:3}ERROR - CONTACT STEAK",
                  "danno {C:money}$#1#{} quando assegnano punti",
                  "Salta un {C:attention}Booster Pack{} per...?",
                  "{C:inactive,s:0.8}(Si evolve dopo guadagnato o speso {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3#)"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Errante)",
                text = {
                    "Guadagna {C:money}${}",
                    "{S:1.1,C:red,E:2}autodistruzione{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                  "Le carte {C:attention}dorata{} giocate {C:red}spendono{} {C:money}$#2#{}",
                  "quando assegnano punti e aumentano il moltiplicatore",
                  "di questo Jolly di {X:red,C:white}X#3#",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Questo jolly non può essere disattivato",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Si resetta alla fine del round)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Crea consumabili",
                    "quando ne ottieni?",
                    "Crea {C:attention}#1#{}? {C:attention}Patti casuali{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult per ogni jolly",
                    "di {C:pink}Tipo{} diverso",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Possono apparire {C:attention}Pokemon{}", 
                    "della stessa linea evolutiva",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Pietrastante',
                text = {
                    "I Pokemon {C:attention}non possono {}evolversi",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "I Pokemon {C:attention}Base{} e {C:attention}Baby{} danno {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_tall_grass = {
                name = 'Erba alta',
                text = {
                    "{C:green}#1# possibilità su #2#{} di creare",
                    "{C:attention}Jolly{} Pokemon {C:chips}Comuni{} ",
                    "quando giochi una mano",
                    "Assegna {C:attention}sempre{} punti se ",
                    "la mano include una carta {C:attention}Multiuso{}",
                    "{C:inactive}(Devi avere spazio){}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Onigiri",
                text = {
                  "Quando selezioni un Buio",
                  "crea una carta {C:pink}Energia{} {C:colorless}Incolore ",
                  "{C:inactive}({C:attention}#1#{C:inactive} round rimanenti){}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "Rovine d'Alfa",
                text = {
                  "Quando viene selezionato un {C:attention}Buio{},",
                  "crea {C:attention}3{} {C:attention}Unown {C:dark_edition}Negativi{} ",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Dopo che un {C:attention}Unown{} si attiva",
                  "si fonde con questo Jolly e ottiene{C:mult}+#1#{} Mult",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Vendi questo Jolly per un {C:attention}premio{}", 
                  "basato sugli Unown {C:attention}fusi",
                  "{C:inactive}(Attualmente {C:mult}+#3#{C:inactive} Mult e {C:attention}#2#{C:inactive} Unown fusi)",
                }
            },
            j_poke_unown_swarm = {
                name = "Sciame Unown",
                text = {
                  "{C:attention}Ottieni{} una carta {C:spectral}Soul{}",
                  "Ogni Jolly {C:purple}Leggendario{} Joker da",
                  "{C:mult}+#1#{} Mult e {X:mult,C:white}X#2#{} Mult"
                }
            },
            j_poke_treasure_eatery = {
                name = "Oro in Bocca",
                text = {
                  "Quando un Buio viene selezionato",
                  "cambia il {C:pink}tipo{} del jolly più a sinistra",
                  "nel {C:pink}tipo{} del Jolly più a destra",
                  "{C:attention}Cambiatore di Tipo{}",
                  "{C:inactive}({C:attention}#1#{C:inactive} round rimasti){}"
                }
            },
            j_poke_rival = {
                name = "Il Rivale",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Se il punteggio {C:attention}>#3#X{} delle fiche richieste dal Buio",
                    "{S:1.1,C:red,E:2}Si autodistrugge e ottieni {C:money}$#2#",
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
            j_poke_professor = {
                name = "Professore",
                text = {
                    "Dopo {C:attention}#1#{} round, vendi questo Jolly",
                    "per creare un patto {C:attention}Starter{}",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#){}"
                }
            },
            j_poke_mystery_egg = {
                name = "Uovo misterioso",
                text = {
                  "Quando si schiude diventa un Jolly {C:attention}Base{} o",
                  "{C:attention}Baby{} dopo {C:attention}#1#{} round",
                  "con {C:pink}+1{} Energy se apllicabile"
                }
            },
            j_poke_billion_lions = {
                name = 'Un miliardo di leoni',
                text = {
                    "Quando un buio viene selezionato",
                    "distruggi i Jolly di ogni {C:pink}tipo{} in tuo possesso",
                    "e guadagna {X:mult,C:white}X#2#{} Mult per ognuno",
                    "Questo Jolly si {S:1.1,C:red,E:2}autodistrugge{} quando non ha più leoni",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#1#{C:inactive} Mult, {C:attention}#3#{C:inactive} Leoni)"
                } 
            },
            --[[ Egg dynatext, not used right now
            j_poke_mystery_egg = {
                name = "Mystery Egg",
                text = {
                    "This Egg needs more time to hatch.",
                    "Keep it secret. Keep it safe.",
                    "It looks cold and lonely.",
                    "Follow that egg!",
                    "Is it supposed to glow?",
                    "I wonder what's inside?",
                    "It moves around inside sometimes.",
                    "It's a secret to everybody.",
                    "Not to be put on a sandwich.",
                }
            },--]]
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
                    "Inizia la partita con il buono",
                    "{C:tarot,T:v_crystal_ball}#1#{}",
                    "e {C:attention}2{} copie",
                    "di {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            sleeve_poke_ampedsleeve = {
                name = "Mazzo Amplificato",
                text = {
                    "Inizia la partita con il buono",
                    "{C:tarot,T:v_poke_energysearch}#1#{}",
                    "e una copia di",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
            sleeve_poke_futuresleeve = {
                name = "Mazzo Futuro",
                text = {
                    "{C:purple}+#1# Preveggenza{}",
                } 
            },
            sleeve_poke_stadiumsleeve = {
                name = "Mazzo Stadio",
                text = {
                    "Inizia la partita con",
                    "delle carte extra {C:attention}Bonus, Mult,",
                    "{C:attention}Multiuso, di Vetro, d'Acciaio, di Pietra,",
                    "{C:attention}Dorate{}, e {C:attention}Fortunate{}"
                } 
            },
            sleeve_poke_megasleeve = {
                name = "Mega Sleeve",
                text = {
                    "Inizia la partita con un buono",
                    "{C:tarot,T:v_reroll_surplus}#2#{} e {C:tarot,T:v_reroll_glut}#3#{}",
                    "e una carta {C:spectral,T:c_poke_megastone}#1#{}",
                    "{C:red}-#4#{} slot nel negozio"
                } 
            },
            sleeve_poke_vendingsleeve = {
                name = "Vending Sleeve",
                text = {
                    "Dopo aver sconfitto un",
                    "{C:attention}Buio Boss pari{},ottieni dei",
                    "{C:attention,T:tag_vremade_double}#1#",
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
            c_poke_double_rainbow_energy = {
                name = "Doppia energia arcobaleno",
                text = {
                    "{C:pink}Energia{} al Jolly più a sinistra",
                    "o selezionato {C:red}t{C:attention}w{C:green}i{C:blue}c{C:purple}e{}",
                    "non ottieni interessi round",
                    "{C:inactive}(Massimo {C:attention}#1#{C:inactive} utilizzi per Jolly)",
                },
            },
            c_poke_fake_banker = {
                name = 'Desiderio dei soldi',
                text = {
                    "{C:dark_edition}Desidero soldi!",
                }
            },
            c_poke_fake_booster = {
                name = 'Booster Wish',
                text = {
                    "{C:dark_edition}Desidero delle opzioni!",
                }
            },
            c_poke_fake_power = {
                name = 'Desiderio di Potere',
                text = {
                    "{C:dark_edition}Desidero Potere!",
                }
            },
            c_poke_fake_negging = {
                name = 'Desiderio negativo',
                text = {
                    "{C:dark_edition}Desidero degli amici!",
                }
            },
            c_poke_fake_copy = {
                name = 'Desiderio di copia',
                text = {
                    "{C:dark_edition}Desidero dell'altruismo!",
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
            tag_poke_starter_tag = {
                name = "Patto Starter",
                text = {
                    "Ottieni un {C:attention}Pacchetto Starter gratuito",
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
                name = "Megaball",
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
                name = "Tipo",
                text = {
                  "{X:bird,C:white}Uccello{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Antico",
                text = {
                    "Effetto basato sul",
                    "numero {C:attention}#1#{}",
                    "di Mani di Poker",
                    "{C:inactive}(Gli effetti sono {C:attention}cumulativi{C:inactive})"
                }
            },
            energize = {
                name = "Energia",
                text = {
                  "Aumenta permanentemente",
                  "{C:mult}Mult{}, {C:chips}Fiche{}, {C:money}${} e {X:mult,C:white}X{} Mult",
                  "di questo Jolly"
                }
            },
            eitem = {
                name = "Carta Evoluzione",
                text = {
                    "Quando viene usata, evolve il Jolly",
                    "più a sinistra o selezionato {C:attention}se possibile{}",
                    "alla fine del round",
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
            typechangerother = {
                name = "Cambiatore di Tipo",
                text = {
                    "Applica un adesivo {V:1}#1#{} ",
                }
            },
            typechangerpoke = {
                name = "Cambiatore di Tipo Pokemon",
                text = {
                    "Si applica un adesivo",
                    "{V:1}#1#{}"
                }
            },
            basic = {
                name = "Base",
                text = {
                    "Un Jolly Pokémon",
                    "che si è {C:attention}Evoluto{}"
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
                    "che si è {C:attention}Evoluto{} due volte"
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
                    "verso il guadagno di {C:chips}fiche{}",
                    "aumentando di {C:chips}+1{}"
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
            merge = {
                name = "Fondi",
                text = {
                  "Rimuovi carte e aggiungile",
                  "a questo jolly",
                  "Tasto destro per vedere ",
                  "vedere le carte fuse",
                  "{C:inactive}(I jolly fusi non possono essere copiati){}"
                }
            },
            rewards_ruins_of_alph = {
                name = "Premi",
                text = {
                  "{C:attention}#1#{} - Jolly {C:attention}Safari{}",
                  "{C:attention}#2#{} - {C:attention}Duplica{} un Jolly casuale",
                  "{C:attention}#3#{} - {C:attention}Cianografia{}",
                  "{C:attention}#4#{} - {C:attention}Sciame di Unown",
                  "{C:inactive}(I premi non sono cumulativi){}"
                }
            },
            scry_cards = {
                name = "Chiaroveggenza",
                text = {
                    "Vedi le carte",
                    "in cima al mazzo"
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
            dril_treasure = {
                name = "Tesoro",
                text = {
                    "{C:green}30%{} - {C:item}Pietra {C:attention}Evoluzione  ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}2 Evolution {C:item}Stones",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}5%{} - {C:money}$20{}             ",
                }
            },
            exdril_treasure = {
                name = "Tesoro",
                text = {
                    "{C:green}30%{} - {C:item}Pietra {C:attention}Evoluzione  ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:item}2 Pietre {C:attention}Evoluzione",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}4%{} - {C:money}$20{}             ",
                    "{C:green}1%{} - {C:attention}Mega Pietra    ",
                }
            },
            pickup = {
              name = "Raccogli",
              text = {
                "{C:green}34%{} - {C:attention}Carta {C:item}Oggetto{}",
                "{C:green}25%{} - {C:attention}Avanzi",
                "{C:green}25%{} - {C:attention}Poke Ball",
                "{C:green}15%{} - {C:attention}Mega Ball",
                "{C:green}1%{} - {C:attention}Ultra Ball",
              }
            },
            poke_artist = {
              name = "Artista",
              text = {
                "{V:1}#1#"
              }
            },
            pokeballs_group = {
              name = "Sfere Poke",
              text = {
                "Crea un Jolly di",
                "una certa qualità",
              }
            },
            holding = {
                name = "Raccolta",
                text = {
                  "Ottieni questo jolly",
                  "e {C:attention}#1#{} carta",
                  "{C:inactive}(Devi avere spazio){}"
                }
            },
            holding_an = {
                name = "Raccolta",
                text = {
                  "Ottieni questo Jolly",
                  "e {C:attention}#1#{} carta",
                  "{C:inactive}(Devi avere spazio){}"
                }
            },
            percent_chance = {
                name = "Possibilità in percentuale",
                text = {
                  "{C:green}#1#%{} possibilità",
                  "per un {C:attention}effetto{} di attivarsi",
                  "{C:inactive}(Le probabilità non possono aumentare){}"
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
            poke_egg_tip = {
              name = "Uovo misterioso",
              text = {
                "Sembra freddo e solo."
              }
            },
            poke_top_cards = {
              name = "Carte in cima",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
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
              name = "Sinistra Instabile",
              text = {
                "Questo jolly si attiva quando è",
                "nella positizione {C:attention}più a sinistra{}",
                "{C:inactive}(Ignora Pokemon{C:attention}Instabile{C:inactive})"
              }
            },
            poke_volatile_right = {
              name = "Destra Instabile",
              text = {
                "Questo jolly si attiva quando è",
                "nella positizione {C:attention}più a destra{}",
                "{C:inactive}(Ignora Pokemon{C:attention}Instabile{C:inactive})"
              }
            },
            sketch = {
              name = "Schizzo",
              text = {
                "Copia l'abilità del Jolly finchè non viene venduto,",
                "distrutto o finchè non copi un'altra abilità",
                "Copia appare come consiglio",
                "e nel menu del Pokedex",
                "Sketch si resetta quando un Jolly viene copiato"
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
            pokemononly_tooltip = {
              name = "Solo Pokemon",
              text = {
                "Appariranno soltanto Jolly {C:attention}Pokemon{}",
              }
            },
            gen1_tooltip = {
              name = "Gen 1 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the first",
                "generation will appear"
              }
            },
            gen2_tooltip = {
              name = "Gen 2 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the second",
                "generation will appear"
              }
            },
            gen3_tooltip = {
              name = "Gen 3 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the third",
                "generation will appear"
              }
            },
            gen4_tooltip = {
              name = "Gen 4 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the fourth",
                "generation will appear"
              }
            },
            gen5_tooltip = {
              name = "Gen 5 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the fifth",
                "generation will appear"
              }
            },
            gen6_tooltip = {
              name = "Gen 6 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the sixth",
                "generation will appear"
              }
            },
            gen7_tooltip = {
              name = "Gen 7 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the seventh",
                "generation will appear"
              }
            },
            gen8_tooltip = {
              name = "Gen 8 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the eighth",
                "generation will appear"
              }
            },
            gen9_tooltip = {
              name = "Gen 9 Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers from the ninth",
                "generation will appear"
              }
            },
            hazards_on_tooltip = {
              name = "Hazards Allowed",
              text = {
                "{C:attention}Pokemon{} Jokers with",
                "{C:purple}Hazards{} will appear"
              }
            },
            shinyplayingcard_tooltip = {
              name = "Shiny on Playing Cards",
              text = {
                "Allows {C:attention}playing cards{} to",
                "have the {C:dark_edition}Shiny{} edition"
              }
            },
            detailed_tooltips_tooltip = {
              name = "Detailed Tooltips",
              text = {
                "All tooltips will be displayed",
                "Turning this off will remove most",
                "tooltips from Pokemon Jokers",
              }
            },
            previous_evo_stickers_tooltip = {
              name = "Previous Evo Stickers",
              text = {
                "Previous evolutions of",
                "winning Jokers also",
                "win the current run",
              }
            },
            legacycontent_tooltip = {
              name = "Legacy Content",
              text = {
                "Enable content that",
                "has been removed"
              }
            },
            jokecontent_tooltip = {
              name = "Joke Content",
              text = {
                "Enable content that is",
                "meant to be humorous"
              }
            },
            splashcard_tooltip = {
              name = "Pokemon Splash Card",
              text = {
                "Replaces the usual splash card",
                "with a random Pokemon Joker",
              }
            },
            title_tooltip = {
              name = "Pokemon Title Screen",
              text = {
                "Replaces the usual title screen",
                "with the Pokermon version",
              }
            },
            altart_tooltip = {
              name = "Alt Art",
              text = {
                "Uses alternate sprites for",
                "certain Pokemon Jokers",
              }
            },
            animation_tooltip = {
              name = "Enable Animations",
              text = {
                "Enables animated sprites for",
                "certain Pokemon Jokers",
              }
            },
            allowpokeballs_tooltip = {
              name = "Allow Pokeballs",
              text = {
                "Allow Pokeball {C:item}items{} to appear",
              }
            },
            pokemaster_tooltip = {
              name = "Pokemon Master Mode",
              text = {
                "Pokemon Only setting applied",
                "Additional Stakes are available"
              }
            },
            designed_by = {
              name = "Designed By",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "Reusable",
              text = {
                "Not consumed when used",
                "{C:inactive,s:0.8}(Excluded by {C:attention,s:0.8}Twisted Spoon{C:inactive,s:0.8})"
              }
            },
            sylveon_tag_pool = {
              name = "Tag Pool",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "Tag Pool",
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
                    "Can only be obtained",
                    "through {C:attention}Evolution{}",
                    "or certain {C:attention}Pokeball Items{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Pink Seal",
                text = {
                    "Crea una carta {C:pink}Energia{}",
                    "dello stesso {C:attention}tipo di un Jolly in tuo",
                    "possesso se assegna punti",
                    "{C:attention}durante la prima mano{} del round",
                    "{C:inactive}(Devi avere spazio){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Sigillo argento",
                text = {
                  "Crea una carta {C:item}Oggetto{}",
                  "e viene {C:attention}scartata{} se {C:attention}tenuta in mano{}",
                  "mentre i punti vengono assegnati"
                }
            },
            --[[
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
            --]]
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
                name = "Poké Pacchetto",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Poké Pacchetto",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Poké Pacchetto Jumbo",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Poké Pacchetto Mega",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Poké Pacchetto",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Poké Pacchetto",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Poké Pacchetto Jumbo",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Poké Pacchetto Mega",
                text = {
                    "Scegli {C:attention}#1#{} tra",
                    "{C:attention}#2#{} Carte {C:item}Oggetto{} e",
                    "{C:attention}#3#{} Carta {C:pink}Energia{}",
                },
			},
            p_poke_pokepack_wish_pack = {
                name = "Pacchetto Desiderio",
                text = {
                    "{C:dark_edition}Esprimi un desiderio!{}",
                },
            },
            p_poke_pokepack_starter_pack = {
                name = "Pacchetto Starter",
                text = {
                    "Scegli un {C:attention}#1# Pokemon Starter{}",
                    "tra {C:attention}#2#{} Jolly"
                },
            },
            poke_hazards = {
                name = "Carte Azzardo",
                text = {
                    "Quando un {C:attention}Buio{} viene selezionato,",
                    "{C:attention}#1#{} carte non potenziate del tuo mazzo",
                    "diventano {C:attention}Carte Azzardo{}",
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
            c_poke_goodasgold = "Buono come il pane",
            c_poke_parenthood = "Genitorialità",
            c_poke_littlecup = "Coppa Piccoli",
            c_poke_hammertime = "Hammertime"
        },
        dictionary = {
            k_energy = "Energia",
            k_item = "Oggetto",
            k_poke_pocket_pack = "Poké Pacchetto",
            k_poke_wish_pack = "Pacchetto Desiderio",

            k_poke_safari = "Safari",
            k_poke_mega = "Mega",

            b_save = "SAVE",
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
            poke_settings_pokemon_aprilfools = "Contenuto da Pesce d'Aprile?",
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
            poke_crack_ex = "CRACK!",
            poke_shake_ex = "Shake!",
            poke_closed_ex = "Closed!",
            poke_reload_ex = "Reload!",
            poke_shadow_tag_ex = "Shadow Tag!"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Pink Seal",
            poke_silver_seal = "Silver Seal",

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
        tutorial = {
          poke_intro_1 = {
          "Ciao, sono il {C:attention}Prof Jimbo{}!",
          "Benvenuto nel mondo dei {C:attention}Pokermon{}!",
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

