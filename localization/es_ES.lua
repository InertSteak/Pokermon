return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Mazo de Entrenador",
                text = {
                    "Empezar partida con el",
                    "vale {C:tarot,T:v_poke_goodrod}#1#{}",
                    "y una carta {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            --Dato curioso: este y el mazo luminoso tenían sus descripciones mezcladas
            b_poke_obituarydeck = {
                name = "Mazo Obituario",
                text = {
                    "Todas las cartas tienen un {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Mazo Luminoso",
                text = {
                    "Todos los Comodines se crean",
                    "con pegatinas de {C:pink}Tipo{} aleatorias",
                    "y tienen {C:attention}+1{} {C:pink}Energía{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Cámara Chartreuse",
                text = {
                    "Los Tipos aleatorios son",
                    "debilitados cada mano",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Crea un comodín",
                    "{C:attention}Básico{} aleatorio",
                    "{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_greatball = {
                name = "Super Ball",
                text = {
                    "Crea un comodín",
                    "{C:attention}Fase 1{} aleatorio",
                    "{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_moonstone = {
                name = "Piedra Lunar",
                text = {
                    "Crea una carta {C:attention}Luna{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_sunstone = {
                name = "Piedra Solar",
                text = {
                    "Crea una carta {C:attention}Sol{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_waterstone = {
                name = "Piedra Agua",
                text = {
                    "Crea una carta {C:attention}Hierofante{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_thunderstone = {
                name = "Piedra Trueno",
                text = {
                    "Crea una carta {C:attention}Diablo{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_firestone = {
                name = "Piedra Fuego",
                text = {
                    "Crea una carta {C:attention}Enamorados{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_leafstone = {
                name = "Piedra Hoja",
                text = {
                    "Crea una carta {C:attention}Mundo{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_linkcable = {
                name = "Cable Link",
                text = {
                    "Crea una carta {C:attention}Muerte{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_leftovers = {
                name = "Restos",
                text = {
                    "Crea una carta {C:attention}Colgado{}",
                    "{C:attention}Carta Equipable{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            },
            c_poke_leek = {
                name = "Puerro",
                text = {
                    "Crea una carta {C:attention}Rueda de la Fortuna{}",
                    "{C:attention}Carta Equipable{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            },
            c_poke_thickclub = {
                name = "Hueso Grueso",
                text = {
                    "Crea una carta {C:attention}Fuerza{}",
                    "{C:attention}Carta Equipable{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            },
            c_poke_teraorb = {
                name = "Orbe Tera",
                text = {
                    "Aplica una pegatina de",
                    "{C:pink}Tipo{} aleatoria",
                    "al Comodín más a la izquierda o seleccionado{}", 
                    "y le da {C:attention}+1{} {C:pink}Energía{}"
                },
            },
            c_poke_metalcoat = {
                name = "Revestimiento Metálico",
                text = {
                    "Aplica una pegatina {C:metal}Metal{}",
                    "al Comodín más a la izquierda o seleccionado.",
                    "Crea una carta {C:attention}Carro{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_dragonscale = {
                name = "Escama Dragón",
                text = {
                    "Aplica una pegatina {C:dragon}Dragón{}",
                    "al Comodín más a la izquierda o seleccionado.",
                    "Crea una carta {C:attention}Emperador{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_kingsrock = {
                name = "Roca del Rey",
                text = {
                    "Convierte {C:attention}#1#{} carta",
                    "seleccionada en un {C:attention}Rey{}",
                    "{C:attention}Carta de Evolución{}",
                },
            },
            c_poke_upgrade = {
                name = "Mejora",
                text = {
                    "Da a {C:attention}#1#{} cartas seleccionadas",
                    "una {C:attention}Mejora{} aleatoria",
                    "{C:attention}Carta de Evolución{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Disco Extraño",
                text = {
                    "Aleatoriza o elimina las {C:attention}mejoras{}",
                    "de todas las cartas en mano",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Incluye cartas sin mejoras){}"
                }
            },
            c_poke_icestone = {
                name = "Piedra Hielo",
                text = {
                    "Crea una carta {C:attention}Justicia{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            },
            c_poke_shinystone = {
                name = "Piedra Día",
                text = {
                    "Crea una carta {C:attention}Estrella{}",
                    "{C:attention}Carta de Evolución{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            },
            c_poke_twisted_spoon = {
                name = "Cuchara Torcida",
                text = {
                    "Crea la última carta",
                    "{C:item}Objeto{} o carta {C:pink}Energía{}",
                    "usada durante esta partida",
                    "{s:0.8,C:item}Cuchara Torcida{s:0.8} excluida"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Energía Planta",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Planta{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_fire_energy = {
                name = "Energía Fuego",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Fuego{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_water_energy = {
                name = "Energía Agua",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Agua{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energía Eléctrica",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Eléctrico{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energía Psíquica",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Psíquico{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energía Lucha",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Lucha{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energía Incolora",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín más a la izquierda o seleccionado permanentemente",
                    "La mitad de efectivo con",
                    "Comodines no {C:attention}Incoloros{}",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energía Oscura",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Oscuro{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_metal_energy = {
                name = "Energía Metal",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Metal{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energía Hada",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Hada{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_dragon_energy = {
                name = "Energía Dragón",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Dragón{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_earth_energy = {
                name = "Energía Tierra",
                text = {
                    "Aumenta la mayoría de valores de {C:attention}puntuación{} y {C:money}${}",
                    "del Comodín tipo {C:attention}Tierra{} más a la",
                    "izquierda o seleccionado permanentemente",
                    "{C:inactive}(Máximo de {C:attention}#1#{}{C:inactive} aumentos por Comodín)",
                },
            },
            c_poke_emergy = {
                name = "Emergía",
                text = {
                    "Crea {C:attention}1{} carta {C:green}Energía{}",
                    "aleatoria con {C:dark_edition}Negativo{} por cada",
                    "{C:attention}Comodín Alegre{} o {C:legendary}Comodín M{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Brillante",
                label = "Brillante",
                text = {
                    "{C:attention}+1{} espacio de Sobre",
                    "disponible en la tienda",
                }
            },
        },
        Enhanced = {
            --No hay cartas mejoradas? bastante sorprendente la verdad
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} tamaño de mano",
                    "Gana {C:money}$#1#{} por cada {C:attention}#3#{}",
                    "en mano, el rango",
                    "cambia cada ronda",
                    "{C:inactive}(Actualmente {C:money}$#2#{C:inactive} ganados)",
                    "{C:inactive}(Evoluciona al ganar {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
                    "Gana {C:money}$#1#{} o {C:money}$#5#{} por cada {C:attention}#4#{}",
                    "en mano, el rango",
                    "cambia cada ronda",
                    "{C:inactive}(Actualmente {C:money}$#2#{C:inactive} ganados)",
                    "{C:inactive}(Evoluciona al ganar {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
                    "Gana {C:money}$#1#{} por cada {C:attention}#4#{}",
                    "en mano, el rango",
                    "cambia cada ronda",
                    "{C:inactive}(Actualmente {C:money}$#2#{C:inactive} ganados)",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} descartes",
                    "Gana {C:mult}+#2#{} Mult por mano jugada",
                    "cuando quedan {C:attention}#3#{} descartes",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+16{}{C:inactive} Mult)"
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} descartes",
                    "Gana {C:mult}+#2#{} Mult por mano jugada",
                    "cuando quedan {C:attention}#3#{} descartes",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+36{}{C:inactive} Mult)"
                } 
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} descartes, {C:mult}+#1#{} Mult",
                    "{X:mult,C:white} X#2# {} Mult cuando quedan {C:attention}#3#{} descartes",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#3#{} manos",
                    "Gana {C:chips}+#2#{} Fichas por cada mano",
                    "restante al final de la ronda",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                    "{C:inactive}(Evoluciona en {C:chips}+32{} {C:inactive}Fichas)"
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} manos",
                    "Gana {C:chips}+#2#{} Fichas por cada mano",
                    "restante al final de la ronda",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                    "{C:inactive}(Evoluciona en {C:chips}+72{} {C:inactive}Fichas)"
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} manos, {C:chips}+#1#{} Fichas",
                    "{C:chips}+#2#{} Fichas por cada",
                    "mano restante",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
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
                    "{C:chips}+#1#{} Fichas",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Fichas",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "Todas las cartas {C:planet}Planeta{} y",
                    "{C:planet}Sobres Celestiales{} en la",
                    "tienda cuestan {C:money}$2{} menos",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Todas las cartas {C:planet}Planeta{} y",
                    "{C:planet}Sobres Celestiales{} en la",
                    "tienda cuestan {C:money}$3{} menos",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Todas las cartas {C:planet}Planeta{} y",
                    "{C:planet}Sobres Celestiales{} en la",
                    "tienda son {C:attention}gratis{}, usar",
                    "cartas {C:planet}Planeta{} te da {C:money}$#1#{}"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Vuelve a activar la {C:attention}primera{} carta",
                    "jugada usada en la puntuación",
                    "{C:attention}#1#{} vez adicional",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Vuelve a activar la {C:attention}primera{} y {C:attention}segunda{}",
                    "cartas jugadas usadas en la puntuación",
                    "{C:attention}#1#{} vez adicional",
                } 
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Después de puntuar {C:attention}#2#{} cartas",
                    "mejora el nivel de la siguiente {C:attention}mano de póker{}",
                    "{C:inactive}(Actualmente {C:attention}#3#{}{C:inactive}/#2#) {C:inactive}#4#{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Después de puntuar {C:attention}#1#{} cartas",
                    "mejora el nivel de la siguiente {C:attention}mano de póker{}",
                    "{C:inactive}(Actualmente {C:attention}#2#{}{C:inactive}/#1#) {C:inactive}#3#{}",
                } 
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} Mult si la",
                    "mano jugada contiene",
                    "una {C:attention}Escalera{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Mult si la mano jugada",
                    "contiene una {C:attention}Escalera{}",
                    "Crea una carta de Tarot si",
                    "también contiene un {C:attention}As{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Gana {C:money}$#1#{} al",
                    "final de la ronda por",
                    "cada Comodín que tengas",
                    "{C:inactive}(Máximo de {C:money}$10{C:inactive})",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Trueno{}{C:inactive})"
                } 
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Se aplica {C:dark_edition}Negativo{} a sí mismo",
                    "al final de la ronda si tienes",
                    "al menos {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Aumenta por cada Raichu que tengas){}",
                    "Gana {C:money}$#1#{} al final de la",
                    "ronda por cada Comodín que tengas",
                    "{C:inactive}(Máximo de {C:money}$10{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} Fichas por cada carta",
                    "{C:attention}Cristal{} en tu mazo completo",
                    "La primera carta {C:attention}Cristal{} rota cada",
                    "ronda añade una copia de sí misma a la mano",
                    "{C:inactive}(Actualmente {C:chips}+#3#{}{C:inactive} Fichas){C:inactive}#4#{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} Fichas por cada carta",
                    "{C:attention}Cristal{} en tu mazo completo",
                    "La primera carta {C:attention}Cristal{} rota cada",
                    "ronda añade una copia de sí misma a la mano",
                    "{C:inactive}(Actualmente {C:chips}+#2#{}{C:inactive} Fichas){C:inactive}#3#{}",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran♀",
                text = {
                    "Cada {C:attention}Reina{}",
                    "en mano da",
                    "{C:chips}+#1#{} Fichas",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Cada {C:attention}Reina{}",
                    "en mano da",
                    "{C:chips}+#1#{} Fichas",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Lunar{}{C:inactive})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} tamaño de mano",
                    "Cada {C:attention}Reina{}",
                    "en mano da",
                    "{C:chips}+#1#{} Fichas",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran♂",
                text = {
                    "Cada {C:attention}Rey{}",
                    "en mano da",
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Cada {C:attention}Rey{}",
                    "en mano da",
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Lunar{}{C:inactive})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} tamaño de mano",
                    "Cada {C:attention}Rey{}",
                    "en mano da",
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Las cartas jugadas con",
                    "palo {C:clubs}#2#{} dan",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Lunar{}{C:inactive})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Las cartas jugadas con palo {C:clubs}#2#{} dan",
                    "",
                    "{C:mult}+#1#{} Mult por cada {C:clubs}#2#{}",
                    "en manos puntuadas esta ronda",
                    "{C:inactive,s:0.8}(Si has jugado 5 tréboles, cada uno daría {C:mult,s:0.8}+5{} {C:inactive,s:0.8}Mult){}",
                    "{C:inactive}(Actualmente {C:mult}#3#{}{C:inactive} Mult){}"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# en #2#{} probabilidad por cada",
                    "{C:attention}9{} jugado de crear una",
                    "carta {C:attention}Tarot{} al puntuar",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Fuego{}{C:inactive})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Médium{}",
                    "{C:green}#1# en #2#{} probabilidad por cada",
                    "{C:attention}9{} jugado de crear una carta",
                    "{C:attention}Tarot{} o {C:planet}Planeta{} al puntuar",
                    "{C:inactive}(Debe haber espacio)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Las cartas jugadas con",
                    "palo {C:spades}#2#{} dan",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Lunar{}{C:inactive})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Las cartas jugadas con palo {C:spades}#3#{}",
                    "dan {C:mult}+#1#{} Mult y",
                    "{C:chips}+#2#{} Fichas más las fichas",
                    "totales de esa carta al puntuar",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "{C:mult}+#1#{} Mult por cada carta",
                    "Mejorada en tu mazo completo",
                    "{C:inactive}(Actualmente {C:mult}+#2#{}{C:inactive} Mult, {C:attention}#4#{}{C:inactive} Mejoras)",
                    "{C:inactive}(Evoluciona con {C:attention}#3#{C:inactive} Mejoras)"
                } 
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Elimina las Mejoras de las cartas al puntuar",
                    "Gana {C:mult}+#2#{} por cartas {C:attention}Mult{} y {C:attention}Comodín{}",
                    "{C:chips}+#4#{} por cartas {C:attention}Bonus{} y {C:attention}Piedra{},",
                    "{X:red,C:white}X#6#{} por cartas {C:attention}Acero{} y {C:attention}Cristal{},",
                    "{C:money}$#8#{} por cartas {C:attention}Oro{} y {C:attention}Suerte{}",
                    "{C:inactive}(Evoluciona a las {C:attention}#9#{}{C:inactive}/20 Mejoras consumidas)",
                    "{C:inactive}(Actualmente {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} al final de ronda)"
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Las cartas jugadas con rango {C:attention}Impar{}",
                    "dan {C:mult}+#1#{} o {C:mult}+#2#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Las cartas jugadas con rango {C:attention}Impar{}",
                    "dan {C:mult}+#1#{} o {C:mult}+#2#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Hoja/Solar{}{C:inactive})"
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Las cartas jugadas con rango {C:attention}Impar{}",
                    "dan {C:mult}+#2#{} Mult o",
                    "{X:mult,C:white} X#1# {} Mult al puntuar"
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult por mano jugada",
                    "que contenga {C:attention}Doble Pareja{}", 
                    "{C:inactive}(Actualmente {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+8{}{C:inactive} Mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Mult por mano jugada",
                    "que contenga {C:attention}Doble Pareja{}",
                    "{C:mult}-#3#{} Mult por mano jugada",
                    "que no la contenga",
                    "{C:inactive}(Actualmente {C:mult}+#1#{} {C:inactive}Mult)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Añade {C:attention}#1#{} a todas las {C:attention}probabilidades",
                    "{C:green,E:1,S:1.1}listadas",
                    "{C:inactive}(ej: {C:green}1 en 6{C:inactive} -> {C:green}2 en 6{C:inactive})",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Añade {C:attention}#1#{} a todas las {C:attention}probabilidades",
                    "{C:green,E:1,S:1.1}listadas",
                    "{C:inactive}(ej: {C:green}1 en 6{C:inactive} -> {C:green}3 en 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:chips}+#2#{} Fichas si la mano jugada",
                    "contiene un {C:attention}Trío{}",
                    "{C:mult}+#3#{} Mult si la mano jugada",
                    "contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} Fichas si la mano jugada",
                    "contiene un {C:attention}Trío{}",
                    "{X:red,C:white} X#1# {} Mult si la mano jugada",
                    "contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Gana {C:money}$#1#{} al",
                    "final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Gana {C:money}${} al final de la",
                    "ronda igual al {C:attention}doble{} del", 
                    "valor de venta del Comodín más a la izquierda",
                    "{C:inactive}(Excepto a sí mismo){}",
                    "{C:inactive}(Actualmente {C:money}$#1#{C:inactive}, Máximo de {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Si la mano jugada es una",
                    "única carta {C:attention}figura{}, gana {C:money}$#1#{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Si la mano jugada es una única",
                    "carta {C:attention}figura{}, gana {C:money}$#1#{} y se",
                    "convierte en {C:attention}Oro{} al puntuar"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Cada {C:attention}2{},",
                    "{C:attention}3{}, o {C:attention}5{} jugado da",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, o {C:attention}5{} jugado",
                    "da {C:mult}+#1#{} Mult al puntuar",
                    "Cada {C:attention}7{}, {C:attention}11{}, o {C:attention}13{} jugado",
                    "da {C:mult}+#2#{} Mult al puntuar"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Mult si la mano jugada",
                    "contiene un {C:attention}Flush{}",
                    "{C:inactive}(Evoluciona con una{} {C:attention}Pieda Fuego{}{C:inactive})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "Las cartas jugadas con palo {C:hearts}#2#{}",
                    "dan {C:mult}+#1#{} Mult y",
                    "{C:chips}+#3#{} Fichas al puntuar",
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Las cartas jugadas con",
                    "palo {C:diamonds}#2#{} dan",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Las cartas jugadas con",
                    "palo {C:diamonds}#2#{} dan",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Agua{}{C:inactive})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Las cartas jugadas con palo {C:diamonds}#2#{}",
                    "dan {C:mult}+#1#{} Mult y",
                    "{C:chips}+#3#{} Fichas al puntuar",
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "Gana {C:money}$#1#{} por cada",
                    "{C:attention}Escalera{} jugada",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "Gana {C:money}$#1#{} por cada",
                    "{C:attention}Escalera{} jugada",
                    "{C:inactive}(Evoluciona con un {C:attention}Cable Link{}{C:inactive})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "Gana {C:money}$#1#{} y {C:chips}+#2#{} Fichas",
                    "por cada {C:attention}Escalera{} jugada",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} manos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#4#{} Mult",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} manos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#3#{} Mult",
                    "{C:inactive}(Evoluciona con una{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} manos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#3#{} Mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Las cartas jugadas con rango {C:attention}Par{}",
                    "dan {C:mult}+#1#{} o {C:mult}+#2#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Las cartas jugadas con rango {C:attention}Par{}",
                    "dan {C:mult}+#1#{} o {C:mult}+#2#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Piedra Hoja{}{C:inactive})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebel",
                text = {
                    "Las cartas jugadas con rango {C:attention}Par{}",
                    "dan {C:mult}+#2#{} Mult o",
                    "{X:mult,C:white} X#1# {} Mult al puntuar"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Cada {C:attention}10{} jugado",
                    "da {C:mult}+#1#{} Mult al puntuar",
                    "si la mano solo contiene {C:attention}10s{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Cada {C:attention}10{} jugado",
                    "da {C:mult}+#1#{} Mult al puntuar",
                    "Los {C:attention}10s{} no pueden ser debilitados"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Fichas,",
                    "{C:attention}-#2#{} tamaño de mano",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Fichas,",
                    "{C:attention}-#2#{} tamaño de mano",
                    "{C:inactive}(Evoluciona con un {C:attention}Cable Link{}{C:inactive})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Fichas,",
                    "{C:attention}-#2#{} tamaño de mano",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Gana {C:chips}#2#{} Fichas si la mano", 
                    "jugada contiene una {C:attention}Escalera{}",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                    "{C:inactive}(Evoluciona en {C:chips}+60{} {C:inactive}Fichas)"
                } 
            },
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Gana {C:chips}#2#{} Fichas si la mano", 
                    "jugada contiene una {C:attention}Escalera{}",
                    "Aplica {C:attention}Atajo{} para la primera mano",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult en la {C:attention}última mano{} de la ronda",
                    "{C:inactive}(Evoluciona después de activarse {C:attention}#2#{}{C:inactive}/#3# veces)",
                    "{C:inactive}(Evoluciona con una carta {C:attention}Roca del Rey{}{C:inactive})"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult en la {C:attention}última mano{} de la ronda",
                    "{C:green}#3# en #4#{} probabilidad de crear",
                    "una carta {C:attention}Roca del Rey{} al",
                    "final de la ronda {C:inactive,s:0.8}(Debe haber espacio){}",
                    "{C:inactive,s:0.8}(Evoluciona después de {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} rondas o con una carta {C:attention,s:0.8}Roca del Rey{} {C:inactive,s:0.8})"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Gana {X:red,C:white} X#1# {} Mult",
                    "por mano jugada,",
                    "Se reinicia al final de la ronda",
                    "{C:inactive}(Actualmente {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Las cartas {C:attention}Acero{} jugadas",
                    "dan {X:red,C:white}X#1#{} Mult",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Las cartas {C:attention}Acero{} jugadas dan {X:red,C:white}X#1#{} Mult",
                    "más {X:red,C:white}X#2#{} Mult por cada",
                    "Comodín {X:metal,C:white}Metal{} junto a este Comodín",
                    "{C:inactive}(Actualmente {X:red,C:white}X#3#{}{C:inactive} Mult){}",
                    "{C:inactive}(Evoluciona con una {C:attention}Piedra Trueno{}{C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = "Farfetch'd",
                text = {
                    "{C:attention}Portando Puerro{}",
                    "{C:green}#2# en #3#{} probabilidad de {X:red,C:white}X#1#{} Mult",
                    "La probabilidad se duplica por",
                    "cada carta {C:attention}Puerro{} que tengas",
                } 
            },
            j_poke_doduo = {
                name = "Doduo",
                text = {
                    "{C:mult}+#1#{} Mult si la mano puntuada",
                    "contiene al menos {C:attention}2{} cartas figura",
                    "{C:mult}+#1#{} Mult si la mano puntuada",
                    "contiene un {C:attention}Full House{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_dodrio = {
                name = "Dodrio",
                text = {
                    "{C:mult}+#1#{} Mult si la mano puntuada",
                    "contiene al menos {C:attention}3{} cartas figura",
                    "{C:mult}+#1#{} Mult si la mano puntuada",
                    "contiene un {C:attention}Full House{}",
                } 
            },
            j_poke_seel = {
                name = "Seel",
                text = {
                    "{C:green}#1# en #2#{} probabilidad de",
                    "añadir un {C:attention}sello{} aleatorio a la",
                    "carta puntuada más a la izquierda en la",
                    "{C:attention}primera mano{} de la ronda",
                    "{C:inactive,s:0.75}(Evoluciona cuando tu mazo completo tenga al menos {C:attention,s:0.75}#3#{}{C:inactive,s:0.75} {C:attention,s:0.75}sellos{C:inactive,s:0.75})"
                } 
            },
            j_poke_dewgong = {
                name = "Dewgong",
                text = {
                    "Añade un {C:attention}sello{} aleatorio a la",
                    "carta puntuada más a la izquierda en la",
                    "{C:attention}primera mano{} de la ronda",
                } 
            },
            j_poke_grimer = {
                name = "Grimer",
                text = {
                    "{C:mult}+#1#{} Mult si el",
                    "tamaño del mazo > {C:attention}#3#{}",
                    "Añade una carta de juego aleatoria",
                    "a tu mazo al final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_muk = {
                name = "Muk",
                text = {
                    "{C:mult}+#1#{} Mult por cada carta",
                    "por encima de {C:attention}#3#{} en tu mazo completo",
                    "{X:mult,C:white} X#2# {} Mult si el tamaño del mazo > {C:attention}#4#{}",
                    "{C:inactive,s:0.8}(Actualmente {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}Mult){}",
                    "Añade dos cartas de juego aleatorias al mazo",
                    "y elimina una carta aleatoria del mazo",
                    "al final de la ronda"
                } 
            },
            j_poke_shellder = {
                name = "Shellder",
                text = {
                    "Si la mano tiene {C:attention}5{} cartas",
                    "puntuadas, cada una tiene {C:green}#1# en #2#{}",
                    "probabilidad de reactivarse",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Agua{}{C:inactive})"
                } 
            },
            j_poke_cloyster = {
                name = "Cloyster",
                text = {
                    "Si la mano tiene {C:attention}5{} cartas",
                    "puntuadas, cada una tiene {C:green}#1# en #2#{}",
                    "probabilidad de reactivarse",
                } 
            },
            j_poke_gastly = {
                name = "Gastly",
                text = {
                    "{C:green}#1# en #2#{} probabilidad de",
                    "{C:attention}reemplazar{} la edición de un",
                    "{C:attention}Comodín{} aleatorio por {C:dark_edition}Negativo{}",
                    "{S:1.1,C:red,E:2}se autodestruye{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_haunter = {
                name = "Haunter",
                text = {
                    "{C:green}#1# en #2#{} probabilidad de",
                    "{C:attention}reemplazar{} la edición de un",
                    "{C:attention}Comodín{} aleatorio por {C:dark_edition}Negativo{}",
                    "{S:1.1,C:red,E:2}se autodestruye{}",
                    "{C:inactive}(Evoluciona con un{} {C:attention}Cable Link{}{C:inactive})"
                } 
            },
            j_poke_gengar = {
                name = "Gengar",
                text = {
                    "{C:green}Porcentaje de Probabilidad{}",
                    "A veces {C:attention}reemplaza{} la edición",
                    "de un {C:attention}Comodín{} aleatorio por",
                    "{C:dark_edition}Negativo{} al final de la ronda",
                    "{C:inactive,s:0.8}(Excluye a los Gengar){}"
                } 
            },
            j_poke_onix = {
                name = "Onix",
                text = {
                    "La carta puntuada más a la izquierda de",
                    "tu {C:attention}primera mano{} de la ronda",
                    "se convierte en una carta {C:attention}Piedra{}",
                    "{C:inactive}(Evoluciona con un sello {C:metal}Metal{}{C:inactive})"
                } 
            },
            j_poke_drowzee = {
                name = "Drowzee",
                text = {
                    "{C:mult}+#2#{} Mult por cada",
                    "carta {C:planet}Planeta{} única",
                    "usada en esta partida",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+28{C:inactive} Mult)"
                } 
            },
            j_poke_hypno = {
                name = "Hypno",
                text = {
                    "{C:attention}Portando Trance{}",
                    "{C:mult}+#2#{} Mult por cada",
                    "carta {C:planet}Planeta{} única",
                    "usada en esta partida",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = "Krabby",
                text = {
                    "Las cartas {C:attention}figura{} jugadas",
                    "dan {C:chips}+#1#{} Fichas",
                    "al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_kingler = {
                name = "Kingler",
                text = {
                    "Todas las cartas {C:attention}figura{} jugadas",
                    "se convierten en cartas {C:attention}Bonus{}",
                    "y dan {C:chips}+#1#{} Fichas",
                    "al puntuar",
                } 
            },
            j_poke_voltorb = {
                name = "Voltorb",
                text = {
                    "Si este es el Comodín más",
                    "a la {C:attention}izquierda{}, gana {C:mult}+#1#{} Mult",
                    "y debilita este Comodín",
                    "hasta el final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_electrode = {
                name = "Electrode",
                text = {
                    "Si este es el Comodín más",
                    "a la {C:attention}izquierda{}, gana {C:mult}+#1#{} Mult y {C:money}$#2#{}",
                    "y debilita este Comodín",
                    "hasta el final de la ronda"
                } 
            },
            j_poke_exeggcute = {
                name = "Exeggcute",
                text = {
                    "Las cartas jugadas con",
                    "palo {C:hearts}#2#{} dan",
                    "{C:mult}+#1#{} Mult al puntuar",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Hoja{}{C:inactive})"
                } 
            },
            j_poke_exeggutor = {
                name = "Exeggutor",
                text = {
                    "{C:green}#4# en #5#{} probabilidad de que",
                    "las cartas jugadas con",
                    "palo {C:hearts}#3#{} den",
                    "{C:mult}+#1#{} Mult y {X:mult,C:white}X#2#{} Mult",
                    "al puntuar",
                } 
            },
            j_poke_cubone = {
                name = "Cubone",
                text = {
                    "{C:attention}Portando Hueso Grueso{}",
                    "Da {C:mult}+#1#{} Mult por cada",
                    "espacio de consumible ocupado",
                    "{C:inactive,s:0.75}(Los {C:attention,s:0.75}Huesos Gruesos{}{C:inactive,s:0.75} cuentan doble){}",
                    "{C:inactive}(Actualmente {C:mult}+#3#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona después de usar consumibles {C:attention}#4#{}{C:inactive}/#5# veces)"
                } 
            },
            j_poke_marowak = {
                name = "Marowak",
                text = {
                    "{C:attention}+#2#{} espacios de consumible",
                    "Da {X:mult,C:white} X#1# {} Mult por cada",
                    "espacio de consumible ocupado",
                    "{C:inactive,s:0.75}(Los {C:attention,s:0.75}Huesos Gruesos{}{C:inactive,s:0.75} cuentan doble){}",
                    "{C:inactive}(Actualmente {X:mult,C:white} X#3# {}{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = "Hitmonlee",
                text = {
                    "{X:red,C:white}X#1#{} Mult por cada carta",
                    "por debajo de {C:attention}#2#{} en tu mazo completo",
                    "{C:inactive}(Actualmente {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = "Hitmonchan",
                text = {
                    "{X:red,C:white}X#1#{} Mult por cada carta",
                    "por encima de {C:attention}#2#{} en tu mazo completo",
                    "{C:inactive}(Actualmente {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = "Lickitung",
                text = {
                    "La primera y segunda",
                    "{C:attention}J{} jugada dan {X:mult,C:white} X#1# {} Mult",
                    "al puntuar",
                    "{C:inactive}(Evoluciona después de activarse {C:attention}#2#{}{C:inactive}/20 veces){}"
                } 
            },
            j_poke_koffing = {
                name = "Koffing",
                text = {
                    "Vende esta carta para reducir el",
                    "requisito de puntuación del",
                    "{C:attention}Ciego del Jefe{} actual a la {C:attention}mitad{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_weezing = {
                name = "Weezing",
                text = {
                    "Vende esta carta para reducir el",
                    "requisito de puntuación del",
                    "{C:attention}Ciego del Jefe{} actual a la {C:attention}mitad{}",
                    "y desactivarlo",
                } 
            },
            j_poke_rhyhorn = {
                name = "Rhyhorn",
                text = {
                    "Cada carta {C:attention}Piedra{} jugada",
                    "gana permanentemente",
                    "{C:chips}+#1#{} Fichas al puntuar",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_rhydon = {
                name = "Rhydon",
                text = {
                    "Cada carta {C:attention}Piedra{} jugada",
                    "gana permanentemente",
                    "{C:chips}+#1#{} Fichas al puntuar",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Cable Link{}{C:inactive})"
                } 
            },
            j_poke_chansey = {
                name = "Chansey",
                text = {
                    "Las primeras {C:attention}#1#{} veces que una",
                    "carta {C:attention}Suerte{} se active cada ronda,",
                    "añade una copia permanente a tu",
                    "mazo y roba a la {C:attention}Mano",
                    "{C:inactive}(Actualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(Evoluciona cuando el mazo sea >= 25% cartas {C:attention}Suerte{C:inactive})"
                } 
            },
            j_poke_tangela = {
                name = "Tangela",
                text = {
                    "Las cartas {C:attention}Comodín{} jugadas dan",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, o {C:money}$#3#{}",
                    "{C:green}#4# en #5#{} probabilidad de {C:attention}los tres{}",
                    "{C:inactive}(Evoluciona cuando el mazo sea >= 20% cartas {C:attention}Comodín{C:inactive})"
                } 
            },
            j_poke_kangaskhan = {
                name = "Kangaskhan",
                text = {
                    "{C:attention}+#1#{} espacios de consumible",
                    "{C:chips}-#2#{} manos",
                } 
            },
            j_poke_horsea = {
                name = "Horsea",
                text = {
                    "Gana {C:mult}+#2#{} Mult",
                    "por cada {C:attention}6{}",
                    "en la mano puntuada",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+12{} {C:inactive}Mult)"
                } 
            },
            j_poke_seadra = {
                name = "Seadra",
                text = {
                    "Gana {C:mult}+#2#{} Mult",
                    "cuando se puntúa un {C:attention}6{}",
                    "Duplica las ganancias si un {C:attention}Rey{}",
                    "está en la mano",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona con un sello {C:dragon}Dragón{}{C:inactive})"
                } 
            },
            j_poke_goldeen = {
                name = "Goldeen",
                text = {
                    "Reactiva cada carta {C:attention}Oro{}",
                    "en mano {C:attention}#1#{} vez",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_seaking = {
                name = "Seaking",
                text = {
                    "Reactiva cada carta {C:attention}Oro{}",
                    "en mano {C:attention}#1#{} veces",
                } 
            },
            j_poke_staryu = {
                name = "Staryu",
                text = {
                    "Played cards with",
                    "{C:diamonds}#2#{} suit give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive}(Evolves with a{} {C:attention}Water Stone{}{C:inactive} card)"
                } 
            },
            j_poke_starmie = {
                name = "Starmie",
                text = {
                    "Played cards with",
                    "{C:diamonds}#3#{} suit give",
                    "{C:mult}+#1#{} Mult and ",
                    "{C:money}$#2#{} when scored",
                } 
            },
            j_poke_mrmime = {
                name = "Mr. Mime",
                text = {
                    "Retrigger leftmost card",
                    "held in hand {C:attention}#1#{} times"
                } 
            },
            j_poke_scyther = {
                name = "Scyther",
                text = {
                    "When Blind is selected, destroy",
                    "Joker to the right and gain {C:mult}+#2#{} Mult",
                    "Gain {C:attention}Foil{}, {C:attention}Holographic{}, or {C:attention}Polychrome{}",
                    "if Joker was {C:red}Rare{} or higher",
                    "{C:inactive}(Evolves with a {C:metal}Metal{} {C:inactive}sticker){}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult"
                } 
            },
            j_poke_jynx = {
                name = "Jynx",
                text = {
                    "{C:attention}Playing cards{} added to your",
                    "deck from the {C:attention}Shop{}, {C:attention}Standard{} packs,",
                    "{C:spectral}Cryptid{} and certain Jokers",
                    "are {C:attention}duplicated{}"
                } 
            },
            j_poke_electabuzz = {
                name = "Electabuzz",
                text = {
                    "When a card is {C:attention}sold{}",
                    "and at end of round",
                    "gains {C:money}$#1#{} of {C:attention}sell value{}",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_magmar = {
                name = "Magmar",
                text = {
                    "If the {C:attention}first{} discard of",
                    "the round has only {C:attention}1{} card",
                    "destroy it and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves with a{} {C:attention}Linking Cord{}{C:inactive} card)"
                } 
            },
            j_poke_pinsir = {
                name = "Pinsir",
                text = {
                    "{X:mult,C:white} X#1# {} Mult if {C:attention}leftmost{}",
                    "card of played hand is the",
                    "same {C:attention}rank{} as {C:attention}rightmost{}",
                    "card held in hand"
                } 
            },
            j_poke_tauros = {
                name = "Tauros (Líder)",
                text = {
                    "Los Comodines {C:attention}Tauros{} dan cada uno {X:mult,C:white} X#1# {} Mult",
                    "Cada reroll en la tienda tiene una",
                    "probabilidad de {C:green}#2# en #3#{} de añadir",
                    "un {C:attention}Tauros (Manada){} a la tienda",
                } 
            },
            j_poke_taurosh = {
                name = "Tauros (Manada)",
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_magikarp = {
                name = "Magikarp",
                text = {
                    "{C:chips}+#2#{} Fichas",
                    "Aplica {C:attention}Salpicadura{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#1#{}{C:inactive} rondas)"
                } 
            },
            j_poke_gyarados = {
                name = "Gyarados",
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                } 
            },
            j_poke_lapras = {
                name = "Lapras",
                text = {
                    "{C:chips}+#2#{} Fichas por cada",
                    "{C:attention}Ciego{} saltado en esta partida",
                    "{C:inactive}(Actualmente {C:chips}+#1# {C:inactive}Fichas)"
                } 
            },
            j_poke_ditto = {
                name = "Ditto",
                text = {
                    "Vende esto para duplicar",
                    "el Comodín más a la izquierda",
                    "con {C:attention}Perecedero{}",
                    "y un sello {C:colorless}Incoloro{}",
                    "{C:inactive}(elimina Eterno, excluye Dittos){}",
                } 
            },
            j_poke_eevee = {
                name = "Eevee",
                text = {
                    "Gana {C:money}$#1#{} por",
                    "los primeros {C:attention}5{} {C:green}rerolls{}",
                    "{C:inactive}(Evoluciona con...muchas cosas){}",
                    "{C:inactive}Actualmente {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = "Vaporeon",
                text = {
                    "Gana {C:chips}+#2#{} Fichas",
                    "por cada {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Actualmente {C:attention}#3#{}{C:inactive}/3 rerolls)",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                } 
            },
            j_poke_jolteon = {
                name = "Jolteon",
                text = {
                    "Gana {C:money}$#1#{}",
                    "por cada {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Actualmente {C:attention}#2#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_flareon = {
                name = "Flareon",
                text = {
                    "Gana {X:red,C:white} X#2# {} Mult",
                    "por cada {C:attention}3{} {C:green}rerolls{}",
                    "{C:inactive}(Actualmente {C:attention}#3#{}{C:inactive}/3 rerolls)",
                    "{C:inactive}(Actualmente {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_porygon = {
                name = "Porygon",
                text = {
                    "{C:pink}+1{} Límite de Energía",
                    "Crea una carta {C:pink}Energía{}",
                    "cuando se abre cualquier",
                    "{C:attention}Sobre de Cartas{}",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Mejora{}{C:inactive})"
                } 
            },
            j_poke_omanyte = {
                name = "Omanyte",
                text = {
                    "{C:attention}Antiguos #1#s{}",
                    "{X:attention,C:white}Uno{} : Gana {C:money}$#2#{} del valor de venta",
                    "{X:attention,C:white}Dos{} : Gana {C:money}$#3#{}",
                    "{X:attention,C:white}Tres+{} : Crea una carta {C:attention}Tarot{} aleatoria",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Evoluciona después de activar el tercer nivel {C:attention}#4#{}{C:inactive}/#5# veces)"
                } 
            },
            j_poke_omastar = {
                name = "Omastar",
                text = {
                    "{C:attention}Antiguos #1#s{}",
                    "{X:attention,C:white}Uno{} : Gana {C:money}$#2#{} del valor de venta",
                    "{X:attention,C:white}Dos{} : Gana {C:money}$#3#{}",
                    "{X:attention,C:white}Tres{} : Crea una carta {C:attention}Tarot{} aleatoria",
                    "{X:attention,C:white}Cuatro+{} : Crea una carta {C:item}Objeto{} aleatoria",
                    "{C:inactive}(Debe haber espacio){}"
                } 
            },
            j_poke_kabuto = {
                name = "Kabuto",
                text = {
                    "{C:attention}Antiguos #1#s{}",
                    "{X:attention,C:white}Uno{} : {C:chips}+#2#{} Fichas",
                    "{X:attention,C:white}Dos{} : Los {C:attention}#1#s{} puntuados ganan permanentemente {C:chips}+#3#{} Fichas",
                    "{X:attention,C:white}Tres+{} : {C:chips}+#4#{} Fichas",
                    "{C:inactive}(Evoluciona después de activar el tercer nivel {C:attention}#5#{}{C:inactive}/#6# veces)"
                } 
            },
            j_poke_kabutops = {
                name = "Kabutops",
                text = {
                    "{C:attention}Antiguos #1#s{}",
                    "{X:attention,C:white}Uno{} : {C:chips}+#2#{} Fichas",
                    "{X:attention,C:white}Dos{} : Los {C:attention}#1#s{} puntuados ganan permanentemente {C:chips}+#3#{} Fichas",
                    "{X:attention,C:white}Tres{} : {C:chips}+#4#{} Fichas",
                    "{X:attention,C:white}Cuatro+{} : Reactiva las cartas {C:attention}primera{} y {C:attention}segunda{}",
                    "jugadas {C:attention}#5#{} vez adicional"
                } 
            },
            j_poke_aerodactyl = {
                name = "Aerodactyl",
                text = {
                    "{C:attention}Antiguos #1#s{}",
                    "{X:attention,C:white}Uno{} : {C:mult}+#2#{} Mult",
                    "{X:attention,C:white}Dos{} : {C:mult}+#3#{} Mult y {C:chips}+#4#{} Fichas",
                    "{X:attention,C:white}Tres{} : {X:red,C:white}X#5#{} Mult",
                    "{X:attention,C:white}Cuatro+{} : Este Comodín puntúa {C:attention}doble{} sus valores de puntuación"
                } 
            },
            j_poke_snorlax = {
                name = "Snorlax",
                text = {
                    "{C:attention}Portando Sobras{}",
                    "Al final de la ronda gana {X:red,C:white}X#1#{} Mult",
                    "por cada {C:attention}Sobras{} que tengas",
                    "{C:inactive}(Actualmente {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = "Articuno",
                text = {
                    "Añade {C:attention}Foil{}, una",
                    "{C:attention}mejora{} aleatoria y un",
                    "{C:attention}sello{} aleatorio a las cartas sin puntuar",
                    "en la {C:attention}primera mano{} de la ronda"
                } 
            },
            j_poke_zapdos = {
                name = "Zapdos",
                text = {
                    "{X:mult,C:white} X#1# {} Mult por",
                    "cada {C:money}$#2#{} que tengas",
                    "{C:inactive}(Actualmente {X:red,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = "Moltres",
                text = {
                    "Mejora el nivel de las",
                    "primeras {C:attention}3 manos{}",
                    "de póker descartadas cada ronda"
                } 
            },
            j_poke_dratini = {
                name = "Dratini",
                text = {
                    "Gana {C:mult}+#2#{} Mult",
                    "si la mano jugada contiene",
                    "{C:attention}#3#{} o menos cartas",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+10{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonair = {
                name = "Dragonair",
                text = {
                    "Gana {C:mult}+#2#{} Mult",
                    "si la mano jugada contiene",
                    "{C:attention}#3#{} o menos cartas",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+30{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonite = {
                name = "Dragonite",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Si la mano jugada tiene",
                    "solo {C:attention}1{} carta",
                    "reactívala {C:attention}#2#{} veces"
                } 
            },
            j_poke_mewtwo = {
                name = "Mewtwo",
                text = {
                    "Al final de la tienda, crea un",
                    "duplicado {C:dark_edition}Policromático{} del",
                    "{C:attention}Comodín{} más a la izquierda con {C:attention}+1{} {C:pink}Energía{}",
                    "luego destruye el Comodín más a la izquierda",
                    "Los Comodines {C:dark_edition}Policromáticos{} dan cada uno {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(No puede destruirse a sí mismo)",
                } 
            },
            j_poke_mew = {
                name = "Mew",
                text = {
                    "Al final de la tienda, crea",
                    "una carta {C:dark_edition}Negativa{} aleatoria {C:attention}Tarot{},",
                    "{C:spectral}Espectral{} u {C:item}Objeto{}",
                    "A veces crea un Comodín",
                    "{C:dark_edition}Negativo{} aleatorio {C:attention}en su lugar{}",
                } 
            },
            j_poke_sentret = {
                name = "Sentret",
                text = {
                    "{C:mult}+#2#{} Mult por cada",
                    "mano jugada {C:attention}consecutiva{} que",
                    "no sea la última mano jugada",
                    "{C:inactive}(Última mano: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Actualmente {C:mult}+#1#{} {C:inactive}Mult)",
                    "{C:inactive}(Evoluciona en {C:mult}+15{} {C:inactive}Mult)"
                }  
            },
            j_poke_furret = {
                name = "Furret",
                text = {
                    "{C:mult}+#2#{} Mult cuando la mano jugada",
                    "no es la última mano jugada",
                    "{C:inactive}(Última mano: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Actualmente {C:mult}+#1#{} {C:inactive}Mult)",
                }  
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "{C:attention}Aleatoriza{} las mejoras de las cartas de puntuación existentes",
                    "Gana {C:mult}+#2#{} para cartas {C:attention}Mult{} y {C:attention}Comodín{}",
                    "{C:chips}+#4#{} para cartas {C:attention}Bonus{} y {C:attention}Piedra{},",
                    "{X:red,C:white}X#6#{} para cartas {C:attention}Acero{} y {C:attention}Cristal{},",
                    "{C:money}$#8#{} para cartas {C:attention}Oro{} y {C:attention}Suerte{}",
                    "{C:inactive}(Actualmente {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} fin de ronda)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#2# {} Mult",
                    "Gana {C:money}$#1#{} al",
                    "final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Crea una carta {C:attention}Luna{} con",
                    "{C:dark_edition}Negativa{} al final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Crea una carta {C:attention}Mundo{} con",
                    "{C:dark_edition}Negativa{} al final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Las cartas jugadas con rango {C:attention}Impar{}",
                    "dan {C:mult}+#1#{} Mult o se convierten en",
                    "cartas {C:attention}Comodín{} cuando puntúan",
                    "Si ya son {C:attention}Comodín{}, añade {C:dark_edition}Policromático"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Las cartas jugadas con palo {V:1}#2#{} dan",
                    "{C:mult}+#1#{} Mult cuando puntúan",
                    "Esas cartas se reactivan según",
                    "cuántos Comodines {X:water,C:white}Agua{} tengas",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Reactivación(es) divididas equitativamente entre cartas de puntuación){}",
                    "El palo cambia en orden {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "Crea una carta {C:attention}Sol{}",
                    "cada {C:attention}3{} {C:green}relanzamientos{}",
                    "Reactiva todas las cartas jugadas con",
                    "palo {C:hearts}Corazones{} en tu {C:attention}primera mano{}",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Actualmente {C:attention}#1#{}{C:inactive}/3 relanzamientos)"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Crea una carta {C:attention}Luna{} cada",
                    "{C:attention}3{} {C:green}relanzamientos{}, reactiva",
                    "todas las habilidades {C:attention}retenidas en mano{} de",
                    "cartas con palo {C:clubs}#2#{} en la {C:attention}última mano{}",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Actualmente {C:attention}#1#{}{C:inactive}/3 relanzamientos)"
                } 
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Los {C:attention}Reyes{} jugados dan {X:red,C:white}X#1#{} Mult",
                    "cuando puntúan, aumenta en {X:red,C:white}X#2#{} Mult",
                    "por cada mano jugada después de la primera",
                    "Se reinicia al final de la ronda"      
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "La carta de puntuación más a la izquierda de",
                    "tu {C:attention}primera mano{} de la ronda",
                    "se convierte en una carta {C:attention}Acero{}",
                    "Las cartas {C:attention}Piedra{} {C:attention}retenidas{} en",
                    "mano se convierten en {C:attention}Acero{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Cuando se selecciona Ciego, destruye el Comodín a la",
                    "derecha y gana {C:mult}+#4#{} Mult. Gana {C:attention}Lámina{},",
                    "{C:attention}Holográfico{}, o {C:attention}Policromático{} si no era {C:attention}Común{}",
                    "Esas ediciones se {C:attention}acumulan{} en este Comodín",
                    "{C:inactive,s:0.75}(Coincide con la edición del Comodín destruido si es posible){}",
                    "{C:inactive}(Actualmente {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Fichas, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "Al final de la ronda",
                  "recibe un {S:1.1,C:green,E:2}Regalo{}",
                  "{C:inactive}(Debe haber espacio)"
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Gana {C:chips}+#2#{} Fichas cuando una",
                  "carta {C:attention}Oro{} está retenida en mano",
                  "o cuando una carta {C:attention}Oro{} jugada puntúa",
                  "{C:inactive}(Actualmente{C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Gana {C:mult}+#2#{} Mult",
                    "cuando un {C:attention}6{} puntúa",
                    "Gana {X:red,C:white}X#4#{} Mult {C:attention}en su lugar{} si un",
                    "{C:attention}Rey{} está retenido en mano",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{} Mult{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Límite de Energía",
                    "Crea una carta de {C:pink}Energía{}",
                    "del mismo {C:pink}Tipo{} que el",
                    "Comodín más a la izquierda cuando",
                    "se abre cualquier {C:attention}Sobre{}",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Disco Dudoso{}{C:inactive})"
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                  "Si la mano jugada contiene un {C:attention}Par{}",
                  "da {C:chips}+#1#{} Fichas multiplicado por las",
                  "fichas {C:attention}base{} de la primera carta de puntuación",
                  "Fichas {C:attention}duplicadas{} en la {C:attention}última mano{} de la ronda",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Si la {C:attention}primera mano o descarte{} de la ronda",
                    "es exactamente {C:attention}5{} cartas, una de ellas",
                    "es seleccionada al azar para ser",
                    "copiada si se juega o destruida si se descarta",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "Cuando se selecciona ciego",
                    "gana {X:red,C:white} X#3# {} Mult si",
                    "el tamaño del mazo es exactamente {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Crea una etiqueta {C:attention}Estándar{}",
                    "cuando este Comodín evoluciona",
                    "{C:inactive}(Sí, esto {C:attention}reducirá{C:inactive} tu Mult)",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Crea una etiqueta {C:attention}Cupón{}",
                    "cuando este Comodín evoluciona",
                    "{C:inactive}(Sí, esto {C:attention}reducirá{C:inactive} tu Mult)",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "{C:red}+#2#{} descartes",
                    "{C:inactive}(Sí, esto {C:attention}reducirá{C:inactive} tu Mult)",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Las primeras {C:attention}#1#{} veces que una carta",
                    "{C:attention}Suerte{} se activa cada ronda, añade una",
                    "copia permanente con {C:dark_edition}Policromático{} a tu",
                    "mazo y roba a la {C:attention}Mano",
                    "{C:inactive}(Actualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} tamaño de mano, {C:attention}Naturaleza{}",
                    "Los {C:attention}#6#s, #7#s o #8#s{} jugados tienen",
                    "una probabilidad de {C:green}#4# en #5#{} de ganar {C:money}$#1#{}",
                    "Garantizado si tienes otras cartas {X:grass,C:white}Planta{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Evoluciona después de ganar {C:money}$#2#/16{})"
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} tamaño de mano, {C:attention}Naturaleza{}",
                    "Los {C:attention}#6#s, #7#s o #8#s{} jugados tienen",
                    "una probabilidad de {C:green}#4# en #5#{} de ganar {C:money}$#1#{}",
                    "Garantizado si tienes otras cartas {X:grass,C:white}Planta{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Evoluciona después de ganar {C:money}$#2#/32{})"
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} tamaño de mano, {C:attention}Naturaleza{}",
                    "Los {C:attention}#5#s, #6#s o #7#s{} jugados ganan {C:money}$#1#{}",
                    "Gana {C:money}$#1#{} al final de la ronda por",
                    "cada otra carta {X:grass,C:white}Planta{} que tengas",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Actualmente {C:money}$#4#{}, Máximo de {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} descartes, {C:attention}Naturaleza{}",
                    "{C:mult}+#1#{} Mult por cada {C:attention}#5#, #6# o #7#{} descartado esta ronda",
                    "Mult duplicado si tienes otras cartas {X:fire,C:white}Fuego{} o {X:earth,C:white}Lucha{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Actualmente {C:mult}#4#{}{C:inactive} Mult){}",
                    "{C:inactive}(Evoluciona después de puntuar {C:mult}#2#/60{} {C:inactive}Mult)"
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} descartes, {C:attention}Naturaleza{}",
                    "{C:mult}+#1#{} Mult por cada {C:attention}#5#, #6# o #7#{} descartado esta ronda",
                    "Mult duplicado si tienes otras cartas {X:fire,C:white}Fuego{} o {X:earth,C:white}Lucha{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Actualmente {C:mult}#4#{}{C:inactive} Mult){}",
                    "{C:inactive}(Evoluciona después de puntuar {C:mult}#2#/150{} {C:inactive}Mult)"
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} descartes, {C:attention}Naturaleza{}",
                    "{C:mult}+#4#{} Mult, {X:red,C:white} X#1# {} Mult por cada {C:attention}#6#, #7# o #8#{}",
                    "descartado esta ronda, {X:red,C:white} X {} Mult duplicado si",
                    "tienes otras cartas {X:fire,C:white}Fuego{} o {X:earth,C:white}Lucha{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Actualmente {C:mult}+#5#{}{C:inactive} Mult, {X:red,C:white} X#3# {}{C:inactive} Mult){}",
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} manos, {C:attention}Naturaleza{}",
                    "Los {C:attention}#4#s, #5#s o #6#s{} jugados dan {C:chips}+#1#{} Fichas",
                    "Fichas ganadas duplicadas si tienes",
                    "otras cartas {X:water,C:white}Agua{} o {X:earth,C:white}Tierra{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Evoluciona después de puntuar {C:chips}#2#/400{} {C:inactive}Fichas)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} manos, {C:attention}Naturaleza{}",
                    "Los {C:attention}#4#s, #5#s o #6#s{} jugados dan {C:chips}+#1#{} Fichas",
                    "Fichas ganadas duplicadas si tienes",
                    "otras cartas {X:water,C:white}Agua{} o {X:earth,C:white}Tierra{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Evoluciona después de puntuar {C:chips}#2#/960{} {C:inactive}Fichas)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#3#{} manos, {C:attention}Naturaleza{}",
                    "Los {C:attention}#6#s, #7#s o #8#s{} jugados dan {C:chips}+#1#{} Fichas",
                    "Dan {C:chips}+#5#{} Fichas adicionales por",
                    "cada otra carta {X:water,C:white}Agua{} o {X:earth,C:white}Tierra{}",
                    "{C:inactive,s:0.8}(incluye Comodines y cartas de Energía){}",
                    "{C:inactive}(Actualmente {C:chips}+#4#{}{C:inactive} total)"
                } 
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Gana {C:chips}+#2#{} Fichas",
                    "si la mano jugada contiene al menos",
                    "un {C:attention}As{} de puntuación, gana el {C:attention}doble{} si",
                    "la mano es un {C:attention}Póker{}",
                    "{C:inactive}(Actualmente {C:chips}+#1#{}{C:inactive} Fichas)",
                    "{C:inactive}(Evoluciona a las {C:chips}+64{}{C:inactive} Fichas)"
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Gana {C:chips}+#2#{} Fichas",
                    "si la mano jugada contiene al menos",
                    "dos {C:attention}Ases{} de puntuación, gana el {C:attention}cuádruple{}",
                    "si la mano es un {C:attention}Póker{}",
                    "{C:inactive}(Actualmente {C:chips}+#1#{}{C:inactive} Fichas)",
                    "{C:inactive}(Evoluciona a las {C:chips}+256{}{C:inactive} Fichas)"
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Si la mano jugada es un {C:attention}Póker{}",
                    "cada carta jugada da {X:mult,C:white}X{} Mult",
                    "igual a la {C:attention}raíz cúbica{} ",
                    "de las fichas totales de esa carta",
                } 
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Fichas por",
                    "cada carta {C:attention}sin puntuar{}",
                    "en la mano jugada",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} Fichas por",
                    "cada carta {C:attention}sin puntuar{}",
                    "en la mano jugada",
                }  
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Aplica un sello {C:attention}Rojo{} o {C:attention}Azul{}",
                    "a una carta aleatoria del mazo",
                    "al final de la ronda",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Las cartas puntuadas en tu",
                    "{C:attention}última mano{} se convierten en {C:attention}Suerte{}",
                    "si este es el Comodín más a la derecha",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Bebé{}, {X:red,C:white} X#1# {} Mult",
                    "Crea una carta {C:item}Objeto{} aleatoria con",
                    "{C:dark_edition}Negativa{} al final de la ronda",
                    "{C:inactive}(Sí, esto {C:attention}reducirá{C:inactive} tu Mult)",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Bebé{}, {X:red,C:white}X#2#{} Mult",
                  "Al final de la ronda, una carta",
                  "aleatoria del {C:attention}mazo{} se convierte en {C:attention}Oro{}.",
                  "Las cartas {C:attention}Oro{} {C:attention}retenidas{} en",
                  "mano dan {C:chips}+#1#{} Fichas",
                  "{C:inactive}(Evoluciona después de {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Las cartas {C:attention}Acero{} jugadas dan {X:red,C:white}X#1#{} Mult",
                    "más {X:red,C:white}X#2#{} Mult por cada",
                    "Comodín {X:metal,C:white}Metal{} que tengas",
                    "{C:inactive}(Actualmente {X:red,C:white}X#3#{}{C:inactive} Mult){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "La primera y segunda",
                    "{C:attention}Sota{} jugada dan {X:mult,C:white} X#1# {} Mult",
                    "cuando puntúan y las siguientes {C:attention}Sotas{}",
                    "dan {X:mult,C:white} X#2# {} Mult cuando puntúan"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Cada carta {C:attention}Piedra{} jugada",
                    "gana permanentemente",
                    "{C:chips}+#1#{} Fichas cuando puntúa",
                    "Las cartas {C:attention}Piedra{} se reactivan por cada",
                    "Comodín {X:earth,C:white}Tierra{} que tengas",
                    "{C:inactive}(Actualmente #2# reactivaciones)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Las cartas {C:attention}Comodín{} jugadas dan",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, o {C:money}$#3#{}",
                    "probabilidad de {C:green}#4# en #5#{} para {C:attention}los tres{}",
                    "Las cartas Comodín {C:attention}no pueden{} ser debilitadas"
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Cuando se {C:attention}vende{} una carta",
                    "y al final de la ronda",
                    "gana {C:money}$#1#{} del {C:attention}valor de venta{}",
                    "Da {X:mult,C:white}X#2#{} Mult por cada",
                    "dólar de valor de venta que tiene este Comodín",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Si el {C:attention}primer{} descarte de",
                    "la ronda tiene solo {C:attention}1{} carta,",
                    "destrúyela y gana {C:mult}+#2#{} Mult",
                    "Gana {X:mult,C:white}X#4#{} Mult por cada",
                    "carta descartada",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "Crea una carta {C:attention}Mundo{}",
                    "cada {C:attention}3{} {C:green}rerolls{}",
                    "Cada carta jugada con palo {C:spades}#2#{}",
                    "gana permanentemente {C:chips}+#3#{} Fichas",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Actualmente {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Crea una carta {C:attention}Tarot{} aleatoria",
                    "cada {C:attention}3{} {C:green}rerolls{}",
                    "Probabilidad de {C:green}#2#{} en {C:green}#3#{} de crear {C:attention}2 Tarot{}",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Actualmente {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Límite de Energía",
                    "{X:red,C:white} X#2# {} Mult por cada carta de",
                    "{C:pink}Energía{} usada esta {C:attention}partida{}",
                    "{C:inactive}(Actualmente {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Crea una carta {C:attention}Estrella{}",
                    "cada {C:attention}3{} {C:green}rerolls{}",
                    "Cada carta con palo {C:diamonds}#2#{}",
                    "en mano da {X:mult,C:white} X#3# {} Mult",
                    "{C:inactive}(Debe haber espacio)",
                    "{C:inactive}(Actualmente {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_elgyem = {
              name = "Elgyem",
                text = {
                "Crea una carta {C:planet}Planeta{} {C:dark_edition}Negativa{}",
                "de una de tus {C:attention}#1#{}",
                "manos de póker de mayor nivel",
                "cuando se selecciona la {C:attention}Ciega{}",
                "{C:inactive,s:0.8}(Evoluciona al tener {C:planet,s:0.8}#2#{C:inactive,s:0.8}/#3# cartas planeta diferentes){}"
              }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                  "Crea una carta {C:planet}Planeta{} {C:dark_edition}Negativa{} de",
                  "una de tus {C:attention}#1#{} manos de póker",
                  "de mayor nivel cuando se selecciona la {C:attention}Ciega{}",
                  "Después de abrir {C:attention}#2# Sobres{}, crea un",
                  "{C:attention}Telescopio{} u {C:attention}Observatorio{} si es posible"
                }
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Esta carta puntúa el {C:attention}triple{}",
                    "de su Mult si tienes un",
                    "Comodín {X:lightning, C:black}Eléctrico{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#2#{}{C:inactive} rondas)"
                } 
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "por cada Comodín {X:lightning, C:black}Eléctrico{}",
                    "que tengas {C:inactive}(incluido este){}",
                     "{C:inactive}(Actualmente {C:mult}#2#{C:inactive} Mult)",
                    "{C:inactive}(Evoluciona con una carta{} {C:attention}Piedra Trueno{}{C:inactive})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult por cada",
                    "otro Comodín {X:lightning, C:black}Eléctrico{}",
                    "que tengas{}",
                     "{C:inactive}(Actualmente {X:red,C:white} X#2# {}{C:inactive} Mult)",
                }  
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} Fichas si la mano jugada",
                  "no tiene {C:hearts}#2#{} puntuando",
                  "Previene la Muerte si las fichas puntuadas son",
                  "al menos el {C:attention}50%{} de las fichas requeridas",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult y gana {C:money}$#2#{}",
                    "si la mano jugada contiene",
                    "una {C:attention}Escalera{}",
                    "{C:inactive}(Evoluciona después de {C:attention}#3#{}{C:inactive} rondas)"
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} Mult y gana {C:money}$#2#{}",
                    "si la mano jugada contiene",
                    "una {C:attention}Escalera{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Al venderse, añade {C:money}$#1#{} de valor de venta",
                  "a cada carta Comodín y",
                  "convierte todas las cartas {C:attention}en",
                  "mano a {C:spades}#2#{}",
                  "{C:inactive}(Evoluciona cuando se juega una escalera de color){}",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "Añade el valor de venta de todos los",
                  "{C:attention}Comodines{} al Mult {C:inactive}({C:mult}+#2#{C:inactive})",
                  "Si la mano jugada es una {C:attention}Escalera de Color{}",
                  "añade {C:money}$#1#{} de valor de venta a cada carta Comodín",
                  "{C:inactive}(Evoluciona a {C:money}$#2#{}{C:inactive}/#3# valor total de venta de Comodines)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:red,C:white} X#2# {} Mult por cada {C:money}${} de",
                  "valor de venta de todos los {C:attention}Comodines{}",
                  "Si la mano jugada es una {C:attention}Escalera de Color{}",
                  "y no tienes {C:attention}Dardos Dreepy{}",
                  "crea {C:attention}2 Dardos Dreepy{} con {C:dark_edition}Negativo{}",
                  "{C:inactive}(Actualmente {X:red,C:white} X#3# {C:inactive} Mult){}"
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Gana {C:chips}+#2#{} Fichas si la mano puntuada contiene un {C:attention}#3#{}",
                  "El {C:attention}rango{} requerido aumenta con cada ganancia",
                  "{C:inactive,s:0.8}(Si el rango es el más alto, se vuelve el más bajo)",
                  "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                  "{C:inactive}(Evoluciona cuando tengas un Comodín {X:fire,C:white}Fuego{}{C:inactive})",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Gana {C:chips}+#2#{} Fichas si la mano puntuada contiene un {C:attention}#3#{}",
                  "El {C:attention}rango{} requerido aumenta con cada ganancia",
                  "Ganancia de Fichas aumentada en {C:chips}+1{} por cada",
                  "Comodín {X:fire,C:white}Fuego{} que tengas",
                  "{C:inactive,s:0.8}(Si el rango es el más alto, se vuelve el más bajo)",
                  "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Las cartas jugadas dan {C:mult}+#1#{} Mult.",
                  "Cuando se selecciona la ciega",
                  "debilita {C:attention}#3#{} cartas en tu mazo",
                  "que no sean cartas {C:attention}Acero{}",
                  "{C:inactive}(Evoluciona después de {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Las cartas jugadas dan {C:mult}+#1#{} Mult.",
                  "Cuando se selecciona la ciega",
                  "debilita {C:attention}#3#{} cartas en tu mazo",
                  "que no sean cartas {C:attention}Acero{}",
                  "{C:inactive}(Evoluciona después de {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Las cartas jugadas dan {C:mult}+#1#{} Mult.",
                  "Cuando se selecciona la ciega",
                  "debilita {C:attention}#3#{} cartas en tu mazo",
                  "que no sean cartas {c:attention}Acero{}.",
                  "Las cartas {C:attention}Acero{} jugadas",
                  "se comportan como cartas {C:attention}Cristal{}."
                }
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, o {C:attention}7{} jugado da",
                    "{C:mult}+#1#{} Mult y {C:chips}+#2#{} Fichas al puntuar",
                    "por cada mano jugada esta ronda",
                    "{C:inactive}(Actualmente {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Fichas)",
                } 
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Crea consumibles",
                    "al obtenerlo?",
                    "Crea {C:attention}#1#{}? {C:attention}Etiquetas{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult por cada",
                    "Comodín con un {C:pink}Tipo{} que tengas",
                    "Los {C:attention}Pokémon{} pueden aparecer",
                    "múltiples veces",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Piedra Eterna',
                text = {
                    "Los Pokémon {C:attention}no pueden{} evolucionar",
                    "Los Pokémon {C:attention}Básicos{} dan cada uno {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_tall_grass = {
                name = 'Hierba Alta',
                text = {
                    "Probabilidad de {C:green}#1# en #2#{} de crear un",
                    "Comodín Pokémon {C:chips}Común{} {C:attention}{}",
                    "cuando se juega una mano",
                    "Garantizado si la mano puntuada",
                    "contiene una carta {C:attention}Comodín{}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Rosquilla de Gelatina",
                text = {
                  "Crea una {C:pink}Energía{}",
                  "{C:colorless}Incolora{} cuando se",
                  "selecciona la ciega",
                  "{C:inactive}(Quedan {C:attention}#1#{}{C:inactive} rondas){}"
                }
            },
        },
        Planet = {
           --Me pregunto qué haría un planeta Pokémon?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Funda de Entrenador",
                text = {
                    "Empieza la partida con el",
                    "vale {C:tarot,T:v_poke_goodrod}#1#{}",
                    "y una carta {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Funda Obituario",
                text = {
                    "Todas las cartas tienen un {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Funda Luminosa", 
                text = {
                    "Todos los Comodines se crean",
                    "con pegatinas de {C:pink}Tipo{} aleatorias",
                },
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultraball",
                text = {
                    "Crea un",
                    "Comodín {C:attention}Pokémon Fase 2{} aleatorio",
                    "{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_masterball = {
                name = "Masterball",
                text = {
                    "Crea un",
                    "Comodín {C:attention}Pokémon Legendario{} aleatorio",
                    "{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_transformation = {
                name = "Transformación",
                text = {
                    "Evoluciona el Pokémon más a la izquierda o seleccionado a",
                    "la {C:attention}fase{} más alta",
                    "y da {}+1{} {C:pink}Energía{}", 
                },
            },
            c_poke_obituary = {
                name = "Obituario",
                text = {
                    "Añade un sello {C:pink}Rosa{}",
                    "a {C:attention}1{} carta seleccionada",
                }
            },
            c_poke_nightmare = {
                name = "Pesadilla",
                text = {
                    "Destruye un Comodín Pokémon",
                    "aleatorio y crea {C:attention}3{}",
                    "{C:pink}Energías{} aleatorias con {C:dark_edition}Negativo{}"
                },
            },
            c_poke_revenant = {
                name = "Espectro",
                text = {
                    "Añade un sello {C:item}Plateado{}",
                    "a {C:attention}1{} carta seleccionada",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Etiqueta de Bolsillo",
                text = {
                    "Da un",
                    "{C:pink}Mega Pack de Bolsillo{} gratis",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Etiqueta Shiny",
                text = {
                    "El próximo Comodín de edición base",
                    "de la tienda es gratis y se",
                    "vuelve {C:colorless}Shiny{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Etiqueta Fase 1",
                text = {
                    "La tienda tiene un Comodín",
                    "{C:attention}Fase 1{} gratis",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Etiqueta Safari",
                text = {
                    "La tienda tiene un Comodín",
                    "{C:safari}Safari{} gratis",
                }, 
            },
        },
        Tarot = {
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Búsqueda de Energía",
                text = {
                    "Límite de {C:pink}+2{} Energías"
                },
            },
            v_poke_energyresearch = {
                name = "Investigación de Energía",
                text = {
                    "Límite de {C:pink}+3{} Energías"
                },
            },
            v_poke_goodrod = {
                name = "Caña Buena",
                text = {
                    "Los packs de {C:attention}Bolsillo{} tienen",
                    "{C:attention}1{} carta más",
                },
            },
            v_poke_superrod = {
                name = "Supercaña",
                text = {
                    "Los packs de {C:attention}Bolsillo{} tienen",
                    "{C:attention}1{} carta más",
                },
            },
        },
        Other = {
            Grass = {
                name = "Tipo",
                text = {
                  "{X:grass,C:white}Planta{}",
                }
            },
            Fire = {
                name = "Tipo",
                text = {
                  "{X:fire,C:white}Fuego{}",
                }
            },
            Water = {
                name = "Tipo",
                text = {
                  "{X:water,C:white}Agua{}",
                }
            },
            Lightning = {
                name = "Tipo",
                text = {
                  "{X:lightning,C:black}Eléctrico{}",
                }
            },
            Psychic = {
                name = "Tipo",
                text = {
                  "{X:psychic,C:white}Psíquico{}",
                }
            },
            Fighting = {
                name = "Tipo",
                text = {
                  "{X:fighting,C:white}Lucha{}",
                }
            },
            Colorless = {
                name = "Tipo",
                text = {
                  "{X:colorless,C:white}Incoloro{}",
                }
            },
            Dark = {
                name = "Tipo",
                text = {
                  "{X:dark,C:white}Siniestro{}",
                }
            },
            Metal = {
                name = "Tipo",
                text = {
                  "{X:metal,C:white}Acero{}",
                }
            },
            Fairy = {
                name = "Tipo",
                text = {
                  "{X:fairy,C:white}Hada{}",
                }
            },
            Dragon = {
                name = "Tipo",
                text = {
                  "{X:dragon,C:white}Dragón{}",
                }
            },
            Earth = {
                name = "Tipo",
                text = {
                  "{X:earth,C:white}Tierra{}",
                }
            },
            --¿Has oído? ¡El pájaro es la palabraaaa!
            Bird = {
                name = "Tipo",
                text = {
                  "{X:bird,C:white}Pájaro{}",
                }
            },
            --cola de información usada para cosas como kabuto y omanyte
            ancient = {
                name = "Antiguo",
                text = {
                    "Efecto basado en",
                    "número de {C:attention}#1#s{}",
                    "en mano de póker",
                    "{C:inactive}(Los efectos son {C:attention}acumulativos{}{C:inactive})"
                }
            },
            eitem = {
                name = "Carta de Evolución",
                text = {
                    "Evoluciona el Comodín más a la izquierda",
                    "o seleccionado {C:attention}elegible{}",
                    "al final de la siguiente ronda"
                }
            },
            --Cola de información usada por algunos Consumibles
            hitem = {
                name = "Carta Equipada",
                text = {
                    "Usada por {C:attention}#1#{}"
                }
            },
            basic = {
                name = "Básico",
                text = {
                    "Un Comodín Pokémon",
                    "que no ha {C:attention}Evolucionado{}"
                }
            },
            stage1 = {
                name = "Fase 1",
                text = {
                    "Un Comodín Pokémon",
                    "que ha {C:attention}Evolucionado{} una vez"
                }
            },
            stage2 = {
                name = "Fase 2",
                text = {
                    "Un Comodín Pokémon",
                    "que ha {C:attention}Evolucionado{} dos veces"
                }
            },
            energy = {
                name = "Energía Usada",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Probabilidad de Dinero",
                text = {
                    "{C:attention}#1#%{} de probabilidad de",
                    "ganar {C:money}$1{} adicional"
                }
            },
            mult_progress = {
                name = "Progreso de Ganancia de Mult",
                text = {
                    "{C:attention}#1#%{} de progreso",
                    "hacia aumento de Ganancia",
                    "de {C:mult}Mult{} en {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Progreso de Ganancia de Fichas",
                text = {
                    "{C:attention}#1#%{} de progreso",
                    "hacia aumento de Ganancia",
                    "de {C:chips}Fichas{} en {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Progreso de Ganancia de Dinero",
                text = {
                    "{C:attention}#1#%{} de progreso",
                    "hacia aumento de Ganancia",
                    "de {C:money}${} en {C:money}1${}"
                }
            },
            availability = {
                name = "Disponibilidad",
                text = {
                    "No disponible si",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Bebé",
                text = {
                    "Cuando se juega la mano",
                    "si hay algún Comodín {C:attention}no-Bebé{}",
                    "a la derecha de este",
                    "Comodín, {C:attention}debilita{} este Comodín"
                }
            },
            nature = {
                name = "Naturaleza",
                text = {
                    "Los {C:attention}#1#{} deseados se",
                    "establecen al azar al crear",
                    "el Comodín"
                }
            },
            playing_card_to_evolve = {
                name = "Requisito",
                text = {
                    "Debe usarse en",
                    "{C:attention}carta de juego{} para",
                    "poder evolucionar"
                }
            },
            deli_gift = {
                name = "Regalos",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - Carta de {C:item}Objeto{} {C:attention}",
                    "{C:green}20%{} - {C:attention}Etiqueta de Cupón",
                    "{C:green}15%{} - Tarjeta Regalo {C:dark_edition}Policroma{}",
                }
            },
            percent_chance = {
                name = "Probabilidad",
                text = {
                  "{C:green}#1#%{} de probabilidad",
                  "de que ocurra el {C:attention}efecto{}",
                  "{C:inactive}(Las probabilidades no pueden aumentarse){}"
                }
            },
            holding = {
                name = "Equipado",
                text = {
                  "Este Comodín viene con",
                  "una carta {C:attention}#1#{}",
                  "{C:inactive}(Debe haber espacio){}"
                }
            },
            eeveelution = {
                name = "Evoluciones",
                text = {
                    "{C:attention}Piedra Agua{} - {X:water,C:white}Vaporeon{}",
                    "{C:attention}Piedra Trueno{} - {X:lightning,C:black}Jolteon{}",
                    "{C:attention}Piedra Fuego{} - {X:fire,C:white}Flareon{}",
                    "{C:attention}Piedra Solar{} - {X:psychic,C:white}Espeon{}",
                    "{C:attention}Piedra Lunar{} - {X:dark,C:white}Umbreon{}",
                    "{C:attention}Piedra Hoja{} - {X:grass,C:white}Leafeon{}",
                    "{C:attention}Piedra Hielo{} - {X:water,C:white}Glaceon{}",
                    "{C:attention}Piedra Día{} - {X:fairy,C:white}Sylveon{}"
                }
            },
            precise_energy_tooltip = {
                name = "Escalado Preciso de Energía",
                text = {
                    "{s:0.8}Usa {C:attention,s:0.8}decimales{} para todos los valores al aplicar el bonus de {C:pink,s:0.8}Energía{}{}",
                    "{s:0.8}Con esta opción {C:attention,s:0.8}desactivada{}{s:0.8} ocurrirá lo siguiente para el bonus:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - Usa Decimales",
                    "{C:attenion}2. {s:0.8}{C:mult,s:0.8}Mult{}{s:0.8} y {C:chips,s:0.8}Fichas{}{s:0.8} planos - Redondea al número entero superior",
                    "{C:attenion}3. {s:0.8}Ganancia de {C:mult,s:0.8}Mult{}{s:0.8} y {C:chips,s:0.8}Fichas{}{s:0.8} - Componente decimal mostrado", 
                    "{s:0.8}como porcentaje, usado para aplicar bonus al {C:mult,s:0.8}Mult{}{s:0.8} y {C:chips,s:0.8}Fichas{} base",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Componente decimal mostrado como porcentaje,",
                    "{s:0.8}usado como probabilidad de ganar {C:money,s:0.8}${}{s:0.8} extra{}",
                    "{C:inactive,s:0.8}(Los Comodines no-Pokémon siempre usarán escalado preciso){}"
                }
            },
            designed_by = {
              name = "Diseñado Por",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Solo puede obtenerse",
                    "mediante {C:attention}Evolución{}",
                    "o ciertas {C:attention}Pokéballs{}"
                } 
            },

            --esta clave está extremadamente maldita xd
            poke_pink_seal_seal = {
                name = "Sello Rosa",
                text = {
                    "Crea una carta de {C:pink}Energía{}",
                    "si puntúa en la",
                    "{C:attention}primera mano{} de la ronda",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            
            --menos maldita
            poke_silver_seal = {
                name = "Sello Plateado",
                text = {
                  "Crea una carta de {C:item}Objeto{} y",
                  "es {C:attention}descartada{} si se {C:attention}mantiene{}",
                  "en mano cuando se puntúan las cartas"
                }
            },

            grass_sticker = {
                name = "Tipo",
                text = {
                    "{X:grass,C:white}Planta{}"
                } 
            },
            fire_sticker = {
                name = "Tipo",
                text = {
                    "{X:fire,C:white}Fuego{}"
                } 
            },
            water_sticker = {
                name = "Tipo",
                text = {
                    "{X:water,C:white}Agua{}"
                } 
            },
            lightning_sticker = {
                name = "Tipo",
                text = {
                    "{X:lightning,C:white}Eléctrico{}"
                } 
            },
            psychic_sticker = {
                name = "Tipo",
                text = {
                    "{X:psychic,C:white}Psíquico{}"
                } 
            },
            fighting_sticker = {
                name = "Tipo",
                text = {
                    "{X:fighting,C:white}Lucha{}"
                } 
            },
            colorless_sticker = {
                name = "Tipo",
                text = {
                    "{X:colorless,C:white}Incoloro{}"
                } 
            },
            dark_sticker = {
                name = "Tipo",
                text = {
                    "{X:dark,C:white}Siniestro{}"
                } 
            },
            metal_sticker = {
                name = "Tipo",
                text = {
                    "{X:metal,C:white}Acero{}"
                } 
            },
            fairy_sticker = {
                name = "Tipo",
                text = {
                    "{X:fairy,C:white}Hada{}"
                } 
            },
            dragon_sticker = {
                name = "Tipo",
                text = {
                    "{X:dragon,C:white}Dragón{}"
                } 
            },
            earth_sticker = {
                name = "Tipo",
                text = {
                    "{X:earth,C:white}Tierra{}"
                } 
            },
            --Como estos normalmente se descubren por defecto, probablemente no importarán
            --Pero PODRÍAN importar, ¿verdad? ¿¡Verdad!?
            undiscovered_energy = {
                name = "No Descubierto",
                text = {
                    "Compra o usa",
                    "esta carta en una",
                    "partida sin semilla para",
                    "aprender qué hace"
                }
            },
            undiscovered_item = {
                name = "No Descubierto",
                text = {
                    "Compra o usa",
                    "esta carta en una",
                    "partida sin semilla para",
                    "aprender qué hace"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Pack de Bolsillo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Pack de Bolsillo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Pack de Bolsillo Jumbo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Pack de Bolsillo Mega",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Pack de Bolsillo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Pack de Bolsillo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Pack de Bolsillo Jumbo",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Pack de Bolsillo Mega",
                text = {
                    "Elige {C:attention}#1#{} de hasta",
                    "{C:attention}#2#{} Cartas de {C:pink}Energía{} u {C:item}Objeto{}",
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
            k_energy = "Energía",
            k_item = "Objeto",
            k_poke_pocket_pack = "Pack de Bolsillo",

            k_poke_safari = "Safari",

            b_save = "GUARDAR",
            b_energy_cards = "Cartas de Energía",
            b_item_cards = "Cartas de Objeto",
            
            --Cosas del Menú del Mod
            poke_settings_header_required = "Requiere Reinicio:",
            poke_settings_header_norequired = "No Requiere Reinicio:",
            poke_settings_pokemon_only = "¿Solo Pokémon?",
            poke_settings_unlimited_energy = "¿Energía Ilimitada?",
            poke_settings_shiny_playing_cards = "Shiny en cartas de juego?",
            poke_settings_jokers_only = "¿Solo Comodines?",
            poke_settings_no_evolutions = "¿Sin Evoluciones?",
            poke_settings_pokeballs = "¿Pokéballs?",
            poke_settings_pokedex_number = "¿Números de Pokédex?",
            poke_settings_pokemon_splash = "¿Carta de Presentación Pokémon?",
            poke_settings_pokemon_gen_one = "¿Solo Gen 1?",
            poke_settings_pokemon_precise_energy = "¿Usar Escalado Preciso de Energía?",
            poke_credits_actualcredits = "Créditos",
            poke_credits_thanks = "Gracias a",
            poke_credits_lead = "Desarrollador Principal: ",
            poke_credits_graphics = "Diseño Gráfico: ",
            poke_credits_quality_assurance_main = "Control de Calidad: ",
            poke_credits_developer = "Desarrolladores: ",
            poke_credits_designer = "Asistentes de Diseño: ",
            poke_credits_community_manager = "Gestores de Comunidad: ",
            poke_credits_promotion_producer = "Productor de Promoción: ",
            poke_credits_localization = "Localización: ",

            poke_plus_pokeitem = "+1 Objeto",
            poke_plus_energy = "+1 Energía",
            poke_destroyed_ex = "¡Destruido!",
            poke_evolve_success = "¡Evolucionado!",
            poke_evolve_level = "¡Subida de nivel!",
            poke_tera_ex = "¡Tera!",
            poke_metal_ex = "¡Metal!",
            poke_dragon_ex = "¡Dragón!",
            poke_energized_ex = "¡Energizado!",
            poke_unlimited_energy = "Infinito",

            --Algunas cosas de cola de información/variables
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone y Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokéball",
            goodrod_variable = "Caña Buena",
            pinkseal_variable = "Sello Rosa",

            --De la Línea de Gastly
            poke_lick_ex = "¡Lengüetazo!",
            poke_lick = "Lengüetazo",
            --De Kingler
            poke_surf_ex = "¡Surf!",
            --De la Línea de Voltorb
            poke_explosion_ex = "¡BOOM!",
            --De Exeggutor
            poke_solar_ex = "¡Solar!",
            poke_solar = "Solar",
            --De Pinsir
            poke_pinsir_pin = "¡Pinchado!",
            poke_pinsir_remove_pin = "¡Despinchado!",
            --De la línea de Tangela
            poke_tangela_bonus = "¡Todo!",
            --Cosa de Golbat y Crobat
            poke_screech_ex = "¡Chirrido!",
            --De Bellossom
            poke_petal_dance_ex = "¡Danza Pétalo!",
            poke_petal_dance = "Danza Pétalo",
            --De Scizor
            poke_x_scissor_ex = "¡Tijera X!",
            poke_x_scissor = "Tijera X",
            --De Kingdra
            poke_twister_ex = "¡Ciclón!",
            --De Mime Jr.
            poke_mime_ex = "¡Mimo!",
            --De Magmortar
            poke_fire_blast_ex = "¡Llamarada!",
            --De Vikavolt
            --Si no es 100% preciso...
            poke_thunder_ex = "¡Trueno!",
            poke_gift_ex = "¡Regalo!",
            poke_faint_ex = "¡Debilitado!",
            poke_nido_ex = "¡Nido!",
            poke_disguise_intact = "¡Disfraz Intacto! ¡Muerte Prevenida!",
            poke_disguise_broken = "¡Disfraz Roto! ¡Muerte No Prevenida!",
            poke_dig_ex = "¡Excavar!",
            poke_blazekick_ex = "¡Patada Ígnea!",
            poke_darts_ex = "¡Dardos!"
        },
        --Estas son las Etiquetas
        --¿Sabes cómo los sellos y ediciones tienen esas insignias en la parte inferior? ¡Esto es para eso!
        labels = {
            poke_pink_seal_seal = "Sello Rosa",
            poke_silver_seal = "Sello Plateado",

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
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Espacio de Comodín al derrotar la Ciega del Jefe {C:inactive}(hasta 5)"},
           ch_c_poke_nuzlocke = {"Primera Tienda de cada Apuesta contiene un {C:attention}Pack de Bufón"}
        },
    }
}
