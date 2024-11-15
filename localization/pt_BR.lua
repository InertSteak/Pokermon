-- Welcome to pt_BR.lua

--Progress report:
--Update this as you go! Or don't, I know Cryptid doesn't (lmfao)

--[[
Decks: Yes
Jokers: Yes
Settings/Mod: Yes
Items: Yes
Energy: Yes
Deck Sleeves (requires Decksleeves Mod): Yes
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
                name = "Baralho de Treinador",
                text = {
                    "Comece a run com o",
                    "{C:tarot,T:v_poke_goodrod}#1#{} vale",
                    "e a carta de {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_obituarydeck = {
                name = "Baralho de Obituário",
                text = {
                    "Todos as cartas têm um {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Deck Luminoso",
                text = {
                    "Todos os Coringas são criados",
                    "com adesivos de {C:pink}Tipo{} aleatórios",
                    "e tem {C:attention}+1{} {C:pink}Energia{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Câmara Chartreuse",
                text = {
                    "Tipos aleatórios são debuffados",
                    "a cada mão",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Pokebola",
                text = {
                    "Cria uma carta",
                    "{C:attention}Coringa Básica{} aleatória",
                    "{C:inactive}(Deve ter espaço)"
                },
            },
            c_poke_greatball = {
                name = "Grande Bola",
                text = {
                    "Cria uma carta",
                    "{C:attention}Coringa Estágio 1{} aleatória",
                    "{C:inactive}(Deve ter espaço)"
                },
            },
            c_poke_moonstone = {
                name = "Pedra da Lua",
                text = {
                    "Cria uma carta {C:attention}A Lua{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_sunstone = {
                name = "Pedra do Sol",
                text = {
                    "Cria uma carta {C:attention}O Sol{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_waterstone = {
                name = "Pedra da Àgua",
                text = {
                    "Cria uma carta {C:attention}O Hierofante{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_thunderstone = {
                name = "Pedra do Trovão",
                text = {
                    "Cria uma carta {C:attention}O Demônio{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_firestone = {
                name = "Pedra do Fogo",
                text = {
                    "Cria uma carta {C:attention}Os Amantes{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_leafstone = {
                name = "Pedra da Folha",
                text = {
                    "Cria uma carta {C:attention}O Mundo{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_linkcable = {
                name = "Cabo de Ligação",
                text = {
                    "Cria uma carta {C:attention}Morte{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_leftovers = {
                name = "Sobras",
                text = {
                    "Cria uma carta {C:attention}O Enforcado{}",
                    "{C:red}Cartão retido{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
            c_poke_leek = {
                name = "Leek",
                text = {
                    "Cria uma carta {C:attention}A Roda da Fortuna{}",
                    "{C:red}Cartão retido{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
            c_poke_thickclub = {
                name = "Clube grosso",
                text = {
                    "Cria uma carta {C:attention}Força{}",
                    "{C:red}Cartão retido{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
            c_poke_teraorb = {
                name = "Orbe Tera",
                text = {
                    "Aplica um",
                    "{C:pink}Tipo{} aleatório",
                    "no Coringa mais à esquerda", 
                    "e dá {C:attention}+1{} {C:pink}Energia{}"
                },
            },
            c_poke_metalcoat = {
                name = "Revestimento de Metal",
                text = {
                    "Aplica um adesivo {C:metal}Aço{}",
                    "no Coringa mais à esquerda",
                    "Cria uma carta {C:attention}A Carruagem{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_dragonscale = {
                name = "Escama de Dragão",
                text = {
                    "Aplica um adesivo {C:dragon}Dragão{}",
                    "no Coringa mais à esquerda",
                    "Cria uma carta {C:attention}O Imperador{}",
                    "{C:inactive}(Deve ter espaço){}"
                },
            },
            c_poke_kingsrock = {
                name = "Rocha do Rei",
                text = {
                    "Transforma {C:attention}#1#{} carta",
                    "selecionada em um {C:attention}Rei{}",
                    "{C:red}Carta de Evolução{}",
                },
            },
            c_poke_upgrade = {
                name = "Upgrade",
                text = {
                    "Concede a {C:attention}#1#{} cartas selecionadas",
                    "um {C:attention}Aprimoramento{} aleatório",
                    "{C:red}Carta de Evolução{}",
                }
            },
            c_poke_icestone = {
                name = "Pedra do Gelo",
                text = {
                    "Cria uma carta {C:attention}Justiça{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
            c_poke_shinystone = {
                name = "Pedra Brilhante",
                text = {
                    "Cria uma carta {C:attention}A Estrela{}",
                    "{C:red}Carta de Evolução{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Energia da Planta",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Planta{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_fire_energy = {
                name = "Energia do Fogo",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Fogo{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_water_energy = {
                name = "Energia da Àgua",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Àgua{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energia do Trovão",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Trovão{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energia Psíquica",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Psíquico{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energia do Lutador",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Lutador{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energia Incolor",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa mais à esquerda, se possível",
                    "Metade da eficácia com",
                    "Coringas não {C:attention}Incolores{}",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energia Sombria",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Sombrio{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_metal_energy = {
                name = "Energia de Aço",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Aço{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energia da Fada",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Fada{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Energia do Dragão",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Dragão{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
                },
            },
            c_poke_earth_energy = {
                name = "Energia da Terra",
                text = {
                    "Aumenta a maioria dos valores de {C:attention}pontuação{} e {C:money}${}",
                    "do Coringa do tipo {C:attention}Terra{} mais à esquerda",
                    "permanentemente, se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)",
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
                    "{C:attention}+1{} vaga para Pacote de Reforço",
                    "disponível na loja",
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
                    "{C:attention}+#4#{} tamanho da mão",
                    "Ganhe {C:money}$#1#{} para cada {C:attention}#3#{}",
                    "segurado na mão, muda",
                    "a cada rodada",
                    "{C:inactive}(Atualmente {C:money}$#2#{C:inactive} ganho)",
                    "{C:inactive}(Evolui em {C:money}$16{}{C:inactive} ganho)"
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} tamanho da mão",
                    "Ganhe {C:money}$#1#{} ou {C:money}$#5#{} para cada {C:attention}#4#{}",
                    "segurado na mão, muda",
                    "a cada rodada",
                    "{C:inactive}(Atualmente {C:money}$#2#{C:inactive} ganho)",
                    "{C:inactive}(Evolui em {C:money}$16{}{C:inactive} ganho)"
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} tamanho da mão",
                    "Ganhe {C:money}$#1#{} para cada {C:attention}#4#{}",
                    "segurado na mão, muda",
                    "a cada rodada",
                    "{C:inactive}(Atualmente {C:money}$#2#{C:inactive} ganho)",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} descarte",
                    "Ganhe {C:mult}+#2#{} Mult por mão jogada",
                    "quando ao {C:attention}#3#{} descarte restante",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolui em {C:mult}+16{}{C:inactive} Mult)"
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} descarte",
      "Ganhe {C:mult}+#2#{} Mult por mão jogada",
      "quando ao {C:attention}#3#{} descarte restante",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui em {C:mult}+36{}{C:inactive} Mult)"
                } 
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} descarte, {C:mult}+#1#{} Mult",
      "{X:mult,C:white} X#2# {} Mult quando ao {C:attention}#3#{} descarte restante"
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#3#{} mão",
      "Ganhe {C:chips}+#2#{} Fichas para cada mão",
      "restante no final da rodada",
      "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
      "{C:inactive}(Evolui em {C:chips}+16{} {C:inactive} Fichas)"
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} mão",
      "Ganhe {C:chips}+#2#{} Fichas para cada mão",
      "restante no final da rodada",
      "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
      "{C:inactive}(Evolui em {C:chips}+36{} {C:inactive} Fichas)"
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} mão, {C:chips}+#1#{} Fichas",
      "{C:chips}+#2#{} Fichas para cada",
      "mão restante"
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_butterfree = {
                name = "Butterfree",
                text = {
                    "{C:mult}+#1#{} Mult"
                } 
            },
            j_poke_weedle = {
                name = "Weedle",
                text = {
                    "{C:chips}+#1#{} Fichas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Fichas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Fichas"
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "Todas cartas de {C:planet}Planeta{} e",
      "{C:planet}Celestial Packs{}",
      "custa na loja -{C:money}$2{}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Todas cartas de {C:planet}Planeta{} e",
      "{C:planet}Celestial Packs{}",
      "custa na loja -{C:money}$3{}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeotto",
                text = {
                    "Todas cartas de {C:planet}Planeta{} e",
      "{C:planet}Celestial Packs{} na",
      "loja são {C:attention}grátis{}, usando",
      "cartas de {C:planet}Planeta{} você ganha {C:money}$#1#{}"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Reativa {C:attention}primeira{} carta",
      "jogada usada na pontuação",
      "{C:attention}#1#{} veze adicional",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Reativa {C:attention}primeira{} e {C:attention}segunda{}",
      "carta jogada usada na pontuação",
      "{C:attention}#1#{} vez adicional"
                } 
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Add {C:attention}dobro{} da",
      "mão de pôquer de nível",
      "mais alto ao Mult",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_fearow = {
                name = "Spearow",
                text = {
                    "Add {C:attention}quadruplo{} da",
      "mão de pôquer de nível",
      "mais alto ao Mult"
                } 
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} Mult se",
      "a mão jogada contém",
      "{C:attention}Sequência{}",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                   "{C:mult}+#1#{} Mult se a mão jogada",
      "contém {C:attention}Sequência{}",
      "Crie uma carta de tarô se",
      "também contém um {C:attention}Ás{}."
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Ganhe {C:money}$#1#{} no",
      "fim da rodada para",
      "cada Joker que você tem",
      "{C:inactive}(Evolui com a carta {C:attention}Pedra do Trovão{}{C:inactive})"
                } 
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Aplica {C:dark_edition}Negativo{} a si mesmo",
                    "no final da rodada se você",
                    "tiver pelo menos {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Aumenta por Raichu que você tem){}",
                    "Ganha {C:money}$#1#{} no final da rodadaf",
                    "para cada Coringa que você tem",
                    "{C:inactive}(Max de {C:money}$10{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "Quando uma carta de {C:attention}Vidro{} é",
      "destruida, add uma cópia de {C:attention}Pedra{} ao",
      "deck e compre para {C:attention}mão{}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "Quando uma carta de {C:attention}Vidro{} é",
      "destruida, add uma cópia de {C:attention}Aço{}",
      "ao deck e compre para {C:attention}mão{}"
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Cada {C:attention}Dama{}",
      "segurada na mão",
      "dá {C:chips}+#1#{} Fichas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Cada {C:attention}Dama{}",
      "segurada na mão",
      "dá {C:chips}+#1#{} Fichas",
      "{C:inactive}(Evolui com a carta {C:attention}Pedra da Lua{}{C:inactive})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} tamanho da mão",
      "Cada {C:attention}Dama{}",
      "segurada na mão",
      "dá {C:chips}+#1#{} Fichas"
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Cada {C:attention}Rei{}",
      "segurado na mão",
      "dá {C:mult}+#1#{} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Cada {C:attention}Rei{}",
      "segurado na mão",
      "dá {C:mult}+#1#{} Mult",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra da Lua{}{C:inactive})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} tamanho da mão",
      "Cada {C:attention}Rei{}",
      "segurado na mão",
      "dá {C:mult}+#1#{} Mult"
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Cartas jogadas com",
      "naipe de {C:clubs}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra da Lua{}{C:inactive})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Cartas jogadas com",
      "naipe de {C:clubs}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# em #2#{} chance para cada",
      "carta {C:attention}9{} quando pontuada",
      "criar uma carta {C:spectral}Médium{}",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra de fogo{}{C:inactive})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:green}#1# em #2#{} chance para cada",
      "carta {C:attention}9{} quando pontuada",
      "criar uma carta {C:spectral}Médium{}",
      "{C:inactive}(Deve ter espaço)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Cartas jogadas com",
      "naipe de {C:spades}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra da lua{}{C:inactive})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Cartas jogadas com",
      "naipe de {C:spades}#3#{} dão",
      "{C:mult}+#1#{} Mult e",
      "{C:chips}+#2#{} Fichas quando pontuadas"
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "{C:mult}+#1#{} Mult para cada carta aprimorada",
      "em seu deck completo",
      "{C:inactive}(Atualmente {C:mult}+#2#{}{C:inactive} Mult, {C:attention}#4#{}{C:inactive} Aprimoramentos)",
      "{C:inactive}(Evolui em {C:mult}#3#{C:inactive} Aprimoramentos)"
                } 
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Remover aprimoramentos de cartas pontuadas",
      "Ganhe {C:mult}+#2#{} para {C:attention}Mult{} e {C:attention}Wild{} cartas",
      "{C:chips}+#4#{} para cartas {C:attention}Bônus{} e {C:attention}Pedra{},",
      "{X:red,C:white}X#6#{} para cartas {C:attention}Aço{} e {C:attention}Vidro{},",
      "{C:money}$#8#{} para cartas {C:attention}Ouro{} e {C:attention}Sorte{}",
      "{C:inactive}(Evolui em {C:attention}#9#{}{C:inactive}/20 Aprimoramentos removidos)",
      "{C:inactive}(Atualmente {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} fim da rodada)"
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Cartas jogadas com classificação {C:attention}Ímpar{}",
      "dão {C:mult}+#1#{} ou {C:mult}+#2#{} Mult quando pontuadas",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Cartas jogadas com classificação {C:attention}Ímpar{}",
      "dão {C:mult}+#1#{} ou {C:mult}+#2#{} Mult quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra da Folha ou Sol{}{C:inactive})"
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Cartas jogadas com classificação {C:attention}Ímpar{}",
      "dão {C:mult}+#2#{} Mult ou",
      "{X:mult,C:white} X#1# {} Mult quando pontuadas"
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult por mão jogada",
      "que contém {C:attention}Dois pares{}", 
      "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult)",
      "{C:inactive}(Evolui em {C:mult}+8{}{C:inactive} Mult)"
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Mult por mão jogada",
      "que contém {C:attention}Dois pares{}",
      "{C:mult}-#3#{} Mult por mão",
      "jogada que não",
      "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult)"
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Adiciona {C:attention}#1#{} a {C:attention}todas",
      "{C:green,E:1,S:1.1}probabilidades",
      "{C:inactive}(exemplo: {C:green}1 em 6{C:inactive} vira {C:green}2 em 6{C:inactive})",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Adiciona {C:attention}#1#{} a {C:attention}todas",
      "{C:green,E:1,S:1.1}probabilidades",
      "{C:inactive}(exemplo: {C:green}1 em 6{C:inactive} vira {C:green}4 em 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "Quando você recebe isso,",
      "cria uma carta {C:attention}Venus{}",
      "{C:inactive}(Deve ter espaço){}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{X:red,C:white} X#1# {} Mult para cada",
      "nível da {C:attention}Trinca{},",
      "{C:inactive}(Atualmente {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Ganha {C:money}$#1#{} no",
      "final da rodada",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Ganha {C:money}${} no final do",
      "round igual ao {C:attention}dobro{} do", 
      "valor de venda do {C:attention}Joker{} mais à esquerda",
      "{C:inactive}(Exceto ele mesmo){}",
      "{C:inactive}(Atualmente {C:money}$#1#{C:inactive}, Máx. de {C:money}$15{C:inactive})"
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Se a mão jogada for",
      "uma única carta de {C:attention}figura{}, ganhe {C:money}$#1#{}",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Se a mão jogada for uma única carta",
      "de {C:attention}figura{}, ganhe {C:money}$#1#{} e se",
      "torna {C:attention}ouro{} quando pontuada"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Cada {C:attention}2{},",
      "{C:attention}3{}, {C:attention}5{} jogado dá",
      "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas",
      "quando pontuadas",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Cada {C:attention}2{},",
      "{C:attention}3{}, {C:attention}5{} jogado dá",
      "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas",
      "quando pontuadas",
      "{C:inactive}(Evolui após o pontuar {C:attention}#3#{}{C:inactive}/25 vezes){}"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Mult se a mão",
      "jogada contiver um {C:attention}Flush{}",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra de fogo{}{C:inactive})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} Mult se a mão",
      "jogada contiver um {C:attention}Flush{}.",
      "Cria uma carta {C:attention}Lovers{}",
      "quando {C:attention}Blind{} é selecionado"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Cartas jogadas com naipe {V:1}#3#{}",
      "dão {C:mult}+#1#{} Mult quando pontuadas,",
      "O naipe muda de ordem depois",
      "que a mão é jogada",
      "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Cartas jogadas com naipe {V:1}#2#{}",
      "dão {C:mult}+#1#{} Mult quando pontuadas,",
      "O naipe muda de ordem",
      "após a mão ser jogada",
      "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
      "{C:inactive,s:0.8}(Evolui com a carta{} {C:attention,s:0.8}Pedra d'água{}{C:inactive,s:0.8} ou {C:attention,s:0.8}Rocha do Rei{}{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Cartas jogadas com naipe {V:1}#2#{}",
      "dão {C:mult}+#7#{} Mult",
      "e {X:mult,C:white} X#1# {} Mult quando pontuadas,",
      "O naipe muda de ordem",
      "após a mão ser jogada",
      "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# em #2#{} chance",
      "de criar uma carta {C:attention}O Tolo{} se",
      "a mão de {C:attention}poker{} já",
      "tiver sido jogada nesta rodada",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# em #2#{} chance",
      "de criar uma carta {C:attention}O Tolo{} se",
      "a mão de {C:attention}poker{} já",
      "tiver sido jogada nesta rodada",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} slot consumível",
      "{C:green}#1# em #2#{} chance",
      "de criar uma carta {C:attention}O Tolo{} se",
      "a mão de {C:attention}poker{} já",
      "tiver sido jogada nesta rodada"
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} mão",
      "{C:mult}-#2# discarte{}",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} mão",
      "{C:mult}-#2# discarte{}",
      "{C:mult}+#3#{} Mult",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} mão",
      "{C:mult}-#2# discarte{}",
      "{C:mult}+#3#{} Mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Cartas jogadas com classificação {C:attention}Par{}",
      "dão {C:chips}+#1#{} Fichas quando pontuadas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Cartas jogadas com classificação {C:attention}Par{}",
      "dão {C:chips}+#1#{} Fichas quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra de Folha{}{C:inactive})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebell",
                text = {
                    "Cartas jogadas com classificação {C:attention}Par{}",
      "dão {C:chips}+#1#{} Fichas quando pontuadas",
      "e {C:attention}reativam{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Cada {C:attention}10{} jogado",
      "dá {C:mult}+#1#{} Mult quando pontuado",
      "se a mão contém apenas {C:attention}10{}s",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Cada {C:attention}10{} jogado",
      "dá {C:mult}+#1#{} Mult quando pontuado",
      "se a mão contiver apenas {C:attention}10{}s",
      "e {C:attention}reativam{}"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Fichas,",
      "{C:attention}-#2#{} tamanho da mão",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Fichas,",
      "{C:attention}-#2#{} tamanho da mão",
      "{C:inactive}(Evolui com a carta{} {C:attention}Linking Cord{}{C:inactive})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Fichas,",
      "{C:attention}-#2#{} tamanho da mão"
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Ganhe {C:chips}#2#{} Fichas se a", 
      "mão jogada contém uma {C:attention}Sequência{}",
      "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
      "{C:inactive}(Evolui em {C:chips}+60{} {C:inactive}Fichas)"
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Ganhe {C:chips}#2#{} Fichas se a", 
      "mão jogada contém uma {C:attention}Sequência{}",
      "Aplica {C:attention}atalho{} para a primeira mão",
      "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)"
                } 
            },
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult na {C:attention}última",
      "{C:attention}mão{} da rodada",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult na {C:attention}última {C:attention}mão{} da rodada",
      "{C:green}#3# em #4#{} chance de criar",
      "a carta {C:attention}Rocha do Rei{}",
      "no fim da rodada {C:inactive,s:0.8}(Deve ter espaço){}",
      "{C:inactive,s:0.8}(Evolui depois {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} rodadas ou com a carta {C:attention,s:0.8}Rocha do Rei{} {C:inactive,s:0.8})"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Ganhe {X:red,C:white} X#1# {} Mult",
      "por mão jogada,",
      "reinicia no final da rodada",
      "{C:inactive}(Atualmente {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Cartas de {C:attention}Aço{} jogadas",
      "dão {X:red,C:white}X#1#{} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Cartas de {C:attention}Aço{} jogadas",
      "dão {X:red,C:white}X#1#{} Mult",
      "{C:inactive}(Evolui com a carta {C:attention}Pedra do Trovão{} {C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "Quando você conseguir isso,",
      "crie a carta {C:attention}Leek{}.",
      "{C:green}#2# em #3#{} chance de {X:red,C:white}X#1#{} Mult",
      "A chance é dobrada para",
      "cada carta {C:attention}Leek{} que você tiver"
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} Mult se a mão pontuada",
      "contém pelo menos",
      "{C:attention}2{} cartas de figura",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',      
                text = {
                    "{C:mult}+#1#{} Mult se a mão pontuada",
      "contém pelo menos",
      "{C:attention}3{} cartas de figura"
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "Se a {C:attention}primeira mão{} da rodada", 
      "tiver apenas {C:attention}1{} carta, {C:green}#1# em #2#{} chance de",
      "add um {C:attention}selo{} aleatório a essa carta",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Se a {C:attention}primeira mão{} da rodada", 
      "tiver apenas {C:attention}1{} carta, add um",
      "{C:attention}selo{} aleatório a essa carta"
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult se",
      "tamanho do deck > {C:attention}#3#{}",
                    "Adicione uma carta aleatória",
                    "para o seu baralho no final da rodada",
                    "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult se",
      "tamanho do deck > {C:attention}#3#{}.",
                    "{X:mult,C:white} X#2# {} Mult tamanho do deck > {C:attention}#4#{}",
                    "{C:inactive,s:0.8}(Atualmente {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}Mult){}",
                    "Adicione duas cartas aleatórias ao baralho",
                    "e remova uma carta aleatória do baralho",
                    "no final da rodada"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Se a mão tiver {C:attention}5{} cartas",
      "pontuadas, cada uma tem {C:green}#1# em #2#{}",
      "chance de ser reativada",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra d'água{}{C:inactive})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Se a mão tiver {C:attention}5{} cartas pontuadas",
      "cada uma tem {C:green}#1# em #2#{}",
      "chance de ser reativada"
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# em #2#{} chance de",
      "add {C:dark_edition}Negativo{} a um",
      "{C:attention}Joker{} aleatório",
      "{S:1.1,C:red,E:2}autodestrói depois disso{}",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# em #2#{} chance de",
      "add {C:dark_edition}Negativo{} a um",
      "{C:attention}Joker{} aleatório",
      "{S:1.1,C:red,E:2}autodestrói depois disso{}",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}#1# in #2#{} chance de",
      "add {C:dark_edition}Negativo{} a um",
      "{C:attention}Joker{} aleatório",
      "no final da rodada",
      "{C:inactive,s:0.8}(Exclui a si mesmo, as probabilidades não podem ser aumentadas){}"
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "A carta pontuada mais à esquerda",
      "da sua {C:attention}primeira mão{} da rodada",
      "se torna uma carta de {C:attention}Pedra{}",
      "{C:inactive}(Evolui com a carta {C:metal}Adesivo de Aço{})"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{C:mult}+#2#{} Mult por",
      "cada carta de {C:planet}Planeta{}",
      "única usada nessa run",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui em {C:mult}+21{C:inactive} Mult)"
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:mult}+#2#{} Mult por cada carta de",
      "{C:planet}Planeta{} única usada nessa run.",
      "Quando você recebe isso,",
      "cria uma carta {C:spectral}Trance{}",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Cartas de {C:attention}figura{}",
      "dão {C:chips}+#1#{} Fichas",
      "quando pontuadas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {"Cartas de {C:attention}figura{}",
      "se tornam cartas {C:attention}Bônus{}",
      "quando pontuadas"
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "Se este for o Joker mais {C:attention}à esquerda{},",
      "ganhe {C:mult}+#1#{} Mult e",
      "enfraqueça este Joker",
      "até o final da rodada",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "Se este for o Joker mais {C:attention}à esquerda{},",
      "ganhe {C:mult}+#1#{} Mult e {C:money}$#2#{}",
      "e enfraqueça este Joker",
      "até o final da rodada"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Cartas jogadas com",
      "naipe {C:hearts}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra da Folha{}{C:inactive})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "{C:green}#4# em #5#{} chance de",
      "cartas jogadas com",
      "naipe {C:hearts}#3#{} dê",
      "{C:mult}+#1#{} Mult e {X:mult,C:white}X#2#{} Mult",
      "quando pontuadas"
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',      
                text = {
                    "Quando você receber isso, crie",
      "uma carta {C:attention}Clube Grosso{}",
      "Dá {C:mult}+#1#{} Mult para cada",
      "slot consumível preenchido",
      "{C:inactive,s:0.75}({C:attention,s:0.75}Clube Grosso{}{C:inactive,s:0.75} conta como duplo){}",
      "{C:inactive}(Atualmente {C:mult}+#3#{C:inactive} Mult)",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} slots consumíveis",
      "Dá {X:mult,C:white} X#1# {} Mult para cada",
      "slot consumível preenchido",
      "{C:inactive,s:0.75}({C:attention,s:0.75}Clube Grosso{}{C:inactive,s:0.75} conta como duplo){}",
      "{C:inactive}(Atualmente {X:mult,C:white} X#3# {}{C:inactive} Mult)"
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:red,C:white}X#1#{} Mult para cada 2 cartas",
      "abaixo de {C:attention}#2#{} no seu deck completo",
      "{C:inactive}(Atualmente {X:red,C:white}X#3#{C:inactive} Mult)"
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:red,C:white}X#1#{} Mult para cada carta",
      "acima de {C:attention}#2#{} no seu deck completo",
      "{C:inactive}(Atualmente {X:red,C:white}X#3#{C:inactive} Mult)"
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "O primeiro e o segundo",
      "{C:attention}Valete{} jogados dão {X:mult,C:white} X#1# {} Mult",
      "quando pontuados",
      "{C:inactive}(Evolui após ativar {C:attention}#2#{}{C:inactive}/20 vezes){}"
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Venda esta carta para reduzir o",
      "requisito de pontuação do",
      "atual {C:attention}Boss Blind{} pela {C:attention}metade{}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Venda esta carta para reduzir o",
      "requisito de pontuação do",
      "atual {C:attention}Boss Blind{} pela {C:attention}metade{}",
      "e desabilitá-lo"
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Cada carta de {C:attention}Pedra{}",
      "jogada ganha permanentemente",
      "{C:chips}+#1#{} Fichas quando pontuadas",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Cada carta de {C:attention}Pedra{}",
      "jogada ganha permanentemente",
      "{C:chips}+#1#{} Fichas quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "As {C:attention}#1#{} primeiras vezes que uma",
      "carta da {C:attention}Sorte{} é ativada em cada rodada,",
      "add uma cópia permanente ao seu",
      "baralho e compre-a para a {C:attention}Mão",
      "{C:inactive}(Atualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
      "{C:inactive}(Evolui quando o deck é >= 25% de cartas da {C:attention}Sorte{}{C:inactive})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Cartas {C:attention}Wild{} jogadas dão",
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, ou {C:money}$#3#{}",
      "{C:green}#4# em #5#{} chance de {C:attention}todos os 3 efeitos{}",
      "{C:inactive}(Evolui quando o deck é >= 20% de cartas {C:attention}Wild{}{C:inactive})"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} slot consumível",
      "{C:chips}-#2#{} mão"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Ganhe {C:mult}+#2#{} Mult",
      "para cada {C:attention}6{} pontuado",
      "na {C:attention}primeira mão{} da rodada",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui em {C:mult}+10{} {C:inactive}Mult)"
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Ganhe {C:mult}+#2#{} Mult",
      "para cada {C:attention}6{} pontuado",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui com a carta {C:dragon}Adesivo do Dragão{}{C:inactive})"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Reativa cada carta de {C:attention}Ouro{}",
      "segurada na mão {C:attention}#1#{} vez",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Reativa cada carta de {C:attention}Gold{}",
      "segurada na mão {C:attention}#1#{} vezes"
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Cartas jogadas com",
      "naipe {C:diamonds}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra d'água{}{C:inactive})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Cartas jogadas com o",
      "naipe {C:diamonds}#3#{} dão",
      "{C:mult}+#1#{} Mult e ",
      "{C:money}$#2#{} quando pontuadas"
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Reativa a carta mais",
      "à esquerda segurada na mão {C:attention}#1#{} vezes"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "Quando Blind for selecionado, destrua o",
      "Joker à direita e ganhe {C:mult}+#2#{} Mult",
      "Ganhe {C:attention}Foil{}, {C:attention}Holographic{}, ou {C:attention}Polychrome{}",
      "se joker destruido for raro ou maior",
      "{C:inactive}(Evolui com a carta {C:metal}Adesivo de Aço{}{C:inactive}{})",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "{C:attention}Cartas{} adicionadas ao seu",
      "baralho do {C:attention}Pacote Padrão{},",
      "da Loja e {C:spectral}Cryptid{} são {C:attention}duplicadas{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Quando uma carta é {C:attention}vendida{}",
      "no final da rodada",
      "ganhe {C:money}$#1#{} do {C:attention}valor de venda{}",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Se o {C:attention}primeiro{} descarte da",
      "rodada tiver apenas {C:attention}1{} carta",
      "destrua-a e ganhe {C:mult}+#2#{} Mult",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui com a carta{} {C:attention}Cordão de ligação{}{C:inactive})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
      "{C:attention}Joker{} mais à esquerda se torna",
      "{C:attention}fixado{} no final da loja",
      "{C:attention}Desafixa{} o Coringa no final da rodada"
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Leader)',
                text = {
                    "{X:mult,C:white} X#1# {} Mult para cada",
      "Joker {C:attention}Tauros{} que você tem",
      "{C:inactive}(Tauros (rebanho) podem aparecer na loja){}",
      "{C:inactive}(Atualmente {X:red,C:white}X#2#{} {C:inactive}Mult)"
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Herd)',
                text = {
                    "{C:mult}+#1#{} Mult"
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "Aplica {C:attention}Splash{}",
      "{C:inactive}(Evolui depois {C:attention}#1#{}{C:inactive} rounds)"
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Mult"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} Fichas para cada",
      "{C:attention}Blind{} pulado nesta run",
      "{C:inactive}(Atualmente {C:chips}+#1# {C:inactive}Fichas)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Venda isso para duplicar",
      "o Joker mais à esquerda",
      "com {C:attention}Perecível{}",
      "{C:inactive}(remove Eterno){}"
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "Ganhe {C:money}$#1#{} para",
      "as primeiras {C:attention}5{} {C:green}rolagens{}",
      "{C:inactive}(Evolui com...muito){}",
      "{C:inactive}Atualmente {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Ganhe {C:chips}+#2#{} Fichas",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "{C:inactive}(Atualmente {C:attention}#3#{}{C:inactive}/3 rolagens)",
      "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)"
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Ganhe {C:money}$#1#{}",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "{C:inactive}(Atualmente {C:attention}#2#{}{C:inactive}/3 rolagens)"
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Ganhe {X:red,C:white} X#2# {} Mult",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "{C:inactive}(Atualmente {C:attention}#3#{}{C:inactive}/3 rolagens)",
      "{C:inactive}(Atualmente {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "Cria uma carta de {C:pink}Energia{}",
      "quando qualquer {C:attention}Pacote de Reforço{}",
      "for aberto",
      "{C:inactive}(Evolui com a carta{} {C:attention}Upgrade{}{C:inactive})"
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Ancestral #1#s{}",
      "{C:attention}1{} #1#: Ganha {C:money}$#2#{} de valor de venda",
      "{C:attention}2{} #1#s: Ganha {C:money}$#3#{}",
      "{C:attention}3+{} #1#s: Crie uma carta aleatória de {C:attention}Taro{} {C:inactive}(Deve ter espaço)",
      "{C:inactive}(Evolui depois {C:attention}#4#{}{C:inactive} rounds)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Ancestral #1#s{}",
      "{C:attention}2{} #1#s: Ganha {C:money}$#2#{} de valor de venda",
      "{C:attention}3{} #1#s: Ganha {C:money}$#3#{}",
      "{C:attention}4+{} #1#s: Crie 2 cartas aleatórias de {C:attention}Taro{} {C:inactive}(Deve ter espaço)"
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Ancestral #1#s{}",
      "{C:attention}1{} #1#s: {C:chips}+#2#{} Fichas",
      "{C:attention}2{} #1#s: Pontuação {C:attention}#1#s{} ganha permanente {C:chips}+#3#{} Fichas",
      "{C:attention}3+{} #1#s: {C:chips}+#4#{} Fichas",
      "{C:inactive}(Evolui depois {C:attention}#5#{}{C:inactive} rounds)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Ancestral #1#s{}",
      "{C:attention}2{} #1#s: {C:chips}+#2#{} Fichas",
      "{C:attention}3{} #1#s: Pontuação {C:attention}#1#s{} ganha permanente {C:chips}+#3#{} Fichas",
      "{C:attention}4+{} #1#s: {C:chips}+#4#{} Fichas",
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Ancestral #1#s{}",
      "{C:attention}2{} #1#: {C:mult}+#2#{} Mult",
      "{C:attention}3{} #1#: {C:mult}+#3#{} Mult e {C:chips}+#4#{} Fichas",
      "{C:attention}4+{} #1#: {X:red,C:white}X#5#{} Mult"
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "Quando você conseguir isso, crie uma",
      "carta de {C:attention}Sobras{}. No final",
      "da rodada, ganhe {X:red,C:white}X#1#{} Mult ",
      "para cada carta de {C:attention}Sobras{} que você tiver",
      "{C:inactive}(Atualmente {X:red,C:white} X#2# {}{C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Add {C:attention}Foil{}, um",
      "{C:attention}aprimoramento{} aleatório, e um",
      "{C:attention}selo{} aleatório para cartas não pontuadas"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Mult para",
      "cada {C:money}$#2#{} que você tem",
      "{C:inactive}(Atualmente {X:red,C:white}X#3#{}{C:inactive} Mult)"
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Aumente o nível das 3",
      "primeiras mãos de pôquer {C:attention}descartadas{}",
      "a cada rodada"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Ganha {C:mult}+#2#{} Mult",
      "se a mão jogada contém",
      "{C:attention}#3#{} ou menos cartas",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui em {C:mult}+10{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Ganha {C:mult}+#2#{} Mult",
      "se a mão jogada contém",
      "{C:attention}#3#{} ou menos cartas",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
      "{C:inactive}(Evolui em {C:mult}+30{}{C:inactive} Mult)"
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Mult",
      "Se a mão jogada",
      "tiver apenas {C:attention}1{} carta",
      "ative-a novamente {C:attention}#2#{} vezes"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "No final da loja, crie uma {C:attention}duplicata{}",
      "{C:dark_edition}Policromática{} do {C:attention}Joker{}",
      "mais à esquerda com {C:attention}+1{} de {C:pink}Energia{}",
      "e destrua o {C:attention}Joker{} mais à esquerda",
      "Os Jokers {C:dark_edition}Policromáticos{} dão {X:mult,C:white} X#1# {} Mult cada um",
      "{C:inactive}(Não pode se destruir)"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "No final da loja, cria",
      "uma carta aleatória de {C:attention}Taro{} {C:dark_edition}Negativo{},",
      "{C:spectral}Espectral{} ou {C:item}Item{}.",
      "{C:green}#1# em {C:green}#2#{} chance de criar",
      "um Joker {C:dark_edition}Negativo{} {C:attention}em vez disso{}",
                    "{C:inactive,s:0.8}(As probabilidades não podem ser aumentadas){}"
                } 
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} Mult quando a mão jogada",
      "não é a última mão pontuada",
      "{C:inactive}(Última mão: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult)",
      "{C:inactive}(Evolui em {C:mult}+8{} {C:inactive}Mult)"
                }  
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} Mult quando a mão jogada",
      "não é a última mão pontuada",
      "{C:inactive}(Última mão: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult)"
                }  
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "{C:attention}Randomize{} melhorias existentes nas cartas pontuadas",
      "Ganha {C:mult}+#2#{} para cartas {C:attention}Mult{} e {C:attention}Wild{},",
      "{C:chips}+#4#{} para cartas {C:attention}Bônus{} e {C:attention}Pedras{},",
      "{X:red,C:white}X#6#{} para cartas {C:attention}Aço{} e {C:attention}Vidro{},",
      "{C:money}$#8#{} para cartas {C:attention}Dourada{} e {C:attention}Sorte{}",
      "{C:inactive}(Atualmente {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} fim da rodada)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Bebê{}",
      "Ganha {C:money}$#1#{} no",
      "fim da rodada",
      "{X:red,C:white} X#2# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Bebê{}",
      "Cria uma carta {C:attention}A Lua{} com",
      "{C:dark_edition}Negativo{} no final da rodada",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Bebê{}",
      "Cria uma carta {C:attention}O Mundo{} com",
      "{C:dark_edition}Negativo{} no final da rodada",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Durante o {C:attention}Small Blind{}",
      "as cartas jogadas com classificação {C:attention}Ímpar{}",
      "tornam-se cartas {C:attention}Wild{} quando pontuadas",
      "Se já forem {C:attention}Wild{}, adds {C:dark_edition}Polychrome"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Cartas jogadas com naipe {V:1}#2#{} dão",
      "{C:mult}+#1#{} Mult quando pontuadas",
      "Esses cartões são reativados com base em",
      "quantos Jokers de {X:water,C:white}Água{} você tem",
      "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} Reativações dividido igualmente entre as cartas de pontuação){}",
      "Mudanças de naipe na ordem {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "Cria a carta {C:attention}O Sol{}",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "Reativa todas as cartas jogadas com",
      "Naipe {C:hearts}Copas{} em sua {C:attention}primeira mão{}",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Atualmente {C:attention}#1#{}{C:inactive}/3 rolagens)"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Cria a carta {C:attention}A Lua{} a cada",
      "{C:attention}3{} {C:green}rolagens{}, reativa",
      "todas as habilidades das cartas {C:attention}mantidas na mão{}",
      "com o naipe {C:clubs}#2#{} na {C:attention}mão final{}",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Atualmente {C:attention}#1#{}{C:inactive}/3 rolagens)"
                } 
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "{C:attention}Reis{} jogados dão {X:red,C:white}X#1#{} Mult",
      "quando pontuados",
      "Aumenta em {X:red,C:white}X#2#{} Mult",
      "por mão jogada",
      "reinicia no final da rodada"
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "A carta de pontuação mais à esquerda",
      "da sua {C:attention}primeira mão{} da rodada",
      "se torna uma carta de {C:attention}Aço{}",
      "As cartas de {C:attention}Pedra{} {C:attention}seguradas{}",
      "na mão se tornam de {C:attention}Aço{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Quando Blind for selecionado, destrói",
      "Joker à direita e ganha",
      "{C:attention}Foil{}, {C:attention}Holographic{}, or {C:attention}Polychrome{}",
      "Essas edições se {C:attention}acumulam{} neste Joker",
      "{C:inactive,s:0.75}(Matches destruíram a edição do Joker se possível){}",
      "{C:inactive}Atualmente {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Fichas, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Ganha {C:mult}+#2#{} Mult para cada",
      "{C:attention}6{} pontuado, se você tiver",
      "o {C:attention}Rei{} na mão, ganha",
      "{X:red,C:white}X#4#{} Mult {C:attention}também{}",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{} Mult{C:inactive})"
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+1{} Limite de Energia",
      "Crie uma carta de {C:pink}Energia{}",
      "do mesmo {C:pink}Tipo{} do",
      "Joker mais à esquerda, quando qualquer",
      "{C:attention}Pacote de Reforço{} for aberto",
      "{C:inactive}(Evolui com a carta{} {C:attention}Upgrade{}{C:inactive})"
                } 
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Bebê{}",
      "Para a {C:attention}primeira mão{} da rodada",
      "Se {C:attention}2{} cartas forem jogadas, {C:attention}destrói{} uma",
      "Se {C:attention}3+{} cartas forem jogadas, {C:attention}copie{} uma para a mão",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
      "se o tamanho do deck",
      "é exatamente {C:attention}#2#{}"
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Bebê{}",
      "Cria uma tag {C:attention}Padrão{}",
      "quando este Joker evoluir",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Sim, isso {C:attention}reduzirá{C:inactive} seu Mult)",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Bebê{}",
      "Cria uma tag {C:attention}Cupom{}",
      "quando este Joker evoluir",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Sim, isso {C:attention}reduzirá{C:inactive} seu Mult)",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Bebê{}",
      "{C:red}+#2#{} descartes",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Sim, isso irá {C:attention}reduzir{C:inactive} seu Mult)",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Nas primeiras {C:attention}#1#{} vezes que uma carta da {C:attention}Sorte{}",
      "for ativada em cada rodada, add uma",
      "cópia permanente com {C:dark_edition}Polychrome{} ao seu",
      "baralho e compre-a para a {C:attention}Mão",
      "{C:inactive}(Atualmente {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                } 
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Ganha {C:chips}+#2#{} Fichas",
      "se a mão jogada contiver pelo menos um",
      "{C:attention}Ás{} pontuado e tiver exatamente {C:attention}#3#{} cartas",
      "{C:inactive}(Atualmente {C:chips}+#1#{}{C:inactive} Fichas)",
      "{C:inactive}(Evolui em {C:chips}+36{}{C:inactive} Fichas)"
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Ganha {C:chips}+#2#{} Fichas",
      "se a mão jogada contiver pelo menos dois",
      "{C:attention}Ás{} pontuado e tiver exatamente {C:attention}#3#{} cartas",
      "{C:inactive}(Atualmente {C:chips}+#1#{}{C:inactive} Fichas)",
      "{C:inactive}(Evolui em {C:chips}+100{}{C:inactive} Fichas)"
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Fichas",
      "Se a mão jogada for uma {C:attention}Quadra{}",
      "cada carta jogada dá {X:mult,C:white}X{} Mult",
      "igual à {C:attention}raiz cúbica{} ",
      "do total de fichas dessa carta"
                } 
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Fichas para",
      "cada carta {C:attention}não pontuada{}",
      "na mão jogada",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} Fichas para",
      "cada carta {C:attention}não pontuada{}",
      "na mão jogada"
                }  
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Bebê{}",
      "Aplique um selo {C:attention}Vermelho{} ou {C:attention}Azul{}",
      "a uma carta aleatória no baralho",
      "no final da rodada",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Bebê{}",
      "Cartas não pontuadas na sua",
      "{C:attention}primeira mão{} se tornam cartas da {C:attention}Sorte{}",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Bebê{}",
      "Crie uma carta de {C:item}Item{} aleatória com",
      "{C:dark_edition}Negativo{} no final da rodada",
      "{X:red,C:white} X#1# {} Mult",
      "{C:inactive}(Sim, isso vai {C:attention}reduzir{C:inactive} seu Mult)",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Cartas de {C:attention}Aço{}",
      "dão {X:red,C:white}X#1#{} Mult",
      "{X:metal,C:white}Metal{} Os coringas ao lado",
      "deste coringa dão cada um {X:red,C:white}X#2#{} Mult"
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "Primeiro e segundo",
      "{C:attention}Valete{} jogados dão {X:mult,C:white} X#1# {} Mult",
      "quando pontuados e outros {C:attention}Valete{}",
      "dão {X:mult,C:white} X#2# {} Mult quando pontuados"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Cada carta de {C:attention}Pedra{}",
      "jogada ganha permanentemente",
      "{C:chips}+#1#{} Fichas quando pontuada",
      "Cartas de {C:attention}Pedra{} reativam para cada",
      "{C:attention}outro{} Coringa de {X:earth,C:white}Terra{} que você tem",
      "{C:inactive}(Atualmente #2# retriggers)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Cartas {C:attention}Wild{} jogadas dão",
      "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, ou {C:money}$#3#{}",
      "{C:green}#4# em #5#{} chances para {C:attention}todas as três{}",
      "cartas Wild {C:attention}não podem ser debuffadas"
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Quando uma carta é {C:attention}vendida{}",
      "no final da rodada",
      "ganha {C:money}$#1#{} no {C:attention}valor de venda{}",
      "Dá {X:mult,C:white}X#2#{} Mult para cada",
      "{C:money}${} de valor de venda que este Coringa tem",
      "{C:inactive}(Atualmente {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Se o {C:attention}primeiro{} descarte da",
      "rodada tiver apenas {C:attention}1{} carta,",
      "destrua-a e ganhe {C:mult}+#2#{} Mult",
      "Ganha {X:mult,C:white}X#4#{} Mult para cada",
      "carta descartada",
      "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                } 
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "Crie uma carta {C:attention}O Mundo{}",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "Cada carta jogada com naipe {C:spades}#2#{}",
      "ganha permanentemente {C:chips}+#3#{} Fichas",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Atualmente {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Cria uma carta de {C:attention}Taro{} aleatória",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "{C:green}#2#{} em {C:green}#3#{} chance para uma edição {C:dark_edition}Negativa{}",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Atualmente {C:attention}#1#{}{C:inactive}/3 rerolls)"
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Limite de Energia",
      "Este Coringa ganha",
      "{X:red,C:white} X#2# {} Mult toda vez que",
      "uma carta de {C:pink}Energia{} é usada",
      "{C:inactive}(Atualmente {X:red,C:white} X#1# {}{C:inactive} Mult)"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Crie uma carta {C:attention}A Estrela{}",
      "a cada {C:attention}3{} {C:green}rolagens{}",
      "Cada carta com naipe {C:diamonds}#2#{}",
      "na mão dá {X:mult,C:white} X#3# {} Mult",
      "{C:inactive}(Deve ter espaço)",
      "{C:inactive}(Atualmente {C:attention}#1#{}{C:inactive}/3 rolagens)"
                } 
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
      "Esta carta pontua o {C:attention}triplo{}",
      "de seu Mult se você tiver",
      "Coringa {X:lightning, C:black}Elétrico{}",
      "{C:inactive}(Evolui depois {C:attention}#2#{}{C:inactive} rounds)"
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult",
      "para cada Coringa {X:lightning, C:black}Elétrico{}",
      "que você tem {C:inactive}(inclui a si mesmo){}",
       "{C:inactive}(Atualmente {C:mult}#2#{C:inactive} Mult)",
      "{C:inactive}(Evolui com a carta{} {C:attention}Pedra do Trovão{}{C:inactive})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
      "para cada Coringa {X:lightning, C:black}Elétrico{}",
      "que você tem {C:inactive}(inclui a si mesmo){}",
       "{C:inactive}(Atualmente {X:red,C:white} X#2# {}{C:inactive} Mult)",
                }  
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult e ganhe {C:money}$#2#{}",
      "se a mão jogada contém",
      "uma {C:attention}Sequência{}",
      "{C:inactive}(Evolui depois {C:attention}#3#{}{C:inactive} rounds)"
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} Mult e ganhe {C:money}$#2#{}",
      "se a mão jogada contém",
      "uma {C:attention}Sequência{}"
                } 
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, ou {C:attention}7{} jogados dá",
      "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas quando pontuados",
      "para cada mão jogada nesta rodada",
      "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Chips)"
                } 
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Cria consumíveis",
                    "quando obtido?",
                    "Cria {C:attention}#1#{}? {C:attention}Tags{}?"
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} para cada",
        "Coringa com um {C:pink}Tipo{} que você tem",
        "Pokémon pode aparecer",
        "várias vezes",
        "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokemon {C:attention}não pode{} evoluir",
        "Pokémon {C:attention}Básico{} cada um dá {X:mult,C:white} X#1# {} Mult"
                } 
            },
            j_poke_tall_grass = {
                name = 'Tall Grass',
                text = {
                    "{C:green}#1# em #2#{} chance de criar um",
                    "Pokemon {C:attention}Coringa{} {C:chips}Comum{}",
                    "quando a mão é jogada",
                    "Garantido se a mão de pontuação",
                    "contém uma carta {C:attention}Wild{}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Jelly Donut",
                text = {
                  "Cria uma {C:pink}Energia{}",
                  "{C:colorless}Incolor{} quando Blind",
                  "for selecionado",
                  "{C:inactive}({C:attention}#1#{}{C:inactive} rodadas restantes){}"
                }
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Sleeve Treinador",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_goodrod}#1#{} vale",
                    "e a carta {C:tarot,T:c_poke_pokeball}#2#{}"
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Sleeve Obituário",
                text = {
                    "Todas as cartas têm um {C:dark_edition}#1#{}"
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Sleeve Luminoso",
                text = {
                    "Todos os Jokers são criados",
                    "com adesivos de {C:pink}Tipo{} aleatório"
                },
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultrabola",
                text = {
                    "Crie um Coringa",
                    "{C:attention}Estágio 2{} aleatório",
                    "{C:inactive}(Deve ter espaço)"
                },
            },
            c_poke_masterball = {
                name = "Bola Mestra",
                text = {
                    "Crie um Coringa de ",
                    "{C:attention}Pokémon Lendário{} aleatório",
                    "{C:inactive}(Deve ter espaço)"
                },
            },
            c_poke_transformation = {
                name = "Transformação",
                text = {
                    "Evolui o Pokémon mais à esquerda para ",
                    "o {C:attention}estágio{} mais alto e aumenta",
                    "a maioria dos valores de {C:attention}pontuação{} e {C:money}${}", 
                    "se possível",
                    "{C:inactive}(Max de {C:attention}#1#{}{C:inactive} aumento por Coringa)"
                },
            },
            c_poke_obituary = {
                name = "Obituário",
                text = {
                    "Add um selo {C:pink}Rosa{}",
                    "em  {C:attention}1{} carta selecionada"
                }
            },
            c_poke_nightmare = {
                name = "Pesadelo",
                text = {
                    "Destrói um Coringa Pokémon",
                    "aleatório e cria {C:attention}3{}",
                    "{C:pink}Energias{} aleatórias com {C:dark_edition}Negativo{}"
                },
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Etiqueta de Bolso",
                text = {
                    "Ganha grátis um",
                    "{C:pink}Mega Pacote de Bolso"
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Etiqueta Shiny",
                text = {
                    "A próxima edição Coringa base",
                    "da loja é grátis e",
                    "se torna {C:colorless}Shiny{}"
                }, 
            },
        },
        Tarot = {
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Busca de Energia",
                text = {
                    "{C:pink}+1{} Limite de Energia"
                },
            },
            v_poke_energyresearch = {
                name = "Pesquisa Energética",
                text = {
                    "{C:pink}+1{} Limite de Energia"
                },
            },
            v_poke_goodrod = {
                name = "Boa Vara",
                text = {
                    "Os {C:attention}Pacotes de Bolso{} tem",
                    "mais {C:attention}1{} carta neles",
                },
            },
            v_poke_superrod = {
                name = "Super Vara",
                text = {
                    "Os {C:attention}Pacotes de Bolso{} tem",
                    "mais {C:attention}1{} carta neles",
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
                  "{X:fire,C:white}Fogo{}",
                }
            },
            Water = {
                name = "Tipo",
                text = {
                  "{X:water,C:white}Àgua{}",
                }
            },
            Lightning = {
                name = "Tipo",
                text = {
                  "{X:lightning,C:black}Elétrico{}",
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
                  "{X:fighting,C:white}Lutador{}",
                }
            },
            Colorless = {
                name = "Tipo",
                text = {
                  "{X:colorless,C:white}Incolor{}",
                }
            },
            Dark = {
                name = "Tipo",
                text = {
                  "{X:dark,C:white}Sombrio{}",
                }
            },
            Metal = {
                name = "Tipo",
                text = {
                  "{X:metal,C:white}Aço{}",
                }
            },
            Fairy = {
                name = "Tipo",
                text = {
                  "{X:fairy,C:white}Fada{}",
                }
            },
            Dragon = {
                name = "Tipo",
                text = {
                  "{X:dragon,C:white}Dragão{}",
                }
            },
            Earth = {
                name = "Tipo",
                text = {
                  "{X:earth,C:white}Terra{}",
                }
            },
            Bird = {
                name = "Tipo",
                text = {
                  "{X:bird,C:white}Pássaro{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Ancestral",
                text = {
                    "Efeito baseado no",
                    "número de {C:attention}#1#s{}",
                    "na mão de pôquer"
                }
            },
            eitem = {
                name = "Carta de Evolução",
                text = {
                    "Evolui o Coringa",
                    "{C:attention}elegível{} mais à esquerda",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Cartão Retido",
                text = {
                    "Usado por {C:attention}#1#{}"
                }
            },
            basic = {
                name = "Básico",
                text = {
                    "Um Pokémon Coringa",
                    "que não {C:attention}Evoluiu{}"
                }
            },
            stage1 = {
                name = "Estágio 1",
                text = {
                    "Um Pokémon Coringa",
                    "que {C:attention}Evoluiu{} uma vez"
                }
            },
            stage2 = {
                name = "Estágio 2",
                text = {
                    "Um Pokémon Coringa",
                    "que {C:attention}Evoluiu{} duas vezes"
                }
            },
            energy = {
                name = "Energia Usada",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            baby = {
                name = "Bebê",
                text = {
                    "{C:attention}Fixa{} outros Coringas que não sejam Bebês",
                    "quando você recebe isso, os Coringas",
                    "são desfixados quando esta carta",
                    "evolui ou é removida"
                }
            },
            safaridesc = {
                name = "Safari",
                text = {
                    "Só pode ser obtido",
                    "por meio da {C:attention}Evolução{}",
                    "ou de certos {C:attention}itens de Pokebola{}"
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
                name = "Tipo",
                text = {
                    "{X:grass,C:white}Planta{}"
                } 
            },
            fire_sticker = {
                name = "Tipo",
                text = {
                    "{X:fire,C:white}Fogo{}"
                } 
            },
            water_sticker = {
                name = "Tipo",
                text = {
                    "{X:water,C:white}Àgua{}"
                } 
            },
            lightning_sticker = {
                name = "Tipo",
                text = {
                    "{X:lightning,C:white}Elétrico{}"
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
                    "{X:fighting,C:white}Lutador{}"
                } 
            },
            colorless_sticker = {
                name = "Tipo",
                text = {
                    "{X:colorless,C:white}Incolor{}"
                } 
            },
            dark_sticker = {
                name = "Tipo",
                text = {
                    "{X:dark,C:white}Sombrio{}"
                } 
            },
            metal_sticker = {
                name = "Tipo",
                text = {
                    "{X:metal,C:white}Aço{}"
                } 
            },
            fairy_sticker = {
                name = "Tipo",
                text = {
                    "{X:fairy,C:white}Fada{}"
                } 
            },
            dragon_sticker = {
                name = "Tipo",
                text = {
                    "{X:dragon,C:white}Dragão{}"
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
                name = "Pacote de Bolso",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Pacote de Bolso",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Pacote de Bolso Jumbo",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Pacote de Bolso Mega",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Pacote de Bolso",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Pacote de Bolso",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Pacote de Bolso Jumbo",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Pacote de Bolso Mega",
                text = {
                    "Escolha {C:attention}#1#{} de",
                    "até {C:attention}#2#",
                    "cartas de {C:pink}Energia{} ou {C:item}Item{}",
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
            c_poke_poke_master = "Mestre Pokemon",
        },
        dictionary = {
            k_energy = "Energia",
            k_item = "Item",
            k_poke_pocket_pack = "Pacote de Bolso",

            k_poke_safari = "Safari",

            b_save = "SAVE",
            b_energy_cards = "Cartas de Energia",
            b_item_cards = "Cartas de Item",
            
            --Mod Menu stuff
            poke_settings_pokemon_only = "Somente Pokemon?",
            poke_settings_unlimited_energy = "Energy Ilimitada?",
            poke_settings_shiny_playing_cards = "Shiny em cartas de baralho?",
            poke_settings_jokers_only = "Coringas somente?",
            poke_settings_no_evolutions = "Sem Evoluções?",
            poke_settings_pokeballs = "Pokebolas?",
            poke_settings_pokedex_number = "Números da Pokédex?",
            poke_settings_pokemon_splash = "Carta de Pokémon Splash?",
            poke_credits_actualcredits = "Créditos",
            poke_credits_thanks = "Obrigado a",
            poke_credits_lead = "Desenvolvedor Líder: ",
            poke_credits_graphics = "Design Gráfico: ",
            poke_credits_quality_assurance_main = "Líder de QA: ",
            poke_credits_developer = "Desenvolvedores: ",
            poke_credits_community_manager = "Gerentes de Comunidade: ",
            poke_credits_promotion_producer = "Produtor de Promoção: ",
            --This one is unused, for now
            poke_credits_localization = "Localização: ",

            poke_plus_pokeitem = "+1 Item",
            poke_plus_energy = "+1 Energia",
            poke_destroyed_ex = "Destruído!",
            poke_evolve_success = "Evoluído!",
            poke_evolve_level = "Level up!",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Aço!",
            poke_dragon_ex = "Dragão!",
            poke_unlimited_energy = "Infinito",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone e Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokebola",
            goodrod_variable = "Boa Vara",
            pinkseal_variable = "Selo Rosa",

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
            poke_pinsir_pin = "Fixado!",
            poke_pinsir_remove_pin = "Desafixado!",
            --From Tangela line
            poke_tangela_bonus = "Todos!",
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
            poke_pink_seal_seal = "Selo Rosa",

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