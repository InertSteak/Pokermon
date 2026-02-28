-- Welcome to es_419.lua!
-- Me gustan los gatonejos
return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Baraja de entrenador",
                text = {
                    "Comienza la partida con",
					"el vale {C:tarot,T:v_poke_goodrod}#1#{}",
					"y una {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Baraja telequinética",
                text = {
                    "Comienza la partida con",
					"el vale {C:tarot,T:v_crystal_ball}#1#{}",
					"y {C:attention}2{} copias",
					"de {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "Baraja obituaria",
                text = {
                    "Todas las cartas tienen",
					"un {C:dark_edition}#1#{}",
                } 
            },
            b_poke_revenantdeck = {
                name = "Baraja renacida",
                text = {
                    "Todas las cartas tienen","un {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Baraja luminosa",
                text = {
                    "Todos los comodines son",
					"creados con {C:pink}1 Energía{} y",
					"con un sticker de un {C:pink}Tipo{} al azar"
                }
            },
            b_poke_ampeddeck = {
                name = "Baraja energizada",
                text = {
                    "Comienza la partida con",
					"el vale {C:tarot,T:v_poke_energysearch}#1#{}",
					"y una copia de",
					"{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
			b_poke_futuredeck = {
                name = "Baraja profética",
                text = {
                    "{C:purple}+#1# Profecía{}",
                } 
            },
            b_poke_stadiumdeck = {
                name = "Baraja Stadium",
                text = {
                    "Comienza la partida con una","carta {C:attention}adicional, multi, versátil,",
                    "{C:attention}de vidrio, de acero, de piedra,",
                    "{C:attention}de oro,{} y de la {C:attention}suerte{}"
                } 
            },
            b_poke_megadeck = {
                name = "Mega Baraja",
                text = {
                    "Comienza la partida con los vales",
                    "{C:tarot,T:v_reroll_surplus}#2#{},","{C:tarot,T:v_reroll_glut}#3#{}",
                    "y {C:tarot,T:v_crystal_ball}#5#{} y",
                    "una {C:spectral,T:c_poke_megastone}#1#{}",
                    "{C:red}-#4#{} ranura en la tienda"
                } 
            },
            b_poke_vendingdeck = {
                name = "Baraja expendedora",
                text = {
                    "Después de derrotar a cada",
                    "{C:attention}ciega jefe impar{}, gana 1",
                    "{C:attention,T:tag_vremade_double}#1#",
                } 
            },
            b_poke_diceydeck = {
                name = "Baraja tramposa",
                text = {
                    "{C:hazard}+#1#{} nivel de trampas y límite, {C:attention}+#1#{} tamaño de mano",
                    "Al final de cada ronda:",
                    "Gana {C:money}#4# ${} por cada carta",
                    "{C:attention}trampa{} en tu {C:attention}baraja completa",
                    "No ganas {C:attention}intereses"
                } 
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Cámara Cartuja",
                text = {
                    "Se inhabilita tipos al azar","en cada mano",
                }, 
            },
			bl_poke_mirror = {
                name = "El espejo",
                text = {
                    "El comodín más a la derecha",
                    "se transforma en un {c:attention}Ditto",
                }, 
            },
            bl_poke_rocket = {
                name = "Los Rocket",
                text = {
                    "Todas tus cartas","se sacan boca abajo",
                    "si tienes 25 $ o más"
                }, 
            },
            bl_poke_star = {
                name = "La estrella",
                text = {
                    "Se inhabilita un tipo al azar",
                    "en cada mano",
                },
            },
            bl_poke_gray_godfather = {
                name = "Padrino gris",
                text = {
                    "-#1# $ cuando juegas",
                    "o descartas una mano",
                    "Destruye un comodín al azar",
                    "si estás endeudado",
                }, 
            },
            bl_poke_white_executive = {
                name = "Ejecutivo blanco",
                text = {
                    "Debilita #1# cartas en tu baraja,",
                    "igual al valor total de",
                    "venta de todos tus","comodines y consumibles",
                }, 
            },
            bl_poke_magma = {
                name = "Los Magma",
                text = {
                    "Las fichas base se dividen en cuatro",
                }, 
            },
            bl_poke_aqua = {
                name = "Los Aqua",
                text = {
                    "El multi base se divide en cuatro",
                }, 
            },
            bl_poke_iridescent_hacker = {
                name = "Hacker iridiscente",
                text = {
                    "Se inhabilita tipos al azar",
                    "en cada ronda",
                },
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Crea al azar un",
					"{C:attention}Pokémon Básico{}",
					"{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_greatball = {
                name = "Super Ball",
                text = {
                    "Crea al azar un",
					"{C:attention}Pokémon de Etapa 1{}",
					"{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_moonstone = {
                name = "Piedra Lunar",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:green}#2# en #3#{} probabilidades de",
					"subir el nivel de la",
					"{C:attention}mano de póker{} seleccionada",
					"{C:inactive}(Mano actual: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Piedra Solar",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Mejora {C:attention}#1#{} cartas seleccionadas",
					"a {C:attention}cartas versátiles{} y",
					"cambia {C:attention}al azar{} sus categorías",
                },
            },
            c_poke_waterstone = {
                name = "Piedra Agua",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Mejora {C:attention}#1#{} carta seleccionada",
					"a {C:attention}carta adicional{}",
					"Si ya es una {C:attention}carta adicional{},",
					"{C:attention}duplica{} su total de fichas",
					"{C:inactive}(Máximo de {C:chips}+#2#{C:inactive} fichas por aumento)",
                },
            },
            c_poke_thunderstone = {
                name = "Piedra Trueno",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Destruye {C:attention}1{} carta seleccionada,",
					"agrega {C:attention}2 cartas de oro{} con",
					"la misma categoría a tu baraja",
					"y saca {C:attention}1{} a tu mano",
                },
            },
            c_poke_firestone = {
                name = "Piedra Fuego",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Mejora {C:attention}#1#{} cartas seleccionadas",
					"a {C:attention}cartas multi{} y",
					"luego destroye {C:attention}1{} al azar",
                },
            },
            c_poke_leafstone = {
                name = "Piedra Hoja",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:green}#1# en #2#{} probabilidades",
					"para cada carta en tu mano de",
					"mejorarse a {C:attention}carta de la suerte{}",
                },
            },
            c_poke_linkcable = {
                name = "Cordón Unión",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Selecciona {C:attention}#1#{} cartas",
					"{C:attention}Aumenta{} la categoría","de la carta {C:attention}izquierda{}","{C:attention}Disminuye{} la categoría","de la carta {C:attention}derecha{}",
                },
            },
            c_poke_leftovers = {
                name = "Restos",
                text = {
                    "Es {C:attention}reusable{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Agrega {C:money}#2# ${} al valor de",
					"venta del comodín más",
					"a la izquierda o seleccionado",
					"{C:inactive}(Usable una vez por ronda)",
                }
            },
            c_poke_leek = {
                name = "Puerro",
                text = {
                    "Es {C:attention}reusable{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:green}#1# en #2#{} probabilidades de agregarse",
					"{C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o",
					"{C:dark_edition}polícromía{} a sí mismo",
					"Remueve su {C:attention}edición{} al final de la ronda",
					"{C:inactive}(Usable una vez por ronda)",
                }
            },
            c_poke_thickclub = {
                name = "Hueso Grueso",
                text = {
                    "Es {C:attention}reusable{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Permanentemente",
					"agrega {C:chips}+#2#{} fichas",
					"a {C:attention}#1#{} carta seleccionada",
					"{C:inactive}(Usable una vez por ronda)",
                }
            },
			c_poke_heavyboots = {
                name = "Botas Gruesas",
                text = {
                    "Es {C:attention}reusable{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "La {C:green,E:1,S:1.1}probabilidad{} de que",
					"las cartas {C:attention}trampa{}",
					"se destruyan se vuelve {C:attention}0",
					"hasta el final de la ronda",
                    "{C:inactive}(Usable una vez por ronda)",
                }
            },
            c_poke_teraorb = {
                name = "Orbe Teracristal",
                text = {
                    "{C:attention}Cambia Tipo:{} {X:pink,C:white}Azar{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:pink}Energiza{} al comodín más",
					"a la izquierda o seleccionado{}",
                },
            },
            c_poke_metalcoat = {
                name = "Revestimiento Metálico",
                text = {
                    "{C:attention}Cambia Tipo:{} {X:metal,C:white}Metal{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Crea una copia con","mejora de {C:attention}carta de acero{}","de {C:attention}1{} carta seleccionada",
                },
            },
            c_poke_dragonscale = {
                name = "Escama Dragón",
                text = {
                    "{C:attention}Cambia Tipo:{} {X:dragon,C:white}Dragón{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Crea hasta {C:attention}3{}",
					"{C:item}objetos{} o {C:pink}energías{} al azar",
					"{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_kingsrock = {
                name = "Roca del Rey",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Convierte {C:attention}#1#{} carta","seleccionada a {C:attention}rey{}",
                },
            },
            c_poke_upgrade = {
                name = "Mejora",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Agrega {C:attention}mejoras diferentes",
					"a {C:attention}carta de piedra{} al azar","a {C:attention}#1#{} cartas seleccionadas",
                }
            },
            c_poke_dubious_disc = {
                name = "Disco Extraño",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}Mejora{} todas las cartas",
					"{C:attention}en tu mano{} al azar",
                }
            },
            c_poke_icestone = {
                name = "Piedra Hielo",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Mejora {C:attention}#1#{} cartas seleccionadas",
					"a {C:attention}cartas de vidrio{}",
					"{C:green}#2# en #3#{} probabilidades para cada",
					"carta seleccionada de {C:attention}destruirse{}",
                }
            },
            c_poke_shinystone = {
                name = "Piedra Día",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Agrega edición {C:dark_edition}laminado{}, {C:dark_edition}holográfico{},",
					"o {C:dark_edition}polícromo{} a {C:attention}1{} carta seleccionada","de tu mano y remueve su {C:attention}mejora{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Cuchara Torcida",
                text = {
                    "Genera la última","carta de {C:item}objeto{} o {C:pink}energía{}",
					"usada en esta partida","a excepción de {s:0.8,C:item}Cuchara Torcida,","{s:0.8,C:item}Reusables y Zumo de Bayas{s:0.8}"
                }
            },
            c_poke_prismscale = {
                name = "Escama Bella",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Cambia el {C:attention}palo{} de {C:attention}#2#{} cartas al",
					"azar {C:attention}en tu mano{} al {C:attention}palo{} de","{C:attention}#1#{} carta seleccionada",
                }
            },
            c_poke_duskstone = {
                name = "Piedra Noche",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Gana {C:money}#1# ${} por cada comodín",
					"{C:attention}drenable{} y {C:attention}drena {C:money}1 ${} de",
					"sus valores de venta",
					"{br:2}ERROR - CONTACT STEAK",
					"Después de {C:attention}#2#{} {C:inactive}[#3#]{} rondas solo",
					"ganas {C:money}#1# ${} por cada comodín",
					"{C:inactive}(Actual {C:money}#4# ${C:inactive}/#5# $ Máximo)"
                }
            },
            c_poke_dawnstone = {
                name = "Piedra Alba",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Gana {C:money}${} igual al {c:attention}doble{}",
					"del valor de {C:mult}multi{} de {C:attention}#1#{}",
					"{C:inactive}#4#{}",
					" ",
					"{C:inactive}(Actual {C:money}#2# ${C:inactive}/40 $ Máximo)",
                }
            },
            c_poke_hardstone = {
                name = "Piedra Dura",
                text = {
                    "Es una {C:attention}carta evolutiva{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Mejora {C:attention}1{} carta seleccionada a",
					"{C:attention}carta de piedra{} con {C:chips}+#2#{} fichas",
					"extra por cada comodín de",
					"tipo {X:earth,C:white}Tierra{} que tengas"
                }
            },
            c_poke_miracleseed = {
                name = "Semilla Milagro",
                text = {
                    "Mejora {C:attention}1{} carta",
                    "seleccionada a carta {C:attention}semilla{}"
                }
            },
            c_poke_berry_juice = {
                name = "Zumo de Baya",
                text = {
                    "Su efecto depende del","{C:attention}consumible{} destruido"
                }
            },
            c_poke_berry_juice_energy = {
                name = "Zumo de Baya Energizado",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado de cualquier {C:pink}tipo{}","{C:inactive}(Máximo de {C:attention}#1# {C:inactive}aumentos por comodín)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "Zumo de Baya Fantasmal",
                text = {
                    "Agrega un {C:attention}sello{} al azar y edición","{C:dark_edition}laminado{}, {C:dark_edition}holográfico{} o {C:dark_edition}polícromo{} a","{C:attention}1{} carta seleccionada de tu mano"
                },
            },
            c_poke_berry_juice_planet = {
                name = "Zumo de Baya Estrellado",
                text = {
                    "Aumenta 1 nivel de la","{C:attention}mano de póker{} con mayor nivel",
                },
            },
            c_poke_berry_juice_item = {
                name = "Zumo de Baya Objetizado",
                text = {
                    "Crea una {C:item}Cuchara Torcida{}",
					"{C:green}#1# en #2#{} probabilidades de",
					"crear {C:attention}2{} en su lugar","{C:inactive}(Debe haber espacio){}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "Zumo de Baya Ocultista",
                text = {
                    "Crea una carta de {C:tarot}El loco{}","y gana {C:money}#1# ${}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "Zumo de Baya Misterioso",
                text = {
                    "Crea un {C:item}Zumo de Baya{} al azar"
                }
            },
            c_poke_heartscale = {
                name = "Escama Corazón",
                text = {
                    "Selecciona {C:attention}#1#{} cartas,",
                    "convierte la carta de la {C:attention}izquierda{}",
                    "en la carta de la {C:attention}derecha{} y",
                    "ambas a {C:hearts}#2#{}",
                    "{C:inactive}(Puedes arrastrarlos",
					"{C:inactive}para cambiar el orden)",
                }
            },
            c_poke_oven = {
                name = "Microondas",
                text = {
                  "Gana {C:attention}+#1#{} descarte por esta ronda",
                  "si lo usaste durante una {C:attention}ciega",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforma al {C:attention}Rotom{} más a la",
                  "izquierda o seleccionado"
                }
            },
            c_poke_washing_machine = {
                name = "Lavadora",
                text = {
                  "Gana {C:attention}+#1#{} mano por esta ronda",
                  "si lo usaste durante una {C:attention}ciega",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforma al {C:attention}Rotom{} más a la",
                  "izquierda o seleccionado"
                }
            },
            c_poke_fridge = {
                name = "Nevera",
                text = {
                  "Crea {C:attention}2{} {C:attention}consumibles{} al azar",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforma al {C:attention}Rotom{} más a la",
                  "izquierda o seleccionado"
                }
            },
            c_poke_fan = {
                name = "Ventilador",
                text = {
                  "Crea hasta {C:attention}2{}",
                  "comodines {C:blue}comunes{}",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforma al {C:attention}Rotom{} más a la",
                  "izquierda o seleccionado"
                }
            },
            c_poke_lawn_mower = {
                name = "Podadora de césped",
                text = {
                  "Gana {C:attention}+#1#{} tamaño de mano por esta",
                  "ronda si lo usaste durante una {C:attention}ciega",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforma al {C:attention}Rotom{} más a la",
                  "izquierda o seleccionado"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Energía Planta",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:grass,C:white}Planta{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_fire_energy = {
                name = "Energía Fuego",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:fire,C:white}Fuego{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_water_energy = {
                name = "Energía Agua",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:water,C:white}Agua{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energía Rayo",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:lightning,C:black}Rayo{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energía Psíquica",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:psychic,C:white}Psíquico{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energía Lucha",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:fighting,C:white}Lucha{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energía Incolora",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:colorless,C:white}Incoloro{} disponible","Tiene la mitad de efectividad con","comodines que no son de tipo {X:colorless,C:white}Incoloro{}","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energía Oscura",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:dark,C:white}Oscuro{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_metal_energy = {
                name = "Energía Metal",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:Metal,C:white}Metal{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energía Hada",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:fairy,C:white}Hada{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Energía Dragón",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:dragon,C:white}Dragón{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_earth_energy = {
                name = "Energía Tierra",
                text = {
                    "{C:pink}Energiza{} al comodín más a la","izquierda o seleccionado","de tipo {X:earth,C:white}Tierra{} disponible","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_emergy = {
                name = "Emergía",
                text = {
                    "Crea {C:attention}1{} {C:green}energía{} al azar","con {C:dark_edition}negativo{} por cada","{C:attention}Comodín alegre{} o {C:legendary}comodín M{}"
                },
            },
            c_poke_bird_energy = {
                name = "Energía Pájaro",
                text = {
                  ""
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Variocolor",
                label = "Variocolor",
                text = {
                    "{C:attention}+1{} ranura de paquete potenciador","disponible en la tienda",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
            -- HA HA! Not anymore!

            m_poke_hazard = {
                name = "Carta trampa",
                text = {
					"No tiene categoría o palo",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#1# en #2#{} probabilidades de",
                    "ser destruida si está {C:attention}en tu",
                    "{C:attention}mano{} al final de la ronda"
                },
            },
            m_poke_flower = {
                name = "Carta floral",
                text = {
                    "{X:mult,C:white} X#1# {} multi si la mano",
                    "de póker contiene","{C:attention}4 o más palos"
                },
            },
            m_poke_seed = {
                name = "Carta semilla",
                text = {
                    "{C:attention}Crece{} cuando anota",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Se transforma en una",
                    "carta {C:attention}floral{} y ganas {C:money}#3# ${}",
                    "tras crecer {C:attention}#1#{} {C:inactive}[#2#]{} veces",
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "Pozo de diamante",
                colour = "Diamond",
                text = {
                    "Los Pokémon {C:attention}no Bebé{} evolucionan {C:attention}1{} ronda más lento",
					"{s:0.8}Se aplica a todos los pozos anteriores"
                }
            },
            stake_poke_pearl = {
                name = "Pozo de perla",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} límite de energía",
					"{s:0.8}Se aplica a todos los pozos anteriores"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} tamaño de mano",
					"Gana {C:money}#1# ${} por cada",
					"{C:attention}#3#{} en tu mano",
					"{C:inactive,s:0.8}(La categoría cambia cada ronda){}",
					"{C:inactive}(Evoluciona tras dar {C:money}#2# ${C:inactive})",
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
					"Gana {C:money}#1# ${} o {C:money}#5# ${} por cada",
					"{C:attention}#4#{} en tu mano",
					"{C:inactive,s:0.8}(La categoría cambia cada ronda){}",
					"{C:inactive}(Evoluciona tras dar {C:money}#2# ${C:inactive})",
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
					"Gana {C:money}#1# ${} por cada",
					"{C:attention}#4#{} en tu mano",
					"{C:inactive,s:0.8}(La categoría cambia cada ronda){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} descarte",
					"Obtiene {C:mult}+#2#{} multi por mano jugada",
					"cuando tienes {C:attention}#3#{} descartes",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +16{C:inactive} multi)",
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} descarte",
					"Obtiene {C:mult}+#2#{} multi por mano jugada",
					"cuando tienes {C:attention}#3#{} descartes",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +36{C:inactive} multi)",
                }
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} descarte, {C:mult}+#1#{} multi",
					"{X:mult,C:white} X#2# {} multi cuando tienes",
					"{C:attention}#3#{} descartes restantes",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Charizard X",
                text = {
                    "{X:mult,C:white} X#1# {} multi cuando tienes","{C:attention}#2#{} descartes restantes",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "Mega Charizard Y",
                text = {
                    "{C:red}+#1#{} descartes",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#2#{} mano",
					"Obtiene {C:chips}+#4#{} ficha por cada",
					"{C:attention}mano restante{} cuando",
					"juegas una mano",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:chips}+#1#{C:inactive} / +#3#{C:inactive} fichas)",
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#2#{} mano",
					"Obtiene {C:chips}+#4#{} fichas por cada",
					"{C:attention}mano restante{} cuando",
					"juegas una mano",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:chips}+#1#{C:inactive} / +#3#{C:inactive} fichas)",
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} mano, {C:chips}+#1#{} fichas",
					"{C:chips}+#2#{} fichas por cada",
					"mano restante",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:chips}+#2#{} manos",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} multi",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} multi",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_butterfree = {
                name = "Butterfree",
                text = {
                    "{C:mult}+#1#{} multi",
                } 
            },
            j_poke_weedle = {
                name = "Weedle",
                text = {
                    "{C:chips}+#1#{} fichas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} fichas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} fichas"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:chips}+#1#{} fichas",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "Otorga {C:mult}+#2#{} multi por cada",
					"{C:attention}categoría{} y {C:attention}palo{} diferente",
					"en la mano jugada",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Otorga {C:mult}+#2#{} multi por cada",
					"{C:attention}categoría{} y {C:attention}palo{} diferente",
					"en la mano jugada",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Otorga {C:mult}+#1#{} multi por cada",
					"{C:attention}categoría{} y {C:attention}palo{} diferente",
					"en la mano jugada",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Otorga {X:mult,C:white} X#1# {} multi por cada",
					"{C:attention}categoría{} y {C:attention}palo{} diferente",
					"en la mano jugada",
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Reactiva las {C:attention}primeras 2{} cartas",
					"que anotan {C:attention}#1#{} vez adicional",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Reactiva las {C:attention}primeras 3{} cartas",
					"que anotan {C:attention}#1#{} vez adicional",
                }
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Después de jugar {C:attention}#2#{} {C:inactive}[#3#]{} cartas",
					"que anotan, aumenta el nivel",
					"de la siguiente {C:attention}mano de póker{} jugada",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Después de jugar {C:attention}#1#{} {C:inactive}[#2#]{} cartas",
					"que anotan, aumenta el nivel",
					"de la siguiente {C:attention}mano","{C:attention}póker{} jugada {C:inactive}#3#{}",
                }
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} multi si la mano jugada",
					"contiene una {C:attention}Escalera{}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} multi si la mano jugada",
					"contiene una {C:attention}Escalera{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Crea una carta de {C:tarot}tarot{} si",
					"también contiene un {C:attention}as{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "{C:mult}+#1#{} multi si",
                    "tienes {C:money}#3# ${} o más",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Gana {C:money}#2# ${} cuando la {C:attention}ciega{}",
                    "es seleccionada si tienes",
                    "menos de {C:money}#3# $",
                    "{C:inactive}(Evoluciona con una","{C:attention}Piedra Trueno{C:inactive})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "{C:mult}+#1#{} multi por cada",
                    "{C:money}#2# ${} que tengas",
                    "{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi)",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Gana intereses cuando la",
                    "{C:attention}ciega{} es seleccionada",
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} fichas por cada {C:attention}carta de{}",
                    "{C:attention}vidrio{} en tu {C:attention}baraja completa",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{V:1}Añade una copia de la primera",
					"{C:attention,V:1}carta de vidrio{V:1} que se destruya",
                    "{V:1}cada ronda a tu mano",
                    "{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)",
                    "{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} fichas por cada {C:attention}carta de{}",
                    "{C:attention}vidrio{} en tu {C:attention}baraja completa",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{V:1}Añade una copia de las primeras",
					"{C:attention,V:1}#3#{} {C:inactive}[#4#]{} {C:attention,V:1}cartas de vidrio{V:1} que se",
                    "{V:1}destruyan cada ronda a tu mano",
                    "{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Cada {C:attention}reina{} en tu mano",
					"otorga {C:chips}+#1#{} fichas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Cada {C:attention}reina{} en tu mano",
					"otorga {C:chips}+#1#{} fichas",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Lunar{C:inactive})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} tamaño de mano",
					"Cada {C:attention}reina{} en tu mano",
					"otorga {C:chips}+#1#{} fichas",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Cada {C:attention}rey{} en tu mano",
					"otorga {C:mult}+#1#{} multi",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Cada {C:attention}rey{} en tu mano",
					"otorga {C:mult}+#1#{} multi",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Lunar{C:inactive})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} tamaño de mano",
					"Cada {C:attention}rey{} en tu mano",
					"otorga {C:mult}+#1#{} multi",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Las cartas jugadas",
					"del palo {C:clubs}#2#{} otorgan",
					"{C:mult}+#1#{} multi cuando anotan",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Lunar{C:inactive})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Las cartas del palo {C:clubs}#2#{}",
					"otorgan {C:mult}+#1#{} multi por cada carta",
					"de {C:clubs}#2#{} jugada en esta ronda",
					"{C:inactive}(Si juegas 5 tréboles, cada uno",
					"{C:inactive}otorga {C:mult,s:0.8}+#4#{C:inactive} multi)",
					"{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi)"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "Cada {C:attention}9{} jugado tiene",
					"{C:green}#1# en #2#{} probabilidades de crear una",
					"carta de {C:tarot}tarot{} cuando anota",
					"{C:inactive}(Debe haber espacio)",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Fuego{C:inactive})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Equipado con{} {C:spectral}Médium{} {C:dark_edition}negativo",
					"Cada {C:attention}9{} jugado tiene",
					"{C:green}#1# en #2#{} probabilidades de crear una",
					"carta de {C:tarot}tarot{} cuando anota",
					"{C:inactive}(Debe haber espacio)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Las cartas jugadas",
					"del palo {C:spades}#2#{} otorgan",
					"{C:mult}+#1#{} multi y {C:chips}+#3#{} fichas",
					"cuando anotan",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Lunar{C:inactive})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Las cartas jugadas",
					"del palo {C:spades}#3#{} otorgan",
					"{C:mult}+#1#{} multi, {C:chips}+#2#{} fichas, y su",
					"total de fichas",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "Obtiene {C:mult}+#2#{} multi si la mano jugada",
                    "contiene una {C:attention}carta mejorada{},",
                    "remueve la {C:attention}mejora{} de la",
                    "primera {C:attention}carta mejorada{}",
                    "{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +#3#{C:inactive} multi)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Obtiene {C:mult}+#2#{} multi por cada",
                    "{C:attention}carta mejorada{} jugada,",
                    "remueve su {C:attention}mejora",
                    "{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
                    "{C:inactive}(Evoluciona tras","{C:inactive}comer {C:attention}#3#{C:inactive} mejoras)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
				    "Las cartas jugadas de","categoría {C:attention}impar{} otorgan",
                    "{C:mult}+#1#{}, {C:mult}+#4#{}, o {C:mult}+#2#{} multi","cuando anotan",
                    "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Las cartas jugadas de","categoría {C:attention}impar{} otorgan",
                    "{C:mult}+#1#{}, {C:mult}+#3#{}, o {C:mult}+#2#{} multi","cuando anotan",
                    "{C:inactive}(Evoluciona con una {C:attention}Piedra Hoja",
					"{C:inactive}o una {C:attention}Piedra Solar{C:inactive})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Las cartas jugadas de","categoría {C:attention}impar{} otorgan",
                    "{C:mult}+#2#{} multi, {X:mult,C:white}X#3#{} multi, o {X:mult,C:white}X#1#{} multi",
                    "cuando anotan",
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} multi si la mano",
					"jugada contiene un {C:attention}Doble par{}",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +8{C:inactive} multi)",
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} multi si la mano",
					"jugada contiene un {C:attention}Doble par{}",
					"{C:mult}-#3#{} multi si no la contiene",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Aumenta en {C:attention}#1#{} a todas las",
					"{C:green,E:1,S:1.1}probabilidades",
					"{C:inactive}(ejemplo: {C:green}1 en 6{C:inactive} -> {C:green}2 en 6{C:inactive})",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Aumenta en {C:attention}#1#{} a todas las",
					"{C:green,E:1,S:1.1}probabilidades",
					"{C:inactive}(ejemplo: {C:green}1 en 6{C:inactive} -> {C:green}3 en 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:chips}+#2#{} fichas si la mano jugada",
					"contiene una {C:attention}Tercia{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:mult}+#3#{} multi si la mano jugada",
					"contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{} que anota",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} fichas si la mano jugada",
					"contiene una {C:attention}Tercia{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{X:mult,C:white} X#1# {} multi si la mano jugada",
					"contiene un {C:attention}2{}, {C:attention}3{}, o {C:attention}4{} que anota",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Gana {C:money}#1# ${} al final de la ronda",
					"{br:2}ERROR - CONTACT STEAK",
					"La primera carta de la {C:attention}suerte{}",
					"que se activa {C:green}con éxito{} en cada",
					"ronda aumenta el pago en {C:money}#2# ${}",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:money}#1# ${C:inactive} / #3# $ de pago)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Gana {C:money}#1# ${} al final de la ronda",
					"{C:green}#3# en #4#{} probabilidades de ganar el {C:attention}doble{}",
					"{br:2}ERROR - CONTACT STEAK",
					"La primera carta de la {C:attention}suerte{}",
					"que se activa {C:green}con éxito{} en cada ronda",
					"aumenta el pago en {C:money}#2# ${}",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Si la mano jugada tiene",
					"solo 1 {C:attention}carta de figura{}, gana {C:money}#1# ${}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Si la mano jugada tiene solo 1",
					"{C:attention}carta de figura{}, gana {C:money}#1# ${} y se",
					"mejora a {C:attention}carta de oro{} cuando anota"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, o {C:attention}7{} jugado otorga",
					"{C:mult}+#1#{} multi y {C:chips}+#2#{} fichas cuando anota",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            --I'm doing pretty well. We had a snow day yesterday.
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, o {C:attention}7{} jugado otorga",
					"{C:mult}+#1#{} multi y {C:chips}+#2#{} fichas cuando anota",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#3#{C:inactive} veces)"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} multi si la mano jugada",
					"contiene un {C:attention}Color{}",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Fuego{C:inactive})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:mult,C:white} X#1# {} multi si la mano","jugada contiene un {C:attention}Color{}",
					"La primera carta sin mejora","jugada en un {C:attention}Color{} se mejora",
					"a {C:attention}carta multi{} cuando anota"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Las cartas jugadas del palo",
					"{V:1}#3#{} otorgan {C:mult}+#1#{} multi cuando anotan",
					"El palo rota en orden después de jugar",
					"{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Las cartas jugadas del palo",
					"{V:1}#2#{} otorgan {C:mult}+#1#{} multi cuando anotan",
					"El palo rota en orden después de jugar",
					"{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Agua{C:inactive} o {C:attention}Roca del Rey{C:inactive})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Las cartas jugadas del palo",
					"{V:1}#2#{} otorgan {C:mult}+#7#{} multi",
					"y {X:mult,C:white}X#1#{} multi cuando anotan",
					"El palo rota en orden después de jugar",
					"{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear una carta",
					"de {C:item}objeto o {C:tarot}tarot{} si la {C:attention}mano de póker{}",
					"jugada ya ha sido jugada en esta ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear una carta de",
					"{C:tarot}tarot{} o una {C:item}Cuchara Torcida{} si la {C:attention}mano de póker{}",
					"jugada ya ha sido jugada en esta ronda",
					"{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} ranura de consumible",
					"{C:green}#1# en #2#{} probabilidades de crear {C:attention}El loco{} o",
					"una {C:item}Cuchara Torcida{} si la {C:attention}mano de póker{}",
					"jugada ya ha sido jugada en esta ronda",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} ranura de consumible",
					"Todos los {C:attention}consumibles{} que",
					"tienes otorgan {X:mult,C:white}X#1#{} multi",
					"Las {C:item}Cucharas Torcidas{}","otorgan {X:mult,C:white}X#2#{} multi",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} mano",
					"{C:mult}-#2# descarte{}",
					"{C:mult}+#4#{} multi",
					"{C:inactive}(Evoluciona tras",
					"{C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} manos","{C:mult}-#2# descartes{}","{C:mult}+#3#{} multi",
					"{C:inactive}(Evoluciona con","{C:inactive}un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} manos","{C:mult}-#2# descartes{}","{C:mult}+#3#{} multi"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Las cartas jugadas de","categoría {C:attention}par{} otorgan","{C:chips}+#1#{} fichas cuando anotan","{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Las cartas jugadas de",
					"categoría {C:attention}par{} otorgan",
					"{C:chips}+#1#{} fichas cuando anotan",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Hoja{C:inactive})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebel",
                text = {
                    "Las cartas jugadas de",
					"categoría {C:attention}par{} otorgan",
					"{C:chips}+#1#{} fichas cuando anotan",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Reactiva las primeras {C:attention}#2#{} {C:inactive}[#3#]{}",
                    "cartas de categoría {C:attention}par{}",
                    "cada ronda"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Cada {C:attention}10{} jugado otorga","{C:mult}+#1#{} multi cuando anota","{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Cada {C:attention}10{} jugado otorga","{C:mult}+#1#{} multi cuando anota",
					"{br:2}ERROR - CONTACT STEAK","Los {C:attention}10s{} no pueden","ser {C:attention}debilitados{}"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} fichas",
					"{C:attention}-#2#{} tamaño de mano",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} fichas",
					"{C:attention}-#2#{} tamaño de mano",
					"{C:inactive}(Evoluciona con","un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} fichas","{C:attention}-#2#{} tamaño de mano",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Obtiene {C:chips}+#2#{} fichas si la mano",
					"jugada contiene una {C:attention}Escalera{}",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:chips}+#1#{C:inactive} / +60{C:inactive} fichas)",
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Obtiene {C:chips}+#2#{} fichas si la mano",
					"jugada contiene una {C:attention}Escalera{}",
					"Las fichas que obtiene aumentan",
					"en {C:chips}+1{} cada vez que se activa",
					"{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:mult,C:white} X#1# {} multi en la {C:attention}última mano{}",
					"de la ronda",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
					"{C:inactive}(Evoluciona con una {C:attention}Roca del Rey{C:inactive})"
                } 
            },
            -- not used currently
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:mult,C:white} X#1# {} multi en la {C:attention}última mano{} de la ronda","{C:green}#3# en #4#{} probabilidades de create","a {C:attention}Roca del Rey{} card at","final de la ronda {C:inactive,s:0.8}(Debe haber espacio){}","{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive,s:0.8} rondas o con una {C:attention,s:0.8}Roca del Rey{} {C:inactive})"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} multi por mano jugada",
					"{C:inactive,s:0.8}(Se restablece al final de la ronda)",
					"{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} multi por mano jugada",
					"{C:inactive,s:0.8}(Se restablece cuando la",
					"{C:attention,s:0.8}ciega jefe{C:inactive,s:0.8} es derrotada)",
					"{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi)"
                } 
            },
			j_poke_shell = {
                name = "¿Shellder...?",
                text = {
                  "Evoluciona al {C:attention}Slowpoke","más a la izquierda",
                  "{S:1.1,C:red,E:2}Se autodestruye{}",
                }
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Las {C:attention}cartas de acero{} jugadas",
					"otorgan {X:mult,C:white}X#1#{} multi",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Las {C:attention}cartas de acero{} jugadas",
					"otorgan {X:mult,C:white}X#1#{} multi más {X:mult,C:white}X#2#{} multi por",
					"cada comodín tipo {X:metal,C:white}Metal{} adyacente",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Trueno{C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Equipado con{} {C:item}Puerro{}",
					"{C:green}#2# en #3#{} probabilidades de ganar {C:money}#1# $",
					"cuando un {C:attention}consumible{} es usado",
					"{C:money}${} garantizado cuando se usan {C:attention}Puerros{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "Las primeras {C:attention}2{} cartas","de {C:attention}figura{} jugadas otorgan",
					"{C:mult}+#1#{} multi cuando anotan",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',
                text = {
                    "Las primeras {C:attention}3{} cartas","de {C:attention}figura{} jugadas otorgan",
					"{C:mult}+#1#{} multi cuando anotan",
					"{br:2}ERROR - CONTACT STEAK",
					"Si la mano jugada es {C:attention}exactamente",
					"{C:attention}3 cartas de figuras{}, otorga",
					"{C:attention}+#2#{} tamaño de mano por esta ronda"
                    
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# en #2#{} probabilidades de agregar un {C:attention}sello{}",
					"al azar a la primera carta que anota",
					"en la {C:attention}primera mano{} de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Agrega un {C:attention}sello{} al azar a la",
					"primera carta que anota en",
					"la {C:attention}primera mano{} de la ronda",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} multi si el tamaño de la baraja > {C:attention}#3#{}",
					"{br:4}ERROR - CONTACT STEAK",
					"Agrega una carta de juego al azar",
					"a tu baraja al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} multi por cada carta",
					"encima de {C:attention}#2#{} en tu baraja",
					"{br:4}ERROR - CONTACT STEAK",
					"Al final de la ronda, destruye {C:attention}1{} carta",
					"de tu baraja y agrega {C:attention}2{} al azar",
					"{C:inactive}(Actual {C:mult}+#3#{} {C:inactive}multi){}"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Si la mano tiene {C:attention}5{} cartas que anotan,",
					"cada una tiene {C:green}#1# en #2#{} probabilidades",
					"de {C:attention}reactivarse{}",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Agua{C:inactive})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Si la mano tiene {C:attention}5{} cartas que anotan,",
					"cada una tiene {C:green}#1# en #2#{} probabilidades",
					"de {C:attention}reactivarse{}",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# en #2#{} probabilidades de {C:attention}reemplazar{} la",
					"edición de un {C:attention}comodín{} al azar con",
					"{C:dark_edition}negativo{} al final de la ronda y",
					"{S:1.1,C:red,E:2}se autodestruye{}",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# en #2#{} probabilidades de {C:attention}reemplazar{} la",
					"edición de un {C:attention}comodín{} al azar con",
					"{C:dark_edition}negativo{} al final de la ronda y",
					"{S:1.1,C:red,E:2}se autodestruye{}","{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:attention}Reemplaza{} la edición de un",
					"{C:attention}comodín{} al azar con",
					"{C:dark_edition}negativo{} tras {C:dark_edition}#1#{} rondas",
					"{C:inactive,s:0.8}(¡Gengar elige una nueva cantidad!){}","{C:inactive,s:0.8}(Excluye Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "Crea una {C:attention}etiqueta{} {C:dark_edition}negativa{}",
					"cuando la {C:attention}ciega pequeña{}",
					"o {C:attention}grande{} es seleccionada",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "La carta más a la izquierda que anota",
					"de la {C:attention}primera mano{} de la ronda",
					"se mejora a {C:attention}carta de piedra{}",
					"{C:inactive}(Evoluciona con un sticker {C:metal}Metal{C:inactive})"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{X:mult,C:white}X#2#{} multi por cada carta única",
					"de {C:planet}planeta{} usada en esta partida",
					"{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
					"{C:inactive}(Evoluciona tras usar {C:planet}#3#{C:inactive}",
					"{C:inactive}cartas de planeta únicas)",
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Equipado con{} {C:spectral}Trance{}","{X:mult,C:white}X#2#{} multi por cada carta de","{C:planet}planeta{} usada en esta partida","{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Las cartas de {C:attention}figuras{} jugadas otorgan",
					"{C:chips}+#1#{} fichas cuando anotan",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Las cartas de {C:attention}figuras{} jugadas otorgan",
					"{C:chips}+#1#{} fichas cuando anotan y se mejoran",
					"a {C:attention}cartas adicionales{} si no tienen mejora",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "{C:attention}Volátil a la derecha{}",
					"{X:mult,C:white} X#1# {} multi y se debilita",
					"a sí mismo por esta ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas","{C:inactive}no debilitado)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "{C:attention}Volátil a la derecha{}",
					"{X:mult,C:white} X#1# {} multi, gana {C:money}#2# ${} y se",
					"debilita a sí mismo por esta ronda"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Las cartas jugadas del palo {C:hearts}#2#{}",
					"otorgan {C:mult}+#1#{} multi cuando anotan",
					"{C:green}#4# en #5#{} probabilidades de",
					"otorgar {C:mult}+#3#{} multi en su lugar",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Hoja{C:inactive})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "Las cartas jugadas del palo {C:hearts}#3#{}",
					"otorgan {C:mult}+#1#{} multi cuando anotan",
					"{C:green}#4# en #5#{} probabilidades de",
					"otorgar {X:mult,C:white}X#2#{} multi en su lugar",
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',
                text = {
                    "{C:attention}Equipado con{} {C:item}Hueso Grueso{}",
					"Otorga {C:mult}+#1#{} multi por",
					"cada {C:attention}consumible{} que tengas",
					"{C:inactive,s:0.8}(Los {C:attention,s:0.8}Huesos Gruesos{C:inactive,s:0.8} cuentan doble){}",
					"{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)",
					"{C:inactive}(Evoluciona tras","{C:inactive}usar {C:attention}#3#{C:inactive} consumibles)",
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} ranuras de consumible",
					"Otorga {X:mult,C:white} X#1# {} multi por",
					"cada {C:attention}consumible{} que tengas",
					"{C:inactive,s:0.8}(Los {C:attention,s:0.8}Huesos Gruesos{C:inactive,s:0.8} cuentan doble){}",
					"{C:inactive}(Actual {X:mult,C:white} X#3# {C:inactive} multi)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:mult,C:white}X#1#{} multi por cada carta debajo",
					"de {C:attention}#2#{} en tu baraja completa",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:mult,C:white}X#1#{} multi por cada carta encima",
					"de {C:attention}#2#{} en tu baraja completa",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "La primera y segunda {C:attention}jota{} jugada",
					"otorga {X:mult,C:white} X#1# {} multi cuando anotan",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "{C:attention}Volátil a la izquierda{}",
                    "{C:mult}+#1#{} multi y se debilita",
                    "a sí mismo por esta ronda",
                    "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas","{C:inactive}no debilitado)",
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "{C:attention}Volátil a la izquierda{}",
                    "{C:mult}+#1#{} multi y se debilita",
                    "a sí mismo por esta ronda",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Vende esta carta","para {C:attention}desactivar{}",
                    "la {C:attention}ciega jefe{} actual",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Las {C:attention}cartas de piedra{}",
					"ganan para siempre",
					"{C:chips}+#1#{} fichas cuando anotan",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Las {C:attention}cartas de piedra{}",
					"ganan para siempre",
					"{C:chips}+#1#{} fichas cuando anotan",
					"{br:4}ERROR - CONTACT STEAK",
					"Reactiva la {C:attention}primera{}",
					"{C:attention}carta de piedra{} que anota",
					"{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "Las primeras {C:attention}#1#{C:inactive} [#2#]{} veces que una",
					"{C:attention}carta de la suerte{} se activa cada",
					"ronda, se agrega una copia a tu",
					"baraja y la saca a tu {C:attention}mano",
					"{C:inactive}(Evoluciona cuando la baraja tiene",
					"{C:inactive}>= 25% #3#{C:attention}cartas de la suerte{C:inactive})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Las {C:attention}cartas versátiles{} jugadas",
					"otorgan {C:mult}+#1#{} multi, {C:chips}+#2#{} fichas, o {C:money}#3# ${}",
					"{C:green}#4# en #5#{} probabilidades de {C:attention}todas las tres{}",
					"{C:inactive}(Evoluciona tras jugar {C:attention}#6#{C:inactive} cartas versátiles)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} ranuras de consumible",
					"{C:mult}-#2# ${} máximo de interés",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "Reactiva todas las cartas jugadas",
					"{br:3}ERROR - CONTACT STEAK",
					"Crea una {C:attention}etiqueta doble{} al",
					"final de la ronda si al menos",
					"{C:attention}#1# consumibles{} se usaron esta ronda",
					"{C:inactive}(Actual {C:attention}#2#{C:inactive} consumibles usados)"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Obtiene {C:mult}+#2#{} multi",
					"por cada {C:attention}6{} jugado",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +12{C:inactive} multi)",
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Obtiene {C:mult}+#2#{} multi por cada {C:attention}6{} jugado",
					"Se duplica si un {C:attention}rey{} está en tu mano",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con un sticker {C:dragon}Dragón{C:inactive})"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Reactiva todas las {C:attention}cartas de oro{}",
					"en tu mano {C:attention}#1#{} vez adicional",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Reactiva todas las {C:attention}cartas de oro{}",
					"en tu mano {C:attention}#1#{} veces adicionales",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Las cartas jugadas del palo {C:diamonds}#2#{}",
					"otorgan {C:mult}+#1#{} multi y {C:money}#3# ${} cuando anotan",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Agua{C:inactive})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Las cartas jugadas del palo {C:diamonds}#3#{}",
					"otorgan {C:mult}+#1#{} multi y {C:money}#2# ${} cuando anotan",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Reactiva la carta más",
					"a la izquierda que tienes en",
					"tu mano {C:attention}#1#{} veces adicionales"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "Cuando la ciega es seleccionada, destruye al",
					"comodín de la derecha y obtiene {C:mult}+#2#{} multi",
					"Obtiene edición {C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o",
					"{C:dark_edition}polícromo{} si era {C:rare}Rara{} o superior",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con un sticker {C:metal}Metal","{C:inactive}o una {C:attention}Piedra Dura{C:inactive})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "Cuando se selecciona la {C:attention}ciega{},",
					"gana {C:attention}+#1#{} tamaño de mano si",
					"el tamaño de tu baraja >= {C:attention}#2#{}",
					"{br:4}ERROR - CONTACT STEAK",
					"{C:attention}Las cartas de juego{} agregadas",
					"a tu baraja son {C:attention}duplicadas{}",
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Obtiene {C:money}#1# ${} de {C:attention}valor de venta{} cuando",
					"una carta es {C:attention}vendida{} y al final de la ronda",
					"{br:3.5}ERROR - CONTACT STEAK",
					"Gana {C:attention}#2#%{} del valor de venta de este comodín",
					"al final de la ronda {C:inactive}(aproximado){}",
					"{C:inactive}(Actualmente ganas {C:money}#3# ${C:inactive} / #4# $ máximo)",
					"{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Si el {C:attention}primer descarte{} de la ronda",
					"tiene solo {C:attention}1{} carta, la destruye",
					"y obtiene {C:mult}+#2#{} multi",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} multi si una carta que anota",
					"tiene la {C:attention}misma categoría{} que",
					"una carta {C:attention}en tu mano{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Las cartas {C:attention}sin mejora{} jugadas",
					"otorgan {X:mult,C:white} X#1# {} multi cuando anotan",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Líder)',
                text = {
                    "Cada {C:attention}Tauros{} y {C:attention}Miltank{} que",
					"tienes otorgan {X:mult,C:white} X#1# {} multi",
					"{br:4}ERROR - CONTACT STEAK",
					"Los cambios en la tienda tienen",
					"{C:green}#2# en #3#{} probabilidades de agregar",
					"un {C:attention}Tauros (Manada){} a la tienda",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Manada)',
                text = {
                    "{C:mult}+#1#{} multi",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "{C:chips}+#2#{} ficha",
					"Aplica {C:attention}Salpicadura{}",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:mult,C:white} X#1# {} multi",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:mult,C:white} X#1# {} multi",
					"{br:1.5}ERROR - CONTACT STEAK",
					"Deshabilita el efecto de",
					"todas las {C:attention}ciegas jefe{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} fichas por cada {C:attention}ciega{}",
					"omitida en esta partida",
					"{br:2}ERROR - CONTACT STEAK",
					"Visitas la {C:attention}tienda{}",
					"después de omitir",
					"{C:inactive}(Actual {C:chips}+#1# {C:inactive}fichas)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
					"{C:attention}Volátil a la derecha{}",
                    "{C:attention}Se transforma{} en el comodín más",
					"a la izquierda con {C:attention}perecedero{}",
					"y un sticker {C:colorless}Incoloro{}",
					"al final de la tienda","{C:inactive,s:0.9}(Excluye Dittos)",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
				    "{X:mult,C:white} X#1# {} multi en la {C:attention}primera",
                    "{C:attention}mano{} de la ronda",
					"{C:inactive,s:0.9}(Evoluciona con... un montón)",
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Cada {C:attention}carta{} jugada",
                    "gana para siempre",
                    "{C:chips}+#1#{} fichas cuando anota",
                    "Se {C:attention}duplica{} para las",
					"cartas {C:attention}adicionales{}"
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Otorga {C:money}#1# ${} por cada",
                    "carta {C:attention}de oro{} descartada",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "La primera carta {C:attention}multi{}",
                    "en tu mano", 
                    "otorga {X:mult,C:white} X#1# {} multi"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} límite de energía",
					"Crea una carta de {C:pink}energía{} cuando",
					"abres un {C:attention}paquete potenciador{}",
					"{C:inactive}(Evoluciona con una {C:metal}Mejora{C:inactive})",
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}#1#s Ancestrales{}",
					"{X:attention,C:white}1+{} : Crea una carta de {C:tarot}tarot{}",
					"{X:attention,C:white}2+{} : Gana {C:money}#2# ${}",
					"{X:attention,C:white}3+{} : Crea un {C:item}objeto{}",
					"{C:inactive}(Debe haber espacio)",
                    "{C:inactive,s:0.9}(Activa la habilidad de {X:attention,C:white,s:0.9}3+{C:inactive,s:0.9}",
					"{C:attention,s:0.9}#3#{C:inactive,s:0.9} veces para evolucionar)",
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}#1#s Ancestrales{}",
					"{X:attention,C:white}1+{} : Crea una carta de {C:tarot}tarot{}",
					"{X:attention,C:white}2+{} : Gana {C:money}#2# ${}",
					"{X:attention,C:white}3+{} : Crea un {C:item}objeto{}",
					"{C:inactive}(Debe haber espacio)",
					"{X:attention,C:white}4+{} : Crea una {C:attention}etiqueta{}",
					"{C:inactive,s:0.8}(una vez por ronda) {C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}#1#s Ancestrales{}",
					"{X:attention,C:white}1+{} : {C:chips}+#2#{} fichas",
					"{X:attention,C:white}2+{} : {}Los {C:attention}#1#s{} que anotan ganan",
					"{C:chips}+#3#{} fichas para siempre",
					"{X:attention,C:white}3+{} : {C:chips}+#4#{} fichas",
                    "{C:inactive,s:0.9}(Activa la habilidad de {X:attention,C:white,s:0.9}3+{C:inactive,s:0.9}",
					"{C:attention,s:0.9}#5#{C:inactive,s:0.9} veces para evolucionar)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}#1#s Ancestrales{}",
					"{X:attention,C:white}1+{} : {C:chips}+#2#{} fichas",
					"{X:attention,C:white}2+{} : {}Los {C:attention}#1#s{} que anotan ganan",
					"{C:chips}+#3#{} fichas para siempre",
					"{X:attention,C:white}3+{} : {C:chips}+#4#{} fichas",
					"{X:attention,C:white}4+{} : {}Reactiva todos los {C:attention}#1#s{} jugados",
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}#1#es Ancestrales{}",
					"{X:attention,C:white}1+{} : {X:mult,C:white}X#2#{} multi",
					"{X:attention,C:white}2+{} : Obtiene {X:mult,C:white}X#3#{} multi",
					"{X:attention,C:white}3+{} : El primer {C:attention}#1#{} sin mejora que anota",
					"se mejora a {C:attention}carta de vidrio{}",
					"{X:attention,C:white}4+{} : {C:attention}Duplica{} el {X:mult,C:white}X{} multi que otorga",
					"{C:inactive}(Se restablece al final de la ronda){}",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Los {C:attention}#1#es{} jugados otorgan {X:mult,C:white} X#2# {} multi",
					"por cada {C:attention}#1#{} en",
					"la mano jugada cuando anotan",
					"{br:3.5}ERROR - CONTACT STEAK",
					"Cada {C:attention}#1#{} jugado tiene",
					"{C:green}#3# en #4#{} probabilidades de ser destruido",
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "{C:attention}Equipado con {C:item}Restos{}",
					"Al final de la ronda obtiene {X:mult,C:white}X#1#{} multi",
					"por cada {C:attention}Restos{} que tengas",
					"{C:inactive}(Actual {X:mult,C:white} X#2# {C:inactive} multi)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Agrega edición {C:attention}laminado{} y un {C:attention}sello{}",
					"a la carta más a la izquierda que",
					"anota en la mano jugada"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} multi por",
					"cada {C:money}#2# ${} que tengas",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Aumenta la primera mano de",
					"póker {C:attention}descartada{} cada ronda",
					"en {C:attention}3{} niveles"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Obtiene {C::mult}+#2#{} multi",
					"si la mano jugada tiene",
					"{C:attention}#3#{} o menos cartas",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:mult}+#1#{C:inactive} / +#4#{C:inactive} multi)",
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Obtiene {C::mult}+#2#{} multi",
					"si la mano jugada tiene",
					"{C:attention}#3#{} o menos cartas",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:mult}+#1#{C:inactive} / +#4#{C:inactive} multi)",
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} multi",
					"{br:1.6}ERROR - CONTACT STEAK",
					"Reactiva la carta jugada {C:attention}#2#{} veces",
					"adicionales si la mano jugada es",
					"exactamente {C:attention}1{} sola carta"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "Cuando la {C:attention}ciega jefe{} es derrotada, destruye",
					"al {C:attention}comodín{} más a la izquierda y crea",
					"una {C:attention}copia{} {C:dark_edition}polícroma{} y {C:pink}energizada{}",
					"{br:3}ERROR - CONTACT STEAK",
					"Los comodines {C:dark_edition}polícromos{} otorgan {X:mult,C:white} X#1# {} multi",
					"{C:inactive}(No puede destruirse a sí mismo)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtwo X",
                text = {
                    "Todos los comodines","otorgan {X:mult,C:white} X#1# {} multi",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtwo Y",
                text = {
                    "{C:pink}Energiza{} al comodín más a la izquierda",
					"{C:attention}dos veces{} al final de la tienda",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:pink}+1{} límite de energía cuando",
					"la {C:attention}ciega jefe{} es derrotada",
					"{C:inactive}(No puede {C:pink}energizarse{C:inactive} a sí mismo)",
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "Al final de la {C:attention}tienda{},",
					"crea una carta de {C:tarot}tarot{},",
					"{C:spectral}espectral{} o un {C:item}objeto{} {C:dark_edition}negativo{}",
					"{br:3}ERROR - CONTACT STEAK",
					"{C:green}#1#%{} probabilidades de crear un",
					"comodín {C:dark_edition}negativo{} {C:attention}en su lugar{}",
					"{C:inactive,s:0.8}(La probabilidad no puede ser aumentada){}",
                } 
            },
            j_poke_chikorita = {
                name = 'Chikorita',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Por cada carta {C:attention}en tu mano{}",
					"más allá de la {C:attention}cuarta{} gana",
					"{C:money}#2# ${} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_bayleef = {
                name = 'Bayleef',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Por cada carta {C:attention}en tu mano{}",
					"más allá de la {C:attention}segunda{} gana",
					"{C:money}#2# ${} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_meganium = {
                name = 'Meganium',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Por cada carta {C:attention}en tu mano{}",
					"gana {C:money}#2# ${} al final de la ronda",
                }
            },
            j_poke_cyndaquil = {
                name = 'Cyndaquil',
                text = {
                    "{C:red}+#1#{} descarte",
					"{C:mult}+#2#{} multi por cada",
					"{C:attention}descarte{} restante",
					"{C:inactive}(Actual {C:mult}+#4#{C:inactive} multi)",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_quilava = {
                name = 'Quilava',
                text = {
                    "{C:red}+#1#{} descarte",
					"{C:mult}+#2#{} multi por cada",
					"{C:attention}descarte{} restante",
					"{C:inactive}(Actual {C:mult}+#4#{C:inactive} multi)",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_typhlosion = {
                name = 'Typhlosion',
                text = {
                    "{C:red}+#1#{} descarte",
					"{C:mult}+#2#{} multi y {X:mult,C:white} X#3# {} multi por",
					"cada {C:attention}descarte{} restante",
					"{C:inactive}(Actual {C:mult}+#4#{C:inactive} multi y {X:mult,C:white} X#5# {C:inactive} multi)",
                }
            },
            j_poke_totodile = {
                name = 'Totodile',
                text = {
                    "{C:blue}+#1#{} mano",
					"{C:chips}+#2#{} fichas por cada carta",
					"jugada en esta ronda",
					"{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)",
					"{C:inactive}(Evoluciona tras {C:attention}#4#{C:inactive} rondas)",
                }
            },
            j_poke_croconaw = {
                name = 'Croconaw',
                text = {
                    "{C:blue}+#1#{} mano",
					"{C:chips}+#2#{} fichas por cada carta",
					"jugada en esta ronda",
					"{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)",
					"{C:inactive}(Evoluciona tras {C:attention}#4#{C:inactive} rondas)",
                }
            },
            j_poke_feraligatr = {
                name = 'Feraligatr',
                text = {
                    "{C:blue}+#1#{} mano",
					"{C:chips}+#2#{} fichas por cada carta",
					"jugada en esta ronda",
					"{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)",
                }
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} multi por mano",
					"{C:attention}consecutiva{} jugada diferente",
					"de la última mano jugada",
					"{C:inactive}(Última mano: {C:attention}#3#{C:inactive})",
					"{C:inactive}(Evoluciona cuando","{C:inactive}tiene {C:mult}+#1#{C:inactive} / +15{C:inactive} multi)",
                }
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} multi cuando la mano",
					"jugada es diferente de",
					"la última mano jugada",
					"{C:inactive}(Última mano: {C:attention}#3#{C:inactive})",
					"{C:inactive}(Actual {C:mult}+#1#{} {C:inactive}multi)",
                }  
            },
            j_poke_hoothoot = {
                name = 'Hoothoot',
                text = {
                    "{C:purple}+#1# Profecía",
					"Cada carta {C:attention}profetizada{}",
					"otorga su total de fichas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Profecía",
					"Cada carta {C:attention}profetizada{}",
					"otorga su total de fichas",
                }
            },
            j_poke_ledyba = {
                name = "Ledyba",
                text = {
                  "{C:mult}+#1#{} multi por cada {C:attention}5{} cartas",
				  "restantes en tu baraja",
				  "{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi)",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_ledian = {
                name = "Ledian",
                text = {
                  "{C:mult}+#1#{} multi por cada {C:attention}3{} cartas",
				  "restantes en tu baraja",
				  "{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)",
                }
            },
            j_poke_spinarak = {
                name = "Spinarak",
                text = {
                  "{C:chips}+#1#{} fichas",
				  "{C:green}#2# en #3#{} probabilidades de",
				  "{C:chips}+#5#{} fichas en su lugar",
				  "{C:inactive}(Evoluciona tras {C:attention}#4#{C:inactive} rondas)",
                }
            },
            j_poke_ariados = {
              name = "Ariados",
              text = {
                "{C:chips}+#1#{} fichas",
				"{C:green}#2# en #3#{} probabilidades de",
				"{C:chips}+#4#{} fichas en su lugar",
              }
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
				--I left the Leech list text just in case
                    "{C:inactive,s:0.9}Revisa la {C:attention,s:0.9}lista de chupamejoras",  
                    "Por cada carta {C:attention}mejorada{} obtiene",
                    "{C:mult}+#2#{} multi, {C:chips}+#4#{} ficha, {X:mult,C:white}X#6#{} multi, o {C:money}#8# ${}",
                    "de pago al final de la ronda dependiendo",
                    "de la mejora, remueve la {C:attention}mejora",
                    "{C:inactive}(Actual {C:chips}+#3#{}, {C:mult}+#1#{}, {X:mult,C:white}X#5#{}, {C:money}#7# ${C:inactive} de pago)"
                } 
            },
            j_poke_chinchou = {
                name = "Chinchou",
                text = {
                  "Otorga {C:chips}+#1#{} fichas y gana {C:money}#2# ${}",
				  "si la mano jugada contiene un {C:attention}Par",
				  "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_lanturn = {
                name = "Lanturn",
                text = {
                  "Otorga {C:chips}+#1#{} fichas y gana {C:money}#2# ${}",
				  "si la mano jugada contiene un {C:attention}Par",
				  "{br:3}ERROR - CONTACT STEAK",
				  "{C:chips}+#3#{} fichas extra por cada comodín tipo {X:water,C:white}Agua{}",
				  "{C:money}#4# ${} extra por cada comodín tipo {X:lightning,C:black}Rayo{}",
				  "{C:inactive}(Actual {C:chips}+#6#{C:inactive} fichas y {C:money}#5# ${C:inactive})"
                }
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#2# {} multi",
					"Gana {C:money}#1# ${} al",
					"final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea un copia {C:dark_edition}negativa{} de",
					"{C:attention}La luna{} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea un copia {C:dark_edition}negativa{} de",
					"{C:attention}El mundo{} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_togepi = {
                name = 'Togepi',
                text = {
                    "{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                }
            },
            j_poke_togetic = {
                name = 'Togetic',
                text = {
                    "Las {C:attention}cartas de la suerte{} tienen",
					"{C:green}#1# en #2#{} probabilidades",
					"de otorgar {C:chips}+#4#{} fichas",
					"y {C:green}#1# en #3#{} probabilidades",
					"de otorgar {X:mult,C:white}X#5#{} multi",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Día{C:inactive})"
                }
            },
            j_poke_natu = {
                name = 'Natu',
                text = {
                    "Las cartas de {C:planet}planeta{}",
					"otorgan un nivel extra",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                }
            },
            j_poke_xatu = {
                name = 'Xatu',
                text = {
                    "Las cartas de {C:planet}planeta{}",
					"otorgan un nivel extra",
                    "{br:2}ERROR - CONTACT STEAK",
					"Los {C:planet}paquetes celestiales{} contienen",
					"todas las cartas de {C:planet}planeta{} {C:attention}disponibles",
                }
            },
            j_poke_mareep = {
                name = "Mareep",
                text = {
                  "Obtiene {X:mult,C:white}X#2#{} multi cuando una o más {C:attention}cartas",
				  "{C:attention}de juego{} son {C:attention}agregadas{} a tu baraja",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Pierde {X:mult,C:white}X#3#{} multi cuando una o más {C:attention}cartas",
				  "{C:attention}de juego{} son {C:attention}destruidas",
				  "{C:inactive}(Evoluciona cuando {C:inactive}tiene {X:mult,C:white}X#1#{C:inactive} / X#4#{C:inactive} multi)",
                }
            },
            j_poke_flaaffy = {
                name = "Flaaffy",
                text = {
                  "Obtiene {X:mult,C:white}X#2#{} multi cuando una o más",
				  "{C:attention}cartas de juego{} son {C:attention}agregadas{} a tu baraja",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Pierde {X:mult,C:white}X#3#{} multi cuando una o más",
				  "{C:attention}cartas de juego{} son {C:attention}destruidas",
				  "{C:inactive}(Evoluciona cuando {C:inactive}tiene {X:mult,C:white}X#1#{C:inactive} / X#4#{C:inactive} multi)",
                }
            },
            j_poke_ampharos = {
                name = "Ampharos",
                text = {
                  "Obtiene {X:mult,C:white}X#2#{} multi cuando",
				  "una o más {C:attention}cartas de juego{} son",
				  "{C:attention}agregadas{} a tu baraja",
				  "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
                }
            },
            j_poke_mega_ampharos = {
                name = "Mega Ampharos",
                text = {
                  "{X:mult,C:white} X#1# {} multi",
				  "Cuando se selecciona la {C:attention}ciega{}, {C:green}aumenta",
				  "el tamaño de mano hasta la {C:attention}mitad{} del",
				  "tamaño de tu baraja, {C:red}pierdes{} todos los",
				  "descartes y juegas solo {C:attention}1{} mano",
				  "{C:inactive}(Aproximado, actualmente {C:attention}#2#{C:inactive})"
                }
            },
            j_poke_marill = {
                name = 'Marill',
                text = {
                    "{X:mult,C:white}X#2#{} multi si la mano jugada",
					"contiene una carta {C:attention}sin mejora{}",
					"y una carta {C:attention}mejorada{} que anotan",
					"{C:inactive}(Evoluciona tras","{C:inactive}jugar {C:attention}#1#{C:attention} cartas adicionales{C:inactive})",
                }
            },
            j_poke_azumarill = {
                name = 'Azumarill',
                text = {
                    "{X:mult,C:white}X#1#{} multi",
					"Otorga el {C:attention}doble{} de {X:mult,C:white}X{} multi si la mano",
					"jugada contiene una carta {C:attention}no adicional{}",
					"y una {C:attention}carta adicional{} que anotan"
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "Reactiva todas las {C:attention}cartas de figuras{}",
				  "{C:attention}jugadas{} y {C:attention}en tu mano{}",
                }
            },
            j_poke_weird_tree = {
                name = "Árbol extraño",
                text = {
                  "{C:attention}Cambia Tipo: {X:grass,C:white}Planta{}",
				  "{C:}Se transforma{} al final de la",
				  "ronda si este comodín no es",
				  "de tipo {X:grass,C:white}Planta{} o tienes un",
				  "comodín tipo {X:water,C:white}Agua{}"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Las cartas jugadas de categoría {C:attention}impar{}",
					"otorgan {C:mult}+#1#{} multi o se vuelven",
					"cartas {C:attention}versátiles{} cuando anotan",
					"Si ya es {C:attention}versátil{}, se vuelve {C:dark_edition}laminada{},","{C:dark_edition}holográfica{} o {C:dark_edition}polícroma{}"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Reactiva la primera carta {V:1}#2#{} que anota",
                    "y luego la reactiva una vez por cada",
                    "comodín tipo {X:water,C:white}Agua{} que tengas",
                    "El palo rota en orden después de jugar",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_hoppip = {
                name = 'Hoppip',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Las primeras dos {C:attention}cartas descartadas{}",
					"se mejoran a cartas {C:dark_edition}semilla{}",
					"{S:1.1,C:red,E:2}Se autodestruye{} cuando descartas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Las primeras tres {C:attention}cartas descartadas{}",
					"se mejoran a cartas {C:dark_edition}semilla{}",
					"{S:1.1,C:red,E:2}Se autodestruye{} cuando descartas",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
					"Todas las {C:attention}cartas descartadas{}",
					"se mejoran a cartas {C:dark_edition}semilla{}",
					"{S:1.1,C:red,E:2}Se autodestruye{} cuando descartas",
                }
            },
            j_poke_aipom = {
              name = "Aipom",
              text = {
                "{C:attention}-#3#{} límite de selección de cartas",
				"{C:inactive}(cartas que puedes jugar/descartar)",
				"{br:2}ERROR - CONTACT STEAK",
				"Los {C:attention}Colores{} y {C:attention}Escaleras{} pueden",
				"hacerse con {C:attention}3{} cartas",
				"{C:inactive}(Evoluciona tras jugar",
				"{C:attention}#1#{C:inactive} Escaleras y {C:attention}#2#{C:inactive} Colores){}"
              }
            },
            j_poke_sunkern = {
                name = 'Sunkern',
                text = {
                    "Gana {C:money}#1# ${} cuando la {C:attention}ciega{} es seleccionada",
					"y cuando la mano es {C:attention}jugada{}",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Solar{C:inactive})"
                }
            },
            j_poke_sunflora = {
                name = 'Sunflora',
                text = {
                    "Gana {C:money}#1# ${} cuando la {C:attention}ciega{} es seleccionada,",
					"la mano es {C:attention}jugada{} o {C:attention}descartada{}, un",
					"consumible es {C:attention}usado{} y al final de la ronda",
                }
            },
            j_poke_wooper = {
                name = "Wooper",
                text = {
                  "{C:mult}+#1#{} multi",
				  "{C:mult}-#3#{} multi por cada carta de {C:attention}figura{}",
				  "restante en tu {C:attention}baraja",
				  "{C:inactive}(Actual {C:mult}+#4#{C:inactive} multi)",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_quagsire = {
                name = "Quagsire",
                text = {
                  "{C:mult}+#1#{} multi","{C:mult}-#2#{} multi por cada carta de {C:attention}figura{}","restante en tu {C:attention}baraja","{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi)",
                }
            },
            j_poke_yanma = {
              name = "Yanma",
              text = {
                "Cada {C:attention}3{} o {C:attention}6{} jugado otorga",
				"{C:chips}+#2#{} fichas y {C:mult}+#1#{} multi cuando anota",
				"{C:green}#5# en #6#{} probabilidades de {C:chips}+#4#{} fichas",
				"y {C:mult}+#3#{} multi en su lugar",
				"{C:inactive}(Evoluciona tras jugar {C:attention,s:0.8}#7#{C:inactive,s:0.8} 3s o 6s)"
              }
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "{C:attention}Reactiva{} cada {C:attention}#3#{} jugado(a)",
					"{br:3}ERROR - CONTACT STEAK",
					"Cada carta del palo {V:1}#4#{} que",
					"anota otorga {X:mult,C:white}X#2#{} multi",
					"{C:inactive,s:0.9}(La {C:attention,s:0.9}categoría{C:inactive,s:0.9} y el {C:attention,s:0.9}palo{C:inactive,s:0.9} cambian {C:attention,s:0.9}cada ronda{C:inactive})",
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Si la primera mano {C:attention}descartada{}",
                    "es un(a) {C:attention}#1#{}",
                    "aumenta el nivel de la {C:attention}mano",
                    "{C:attention}de póker{} más jugada",
                    "{C:inactive}(La mano cambia cada ronda)"
				} 
            },
            j_poke_murkrow = {
              name = "Murkrow",
              text = {
                "{X:mult,C:white} X#1# {} multi por cada comodín",
				"tipo {X:dark,C:white}Oscuro{} que tengas",
				"{C:inactive}(Actual {X:mult,C:white} X#2#{C:inactive} multi)",
				"{C:inactive}(Evoluciona con una {C:attention}Piedra Noche{C:inactive})"
              }
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Los {C:attention}reyes{} jugados otorgan",
					"{X:mult,C:white}X#1#{} multi cuando anotan",
					"Aumenta en {X:mult,C:white}X#2#{} multi",
					"cuando la mano es jugada",
					"{C:inactive,s:0.9}(Se restablece al final de la ronda)",
                }
            },
            j_poke_misdreavus = {
                name = 'Misdreavus',
                text = {
                    "Las cartas de {C:attention}figura{} jugadas pierden",
					"para siempre hasta {C:chips}#1#{} fichas cuando anotan",
					"Este comodín obtiene las fichas perdidas",
					"{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Noche{C:inactive})",
                }
            },
            j_poke_unown = {
                name = "Unown",
                text = {
                  "{C:attention}Naturaleza:{} {C:inactive}({C:attention}#2#{C:inactive})",
				  "{C:mult}+#1#{} multi si la mano jugada contiene",
				  "a la carta de {C:attention}naturaleza{}",
				  "{br:2}ERROR - CONTACT STEAK",
				  "{S:1.1,C:red,E:2}Se autodestruye{}",
				  "al final de la ronda",
                }
            },
            j_poke_wobbuffet = {
              name = "Wobbuffet",
              text = {
                "Reactiva cada","{C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} o {C:attention}10{} jugado",
				"{br:2}ERROR - CONTACT STEAK",
				"{C:attention}Volátil a la izquierda{}",
				"Cuando se selecciona la ciega, agrega",
				"{C:attention}eterno{} al comodín más a la derecha",
              }
            },
            j_poke_girafarig = {
              name = "Girafarig",
              text = {
                "La primera y última carta de {C:attention}figura{}",
				"otorga {X:mult,C:white}X#1#{} multi cuando anota",
				"si la mano jugada contiene un {C:attention}Doble par{}",
				"{C:inactive}(Evoluciona tras usar",
				"{C:attention}La muerte{C:inactive} en {C:attention}2{C:inactive} cartas de figura){}"
              }
            },
            j_poke_pineco = {
              name = "Pineco",
              text = {
                "{C:attention}Volátil a la izquierda{}",
				"{C:chips}+#1#{} fichas y se debilita",
				"a sí mismo por esa ronda",
				"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_forretress = {
              name = "Forretress",
              text = {
                "{C:attention}Volátil a la izquierda{}",
				"{C:chips}+#1#{} fichas y se",
				"debilita a sí mismo por esa ronda",
				"Otorga el {C:attention}doble{} de fichas si una","{C:attention}carta de acero{} está {C:attention}en tu mano{}",
              }
            },
            j_poke_dunsparce = {
                name = 'Dunsparce',
                text = {
                  "{C:inactive}¿No hace nada...?",
				  "{S:1.1,C:red,E:2}Se autodestruye{} al final de la",
				  "tienda si haces un {C:green}cambio{}",
				  "{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                }
            },
            j_poke_gligar = {
                name = 'Gligar',
                text = {
                    "Las cartas jugadas otorgan {X:mult,C:white}X#1#{} multi",
					"por cada {V:1}#2#{} {C:attention}en tu mano{}",
					"{C:inactive}(El palo cambia cada ronda)",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Noche{C:inactive})",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "La carta más a la izquierda que anota",
					"de la {C:attention}primera mano{} de la ronda",
					"se mejora a {C:attention}carta de acero{}",
					"{br:4}ERROR - CONTACT STEAK",
					"Las {C:attention}cartas de piedra{} {C:attention}en tu mano{}",
					"se mejoran a {C:attention}cartas de acero{}"
                } 
            },
            j_poke_mega_steelix = {
                name = "Mega Steelix",
                text = {
                  "Gana {C:money}#1# ${} por cada carta del palo {C:diamonds}#2#{} en",
				  "tu {C:attention}baraja completa{} al final de la ronda",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Las {C:attention}cartas de acero{} que no son {C:diamonds}#2#s{}",
				  "{C:attention}en tu mano{} se vuelven {C:diamonds}#3#{}","y pierden su {C:attention}mejora{}",
                }
            },
            j_poke_snubbull = {
                name = 'Snubbull',
                text = {
                    "La primera carta de {C:attention}figura{}","otorga {X:mult,C:white}X#1#{} multi cuando anota","{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_granbull = {
                name = 'Granbull',
                text = {
                    "La primera carta de {C:attention}figura{}","otorga {X:mult,C:white}X#2#{} multi cuando anota si es","una {C:attention}reina{} y {X:mult,C:white}X#1#{} multi sino",
                }
            },
            j_poke_qwilfish = {
                name = 'Qwilfish',
                text = {
                    "{C:purple}+#1# Nivel de trampas",
                    "Obtiene {C:chips}+#2#{} fichas cuando",
                    "una carta {C:attention}mejorada{}",
                    "es destruida",
                    "{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)",
                }
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Cuando la ciega es seleccionada, destruye al",
					"comodín de la derecha y obtiene {C:mult}+#4#{} multi",
					"Obtiene edición {C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o","{C:dark_edition}polícromo{} si era {C:red}Rara{} o superior","{C:attention}Acumula{} los efectos de las ediciones que obtiene","{C:inactive,s:0.8}(Obtiene la misma edición del comodín destruido si tenía){}","{C:inactive}(Actual {C:mult}+#1#{} {C:inactive}multi, {C:chips}+#2#{} {C:inactive}fichas, {X:mult,C:white}X#3#{} {C:inactive}multi)"
                } 
            },
            j_poke_mega_scizor = {
                name = "Mega Scizor",
                text = {
                  "Los comodines {C:blue}comunes{}",
				  "otorgan {X:mult,C:white} X#1# {} multi",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Destruye todos los comodines",
				  "{C:blue}comunes{} al final de la ronda"
                }
            },
            j_poke_shuckle = {
                name = "Shuckle",
                text = {
                  "Cuando se selecciona la {C:attention}ciega{},",
				  "destruye el {C:attention}consumible{} más a la",
				  "izquierda y crea un {C:item}Zumo de Baya{}",
				  "{C:inactive}(No puede destruir {C:item}Zumos de Baya{C:inactive})"
                }
            },
            j_poke_sneasel = {
                name = 'Sneasel',
                text = {
                    "Si la mano jugada es",
					"solo un(a) {C:attention}#1#{}",
					"lo destruye y gana {C:money}#2# $",
					"{C:inactive}(La categoría cambia cada ronda){}",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Noche{C:inactive})",
                }
            },
            j_poke_teddiursa = {
              name = "Teddiursa",
              text = {
                "Obtiene {C:mult}+#2#{} multi cuando cualquier",
				"{C:attention}paquete potenciador{} es omitido",
				"{C:inactive}(Evoluciona cuando tiene",
				"{C:mult}+#1#{C:inactive} / #3# multi)",
              }
            },
            j_poke_ursaring = {
              name = "Ursaring",
              text = {
                "Obtiene {C:mult}+#2#{} multi y crea un {C:item}objeto{}",
				"cuando cualquier {C:attention}paquete",
				"{C:attention}potenciador{} es omitido",
				"{C:inactive}(Debe haber espacio)",
				"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
				"{C:inactive}(Evoluciona con una {C:attention}Piedra Lunar{C:inactive})",
              }
            },
            j_poke_slugma = {
              name = "Slugma",
              text = {
                "Cada {C:attention}4{} {C:inactive}[#4#]{} manos jugadas, destruye",
				"la primera carta {C:attention}en tu mano{} tras jugar",
				"y este comodín obtiene {C:chips}+#2#{} fichas",
				"{C:inactive}(Evoluciona cuando tiene {C:chips}+#1#{C:inactive} / #3# fichas)",
              }
            },
            j_poke_magcargo = {
                name = "Magcargo",
                text = {
                  "Cada {C:attention}3{} {C:inactive}[#3#]{} manos jugadas, destruye","la primera carta {C:attention}en tu mano{} tras jugar","y este comodín obtiene {C:chips}+#2#{} fichas","{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                }
            },
            j_poke_swinub = {
                name = "Swinub",
                text = {
                  "La primera carta jugada otorga",
				  "{C:mult}+#1#{} multi por cada {C:attention}carta {C:attention}de piedra{}",
				  "y {C:attention}de vidrio{} en la mano jugada",
				  "{br:2}text needs to be here to work",
				  "{C:green}#3# en #4#{} probabilidades de ganar {C:money}#2# ${}",
				  "al final de la ronda",
				  "{C:inactive}(Evoluciona tras {C:attention}#5#{C:inactive} rondas)",
                }
            },
            j_poke_piloswine = {
              name = "Piloswine",
              text = {
                "La primera carta jugada otorga","{C:mult}+#1#{} multi por cada {C:attention}carta {C:attention}de piedra{}",
				"y {C:attention}de vidrio{} en la mano jugada","{br:2}text needs to be here to work",
				"{C:green}#3# en #4#{} probabilidades de ganar {C:money}#2# ${}","al final de la ronda",
				"{C:inactive}(Evoluciona tras jugar","{C:attention}#5#{C:inactive} cartas de piedra o vidrio)",
              }
            },
            j_poke_heracross = {
                name = 'Heracross',
                text = {
                    "{X:mult,C:white} X#1# {} multi si ninguna carta que anota",
					"tiene la {C:attention}misma categoría{} de",
					"cualquier carta {C:attention}en tu mano{}"
                }
            },
			j_poke_mega_heracross = {
                name = "Mega Heracross",
                text = {
                  "Reactiva todas las",
				  "cartas jugadas {C:attention}dos veces",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Se debilita a sí mismo por",
				  "esa ronda si juegas o descartas",
				  "menos de {C:attention}5{} cartas",
                  "{C:inactive}(Se debilita antes de anotar fichas)"
                }
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "Cuando se selecciona la {C:attention}ciega{},",
				"obtiene {C:mult}+#1#{} multi por cada comodín",
				"tipo {X:water,C:white}Agua{} que tengas y crea",
				"un Pokémon tipo {X:water,C:white}Agua{} {C:attention}básico{}",
                "{C:inactive}(Debe haber espacio)",
                "{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)",
              }
            },
            j_poke_remoraid = {
              name = "Remoraid",
              text = {
                "Reactiva todas las cartas",
				"en la primera mano jugada",
				"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_octillery = {
              name = "Octillery",
              text = {
                "Reactiva todas las cartas jugadas",
				"{br:2}ERROR - CONTACT STEAK",
				"Se debilita a sí mismo por esta",
				"ronda después de jugar si la mano",
				"jugada no contiene un {C:attention}8{}"
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "Al final de la ronda",
				  "recibe un {S:1.1,C:green,E:2}regalo{}",
				  "{C:inactive}(Debe haber espacio)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Obtiene {C:chips}+#2#{} fichas cuando",
				  "una {C:attention}carta de oro{} anota fichas",
				  "o está {C:attention}en tu mano{}",
				  "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                }
            },
            j_poke_skarmory = {
                name = 'Skarmory',
                text = {
					"{C:purple}+#1# Nivel y límite de trampas",
                    "{X:mult,C:white}X#2#{} multi por cada",
                    "carta {C:attention}trampa{} o {C:attention}de acero{}",
                    "{C:attention}en tu mano{}",
                    "{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Obtiene {C:mult}+#2#{} multi por cada {C:attention}6{} jugado",
					"Si un {C:attention}rey{} está en tu mano,",
					"obtiene {X:mult,C:white}X#4#{} multi {C:attention}en su lugar{}",
					"por cada {C:attention}6{} jugado",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi, {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_phanpy = {
                name = "Phanpy",
                text = {
                  "Obtiene {X:mult,C:white}X#2#{} multi por cada",
				  "mano {C:attention}consecutiva{} jugada",
				  "con {C:attention}5{} cartas que anotan",
				  "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
				  "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_donphan = {
                name = "Donphan",
                text = {
                  "Obtiene {X:mult,C:white}X#2#{} multi por cada",
				  "mano {C:attention}consecutiva{} jugada",
				  "con {C:attention}5{} cartas que anotan",
				  "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
                }
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} límite de energía",
					"Crea una carta de {C:pink}energía{} del mismo",
					"{C:pink}tipo{} del comodín más a la izquierda",
					"cuando abres un {C:attention}paquete potenciador{}",
					"{C:inactive}(Evoluciona con un {C:metal}Disco extraño{C:inactive})",
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                    "{C:purple}+#1# Profecía",
					"Agrega la categoría de la carta",
					"{C:attention}profetizada{} más {C:attention}alta{} a multi",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                }
            },
            j_poke_smeargle = {
                name = "Smeargle",
                text = {
                  "{C:attention}Esquematiza{} la habilidad",
				  "del {C:attention}comodín{} de la derecha",
				  "cuando la ciega es seleccionada",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Aplica la habilidad del",
				  "{C:attention}Comodín borroso{}",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Si la {C:attention}primera mano o descarte{} de la",
					"ronda tiene exactamente {C:attention}5{} cartas,",
					"una carta al azar es copiada {C:inactive,s:0.9}(si juegas){}",
					"o destruida {C:inactive,s:0.9}(si descartas){}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:mult,C:white} X#1# {} multi",
					"Cuando se selecciona la {C:attention}ciega",
					"obtiene {X:mult,C:white} X#3# {} multi si el",
					"tamaño de tu baraja es igual a {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea una {C:attention}etiqueta estándar{}",
					"cuando este comodín evoluciona",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea una {C:attention}etiqueta de cupón{}",
					"cuando este comodín evoluciona",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"{C:red}+#2#{} descarte",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_houndour = {
              name = "Houndour",
              text = {
                "Descartar más de {C:attention}4{} cartas también",
				"descarta {C:attention}#3#{} cartas al azar {C:attention}en tu mano{}",
				"{br:2}ERROR - CONTACT STEAK",
				"Las cartas descartadas",
				"ganan para siempre {C:mult}+#1#{} multi",
				"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_houndoom = {
              name = "Houndoom",
              text = {
			    "{C:attention}Equipado con {C:spectral}Médium{}",
                "Descartar más de {C:attention}4{} cartas también",
				"descarta {C:attention}todas{} las cartas {C:attention}en tu mano{}",
				"{br:2}ERROR - CONTACT STEAK",
				"Las cartas descartadas",
				"ganan para siempre {C:mult}+#1#{} multi",
              }
            },
			j_poke_mega_houndoom = {
                name = "Mega Houndoom",
                text = {
                  "Descartar también descarta",
                  "{C:attention}todas{} las cartas {C:attention}en tu mano{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Obtiene {X:mult,C:white} X#2# {} multi",
                  "cuando se descartan cartas",
                  "{C:inactive,s:0.8}(Se restablece al final de la ronda)",
                  "{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi)"
                }
            },
            j_poke_miltank = {
                name = "Miltank",
                text = {
                  "Gana {C:money}#1# ${} por cada comodín",
				  "tipo {C:colorless}Incoloro{} que tengas",
				  "al final de la ronda",
				  "{C:inactive}(Actual {C:money}#2# ${C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Las primeras {C:attention}#1#{C:inactive} [#2#]{} veces que una",
					"{C:attention}carta de la suerte{} se activa cada",
					"ronda, se agrega una copia con {C:dark_edition}policromía{}",
					"a tu baraja y la saca a tu {C:attention}mano",
                } 
            },
            j_poke_raikou = {
                name = "Raikou",
                text = {
                  "Si la primera mano jugada tiene solo {C:attention}1{}",
				  "carta, cambia {C:attention}3{} cartas {C:attention}en tu mano{}",
				  "a su {C:attention}categoría{} y gana {C:money}#1# ${}",
                }
            },
            j_poke_entei = {
                name = "Entei",
                text = {
                  "Si el {C:attention}primer descarte{} tiene",
				  "exactamente {C:attention}4{} cartas, destruye una",
				  "de ellas y obtiene {X:red,C:white}X#2#{} multi",
				  "{C:inactive}(Actual {X:red,C:white}X#1#{C:inactive} multi)",
                }
            },
            j_poke_suicune = {
                name = "Suicune",
                text = {
                  "{C:attention}Duplica{} para siempre el total de fichas",
				  "de cada carta en la mano jugada",
				  "{C:inactive}(Máximo de {C:chips}+#1#{C:inactive} fichas por aumento)",
                }
            },
            j_poke_larvitar = {
                name = "Larvitar",
                text = {
                  "Si la mano jugada es una {C:attention}Full house{}",
				  "todas las cartas jugadas ganan para",
				  "siempre {C:chips}+#1#{} fichas cuando anotan",
				  "{C:inactive}(Evoluciona tras jugar {C:attention}#2#{C:inactive Full Houses)"
                }
            },
            j_poke_pupitar = {
                name = "Pupitar",
                text = {
                  "Si la mano jugada es una {C:attention}Full house{}",
				  "todas las cartas jugadas ganan para",
				  "siempre {C:chips}+#1#{} fichas cuando anotan",
				  "{C:inactive}(Evoluciona tras jugar {C:attention}#2#{C:inactive Full Houses)"
                }
            },
            j_poke_tyranitar = {
                name = "Tyranitar",
                text = {
                  "Si la mano jugada es una {C:attention}Full house{}",
				  "todas las cartas jugadas pierden para",
				  "siempre {C:chips}#1#{} fichas y ganan {X:mult,C:white}X#2#{} multi",
				  "si pierden fichas"
                }
            },
            j_poke_mega_tyranitar = {
                name = "Mega Tyranitar",
                text = {
                  "Si la mano jugada es una {C:attention}Full house{},",
				  "aumenta su nivel y las cartas jugadas",
				  "gana para siempren fichas igual",
				  "al nivel de tu {C:attention}Full house{}"
                }
            },
            j_poke_lugia = {
              name = "Lugia",
              text = {
                "Obtiene {X:mult,C:white} X#2# {} multi por",
				"cada {C:attention}#3#{} {C:inactive}[#4#]{} cartas",
				"sacadas durante las {C:attention}ciegas{}",
				"{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi){}"
              }
            },
            j_poke_ho_oh = {
                name = "Ho-Oh",
                text = {
                  "Crea una copia con {C:dark_edition}polícromía{}",
				  "del primer {C:attention}consumible{} usado",
				  "cada ronda",
				  "{C:inactive}(Debe haber espacio)",
                }
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} apuesta inicial",
					"tras omitir {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}ciega(s){}",
					"{C:inactive}(La cantidad requerida aumenta","{C:inactive}cada que se activa)",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{X:mult,C:white} X#4# {} multi por cada ronda jugada",
                    "{C:inactive}(Actual {X:mult,C:white} X#5# {C:inactive} multi){}"
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:money}#1# ${} cuando anotan",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
					"Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:money}#1# ${} o {C:money}#4# ${} cuando anotan",
					"{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} tamaño de mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Las cartas de {C:attention}naturaleza{} otorgan {C:money}#1# ${}",
                    "cuando anotan más {C:money}#5# ${} por cada",
					"{C:attention}otro{} comodín tipo {X:grass,C:white}Planta{} que tengas",
					"{C:inactive}(Actual {C:money}#4# ${C:inactive} total){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} descarte",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
					"Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:mult}+#1#{} multi cuando anotan",
                    "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} descarte",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
					"Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:mult}+#1#{} multi cuando anotan",
                    "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#3#{} descarte",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
					"Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:mult}+#1#{} multi cuando anotan",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Cada comodín tipo {X:fire,C:white}Fuego{} o {X:fighting,C:white}Lucha{}",
                    "otorga {X:mult,C:white} X#2# {} multi si descartas",
                    "{C:attention}#4# {C:inactive}[#5#]{} cartas de {C:attention}naturaleza{}","en esta ronda"
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:chips}+#1#{} fichas cuando anotan",
                    "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:chips}+#1#{} fichas cuando anotan",
                    "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces)",
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#2#{} mano",
					"{C:attention}Naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Las cartas de {C:attention}naturaleza{}",
					"otorgan {C:chips}+#1#{} fichas cuando anotan",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Crea una carta de {C:tarot}tarot{} por",
					"cada {C:attention}2{} comodines tipo {X:water,C:white}Agua{} o {X:earth,C:white}Tierra{}",
					"que tengas si la mano de póker",
					"contiene {C:attention}#3#{} cartas de {C:attention}Naturaleza",
                    "{C:inactive}(Debe haber espacio){}"
                } 
            },
			j_poke_poochyena = {
              name = "Poochyena",
              text = {
                "Obtiene {C:mult}+#2#{} multi cuando una",
                "carta de juego es {C:attention}destruida",
                "{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
                "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
              }
            },
            j_poke_mightyena = {
              name = "Mightyena",
              text = {
                "Obtiene {C:mult}+#2#{} multi cuando una",
                "carta de juego es {C:attention}destruida",
                "{br:2}ERROR - CONTACT STEAK",
                "Obtiene {C:mult}+#3#{} multi más por cada",
                "comodín tipo {X:dark,C:white}Oscuro{} que tengas",
                "{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
              }
            },
            j_poke_zigzagoon = {
              name = "Zigzagoon",
              text = {
                "{C:green}#1# en #2#{} probabilidades",
				"de {C:attention}recoger{} un {C:item}objeto{}",
				"cuando la mano es jugada",
				"{C:inactive}(Debe haber espacio)",
				"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
              }
            },
            j_poke_linoone = {
              name = "Linoone",
              text = {
                "{C:green}#1# en #2#{} probabilidades",
				"de {C:attention}recoger{} un {C:item}objeto{}",
				"cuando la mano es jugada",
				"Garantizado si la mano",
				"contiene una {C:attention}Escalera{}",
				"{C:inactive}(Debe haber espacio)"
              }
            },
            j_poke_wurmple = {
                name = "Wurmple",
                text = {
                  "{C:mult}+#1#{} multi o {C:chips}+#2#{} fichas",
				  "{C:attention}Naturaleza: {C:inactive}({V:1}#4#{C:inactive}){}",
				  "{C:inactive,s:0.8}(Desconocido hasta que lo descubras)",
                  "{C:inactive}(Evoluciona tras jugar",
				  "{C:attention}#3#{C:inactive} cartas de {C:attention}naturaleza{C:inactive})",
                }
            },
            j_poke_silcoon = {
                name = "Silcoon",
                text = {
                  "{C:mult}+#1#{} multi",
				  "{C:attention}Naturaleza: {C:inactive}({V:1}#2#{C:inactive}){}",
                  "{C:inactive}(Evoluciona tras jugar",
				  "{C:attention}#3#{C:inactive} cartas de {C:attention}Naturaleza{C:inactive})",
                }
            },
            j_poke_beautifly = {
                name = "Beautifly",
                text = {
                  "{C:mult}+#1#{} multi",
				  "{C:attention}Naturaleza: {C:inactive}({V:1}#2#{C:inactive}){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:green}#3# en #4#{} probabilidades de aumentar el nivel",
                  "de tu {C:attention}Color{} si la {C:attention}mano de póker{} contiene",
                  "una carta de {C:attention}naturaleza{} que anota"
                }
            },
            j_poke_cascoon = {
                name = "Cascoon",
                text = {
                  "{C:chips}+#1#{} fichas",
				  "{C:attention}Naturaleza: {C:inactive}({V:1}#2#{C:inactive}){}",
                  "{C:inactive}(Evoluciona tras jugar",
				  "{C:attention}#3#{C:inactive} cartas de {C:attention}Naturaleza{C:inactive})",
                }
            },
            j_poke_dustox = {
                name = "Dustox",
                text = {
                  "{C:chips}+#1#{} fichas",
				  "{C:attention}Naturaleza: {C:inactive}({V:1}#2#{C:inactive}){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{X:mult,C:white} X#3# {} multi si todas",
                  "las cartas {C:attention}en tu mano{} son",
                  "cartas de {C:attention}naturaleza{}"
                }
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "Cuando se selecciona la {C:attention}ciega{}, gana",
				  "{C:chips}+#1#{} mano, {C:mult}+#2#{} descarte, o",
				  "{C:attention}+#3#{} tamaño de mano por esta ronda",
				  "{C:inactive}(Evoluciona tras derrotar {C:attention}#4#{C:inactive} ciegas jefe){}"
                }
            }, 
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "Cuando se selecciona la {C:attention}ciega{}, gana","{C:chips}+#1#{} manos, {C:mult}+#2#{} descartes, o","{C:attention}+#3#{} tamaño de mano por esta ronda"
                }
            },
            j_poke_nincada = {
                name = "Nincada",
                text = {
                  "{C:chips}+#1#{} fichas, con {C:attention}multievolución{}",
                  "{C:chips}-#2#{} fichas y {C:green}#3# en #4#{} probabilidades de crear",
                  "un {C:attention}consumible{} al azar si la mano de póker",
                  "contiene un {C:attention}9{} o una {C:attention}jota{}",
                  "{C:inactive}(Evoluciona cuando tiene {C:chips}0{C:inactive} fichas)",
                }
            }, 
            j_poke_ninjask = {
                name = "Ninjask",
                text = {
                  "{C:green}#2# en #3#{} probabilidades",
                  "de crear una {C:attention}etiqueta veloz{}",
				  "cuando se selecciona la {C:attention}ciega",
                  "{br:2.5}ERROR - CONTACT STEAK",
                  "Cada {C:attention}9{} y {C:attention}jota{} en tu {C:attention}primera{}",
                  "mano jugada otorga {C:mult}+#1#{} multi",
                }
            },
            j_poke_shedinja = {
                name = "Shedinja",
                text = {
                  "Evita la muerte en",
                  "{C:attention}ciegas no jefe{}, obtiene {X:mult,C:white}X#2#{} multi",
                  "por cada muerte prevenida",
                  "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
                  "{br:2.5}ERROR - CONTACT STEAK",
                  "{S:1.1,C:red,E:2}Se autodestruye{} si tienes un",
                  "comodín tipo {X:fire,C:white}Fuego{}, {X:dark,C:white}Oscuro{}, {X:earth,C:white}Tierra{} o",
                  "{X:psychic,C:white}Psíquico{} al final de la {C:attention}tienda",
                  "{C:inactive}(Excluye Shedinjas){}"
                }
            },
            j_poke_makuhita = {
                name = "Makuhita",
                text = {
                  "Gana {C:chips}+#1#{} mano cuando",
                  "se selecciona la {C:attention}ciega{}",
                  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_hariyama = {
                name = "Hariyama",
                text = {
                  "Gana {C:chips}+#1#{} mano por cada",
                  "comodín tipo {X:fighting,C:white}Lucha{} que tengas",
                  "cuando se selecciona la {C:attention}ciega{}",
                }
            },
            j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white}X#1#{} multi",
					"Crea un copia {C:dark_edition}negativa{} de",
					"{C:attention}El hierofante{} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_nosepass = {
                name = 'Nosepass',      
                text = {
                    "La primera carta de {C:attention}figura{}",
					"se mejora a {C:attention}carta de piedra{} y",
					"otorga {X:mult,C:white} X#1# {} multi cuando anota",
					"{C:inactive}(Evoluciona con una {C:attention}Piedra Trueno{C:inactive})"
                } 
            },
            j_poke_skitty = {
                name = "Skitty",
                text = {
                  "Copia la habilidad del",
                  "comodín tipo {B:1,V:2}#1#{}",
                  "de la derecha",
                  "{C:inactive,s:0.9}(El tipo cambia cada ronda){}",
                  "{C:inactive}(Evoluciona con","{C:inactive}una {C:attention}Piedra Lunar{C:inactive})",
                }
            },
            j_poke_delcatty = {
                name = "Delcatty",
                text = {
                  "Copia la habilidad del",
                  "comodín tipo {B:1,V:2}#1#{}",
                  "de la derecha",
                  "con {C:pink}+#2#{} energía",
                  "{C:inactive,s:0.9}(El tipo cambia cada ronda){}",
                }
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "Obtiene {X:mult,C:white}X#2#{} multi por cada","{C:attention}carta de acero{} en la mano de","póker y luego las destruye","{C:inactive}(Evoluciona cuando tiene","{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} multi)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Obtiene {X:mult,C:white}X#2#{} multi por cada","{C:attention}carta de acero{} y {C:attention}piedra{} en la mano","de póker, y luego las destruye","{C:inactive}(Evoluciona cuando tiene","{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} multi)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Obtiene {X:mult,C:white}X#2#{} multi por cada {C:attention}carta","{C:attention}de acero{}, {C:attention}piedra{} y {C:attention}oro{} en la mano","de póker, y luego las destruye","{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)"
                }
            },
            j_poke_volbeat = {
              name = "Volbeat",
              text = {
                "Obtiene {C:chips}+#2#{} fichas cuando",
                "usas una carta de {C:planet}planeta{}",
                "{br:2}ERROR - CONTACT STEAK",
                "Si tienes otro comodín tipo",
				"{X:grass,C:white}Planta{}, obtiene {X:mult,C:white} X#4# {} también",
                "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas, {X:mult,C:white} X#3# {C:inactive} multi)"
              }
            },
            j_poke_illumise = {
              name = "Illumise",
              text = {
				"Cuando se selecciona la {C:attention}ciega{},",
				"crea una carta de {C:planet}planeta{} por",
				"cada comodín tipo {X:grass,C:white}Planta{} que tengas",
				"{C:inactive}(Debe haber espacio){}",
              }
            },
            j_poke_roselia = {
                name = "Roselia",
                text = {
                  "Si la {C:attention}primera{} carta que anota",
                  "de la ronda es {C:attention}impar{}, la reactiva",
                  "{C:attention}#1#{} veces, sino se vuelve",
                  "una carta {C:attention}semilla{}",
                  "{C:inactive}(Evoluciona con una {C:attention}Piedra Día{C:inactive})"
                }
            },
			j_poke_numel = {
                name = "Numel",
                text = {
                  "{X:red,C:white}X#1#{} multi cada",
                  "{C:attention}#3#{} cartas que anotan",
                  "{C:inactive}Faltan #4#{}",
                  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_camerupt = {
              name = "Camerupt",
              text = {
                "{X:red,C:white}X#1#{} multi cada",
                "{C:attention}#2#{} cartas que anotan",
                "Las cartas {C:attention}multi{}",
                "cuentan doble",
                "{C:inactive}Faltan #3#{}",
              }
            },
			j_poke_mega_camerupt = {
              name = "Mega Camerupt",
              text = {
                "Obtiene {X:mult,C:white} X#2# {} multi cuando",
                "una carta {C:attention}multi{} anota",
                "{C:inactive,s:0.8}(Se restablece al final de la ronda)",
                "{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi)"
              }
            },
            j_poke_spinda = {
              name = "Spinda",
              text = {
                "{C:attention}Equipado con La rueda de la fortuna{}",
                "{C:attention}Categorías de naturaleza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                "{C:attention,s:0.9}Mejoras de naturaleza: {C:inactive,s:0.9}({C:attention,s:0.9}#1#, #2#, #3#{C:inactive,s:0.9}){}",
                "{br:3}ERROR - CONTACT STEAK",
                "Cada carta jugada con una",
                "{C:attention}categoría de naturaleza{} obtiene una",
                "{C:attention}mejora de naturaleza{} al azar cuando anota",
              }
            },
            j_poke_cacnea = {
              name = "Cacnea",
              text = {
                "{C:hazard}+#1#{} Nivel de trampas",
                "Gana {C:money}#2# ${} cuando una",
                "carta es destruida",
                "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
              }
            },
            j_poke_cacturne = {
              name = "Cacturne",
              text = {
                "{C:hazard}+#1#{} Nivel de trampas",
                "Gana {C:money}#2# ${} cuando una",
                "carta es destruida",
                "{br:2}ERROR - CONTACT STEAK",
                "Destruye todas las cartas",
                "{C:attention}trampa{} en la {C:attention}primera{} mano",
                "tras jugar una mano",
              }
            },
            j_poke_lileep = {
                name = "Lileep",
                text = {
                  "{C:attention}#1#s Ancestrales{}",
                  "{X:attention,C:white}1+{} : {C:attention}+#4#{} tamaño de mano por esta ronda",
                  "{X:attention,C:white}2+{} : Agrega {C:money}#3# ${} de valor de venta a",
                  "sí mismo y a todos los {C:attention}consumibles",
                  "{X:attention,C:white}3+{} : Cada carta en tu mano otorga {C:chips}+#2#{} fichas",
                  "{C:inactive,s:0.9}(Activa la habilidad de {X:attention,C:white,s:0.9}3+{C:inactive,s:0.9} {C:attention,s:0.9}#6#{C:inactive,s:0.9} veces para evolucionar)"
                }
            },
            j_poke_cradily = {
                name = "Cradily",
                text = {
                  "{C:attention}#1#s Ancestrales{}",
                  "{X:attention,C:white}1+{} : {C:attention}+#4#{} tamaño de mano por esta ronda",
                  "{X:attention,C:white}2+{} : Agrega {C:money}#3# ${} de valor de venta a",
                  "sí mismo y a todos los {C:attention}consumibles",
                  "{X:attention,C:white}3+{} : Cada carta en tu mano otorga {C:chips}+#2#{} fichas",
                  "{X:attention,C:white}4+{} : Gana {C:money}${} igual al valor de venta mayor",
                  "entre tus {C:attention}consumibles"
                }
            },
            j_poke_anorith = {
                name = "Anorith",
                text = {
                  "{C:attention}#1#s Ancestrales{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} multi",
                  "{X:attention,C:white}2+{} : {C:green}#3# en #4#{} probabilidades de",
                  "agregar un {C:attention}#1#{} a tu baraja",
                  "{X:attention,C:white}3+{} : Destruye una carta en tu",
                  "baraja con una {C:attention}categoría{}",
				  "mayor que {C:attention}#1#",
                  "{C:inactive,s:0.9}(Activa la habilidad de {X:attention,C:white,s:0.9}3+{C:inactive,s:0.9}",
				  "{C:attention,s:0.9}#5#{C:inactive,s:0.9} veces para evolucionar)"
                }
            },
            j_poke_armaldo = {
                name = "Armaldo",
                text = {
                  "{C:attention}#1#s Ancestrales{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} multi",
                  "{X:attention,C:white}2+{} : {C:green}#3# en #4#{} probabilidades de agregar",
                  "un {C:attention}#1# mejorado{} a tu baraja",
                  "{X:attention,C:white}3+{} : Destruye una carta en tu baraja",
                  "con una {C:attention}categoría{} mayor que {C:attention}#1#",
                  "{X:attention,C:white}4+{} : {X:mult,C:white} X#5# {} multi por cada {C:attention}#1# mejorado{}",
                  "en tu {C:attention}baraja completa",
                  "{C:inactive}(Actual {X:mult,C:white} X#6# {C:inactive} multi){}"
                }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} multi",
					"Aplica {C:attention}Salpicadura{}",
					"{C:inactive}(Evoluciona con una",
					"{C:attention}Escama Bella{C:inactive})",
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Reactiva todas las cartas","jugadas si la mano","jugada tiene {C:attention}solo un palo{}"
                }
            },
            j_poke_duskull = {
              name = "Duskull",
              text = {
                "Reactiva las primeras","{C:attention}4{} cartas que anotan",
                "en la {C:attention}última mano{} de la ronda",
                "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_dusclops = {
              name = "Dusclops",
              text = {
                "Reactiva las primeras","{C:attention}4{} cartas que anotan",
                "en la {C:attention}última mano{} de la ronda",
                "{br:2}ERROR - CONTACT STEAK",
                "Si hay {C:attention}1{} carta que no anota",
                "en la última mano, la destruye",
                "y crea una carta {C:spectral}espectral{}",
                "{C:inactive}(Debe haber espacio){}",
                "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
              }
            },
            j_poke_absol = {
                name = "Absol",
                text = {
                  "{X:red,C:white}X#1#{} multi",
                  "Todas las {C:green,E:1,S:1.1}probabilidades{}", 
                  "son siempre {C:attention}0{}",
                  "{C:inactive}(ejemplo: {C:green}1 en 6{C:inactive} -> {C:green}0 en 6{C:inactive})",
                }
            },
            j_poke_wynaut = {
                name = 'Wynaut',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea un copia {C:dark_edition}negativa{} de",
					"{C:attention}El loco{} al final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Adquiere hasta {C:mult}-#1# ${} de deuda",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas endeudado)",
				  "{C:inactive}(Evoluciona con una {C:attention}Piedra Alba{C:inactive})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Adquiere hasta {C:mult}-#1# ${} de deuda",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Al final de la ronda,",
				  "deja el dinero en {C:money}0 $"
                }
            },
            j_poke_clamperl = {
              name = "Clamperl",
              text = {
                "{C:attention}Equipado con Etiqueta {C:spectral}etérea{C:attention}",
                "{C:attention}+#1#{} tamaño de mano mientras",
                "abres un {C:attention}paquete potenciador{}",
                "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})",
                "{C:inactive}(Evoluciona tras vender un {C:attention}Cordón Unión{C:inactive})"
              }
            },
            j_poke_huntail = {
              name = "Huntail",
              text = {
                "{C:attention}+#1#{} tamaño de mano mientras",
                "abres un {C:attention}paquete potenciador{}",
                "{br:2}ERROR - CONTACT STEAK",
                "Obtiene {X:mult,C:white}X#2#{} multi y destruye una",
                "carta al azar {C:attention}en tu mano{} cuando",
                "una carta de {C:item}objeto{} o {C:tarot}tarot{} es {C:attention}vendida",
                "mientras abres un {C:attention}paquete potenciador{}",
                "{C:inactive}(Actual {X:mult,C:white} X#3# {C:inactive} multi)"
              }
            },
            j_poke_gorebyss = {
              name = "Gorebyss",
              text = {
                "{C:attention}+#1#{} tamaño de mano mientras",
                "abres un {C:attention}paquete potenciador{}",
                "{br:2}ERROR - CONTACT STEAK",
                "Obtiene {X:mult,C:white}X#2#{} multi cuando una",
                "una carta de {C:item}objeto{} o {C:tarot}tarot{} es {C:attention}usada",
                "mientras abres un {C:attention}paquete potenciador{}",
                "{C:inactive}(Actual {X:mult,C:white} X#3# {C:inactive} multi)"
              }
            },
            j_poke_relicanth = {
                name = 'Relicanth',
                text = {
                    "{C:attention}#1#s Ancestrales{}",
                    "{X:attention,C:white}1+{} : La {C:attention}última{} carta que anota otorga {C:chips}+#2#{} fichas",
                    "{X:attention,C:white}2+{} : La última carta en tu baraja",
                    "se vuelve una {C:attention}carta de piedra{}",
                    "{X:attention,C:white}3+{} : Saca la última carta de tu baraja",
                    "a tu mano y gana {C:money}#3# ${}",
                    "{X:attention,C:white}4+{} : La {C:attention}última{} carta que anota otorga {X:mult,C:white} X#4# {} multi",
                    "y la destruye si no era",
                    "una {C:attention}carta de piedra{}",
                } 
            },
            j_poke_luvdisc = {
              name = "Luvdisc",
              text = {
                "{C:attention}Equipado con {C:hearts}Escama Corazón",
                "Aplica {C:attention}Salpicadura",
              }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Obtiene {C::chips}+#2#{} fichas si la",
					"mano jugada es un {C:attention}Póker{}",
					"Obtiene {C::chips}+#2#{} fichas si la",
					"mano jugada contiene un {C:attention}as",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:chips}+#1#{C:inactive} / +#4# fichas)",
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Obtiene {C::chips}+#2#{} fichas si la",
					"mano jugada es un {C:attention}Póker{}",
					"Obtiene {C::chips}+#2#{} fichas si la mano",
					"jugada contiene {C:attention}2 o más{} {C:attention}ases",
					"{C:inactive}(Evoluciona cuando tiene","{C:chips}+#1#{C:inactive} / +#4# fichas)",
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} fichas",
					"{br:3}ERROR - CONTACT STEAK",
					"Si la mano jugada es un {C:attention}Póker{}",
					"cada carta jugada otorga {X:mult,C:white}X{} multi",
					"igual a la {C:attention}raíz cuarta{} del",
					"total de fichas de esa carta",
                } 
            },
            j_poke_jirachi = {
                name = 'Jirachi',
                text = {
                    "Al final de la tienda,","{C:dark_edition}¡pide un deseo!",
                }
            },
            j_poke_jirachi_banker = {
                name = 'Jirachi',
                text = {
                    "{C:attention}Duplica{} la paga","al final de la ronda",
                }
            },
            j_poke_jirachi_booster = {
                name = 'Jirachi',
                text = {
                    "{C:attention}+1{} ranura de paquete potenciador","Los {C:attention}paquetes potenciadores{}","tienen {C:attention}1{} carta más",
                }
            },
            j_poke_jirachi_power = {
                name = 'Jirachi',
                text = {
                    "Cada {C:attention}#2# manos{}, las cartas jugadas","otorgan {X:mult,C:white}X#1#{} multi cuando anotan","{C:inactive}(#3#){}",
                }
            },
            j_poke_jirachi_negging = {
                name = 'Jirachi',
                text = {
                    "{C:blue}+2{} ranuras de comodín","Las cartas {C:dark_edition}negativas{}","aparecen {C:attention}2X{} veces más seguido",
                }
            },
            j_poke_jirachi_invis = {
                name = 'Jirachi',
                text = {
                    "Cuando se selecciona la {C:attention}ciega{}",
					"crea una {C:attention}copia{} del",
					"{C:attention}comodín{} a su derecha",
					"y {S:1.1,C:red,E:2}se autodestruye{}","{C:inactive}(Remueve el negativo de la copia)"
                }
            },
            j_poke_jirachi_copy = {
                name = 'Jirachi',
                text = {
                    "Copia la habilidad del {C:attention}comodín{} a la","derecha como si estuviera {C:pink}energizado{} una vez adicional",
                }
            },
            j_poke_jirachi_fixer = {
                name = 'Jirachi',
                text = {
                    "Si la {C:attention}primera mano{} tiene solo",
					"{C:attention}1{} carta, le agrega {C:dark_edition}laminado{},",
					"{C:dark_edition}holográfico{}, o {C:dark_edition}policromía{}",
					"{br:3}ERROR - CONTACT STEAK",
					"Si el {C:attention}primer descarte{} tiene",
					"solo {C:attention}1{} carta, la {C:attention}destruye{}",
                }
            },
            j_poke_bidoof = {
                name = "Bidoof",
                text = {
                    "{C:attention}#1#{} {C:green}cambio gratuito",
					"en cada tienda",
                    "{C:inactive}(Evoluciona tras cambiar","{C:attention}#2#{C:inactive} veces en la tienda){}"
                }
            },
            j_poke_bibarel = {
                name = "Bibarel",
                text = {
                    "{C:attention}#1#{} {C:green}cambio gratuito{} en cada tienda",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Obtiene {C:attention}#2# {C:green}cambio gratuito{} más",
                    "cuando derrotas una {C:attention}ciega jefe{}"
                }
            },
            j_poke_kricketot = {
              name = "Kricketot",
              text = {
                "Gana {C:money}#1# ${} si la mano jugada tiene",
                "exactamente {C:attention}4{} cartas y tiene",
                "al menos {C:attention}4{} {C:attention}palos{} diferentes",
                "{C:inactive}(Evoluciona tras {C:attention,s:0.8}#2#{C:inactive,s:0.8} rondas)",
              }
            },
            j_poke_kricketune = {
              name = "Kricketune",
              text = {
                "Gana {C:money}#1# ${} si la mano jugada tiene",
                "exactamente {C:attention}4{} cartas y tiene",
                "al menos {C:attention}4{} {C:attention}palos{} diferentes",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:green}#2# en #3#{} probabilidades de crear",
                "una carta de {C:tarot}tarot{} también"
              }
            },
            j_poke_budew = {
                name = 'Budew',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
                    "Crea una copia {C:dark_edition}negativa{} de",
                    "{C:item}Semilla Milagro{} al final de la ronda",
                    "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_roserade = {
              name = "Roserade",
              text = {
                "Si la primera carta en la",
                "mano jugada es {C:attention}impar{},",
                "la reactiva {C:attention}#1#{} veces",
                "{br:2}ERROR - CONTACT STEAK",
                "Las cartas {C:attention}florales{} solo necesitan",
                "{C:attention}3 o más{} palos para activarse"
              }
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} fichas por",
					"cada carta que {C:attention}no anota{}",
					"en la mano jugada",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} fichas por",
					"cada carta que {C:attention}no anota{}",
					"en la mano jugada",
                }
            },
            j_poke_ambipom = {
              name = "Ambipom",
              text = {
                "Todos los {C:attention}Colores{} y",
				"{C:attention}Escaleras{} pueden hacerse",
				"con {C:attention}exactamente 3{} cartas",
              }
            },
			j_poke_buneary = {
              name = "Buneary",
              text = {
                "{C:mult}+#1#{} multi por cada",
                "carta que {C:attention}no anota{}",
                "en la mano jugada",
                "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_lopunny = {
                name = "Lopunny",
                text = {
                  "{C:purple}+#3# Profecía",
                  "{C:mult}+#1#{} multi por cada carta que",
                  "{C:attention}no anota{} en la mano jugada",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{X:mult,C:white} X#2# {} multi si una carta que no",
                  "anota tiene la {C:attention}misma categoría{}",
                  "que una carta {C:attention}profetizada{}"
                }
            },
			j_poke_mega_lopunny = {
                name = "Mega Lopunny",
                text = {
                  "{C:purple}+#1# Profecía",
                  "Otorga {X:mult,C:white}X{} multi igual al {C:attention}nivel{} de",
                  "la {C:attention}mano de póker profetizada",
                  "{C:inactive}(Mano profetizada: {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_mismagius = {
                name = 'Mismagius',
                text = {
                    "Las cartas de {C:attention}figuras{} jugadas pierden para",
					"siempre hasta {C:chips}#1#{} fichas cuando anotan",
					"Este comodín obtiene las fichas perdidas",
					"{br:3}ERROR - CONTACT STEAK",
					"{C:green}#3# en #4#{} probabilidades de que ganen",
					"para siempre {C:chips}#5#{} fichas en su lugar",
					"{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
                }
            },
            j_poke_honchkrow = {
                name = "Honchkrow",
                text = {
                  "Cada comodín tipo {X:dark,C:white}Oscuro{}",
				  "otorga {X:mult,C:white}X#1#{} multi",
                }
            },
            j_poke_bonsly = {
                name = "Bonsly",
                text = {
                  "{C:attention}Bebé{}, {X:mult,C:white}X#1#{} multi",
				  "Al final de la ronda, agrega una {C:attention}carta",
				  "{C:attention}de figura mejorada{} al azar a tu baraja",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Agrega un {C:red}sello rojo{} o un {C:blue}sello azul{}",
					"a una carta al azar de tu baraja","al final de la {C:attention}ronda","{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea un copia {C:dark_edition}negativa{} de",
					"{C:attention}El mago{} al final de la ronda",
					"{C:green}#3# en #4#{} probabilidades de crear {C:attention}2{}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
					"Crea un {C:item}objeto {C:dark_edition}negativo",
					"al final de la {C:attention}ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_riolu = {
              name = "Riolu",
              text = {
                "{C:attention}Bebé{}, {X:mult,C:white} X#1# {} multi",
                "Crea una copia de {C:dark_edition}Aura{}",
                "al final de la ronda",
                "{C:inactive}(Debe haber espacio)",
                "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
              }
            },
            j_poke_lucario = {
              name = "Lucario",
              text = {
                 "Cada carta con {C:attention}edición{}",
                 "en tu mano",
                 "otorga {X:mult,C:white} X#1# {} multi",
              }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Bebé{}, {X:mult,C:white}X#2#{} multi",
				  "Crea una copia {C:dark_edition}negativa{} de",
				  "{C:attention}El diablo{} al final de la ronda",
				  "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                }
            },
            j_poke_weavile = {
                name = 'Weavile',
                text = {
                    "Si la mano jugada es solo un(a) {C:attention}#3#{}, lo",
					"destruye, gana {C:money}#4# ${} y obtiene {X:mult,C:white}X#1#{} multi",
					"{C:inactive}(Se restablece cuando la {C:attention}ciega jefe{C:inactive} es derrotada)",
					"{C:inactive,s:0.8}(La categoría cambia cada ronda){}",
					"{C:inactive}(Actual {X:mult,C:white}X#2#{C:inactive} multi){}",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Las {C:attention}cartas de acero{} jugadas",
					"otorgan {X:mult,C:white}X#1#{} multi más {X:mult,C:white}X#2#{} multi por",
					"cada comodín tipo {X:metal,C:white}Metal{} que tengas",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "La primera y segunda {C:attention}jota{} jugada",
					"otorga {X:mult,C:white}X#1#{} multi cuando anota",
					"{br:3}ERROR - CONTACT STEAK",
					"Las demás {C:attention}jotas{} otorgan",
					"{X:mult,C:white} X#2# {} multi cuando anotan"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Cada {C:attention}carta de piedra{} jugada",
					"gana para siempre {C:chips}+#1#{} fichas",
					"y se reactiva cuando anota",
					"{br:3}ERROR - CONTACT STEAK",
					"Las {C:attention}cartas de piedra{} se reactivan",
					"una vez adicional por cada {C:attention}3{}",
					"comodines tipo {X:earth,C:white}Tierra{} que tengas",
					"{C:inactive}(Actualmente se reactivan {C:attention}#2#{} veces)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Las cartas versátiles",
					"{C:attention}no pueden{} ser debilitadas",
					"{br:3}ERROR - CONTACT STEAK",
					"Las cartas {C:attention}versátiles{} jugadas otorgan",
					"{C:mult}+#1#{} multi, {C:chips}+#2#{} fichas, o {C:money}#3# ${}",
					"{C:green}#4# en #5#{} probabilidades de {C:attention}todas las tres{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Obtiene {C:money}#1# ${} de {C:attention}valor de venta{} cuando",
					"una carta es {C:attention}vendida{} y al final de la ronda",
					"{br:3.5}ERROR - CONTACT STEAK",
					"Otorga {X:mult,C:white}X#2#{} multi por cada dólar de",
					"valor de venta que tiene este comodín",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Si el {C:attention}primer descarte{} de la ronda",
					"tiene solo {C:attention}1{} carta, la destruye",
					"y obtiene {C:mult}+#2#{} multi",
					"{br:4}ERROR - CONTACT STEAK",
					"Obtiene {X:mult,C:white}X#4#{} multi",
					"cuando descartas",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi, {X:mult,C:white}X#3#{C:inactive} multi)",
                } 
            },
            j_poke_togekiss = {
                name = 'Togekiss',
                text = {
                    "Aumenta en {C:attention}#6#{} todas las {C:green,E:1,S:1.1}probabilidades",
					"{br:4}ERROR - CONTACT STEAK",
					"Las {C:attention}cartas de la suerte{} tienen",
					"{C:green}#1# en #2#{} probabilidades de otorgar {C:chips}+#4#{} fichas",
					"y {C:green}#1# en #3#{} probabilidades de otorgar {X:mult,C:white}X#5#{} multi",
                }
            },
            j_poke_yanmega = {
              name = "Yanmega",
              text = {
                "Cada {C:attention}3{} o {C:attention}6{} jugado otorga",
				"{C:chips}+#2#{} fichas y {C:mult}+#1#{} multi cuando anota",
				"{br:2}ERROR - CONTACT STEAK",
				"{C:green}#3# en #4#{} probabilidades de",
				"reactivar cada {C:attention}3{} o {C:attention}6{} jugado"
              }
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "{C:attention}+#1#{} tamaño de mano",
                    "Se reduce en {C:red}#2#{} cada ronda",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Obtiene {C:attention}+#2#{} tamaño de mano",
                    "cuando una carta {C:attention}de la suerte{}",
                    "se activa {C:green}con éxito{}",
                    "{C:inactive}(Máximo de {C:attention}+#3#{C:inactive} tamaño de mano){}"
				} 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Cada {C:green}cambio{} en la tienda tiene",
					"{C:green}#1# en #2#{} probabilidades de agregar",
					"a la tienda una copia de {C:attention}vidrio{}",
					"de una carta al azar de tu baraja",
                } 
            },
            j_poke_gliscor = {
                name = 'Gliscor',
                text = {
                    "Las cartas jugadas otorgan {X:mult,C:white}X#1#{} multi",
					"por cada {V:1}#2#{} o carta debilitada",
					"{C:attention}en tu mano{}",
					"{C:inactive, s:0.8}(El palo cambia cada ronda)",
					"{C:inactive}(Actual {X:mult,C:white}X#3#{C:inactive} multi)",
                }
            },
            j_poke_mamoswine = {
              name = "Mamoswine",
              text = {
                "La primera carta jugada otorga",
				"{C:mult}+#1#{} multi por cada {C:attention}carta de piedra{}",
				"y {C:attention}vidrio{} en la mano jugada",
				"{br:2}text needs to be here to work",
				"Las {C:attention}cartas de piedra{} y {C:attention}vidrio{}",
				"jugadas tienen {C:green}#3# en #4#{} probabilidades",
				"de otorgar {C:money}#2# ${} cuando anotan",
              }
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} límite de energía",
					"{X:mult,C:white} X#2# {} multi por cada carta de",
					"{C:pink}energía{} usada en esta {C:attention}partida{}",
					"{br:2}text needs to be here to work",
					"Crea una {C:pink}Energía",
					"cuando usas una {C:pink}Energía",
					"{C:inactive}(Debe haber espacio)",
					"{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi)"
                } 
            },
            j_poke_probopass = {
                name = 'Probopass',      
                text = {
                    "Las {C:attention}cartas de piedra{}",
					"se consideran de figuras",
					"{br:2}ERROR - CONTACT STEAK",
					"Las {C:attention}cartas de piedra{} jugadas",
					"otorgan {X:mult,C:white} X#1# {} multi cuando anotan"
                } 
            },
            j_poke_dusknoir = {
                name = "Dusknoir",
                text = {
                  "Reactiva todas las cartas que anotan",
                  "en la {C:attention}última mano{} de la ronda",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Las cartas {C:spectral}espectrales{} pueden",
                  "aparecer en la tienda",
                  "{C:inactive,s:0.9}(Aparecen más seguido si ya podían aparecer){}"
                }
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "Adquiere hasta {C:mult}-#1# ${} de deuda",
				  "{br:2.5}ERROR - CONTACT STEAK",
				  "Crea un {C:item}objeto{} si",
				  "juegas una mano",
				  "mientras estás endeudado",
				  "{C:inactive}(Debe haber espacio)",
                }
            },
            j_poke_rotom = {
                name = "Rotom",
                text = {
                  "{C:green}#1# en #2#{} probabilidades de crear",
                  "una carta de {C:item}objeto{} cuando abres",
                  "un {C:attention}paquete potenciador{}",
                  "{C:inactive}(Debe haber espacio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Los {C:attention}paquetes potenciadores",
				  "cuestan {C:money}1 ${} menos",
                  "{C:inactive}(Se transforma cuando",
				  "{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
                }
            },
            j_poke_rotomh = {
                name = "Rotom (Calor)",
                text = {
                  "{C:green}#1# en #2#{} probabilidades de crear",
                  "una carta de {C:item}objeto{} cuando abres",
                  "un {C:attention}paquete potenciador{}",
                  "{C:inactive}(Debe haber espacio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Si el primer descarte tiene",
                  "exactamente {C:attention}2{} cartas, las {C:attention}mejora",
                  "a cartas {C:attention}multi{}",
                  "{C:inactive}(Se transforma cuando",
				  "{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
                }
            },
            j_poke_rotomw = {
                name = "Rotom (Lavado)",
                text = {
                  "{C:green}#1# en #2#{} probabilidades de crear",
                  "una carta de {C:item}objeto{} cuando abres",
                  "un {C:attention}paquete potenciador{}",
                  "{C:inactive}(Debe haber espacio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gana {C:money}#3# ${} por cada",
                  "carta {C:attention}mejorada{} que anota,",
                  "remueve las {C:attention}mejoras",
                  "{C:inactive}(Se transforma cuando",
				  "{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
                }
            },
            j_poke_rotomf = {
              name = "Rotom (Frío)",
              text = {
				"{C:green}#1# en #2#{} probabilidades de crear",
				"una carta de {C:item}objeto{} cuando abres",
				"un {C:attention}paquete potenciador{}",
				"{C:inactive}(Debe haber espacio){}",
				"{br:2}ERROR - CONTACT STEAK",
				"Cuando se selecciona la {C:attention}ciega{},",
				"crea un {C:attention}consumible{} al azar con",
				"{C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o {C:dark_edition}policromía{}",
				"{C:inactive}(Se transforma cuando",
				"{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
              }
            },
            j_poke_rotomfan = {
                name = "Rotom (Ventilador)",
                text = {
                  "{C:green}#1# en #2#{} probabilidades de crear",
                  "una carta de {C:item}objeto{} cuando abres",
                  "un {C:attention}paquete potenciador{}",
                  "{C:inactive}(Debe haber espacio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Cuando se selecciona la {C:attention}ciega{},",
                  "destruye al comodín de la",
                  "derecha y crea una {C:attention}etiqueta",
                  "{C:inactive}(Se transforma cuando",
				  "{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
                }
            },
            j_poke_rotomm = {
                name = "Rotom (Podadora)",
                text = {
                  "{C:green}#1# en #2#{} probabilidades de crear",
                  "una carta de {C:item}objeto{} cuando abres",
                  "un {C:attention}paquete potenciador{}",
                  "{C:inactive}(Debe haber espacio){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Disminuye{} la categoría de las",
                  "primeras {C:attention}2{} cartas {C:attention}en tu mano{}",
                  "al final de la ronda",
                  "{C:inactive}(Se transforma cuando",
				  "{C:inactive}usas una {C:attention}Máquina{C:inactive}){}"
                }
            },
            j_poke_shaymin = {
              name = "Shaymin",
              text = {
                "La carta que anota más a la derecha",
                "de la {C:attention}primera mano{} de la ronda",
                "se vuelve una carta {C:attention}floral{}",
                "{C:inactive}(Se transforma tras",
				"{C:inactive}jugar {C:attention}#1#{C:inactive} cartas florales)"
              }
            },
            j_poke_shaymin_sky = {
              name = "Shaymin (Forma cielo)",
              text = {
                "Las cartas {C:attention}florales{} también",
                "cuentan como cartas {C:attention}versátiles{}",
                "{C:inactive}(Se transforma con","{C:inactive}una carta de {C:attention}La muerte{C:inactive})"
              }
            },
            j_poke_pansage = {
                name = "Pansage",
                text = {
                    "Aplica {C:attention}Atajo","{C:inactive}(Evoluciona con una","{C:attention}Piedra Hoja{C:inactive})"
                }
            },
            j_poke_simisage = {
                name = "Simisage",
                text = {
                    "Aplica {C:attention}Atajo","Todas las cartas sin","mejora jugadas tienen","{C:green}#1# en #2#{} probabilidades de","mejorarse a {C:attention}carta de la suerte{}"
                }
            },
            j_poke_pansear = {
                name = "Pansear",
                text = {
                    "Aplica {C:attention}Cuatro dedos","{C:inactive}(Evoluciona con una","{C:attention}Piedra Fuego{C:inactive})"
                }
            },
            j_poke_simisear = {
                name = "Simisear",
                text = {
                    "Aplica {C:attention}Cuatro dedos","Si la primera mano jugada","contiene una {C:attention}Escalera o un {C:attention}Color{},","crea una {C:attention}La emperatriz{} y cada","carta que no anota es destruida","{C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "Panpour",
                text = {
                    "Aplica {C:attention}Pareidolia","{C:inactive}(Evoluciona con una","{C:attention}Piedra Agua{C:inactive})"
                }
            },
            j_poke_simipour = {
                name = "Simipour",
                text = {
                    "Aplica {C:attention}Pareidolia","La carta sin mejora más a la","izquierda con la menor cantidad","de fichas base en la mano jugada","se mejora a {C:attention}carta adicional{}",
                }
            },
            j_poke_munna = {
                name = "Munna",
                text = {
                  "{C:purple}+#3# Profecía",
                  "Cuando juegas una mano,",
                  "gana {X:mult,C:white} X#2# {} multi por cada",
                  "carta {C:attention}mejorada profetizada{} y",
                  "remueve las {C:attention}mejoras",
                  "{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi){}",
                  "{C:inactive}(Evoluciona con una {C:attention}Piedra Lunar{C:inactive})",
                }
            },
            j_poke_musharna = {
                name = "Musharna",
                text = {
                  "Cuando se selecciona la {C:attention}ciega{}, gana",
                  "{C:purple}+#2# Profecía{} por esta ronda por cada",
                  "comodín tipo {X:psychic,C:white}Psíquico{} que tengas",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Cada carta {C:attention}mejorada profetizada{}",
                  "otorga {X:mult,C:white} X#1# {} multi",
                  "{C:inactive}({X:mult,C:white} X {C:inactive} multi heredado de {C:attention}Munna{C:inactive}){}",
                }
            },
            j_poke_roggenrola = {
                name = "Roggenrola",
                text = {
                    "{C:purple}+#1# Nivel de trampas",
                    "Cada carta {C:attention}sin categoría{}",
                    "{C:attention}en tu mano{} otorga {C:mult}+#2#{} multi",
                    "{C:inactive}(Evoluciona tras activarse {C:attention}#3#{C:inactive} veces)",
                }
            },
            j_poke_boldore = {
                name = "Boldore",
                text = {
                    "{C:purple}+#1# Nivel de trampas",
                    "Cada carta {C:attention}sin categoría{}",
                    "{C:attention}en tu mano{} otorga {C:mult}+#2#{} multi",
					"{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
				}
            },
            j_poke_gigalith = {
                name = "Gigalith",
                text = {
                    "{C:purple}+#1# Nivel de trampas",
                    "Cada carta {C:attention}sin categoría{}",
                    "{C:attention}en tu mano{} otorga {C:mult}+#2#{} multi",
                    "y se reactiva"
				}
            },
            j_poke_drilbur = {
                name = "Drilbur",
                text = {
                  "La primera {C:attention}carta de piedra{} jugada",
                  "en cada ronda es destruida",
                  "y excava un {C:money}tesoro{}",
                  "{C:inactive}(Debe haber espacio)",
                  "{C:inactive}(Evoluciona tras activarse {C:attention}#1#{C:inactive} veces)",
                }
            },
            j_poke_excadrill = {
              name = "Excadrill",
              text = {
                "Las {C:attention}cartas de piedra{} jugadas",
                "son destruidas y excava un",
				"{C:money}tesoro{} por cada una",
                "{C:inactive}(Debe haber espacio)",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:mult}+#1#{} multi por cada carta debajo",
                "de {C:attention}#2#{} en tu {C:attention}baraja completa",
                "{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi)",
              }
            },
			j_poke_trubbish = {
              name = "Trubbish",
              text = {
                "Obtiene {C:chips}+#2#{} fichas y otorga {C:money}#3# ${}",
                "por cada descarte si no se usó",
                "ninguno durante toda la ronda",
                "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                "{C:inactive}(Evoluciona tras activarse {C:attention}#4#{C:inactive} veces)"
              }
            },
            j_poke_garbodor = {
                name = "Garbodor",
                text = {
                  "Obtiene {C:chips}+#2#{} fichas por cada {C:attention}descarte{} si no",
                  "se usó ninguno durante toda la ronda",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Crea una {C:attention}etiqueta de basura{} si",
                  "no descartaste durante toda",
				  "la apuesta inicial actual",
                  "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                }
            },
            j_poke_zorua = {
                name = "Zorua",
                text = {
                    "{V:1}Copia la habilidad del {C:attention}comodín{}",
					"más a la derecha",
					"{br:2.5}ERROR - CONTACT STEAK",
					"Remueve todos los efectos que",
					"copia hasta el final de la ronda",
					"tras jugar una mano",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                }
            },
            j_poke_zoroark = {
                name = "Zoroark",
                text = {
                    "Copia la habilidad del {C:attention}comodín{}","más a la derecha",
                }
            },
            j_poke_gothita = {
                name = "Gothita",
                text = {
                    "Todas las cartas de {C:planet}planeta{} y","{C:planet}paquetes celestiales{} en la","tienda cuestan {C:money}2 ${} menos","{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_gothorita = {
                name = "Gothorita",
                text = {
                    "Todas las cartas de {C:planet}planeta{} y","{C:planet}paquetes celestiales{} en la","tienda cuestan {C:money}3 ${} menos","{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_gothitelle = {
                name = "Gothitelle",
                text = {
                    "Todas las cartas de {C:planet}planeta{} y","{C:planet}paquetes celestiales{} en la","tienda son {C:attention}gratis{}","{br:2}ERROR - CONTACT STEAK","Gana {C:money}#1# ${} cuando una carta","de {C:planet}planeta{} es usada"
                } 
            },
            j_poke_vanillite = {
                name = "Vanillite",
                text = {
                  "{C:attention}Volátil a la izquierda",
				  "{C:chips}+#1#{} fichas",
				  "{C:chips}-#3#{} fichas por cada",
				  "mano jugada",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_vanillish = {
                name = "Vanillish",
                text = {
                  "{C:attention}Volátil a la izquierda",
				  "{C:chips}+#1#{} fichas",
				  "{C:chips}-#3#{} fichas por cada",
				  "mano jugada",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_vanilluxe = {
                name = "Vanilluxe",
                text = {
                  "{C:chips}+#1#{} fichas",
				  "{C:chips}-#2#{} fichas por cada mano jugada",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Cuando se derrite por completo",
				  "crea {C:attention}#3# etiqueta dobles{}"
                }
            },
			j_poke_frillish = {
                name = "Frillish",
				text = {
                    "Obtiene {C:chips}+#2#{} fichas por cada",
                    "{C:attention}carta de figura{} descartada",
                    "{C:inactive}(Evoluciona cuando tiene",
					"{C:chips}+#1#{C:inactive} / +#3# fichas)",
                } 
            },
            j_poke_jellicent = {
                name = "Jellicent",
				text = {
                    "Obtiene {C:chips}+#2#{} fichas por cada",
                    "{C:attention}carta de figura{} descartada",
					"{br:3}ERROR - CONTACT STEAK",
					"Obtiene el doble de fichas",
					"si es un {C:attention}rey{} o una {C:attention}reina{}",
                    "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                }
            },
            j_poke_ferroseed = {
                name = "Ferroseed",
                text = {
                  "{C:hazard}+#2#{} Nivel de trampas",
                  "Las cartas {C:attention}versátiles{} y {C:attention}trampa{}",
                  "también son {C:attention}cartas de acero{}",
                  "{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)",
                }
            },
            j_poke_ferrothorn = {
              name = "Ferrothorn",
              text = {
                "{C:hazard}+#1#{} Nivel de trampas",
                "Las cartas {C:attention}versátiles{} y {C:attention}trampa{}",
                "también son {C:attention}cartas de acero{}",
                "{br:2}ERROR - CONTACT STEAK",
                "Si la mano jugada contiene",
                "un {C:attention}Color{}, reactiva todas las",
                "{C:attention}cartas de acero{} en tu mano",
              }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "Cuando se selecciona la {C:attention}ciega{}, crea una",
					"carta de {C:planet}planeta{} {C:dark_edition}negativa{} de una de",
					"tus {C:attention}#1#{} manos de póker con mayor nivel",
					"{C:inactive}(Evoluciona cuando tienes",
					"{C:inactive}#2#/{C:planet}#3#{C:inactive} cartas de planeta diferentes){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "Cuando se selecciona la {C:attention}ciega{}, crea una",
					"carta de {C:planet}planeta{} {C:dark_edition}negativa{} de una de",
					"tus {C:attention}#1#{} manos de póker con mayor nivel",
					"{br:3.5}ERROR - CONTACT STEAK",
					"Después de abrir {C:attention}#2# paquetes potenciadores{}, crea",
					"un vale {C:attention}Telescopio{} u {C:attention}Observatorio{} si está disponible"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:mult}+#4#{} multi",
					"Se {C:attention}triplica{} si este comodín",
					"tiene {C:money}#5# ${} o más de valor de venta",
					"{br:3.5}ERROR - CONTACT STEAK",
					"{C:attention}Drena {C:money}#1# ${} de los comodines",
					"adyacentes al final de la ronda",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:money}#3# ${C:inactive} / #2# $ valor de venta)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
				"{C:attention}Drena {C:money}#1# ${} de todos los demás",
				"comodines al final de la ronda",
				"{br:3.5}ERROR - CONTACT STEAK",
                "Agrega el valor de venta",
				"de este comodín a multi",
				"{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi){}",
				"{C:inactive}(Evoluciona con una {C:attention}Piedra Noche{C:inactive})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
					"Cada comodín con {C:money}1 ${} de valor",
					"de venta otorga {X:mult,C:white} X#1# {} multi",
					"{br:3.5}ERROR - CONTACT STEAK",
                    "Agrega el valor de venta","de este comodín a multi",
					"{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi){}",
                }
            },
            j_poke_golett = {
                name = "Golett",
                text = {
                  "{C:purple}+#1# Nivel de trampas",
                  "{C:green}#4# en #5#{} probabilidades para cada carta",
                  "{C:attention}en tu mano{} de otorgar {X:mult,C:white}X#2#{} multi",
                  "Garantizado para cartas {C:attention}trampa{}",
                  "{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)"
				}
            },
            j_poke_golurk = {
                name = "Golurk",
                text = {
                  "{C:purple}+#1# Nivel de trampas",
                  "{C:green}#3# en #4#{} probabilidades para cada carta",
                  "{C:attention}en tu mano{} de otorgar {X:mult,C:white}X#2#{} multi", 
                  "Garantizado para cartas {C:attention}trampa{}",
				}
            },
            j_poke_pawniard = {
                name = "Pawniard",
                text = {
                  "Obtiene {X:red,C:white}X#2#{} multi cuando una",
                  "carta de {C:attention}figura{} es destruida",
                  "{C:inactive}(Evoluciona cuando tiene {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X#3#{C:inactive} multi)",
                }
            },
            j_poke_bisharp = {
              name = "Bisharp",
              text = {
                "Obtiene {X:red,C:white}X#2#{} multi cuando una",
                "carta de {C:attention}figura{} es destruida",
                "{br:2}ERROR - CONTACT STEAK",
                "Si la primera mano jugada tiene es",
                "solo una carta de {C:attention}figura{}, la destruye",
                "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
                "{C:inactive}(Evoluciona tras destruir {C:attention}#3#{C:inactive} reyes)",
              }
            },
            j_poke_zweilous = {
                name = "Zweilous",
                text = {
                  "{X:mult,C:white} X#1# {} multi si la mano",
				  "jugada es una {C:attention}Tercia{}",
				  "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces){}"
                }
            },
            j_poke_hydreigon = {
                name = "Hydreigon",
                text = {
                  "Si la mano jugada es una {C:attention}Tercia{}",
				  "todas las cartas que",
				  "no anotan son destruidas",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Obtiene {X:mult,C:white} X#2# {} multi cuando",
				  "una carta de juego es destruida",
				  "{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi){}"
                }
            },
            j_poke_deino = {
                name = "Deino",
                text = {
                  "{X:mult,C:white} X#1# {} multi si la mano",
				  "jugada es una {C:attention}Tercia{}",
				  "{C:inactive}(Evoluciona tras activarse {C:attention}#2#{C:inactive} veces){}"
                }
            },
            j_poke_litleo = {
                name = "Litleo",
                text = {
                    "{C:chips}+#1#{} fichas si la mano jugada",
					"contiene un {C:attention}Color{}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                } 
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "{C:chips}+#1#{} fichas si la mano",
					"jugada contiene un {C:attention}Color{}",
					"{br:2}ERROR - CONTACT STEAK",
					"Crea una carta de {C:pink}energía{} si",
					"también contiene un {C:attention}rey{} o {C:attention}reina{}"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Si la {C:attention}primera mano{} es",
                    "exactamente {C:attention}1{} carta sin mejora,",
                    "le agrega {C:dark_edition}laminado{}, {C:dark_edition}holográfico{},",
                    "o {C:dark_edition}policromía{}",
				}
            },
            j_poke_pumpkaboo_small = {
                name = 'Pumpkaboo (Pequeño)',
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                }
            },
            j_poke_pumpkaboo_average = {
                name = 'Pumpkaboo (Mediano)',
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                }
            },
            j_poke_pumpkaboo_large = {
                name = 'Pumpkaboo (Grande)',
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                }
            },
            j_poke_pumpkaboo_super = {
                name = 'Pumpkaboo (Gigante)',
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{C:inactive}(Evoluciona con un {C:attention}Cordón Unión{C:inactive})"
                }
            },
            j_poke_gourgeist_small = {
                name = "Gourgeist (Pequeño)",
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gana {C:money}#3# ${} cuando una carta {C:spectral}espectral{}",
                  "es usada y aplica un sticker",
                  "{X:psychic,C:white}Psíquico{} al {C:attention}comodín{} más a la izquierda"
                }
            },
            j_poke_gourgeist_average = {
                name = "Gourgeist (Mediano)",
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gana {C:money}#3# ${} cuando una carta {C:spectral}espectral{}",
                  "es usada y aplica un sticker",
                  "{X:psychic,C:white}Psíquico{} al {C:attention}comodín{} más a la izquierda"
                }
            },
            j_poke_gourgeist_large = {
                name = "Gourgeist (Grande)",
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gana {C:money}#3# ${} cuando una carta {C:spectral}espectral{}",
                  "es usada y aplica un sticker",
                  "{X:psychic,C:white}Psíquico{} al {C:attention}comodín{} más a la izquierda"
                }
            },
            j_poke_gourgeist_super = {
                name = "Gourgeist (Gigante)",
                text = {
                  "Crea una carta {C:spectral}espectral{}",
                  "después de descartar {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}jotas",
                  "{C:inactive}(Debe haber espacio)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gana {C:money}#3# ${} cuando una carta {C:spectral}espectral{}",
                  "es usada y aplica un sticker",
                  "{X:psychic,C:white}Psíquico{} al {C:attention}comodín{} más a la izquierda"
                }
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} multi","Se {C:attention}triplica{} si tienes",
					"un comodín tipo {X:lightning, C:black}Rayo{}",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} multi por cada comodín",
					"tipo {X:lightning, C:black}Rayo{} que tengas",
					"{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)",
					"{C:inactive}(Evoluciona con una","{C:attention}Piedra Trueno{C:inactive})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} multi",
					"{X:mult,C:white} X#1# {} multi por cada otro",
					"comodín tipo {X:lightning, C:black}Rayo{} que tengas",
					"{C:inactive}(Actual {X:mult,C:white} X#2# {C:inactive} multi)",
                }
            },
            j_poke_rockruff = {
              name = "Rockruff",
              text = {
                "Cada carta que {C:attention}no es de figura{}",
                "otorga {C:mult}+#1#{} multi cuando anota",
                "{C:inactive}(Evoluciona tras jugar {C:attention}#2#{C:inactive} cartas pares)",
                "{C:inactive}(Evoluciona tras jugar {C:attention}#3#{C:inactive} cartas impares)"
              }
            },
            j_poke_lycanroc_day = {
              name = "Lycanroc (Diurna)",
              text = {
                "Cada carta {C:attention}par{} otorga",
                "{C:mult}+#1#{} multi cuando anota",
                "{br:3}ERROR - CONTACT STEAK",
                "Si la primera mano jugada tiene",
                "exactamente {C:attention}1{} carta, otorga", 
                "{C:chips}+#2#{} fichas y {C:blue}+1{} mano por",
                "esta ronda cuando anota"
              }
            },
            j_poke_lycanroc_night= {
              name = "Lycanroc (Nocturna)",
              text = {
                "Cada carta {C:attention}impar{} otorga",
                "{C:mult}+#1#{} multi cuando anota",
                "{br:3}ERROR - CONTACT STEAK",
                "Cuando se selecciona la {C:attention}ciega jefe{}",
                "gana {C:chips}+#2#{} mano, {C:mult}+#3#{} descarte y", 
                "{C:attention}+#2#{} tamaño de mano por esta ronda",
              }
            },
            j_poke_lycanroc_dusk = {
              name = "Lycanroc (Crepuscular)",
              text = {
                "Cada carta que {C:attention}no es de figura{}",
                "otorga {C:mult}+#1#{} multi cuando anota",
                "{br:3}ERROR - CONTACT STEAK",
                "Reactiva la {C:attention}primera{} carta {C:attention}par{}",
                "y la {C:attention}primera{} carta {C:attention}impar{}",
                "en la mano de póker"
              }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} fichas si la mano",
				  "jugada no tiene {C:hearts}#2#{} que anotan",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Evita la muerte si las fichas obtenidas",
				  "son al menos un {C:attention}50%{} de lo requerido",
				  "{C:inactive}(#3#){}"
                }
            },
            j_poke_nickit = {
                name = "Nickit",
                text = {
                    "Gana {C:money}#1# ${} al",
					"final de la ronda",
					"{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)"
                } 
            },
            j_poke_thievul = {
                name = "Thievul",
                text = {
                    "Gana {C:money}${} igual al {C:attention}doble{} del valor",
					"de venta del {C:attention}comodín{} más a la",
					"izquierda al final de la ronda",
					"{C:inactive,s:0.9}(Excepto a sí mismo)",
					"{C:inactive}(Actual {C:money}#1# ${C:inactive}, Máximo de {C:money}$15{C:inactive})",
                } 
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} multi y gana {C:money}#2# ${}",
					"si la mano jugada contiene",
					"una {C:attention}Escalera{}",
					"{C:inactive}(Evoluciona tras {C:attention}#3#{C:inactive} rondas)",
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:mult,C:white}X#1#{} multi y gana {C:money}#2# ${}",
					"si la mano jugada contiene",
					"una {C:attention}Escalera{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Cuando es vendido, agrega {C:money}#1# ${} al valor de",
                  "venta de todos tus {C:attention}comodines{} y {C:attention}convierte{}",
                  "todas las cartas en tu mano al {C:attention}palo",
                  "de la carta más a la izquierda",
                  "{C:inactive}(Evoluciona cuando juegas una {C:attention}Escalera corrida{C:inactive})",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:mult,C:white} X#4# {} multi por cada {C:money}${} del valor",
				  "de venta de todos tus {C:attention}comodines{}",
				  "{br:4}ERROR - CONTACT STEAK",
				  "Si la mano jugada es una {C:attention}Escalera corrida{},",
				  "agrega {C:money}#1# ${} al valor de venta de",
				  "todos tus comodines",
				  "{C:inactive}(Actual {X:mult,C:white} X#5# {C:inactive} multi){}",
				  "{C:inactive}(Evoluciona cuando el total del valor de",
				  "{C:inactive}venta de tus comodines es #2# $/{C:money}#3# ${C:inactive})",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:mult,C:white} X#2# {} multi por cada {C:money}${} del valor",
				  "de venta de todos tus {C:attention}comodines{}",
				  "{br:4}ERROR - CONTACT STEAK",
				  "Si la mano jugada es una {C:attention}Escalera corrida{}",
				  "y no tienes ninguna {C:attention}Flecha Dreepy{}",
				  "crea {C:attention}2 Flechas Dreepy{} con {C:dark_edition}negativo{}",
				  "{C:inactive}(Actual {X:mult,C:white} X#3# {C:inactive} multi){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Flecha Dreepy",
                text = {
                    "Cuando es vendido, agrega {C:money}#1# ${} al valor de",
                    "venta de todos tus {C:attention}comodines{} y {C:attention}convierte{}",
                    "todas las cartas en tu mano al {C:attention}palo",
                    "de la carta más a la izquierda",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "Qwilfish (de Hisui)",
                text = {
                    "{C:purple}+#1# Nivel de trampas",
					"{C:inactive}(1 por cada #2# cartas en tu baraja)",
					"Obtiene {C:chips}+#3#{} fichas cuando una",
					"{C:attention}carta trampa{} es sacada",
					"{C:inactive}(Evoluciona cuando tiene",
					"{C:chips}+#4#{C:inactive} / +#5# fichas)",
                }
            },
            j_poke_overqwil = {
                name = "Overqwil",
                text = {
                    "{C:purple}+#1# Nivel de trampas","{C:inactive}(1 por cada #2# cartas en tu baraja)","Obtiene {C:chips}+#3#{} fichas cuando una","{C:attention}carta trampa{} es sacada","{br:3}ERROR - CONTACT STEAK","{C:attention}Divide a la mitad{} las fichas tras jugar una mano","{C:inactive}(Actual {C:chips}+#4#{C:inactive} fichas)",
                }
            },
            j_poke_wyrdeer = {
                name = "Wyrdeer",
                text = {
                    "{C:purple}+#1# Profecía",
					"Agrega el {C:attention}doble{} de",
					"la categoría de la carta",
					"{C:attention}profetizada{} más {C:attention}alta{} a multi",
					"{br:3}ERROR - CONTACT STEAK",
					"Obtiene {C:purple}+#2# Profecía{} cuando",
					"juegas una mano",
					"{C:inactive,s:0.9}(Se restablece al final de la ronda)",
                }
            },
            j_poke_kleavor = {
                name = 'Kleavor',      
                text = {
                    "Cuando se selecciona la {C:attention}ciega{}, destruye al",
					"comodín de la derecha y obtiene {C:mult}+#2#{} multi",
					"Agrega una {C:attention}carta de piedra{} a tu baraja con",
					"edición {C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o {C:dark_edition}polícromo{}",
					"si era {C:green}Inusual{} o superior",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
                } 
            },
            j_poke_ursaluna = {
              name = "Ursaluna",
              text = {
				"Obtiene {C:mult}+#2#{} multi y crea un {C:item}objeto",
				"con {C:dark_edition}laminado{}, {C:dark_edition}holográfico{}, o {C:dark_edition}policromía{}",
				"cuando cualquier {C:attention}paquete potenciador{}",
				"es omitido",
				"{C:inactive}(Debe haber espacio)",
				"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
              }
            },
            j_poke_tarountula = {
                name = "Tarountula",
                text = {
                    "{C:purple}+#1# Nivel de trampas{}",
					"{C:attention}+#3#{} tamaño de mano",
                    "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
				}
            },
            j_poke_spidops = {
                name = "Spidops",
                text = {
					"{C:purple}+#1# Nivel de trampas",
					"{C:attention}+#2#{} tamaño de mano",
                    "Agrega un {C:attention}sello{} al azar a cada",
                    "{C:attention}octava{} {C:attention}carta de juego {C:inactive}[#4#]{}",
                    "que es añadida a tu baraja"
				}
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Obtiene {C:chips}+#2#{} fichas si la mano",
				  "jugada contiene un(a) {C:attention}#3#{}",
				  "La {C:attention}categoría{} requerida aumenta",
				  "cada que se activa",
				  "{C:inactive,s:0.8}(Cuando es la más alta, se vuelve la menor)",
				  "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
				  "{C:inactive}(Evoluciona cuando tienes un",
				  "{C:inactive}comodín tipo {X:fire,C:white}Fuego{C:inactive})",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Obtiene {C:chips}+#2#{} fichas si la mano",
				  "jugada contiene un(a) {C:attention}#3#{}",
				  "La {C:attention}categoría{} requerida aumenta",
				  "cada que se activa",
				  "{C:inactive,s:0.9}(Cuando es la más alta, se vuelve la menor)",
				  "{br:4}ERROR - CONTACT STEAK",
				  "Aumenta las fichas ganadas en {C:chips}+2{} por",
				  "cada comodín tipo {X:fire,C:white}Fuego{} que tengas",
				  "{C:inactive}(Actual {C:chips}+#1#{C:inactive} fichas)",
                }
            },
            j_poke_charcadet = {
              name = "Charcadet",
              text = {
                "Obtiene {C:mult}+#2#{} multi después",
                "de jugar una mano",
                "{C:inactive,s:0.9}(Se restablece al final de la ronda)",
                "{C:inactive}(Evoluciona con una",
				"{C:attention}Piedra Alba{C:inactive} o una {C:attention}Piedra Noche{C:inactive})",
                "{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)",
              }
            },
            j_poke_armarouge = {
              name = "Armarouge",
              text = {
                "{X:mult,C:white} X#1# {} multi",
                "Pierde {X:mult,C:white} X#2# {} multi después",
                "de jugar una mano",
                "{C:inactive,s:0.9}(Se restablece al final de la ronda)",
              }
            },
            j_poke_ceruledge = {
              name = "Ceruledge",
              text = {
                "Obtiene {X:mult,C:white} X#2# {} multi después",
                "de jugar una mano y drena {C:money}#3# ${}",
                "de otro comodín al azar",
                "{C:inactive,s:0.9}(Se restablece al final de la ronda)",
                "{C:inactive}(Actual {X:mult,C:white} X#1# {C:inactive} multi)",
              }
            },
            j_poke_bramblin = {
              name = "Bramblin",
              text = {
                "El {C:attention}segundo{} {C:attention}#1#{}",
				"que anota en la ronda",
				"se mejora a carta {C:attention}semilla{}",
                "{C:inactive,s:0.9}(La categoría cambia cada ronda){}",
                "{C:inactive}(Evoluciona tras sacar",
				"{C:attention}#2#{C:inactive} cartas durante las ciegas){}",
              }
            },
            j_poke_brambleghast = {
              name = "Brambleghast",
              text = {
                "{C:chips}+#1#{} fichas por cada {C:money}1 ${} que tienes",
                "{C:inactive}(Actual {C:chips}+#2#{C:inactive} fichas)",
                "{br:2}ERROR - CONTACT STEAK",
                "El {C:attention}segundo{} {C:attention}#3#{}",
				"que anota en la ronda",
				"se mejora a carta {C:attention}semilla{}",
                "con {C:attention}2 crecimientos{}",
                "{C:inactive,s:0.9}(La categoría cambia cada ronda){}",
              }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Las cartas jugadas otorgan {C:mult}+#1#{} multi",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Cuando se selecciona la {C:attention}ciega{}, debilita {C:attention}#3#{}",
				  "cartas sin mejora {C:attention}de acero{} de tu baraja",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Las cartas jugadas otorgan {C:mult}+#1#{} multi",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Cuando se selecciona la {C:attention}ciega{}, debilita {C:attention}#3#{}",
				  "cartas sin mejora {C:attention}de acero{} de tu baraja",
				  "{C:inactive}(Evoluciona tras {C:attention}#2#{C:inactive} rondas)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Las cartas jugadas otorgan {C:mult}+#1#{} multi",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Cuando se selecciona la {C:attention}ciega{}, debilita {C:attention}#3#{}",
				  "cartas sin mejora {C:attention}de acero{} de tu baraja",
				  "{br:4}ERROR - CONTACT STEAK",
				  "Las {C:attention}cartas de acero{} jugadas",
				  "también son {C:attention}cartas de vidrio{}"
                }
            },
            j_poke_wiglett = {
                name = "Wiglett",
                text = {
                    "{C:mult}+#3#{} multi si la mano jugada",
					"contiene una {C:attention}Tercia{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:chips}+#2#{} fichas si la mano jugada",
					"contiene un {C:attention}5{}, {C:attention}6{}, o {C:attention}7{} que anota",
					"{C:inactive}(Evoluciona tras {C:attention}#1#{C:inactive} rondas)"
                } 
            },
            j_poke_wugtrio = {
                name = "Wugtrio",
                text = {
                    "{X:mult,C:white} X#1# {} multi si la mano jugada",
					"contiene una {C:attention}Tercia{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:chips}+#2#{} fichas si la mano jugada",
					"contiene un {C:attention}5{}, {C:attention}6{}, o {C:attention}7{} que anota",
                } 
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, o {C:attention}7{} jugado otorga",
					"{C:mult}+#1#{} multi y {C:chips}+#2#{} fichas cuando anota",
					"por cada mano jugada esta ronda",
					"{C:inactive}(Actual {C:mult}+#3#{} {C:inactive}multi {C:chips}+#4#{C:inactive} fichas)",
                } 
            },
            j_poke_dudunsparce = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}+#1#{} ranura de carta, paquete potenciador",
				  "y vale disponibles en la tienda",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}Equipado con una Etiqueta de cupón{}",
				  "{C:attention}+#1#{} ranura de carta, paquete potenciador",
				  "y vale disponibles en la tienda",
                }
            },
            j_poke_kingambit = {
                name = "Kingambit",
                text = {
                  "{X:red,C:white}X#1#{} multi",
                  "Si la mano jugada tiene el único",
                  "{C:attention}rey{} en tu {C:attention}baraja completa{}, cada",
                  "carta que {C:attention}no es de figura{} otorga la mitad",
                  "del {X:mult,C:white}X{} multi de este comodín",
				  "cuando anota"
                }
            },
            j_poke_farigiraf = {
              name = "Farigiraf",
              text = {
                "{C:attention}Equipado con{} {C:spectral}Críptido{}",
				"La primera y segunda carta de {C:attention}figura{}",
				"otorga {X:mult,C:white}X#1#{} multi cuando anota",
				"si la mano jugada contiene un {C:attention}Doble par{}",
              }
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Cofre)",
                text = {
                  "Las {C:attention}cartas de oro{} jugadas",
				  "ganan {C:money}#1# ${} cuando anotan",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Omite un {C:attention}paquete potenciador{}",
				  "... ¿para...?",
				  "{C:inactive}(Evoluciona tras ganar o",
				  "{C:inactive}gastar {C:money}#2# ${C:inactive}/#3# $)"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Errante)",
                text = {
                  "Gana un poco de {C:money}${}",
				  "{S:1.1,C:red,E:2}Se autodestruye{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                  "Las {C:attention}cartas de oro{} jugadas {C:red}gastan{} {C:money}#2# ${}",
				  "cuando anotan y multiplica el",
				  "{X:mult,C:white}X{} multi de este comodín por {X:mult,C:white}X#3#",
				  "{br:3}ERROR - CONTACT STEAK",
				  "Este comodín no puede ser debilitado",
				  "{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi)",
				  "{C:inactive,s:0.9}(Se restablece al final de la ronda)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "¿Crea consumibles","cuando lo consigues?","Crea ¿{C:attention}#1#{}? ¿{C:attention}etiquetas{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokédex',
                text = {
					"{C:attention}Pokémon{} de la misma",
					"línea evolutiva pueden aparecer",
					"{C:inactive}(Actual {C:mult}+#1#{C:inactive} multi)"
                } 
            },
            j_poke_rotomdex = {
                name = 'RotomDex',
                text = {
                    "Los {C:attention}paquetes potenciadores{} cuestan {C:money}1 ${} menos",
                    "por cada {C:pink}tipo{} diferente",
                    "de tus comodines",
                    "{C:inactive}(Actual {C:money}#1# ${C:inactive} menos)"
                } 
            },
            j_poke_everstone = {
                name = 'Piedra eterna',
                text = {
                    "Los Pokémon {C:attention}no pueden{}",
					"evolucionar o transformarse",
					"{br:3.5}ERROR - CONTACT STEAK",
					"Los Pokémon {C:attention}Básicos{} otorgan {X:mult,C:white} X#2# {} multi",
					"Los Pokémon {C:attention}Bebés{} otorgan {X:mult,C:white} X#1# {} multi",
                } 
            },
            j_poke_tall_grass = {
                name = 'Hierba alta',
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear un {C:attention}Pokémon{}",
					"{C:chips}común{} cuando la mano es jugada",
					"Garantizado cuando una carta {C:attention}versátil{} puntúa",
					"{C:inactive}(Debe haber espacio){}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Rosquilla rellena",
                text = {
                  "Crea una {C:pink}energía{} {X:colorless,C:white}Incolora",
				  "cuando se selecciona la {C:attention}ciega",
				  "{C:inactive}({C:attention}#1#{C:inactive} rondas restantes){}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "Ruinas Alfa",
                text = {
                  "Cuando se selecciona la {C:attention}ciega{},",
				  "crea {C:attention}3{} {C:attention}Unown{} con {C:dark_edition}negativo{}",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Después de que un {C:attention}Unown{} se activa, se",
				  "fusiona con este comodín y obtiene {C:mult}+#1#{} multi",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Vende esta carta para conseguir",
				  "una {C:attention}recompensa{} dependiendo",
				  "de la cantidad de Unown {C:attention}fusionados",
				  "{C:inactive}(Actual {C:mult}+#3#{C:inactive} multi y {C:attention}#2#{C:inactive} Unown)",
                }
            },
            j_poke_unown_swarm = {
                name = "Enjambre de Unown",
                text = {
                  "Cada comodín {C:purple}Legendario{} otorga",
				  "{C:mult}+#1#{} multi y {X:mult,C:white}X#2#{} multi"
                }
            },
            j_poke_treasure_eatery = {
                name = "Mesón El Tesoro",
                text = {
                  "{C:attention}Cambia Tipo{}",
				  "{br:2}ERROR - CONTACT STEAK",
				  "Cambia el {C:pink}tipo{} del comodín más a la izquierda",
				  "por el {C:pink}tipo{} del comodín más a la derecha",
				  "cuando seleccionas la {C:attention}ciega",
				  "{C:inactive}({C:attention}#1#{C:inactive} rondas restantes){}"
                }
            },
            j_poke_rival = {
                name = "Rival",
                text = {
                    "Aumenta el pago por {C:money}#2# ${} después",
					"de omitir una ciega",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Cuando derrotas la {C:attention}ciega jefe{},",
                    "{S:1.1,C:red,E:2}se autodestruye{} y ganas {C:money}#1# $",
                }
            },
            j_poke_bitter_rival = {
                name = "Rival amargo",
                text = {
                    "Aumenta el pago por {C:money}#2# ${} después",
					"de omitir una ciega",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Cuando derrotas la {C:attention}ciega jefe{},",
                    "{S:1.1,C:red,E:2}se autodestruye{} y ganas {C:money}#1# $",
                }
            },
            j_poke_champion = {
                name = "Campeón",
                text = {
                    "Cuando derrotas la {C:attention}ciega jefe{},",
                    "crea una {C:attention}Etiqueta veloz",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{X:mult,C:white}X#3#{} multi por cada",
                    "ciega omitida en esta partida",
                    "{C:inactive}(Actual {X:mult,C:white}X#4#{C:inactive} multi){}"
                }
            },
            j_poke_professor = {
                name = "Profesor",
                text = {
                    "Después de {C:attention}#1#{} rondas, vende esta carta",
                    "para crear una {C:attention}Etiqueta inicial{}",
                    "{C:inactive}(Actualmente {C:attention}#2#{C:inactive}/#1#){}"
                }
            },
            j_poke_oologist = {
                name = "Oólogo",
                text = {
                    "Los cambios tienen un {C:green}#1# en #2#{}",
                    "probabilidades de añadir un",
                    "{C:attention}Huevo misterioso {C:dark_edition}negativo{} a la tienda",
                    "Una vez por tienda {C:inactive}#3#"
                }
            },
            j_poke_mystery_egg = {
                name = "Huevo misterioso",
                text = {
                  "Eclosiona en un Pokémon {C:attention}Básico{} o","{C:attention}Bebé{} tras {C:attention}#1#{} rondas y","{C:pink}energizado{} una vez si se puede"
                }
            },
            j_poke_daycare = {
              name = "Guardería",
              text = {
                "Vende esta carta para crear",
                "un {C:attention}Huevo misterioso{} basado en",
                "los Pokémon adyacentes",
                "{C:inactive,s:0.9}(Excluye los Pokémon Bebés y Legendarios){}"
              }
            },
            j_poke_repel = {
                name = 'Repelente',      
                text = {
                    "Vende esta carta para {C:attention}deshabilitar{}",
                    "la {C:attention}ciega jefe{} actual",
                    "y crea una {C:attention}Etiqueta D6{}"
                } 
            },
            j_poke_billion_lions = {
                name = 'Un billón de leones',
                text = {
                    "Cuando la ciega es seleccionada, destruye","todos los comodines con un {C:pink}tipo{} que tengas","y obtiene {X:mult,C:white}X#2#{} multi por cada uno","{S:1.1,C:red,E:2}Se autodestruye{} cuando se quedá sin leones","{C:inactive}(Actual {X:mult,C:white}X#1#{C:inactive} multi, {C:attention}#3#{C:inactive} leones)"
                } 
            },
            --[[ Egg dynatext, not used right now
            j_poke_mystery_egg = {
                name = "Huevo misterioso",
                text = {
                    "Este huevo necesita más tiempo para eclosionar.","Keep it secret. Keep it safe.","It looks cold y lonely.","Follow that egg!","Is it supposed to glow?","I wonder what's inside?","It moves around inside sometimes.","It's a secret to everybody.","Not to be put on a sandwich.",
                }
            },--]]
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Funda de Entrenador",
                text = {
                    "Comienza la partida con",
					"el vale {C:tarot,T:v_poke_goodrod}#1#{}",
					"y una {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_pokemonsleeve_alt = {
                name = "Funda de Entrenador",
                text = {
					"Comienza la partida con",
                    "una {C:tarot,T:c_poke_greatball}#3#{}",
                    "en vez de una {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Funda Obituaria",
                text = {
                    "Todas las cartas tienen","un {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_obituarysleeve_alt = {
                name = "Funda Obituaria",
                text = {
                    "Los {C:pink}sellos rosados{} tienen {C:green}#1# en #2#{} probabilidades",
                    "de ser removidos tras activarse",
                    "Los comodines crean una {C:pink}energía {C:dark_edition}negativa{} de",
                    "su tipo cuando son vendidos o destruidos",
                },
            },
            sleeve_poke_revenantsleeve = {
                name = "Funda Renacida",
                text = {
                    "Todas las cartas tienen","un {C:dark_edition}#1#{}",
                },
            },
			sleeve_poke_revenantsleeve_alt = {
              name = "Funda Renacida",
              text = {
                  "{C:blue}+#1#{} ranuras de consumible",
                  "Los {C:pink}paquetes pokémon{} no",
                  "aparecerán en la tienda",
              },
            },
            sleeve_poke_luminoussleeve = {
                name = "Funda Luminosa",
                text = {
                    "Todos los comodines son",
					"creados con {C:pink}1 energía{} y",
					"con un sticker de un {C:pink}tipo{} al azar"
                },
            },
            sleeve_poke_luminoussleeve_alt = {
                name = "Funda Luminosa",
                text = {
                    "Los cambios tienen una {C:green}#1# en #2#{} probabilidades",
                    "de crear un {C:item}Orbe Teracristal",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Funda Telequinética",
                text = {
                    "Comienza la partida con","el vale {C:tarot,T:v_crystal_ball}#1#{}","y {C:attention}2{} copias","de la {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
			sleeve_poke_telekineticsleeve_alt = {
                name = "Funda Telequinética",
                text = {
                    "Las {C:item,T:c_poke_twisted_spoon}#2#s{}",
                    "que tengas otorgan",
                    "{C:blue}+1{} ranura de consumible",
                }
            },
            sleeve_poke_ampedsleeve = {
                name = "Funda Energizada",
                text = {
                    "Comienza la partida con","el vale {C:tarot,T:v_poke_energysearch}#1#{}","y una copia de","{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
            sleeve_poke_ampedsleeve_alt = {
                name = "Funda Energizada",
                text = {
                    "Comienza la partida con una {C:attention,T:j_poke_jelly_donut}#1#{} {C:dark_edition}negativa",
                    "en vez de una {C:pink,T:c_poke_double_rainbow_energy}#2#",
                    "{C:pink,T:c_poke_colorless_energy}#3#{} ya no es la mitad de",
                    "efectiva en comodines que no son tipo Normal",
                } 
            },
            sleeve_poke_futuresleeve = {
                name = "Funda profética",
                text = {
                    "{C:purple}+#1# Profecía{}",
                } 
            },
            sleeve_poke_futuresleeve_alt = {
                name = "Funda profética",
                text = {
                  "Gana {C:purple}+#2# Profecía{} cuando juegas una mano",
                  "{C:inactive,s:0.0}(Se restablece al final de la ronda)",
                } 
            },
            sleeve_poke_stadiumsleeve = {
                name = "Funda Stadium",
                text = {
                    "Comienza la partida con una","carta {C:attention}adicional, multi, versátil,",
                    "{C:attention}de vidrio, de acero, de piedra,",
                    "{C:attention}de oro,{} y de la {C:attention}suerte{}"
                } 
            },
            sleeve_poke_stadiumsleeve_alt = {
                name = "Funda Stadium",
                text = {
                    "Después de derrotar cada",
                    "{C:attention}ciega jefe{}, crea una carta",
					"de {C:tarot}tarot{} de {C:attention}mejora{} {C:dark_edition}negativa{}",
                } 
            },
            sleeve_poke_megasleeve = {
                name = "Mega Funda",
                text = {
                    "Comienza la partida con los vales",
                    "{C:tarot,T:v_reroll_surplus}#2#{},","{C:tarot,T:v_reroll_glut}#3#{}",
                    "y {C:tarot,T:v_crystal_ball}#5#{} y",
                    "una {C:spectral,T:c_poke_megastone}#1#{}",
                    "{C:red}-#4#{} ranura en la tienda"
                } 
            },
            sleeve_poke_megasleeve_alt = {
                name = "Mega Funda",
                text = {
                    "La {C:attention}Megaevolución{} ya no está",
                    "restringida a 1 comodín por",
                    "cada {C:spectral,T:c_poke_megastone}#1#{} que tengas",
                } 
            },
            sleeve_poke_vendingsleeve = {
                name = "Funda expendedora",
                text = {
                    "Después de derrotar a cada",
                    "{C:attention}ciega jefe impar{}, gana 1",
                    "{C:attention,T:tag_vremade_double}#1#",
                } 
            },
            sleeve_poke_vendingsleeve_alt = {
                name = "Funda expendedora",
                text = {
                    "Gana una {C:attention,T:tag_vremade_double}#1#",
                    "tras derrotar cada",
                    "{C:attention}ciega jefe{} en su lugar"
                } 
            },
            sleeve_poke_diceysleeve = {
                name = "Funda tramposa",
                text = {
                    "{C:hazard}+#1#{} nivel de trampas y límite, {C:attention}+#1#{} tamaño de mano",
                    "Al final de cada ronda:",
                    "Gana {C:money}#4# ${} por cada carta",
                    "{C:attention}trampa{} en tu {C:attention}baraja completa",
                    "No ganas {C:attention}intereses"
                } 
            },
            sleeve_poke_diceysleeve_alt = {
                name = "Funda tramposa",
                text = {
                    "Todas las {C:attention}trampas{} otorgan {C:attention}+1{} tamaño de mano",
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultra Ball",
                text = {
                    "Crea al azar un","{C:attention}Pokémon de Etapa 2{}","{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_masterball = {
                name = "Master Ball",
                text = {
                    "Crea un","{C:attention} Pokémon {}{C:legendary,E:1}Legendario","{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_transformation = {
                name = "Transformación",
                text = {
                    "Evoluciona al Pokémon más",
					"a la izquierda o seleccionado a su","{C:attention}etapa{} más alta y lo {C:pink}energiza{}", 
                },
            },
            c_poke_megastone = {
                name = "Megapiedra",
                text = {
                    "Es {C:attention}reusable{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}Megaevoluciona{} un Pokémon",
					"o {C:attention}involuciona{} una Mega","si es usada",
					"{C:attention}Involuciona{} la Mega si es vendida",
					"{C:inactive}(Usable una vez por ronda)",
                },
            },
            c_poke_obituary = {
                name = "Obituario",
                text = {
                    "Agrega un {C:pink}sello rosado{}",
					"a {C:attention}1{} carta seleccionada",
                }
            },
            c_poke_nightmare = {
                name = "Pesadilla",
                text = {
                    "Destruye al comodín más a la izquierda","o seleccionado con {C:pink}tipo{}",
					"y crea {C:attention}2{} {C:pink}energías{} {C:dark_edition}negativas{}","del {C:pink}tipo{} de ese comodín"
                },
            },
            c_poke_revenant = {
                name = "Renacido",
                text = {
                    "Agrega un {C:item}sello plateado{}",
					"a {C:attention}1{} carta seleccionada",
                }
            },
            c_poke_double_rainbow_energy = {
                name = "Doble Energía Arcoíris",
                text = {
                    "{C:pink}Energiza{} al comodín más a la",
					"izquierda o seleccionado de",
					"cualquier {C:pink}tipo{} {C:red}d{C:attention}o{C:green}s{} {C:red}v{C:attention}e{C:green}c{C:blue}e{C:purple}s{}",
					"No ganas intereses esta ronda","{C:inactive}(Máximo de {C:attention}#1#","{C:inactive}aumentos por comodín)",
                },
            },
            c_poke_fake_banker = {
                name = 'Deseo de Dinero',
                text = {
                    "{C:dark_edition}¡Desea Dinero!",
                }
            },
            c_poke_fake_booster = {
                name = 'Deseo Potenciador',
                text = {
                    "{C:dark_edition}¡Desea más Opciones!",
                }
            },
            c_poke_fake_power = {
                name = 'Deseo de Poder',
                text = {
                    "{C:dark_edition}¡Desea Poder!",
                }
            },
            c_poke_fake_negging = {
                name = 'Deseo Negativo',
                text = {
                    "{C:dark_edition}¡Desea Amigos!",
                }
            },
            c_poke_fake_copy = {
                name = 'Deseo de Copia',
                text = {
                    "{C:dark_edition}¡Desea un Refuerzo!",
                }
            },
            c_poke_fake_fixer = {
                name = 'Deseo de Purificación',
                text = {
                    "{C:dark_edition}¡Desea una Baraja mejor!",
                }
            },
            c_poke_fake_masterball = {
                name = 'Deseo de Invocación',
                text = {
                    "{C:dark_edition}¡Desea invocar un comodín Legendario!",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Etiqueta Pokémon",
                text = {
                    "Otorga gratis un {C:pink}megapaquete Pokémon",
					"{C:green}#1#%{} de probabilidad de que contenga",
					"una {C:attention}Megapiedra{} en una {C:attention}apuesta mayor a 5{}",
					"{C:inactive,s:0.8}(La probabilidad no puede ser aumentada){}",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Etiqueta variocolor",
                text = {
                    "El próximo comodín de la",
					"tienda de la edición base es gratis y","se vuelve {C:colorless}variocolor{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Etiqueta de etapa 1",
                text = {
                    "La tienda tiene un","Pokémon de {C:attention}Etapa 1{} gratis",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Etiqueta de safari",
                text = {
                    "La tienda tiene un","Pokémon de {C:safari}Safari{} gratis",
                }, 
            },
            tag_poke_starter_tag = {
                name = "Etiqueta inicial",
                text = {
                    "Otorga gratis un {C:attention}paquete inicial{}",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Crea al azar un","{C:attention}Pokémon Básico{}","{C:inactive}(Debe haber espacio)"
                },
            },
            c_poke_greatball = {
                name = "Super Ball",
                text = {
                    "Crea al azar un","{C:attention}Pokémon de Etapa 1{}","{C:inactive}(Debe haber espacio)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Búsqueda de Energía",
                text = {
                    "{C:pink}+2{} límite de energía"
                },
            },
            v_poke_energyresearch = {
                name = "Investigación de Energía",
                text = {
                    "{C:pink}+3{} límite de energía"
                },
            },
            v_poke_goodrod = {
                name = "Caña Buena",
                text = {
                    "Todos los {C:attention}paquetes potenciadores{}","contienen {C:attention}1{} carta adicional",
                },
            },
            v_poke_superrod = {
                name = "Supercaña",
                text = {
                    "Puedes {C:pink}guardar{} cartas","de cualquier paquete de {C:attention}consumibles{}",
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
                  "{X:lightning,C:black}Rayo{}",
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
                  "{X:dark,C:white}Oscuro{}",
                }
            },
            Metal = {
                name = "Tipo",
                text = {
                  "{X:metal,C:white}Metal{}",
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
            --Have you Heard? Bird is the wordddd
            Bird = {
                name = "Tipo",
                text = {
                  "{X:bird,C:white}¿Pájaro?{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Ancestral",
                text = {
                    "El efecto depende de la",
					"cantidad de {C:attention}#1#{} en",
					"la mano de póker jugada",
					"{C:inactive}(Los efectos son {C:attention}acumulativos{C:inactive})"
                }
            },
            breed = {
                name = "Embarazo",
                text = {
                    "Crea un {C:attention}Huevo misterioso{}",
                    "que eclosionará en",
                    "la menor {C:attention}etapa{} de",
                    "uno de los {C:attention}padres",
                    "{C:inactive}(Siempre {C:attention}3{C:inactive} rondas para eclosionar){}"
                }
            },
            energize = {
                name = "Energizado",
                text = {
                  "Permanentemente aumenta",
				  "los valores de {C:mult}multi{}, {C:chips}fichas{},",
				  "{C:money}${} y {X:mult,C:white}X{} multi","de un comodín"
                }
            },
            eitem = {
                name = "Carta evolutiva",
                text = {
                    "Cuando es consumida, evoluciona",
					"al Pokémon {C:attention}disponible{} más","a la izquierda o seleccionado","al final de la siguiente ronda",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Carta equipada",
                text = {
                    "Usado por {C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "Cambia Tipo",
                text = {
                    "Agrega un sticker","de tipo {V:1}#1#{} al comodín"," más a la izquierda o seleccionado"
                }
            },
            typechangerother = {
                name = "Cambia Tipo",
                text = {
                    "Agrega un sticker","de tipo {V:1}#1#{}",
                }
            },
            typechangerpoke = {
                name = "Cambia Tipo",
                text = {
                    "Agrega un sticker","de tipo {V:1}#1#{} a sí mismo","en el momento de su creación"
                }
            },
            basic = {
                name = "Básico",
                text = {
                    "Un Pokémon que","no ha {C:attention}evolucionado{}","{C:inactive,s:0.8}(Ignorando los Pokémon {C:attention,s:0.8}Bebés{C:inactive,s:0.8}","{C:inactive,s:0.8}y {C:purple,s:0.8}Legendarios{C:inactive})"
                }
            },
            stage1 = {
                name = "Etapa 1",
                text = {
                    "Un Pokémon que ha","{C:attention}evolucionado{} una vez"
                }
            },
            stage2 = {
                name = "Etapa 2",
                text = {
                    "Un Pokémon que ha","{C:attention}evolucionado{} dos veces"
                }
            },
            energy = {
                name = "Energía usada",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Probabilidad de dinero",
                text = {
                    "{C:attention}#1#%{} probabilidades de","ganar {C:money}1 ${} extra"
                }
            },
            mult_progress = {
                name = "Progreso del aumento de multi",
                text = {
                    "{C:attention}#1#%{} progreso","para aumentar {C:mult}multi{}","en {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Progreso del aumento de fichas",
                text = {
                    "{C:attention}#1#%{} progreso","para aumentar {C:chips}fichas{}","en {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Progreso del aumento de dinero",
                text = {
                    "{C:attention}#1#%{} progreso","para aumentar {C:money}${}","en {C:money}1 ${}"
                }
            },
            availability = {
                name = "Disponibilidad",
                text = {
                    "No está disponible si","{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Bebé",
                text = {
                    "Cuando la mano es jugada y",
					"si hay algún comodín {C:attention}no Bebé{}",
					"a la derecha de este,","{C:attention}debilita{} este comodín"
                }
            },
            nature = {
                name = "Naturaleza",
                text = {
					--el siguiente texto se usará cuando se localice "suit" y "rank"
                    --"Una lista de un(a) o más {C:attention}#1#s{}",
                    "Una lista de uno o más",
					"{C:attention}palos{} o {C:attention}categorías",
					"que activan a este comodín",
					"Se establece en el",
					"momento de su creación",
                }
            },
            hazard_level = {
              name = "Nivel de trampas",
              text = {
                  "Cuando sacas la {C:attention}primera{} mano, agrega",
                  "tantas cartas {C:attention}trampa{} a tu mano",
                  "como tu {C:attention}nivel de trampas",
                  "{C:inactive}(Nivel de trampas actual {C:attention}#1#{C:inactive}/#2#){}"
              }
            },
            hazard_level_extra = {
              name = "Nivel de trampas",
              text = {
                  "Cuando sacas la {C:attention}primera{} mano, agrega",
                  "tantas cartas {C:attention}trampa{} a tu mano",
                  "igual a tu {C:attention}nivel de trampas",
                  "{C:inactive}(Nivel de trampas actual {C:attention}#1#{C:inactive}/#2#){}",
                  "{C:inactive}(Nivel de trampas extra aumentan el límite){}"
              }
            },
            merge = {
                name = "Fusión",
                text = {
                  "Remueve a la carta y la","agrega a este comodín","Clic derecho para ver","las cartas fusionadas","{C:inactive}(Los comodines fusionados","{C:inactive}no pueden ser copiados){}"
                }
            },
            rewards_ruins_of_alph = {
                name = "Recompensas",
                text = {
                  "{C:attention}#1#{} - Un Pokémon {C:attention}Safari{}",
				  "{C:attention}#2#{} - {C:attention}Duplicar{} un comodín al azar",
				  "{C:attention}#3#{} - {C:attention}Lluvia de ideas{}",
				  "{C:attention}#4#{} - {C:attention}Enjambre de Unown y El alma",
				  "{C:inactive}(No son acumulativos){}"
                }
            },
            scry_cards = {
                name = "Profecía",
                text = {
                    "Mira las siguientes","cartas de tu baraja"
                }
            },
            mega_rule = {
                name = "Restricción",
                text = {
                    "Solo 1 Pokémon puede",
					"{C:attention}Megaevolucionar{} por",
					"cada {C:attention}Megapiedra{} que tengas"
                }
            },
            mega_poke = {
                name = "Megaevolución",
                text = {
                    "Puede {C:attention}Megaevolucionar{}","con una {C:attention}Megapiedra{}"
                }
            },
            mega_used_on = {
                name = "Usado en",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "Mega XY",
                text = {
                  "{C:attention}Megaevoluciona{} dependiendo de su posición","Más a la izquierda - {C:attention}#1#{}","Más a la derecha - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "Requisito",
                text = {
                    "Debe usarse en","una {C:attention}carta de juego{}","para evolucionar"
                }
            },
            deli_gift = {
                name = "Regalos",
                text = {
                    "{C:green}35%{} - {C:money}8 ${}",
					"{C:green}30%{} - {C:attention}Carta de {C:item}objeto{}",
					"{C:green}20%{} - {C:attention}Etiqueta de cupón",
					"{C:green}15%{} - {C:attention}Carta de regalo{}",
					"con {C:dark_edition}policromía{}",
                }
            },
            bat_leech = {
                name = "Lista de chupamejoras",
                text = {
                    "{C:attention}Adicional{} / {C:attention}Piedra{} - {C:chips}Fichas",
                    "{C:attention}Acero{} / {C:attention}Vidrio{} / {C:attention}Floral{} - {X:mult,C:white}X{} {C:mult}Multi",
                    "{C:attention}Oro{} - {C:money}$ pago{} al final de la ronda",
                    "{C:attention}Otros{} - {C:mult}Multi"
                }
            },
            dril_treasure = {
                name = "Tesoros",
                text = {
                    "{C:green}30%{} - {C:item}Piedra {C:attention}evolutiva   ",
                    "{C:green}30%{} - {C:money}5 ${}               ",
                    "{C:green}20%{} - {C:attention}2 {C:item}Piedras {C:attention}evolutivas",
                    "{C:green}15%{} - {C:money}10 ${}              ",
                    "{C:green}5%{} - {C:money}20 ${}             ",
                }
            },
            exdril_treasure = {
                name = "Tesoros",
                text = {
                    "{C:green}30%{} - {C:item}Piedra {C:attention}evolutiva   ",
                    "{C:green}30%{} - {C:money}5 ${}               ",
                    "{C:green}20%{} - {C:attention}2 {C:item}Piedras {C:attention}evolutivas",
                    "{C:green}15%{} - {C:money}10 ${}              ",
                    "{C:green}4%{} - {C:money}20 ${}             ",
                    "{C:green}1%{} - {C:attention}Megapiedra     ",
                }
            },
            pickup = {
              name = "Recogida",
              text = {
                "{C:green}34%{} - {C:item}Carta de objeto{}",
				"{C:green}25%{} - {C:item}Carta evolutiva",
				"{C:green}20%{} - {C:item}Restos",
				"{C:green}20%{} - {C:item}Cuchara Torcida",
				"{C:green}1%{} - {C:spectral}Transformación",
              }
            },
            poke_artist = {
              name = "Artista",
              text = {
                "{V:1}#1#"
              }
            },
            pokeballs_group = {
              name = "Poké Balls",
              text = {
                "Crea un Pokémon al azar",
				"de cierta etapa",
              }
            },
            holding = {
                name = "Objeto equipado",
                text = {
                  "Este Pokémon viene con",
				  "una carta de {C:attention}#1#{}",
				  "{C:inactive}(Debe haber espacio){}"
                }
            },
            holding_an = {
                name = "Objeto equipado",
                text = {
                  "Este Pokémon viene con",
				  "una carta de {C:attention}#1#{}",
				  "{C:inactive}(Debe haber espacio){}"
                }
            },
            holding_other = {
                name = "Objeto equipado",
                text = {
                  "Este Pokémon viene con",
                  "una carta de {C:attention}#1#{}",
                  "{C:inactive}(Debe haber espacio){}"
                }
            },
            holding_joker = {
                name = "Comodín equipado",
                text = {
                  "Este comodín viene con",
                  "un {C:attention}#1#{}",
                  "{C:inactive,s:0.8}(Requiere una ranura de comodín vacía){}"
                }
            },
            multi_evolution = {
                name = "Multievolución",
                text = {
                  "Este Pokémon evoluciona",
                  "en {C:attention}2{} Pokémon separados",
                  "{C:inactive,s:0.8}(Requiere ranuras de comodín vacías){}"
                }
            },
            eeveelution = {
                name = "Evoluciones",
                text = {
                    "{C:attention}Piedra Agua{} - {X:water,C:white}Vaporeon{}","{C:attention}Piedra Trueno{} - {X:lightning,C:black}Jolteon{}","{C:attention}Piedra Fuego{} - {X:fire,C:white}Flareon{}","{C:attention}Piedra Solar{} - {X:psychic,C:white}Espeon{}","{C:attention}Piedra Lunar{} - {X:dark,C:white}Umbreon{}","{C:attention}Piedra Hoja{} - {X:grass,C:white}Leafeon{}","{C:attention}Piedra Hielo{} - {X:water,C:white}Glaceon{}","{C:attention}Piedra Día{} - {X:fairy,C:white}Sylveon{}"
                }
            },
            poke_egg_tip = {
              name = "Huevo misterioso",
              text = {
                "Se ve frío y solitario."
              }
            },
            poke_top_cards = {
              name = "Cartas siguientes",
              text = {
                "{C:attention}#1#{}",
				"{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "Drenado",
              text = {
                "Remueve el valor de venta de",
				"un comodín y se lo añade a sí",
				"mismo si tiene más de","{C:money}1 ${} de valor de venta"
              }
            },
            poke_drain_item = {
              name = "Drenado",
              text = {
                "Remueve el valor de",
				"venta de un comodín si",
				"tiene más de {C:money}1 ${}","de valor de venta"
              }
            },
            poke_volatile_left = {
              name = "Volátil a la izquierda",
              text = {
                "Su habilidad solo se activa",
				"cuando este es el comodín",
				"más a la izquierda",
				"{C:inactive}(Ignorando otros","{C:inactive}comodines {C:attention}Volátiles{C:inactive})"
              }
            },
            poke_volatile_right = {
              name = "Volátil a la derecha",
              text = {
                "Su habilidad solo se activa","cuando este es el comodín","más a la derecha","{C:inactive}(Ignorando otros","{C:inactive}comodines {C:attention}Volátiles{C:inactive})"
              }
            },
            sketch = {
              name = "Esquema",
              text = {
                "{s:0.9}Copia a un comodín hasta que es vendido,",
				"{s:0.9}destruido o copias otra habilidad",
				"{s:0.9}La copia aparece en una ventana adicional",
				"{s:0.9}y cuando haces clic derecho en Smeargle",
				"{s:0.9}Se restablece cuando copias uno nuevo"
              }
            },
            unlimited_energy_tooltip = {
              name = "Energía ilimitada",
              text = {
                "Puedes usar {C:pink}energías{} en comodines",
				"cuantas veces quieras"
              }
            },
            precise_energy_tooltip = {
                name = "Escalado preciso de energía",
                text = {
                    "{s:0.8}Usa {C:attention,s:0.8}decimales{} para todos los valores cuando se aplican los {s:0.8}aumentos{} por {C:pink,s:0.8}energías{}",
					"{s:0.8}Con esta opción {C:attention,s:0.8}apagada{}{s:0.8} lo siguiente ocurrirá para el aumento:{}",
					"{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}multi - Usa decimales",
					"{C:attenion}2. {s:0.8}+ {C:mult,s:0.8}multi{}{s:0.8} y {C:chips,s:0.8}fichas{}{s:0.8} - Se aproxima al número entero más cercano",
					"{C:attenion}3. {s:0.8}{C:mult,s:0.8}Aumento de multi{}{s:0.8} y {C:chips,s:0.8}Aumento de fichas{}{s:0.8} - El componente decimal se enseña",
					"{s:0.8}como un porcentaje, usado para aplicar el aumento al {C:mult,s:0.8}multi{}{s:0.8} y {C:chips,s:0.8}fichas{} bases",
					"{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - El componente decimal se enseña como un porcentaje,",
					"{s:0.8}usado como la probabilidad de extra {C:money,s:0.8}${}{s:0.8} que ganas{}",
					"{C:inactive,s:0.8}(Los comodines que no son Pokémon siempre usarán escalado preciso){}"
                }
            },
            discovery_tooltip = {
              name = "Contenido por descubrir",
              text = {
                "Todo el contenido de Pokermon no está descubierto",
				"por defecto. Desactivar esta configuración hará que",
				"descubras todo el contenido del mod",
				"{C:red}Descubrir todo el contenido no puede deshacerse{}"
              }
            }, 
            pokemononly_tooltip = {
              name = "Solo Pokémons",
              text = {
                "Aparecerán solo los comodines {C:attention}Pokémon{}",
              }
            },
            gen1_tooltip = {
              name = "Generación 1 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la primera generación"
              }
            },
            gen2_tooltip = {
              name = "Generación 2 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la segunda generación"
              }
            },
            gen3_tooltip = {
              name = "Generación 3 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la tercera generación"
              }
            },
            gen4_tooltip = {
              name = "Generación 4 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la cuarta generación"
              }
            },
            gen5_tooltip = {
              name = "Generación 5 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la quinta generación"
              }
            },
            gen6_tooltip = {
              name = "Generación 6 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la sexta generación"
              }
            },
            gen7_tooltip = {
              name = "Generación 7 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la séptima generación"
              }
            },
            gen8_tooltip = {
              name = "Generación 8 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la octava generación"
              }
            },
            gen9_tooltip = {
              name = "Generación 9 permitida",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","de la novena generación"
              }
            },
            hazards_on_tooltip = {
              name = "Cartas trampa permitidas",
              text = {
                "Aparecerán comodines {C:attention}Pokémon{}","que agreguen {C:purple}cartas trampa{}"
              }
            },
            shinyplayingcard_tooltip = {
              name = "Cartas de juego variocolor",
              text = {
                "Permite que las {C:attention}cartas de juego{}","puedan tener la edición {C:dark_edition}variocolor{}"
              }
            },
			detailed_tooltips_tooltip = {
              name = "Información detallada",
              text = {
                "Se enseñará toda la información de comodines Pokémon",
                "Desactivar esto removerá la mayoría de ventanas",
                "adicionales de información de ellos",
              }
            },
			previous_evo_stickers_tooltip = {
              name = "Stickers para las preevoluciones",
              text = {
                "Las preevoluciones de los",
                "Pokémon con los que ganas también",
                "cuentan que ganaron en la partida",
				"{C:inactive}(Obtienen el sticker del pozo)"
              }
            },
			order_jokers_tooltip = {
              name = "Ordenar los Pokémon por N° de Pokédex",
              text = {
                "Los Pokémon aparecen",
                "en la Colección en el",
                "orden de la Pokédex",
              }
            },
            stake_skins_tooltip = {
              name = "Skins de pozos personalizados",
              text = {
                "Usa los sprites",
                "personalizados para los pozos",
                "y los stickers de pozos",
              }
            },
            pokemon_only_collection_tooltip = {
              name = "Solo Pokémons en la Colección",
              text = {
                "Solo los Pokémons",
                "aparecerán en",
                "la Colección",
              }
            },
            legacycontent_tooltip = {
              name = "Contenido antiguo",
              text = {
                "Habilita contenido que ha","sido removido"
              }
            },
            jokecontent_tooltip = {
              name = "Contenido de broma",
              text = {
                "Habilita contenido que se","creó de broma"
              }
            },
            splashcard_tooltip = {
              name = "Carta de Pokémon al inicio",
              text = {
                "Reemplaza la carta cuando entras al juego","con un Pokémon al azar",
              }
            },
            title_tooltip = {
              name = "Pantalla de título Pokémon",
              text = {
                "Reemplaza la pantalla de título normal","con una versión de Pokermon",
              }
            },
            altart_tooltip = {
              name = "Arte alternativo",
              text = {
                "Usa sprites alternativos","para ciertos Pokémon",
              }
            },
            animation_tooltip = {
              name = "Habilitar animaciones",
              text = {
                "Habilita sprites animados","para ciertos comodines Pokémon",
              }
            },
            allowpokeballs_tooltip = {
              name = "Permitir Poké Balls",
              text = {
                "Permite que los {C:item}objetos{} de Poké Balls aparezcan",
              }
            },
            pokemaster_tooltip = {
              name = "Modo Maestro Pokémon",
              text = {
                "Se habilitó Solo Pokémon","Pozos adicionales están disponibles"
              }
            },
            designed_by = {
              name = "Diseñado por",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "Reusable",
              text = {
                "No es consumido","cuando se usa","{C:inactive,s:0.8}(Es excluído por","{C:attention,s:0.8}Cuchara Torcida{C:inactive})"
              }
            },
            sylveon_tag_pool = {
              name = "Lista de etiquetas",
              text = {
                "{C:attention}#1#","{C:tarot}#2#","{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "Lista de etiquetas",
              text = {
                "{C:money}#1#","{C:money}#2#","{C:money}#3#","{C:money}#4#","{C:money}#5#",
              }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Solo puede obtenerse","mediante {C:attention}Evolución{}","o ciertas {C:attention}Poké Balls{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Sello rosado",
                text = {
                    "Crea una carta de {C:pink}energía{}",
					"del {C:attention}tipo{} de un comodín",
					"que tienes si anota en la",
					"{C:attention}primera mano{} de la ronda",
					"{C:inactive}(Debe haber espacio){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Sello plateado",
                text = {
                  "Crea una carta de {C:item}objeto{}",
				  "y es {C:attention}descartada{} si está en",
				  "{C:attention}en tu mano{} cuando anotas fichas"
                }
            },
            --[[
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
                    "{X:lightning,C:white}Rayo{}"
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
                    "{X:dark,C:white}Oscuro{}"
                } 
            },
            metal_sticker = {
                name = "Tipo",
                text = {
                    "{X:metal,C:white}Metal{}"
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
            --]]
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "No se descubrió",
                text = {
                    "Compra o usa","esta carta","en una partida sin códigos","para saber lo que hace",
                }
            },
            undiscovered_item = {
                name = "No se descubrió",
                text = {
                    "Compra o usa","esta carta","en una partida sin códigos","para saber lo que hace",
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Paquete Pokémon",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Paquete Pokémon",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Paquete Pokémon jumbo",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Paquete Pokémon mega",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Paquete Pokémon",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Paquete Pokémon",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Paquete Pokémon jumbo",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Paquete Pokémon mega",
                text = {
                    "Elige {C:attention}#1#{} de hasta","{C:attention}#2#{} cartas de {C:item}objeto{}"," y {C:attention}#3#{} cartas de {C:pink}energía{}",
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "Paquete de deseos",
                text = {
                    "{C:dark_edition}¡Haz un deseo!{}",
                },
            },
			p_poke_pokepack_starter_pack = {
                name = "Paquete inicial",
                text = {
                    "Elige {C:attention}#1# Pokémon inicial{}",
                    "de entre {C:attention}#2#{} cartas"
                },
            },
            poke_hazards = {
                name = "Trampas",
                text = {
                    "Cuando se selecciona la {C:attention}ciega{},",
					"{C:attention}#1#{} cartas sin mejora en tu baraja",
                    "se vuelven {C:attention}cartas trampa{}",
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
            c_poke_goodasgold = "Tan bueno como el oro",
            c_poke_parenthood = "Paternidad",
            c_poke_littlecup = "Little Cup",
            c_poke_hammertime = "Hammertime",
            c_poke_lonesome = "Solitario",
			c_poke_randomizer = "Randomizado",
            c_poke_delibird_delimma = "Dilema de Delibird",
            c_poke_safety_first = "Seguridad primero",
        },
        dictionary = {
            k_energy = "Energía",
            k_item = "Objeto",
            k_poke_pocket_pack = "Paquete Pokémon",
            k_poke_wish_pack = "Paquete de deseos",
			k_poke_starter_pack = "Paquete inicial",
			k_poke_gives = "Otorga",
            k_poke_ignores = "Ignora",
            k_poke_limit = "Límite",
            k_poke_pp = "Más PP",
			
            k_poke_baby = "Bebé",
            k_poke_safari = "Safari",
            k_poke_mega = "Mega",

            b_save = "GUARDAR",
            b_energy_cards = "Cartas de energía",
            b_item_cards = "Cartas de objeto",
            
            --Mod Menu stuff
            poke_settings_header_required = "Necesitas Reiniciar:",
            poke_settings_header_norequired = "No Necesitas Reiniciar:",
            poke_settings_pokemon_only = "¿Solo Pokémons?",
            poke_settings_unlimited_energy = "¿Energía ilimitada?",
            poke_settings_shiny_playing_cards = "¿Variocolor en las cartas de juego?",
            poke_settings_stake_skins = "¿Usar skins personalizadas de pozos?",
			poke_settings_pokemon_detailed_tooltips = "¿Información detallada?",
            poke_settings_previous_evo_stickers = "¿Stickers para las preevoluciones?",
			poke_settings_order_jokers = "¿Ordenar los Pokémon por N° de Pokédex?",
            poke_settings_pokemon_only_collection = "¿Solo Pokémons en la Colección?",
            poke_settings_jokers_only = "¿Solo comodines?",
            poke_settings_no_evolutions = "¿No evoluciones?",
            poke_settings_pokeballs = "¿Permitir Poké Balls?",
            poke_settings_pokedex_number = "¿Números de la Pokédex?",
            poke_settings_pokemon_splash = "¿Carta de Pokémon cuando inicias?",
            poke_settings_pokemon_title = "¿Pantalla de título de Pokermon?",
            poke_settings_pokemon_gen_one = "¿Permitir la generación 1?",
            poke_settings_pokemon_gen_two = "¿Permitir la generación 2?",
            poke_settings_pokemon_gen_three = "¿Permitir la generación 3?",
            poke_settings_pokemon_gen_four = "¿Permitir la generación 4?",
            poke_settings_pokemon_gen_five = "¿Permitir la generación 5?",
            poke_settings_pokemon_gen_six = "¿Permitir la generación 6?",
            poke_settings_pokemon_gen_seven = "¿Permitir la generación 7?",
            poke_settings_pokemon_gen_eight = "¿Permitir la generación 8?",
            poke_settings_pokemon_gen_nine = "¿Permitir la generación 9?",
            poke_settings_pokemon_hazards_on = "¿Permitir cartas trampa?",
            poke_settings_pokemon_precise_energy = "¿Usar el escalado preciso de energía?",
            poke_settings_pokemon_discovery = "¿! Descubrimientos?",
            poke_settings_pokemon_altart = "¿Arte alternativo?",
            poke_settings_pokemon_aprilfools = "¿Contenido de broma?",
            poke_settings_pokemon_legacy = "¿Contenido antiguo?",
            poke_settings_enable_animations = "¿Habilitar animaciones?",
            poke_settings_pokemon_master = "¿Modo maestro Pokémon?",
			poke_settings_pokemon_spritesheet = "Sprites por defecto (Restablece los cambios individuales)",
            poke_settings_pokemon_sprites_right_click_to_change = "Clic derecho para cambiar",
            poke_settings_pokemon_spritesheet_classic = "Clásico",
            poke_settings_pokemon_spritesheet_basicseries = "Serie Básica",
            poke_settings_pokemon_spritesheet_seriesa = "Serie A",
            poke_settings_pokemon_spritesheet_seriesb = "Serie B",
			
            poke_credits_actualcredits = "Créditos",
            poke_credits_thanks = "Gracias a",
            poke_credits_lead = "Desarrollador principal: ",
            poke_credits_graphics = "Diseño gráfico: ",
            poke_credits_quality_assurance_main = "Control de calidad: ",
            poke_credits_developer = "Desarrolladores: ",
            poke_credits_designer = "Asistentes de diseño: ",
            poke_credits_community_manager = "Community managers: ",
            poke_credits_special_thanks = "Agradecimientos especiales a: ",
            poke_credits_localization = "Localización: ",
            poke_credits_sound = "Ingeniero de audio: ",
            poke_credits_artist = "Artista: ",
            poke_credits_designer = "Diseñador: ",

            poke_artist_credits_art_credits = "Créditos del arte",
            poke_artist_credits_artists = "Artistas:",
            poke_artist_credits_basic_sprites_by = "Sprites básicos de los Pokémon por:",
            poke_artist_credits_sprite_resource = "\'the 64x64 Pokémon sprite resource\'",
            poke_artist_credits_artist_info = "Info. del artista",
            poke_artist_credits_art_collection = "Colección de arte",
            poke_artist_credits_toggle_shiny = "Clic derecho para cambiar a variocolor",
            poke_artist_credits_cycle_draw_layers = "Doble clic para cambiar las capas",
            poke_artist_credits_toggle_center_layer = "Doble clic para ocultar el fondo",
            poke_artist_credits_toggle_soul_layer = "Doble clic para ocultar la primera capa",

            poke_artist_credits_sprite_resource_content = {
                "Los sprites del estilo de arte básico usa sprites de",
                "\'the 64x64 Pokémon sprites resource\', así como sus sucesores.",
                "Si bien el plan es usar la Serie A como el nuevo estándar,",
                "agradecemos a todos los colaboradores de estos recursos",
                "por la oportunidad de usar estos sprites.",
                "Puedes encontrar los hilos de Pokecommunity para estos recursos",
                "haciendo clic en sus respectivos botones:"
            },

            poke_plus_pokeitem = "+1 Objeto",
            poke_plus_energy = "+1 Energía",
            poke_plus_consumable = "+1 Consumible",
            poke_plus_shop = "+1 Carta en la tienda",
            poke_destroyed_ex = "¡Destruido!",
            poke_evolve_success = "¡Evolucionó!",
            poke_transform_success = "¡Se transformó!",
            poke_evolve_level = "¡Subió de nivel!",
            poke_tera = "Tera",
            poke_tera_ex = "¡Tera!",
            poke_metal_ex = "¡Metal!",
            poke_dragon_ex = "¡Dragón!",
            poke_energized_ex = "¡Energizado!",
            poke_round_plus_ex = "¡Ronda completada!",
            poke_unlimited_energy = "ilimitados",
            poke_reroll_plural = "Cambios",
            poke_reroll_singular = "Cambio",
            poke_suit = "palo",
            poke_saved_by = "Salvado por",
            poke_and = "y", -- for displaying lists
            poke_hazards_in_deck = "Trampas en Baraja",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone y Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Poké Ball",
            greatball_variable = "Super Ball",
            goodrod_variable = "Caña Buena",
            pinkseal_variable = "Sello Rosado",
            silverseal_variable = "Sello Plateado",
            twisted_spoon_variable = "Cuchara Torcida",
            double_rainbow_energy_variable = "Doble Energía Arcoíris",
            megastone_variable = "Megapiedra",

            --From Gastly Line
            poke_lick_ex = "¡Lengüetazo!",
            poke_lick = "Lengüetazo",
            --From Kingler
            poke_surf_ex = "¡Surf!",
            --From Voltorb Line
            poke_explosion_ex = "¡BOOM!",
            poke_boo_ex = "¡BUU!",
            --From Exeggutor
            poke_solar_ex = "¡Solar!",
            poke_solar = "Solar",
            --From Pinsir
            poke_pinsir_pin = "¡Pinzado!",
            poke_pinsir_remove_pin = "¡Despinzado!",
            --From Tangela line
            poke_tangela_bonus = "¡Todas!",
            --Golbat And Crobat thingy
            poke_screech_ex = "¡Chirrido!",
            --Hoppip Line
            poke_hop_ex = "¡Hop!",
            poke_skip_ex = "¡Skip!",
            poke_jump_ex = "¡Jump!",
            --From Bellossom
            poke_petal_dance_ex = "¡Pétalo!",
            poke_petal_dance = "Pétalo",
            --From Scizor
            poke_x_scissor_ex = "¡Tijera X!",
            poke_x_scissor = "Tijera X",
            --From Kingdra
            poke_twister_ex = "¡Ciclón!",
            --From Mime Jr.
            poke_mime_ex = "¡Mímica!",
            --From Magmortar
            poke_fire_blast_ex = "¡Llamarada!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "¡Trueno!",
            poke_gift_ex = "¡Regalo!",
            poke_drill_ex = "¡Taladradora!",
            poke_faint_ex = "¡Debilitado!",
            poke_reveal_ex = "¡Revelado!",
            poke_nido_ex = "¡Nido!",
            poke_disguise_intact = "¡Disfraz intacto! ¡Previene la muerte!",
            poke_disguise_broken = "¡Disfraz roto! ¡No previene la muerte!",
            poke_dig_ex = "¡Excavar!",
            poke_blazekick_ex = "¡Patada ígnea!",
            poke_darts_ex = "¡Flechazo!",
            poke_none = "Ninguna",
            poke_dawn_info1 = " (La siguiente mano jugada\r\nestablece la mano de póker)",
            poke_dawn_info2 = "(¡Mano de póker\r\n  establecida!)",
            poke_make_it_rain = "¡Fiebre dorada!",
            poke_val_down = "¡Disminución de valor!",
            poke_powder_ex = "¡Nieve polvo!",
            poke_future_sight = "¡Premonición!",
            poke_smell_ya = "¡Me piro, vampiro!",
            poke_wowthree = "¡Wow! ¡Tres!",
            poke_illusion = "¿...?",
            poke_crack_ex = "¡CRACK!",
            poke_shake_ex = "¡Sacudida!",
            poke_closed_ex = "¡Cerrado!",
            poke_reload_ex = "¡Recarga!",
            poke_shadow_tag_ex = "¡Sombra trampa!",
            poke_flees_ex = "¡Huyó!",
            poke_hidden_power_ex = "¡Poder oculto!",
            poke_nasty_plot_ex = "¡Maquinación!",
            poke_iron_tail_ex = "¡Cola férrea!",
            poke_autotomize_ex = "¡Aligerar!",
			poke_highjumpkick_ex = "¡Patada salto alta!",
            poke_water_gun_ex = "¡Pistola agua!",
            poke_sky_attack_ex = "¡Ataque celestial!",
            poke_bug_buzz_ex = "¡Zumbido!",
            poke_sticky_web_ex = "¡Red pegajosa!",
            poke_head_smash_ex = "¡Topetazo!",
            poke_teeter_dance = "¡Danza del caos!",
			
            poke_grass_badge = "Planta",
            poke_fire_badge = "Fuego",
            poke_water_badge = "Agua",
            poke_lightning_badge = "Rayo",
            poke_psychic_badge = "Psíquico",
            poke_fighting_badge = "Lucha",
            poke_colorless_badge = "Incoloro",
            poke_dark_badge = "Oscuro",
            poke_metal_badge = "Metal",
            poke_fairy_badge = "Hada",
            poke_dragon_badge = "Dragón",
            poke_earth_badge = "Tierra",
            poke_bird_badge = "¿Pájaro?",
            
            poke_m_bonus = "Adicional",
            poke_m_mult = "Multi",
            poke_m_wild = "Versátil",
            poke_m_glass = "de Vidrio",
            poke_m_steel = "de Acero",
            poke_m_stone = "de Piedra",
            poke_m_gold = "de Oro",
            poke_m_lucky = "de la Suerte",
            poke_m_poke_seed = "Semilla"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Sello rosado",
            poke_silver_seal = "Sello plateado",

            poke_shiny = "Variocolor",

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
        quips = {
          poke_lose_quip1 = {"Quizás los concursos Pokémon", "son más tu estilo...",},
          poke_lose_quip2 = {"¡Pareces un Magikarp", "fuera del agua!",},
          poke_lose_quip3 = {"¿Te olvidaste", "de estudiar la", "tabla de tipos?",},
          poke_lose_quip4 = {"Oh no, ¡hemos", "sido vencidos otra vez!",},
          poke_lose_quip5 = {"¡Parece que esa", "ciega fue súper efectiva!",},
          poke_lose_quip6 = {"Esta partida se convertió en ceniza...",},
          poke_lose_quip7 = {"¡Es más importante", "dominar las cartas", "que sostienes que", "quejarte de las", "que no recibiste!",},
          poke_lose_quip8 = {"¡Mejor date prisa", "a un Centro Pokémon!",},
          poke_lose_quip9 = {"¿Necesitas un Revivir Máximo?",},
          poke_lose_quip10 = {"¡Me llevo la mitad","de tus Pokécuartos!",},
          poke_win_quip1 = {"¡Un verdadero Maestro Pokermon!",},
          poke_win_quip2 = {"¡Los buenos entrenadores son", "capaces de ganar con", "sus favoritos!",},
          poke_win_quip3 = {"¿Qué sigue, entrenador?",},
          poke_win_quip4 = {"¡No me gustaría","enfrentarme a","ti en la arena!",},
          poke_win_quip5 = {"Con tu suerte,", "¡nuestra nueva parada", "debería de ser", "el Casino Pokémon!",},
          poke_win_quip6 = {"¡Tus habilidades han evolucionado!",},
          poke_win_quip7 = {"¡Bienvenido al", "Salón de la Fama!",},
          poke_win_quip8 = {"¡Pero qué","campeón eres!",},
          poke_win_quip9 = {"¡Una hazaña","verdaderamente Legendaria!",},
          poke_win_quip10 = {"¡Esa partida fue Mítica!",},
        },
        tutorial = {
          poke_intro_1 = {
          "¡Hola, soy el {C:attention}profesor Jimbo{}!",
		  "¡Bienvenido al mundo de {C:attention}Pokermon{}!",
          },
        },
        v_dictionary = {
            poke_discards = "+#1# Descartes",
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} ranura de comodín cuando la ciega jefe es derrotada {C:inactive}(hasta 5)"},
           ch_c_poke_nuzlocke = {"La primera tienda en cada apuesta contiene un {C:attention}Paquete de Bufón"},
		   ch_c_apply_randomizer = {"Los comodines Pokémon evolucionan en otros Pokémon aleatorios"},
		   ch_c_no_energy = {"Las cartas de energía no aparecerán en la {C:attention}tienda"},
        },
    }
}
--Fioreboba bleehh
