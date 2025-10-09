-- Welcome to en-us.lua!
-- friendly reminder that in the us we say things like "color" and not "colour"
-- This is also the default file, if there are things here that are "missing" from other files it will use this one instead

--Progress report: (this is the english file so it doesn't really matter but this is for consistency)

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
            b_poke_poke = {
                name = "Baralho do Treinador",
                text = {
                    "Inicia a partida com o",
                    "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
                    "e uma carta {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Baralho Telecinético",
                text = {
                    "Inicia a partida com o",
                    "{C:tarot,T:v_crystal_ball}#1#{} voucher",
                    "e {C:attention}2{} cópias",
                    "de {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
			--Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "Baralho do Obituário",
                text = {
                    "Todas as cartas têm uma {C:dark_edition}#1#{}",
                } 
            },
            b_poke_revenantdeck = {
                name = "Baralho do Revenante",
                text = {
                    "Todas as cartas têm uma {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Baralho Luminoso",
                text = {
                    "Todos os Coringas são",
                    "criados {C:pink}Energizados{} e",
                    "com {C:pink}Tipos{} de adesivos aleatórios"
                }
            },
            b_poke_ampeddeck = {
                name = "Baralho Carregado",
                text = {
                    "Inicia a partida com o",
                    "{C:tarot,T:v_poke_energysearch}#1#{} voucher",
                    "e uma cópia de",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Câmara Chartreuse",
                text = {
                    "Tipos aleatórios são nerfados",
                    "a cada mão",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Poké Bola",
                text = {
                    "Cria um",
                    "{C:attention}Coringa Básico{} aleatório",
                    "{C:inactive}(É necessário espaço)"
                },
            },
            c_poke_greatball = {
                name = "Grande Bola",
                text = {
                    "Cria um",
                    "{C:attention}Coringa Estágio 1{} aleatório",
                    "{C:inactive}(É necessário espaço)"
                },
            },
            c_poke_moonstone = {
                name = "Pedra da Lua",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:green}#2# em #3#{} chance de",
                    "melhorar o nível da",
                    "{C:attention}mão de poker{} selecionada",
                    "{C:inactive}(Mão: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Pedra do Sol",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Aprimora {C:attention}#1#{} cartas selecionadas",
                    "para {C:attention}Cartas Wild{} e",
                    "{C:attention}randomiza{} seus ranks",
                },
            },
            c_poke_waterstone = {
                name = "Pedra da Água",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Aprimora {C:attention}#1#{} carta selecionada",
                    "em uma carta {C:attention}Bônus{}",
                    "Se já for uma carta {C:attention}Bônus{}",
                    "{C:attention}Dobra{} suas fichas totais",
                    "{C:inactive}(Até {C:chips}+#2#{C:inactive} Fichas por aumento)",
                },
            },
            c_poke_thunderstone = {
                name = "Pedra do Trovão",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Destrói {C:attention}1{} carta selecionada,",
                    "adiciona {C:attention}2{} cartas {C:attention}Ouro{} com",
                    "o mesmo rank ao baralho",
                    "e compra {C:attention}1{} para a mão",
                },
            },
            c_poke_firestone = {
                name = "Pedra do Fogo",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Aprimora {C:attention}#1#{} cartas selecionadas para {C:attention}Cartas Mult{}",
                    "então destrói {C:attention}1{} aleatoriamente",
                },
            },
            c_poke_leafstone = {
                name = "Pedra da Folha",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:green}#1# em #2#{} chance para",
                    "cada carta na mão ser",
                    "aprimorada para uma {C:attention}Carta da Sorte{}",
                },
            },
            c_poke_linkcable = {
                name = "Cabo de Ligação",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Seleciona {C:attention}#1#{} cartas,",
                    "{C:attention}Aumenta{} o rank da carta da {C:attention}esquerda{}",
                    "{C:attention}Diminui{} o rank da carta da {C:attention}direita{}",
                },
            },
            c_poke_leftovers = {
                name = "Sobras",
                text = {
                    "{C:attention}Reutilizável{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Adiciona {C:money}$#2#{} de valor de venda ao",
                    "Coringa mais à esquerda ou selecionado",
                    "{C:inactive}(Usável uma vez por rodada)",
                }
            },
            c_poke_leek = {
                name = "Alho-poró",
                text = {
                    "{C:attention}Reutilizável{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:green}#1# em #2#{} chance de adicionar",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holográfico{}, ou",
                    "{C:dark_edition}Policromático{} a si mesmo",
                    "remove {C:attention}Edição{} no final da rodada",
                    "{C:inactive}(Usável uma vez por rodada)",
                }
            },
            c_poke_thickclub = {
                name = "Clube Grosso",
                text = {
                    "{C:attention}Reutilizável{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Adiciona permanentemente {C:chips}+#2#{} Fichas",
                    "à carta {C:attention}#1#{} selecionada",
                    "{C:inactive}(Usável uma vez por rodada)",
                }
            },
            c_poke_teraorb = {
                name = "Orbe Tera",
                text = {
                    "{C:attention}Modificador de Tipo:{} {X:pink,C:white}Aleatório{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:pink}Energiza{} o Coringa mais à",
                    "esquerda ou selecionado{}",
                },
            },
            c_poke_metalcoat = {
                name = "Revestimento Metálico",
                text = {
                    "{C:attention}Modificador de Tipo:{} {X:metal,C:white}Metálico{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Cria uma cópia {C:attention}Aço{} de",
                    "{C:attention}1{} carta selecionada",
                },
            },
            c_poke_dragonscale = {
                name = "Escama de Dragão",
                text = {
                    "{C:attention}Modificador de Tipo:{} {X:dragon,C:white}Dragão{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Cria até {C:attention}3{} cartas aleatórias",
                    "de {C:item}Item{} ou {C:pink}Energia{}",
                    "{C:inactive}(É necessário espaço){}"
                },
            },
            c_poke_kingsrock = {
                name = "Pedra do Rei",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Transforma {C:attention}#1#{} carta",
                    "selecionada em um {C:attention}Rei{}",
                },
            },
            c_poke_upgrade = {
                name = "Melhoria",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Dá a {C:attention}#1#{} cartas selecionadas",
                    "um {C:attention}Aprimoramento não-Pedra{} aleatório",
                }
            },
            c_poke_dubious_disc = {
                name = "Disco Dubioso",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:attention}Aprimora{} todas as cartas",
                    "{C:attention}seguradas{} na mão aleatoriamente",
                }
            },
            c_poke_icestone = {
                name = "Pedra de Gelo",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Aprimora {C:attention}#1#{} cartas selecionadas",
                    "para {C:attention}Cartas de Vidro{}",
                    "{C:green}#2# em #3#{} chance para cada",
                    "carta selecionada {C:attention}quebrar{}",
                }
            },
            c_poke_shinystone = {
                name = "Pedra Brilhante",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Adiciona efeito {C:dark_edition}Foil{}, {C:dark_edition}Holográfico{},",
                    "ou {C:dark_edition}Policromático{} a",
                    "{C:attention}1{} carta selecionada na mão e",
                    "remove o {C:attention}Aprimoramento{} da carta",
                }
            },
            c_poke_twisted_spoon = {
                name = "Colher Torcida",
                text = {
                    "Cria a última",
                    "carta de {C:item}Item{} ou {C:pink}Energia{}",
                    "usada durante esta partida",
                    "{s:0.8,C:item}Colher Torcida, Reutilizáveis",
                    "{s:0.8,C:item}e Sucos de Baga{s:0.8} excluídos"
                }
            },
            c_poke_prismscale = {
                name = "Escama de Prisma",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Converte {C:attention}#2#{} cartas {C:attention}seguradas{}",
                    "aleatórias para o {C:attention}naipe{} da",
                    "carta {C:attention}#1#{} selecionada",
                }
            },
            c_poke_duskstone = {
                name = "Pedra do Crepúsculo",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Ganhe {C:money}$#1#{} para cada Coringa",
                    "{C:attention}Drenável{}, então {C:attention}Drene {C:money}$1{} deles",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Após {C:attention}#2#{} {C:inactive}[#3#]{} Rodadas, ganhe",
                    "{C:money}$#1#{} para cada Coringa em vez disso",
                    "{C:inactive}(Atualmente {C:money}$#4#{C:inactive}/$#5# Máx)"
                }
            },
            c_poke_dawnstone = {
                name = "Pedra da Aurora",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Ganhe {C:money}${} igual ao {c:attention}dobro{}",
                    "do valor de {C:mult}Mult{} de {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:inactive}(Atualmente {C:money}$#2#{C:inactive}/$40 Máx)",
                }
            },
            c_poke_hardstone = {
                name = "Pedra Dura",
                text = {
                    "{C:attention}Carta de Evolução{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Aprimora {C:attention}1{} carta selecionada em uma",
                    "{C:attention}Carta de Pedra{} com {C:chips}+#2#{} Fichas extras",
                    "para cada Coringa {X:earth,C:white}Terrestre{} que você tem"
                }
            },
            c_poke_berry_juice = {
                name = "Suco de Baga",
                text = {
                    "Efeito depende do",
                    "{C:attention}Consumível{} destruído"
                }
            },
            c_poke_berry_juice_energy = {
                name = "Suco de Baga Energizado",
                text = {
                    "{C:pink}Energiza{} o Coringa mais à esquerda",
                    "ou selecionado de qualquer {C:pink}Tipo{}",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "Suco de Baga Fantasmagórico",
                text = {
                    "Adiciona um {C:attention}selo{} aleatório e {C:dark_edition}Foil{}, ",
                    "{C:dark_edition}Holográfico{} ou {C:dark_edition}Policromático{} a",
                    "{C:attention}1{} carta selecionada na mão"
                },
            },
            c_poke_berry_juice_planet = {
                name = "Suco de Baga Estelar",
                text = {
                    "Melhora a {C:attention}mão de poker{}",
                    "de nível mais alto em um nível",
                },
            },
            c_poke_berry_juice_item = {
                name = "Suco de Baga Itemizado",
                text = {
                    "Cria uma carta {C:item}Colher Torcida{}",
                    "{C:green}#1# em #2#{} chance de",
                    "criar {C:attention}2{} em vez disso",
                    "{C:inactive}(É necessário espaço){}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "Suco de Baga Oculto",
                text = {
                    "Cria uma carta {C:tarot}O Tol{}",
                    "e ganha {C:money}$#1#{}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "Suco de Baga Misterioso",
                text = {
                    "Cria uma carta",
                    "{C:item}Suco de Baga{} aleatória"
                }
            },
        },
		Energy = {
            c_poke_grass_energy = {
                name = "Energia de Grama",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:grass,C:white}Grama{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_fire_energy = {
                name = "Energia de Fogo",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:fire,C:white}Fogo{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_water_energy = {
                name = "Energia de Água",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:water,C:white}Água{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_lightning_energy = {
                name = "Energia de Raio",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:lightning,C:black}Raio{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_psychic_energy = {
                name = "Energia Psíquica",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:psychic,C:white}Psíquico{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_fighting_energy = {
                name = "Energia de Lutador",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:fighting,C:white}Lutador{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_colorless_energy = {
                name = "Energia Incolor",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:colorless,C:white}Incolor{}",
                    "mais à esquerda ou selecionado se possível",
                    "Metade da eficácia com",
                    "Coringas não {X:colorless,C:white}Incolor{}",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)"
                },
            },
            c_poke_darkness_energy = {
                name = "Energia das Trevas",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:dark,C:white}Trevas{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_metal_energy = {
                name = "Energia Metálica",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:Metal,C:white}Metálico{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_fairy_energy = {
                name = "Energia de Fada",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:fairy,C:white}Fada{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
			--Dragon deez
            c_poke_dragon_energy = {
                name = "Energia de Dragão",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:dragon,C:white}Dragão{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_earth_energy = {
                name = "Energia Terrestre",
                text = {
                    "{C:pink}Energiza{} o Coringa {X:earth,C:white}Terrestre{}",
                    "mais à esquerda ou selecionado se possível",
                    "{C:inactive}(Máx de {C:attention}#1#{C:inactive} aumentos por Coringa)",
                },
            },
            c_poke_emergy = {
                name = "Emergia",
                text = {
                    "Cria {C:attention}1{} carta de {C:green}Energia{}",
                    "aleatória com {C:dark_edition}Negativa{} para cada",
                    "{C:attention}Coringa Jolly{} ou {C:legendary}M Coringa{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Brilhante",
                label = "Brilhante",
                text = {
                    "{C:attention}+1{} slot de Pacote de Reforço",
                    "disponível na loja",
                }
            },
        },
        Enhanced = {
			--No enchanced cards? kind of surprising ngl
            -- HA HA! Not anymore!
			
            m_poke_hazard = {
                name = "Carta de Risco",
                text = {
                    "{C:attention}+1{} tamanho de mão",
                    "sem rank ou naipe",
                    "removida no final da rodada",
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "Estaca de Diamante",
                colour = "Diamante",
                text = {
                    "Coringas Pokemon {C:attention}não-Baby{} evoluem {C:attention}1{} rodada mais devagar",
                    "{s:0.8}Aplica todas as Estacas anteriores"
                }
            },
            stake_poke_pearl = {
                name = "Estaca de Pérola",
                colour = "Pérola",
                text = {
                    "{C:attention}-1{} Limite de Energia",
                    "{s:0.8}Aplica todas as Estacas anteriores"
                }
            },
        },
		Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} tamanho de mão",
                    "Ganhe {C:money}$#1#{} para cada",
                    "{C:attention}#3#{} segurado na mão",
                    "{C:inactive,s:0.8}(Rank muda a cada rodada){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} tamanho de mão",
                    "Ganhe {C:money}$#1#{} ou {C:money}$#5#{} para cada",
                    "{C:attention}#4#{} segurado na mão",
                    "{C:inactive,s:0.8}(Rank muda a cada rodada){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} tamanho de mão",
                    "Ganhe {C:money}$#1#{} para cada",
                    "{C:attention}#4#{} segurado na mão",
                    "{C:inactive,s:0.8}(Rank muda a cada rodada){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} descartes",
                    "Ganha {C:mult}+#2#{} Mult por mão jogada",
                    "quando {C:attention}#3#{} descartes restantes",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +16 Mult)",
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} descartes",
                    "Ganha {C:mult}+#2#{} Mult por mão jogada",
                    "quando {C:attention}#3#{} descartes restantes",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +36 Mult)",
                }
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} descartes, {C:mult}+#1#{} Mult",
                    "{X:mult,C:white} X#2# {} Mult quando {C:attention}#3#{} descartes restantes",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Charizard X",
                text = {
                    "{X:mult,C:white} X#1# {} Mult quando {C:attention}#2#{} descartes restantes",
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
                    "{C:chips}+#2#{} mãos",
                    "Ganha {C:chips}+#4#{} Fichas para cada",
                    "{C:attention}mão{} restante quando",
                    "a mão é jogada",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +#3# Fichas)",
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#2#{} mãos",
                    "Ganha {C:chips}+#4#{} Fichas para cada",
                    "{C:attention}mão{} restante quando",
                    "a mão é jogada",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +#3# Fichas)",
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} mãos, {C:chips}+#1#{} Fichas",
                    "{C:chips}+#2#{} Fichas para cada mão restante",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:chips}+#2#{} mãos",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
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
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Fichas"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:chips}+#1#{} Fichas",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "Dá {C:mult}+#2#{} Mult para cada",
                    "{C:attention}rank{} e {C:attention}naipe{} diferente",
                    "na mão de pontuação",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Dá {C:mult}+#2#{} Mult para cada",
                    "{C:attention}rank{} e {C:attention}naipe{} diferente",
                    "na mão de pontuação",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Dá {C:mult}+#1#{} Mult para cada",
                    "{C:attention}rank{} e {C:attention}naipe{} diferente",
                    "na mão de pontuação",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Dá {X:mult,C:white} X#1# {} Mult para cada",
                    "{C:attention}rank{} e {C:attention}naipe{} diferente",
                    "na mão de pontuação",
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Reativa {C:attention}primeiras 2{} cartas pontuadas",
                    "{C:attention}#1#{} vez adicional",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Reativa {C:attention}primeiras 3{} cartas pontuadas",
                    "{C:attention}#1#{} vez adicional",
                }
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Após jogar {C:attention}#2#{} {C:inactive}[#3#]{} cartas pontuadas",
                    "melhora o nível da próxima {C:attention}mão de poker{} jogada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Após jogar {C:attention}#1#{} {C:inactive}[#2#]{} cartas pontuadas",
                    "melhora o nível da próxima {C:attention}mão de poker{}{C:inactive}#3#{}",
                }
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} Mult se a mão jogada",
                    "contiver um {C:attention}Straight{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Mult se a mão jogada",
                    "contiver um {C:attention}Straight{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Cria uma carta {C:tarot}Tarot{} se",
                    "também contiver um {C:attention}Ás{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Ganhe {C:money}$#1#{} para cada carta de Coringa",
                    "que você tem no final da rodada",
                    "{C:inactive,s:0.8}(Máx de {C:money,s:0.8}$10{C:inactive,s:0.8})",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Trovão{C:inactive,s:0.8})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Ganha {C:dark_edition}Negativa{} no final da rodada",
                    "se você tiver pelo menos {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Aumenta por cada Raichu que você tem){}",
                    "Ganhe {C:money}$#1#{} para cada carta de Coringa",
                    "que você tem no final da rodada",
                    "{C:inactive,s:0.8}(Máx de {C:money,s:0.8}$#3#{C:inactive,s:0.8})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} Fichas para cada carta {C:attention}Vidro{}",
                    "no seu baralho completo",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{V:1}Adiciona uma cópia da primeira carta {C:attention,V:1}Vidro{V:1}",
                    "{V:1}quebrada cada rodada à mão",
                    "{C:inactive}(Atualmente {C:chips}+#3#{C:inactive} Fichas)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} Fichas para cada carta {C:attention}Vidro{}",
                    "no seu baralho completo",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{V:1}Adiciona uma cópia das primeiras {C:attention,V:1}#3#{} {C:inactive}[#4#]{} cartas {C:attention,V:1}Vidro{V:1}",
                    "{V:1}quebradas cada rodada à mão",
                    "{C:inactive}(Atualmente {C:chips}+#2#{C:inactive} Fichas)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Cada {C:attention}Rainha{} segurada na mão",
                    "dá {C:chips}+#1#{} Fichas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Cada {C:attention}Rainha{} segurada na mão",
                    "dá {C:chips}+#1#{} Fichas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Lua{C:inactive,s:0.8})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} tamanho de mão",
                    "Cada {C:attention}Rainha{} segurada na mão",
                    "dá {C:chips}+#1#{} Fichas",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Cada {C:attention}Rei{} segurado na mão",
                    "dá {C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Cada {C:attention}Rei{} segurado na mão",
                    "dá {C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Lua{C:inactive,s:0.8})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} tamanho de mão",
                    "Cada {C:attention}Rei{} segurado na mão",
                    "dá {C:mult}+#1#{} Mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Cartas {C:clubs}#2#{} jogadas dão",
                    "{C:mult}+#1#{} Mult quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Lua{C:inactive,s:0.8})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Quando pontuadas, cartas {C:clubs}#2#{}",
                    "dão {C:mult}+#1#{} Mult para cada",
                    "carta {C:clubs}#2#{} jogada esta rodada",
                    "{C:inactive,s:0.8}(Se você jogar 5 paus, cada um dá {C:mult,s:0.8}+#4#{C:inactive,s:0.8} Mult)",
                    "{C:inactive}(Atualmente {C:mult}+#3#{C:inactive} Mult)"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# em #2#{} chance para cada",
                    "{C:attention}9{} jogado de criar uma",
                    "carta {C:tarot}Tarot{} quando pontuado",
                    "{C:inactive,s:0.8}(É necessário espaço)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Fogo{C:inactive,s:0.8})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Segurando {C:dark_edition}Negativa {C:spectral}Médium{}",
                    "{C:green}#1# em #2#{} chance para cada",
                    "{C:attention}9{} jogado de criar uma",
                    "carta {C:tarot}Tarot{} quando pontuado",
                    "{C:inactive,s:0.8}(É necessário espaço)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Cartas {C:spades}#2#{} jogadas dão",
                    "{C:mult}+#1#{} Mult e {C:chips}+#3#{} Fichas",
                    "quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Lua{C:inactive,s:0.8})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Cartas {C:spades}#3#{} jogadas dão",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, e as",
                    "fichas totais da carta quando pontuadas",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "Ganha {C:mult}+#2#{} Mult para cada",
                    "carta {C:attention}Aprimorada{} na mão de pontuação",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +#3# Mult)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Ganha {C:chips}+#4#{} por cartas {C:attention}Bônus{} / {C:attention}Pedra{} pontuadas",
                    "{C:mult}+#2#{} por cartas {C:attention}Mult{} / {C:attention}Wild{} pontuadas",
                    "{X:mult,C:white}X#6#{} por cartas {C:attention}Aço{} / {C:attention}Vidro{} pontuadas",
                    "{C:money}$#8#{} por cartas {C:attention}Ouro{} / {C:attention}Sortuda{} pontuadas",
                    "Então remove {C:dark_edition}Aprimoramentos{} da carta pontuada",
                    "{C:inactive}(Atualmente {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:mult,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} final da rodada)",
                    "{C:inactive,s:0.8}(Evolui após comer {C:attention,s:0.8}#9#{C:inactive,s:0.8} Aprimoramentos)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Cartas jogadas com rank {C:attention}Ímpar{}",
                    "dão {C:mult}+#1#{} ou {C:mult}+#2#{} Mult quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Cartas jogadas com rank {C:attention}Ímpar{}",
                    "dão {C:mult}+#1#{} ou {C:mult}+#2#{} Mult quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Folha{C:inactive,s:0.8} ou {C:attention,s:0.8}Pedra do Sol{C:inactive,s:0.8})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Cartas jogadas com rank {C:attention}Ímpar{}",
                    "dão {C:mult}+#2#{} Mult ou {X:mult,C:white}X#1#{} Mult",
                    "quando pontuadas",
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult por mão jogada",
                    "que contém um {C:attention}Dois Pares{}",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +8 Mult)",
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Mult por mão jogada",
                    "que contém um {C:attention}Dois Pares{}",
                    "{C:mult}-#3#{} Mult por mão jogada",
                    "que não contém",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
			j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Adiciona {C:attention}#1#{} a todas as {C:attention}probabilidades",
                    "{C:green,E:1,S:1.1}listadas{}",
                    "{C:inactive}(ex: {C:green}1 em 6{C:inactive} -> {C:green}2 em 6{C:inactive})",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Adiciona {C:attention}#1#{} a todas as {C:attention}probabilidades",
                    "{C:green,E:1,S:1.1}listadas{}",
                    "{C:inactive}(ex: {C:green}1 em 6{C:inactive} -> {C:green}3 em 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:chips}+#2#{} Fichas se a mão jogada",
                    "contiver uma {C:attention}Trinca{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:mult}+#3#{} Mult se a mão jogada",
                    "contiver um {C:attention}2{}, {C:attention}3{} ou {C:attention}4{} pontuado",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} Fichas se a mão jogada",
                    "contiver uma {C:attention}Trinca{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{X:mult,C:white} X#1# {} Mult se a mão jogada",
                    "contiver um {C:attention}2{}, {C:attention}3{} ou {C:attention}4{} pontuado",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Ganhe {C:money}$#1#{} no final da rodada",
                    "{br:2}ERRO - CONTATE STEAK",
                    "O primeiro acionamento {C:green}bem-sucedido{}",
                    "de carta {C:attention}Sortuda{} a cada rodada aumenta",
                    "o pagamento em {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Evolui em {C:money,s:0.8}$#1#{C:inactive,s:0.8} / $#3# pagamento)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Ganhe {C:money}$#1#{} no final da rodada",
                    "{C:green}#3# em #4#{} chance de ganhar o {C:attention}dobro{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "O primeiro acionamento {C:green}bem-sucedido{}",
                    "de carta {C:attention}Sortuda{} a cada rodada aumenta",
                    "o pagamento em {C:money}$#2#{}",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Se a mão jogada for uma",
                    "única {C:attention}carta de face{}, ganhe {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Se a mão jogada for uma única",
                    "{C:attention}carta de face{}, ganhe {C:money}$#1#{} e ela",
                    "se torna {C:attention}Ouro{} quando pontuada"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{} ou {C:attention}7{} jogado dá",
                    "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas quando pontuado",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
			--anyways, how's your day been? i'm doing fine myself
            --I'm doing pretty well. We had a snow day yesterday.
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{} ou {C:attention}7{} jogado dá",
                    "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas quando pontuado",
                    "{C:inactive,s:0.8}(Evolui após acionar {C:attention,s:0.8}#3#{C:inactive,s:0.8} vezes)"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Mult se a mão jogada",
                    "contiver um {C:attention}Flush{}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Fogo{C:inactive,s:0.8})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:mult,C:white} X#1# {} Mult se a mão jogada contiver um {C:attention}Flush{}",
                    "Primeira carta não aprimorada jogada nesse {C:attention}Flush{}",
                    "se torna uma carta {C:attention}Mult{} quando pontuada"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Cartas {V:1}#3#{} jogadas dão {C:mult}+#1#{} Mult",
                    "quando pontuadas",
                    "Naipe muda em ordem após pontuar",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Cartas {V:1}#2#{} jogadas dão {C:mult}+#1#{} Mult",
                    "quando pontuadas",
                    "Naipe muda em ordem após pontuar",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Água{C:inactive,s:0.8} ou {C:attention,s:0.8}Pedra do Rei{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Cartas {V:1}#2#{} jogadas dão {C:mult}+#7#{} Mult",
                    "e {X:mult,C:white}X#1#{} Mult quando pontuadas",
                    "Naipe muda em ordem após pontuar",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# em #2#{} chance de criar um {C:item}Item",
                    "ou carta {C:tarot}Tarot{} se a {C:attention}mão de poker{} jogada",
                    "já foi jogada esta rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# em #2#{} chance de criar uma carta {C:tarot}Tarot{} ou",
                    "{C:item}Colher Torcida{} se a {C:attention}mão de poker{} jogada",
                    "já foi jogada esta rodada",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} slot de consumível",
                    "{C:green}#1# em #2#{} chance de criar uma carta {C:attention}O Tol{} ou",
                    "{C:item}Colher Torcida{} se a {C:attention}mão de poker{} jogada",
                    "já foi jogada esta rodada",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} slot de consumível",
                    "Cada {C:attention}Consumível{} segurado dá {X:mult,C:white}X#1#{} Mult",
                    "{C:item}Colheres Torcidas{} dão {X:mult,C:white}X#2#{} Mult",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} mãos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#4#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} mãos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} mãos",
                    "{C:mult}-#2# descartes{}",
                    "{C:mult}+#3#{} Mult"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Cartas jogadas com rank {C:attention}Par{}",
                    "dão {C:chips}+#1#{} Fichas quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Cartas jogadas com rank {C:attention}Par{}",
                    "dão {C:chips}+#1#{} Fichas quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Folha{C:inactive,s:0.8})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebel",
                text = {
                    "Cartas jogadas com rank {C:attention}Par{}",
                    "dão {C:chips}+#1#{} Fichas quando pontuadas",
                    "e {C:attention}reativam{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Cada {C:attention}10{} jogado dá",
                    "{C:mult}+#1#{} Mult quando pontuado",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Cada {C:attention}10{} jogado dá",
                    "{C:mult}+#1#{} Mult quando pontuado",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:attention}10s não podem{} ser nerfados"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:attention}-#2#{} tamanho de mão",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:attention}-#2#{} tamanho de mão",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:attention}-#2#{} tamanho de mão",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Ganha {C:chips}+#2#{} Fichas se a mão", 
                    "jogada contiver um {C:attention}Straight{}",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +60 Fichas)",
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Ganha {C:chips}+#2#{} Fichas se a mão", 
                    "jogada contiver um {C:attention}Straight{}",
                    "Aumento de Fichas sobe em {C:chips}+1{} cada vez",
                    "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                } 
            },
			--This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:mult,C:white} X#1# {} Mult na {C:attention}última mão{} da rodada",
                    "{C:inactive,s:0.8}(Evolui após acionar {C:attention,s:0.8}#2#{C:inactive,s:0.8} vezes)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Rei{C:inactive,s:0.8})"
                } 
            },
			-- not used currently
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:mult,C:white} X#1# {} Mult na {C:attention}última mão{} da rodada",
                    "{C:green}#3# em #4#{} chance de criar",
                    "uma carta {C:attention}Pedra do Rei{} no",
                    "final da rodada {C:inactive,s:0.8}(É necessário espaço){}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas ou com uma {C:attention,s:0.8}Pedra do Rei{} {C:inactive,s:0.8}carta)"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} Mult por mão jogada",
                    "{C:inactive,s:0.8}(Reinicia no final da rodada)",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} Mult por mão jogada",
                    "{C:inactive,s:0.8}(reinicia quando {C:attention,s:0.8}Blind Chefe{C:inactive,s:0.8} é derrotado)",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Cartas {C:attention}Aço{} jogadas",
                    "dão {X:mult,C:white}X#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Cartas {C:attention}Aço{} jogadas dão {X:mult,C:white}X#1#{} Mult",
                    "mais {X:mult,C:white}X#2#{} Mult para cada",
                    "Coringa {X:metal,C:white}Metálico{} adjacente",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Trovão{C:inactive,s:0.8})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Segurando {C:item}Alho-poró{}",
                    "{C:green}#2# em #3#{} chance de ganhar {C:money}$#1#",
                    "quando um {C:attention}Consumível{} é usado",
                    "{C:money}${} garantido ao usar {C:attention}Alho-poró{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "Primeiras {C:attention}2{} cartas de {C:attention}face{} jogadas",
                    "dão {C:mult}+#1#{} Mult quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',
                text = {
                    "Primeiras {C:attention}3{} cartas de {C:attention}face{} jogadas",
                    "dão {C:mult}+#1#{} Mult quando pontuadas",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Se a mão de pontuação for ",
                    "{C:attention}exatamente 3 cartas de face{} ganha",
                    "{C:attention}+#2#{} tamanho de mão esta rodada"
                    
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# em #2#{} chance de adicionar um",
                    "{C:attention}selo{} aleatório à primeira carta pontuada",
                    "na {C:attention}primeira mão{} da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Adiciona um {C:attention}selo{} aleatório à",
                    "carta pontuada mais à esquerda na",
                    "{C:attention}primeira mão{} da rodada",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult se tamanho do baralho > {C:attention}#3#{}",
                    "Adiciona uma carta de jogo aleatória",
                    "ao baralho no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult por carta acima de {C:attention}#2#{} no seu baralho",
                    "{br:4}ERRO - CONTATE STEAK",
                    "No final da rodada, remove {C:attention}1{} carta aleatória",
                    "do baralho então adiciona {C:attention}2{} cartas aleatórias",
                    "{C:inactive}(Atualmente {C:mult}+#3#{} {C:inactive}Mult){}"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Se a mão tiver {C:attention}5{} cartas pontuadas,",
                    "cada uma tem {C:green}#1# em #2#{} chance",
                    "de {C:attention}reativar{}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Água{C:inactive,s:0.8})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Se a mão tiver {C:attention}5{} cartas pontuadas,",
                    "cada uma tem {C:green}#1# em #2#{} chance",
                    "de {C:attention}reativar{}",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# em #2#{} chance de {C:attention}substituir{} a",
                    "edição de um {C:attention}Coringa{} aleatório por",
                    "{C:dark_edition}Negativa{} no final da rodada",
                    "{S:1.1,C:red,E:2}autodestrói{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# em #2#{} chance de {C:attention}substituir{} a",
                    "edição de um {C:attention}Coringa{} aleatório por",
                    "{C:dark_edition}Negativa{} no final da rodada",
                    "{S:1.1,C:red,E:2}autodestrói{}",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:attention}Substitui{} a edição de um",
                    "{C:attention}Coringa{} aleatório por",
                    "{C:dark_edition}Negativa{} em {C:dark_edition}#1#{} rodadas",
                    "{C:inactive,s:0.8}(Gengar escolhe um novo número!){}",
                    "{C:inactive,s:0.8}(Exclui Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "Cria uma {C:dark_edition}Negativa{} {C:attention}tag{} quando",
                    "{C:attention}Small Blind{} ou {C:attention}Big Blind{} é selecionado",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "A carta pontuada mais à esquerda da",
                    "{C:attention}primeira mão{} da rodada",
                    "se torna uma carta {C:attention}Pedra{}",
                    "{C:inactive,s:0.8}(Evolui com um adesivo {C:metal,s:0.8}Metálico{C:inactive,s:0.8})"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{X:mult,C:white}X#2#{} Mult por carta",
                    "{C:planet}Planeta{} única usada nesta partida",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após jogar {C:planet,s:0.8}#3#{C:inactive,s:0.8} cartas planeta únicas)",
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Segurando {C:spectral}Transe{}",
                    "{X:mult,C:white}X#2#{} Mult por carta",
                    "{C:planet}Planeta{} única usada nesta partida",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Cartas de {C:attention}face{} jogadas dão",
                    "{C:chips}+#1#{} Fichas quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Todas as cartas de {C:attention}face{} jogadas dão",
                    "{C:chips}+#1#{} Fichas quando pontuadas e se tornam",
                    "cartas {C:attention}Bônus{} se não aprimoradas",
                } 
            },
			j_poke_voltorb = {
                name = 'Voltorb',
                text = {
                    "{C:attention}Volátil Direito{}",
                    "{X:mult,C:white} X#1# {} Mult então",
                    "nerfa a si mesmo esta rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',
                text = {
                    "{C:attention}Volátil Direito{}",
                    "{X:mult,C:white} X#1# {} Mult e ganhe {C:money}$#2#{}",
                    "então nerfa a si mesmo esta rodada"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',
                text = {
                    "Cartas {C:hearts}#2#{} jogadas dão",
                    "{C:mult}+#1#{} Mult quando pontuadas",
                    "{C:green}#4# em #5#{} chance de",
                    "{C:mult}+#3#{} Mult em vez disso",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Folha{C:inactive,s:0.8})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',
                text = {
                    "Cartas {C:hearts}#3#{} jogadas dão",
                    "{C:mult}+#1#{} Mult quando pontuadas",
                    "{C:green}#4# em #5#{} chance de",
                    "{X:mult,C:white}X#2#{} Mult em vez disso",
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',
                text = {
                    "{C:attention}Segurando {C:item}Clube Grosso{}",
                    "Dá {C:mult}+#1#{} Mult para",
                    "cada {C:attention}consumível segurado{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Clubes Grossos{C:inactive,s:0.8} contam como double){}",
                    "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após usar {C:attention,s:0.8}#3#{C:inactive,s:0.8} consumíveis)",
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',
                text = {
                    "{C:attention}+#2#{} slots de consumível",
                    "Dá {X:mult,C:white} X#1# {} Mult para",
                    "cada {C:attention}consumível segurado{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Clubes Grossos{C:inactive,s:0.8} contam como double){}",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#3# {C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',
                text = {
                    "{X:mult,C:white}X#1#{} Mult para cada carta",
                    "abaixo de {C:attention}#2#{} no seu baralho completo",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',
                text = {
                    "{X:mult,C:white}X#1#{} Mult para cada carta",
                    "acima de {C:attention}#2#{} no seu baralho completo",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',
                text = {
                    "Primeiro e segundo {C:attention}Valete{} jogados",
                    "dão {X:mult,C:white} X#1# {} Mult quando pontuados",
                    "{C:inactive,s:0.8}(Evolui após acionar {C:attention,s:0.8}#2#{C:inactive,s:0.8} vezes)",
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',
                text = {
                    "Venda esta carta para reduzir o",
                    "requisito de pontuação do",
                    "{C:attention}Blind Chefe{} atual pela {C:attention}metade{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',
                text = {
                    "Venda esta carta para {C:attention}desativar{} o",
                    "{C:attention}Blind Chefe{} atual e reduzir",
                    "o requisito de pontuação pela {C:attention}metade{}",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',
                text = {
                    "Cada carta {C:attention}Pedra{} jogada",
                    "ganha permanentemente",
                    "{C:chips}+#1#{} Fichas quando pontuada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',
                text = {
                    "Cada carta {C:attention}Pedra{} jogada ganha",
                    "permanentemente {C:chips}+#1#{} Fichas quando pontuada",
                    "{br:4}ERRO - CONTATE STEAK",
                    "Reativa a {C:attention}primeira{} carta {C:attention}Pedra{} pontuada",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',
                text = {
                    "As primeiras {C:attention}#1#{C:inactive} [#2#]{} vezes que uma carta {C:attention}Sortuda{} aciona",
                    "cada rodada, adiciona uma cópia permanente ao",
                    "seu baralho e a compra para a {C:attention}Mão{}",
                    "{C:inactive,s:0.8}(Evolui quando baralho tem >= 25% de cartas {C:attention,s:0.8}Sortudas{C:inactive,s:0.8})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',
                text = {
                    "Cartas {C:attention}Wild{} jogadas dão",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas ou {C:money}$#3#{}",
                    "{C:green}#4# em #5#{} chance para {C:attention}todos os três{}",
                    "{C:inactive,s:0.8}(Evolui após pontuar {C:attention,s:0.8}#6# Cartas Wild{C:inactive,s:0.8})"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',
                text = {
                    "{C:attention}+#1#{} slots de consumível",
                    "{C:mult}-$#2#{} limite de juros",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',
                text = {
                    "{C:attention}Reativa{} todas as cartas jogadas",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Cria uma {C:attention}Tag Dupla{} no",
                    "final da rodada se pelo menos",
                    "{C:attention}#1# Consumíveis{} usados esta rodada",
                    "{C:inactive}(Atualmente {C:attention}#2#{C:inactive} Consumíveis usados)"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',
                text = {
                    "Ganha {C:mult}+#2#{} Mult",
                    "para cada {C:attention}6{}",
                    "na mão de pontuação",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +12 Mult)",
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',
                text = {
                    "Ganha {C:mult}+#2#{} Mult para cada {C:attention}6{} pontuado",
                    "Dobrado se um {C:attention}Rei{} estiver segurado na mão",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com um adesivo {C:dragon,s:0.8}Dragão{C:inactive,s:0.8})"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',
                text = {
                    "Reativa cada carta {C:attention}Ouro{}",
                    "segurada na mão {C:attention}#1#{} vez",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',
                text = {
                    "Reativa cada carta {C:attention}Ouro{}",
                    "segurada na mão {C:attention}#1#{} vezes",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',
                text = {
                    "Cartas {C:diamonds}#2#{} jogadas dão",
                    "{C:mult}+#1#{} Mult e {C:money}$#3#{} quando pontuadas",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Água{C:inactive,s:0.8})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',
                text = {
                    "Cartas {C:diamonds}#3#{} jogadas dão",
                    "{C:mult}+#1#{} Mult e {C:money}$#2#{} quando pontuadas",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',
                text = {
                    "Reativa a carta mais à esquerda",
                    "segurada na mão {C:attention}#1#{} vezes"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',
                text = {
                    "Quando Blind é selecionado, destrói Coringa",
                    "à direita e ganha {C:mult}+#2#{} Mult",
                    "Ganha {C:dark_edition}Foil{}, {C:dark_edition}Holográfico{} ou {C:dark_edition}Policromático{}",
                    "se era {C:rare}Raro{} ou superior",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com um adesivo {C:metal,s:0.8}Metálico{C:inactive,s:0.8} ou uma {C:attention,s:0.8}Pedra Dura{C:inactive,s:0.8})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',
                text = {
                    "Quando {C:attention}Blind{} é selecionado,",
                    "ganha {C:attention}+#1#{} tamanho de mão se",
                    "tamanho do baralho >= {C:attention}#2#{}",
                    "{br:4}ERRO - CONTATE STEAK",
                    "{C:attention}Cartas de jogo{} adicionadas ao",
                    "seu baralho são {C:attention}duplicadas{}",
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',
                text = {
                    "Ganha {C:money}$#1#{} de {C:attention}valor de venda{} quando uma carta",
                    "é vendida e no final da rodada",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "Ganhe {C:attention}#2#%{} do valor de venda deste Coringa",
                    "no final da rodada {C:inactive}(arredondado para cima){}",
                    "{C:inactive}(Atualmente ganha {C:money}$#3#{C:inactive}/$#4# Máx)",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',
                text = {
                    "Se o {C:attention}primeiro descarte{} da rodada tiver apenas",
                    "{C:attention}1{} carta, destrói-a e ganha {C:mult}+#2#{} Mult",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Mult se uma carta pontuada",
                    "tem o {C:attention}mesmo rank{} que",
                    "uma carta {C:attention}segurada na mão{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Cartas {C:attention}não aprimoradas{} jogadas",
                    "dão {X:mult,C:white} X#1# {} Mult quando pontuadas",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Líder)',
                text = {
                    "Coringas {C:attention}Tauros{} e {C:attention}Miltank{}",
                    "dão {X:mult,C:white} X#1# {} Mult cada",
                    "{br:4}ERRO - CONTATE STEAK",
                    "Rerolls têm {C:green}#2# em #3#{} chance",
                    "de adicionar um {C:attention}Tauros (Rebanho){} à loja",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Rebanho)',
                text = {
                    "{C:mult}+#1#{} Mult",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "{C:chips}+#2#{} Ficha",
                    "Aplica {C:attention}Respingo{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{br:1.5}ERRO - CONTATE STEAK",
                    "Desativa efeito de",
                    "cada {C:attention}Blind Chefe{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} Fichas para cada",
                    "{C:attention}Blind{} pulado nesta partida",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Visita a {C:attention}loja{}",
                    "após pular",
                    "{C:inactive}(Atualmente {C:chips}+#1# {C:inactive}Fichas)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "{C:attention}Transforma-se{} no Coringa mais à esquerda",
                    "com {C:attention}Perishable{}",
                    "e um adesivo {C:colorless}Incolor{}",
                    "no final da loja",
                    "{C:inactive,s:0.8}(Exclui Dittos)",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "{C:inactive,s:0.8}(Evolui com...muito)",
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Cada {C:attention}carta{} jogada",
                    "ganha permanentemente",
                    "{C:chips}+#1#{} Fichas quando pontuada",
                    "{C:attention}Dobrado{} para cartas {C:attention}Bônus{}"
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Ganhe {C:money}$#1#{} para cada",
                    "carta {C:attention}Ouro{} descartada",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Primeira carta {C:attention}Mult{}",
                    "{C:attention}segurada{} na mão", 
                    "dá {X:mult,C:white} X#1# {} Mult"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Limite de Energia",
                    "Cria uma carta {C:pink}Energia{} quando",
                    "qualquer {C:attention}Pacote de Reforço{} é aberto",
                    "{C:inactive,s:0.8}(Evolui com uma {C:metal,s:0.8}Melhoria{C:inactive,s:0.8})",
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Antigo #1#s{}",
                    "{X:attention,C:white}1+{} : Cria uma carta {C:tarot}Tarot{}",
                    "{X:attention,C:white}2+{} : Ganhe {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Cria uma carta {C:item}Item{} {C:inactive,s:0.7}(Acione {C:attention,s:0.7}#3#{C:inactive,s:0.7} vezes para evoluir)",
                    "{C:inactive,s:0.8}(É necessário espaço)",
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Antigo #1#s{}",
                    "{X:attention,C:white}1+{} : Cria uma carta {C:tarot}Tarot{}",
                    "{X:attention,C:white}2+{} : Ganhe {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Cria uma carta {C:item}Item{}",
                    "{C:inactive,s:0.8}(É necessário espaço)",
                    "{X:attention,C:white}4+{} : Cria uma {C:attention}tag{} uma vez por rodada{C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Antigo #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Fichas",
                    "{X:attention,C:white}2+{} : {}Cartas {C:attention}#1#s{} pontuadas ganham permanentemente {C:chips}+#3#{} Fichas",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Fichas {C:inactive,s:0.8}(Acione {C:attention,s:0.8}#5#{C:inactive,s:0.8} vezes para evoluir)",
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Antigo #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Fichas",
                    "{X:attention,C:white}2+{} : {}Cartas {C:attention}#1#s{} pontuadas ganham permanentemente {C:chips}+#3#{} Fichas",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Fichas",
                    "{X:attention,C:white}4+{} : {}Reativa todos os {C:attention}#1#s{} jogados",
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Antigo #1#s{}",
                    "{X:attention,C:white}1+{} : {X:mult,C:white}X#2#{} Mult",
                    "{X:attention,C:white}2+{} : Ganha {X:mult,C:white}X#3#{} Mult",
                    "{X:attention,C:white}3+{} : O primeiro {C:attention}#1#{} não aprimorado pontuado",
                    "se torna uma carta {C:attention}Vidro{}",
                    "{X:attention,C:white}4+{} : {C:attention}Dobra{} o {X:mult,C:white}X{} Mult deste Coringa",
                    "{C:inactive}(Reinicia no final da rodada){}",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "{C:attention}#1#s{} jogados dão {X:mult,C:white} X#2# {} Mult para cada",
                    "{C:attention}#1#{} na mão jogada quando pontuados",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "{C:green}#3# em #4#{} chance para cada",
                    "{C:attention}#1#{} jogado ser destruído",
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "{C:attention}Segurando {C:item}Sobras{}",
                    "No final da rodada ganha {X:mult,C:white}X#1#{} Mult",
                    "para cada {C:attention}Sobras{} que você tem",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#2# {C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Adiciona {C:attention}Foil{} e um {C:attention}selo{}",
                    "à carta pontuada mais à esquerda",
                    "na mão jogada"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Mult para",
                    "cada {C:money}$#2#{} que você tem",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Melhora a primeira {C:attention}mão de poker{}",
                    "descartada cada rodada",
                    "em {C:attention}3{} níveis"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Ganha {C:mult}+#2#{} Mult",
                    "se a mão jogada tiver",
                    "{C:attention}#3#{} ou menos cartas",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +#4# Mult)",
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Ganha {C:mult}+#2#{} Mult",
                    "se a mão jogada tiver",
                    "{C:attention}#3#{} ou menos cartas",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +#4# Mult)",
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{br:1.6}ERRO - CONTATE STEAK",
                    "Reativa carta jogada {C:attention}#2#{} vezes",
                    "se a mão jogada for",
                    "exatamente {C:attention}1{} carta"
                } 
            },
			j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "Quando {C:attention}Blind Chefe{} é derrotado, cria uma",
                    "{C:dark_edition}Policromática{} {C:attention}cópia{} do Coringa mais à",
                    "{C:attention}esquerda{} e {C:pink}Energiza{} a {C:attention}cópia{}",
                    "então destrói o Coringa mais à {C:attention}esquerda{}",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Coringas {C:dark_edition}Policromáticos{} dão {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Não pode destruir a si mesmo)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtwo X",
                text = {
                    "Todos os Coringas dão {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtwo Y",
                text = {
                    "{C:pink}Energiza{} o coringa mais à esquerda {C:attention}duas vezes{}",
                    "no final da loja",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:pink}+1{} Limite de Energia quando",
                    "{C:attention}Blind Chefe{} é derrotado",
                    "{C:inactive}(Não pode {C:pink}Energizar{C:inactive} a si mesmo)",
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "No final da {C:attention}loja{},",
                    "cria uma carta {C:dark_edition}Negativa{} {C:tarot}Tarot{},",
                    "{C:spectral}Espectral{} ou {C:item}Item{}",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{C:green}#1#%{} chance de criar um",
                    "Coringa {C:dark_edition}Negativo{} {C:attention}em vez disso{}",
                    "{C:inactive,s:0.8}(Chances não podem ser aumentadas){}",
                } 
            },
            j_poke_chikorita = {
                name = 'Chikorita',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Cada carta {C:attention}segurada{} na mão",
                    "além da {C:attention}quarta{} ganha",
                    "{C:money}$#2#{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_bayleef = {
                name = 'Bayleef',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Cada carta {C:attention}segurada{} na mão",
                    "além da {C:attention}segunda{} ganha",
                    "{C:money}$#2#{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_meganium = {
                name = 'Meganium',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Cada carta {C:attention}segurada na mão{}",
                    "ganha {C:money}$#2#{} no final da rodada",
                }
            },
            j_poke_cyndaquil = {
                name = 'Cyndaquil',
                text = {
                    "{C:red}+#1#{} descarte",
                    "{C:mult}+#2#{} Mult para cada",
                    "{C:attention}descarte{} restante",
                    "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_quilava = {
                name = 'Quilava',
                text = {
                    "{C:red}+#1#{} descarte",
                    "{C:mult}+#2#{} Mult para cada",
                    "{C:attention}descarte{} restante",
                    "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_typhlosion = {
                name = 'Typhlosion',
                text = {
                    "{C:red}+#1#{} descarte",
                    "{C:mult}+#2#{} Mult e {X:mult,C:white} X#3# {} Mult para",
                    "cada {C:attention}descarte{} restante",
                    "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult e {X:mult,C:white} X#5# {C:inactive} Mult)",
                }
            },
            j_poke_totodile = {
                name = 'Totodile',
                text = {
                    "{C:blue}+#1#{} mão",
                    "{C:chips}+#2#{} Fichas para cada carta",
                    "jogada esta rodada",
                    "{C:inactive}(Atualmente {C:chips}+#3#{C:inactive} Fichas)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#4#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_croconaw = {
                name = 'Croconaw',
                text = {
                    "{C:blue}+#1#{} mão",
                    "{C:chips}+#2#{} Fichas para cada carta",
                    "jogada esta rodada",
                    "{C:inactive}(Atualmente {C:chips}+#3#{C:inactive} Fichas)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#4#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_feraligatr = {
                name = 'Feraligatr',
                text = {
                    "{C:blue}+#1#{} mão",
                    "{C:chips}+#2#{} Fichas para cada carta",
                    "jogada esta rodada",
                    "{C:inactive}(Atualmente {C:chips}+#3#{C:inactive} Fichas)",
                }
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "{C:mult}+#2#{} Mult por",
                    "mão {C:attention}consecutiva{} jogada que",
                    "não é a última mão jogada",
                    "{C:inactive}(Última mão: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / +15 Mult)",
                }
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} Mult quando a mão jogada",
                    "não é a última mão jogada",
                    "{C:inactive}(Última mão: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult)",
                }  
            },
            j_poke_hoothoot = {
                name = 'Hoothoot',
                text = {
                    "{C:purple}+#1# Previsão",
                    "Cada carta {C:attention}Prevista{}",
                    "dá suas fichas totais",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Previsão",
                    "Cada carta {C:attention}Prevista{}",
                    "dá suas fichas totais",
                }
            },
            j_poke_ledyba = {
                name = "Ledyba",
                text = {
                  "{C:mult}+#1#{} Mult para cada {C:attention}5{} cartas",
                  "restantes no baralho",
                  "{C:inactive}(Atualmente {C:mult}+#3#{C:inactive} Mult)",
                  "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
                }
            },
            j_poke_ledian = {
                name = "Ledian",
                text = {
                  "{C:mult}+#1#{} Mult para cada {C:attention}3{} cartas",
                  "restantes no baralho",
                  "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_poke_spinarak = {
                name = "Spinarak",
                text = {
                  "{C:chips}+#1#{} Fichas",
                  "{C:green}#2# em #3#{} para {C:chips}+#5#{} Fichas em vez disso",
                  "{C:inactive,s:0.8}(Evolui após {C:attention}#4#{C:inactive} rodadas)",
                }
            },
            j_poke_ariados = {
              name = "Ariados",
              text = {
                "{C:chips}+#1#{} Fichas",
                "{C:green}#2# em #3#{} para {C:chips}+#4#{} Fichas em vez disso",
              }
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "Ganha {C:chips}+#4#{} por cartas {C:attention}Bônus{} / {C:attention}Pedra{} pontuadas",
                    "{C:mult}+#2#{} por cartas {C:attention}Mult{} / {C:attention}Wild{} pontuadas",
                    "{X:mult,C:white}X#6#{} por cartas {C:attention}Aço{} / {C:attention}Vidro{} pontuadas",
                    "{C:money}$#8#{} por cartas {C:attention}Ouro{} / {C:attention}Sortuda{} pontuadas",
                    "Então {C:attention}Randomiza{} {C:dark_edition}Aprimoramentos{} da carta pontuada",
                    "{C:inactive}(Atualmente {C:chips}+#3#{}, {C:mult}+#1#{}, {X:mult,C:white}X#5#{}, {C:money}$#7#{C:inactive} final da rodada)"
                } 
            },
            j_poke_chinchou = {
                name = "Chinchou",
                text = {
                  "Dá {C:chips}+#1#{} Fichas e ganha {C:money}$#2#{}",
                  "se a mão de pontuação contiver um {C:attention}Par",
                  "{C:inactive}(Evolui após {C:attention}#3#{C:inactive} rodadas)",
                }
            },
            j_poke_lanturn = {
                name = "Lanturn",
                text = {
                  "Dá {C:chips}+#1#{} Fichas e ganha {C:money}$#2#{}",
                  "se a mão de pontuação contiver um {C:attention}Par",
                  "{br:3}ERRO - CONTATE STEAK",
                  "{C:chips}+#3#{} Fichas extra por Coringa {X:water,C:white}Água{}",
                  "{C:money}$#4#{} extra por Coringa {X:lightning,C:black}Raio{}",
                  "{C:inactive}(Atualmente {C:chips}+#6#{C:inactive} Fichas e {C:money}$#5#{C:inactive})"
                }
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#2# {} Mult",
                    "Ganhe {C:money}$#1#{} no",
                    "final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma cópia {C:dark_edition}Negativa{} de",
                    "{C:attention}A Lua{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma cópia {C:dark_edition}Negativa{} de",
                    "{C:attention}O Mundo{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_togepi = {
                name = 'Togepi',
                text = {
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_togetic = {
                name = 'Togetic',
                text = {
                    "{C:attention}Cartas Sortudas{} têm",
                    "{C:green}#1# em #2#{} chance de dar {C:chips}+#4#{} Fichas",
                    "e {C:green}#1# em #3#{} chance de dar {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive,s:0.8}(Evolui com uma carta {C:attention,s:0.8}Pedra Brilhante{C:inactive,s:0.8})"
                }
            },
            j_poke_natu = {
                name = 'Natu',
                text = {
                    "Cartas {C:planet}Planeta{} dão um nível extra",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_xatu = {
                name = 'Xatu',
                text = {
                    "Cartas {C:planet}Planeta{} dão um nível extra",
                    "{C:planet}Pacotes Celestiais{} contêm toda carta {C:planet}Planeta{}",
                }
            },
            j_poke_mareep = {
                name = "Mareep",
                text = {
                  "Ganha {X:mult,C:white}X#2#{} Mult quando uma ou mais",
                  "{C:attention}cartas de jogo{} são {C:attention}adicionadas{} ao baralho",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Perde {X:mult,C:white}X#3#{} Mult quando uma ou mais",
                  "{C:attention}cartas de jogo{} são {C:attention}destruídas",
                  "{C:inactive}(Evolui em {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_flaaffy = {
                name = "Flaaffy",
                text = {
                  "Ganha {X:mult,C:white}X#2#{} Mult quando uma ou mais",
                  "{C:attention}cartas de jogo{} são {C:attention}adicionadas{} ao baralho",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Perde {X:mult,C:white}X#3#{} Mult quando uma ou mais",
                  "{C:attention}cartas de jogo{} são {C:attention}destruídas",
                  "{C:inactive}(Evolui em {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_ampharos = {
                name = "Ampharos",
                text = {
                  "Ganha {X:mult,C:white}X#2#{} Mult quando uma ou mais",
                  "{C:attention}cartas de jogo{} são {C:attention}adicionadas{} ao baralho",
                  "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_mega_ampharos = {
                name = "Mega Ampharos",
                text = {
                  "{X:mult,C:white} X#1# {} Mult",
                  "Quando Blind é selecionado, aumenta",
                  "tamanho de mão para {C:attention}metade{} do seu",
                  "tamanho do baralho então perde todos",
                  "descartes e todas exceto {C:attention}1{} mão",
                  "{C:inactive}(arredondado para cima, atualmente {C:attention}#2#{C:inactive})"
                }
            },
            j_poke_marill = {
                name = 'Marill',
                text = {
                    "{X:mult,C:white}X#2#{} Mult se a mão jogada",
                    "contiver uma carta {C:attention}não aprimorada{} pontuada",
                    "e uma carta {C:attention}aprimorada{} pontuada",
                    "{C:inactive,s:0.8}(Evolui após pontuar {C:attention,s:0.8}#1# Cartas Bônus{C:inactive,s:0.8})",
                }
            },
            j_poke_azumarill = {
                name = 'Azumarill',
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Dá {X:mult,C:white}X{} Mult dobrado se a mão jogada",
                    "contiver uma carta {C:attention}não-Bônus{} pontuada",
                    "e uma carta {C:attention}Bônus{} pontuada"
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "Reativa todas as cartas de {C:attention}face{}",
                  "{C:attention}jogadas{} e {C:attention}seguradas{}",
                }
            },
            j_poke_weird_tree = {
                name = "Árvore Estranha",
                text = {
                  "{C:attention}Modificador de Tipo: {X:grass,C:white}Grama{}",
                  "{C:}Transforma-se{} no final da rodada",
                  "se este Coringa não for",
                  "do tipo {X:grass,C:white}Grama{} ou você",
                  "tiver um tipo {X:water,C:white}Água{}"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Cartas jogadas com rank {C:attention}Ímpar{}",
                    "dão {C:mult}+#1#{} Mult ou se tornam",
                    "cartas {C:attention}Wild{} quando pontuadas",
                    "Se já for {C:attention}Wild{}, adiciona edição {C:dark_edition}Foil{},",
                    "{C:dark_edition}Holográfica{} ou {C:dark_edition}Policromática{}"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Cartas {V:1}#2#{} jogadas dão {C:mult}+#1#{} Mult quando pontuadas",
                    "{br:5}ERRO - CONTATE STEAK",
                    "Reativa cartas {V:1}#2#{} baseado em",
                    "quantos Coringas {X:water,C:white}Água{} você tem",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{C:inactive,s:0.8} Reativação(ões) divididas igualmente entre cartas pontuadas){}",
                    "{s:0.8}Naipe cicla após pontuar {C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                } 
            },
            j_poke_hoppip = {
                name = 'Hoppip',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Primeiras duas {C:attention}cartas descartadas{} se tornam {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}autodestrói-se{} ao descartar",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Primeiras três {C:attention}cartas descartadas{} se tornam {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}autodestrói-se{} ao descartar",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "Todas as {C:attention}cartas descartadas{} se tornam {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}autodestrói-se{} ao descartar",
                }
            },
            j_poke_aipom = {
              name = "Aipom",
              text = {
                "{C:attention}-#3#{} limite de seleção de carta",
                "{C:inactive}(limites de jogar/descartar)",
                "{br:2}ERRO - CONTATE STEAK",
                "Todos os {C:attention}Flushes{} e {C:attention}Straights{} podem",
                "ser feitos com {C:attention}3{} cartas",
                "{C:inactive,s:0.8}(Evolui após jogar {C:attention,s:0.8}#1#{C:inactive,s:0.8} Straights e {C:attention,s:0.8}#2#{C:inactive,s:0.8} Flushes){}"
              }
            },
            j_poke_sunkern = {
                name = 'Sunkern',
                text = {
                    "Ganhe {C:money}$#1#{} quando {C:attention}Blind{} é selecionado",
                    "e quando mão é {C:attention}jogada{}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Sol{C:inactive,s:0.8})"
                }
            },
            j_poke_sunflora = {
                name = 'Sunflora',
                text = {
                    "Ganhe {C:money}$#1#{} quando {C:attention}Blind{} é selecionado,",
                    "mão é {C:attention}jogada{}, mão é {C:attention}descartada{},",
                    "consumível é {C:attention}usado{} e no final da rodada",
                }
            },
            j_poke_wooper = {
                name = "Wooper",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#3#{} Mult para cada carta de {C:attention}face{}",
                  "restante no {C:attention}baralho",
                  "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult)",
                  "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
                }
            },
            j_poke_quagsire = {
                name = "Quagsire",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#2#{} Mult para cada carta de {C:attention}face{}",
                  "restante no {C:attention}baralho",
                  "{C:inactive}(Atualmente {C:mult}+#3#{C:inactive} Mult)",
                }
            },
            j_poke_yanma = {
              name = "Yanma",
              text = {
                "Cada {C:attention}3{} ou {C:attention}6{} jogado dá",
                "{C:chips}+#2#{} Fichas e {C:mult}+#1#{} Mult quando pontuado",
                "{C:green}#5# em #6#{} chance para {C:chips}+#4#{} Fichas",
                "e {C:mult}+#3#{} Mult em vez disso",
                "{C:inactive,s:0.8}(Evolui após pontuar {C:attention,s:0.8}#7#{C:inactive,s:0.8} 3s ou 6s)"
              }
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "{C:attention}Reativa{} cada {C:attention}#3#{} jogado",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Cada carta {V:1}#4#{} pontuada",
                    "dá {X:mult,C:white}X#2#{} Mult",
                    "{C:inactive,s:0.7}Rank e Naipe mudam toda rodada{}"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Diminui nível da",
                    "{C:attention}#1#{} descartada",
                    "e adiciona à",
                    "{C:attention}mão de poker{} mais jogada",
                    "{C:inactive,s:0.7}Mão muda toda rodada{}"
                } 
            },
            j_poke_murkrow = {
              name = "Murkrow",
              text = {
                "{X:mult,C:white} X#1# {} Mult para cada",
                "Coringa {X:dark,C:white}Trevas{} que você tem",
                "{C:inactive}(Atualmente {X:mult,C:white} X#2#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Crepúsculo{C:inactive,s:0.8})"
              }
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "{C:attention}Reis{} jogados dão",
                    "{X:mult,C:white}X#1#{} Mult quando pontuados",
                    "Aumenta em {X:mult,C:white}X#2#{} Mult",
                    "quando mão é jogada",
                    "{C:inactive,s:0.8}(Reinicia no final da rodada)",
                }
            },
            j_poke_misdreavus = {
                name = 'Misdreavus',
                text = {
                    "Cartas de {C:attention}face{} jogadas perdem permanentemente",
                    "até {C:chips}#1#{} Fichas quando pontuadas",
                    "Ganha as Fichas perdidas",
                    "{C:inactive}(Atualmente {C:chips}+#2#{C:inactive} Fichas)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Crepúsculo{C:inactive,s:0.8})",
                }
            },
			j_poke_unown = {
                name = "Unown",
                text = {
                  "{C:attention}Natureza:{} {C:inactive}({C:attention}#2#{C:inactive})",
                  "{C:mult}+#1#{} Mult se a mão pontuada",
                  "contiver uma carta {C:attention}Natureza{}",
                  "{br:2}ERRO - CONTATE STEAK",
                  "{S:1.1,C:red,E:2}autodestrói{} no final da rodada",
                }
            },
            j_poke_wobbuffet = {
              name = "Wobbuffet",
              text = {
                "Reativa cada",
                "{C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} ou {C:attention}10{} jogado",
                "{br:2}ERRO - CONTATE STEAK",
                "{C:attention}Volátil à Esquerda{}",
                "Quando uma blind é selecionada",
                "adiciona {C:attention}Eterno{} ao Joker mais à direita",
              }
            },
            j_poke_girafarig = {
              name = "Girafarig",
              text = {
                "Primeira e última carta {C:attention}face{}",
                "dão {X:mult,C:white}X#1#{} Mult quando pontuadas",
                "se a mão jogada contiver um {C:attention}Dois Pares{}",
                "{C:inactive,s:0.8}(Evolui após usar uma {C:attention,s:0.8}Morte{C:inactive,s:0.8} em {C:attention,s:0.8}2{C:inactive,s:0.8} cartas face){}"
              }
            },
            j_poke_pineco = {
              name = "Pineco",
              text = {
                "{C:attention}Volátil à Esquerda{}",
                "{C:chips}+#1#{} Fichas e depois",
                "se debuffa nesta rodada",
                "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
              }
            },
            j_poke_forretress = {
              name = "Forretress",
              text = {
                "{C:attention}Volátil à Esquerda{}",
                "{C:chips}+#1#{} Fichas e depois",
                "se debuffa nesta rodada",
                "Dá {C:attention}Dobro{} de Fichas se uma",
                "carta {C:attention}Aço{} for {C:attention}segurada{} na mão",
              }
            },
            j_poke_dunsparce = {
                name = 'Dunsparce',
                text = {
                  "{C:inactive}Não faz nada...?",
                  "{S:1.1,C:red,E:2}autodestrói{} no final da loja",
                  "se você {C:green}Rerrolar{}",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_gligar = {
                name = 'Gligar',
                text = {
                    "Cartas jogadas dão {X:mult,C:white}X#1#{} Mult",
                    "para cada {V:1}#2#{} {C:attention}segurado{} na mão",
                    "{C:inactive, s:0.8}(Naipe muda a cada rodada)",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Crepúsculo{C:inactive,s:0.8})",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "A carta de pontuação mais à esquerda",
                    "da {C:attention}primeira mão{} da rodada vira uma carta {C:attention}Aço{}",
                    "{br:4}ERRO - CONTATE STEAK",
                    "Cartas {C:attention}Pedra{} {C:attention}seguradas na mão{} viram {C:attention}Aço{}"
                }
            },
            j_poke_mega_steelix = {
                name = "Mega Steelix",
                text = {
                  "Ganhe {C:money}$#1#{} para cada {C:diamonds}#2#{} no seu",
                  "{C:attention}baralho completo{} no final da rodada",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Cartas {C:attention}Aço{} que não são {C:diamonds}#2#{}",
                  "{C:attention}seguradas{} na mão viram {C:diamonds}#3#{}",
                  "e então perdem seu {C:attention}aprimoramento{}",
                }
            },
            j_poke_snubbull = {
                name = 'Snubbull',
                text = {
                    "Primeira carta {C:attention}face{} jogada",
                    "dá {X:mult,C:white}X#1#{} Mult quando pontuada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_granbull = {
                name = 'Granbull',
                text = {
                    "Primeira carta {C:attention}face{} jogada",
                    "dá {X:mult,C:white}X#2#{} Mult quando pontuada se for",
                    "uma {C:attention}Rainha{} e {X:mult,C:white}X#1#{} Mult caso contrário",
                }
            },
            j_poke_qwilfish = {
                name = 'Qwilfish',
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Ganhe {C:chips}+#3#{} Fichas para cada",
                    "{C:attention}Carta de Perigo segurada{} na mão",
                    "quando a mão é jogada",
                    "{C:inactive}(Atualmente {C:chips}+#4#{C:inactive} Fichas)",
                }
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Quando Blind é selecionada, destrói o Joker",
                    "à direita e ganha {C:mult}+#4#{} Mult",
                    "Ganha {C:dark_edition}Foil{}, {C:dark_edition}Holográfico{}, ou {C:dark_edition}Policromado{}",
                    "se ele era {C:red}Raro{} ou superior",
                    "Essas edições {C:attention}acumulam{} neste Joker",
                    "{C:inactive,s:0.8}(Combina com a edição do Joker destruído, se possível){}",
                    "{C:inactive}(Atualmente {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Fichas, {X:mult,C:white}X#3#{} {C:inactive}Mult)"
                }
            },
            j_poke_mega_scizor = {
                name = "Mega Scizor",
                text = {
                  "Jokers {C:blue}Comuns{} dão {X:mult,C:white} X#1# {} Mult",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Destrói todos os Jokers {C:blue}Comuns{}",
                  "no final da rodada"
                }
            },
            j_poke_shuckle = {
                name = "Shuckle",
                text = {
                  "Quando {C:attention}Blind{} é selecionada, destrói",
                  "o {C:attention}Consumível{} mais à esquerda e",
                  "cria uma carta de {C:item}Suco de Baga{}",
                  "{C:inactive}(Não pode destruir {C:item}Suco de Baga{C:inactive})"
                }
            },
            j_poke_sneasel = {
                name = 'Sneasel',
                text = {
                    "Se a mão jogada for um único {C:attention}#1#{}",
                    "destrói-o e ganha {C:money}$#2#",
                    "{C:inactive,s:0.8}(Rank muda a cada rodada){}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Crepúsculo{C:inactive,s:0.8})",
                }
            },
            j_poke_teddiursa = {
              name = "Teddiursa",
              text = {
                "Ganha {C:mult}+#2#{} Mult quando qualquer",
                "{C:attention}Pacote de Reforços{} é pulado",
                "{C:inactive}(Evolui em {C:mult}+#1#{C:inactive} / #3# Mult)",
              }
            },
            j_poke_ursaring = {
              name = "Ursaring",
              text = {
                "Ganha {C:mult}+#2#{} Mult e",
                "cria um {C:item}Item{} quando qualquer",
                "{C:attention}Pacote de Reforços{} é pulado {C:inactive,s:0.8}(Precisa ter espaço)",
                "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Lua{C:inactive,s:0.8})",
              }
            },
            j_poke_slugma = {
              name = "Slugma",
              text = {
                "A cada {C:attention}4{} {C:inactive}[#4#]{} mãos jogadas, destrói",
                "a primeira carta {C:attention}segurada{} na mão após pontuar",
                "e este Joker ganha {C:chips}+#2#{} Fichas",
                "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / #3# Fichas)",
              }
            },
            j_poke_magcargo = {
                name = "Magcargo",
                text = {
                  "A cada {C:attention}3{} {C:inactive}[#3#]{} mãos jogadas, destrói",
                  "a primeira carta {C:attention}segurada{} na mão após pontuar",
                  "e este Joker ganha {C:chips}+#2#{} Fichas",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_swinub = {
                name = "Swinub",
                text = {
                  "Primeira carta jogada dá {C:mult}+#1#{} Mult para cada",
                  "Carta {C:attention}Pedra{} e {C:attention}Vidro{} na mão pontuada",
                  "{br:2}texto precisa estar aqui para funcionar",
                  "Chance de {C:green}#3# em #4#{} para ganhar {C:money}$#2#{} ",
                  "no final da rodada",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#5#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_piloswine = {
              name = "Piloswine",
              text = {
                "Primeira carta jogada dá {C:mult}+#1#{} Mult para cada",
                "Carta {C:attention}Pedra{} e {C:attention}Vidro{} na mão pontuada",
                "{br:2}texto precisa estar aqui para funcionar",
                "Chance de {C:green}#3# em #4#{} para ganhar {C:money}$#2#{} ",
                "no final da rodada",
                "{C:inactive,s:0.8}(Evolui após pontuar {C:attention,s:0.8}#5#{C:inactive,s:0.8} cartas de Pedra ou Vidro)",
              }
            },
            j_poke_heracross = {
                name = 'Heracross',
                text = {
                    "{X:mult,C:white} X#1# {} Mult se nenhuma carta pontuada",
                    "tiver o {C:attention}mesmo rank{} que",
                    "uma carta {C:attention}segurada na mão{}"
                }
            },
            j_poke_mega_heracross = {
                name = "Mega Heracross",
                text = {
                  "Reativa todas as cartas jogadas {C:attention}duas vezes{}",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Se debuffa nesta rodada",
                  "se você jogar ou descartar",
                  "menos de {C:attention}5{} cartas",
                  "{C:inactive}(debuffa antes de pontuar)"
                }
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "{C:mult}+#1#{} Mult para cada carta {C:attention}Aprimorada{}",
                "no seu baralho completo",
                "{br:2}ERRO - CONTATE STEAK",
                "Cria um Joker {C:attention}Básico{} {X:water,C:white}Água{} se a mão",
                "pontuada contiver {C:attention}5 cartas Aprimoradas{}",
                "{C:inactive,s:0.8}(Precisa ter espaço)",
                "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult)",
              }
            },
            j_poke_remoraid = {
              name = "Remoraid",
              text = {
                "Reativa todas as cartas",
                "na primeira mão jogada",
                "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
              }
            },
            j_poke_octillery = {
              name = "Octillery",
              text = {
                "Reativa todas as cartas jogadas",
                "{br:2}ERRO - CONTATE STEAK",
                "Se debuffa nesta rodada após pontuar",
                "se a mão pontuada não contiver um {C:attention}8{}"
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "No final da rodada",
                  "recebe um {S:1.1,C:green,E:2}Presente{}",
                  "{C:inactive,s:0.8}(Precisa ter espaço)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Ganha {C:chips}+#2#{} Fichas quando uma carta {C:attention}Ouro{}",
                  "é pontuada ou {C:attention}segurada{} na mão",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_skarmory = {
                name = 'Skarmory',
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "{X:mult,C:white}X#3#{} Mult para cada",
                    "{C:attention}Carta de Perigo segurada{} na mão",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#4#{C:inactive} Mult)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Ganha {C:mult}+#2#{} Mult para cada {C:attention}6{} pontuado",
                    "Se um {C:attention}Rei{} for segurado na mão,",
                    "ganha {X:mult,C:white}X#4#{} Mult {C:attention}em vez disso{} para cada {C:attention}6{} pontuado",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_phanpy = {
                name = "Phanpy",
                text = {
                  "Ganha {X:mult,C:white}X#2#{} Mult para cada",
                  "mão jogada {C:attention}consecutiva{}",
                  "com {C:attention}5{} cartas de pontuação",
                  "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_donphan = {
                name = "Donphan",
                text = {
                  "Ganha {X:mult,C:white}X#2#{} Mult para cada",
                  "mão jogada {C:attention}consecutiva{}",
                  "com {C:attention}5{} cartas de pontuação",
                  "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Limite de Energia",
                    "Quando qualquer {C:attention}Pacote de Reforços{} é aberto",
                    "cria uma carta de {C:pink}Energia{}",
                    "do mesmo {C:pink}Tipo{} do Joker mais à esquerda",
                    "{C:inactive,s:0.8}(Evolui com um {C:metal,s:0.8}Disco Dubioso{C:inactive,s:0.8})",
                }
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                    "{C:purple}+#1# Visão Futura ",
                    "Adiciona o rank da carta",
                    "{C:attention}Prevista{} de {C:attention}maior{} rank ao Mult",
                    "{C:inactive,s:0.8}(Evolui após ativar {C:attention,s:0.8}#2#{C:inactive,s:0.8} vezes)",
                }
            },
            j_poke_smeargle = {
                name = "Smeargle",
                text = {
                  "{C:attention}Esboça{} a habilidade do {C:attention}Joker{} à direita",
                  "quando uma blind é selecionada",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Aplica {C:attention}Joker Manchado{}",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Se a {C:attention}primeira mão ou descarte{} da rodada",
                    "tiver exatamente {C:attention}5{} cartas, uma carta aleatória é",
                    "copiada {C:inactive}(se jogada){} ou destruída {C:inactive}(se descartada){}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "Quando uma blind é selecionada",
                    "ganha {X:mult,C:white} X#3# {} Mult se",
                    "o tamanho do baralho for exatamente {C:attention}#2#{}",
                }
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma tag {C:attention}Padrão{}",
                    "quando este Joker evolui",
                    "{C:inactive}(Sim, isso vai {C:attention}reduzir{C:inactive} seu Mult)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma tag {C:attention}Cupom{}",
                    "quando este Joker evolui",
                    "{C:inactive}(Sim, isso vai {C:attention}reduzir{C:inactive} seu Mult)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "{C:red}+#2#{} descartes",
                    "{C:inactive}(Sim, isso vai {C:attention}reduzir{C:inactive} seu Mult)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_houndour = {
              name = "Houndour",
              text = {
                "Descartar mais de {C:attention}3{} cartas",
                "também descarta {C:attention}#3#{} cartas aleatórias {C:attention}seguradas{} na mão",
                "{br:2}ERRO - CONTATE STEAK",
                "Cartas descartadas ganham permanentemente {C:mult}+#1#{} Mult",
                "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
              }
            },
            j_poke_houndoom = {
              name = "Houndoom",
              text = {
                "Descartar mais de {C:attention}3{} cartas",
                "também descarta {C:attention}todas{} as cartas {C:attention}seguradas{} na mão",
                "{br:2}ERRO - CONTATE STEAK",
                "Cartas descartadas ganham permanentemente {C:mult}+#1#{} Mult",
              }
            },
            j_poke_mega_houndoom = {
                name = "Mega Houndoom",
                text = {
                  "Descartar também descarta",
                  "{C:attention}todas{} as cartas {C:attention}seguradas{} na mão",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Ganha {X:mult,C:white} X#2# {} Mult sempre que",
                  "cartas são descartadas",
                  "reinicia no final da rodada",
                  "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Mult)"
                }
            },
            j_poke_miltank = {
                name = "Miltank",
                text = {
                  "Ganhe {C:money}$#1#{} para cada",
                  "Joker {C:colorless}Incolor{} que você tem",
                  "no final da rodada",
                  "{C:inactive}(Atualmente {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "As primeiras {C:attention}#1#{C:inactive} [#2#]{} vezes que uma carta {C:attention}Sortuda{} ativa",
                    "a cada rodada, adiciona uma cópia {C:dark_edition}Policromada{} permanente ao",
                    "seu baralho e a compra para a {C:attention}Mão",
                }
            },
            j_poke_raikou = {
                name = "Raikou",
                text = {
                  "Se a primeira mão jogada for de {C:attention}1{} carta,",
                  "transforma {C:attention}3{} cartas {C:attention}seguradas{} na mão",
                  "em seu {C:attention}rank{} e ganha {C:money}$#1#{}",
                }
            },
            j_poke_entei = {
                name = "Entei",
                text = {
                  "Se o {C:attention}primeiro{} descarte for exatamente",
                  "{C:attention}4{} cartas, destrói uma delas",
                  "e ganha {X:red,C:white}X#2#{} Mult",
                  "{C:inactive}(Atualmente {X:red,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_suicune = {
                name = "Suicune",
                text = {
                  "Permanentemente {C:attention}dobra{} o total de fichas",
                  "de cada carta na mão jogada",
                  "{C:inactive}(Até {C:chips}+#1#{C:inactive} Fichas por aumento)",
                }
            },
            j_poke_larvitar = {
                name = "Larvitar",
                text = {
                  "Se a mão jogada for um {C:attention}Full House{}",
                  "cada carta jogada permanentemente ",
                  "ganha {C:chips}+#1#{} Fichas quando pontuada",
                  "{C:inactive,s:0.8}(Evolui após jogar {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full Houses)"
                }
            },
            j_poke_pupitar = {
                name = "Pupitar",
                text = {
                  "Se a mão jogada for um {C:attention}Full House{}",
                  "cada carta jogada permanentemente ",
                  "ganha {C:chips}+#1#{} Fichas quando pontuada",
                  "{C:inactive,s:0.8}(Evolui após jogar {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full Houses)"
                }
            },
            j_poke_tyranitar = {
                name = "Tyranitar",
                text = {
                  "Se a mão jogada for um {C:attention}Full House{}",
                  "Quando pontuada, cada carta jogada",
                  "perde permanentemente até {C:chips}#1#{} Fichas e",
                  "ganha permanentemente {X:mult,C:white}X#2#{} Mult se",
                  "as fichas foram perdidas"
                }
            },
            j_poke_mega_tyranitar = {
                name = "Mega Tyranitar",
                text = {
                  "Se a mão jogada for um {C:attention}Full House{}",
                  "melhora seu nível, então as cartas",
                  "jogadas ganham permanentemente Fichas",
                  "iguais ao nível do {C:attention}Full House{}"
                }
            },
			j_poke_lugia = {
              name = "Lugia",
              text = {
                "Ganha {X:mult,C:white} X#2# {} Mult para",
                "cada {C:attention}#3#{} {C:inactive}[#4#]{} cartas",
                "compradas durante {C:attention}Blinds{}",
                "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Mult){}"
              }
            },
            j_poke_ho_oh = {
                name = "Ho-Oh",
                text = {
                  "A primeira vez que um {C:attention}Consumível{}",
                  "é usado a cada rodada, cria",
                  "uma cópia {C:dark_edition}Policromada{} dele",
                  "{C:inactive}(Precisa ter espaço)",
                }
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} Ante após pular {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}Blinds{}",
                    "{C:inactive}(Pulos necessários aumentam a cada vez)"
                }
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} tamanho de mão, {C:attention}Natureza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas têm",
                    "uma chance de {C:green}#4# em #5#{} de ganhar {C:money}$#1#{} quando pontuadas",
                    "Garantido se você tiver outras cartas {X:grass,C:white}Grama{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                }
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} tamanho de mão, {C:attention}Natureza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas têm",
                    "uma chance de {C:green}#4# em #5#{} de ganhar {C:money}$#1#{} quando pontuadas",
                    "Garantido se você tiver outras cartas {X:grass,C:white}Grama{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                }
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} tamanho de mão, {C:attention}Natureza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas ganham {C:money}$#1#{}",
                    "mais {C:money}$#5#{} para cada outra carta {X:grass,C:white}Grama{}",
                    "que você tem quando pontuadas",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive}(Atualmente {C:money}$#4#{C:inactive} total){}"
                }
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} descartes, {C:attention}Natureza: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "{C:mult}+#1#{} Mult para cada carta {C:attention}Natureza{} descartada nesta rodada",
                    "Dobrado com outras cartas {X:fire,C:white}Fogo{} ou {X:earth,C:white}Lutador{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após pontuar {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult)",
                }
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} descartes, {C:attention}Natureza: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "{C:mult}+#1#{} Mult para cada carta {C:attention}Natureza{} descartada nesta rodada",
                    "Dobrado com outras cartas {X:fire,C:white}Fogo{} ou {X:earth,C:white}Lutador{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive}(Atualmente {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui após pontuar {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult)",
                }
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} descartes, {C:attention}Natureza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Para cada carta {C:attention}Natureza{} descartada nesta rodada",
                    "ganhe {C:mult}+#4#{} Mult e {X:mult,C:white}X#1#{} Mult para",
                    "cada carta {X:fire,C:white}Fogo{} ou {X:earth,C:white}Lutador{} que você tem",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive}(Atualmente {C:mult}+#5#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult){}",
                }
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} mãos, {C:attention}Natureza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas dão {C:chips}+#1#{} Fichas",
                    "Dobrado com outras cartas {X:water,C:white}Água{} ou {X:earth,C:white}Terrestre{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:chips,s:0.8}#2#{C:inactive,s:0.8} Fichas)"
                }
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} mãos, {C:attention}Natureza: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas dão {C:chips}+#1#{} Fichas",
                    "Dobrado com outras cartas {X:water,C:white}Água{} ou {X:earth,C:white}Terrestre{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive,s:0.8}(Evolui após ganhar {C:chips,s:0.8}#2#{C:inactive,s:0.8} Fichas)"
                }
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#3#{} mãos, {C:attention}Natureza: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Cartas {C:attention}Natureza{} jogadas dão {C:chips}+#1#{} Fichas",
                    "e {C:chips}+#5#{} Fichas por outra carta {X:water,C:white}Água{} ou {X:earth,C:white}Terrestre{}",
                    "{C:inactive,s:0.8}(inclui Jokers e cartas de Energia){}",
                    "{C:inactive}(Atualmente {C:chips}+#4#{C:inactive} total)"
                }
            },
            j_poke_poochyena = {
              name = "Poochyena",
              text = {
                "Ganha {C:mult}+#2#{} Mult quando uma",
                "{C:attention}carta de jogo{} é destruída",
                "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
              }
            },
            j_poke_mightyena = {
              name = "Mightyena",
              text = {
                "Ganha {C:mult}+#2#{} Mult quando uma",
                "{C:attention}carta de jogo{} é destruída",
                "{br:2}ERRO - CONTATE STEAK",
                "Ganho aumentado em {C:mult}+#3#{} Mult",
                "para cada Joker {X:dark,C:white}Sombrio{} que você tem",
                "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_zigzagoon = {
              name = "Zigzagoon",
              text = {
                "Chance de {C:green}#1# em #2#{} para criar um",
                "{C:attention}Coleta{} {C:item}Item{} quando a mão é jogada",
                "{C:inactive}(Precisa ter espaço)",
                "{C:inactive,s:0.8}(Evolui após {C:attention}#3#{C:inactive,s:0.8} rodadas)",
              }
            },
            j_poke_linoone = {
              name = "Linoone",
              text = {
                "Chance de {C:green}#1# em #2#{} para criar um",
                "{C:attention}Coleta{} {C:item}Item{} quando a mão é jogada",
                "Garantido se a mão",
                "contiver um {C:attention}Sequência{}",
                "{C:inactive}(Precisa ter espaço)"
              }
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "Quando {C:attention}Blind{} é selecionada, ganha",
                  "{C:chips}+#1#{} mão, {C:mult}+#2#{} descarte, ou",
                  "{C:attention}+#3#{} tamanho de mão nesta rodada",
                  "{C:inactive,s:0.8}(Evolui após derrotar o {C:attention,s:0.8}Ante #4#{C:inactive,s:0.8} Boss Blind){}"
                }
            },
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "Quando {C:attention}Blind{} é selecionada, ganha",
                  "{C:chips}+#1#{} mãos, {C:mult}+#2#{} descartes, ou",
                  "{C:attention}+#3#{} tamanho de mão nesta rodada"
                }
            },
            j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white}X#1#{} Mult",
                    "Cria uma cópia {C:dark_edition}Negativa{} de",
                    "{C:attention}O Hierofante{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_nosepass = {
                name = 'Nosepass',
                text = {
                    "Primeira carta {C:attention}face{} jogada",
                    "vira uma carta {C:attention}Pedra{} e",
                    "dá {X:mult,C:white} X#1# {} Mult quando pontuada",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Trovão{C:inactive,s:0.8})"
                }
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "Ganha {X:mult,C:white}X#2#{} Mult para cada",
                    "carta {C:attention}Aço{} na mão de poker,",
                    "então as destrói",
                    "{C:inactive}(Evolui em {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} Mult)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Ganha {X:mult,C:white}X#2#{} Mult para cada",
                    "carta {C:attention}Aço{} e {C:attention}Pedra{} na",
                    "mão de poker, então as destrói",
                    "{C:inactive}(Evolui em {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} Mult)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Ganha {X:mult,C:white}X#2#{} Mult para cada",
                    "carta {C:attention}Aço{}, {C:attention}Pedra{} e {C:attention}Ouro{} na",
                    "mão de poker, então as destrói",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_poke_numel = {
                name = "Numel",
                text = {
                  "{X:red,C:white}X#1#{} Mult a cada",
                  "{C:attention}#3#{} cartas pontuadas",
                  "{C:inactive}#4# restantes{}",
                  "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
                }
            },
            j_poke_camerupt = {
              name = "Camerupt",
              text = {
                "{X:red,C:white}X#1#{} Mult a cada",
                "{C:attention}#2#{} cartas pontuadas,",
                "com cartas {C:attention}Mult{}",
                "contadas duas vezes",
                "{C:inactive}#3# restantes{}",
              }
            },
            j_poke_mega_camerupt = {
              name = "Mega Camerupt",
              text = {
                "Ganha {X:mult,C:white} X#2# {} Mult quando",
                "uma carta {C:attention}Mult{} é pontuada",
                "reinicia no final da rodada",
                "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Mult)"
              }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Aplica {C:attention}Respingo{}",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Escama de Prisma{C:inactive,s:0.8})",
                }
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Reativa todas as cartas jogadas se",
                  "a mão pontuada for {C:attention}mono-naipe{}"
                }
            },
            j_poke_wynaut = {
                name = 'Wynaut',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma cópia {C:dark_edition}Negativa{} de",
                    "{C:attention}O Louco{} no final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Pode ficar até {C:mult}-$#1#{} em dívida",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas em dívida)",
                  "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Alvorecer{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Pode ficar até {C:mult}-$#1#{} em dívida",
                  "{br:2}ERRO - CONTATE STEAK",
                  "No final da rodada,",
                  "define o dinheiro para {C:money}$0"
                }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Ganha {C:chips}+#2#{} Fichas se a mão jogada",
                    "for uma {C:attention}Quadra{}",
                    "Ganha {C:chips}+#2#{} Fichas se a mão pontuada",
                    "contiver um {C:attention}Ás",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +#4# Fichas)",
                }
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Ganha {C:chips}+#2#{} Fichas se a mão jogada",
                    "for uma {C:attention}Quadra{}",
                    "Ganha {C:chips}+#2#{} Fichas se a mão pontuada",
                    "contiver {C:attention}2+{} {C:attention}Ases",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +#4# Fichas)",
                }
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Se a mão jogada for uma {C:attention}Quadra{}",
                    "cada carta jogada dá {X:mult,C:white}X{} Mult",
                    "igual à {C:attention}quarta raiz{} ",
                    "das fichas totais daquela carta",
                }
            },
            j_poke_jirachi = {
                name = 'Jirachi',
                text = {
                    "No final da loja,",
                    "{C:dark_edition}faça um pedido!",
                }
            },
            j_poke_jirachi_banker = {
                name = 'Jirachi',
                text = {
                    "{C:attention}Dobra{} o pagamento do final da rodada",
                }
            },
            j_poke_jirachi_booster = {
                name = 'Jirachi',
                text = {
                    "+1 espaço de {C:attention}Pacote de Reforços",
                    "{C:attention}Pacotes de Reforços{} têm {C:attention}1{} carta a mais neles",
                }
            },
            j_poke_jirachi_power = {
                name = 'Jirachi',
                text = {
                    "A cada {C:attention}#2# mãos{}, cartas jogadas",
                    "dão {X:mult,C:white}X#1#{} Mult quando pontuadas",
                    "{C:inactive}(#3#){}",
                }
            },
            j_poke_jirachi_negging = {
                name = 'Jirachi',
                text = {
                    "{C:blue}+2{} espaços de Joker",
                    "Cartas {C:dark_edition}Negativas{} aparecem {C:attention}2X{} mais frequentemente",
                }
            },
            j_poke_jirachi_invis = {
                name = 'Jirachi',
                text = {
                    "Quando {C:attention}Blind{} é selecionada",
                    "cria uma {C:attention}cópia{} do",
                    "{C:attention}Joker{} à direita",
                    "então {S:1.1,C:red,E:2}autodestrói{}",
                    "{C:inactive}(remove Negativo)"
                }
            },
            j_poke_jirachi_copy = {
                name = 'Jirachi',
                text = {
                    "Copia a habilidade do {C:attention}Joker{} à direita",
                    "como se estivesse {C:pink}Energizado{} uma vez extra",
                }
            },
            j_poke_jirachi_fixer = {
                name = 'Jirachi',
                text = {
                    "Se a {C:attention}primeira mão{} tiver exatamente {C:attention}1{} carta,",
                    "adiciona {C:dark_edition}Foil{}, {C:dark_edition}Holográfico{}, ou {C:dark_edition}Policromado{} a ela",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Se o {C:attention}primeiro descarte{} tiver exatamente {C:attention}1{} carta,",
                    "{C:attention}destrói{} ela",
                }
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Fichas para",
                    "cada carta {C:attention}não pontuada{}",
                    "na mão jogada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} Fichas para",
                    "cada carta {C:attention}não pontuada{}",
                    "na mão jogada",
                }
            },
            j_poke_ambipom = {
              name = "Ambipom",
              text = {
                "Todos os {C:attention}Flushes{} e {C:attention}Sequências{} podem",
                "ser feitos com {C:attention}exatamente 3{} cartas",
              }
            },
            j_poke_buneary = {
              name = "Buneary",
              text = {
                "{C:mult}+#1#{} Mult para",
                "cada carta não pontuada",
                "na mão jogada",
                "{C:inactive}(Evolui após {C:attention}#2#{C:inactive} rodadas)",
              }
            },
            j_poke_lopunny = {
                name = "Lopunny",
                text = {
                  "{C:purple}+#3# Visão Futura",
                  "{C:mult}+#1#{} Mult para",
                  "cada carta não pontuada",
                  "na mão jogada",
                  "{br:2}ERRO - CONTATE STEAK",
                  "{X:mult,C:white} X#2# {} Mult se uma carta não pontuada",
                  "tiver o {C:attention}mesmo rank{}",
                  "que uma carta {C:attention}Prevista{}"
                }
            },
            j_poke_mega_lopunny = {
                name = "Mega Lopunny",
                text = {
                  "{C:purple}+#1# Visão Futura",
                  "Dá {X:mult,C:white}X{} Mult",
                  "igual ao {C:attention}nível{}",
                  "da mão {C:attention}Prevista{}",
                  "{C:inactive}(Mão prevista: {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_mismagius = {
                name = 'Mismagius',
                text = {
                    "Cartas {C:attention}face{} jogadas permanentemente",
                    "perdem até {C:chips}#1#{} Fichas quando pontuadas",
                    "Ganha as Fichas perdidas",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Chance de {C:green}#3# em #4#{} para elas",
                    "ganharem permanentemente {C:chips}#5#{} Fichas em vez disso",
                    "{C:inactive}(Atualmente {C:chips}+#2#{C:inactive} Fichas)",
                }
            },
            j_poke_honchkrow = {
                name = "Honchkrow",
                text = {
                  "Cada Joker {X:dark,C:white}Sombrio{} dá {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_poke_bonsly = {
                name = "Bonsly",
                text = {
                  "{C:attention}Bebê{}, {X:mult,C:white}X#1#{} Mult",
                  "No final da rodada, adiciona uma",
                  "{C:attention}carta face Aprimorada{} aleatória ao seu baralho",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Adiciona um {C:red}Selinho Vermelho{} ou {C:blue}Selinho Azul{}",
                    "a uma carta aleatória no baralho",
                    "no final da {C:attention}rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria uma cópia {C:dark_edition}Negativa{} de",
                    "{C:attention}O Mago{} no final da rodada",
                    "Chance de {C:green}#3# em #4#{} para criar {C:attention}2{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Bebê{}, {X:mult,C:white} X#1# {} Mult",
                    "Cria um {C:dark_edition}Negativo{C:item} Item",
                    "no final da {C:attention}rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Bebê{}, {X:mult,C:white}X#2#{} Mult",
                  "Cria uma cópia {C:dark_edition}Negativa{} de",
                  "{C:attention}O Diabo{} no final da rodada",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_weavile = {
                name = 'Weavile',
                text = {
                    "Se a mão jogada for um único {C:attention}#3#{} destrua-o,",
                    "ganhe {C:money}$#4#{} e isto ganha {X:mult,C:white}X#1#{} Mult,",
                    "reinicia quando {C:attention}Boss Blind{} é derrotada",
                    "{C:inactive,s:0.8}(Rank muda a cada rodada){}",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#2#{C:inactive} Mult){}",
                }
            },
			j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Cartas {C:attention}Aço{} jogadas dão {X:mult,C:white}X#1#{} Mult",
                    "mais {X:mult,C:white}X#2#{} Mult para cada",
                    "Joker {X:metal,C:white}Metal{} que você tem",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult){}",
                }
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "Primeiro e segundo {C:attention}Valete{} jogado",
                    "dão {X:mult,C:white}X#1#{} Mult quando pontuados",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{C:attention}Valetes{} adicionais dão",
                    "{X:mult,C:white} X#2# {} Mult quando pontuados"
                }
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Cada carta {C:attention}Pedra{} jogada ",
                    "ganha permanentemente {C:chips}+#1#{} Fichas",
                    "e reativa quando pontuada",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Cartas {C:attention}Pedra{} reativam uma",
                    "vez adicional para cada",
                    "{C:attention}3{} Jokers {X:earth,C:white}Terrestre{} que você tem",
                    "{C:inactive}(Atualmente #2# reativações)"
                }
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Cartas {C:attention}Wild{} {C:attention}não podem{} ser debuffadas",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Cartas {C:attention}Wild{} jogadas dão",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Fichas, ou {C:money}$#3#{}",
                    "Chance de {C:green}#4# em #5#{} para {C:attention}todos os três{}",
                }
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Ganha {C:money}$#1#{} do {C:attention}valor de venda{} no final da",
                    "rodada e quando uma carta é {C:attention}vendida{}",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "Dá {X:mult,C:white}X#2#{} Mult para cada dólar",
                    "do valor de venda deste Joker",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Se o {C:attention}primeiro descarte{} da rodada tiver apenas",
                    "{C:attention}1{} carta, destrua-a e ganhe {C:mult}+#2#{} Mult",
                    "{br:4}ERRO - CONTATE STEAK",
                    "Ganha {X:mult,C:white}X#4#{} Mult quando",
                    "você usa um descarte",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_togekiss = {
                name = 'Togekiss',
                text = {
                    "Adiciona {C:attention}#6#{} a todas as {C:green,E:1,S:1.1}probabilidades {C:attention}listadas{}",
                    "{br:4}ERRO - CONTATE STEAK",
                    "Cartas {C:attention}Sortudas{} têm",
                    "uma chance de {C:green}#1# em #2#{} de dar {C:chips}+#4#{} Fichas",
                    "e uma chance de {C:green}#1# em #3#{} de dar {X:mult,C:white}X#5#{} Mult",
                }
            },
            j_poke_yanmega = {
              name = "Yanmega",
              text = {
                "Cada {C:attention}3{} ou {C:attention}6{} jogado dá",
                "{C:chips}+#2#{} Fichas e {C:mult}+#1#{} Mult quando pontuado",
                "{br:2}ERRO - CONTATE STEAK",
                "Chance de {C:green}#3# em #4#{} para reativar cada",
                "{C:attention}3{} ou {C:attention}6{} jogado"
              }
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "{C:attention}+#1#{} tamanho de mão",
                    "reduz em {C:red}#2#{}",
                    "a cada mão jogada",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Ganhe {C:attention}+#2#{} tamanho de mão",
                    "quando uma carta {C:attention}Sortuda{}",
                    "{C:green}ativar com sucesso{}",
                    "{C:inactive}(Máximo de {C:attention}+#3#{C:inactive} tamanho de mão){}"
                }
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Cada rerrolagem na loja tem uma",
                    "chance de {C:green}#1# em #2#{} para adicionar",
                    "uma cópia {C:attention}Vidro{} de uma carta",
                    "aleatória do seu baralho à loja",
                }
            },
            j_poke_gliscor = {
                name = 'Gliscor',
                text = {
                    "Cartas jogadas dão {X:mult,C:white}X#1#{} Mult para cada",
                    "carta {V:1}#2#{} ou debuffada {C:attention}segurada{} na mão",
                    "{C:inactive, s:0.8}(Naipe muda a cada rodada)",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_mamoswine = {
              name = "Mamoswine",
              text = {
                "Primeira carta jogada dá {C:mult}+#1#{} Mult para cada",
                "Carta {C:attention}Pedra{} e {C:attention}Vidro{} na mão pontuada",
                "{br:2}texto precisa estar aqui para funcionar",
                "Chance de {C:green}#3# em #4#{} para cartas {C:attention}Pedra{}",
                "e {C:attention}Vidro{} jogadas ganharem {C:money}$#2#{} quando pontuadas",
              }
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Limite de Energia",
                    "{X:mult,C:white} X#2# {} Mult por carta {C:pink}Energia{}",
                    "usada nesta {C:attention}partida{}",
                    "{br:2}texto precisa estar aqui para funcionar",
                    "Cria uma {C:pink}Energia",
                    "quando você usa uma {C:pink}Energia",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Mult)"
                }
            },
            j_poke_probopass = {
                name = 'Probopass',
                text = {
                    "Cartas {C:attention}Pedra{} são consideradas cartas face",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Cartas {C:attention}Pedra{} jogadas",
                    "dão {X:mult,C:white} X#1# {} Mult quando pontuadas"
                }
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "Pode ficar até {C:mult}-$#1#{} em dívida",
                  "{br:2.5}ERRO - CONTATE STEAK",
                  "Cria uma carta de {C:item}Item{} se",
                  "a mão for jogada enquanto estiver em dívida",
                  "{C:inactive,s:0.8}(Precisa ter espaço)",
                }
            },
            j_poke_pansage = {
                name = "Pansage",
                text = {
                    "Aplica {C:attention}Atalho",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Folha{C:inactive,s:0.8})"
                }
            },
            j_poke_simisage = {
                name = "Simisage",
                text = {
                    "Aplica {C:attention}Atalho",
                    "Todas as cartas não aprimoradas jogadas têm uma",
                    "chance de {C:green}#1# em #2#{} de virar {C:attention}Sortudas{}"
                }
            },
            j_poke_pansear = {
                name = "Pansear",
                text = {
                    "Aplica {C:attention}Quatro Dedos",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Fogo{C:inactive,s:0.8})"
                }
            },
            j_poke_simisear = {
                name = "Simisear",
                text = {
                    "Aplica {C:attention}Quatro Dedos",
                    "Se a primeira mão jogada contiver uma {C:attention}Sequência",
                    "ou {C:attention}Flush{}, cria uma carta {C:attention}Imperatriz{}",
                    "e cada carta não pontuadora é destruída {C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "Panpour",
                text = {
                    "Aplica {C:attention}Pareidolia",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra da Água{C:inactive,s:0.8})"
                }
            },
            j_poke_simipour = {
                name = "Simipour",
                text = {
                    "Aplica {C:attention}Pareidolia",
                    "Carta não aprimorada mais à esquerda com as",
                    "menores fichas base na mão jogada",
                    "vira uma carta {C:attention}Bônus{}",
                }
            },
            j_poke_roggenrola = {
                name = "Roggenrola",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Cada {C:attention}Carta de Perigo segurada{} na mão",
                    "dá {C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolui após ativar Cartas de Perigo {C:attention,s:0.8}#4#{C:inactive,s:0.8} vezes)",
                }
            },
            j_poke_boldore = {
                name = "Boldore",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Cada {C:attention}Carta de Perigo segurada{} na mão",
                    "dá {C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolui com um {C:attention,s:0.8}Cabo de Ligação{C:inactive,s:0.8})"
                }
            },
            j_poke_gigalith = {
                name = "Gigalith",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Cada {C:attention}Carta de Perigo segurada{} na mão",
                    "dá {C:mult}+#3#{} Mult e reativa",
                }
            },
            j_poke_trubbish = {
              name = "Trubbish",
              text = {
                "Ganha {C:chips}+#2#{} Fichas e ganha",
                "{C:money}$#3#{} por descarte se nenhum",
                "descarte for usado até",
                "o final da rodada",
                "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                "{C:inactive,s:0.8}(Evolui após ativar {C:attention,s:0.8}#4#{C:inactive,s:0.8} vezes)"
              }
            },
            j_poke_garbodor = {
                name = "Garbodor",
                text = {
                  "Ganha {C:chips}+#2#{} Fichas por descarte",
                  "se nenhum descarte for usado",
                  "até o final da rodada",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Cria uma {C:attention}Tag de Lixo{} se",
                  "nenhum descarte for usado",
                  "até o final do ante",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_zorua = {
                name = "Zorua",
                text = {
                    "{V:1}Copia a habilidade do {C:attention}Joker{} mais à direita",
                    "{br:2.5}ERRO - CONTATE STEAK",
                    "Após pontuar a mão jogada enquanto",
                    "copia, remove o efeito de cópia",
                    "até o final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_zoroark = {
                name = "Zoroark",
                text = {
                    "Copia a habilidade do {C:attention}Joker{} mais à direita",
                }
            },
            j_poke_gothita = {
                name = "Gothita",
                text = {
                    "Todas as cartas {C:planet}Planeta{} e {C:planet}Pacotes Celestes{}",
                    "na loja custam {C:money}$2{} a menos",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                }
            },
            j_poke_gothorita = {
                name = "Gothorita",
                text = {
                    "Todas as cartas {C:planet}Planeta{} e {C:planet}Pacotes Celestes{}",
                    "na loja custam {C:money}$3{} a menos",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                }
            },
            j_poke_gothitelle = {
                name = "Gothitelle",
                text = {
                    "Todas as cartas {C:planet}Planeta{} e {C:planet}Pacotes Celestes{}",
                    "na loja são {C:attention}grátis{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Ganhe {C:money}$#1#{} quando uma carta {C:planet}Planeta{} for usada"
                }
            },
            j_poke_vanillite = {
                name = "Vanillite",
                text = {
                  "{C:attention}Volátil à Esquerda",
                  "{C:chips}+#1#{} Fichas",
                  "{C:chips}-#3#{} Fichas para cada mão jogada",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_vanillish = {
                name = "Vanillish",
                text = {
                  "{C:attention}Volátil à Esquerda",
                  "{C:chips}+#1#{} Fichas",
                  "{C:chips}-#3#{} Fichas para cada mão jogada",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_vanilluxe = {
                name = "Vanilluxe",
                text = {
                  "{C:chips}+#1#{} Fichas",
                  "{C:chips}-#2#{} Fichas para cada mão jogada",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Quando totalmente derretido",
                  "cria {C:attention}#3# Tags Duplas{} "
                }
            },
            j_poke_frillish = {
                name = "Frillish",
				text = {
                    "Ganha {C:chips}+#2#{} Fichas para cada",
                    "carta {C:attention}face{} descartada",
                    "{C:inactive}(Evolui em {C:chips}+#1#{C:inactive} / +#3# Fichas)",
                }
            },
            j_poke_jellicent = {
                name = "Jellicent",
                text = {
                  "Ganha {C:chips}+#2#{} Fichas para cada",
                  "carta {C:attention}face{} descartada",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Ganho {C:attention}dobrado{} se for",
                  "um {C:attention}Rei{} ou {C:attention}Rainha{}",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "Quando {C:attention}Blind{} é selecionada, cria uma",
                    "carta {C:dark_edition}Negativa{} {C:planet}Planeta{} de uma das",
                    "suas {C:attention}#1#{} mãos de poker de maior nível",
                    "{C:inactive,s:0.8}(Evolui ao segurar #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} cartas planeta diferentes){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "Quando {C:attention}Blind{} é selecionada, cria uma",
                    "carta {C:dark_edition}Negativa{} {C:planet}Planeta{} de uma das",
                    "suas {C:attention}#1#{} mãos de poker de maior nível",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "Após abrir {C:attention}#2# Pacotes{}, cria um",
                    "{C:attention}Telescópio{} ou {C:attention}Observatório{} se possível"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:mult}+#4#{} Mult",
                    "{C:attention}Triplicado{} se este Joker tiver",
                    "{C:money}$#5#{} ou mais de valor de venda",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "{C:attention}Drena {C:money}$#1#{} dos Jokers",
                    "adjacentes no final da rodada",
                    "{C:inactive,s:0.8}(Evolui em {C:money,s:0.8}$#3#{C:inactive,s:0.8} / $#2# Valor de Venda)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
                "Adiciona o valor de venda deste Joker ao Mult",
                "{br:3.5}ERRO - CONTATE STEAK",
                "{C:attention}Drena {C:money}$#1#{} de todos os outros",
                "Jokers no final da rodada",
                "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult){}",
                "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Crepúsculo{C:inactive,s:0.8})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
                    "Adiciona o valor de venda deste Joker ao Mult",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "Cada Joker com valor de venda de {C:money}1${}",
                    "dá {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult){}",
                }
            },
            j_poke_golett = {
                name = "Golett",
                text = {
                  "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                  "Cada {C:attention}quarta{} carta {C:attention}segurada{} na mão",
                  "dá {X:mult,C:white}X#3#{} Mult",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#4#{C:inactive,s:0.8} rodadas)"
                }
            },
            j_poke_golurk = {
                name = "Golurk",
                text = {
                  "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                  "Cada {C:attention}terceira{} carta {C:attention}segurada{} na mão",
                  "dá {X:mult,C:white}X#3#{} Mult",
                }
            },
            j_poke_zweilous = {
                name = "Zweilous",
                text = {
                  "{X:mult,C:white} X#1# {} Mult se a mão jogada",
                  "for uma {C:attention}Trinca{}",
                  "{C:inactive,s:0.8}(Evolui após ativar {C:attention,s:0.8}#2#{C:inactive,s:0.8} vezes){}"
                }
            },
            j_poke_hydreigon = {
                name = "Hydreigon",
                text = {
                  "Se a mão jogada for uma {C:attention}Trinca{}",
                  "cada carta não pontuadora é destruída",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Ganha {X:mult,C:white} X#2# {} Mult quando uma",
                  "{C:attention}carta de jogo{} é destruída",
                  "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Mult){}"
                }
            },
            j_poke_deino = {
                name = "Deino",
                text = {
                  "{X:mult,C:white} X#1# {} Mult se a mão jogada",
                  "for uma {C:attention}Trinca{}",
                  "{C:inactive,s:0.8}(Evolui após ativar {C:attention,s:0.8}#2#{C:inactive,s:0.8} vezes){}"
                }
            },
            j_poke_litleo = {
                name = "Litleo",
                text = {
                    "{C:chips}+#1#{} Fichas se a mão jogada",
                    "contiver um {C:attention}Flush{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "{C:chips}+#1#{} Fichas se a mão jogada contiver um {C:attention}Flush{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "Cria uma carta {C:pink}Energia{} se ela",
                    "também contiver um {C:attention}Rei{} ou {C:attention}Rainha{}"
                }
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Se a {C:attention}primeira mão{} for",
                    "exatamente {C:attention}1{} carta não aprimorada,",
                    "adiciona {C:dark_edition}Foil{}, {C:dark_edition}Holográfico{},",
                    "ou {C:dark_edition}Policromado{} a ela",
                }
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:attention}Triplicado{} se você tiver",
                    "um Joker {X:lightning, C:black}Raio{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult para cada",
                    "Joker {X:lightning, C:black}Raio{} que você tem",
                    "{C:inactive}(Atualmente {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolui com uma {C:attention,s:0.8}Pedra do Trovão{C:inactive,s:0.8})"
                }
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:mult,C:white} X#1# {} Mult para cada outro",
                    "Joker {X:lightning, C:black}Raio{} que você tem",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} Fichas se a mão",
                  "jogada não tiver {C:hearts}#2#{} de pontuação",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Previne a Morte se as fichas pontuadas forem",
                  "pelo menos {C:attention}50%{} das fichas necessárias",
                  "{C:inactive}(#3#){}"
                }
            },
			j_poke_nickit = {
                name = "Nickit",
                text = {
                    "Ganhe {C:money}$#1#{} no",
                    "final da rodada",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)"
                }
            },
            j_poke_thievul = {
                name = "Thievul",
                text = {
                    "Ganhe {C:money}${} no final da rodada",
                    "igual ao {C:attention}dobro{} do valor de venda",
                    "do {C:attention}Joker{} mais à esquerda",
                    "{C:inactive,s:0.8}(Exceto ele mesmo)",
                    "{C:inactive}(Atualmente {C:money}$#1#{C:inactive}, Máx. de {C:money}$15{C:inactive})",
                }
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult e ganhe {C:money}$#2#{}",
                    "se a mão jogada contiver",
                    "uma {C:attention}Sequência{}",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:mult,C:white}X#1#{} Mult e ganhe {C:money}$#2#{}",
                    "se a mão jogada contiver",
                    "uma {C:attention}Sequência{}",
                }
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Quando vendido, adiciona {C:money}$#1#{} do valor de venda",
                  "a cada carta Joker e {C:attention}converte{}",
                  "todas as cartas seguras na mão para {C:spades}#2#{}",
                  "{C:inactive,s:0.8}(Evolui quando uma sequência de flush é jogada)",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:mult,C:white} X#4# {} Mult para cada {C:money}${} de",
                  "valor de venda de todos os {C:attention}Jokers{} possuídos",
                  "{br:4}ERRO - CONTATE STEAK",
                  "Se a mão jogada for uma {C:attention}Sequência de Flush{}",
                  "adiciona {C:money}$#1#{} do valor de venda a cada carta Joker",
                  "{C:inactive}(Atualmente {X:mult,C:white} X#5# {C:inactive} Mult){}",
                  "{C:inactive,s:0.8}(Evolui em $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8} de valor de venda total dos Jokers)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:mult,C:white} X#2# {} Mult para cada {C:money}${} de",
                  "valor de venda de todos os {C:attention}Jokers{} possuídos",
                  "{br:4}ERRO - CONTATE STEAK",
                  "Se a mão jogada for uma {C:attention}Sequência de Flush{}",
                  "e você não tiver {C:attention}Dardos Dreepy{}",
                  "crie {C:attention}2 Dardos Dreepy{} com {C:dark_edition}Negativo{}",
                  "{C:inactive}(Atualmente {X:mult,C:white} X#3# {C:inactive} Mult){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Dardo Dreepy",
                text = {
                    "Quando vendido, adiciona {C:money}$#1#{} do valor de venda",
                    "a cada carta Joker e {C:attention}converte{}",
                    "todas as cartas seguras na mão para {C:spades}#2#{}",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "Qwilfish (de Hisui)",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Ganhe {C:chips}+#3#{} Fichas quando uma",
                    "{C:attention}Carta de Perigo{} é comprada",
                    "{C:inactive}(Evolui em {C:chips}+#4#{C:inactive} / +#5# Fichas)",
                }
            },
            j_poke_overqwil = {
                name = "Overqwil",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Ganhe {C:chips}+#3#{} Fichas quando uma",
                    "{C:attention}Carta de Perigo{} é comprada",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{C:attention}Reduz pela metade{} as Fichas após a mão jogada",
                    "{C:inactive}(Atualmente {C:chips}+#4#{C:inactive} Fichas)",
                }
            },
            j_poke_wyrdeer = {
                name = "Wyrdeer",
                text = {
                    "{C:purple}+#1# Visão Futura",
                    "Adiciona o {C:attention}dobro{} do rank da carta",
                    "{C:attention}Prevista{} de {C:attention}maior{} rank ao Mult",
                    "{br:3}ERRO - CONTATE STEAK",
                    "Ganhe {C:purple}+#2# Visão Futura{} quando a mão é jogada",
                    "{C:inactive,s:0.8}(Reinicia no final da rodada)",
                    
                }
            },
            j_poke_kleavor = {
                name = 'Kleavor',
                text = {
                    "Quando uma Blind é selecionada, destrói",
                    "o Joker à direita e ganha {C:mult}+#2#{} Mult",
                    "Adiciona uma carta {C:attention}Pedra{} ao baralho com",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holográfico{}, ou {C:dark_edition}Policromado{} se",
                    "ele era {C:green}Incomum{} ou superior",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
                }
            },
            j_poke_ursaluna = {
              name = "Ursaluna",
              text = {
                "Ganha {C:mult}+#2#{} Mult e cria",
                "um {C:item}Item{} com {C:dark_edition}Policromado{} quando qualquer",
                "{C:attention}Pacote de Reforços{} é pulado {C:inactive,s:0.8}(Precisa ter espaço)",
                "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_tarountula = {
                name = "Tarountula",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Cria uma carta {C:planet}Planeta{} para cada",
                    "{C:attention}#4# Cartas de Perigo seguras{} na mão",
                    "no final da rodada",
                    "{C:inactive}(Precisa ter espaço)",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#3#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_spidops = {
                name = "Spidops",
                text = {
                    "{C:purple}+#1# Perigos {C:inactive}(1 a cada #2# cartas)",
                    "Adiciona um {C:chips}Selinho Azul{} a cada terceira",
                    "{C:attention}Carta de Perigo segurada{} na mão",
                    "no final da rodada",
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Ganha {C:chips}+#2#{} Fichas se a mão pontuada contiver um {C:attention}#3#{}",
                  "O {C:attention}rank{} necessário aumenta a cada ativação",
                  "{C:inactive,s:0.8}(Se o rank for o mais alto, ele se torna o mais baixo)",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                  "{C:inactive,s:0.8}(Evolui quando você tem um Joker {X:fire,C:white,s:0.8}Fogo{C:inactive,s:0.8})",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Ganha {C:chips}+#2#{} Fichas se a mão pontuada contiver um {C:attention}#3#{}",
                  "O {C:attention}rank{} necessário aumenta a cada ativação",
                  "{br:4}ERRO - CONTATE STEAK",
                  "Aumenta o ganho de Fichas em {C:chips}+2{} para cada",
                  "Joker {X:fire,C:white}Fogo{} que você tem",
                  "{C:inactive,s:0.8}(Se o rank for o mais alto, ele se torna o mais baixo)",
                  "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Cartas jogadas dão {C:mult}+#1#{} Mult",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Quando {C:attention}Blind{} é selecionada, debuffa",
                  "{C:attention}#3#{} cartas não-{C:attention}Aço{} no seu baralho",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Cartas jogadas dão {C:mult}+#1#{} Mult",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Quando {C:attention}Blind{} é selecionada, debuffa",
                  "{C:attention}#3#{} cartas não-{C:attention}Aço{} no seu baralho",
                  "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#2#{C:inactive,s:0.8} rodadas)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Cartas jogadas dão {C:mult}+#1#{} Mult",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Quando {C:attention}Blind{} é selecionada, debuffa",
                  "{C:attention}#3#{} cartas não-{C:attention}Aço{} no seu baralho",
                  "{br:4}ERRO - CONTATE STEAK",
                  "Cartas {C:attention}Aço{} jogadas se comportam como cartas {C:attention}Vidro{}"
                }
            },
            j_poke_wiglett = {
                name = "Wiglett",
                text = {
                    "{C:mult}+#3#{} Mult se a mão jogada",
                    "contiver uma {C:attention}Trinca{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:chips}+#2#{} Fichas se a mão jogada",
                    "contiver um {C:attention}5{}, {C:attention}6{}, ou {C:attention}7{} de pontuação",
                    "{C:inactive,s:0.8}(Evolui após {C:attention,s:0.8}#1#{C:inactive,s:0.8} rodadas)"
                }
            },
            j_poke_wugtrio = {
                name = "Wugtrio",
                text = {
                    "{X:mult,C:white} X#1# {} Mult se a mão jogada",
                    "contiver uma {C:attention}Trinca{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:chips}+#2#{} Fichas se a mão jogada",
                    "contiver um {C:attention}5{}, {C:attention}6{}, ou {C:attention}7{} de pontuação",
                }
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Cada {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, ou {C:attention}7{} jogado dá",
                    "{C:mult}+#1#{} Mult e {C:chips}+#2#{} Fichas quando pontuado",
                    "para cada mão jogada nesta rodada",
                    "{C:inactive}(Atualmente {C:mult}+#3#{} {C:inactive}Mult {C:chips}+#4#{C:inactive} Fichas)",
                }
            },
            j_poke_dudunsparce = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}+#1#{} espaço de carta disponível na loja",
                  "{C:attention}+#1#{} espaço de Pacote de Reforços disponível na loja",
                  "{C:attention}+#1#{} espaço de Voucher disponível na loja",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}Segurando Tag de Cupom{}",
                  "{C:attention}+#1#{} espaço de carta disponível na loja",
                  "{C:attention}+#1#{} espaço de Pacote de Reforços disponível na loja",
                  "{C:attention}+#1#{} espaço de Voucher disponível na loja",
                }
            },
            j_poke_farigiraf = {
              name = "Farigiraf",
              text = {
                "{C:attention}Segurando{} {C:spectral}Criptídeo{}",
                "Primeira e última carta {C:attention}face{}",
                "dão {X:mult,C:white}X#1#{} Mult quando pontuadas",
                "se a mão jogada contiver um {C:attention}Dois Pares{}",
              }
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Baú)",
                text = {
                  "Cartas {C:attention}Ouro{} jogadas ganham {C:money}$#1#{} quando pontuadas",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Pular um {C:attention}Pacote de Reforços{} para...?",
                  "{C:inactive,s:0.8}(Evolui após ganhar ou gastar {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3#)"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Itinerante)",
                text = {
                  "Ganhe algum {C:money}${}",
                  "{S:1.1,C:red,E:2}autodestrói{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                  "Cartas {C:attention}Ouro{} jogadas {C:red}gastam{} {C:money}$#2#{}",
                  "quando pontuadas e multiplicam",
                  "o {X:mult,C:white}X{} Mult deste Joker por {X:mult,C:white}X#3#",
                  "{br:3}ERRO - CONTATE STEAK",
                  "Este Joker não pode ser debuffado",
                  "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Reinicia no final da rodada)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Cria consumíveis",
                    "quando obtido?",
                    "Cria {C:attention}#1#{}? {C:attention}Tags{}?",
                }
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    "{C:mult}+#2#{} Mult para cada Joker",
                    "que você tem que tem um {C:pink}Tipo{}",
                    "{br:3}ERRO - CONTATE STEAK",
                    "{C:attention}Pokémon{} da mesma",
                    "linha evolutiva podem aparecer",
                    "{C:inactive}(Atualmente {C:mult}+#1#{C:inactive} Mult)"
                }
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokémon {C:attention}não podem{} evoluir ou transformar",
                    "{br:3.5}ERRO - CONTATE STEAK",
                    "{C:attention}Básico{} e {C:attention}Bebê{} dão {X:mult,C:white} X#1# {} Mult cada",
                }
            },
            j_poke_tall_grass = {
                name = 'Grama Alta',
                text = {
                    "Chance de {C:green}#1# em #2#{} para criar um Joker",
                    "Pokémon {C:chips}Comum{} quando a mão é jogada",
                    "Garantido com uma carta {C:attention}Wild{} de pontuação",
                    "{C:inactive}(Precisa ter espaço){}",
                }
            },
            j_poke_jelly_donut = {
                name = "Rosquinha de Geléia",
                text = {
                  "Cria uma {C:colorless}Incolor {C:pink}Energia{}",
                  "quando uma blind é selecionada",
                  "{C:inactive}({C:attention}#1#{C:inactive} rodadas restantes){}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "Ruínas de Alph",
                text = {
                  "Quando {C:attention}Blind{} é selecionada,",
                  "cria {C:attention}3{} {C:dark_edition}Negativo{} {C:attention}Unown",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Após um {C:attention}Unown{} ativar",
                  "mescle-o e ganhe {C:mult}+#1#{} Mult",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Venda isto por uma {C:attention}recompensa{}",
                  "baseada nos Unown {C:attention}mesclados",
                  "{C:inactive}(Atualmente {C:mult}+#3#{C:inactive} Mult e {C:attention}#2#{C:inactive} Unown)",
                }
            },
            j_poke_unown_swarm = {
                name = "Enxame de Unown",
                text = {
                  "Cada Joker {C:purple}Lendário{} dá",
                  "{C:mult}+#1#{} Mult e {X:mult,C:white}X#2#{} Mult"
                }
            },
            j_poke_treasure_eatery = {
                name = "Tesouro Comilão",
                text = {
                  "{C:attention}Modificador de Tipo{}",
                  "{br:2}ERRO - CONTATE STEAK",
                  "Converte o {C:pink}tipo{} do Joker mais à esquerda",
                  "no {C:pink}tipo{} do Joker mais à direita",
                  "quando uma blind é selecionada",
                  "{C:inactive}({C:attention}#1#{C:inactive} rodadas restantes){}"
                }
            },
            j_poke_rival = {
                name = "Rival",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Se a pontuação for {C:attention}>#3#X{} do Requisito da Blind",
                    "{S:1.1,C:red,E:2}autodestrói{} e ganha {C:money}$#2#",
                }
            },
            j_poke_bitter_rival = {
                name = "Rival Amargo",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Se a pontuação for {C:attention}>#3#X{} do Requisito da Blind",
                    "{S:1.1,C:red,E:2}autodestrói{} e ganha {C:money}$#2#",
                }
            },
            j_poke_champion = {
                name = "Campeão",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Se a pontuação for {C:attention}>#3#X{} do Requisito da Blind",
                    "{S:1.1,C:red,E:2}autodestrói{} e ganha {C:money}$#2#",
                }
            },
            j_poke_mystery_egg = {
                name = "Ovo Misterioso",
                text = {
                  "Eclode em um Joker {C:attention}Básico{} ou",
                  "{C:attention}Bebê{} após {C:attention}#1#{} rodadas",
                  "que está {C:pink}Energizado{} se aplicável"
                }
            },
            j_poke_billion_lions = {
                name = 'Um Bilhão de Leões',
                text = {
                    "Quando uma blind é selecionada",
                    "destrói cada Joker {C:pink}tipado{} que você tem",
                    "então ganha {X:mult,C:white}X#2#{} Mult para cada",
                    "{S:1.1,C:red,E:2}autodestrói{} quando ficar sem leões",
                    "{C:inactive}(Atualmente {X:mult,C:white}X#1#{C:inactive} Mult, {C:attention}#3#{C:inactive} leões)"
                }
            },
            --[[ Texto dinâmico do ovo, não usado atualmente
            j_poke_mystery_egg = {
                name = "Ovo Misterioso",
                text = {
                    "Este Ovo precisa de mais tempo para eclodir.",
                    "Mantenha-o em segredo. Mantenha-o seguro.",
                    "Parece frio e solitário.",
                    "Siga aquele ovo!",
                    "É para ele brilhar?",
                    "O que será que tem dentro?",
                    "Ele se mexe dentro às vezes.",
                    "É um segrito para todo mundo.",
                    "Não deve ser colocado num sanduíche.",
                }
            },--]]
        },
		Planet = {
           --O que será que um planeta Pokémon faria?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Sleeve de Treinador",
                text = {
                    "Comece a partida com o",
                    "voucher {C:tarot,T:v_poke_goodrod}#1#{}",
                    "e uma carta {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Sleeve de Obituário",
                text = {
                    "Todas as cartas têm uma {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_revenantsleeve = {
                name = "Sleeve de Revenante",
                text = {
                    "Todas as cartas têm uma {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Sleeve Luminosa",
                text = {
                    "Todos os Jokers são criados",
                    "com {C:pink}Tipos{} aleatórios",
                    "e são {C:pink}Energizados{} uma vez",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Sleeve Telecinética",
                text = {
                    "Comece a partida com o",
                    "voucher {C:tarot,T:v_crystal_ball}#1#{}",
                    "e {C:attention}2{} cópias",
                    "de {C:item,T:c_poke_twisted_spoon}#2#"
                }
            },
            sleeve_poke_ampedsleeve = {
                name = "Sleeve Carregada",
                text = {
                    "Comece a partida com o",
                    "voucher {C:tarot,T:v_poke_energysearch}#1#{}",
                    "e uma cópia de",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                }
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultra Bola",
                text = {
                    "Cria uma carta de",
                    "Joker {C:attention}Estágio 2{} aleatória",
                    "{C:inactive}(Precisa ter espaço)"
                },
            },
            c_poke_masterball = {
                name = "Master Ball",
                text = {
                    "Cria um Joker",
                    "Pokémon {C:legendary,E:1}Lendário{C:attention}",
                    "{C:inactive}(Precisa ter espaço)"
                },
            },
            c_poke_transformation = {
                name = "Transformação",
                text = {
                    "Evolui o Pokémon mais à esquerda ou selecionado para",
                    "o {C:attention}estágio{} mais alto e o {C:pink}Energiza{}",
                },
            },
            c_poke_megastone = {
                name = "Pedra Mega",
                text = {
                    "{C:attention}Reutilizável{}",
                    "{br:2}ERRO - CONTATE STEAK",
                    "{C:attention}Mega Evolui{} um Pokémon",
                    "ou {C:attention}reverte{} uma Mega",
                    "{C:attention}Reverte{} Mega se vendida",
                    "{C:inactive}(Usável uma vez por rodada)",
                },
            },
            c_poke_obituary = {
                name = "Obituário",
                text = {
                    "Adiciona um selo {C:pink}Rosa{}",
                    "a {C:attention}1{} carta selecionada",
                }
            },
            c_poke_nightmare = {
                name = "Pesadelo",
                text = {
                    "Destrói o Joker selecionado com um {C:pink}Tipo{}",
                    "e cria {C:attention}2{} {C:pink}Energias{} {C:dark_edition}Negativas{}",
                    "do {C:pink}tipo{} daquele Joker"
                },
            },
            c_poke_revenant = {
                name = "Revenante",
                text = {
                    "Adiciona um selo {C:item}Prata{}",
                    "a {C:attention}1{} carta selecionada",
                }
            },
            c_poke_double_rainbow_energy = {
                name = "Energia Duplo Arco-Íris",
                text = {
                    "{C:pink}Energiza{} o Joker mais à esquerda ou",
                    "selecionado de qualquer {C:pink}Tipo{} {C:red}d{C:attention}u{C:green}a{C:blue}s{C:purple} vezes{}",
                    "Não ganhe juros esta rodada",
                    "{C:inactive}(Máx. de {C:attention}#1#{C:inactive} aumentos por Joker)",
                },
            },
            c_poke_fake_banker = {
                name = 'Desejo de Dinheiro',
                text = {
                    "{C:dark_edition}Deseje por Dinheiro!",
                }
            },
            c_poke_fake_booster = {
                name = 'Desejo de Reforços',
                text = {
                    "{C:dark_edition}Deseje por Opções!",
                }
            },
            c_poke_fake_power = {
                name = 'Desejo de Poder',
                text = {
                    "{C:dark_edition}Deseje por Poder!",
                }
            },
            c_poke_fake_negging = {
                name = 'Desejo de Negativos',
                text = {
                    "{C:dark_edition}Deseje por Amigos!",
                }
            },
            c_poke_fake_copy = {
                name = 'Desejo de Cópia',
                text = {
                    "{C:dark_edition}Deseje por uma Mão Amiga!",
                }
            },
            c_poke_fake_fixer = {
                name = 'Desejo de Purificação',
                text = {
                    "{C:dark_edition}Deseje por um Baralho Melhor!",
                }
            },
            c_poke_fake_masterball = {
                name = 'Desejo de Invocação',
                text = {
                    "{C:dark_edition}Deseje invocar um Pokermon Lendário!",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Tag de Bolso",
                text = {
                    "Dá um {C:pink}Pacote de Bolso Mega{} grátis",
                    "Chance de {C:green}#1#%{} do pacote conter",
                    "uma {C:attention}Pedra Mega{} no {C:attention}Ante 5+{}",
                    "{C:inactive,s:0.8}(Chances não podem ser aumentadas){}",
                },
            },
            tag_poke_shiny_tag = {
                name = "Tag Brilhante",
                text = {
                    "Próximo Joker de edição base",
                    "na loja é grátis e",
                    "se torna {C:colorless}Shiny{}",
                },
            },
            tag_poke_stage_one_tag = {
                name = "Tag Estágio 1",
                text = {
                    "A loja tem um",
                    "Joker {C:attention}Estágio 1{} grátis",
                },
            },
            tag_poke_safari_tag = {
                name = "Tag de Safari",
                text = {
                    "A loja tem um",
                    "Joker {C:safari}Safari{} grátis",
                },
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Pokébola",
                text = {
                    "Cria uma carta de",
                    "Joker {C:attention}Básico{} aleatória",
                    "{C:inactive}(Precisa ter espaço)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Cria uma carta de",
                    "Joker {C:attention}Estágio 1{} aleatória",
                    "{C:inactive}(Precisa ter espaço)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Busca de Energia",
                text = {
                    "{C:pink}+2{} Limite de Energia"
                },
            },
            v_poke_energyresearch = {
                name = "Pesquisa de Energia",
                text = {
                    "{C:pink}+3{} Limite de Energia"
                },
            },
            v_poke_goodrod = {
                name = "Boa Vara",
                text = {
                    "Pacotes {C:attention}de Reforços{} têm",
                    "{C:attention}1{} carta a mais neles",
                },
            },
            v_poke_superrod = {
                name = "Super Vara",
                text = {
                    "Você pode {C:pink}Salvar{} cartas",
                    "de todos os pacotes {C:attention}consumíveis{}",
                },
            },
        },
		Other = {
		
			Grass = {
				name = "Tipo",
				text = {
				  "{X:grass,C:white}Grama{}",
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
				  "{X:water,C:white}Água{}",
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
				  "{X:metal,C:white}Metálico{}",
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
				  "{X:earth,C:white}Terrestre{}",
				}
			},
			--Have you Heard? Bird is the wordddd
			Bird = {
				name = "Tipo",
				text = {
				  "{X:bird,C:white}Pássaro{}",
				}
			},
			--infoqueue used for things like kabuto and omanyte
			ancient = {
				name = "Antigo",
				text = {
					"Efeito baseado no",
					"número de {C:attention}#1#s{}",
					"na mão de pôquer",
					"{C:inactive}(Os efeitos são {C:attention}cumulativos{C:inactive})"
				}
			},
			energize = {
				name = "Energizar",
				text = {
				  "Aumenta permanentemente os",
				  "valores de {C:mult}Mult{}, {C:chips}Fichas{}, {C:money}${} e {X:mult,C:white}X{} Mult",
				  "de um Curinga"
				}
			},
			eitem = {
				name = "Carta de Evolução",
				text = {
					"Quando consumida, evolui",
					"o Curinga {C:attention}elegível{} mais à",
					"esquerda ou selecionado no",
					"final da próxima rodada",
				}
			},
			--Infoqueue used by some Consumables
			hitem = {
				name = "Carta Segurada",
				text = {
					"Usado por {C:attention}#1#{}"
				}
			},
			typechanger = {
				name = "Modificador de Tipo",
				text = {
					"Aplica um adesivo {V:1}#1#{}",
					"ao Curinga mais à esquerda ou selecionado"
				}
			},
			typechangerother = {
				name = "Modificador de Tipo",
				text = {
					"Aplica um adesivo {V:1}#1#{}",
				}
			},
			typechangerpoke = {
				name = "Modificador de Tipo",
				text = {
					"Aplica um adesivo {V:1}#1#{}",
					"a si mesmo na criação"
				}
			},
			basic = {
				name = "Básico",
				text = {
					"Um Curinga Pokémon",
					"que não {C:attention}Evoluiu{}",
					"{C:inactive,s:0.8}(Ignorando Pokémon {C:attention,s:0.8}Bebê{C:inactive,s:0.8} e {C:purple,s:0.8}Lendário{C:inactive,s:0.8})"
				}
			},
			stage1 = {
				name = "Estágio 1",
				text = {
					"Um Curinga Pokémon",
					"que {C:attention}Evoluiu{} uma vez"
				}
			},
			stage2 = {
				name = "Estágio 2",
				text = {
					"Um Curinga Pokémon",
					"que {C:attention}Evoluiu{} duas vezes"
				}
			},
			energy = {
				name = "Energia Usada",
				text = {
					"{C:attention}#1#{}/#2#",
				}
			},
			money_chance = {
				name = "Chance de Dinheiro",
				text = {
					"{C:attention}#1#%{} de chance de",
					"ganhar {C:money}$1{} adicional"
				}
			},
			mult_progress = {
				name = "Progresso de Ganho de Mult",
				text = {
					"{C:attention}#1#%{} de progresso",
					"para o Ganho de {C:mult}Mult{}",
					"aumentar em {C:mult}+1{}"
				}
			},
			chip_progress = {
				name = "Progresso de Ganho de Fichas",
				text = {
					"{C:attention}#1#%{} de progresso",
					"para o Ganho de {C:chips}Fichas{}",
					"aumentar em {C:chips}+1{}"
				}
			},
			money_progress = {
				name = "Progresso de Ganho de Dinheiro",
				text = {
					"{C:attention}#1#%{} de progresso",
					"para o Ganho de {C:money}${}",
					"aumentar em {C:money}1${}"
				}
			},
			availability = {
				name = "Disponibilidade",
				text = {
					"Não disponível se",
					"{C:attention}#1#{}",
				}
			},
			baby = {
				name = "Bebê",
				text = {
					"Quando a mão é jogada",
					"se houver Curingas {C:attention}não-Bebê{}",
					"à direita deste Curinga,",
					"{C:attention}debuffa{} este Curinga"
				}
			},
			nature = {
				name = "Natureza",
				text = {
					"Um {C:attention}#1#{} único ou conjunto de {C:attention}#1#s{}",
					"que ativa este Curinga",
					"Definido uma vez na criação do Curinga",
				}
			},
			merge = {
				name = "Fundir",
				text = {
				  "Remove a carta e a adiciona",
				  "a este Curinga",
				  "Clique com o botão direito para ver",
				  "cartas fundidas",
				  "{C:inactive}(Curingas Fundidos não podem ser copiados){}"
				}
			},
			rewards_ruins_of_alph = {
				name = "Recompensas",
				text = {
				  "{C:attention}#1#{} - Curinga {C:attention}Safári{}",
				  "{C:attention}#2#{} - {C:attention}Duplicar{} um Curinga aleatório",
				  "{C:attention}#3#{} - {C:attention}Brainstorm{}",
				  "{C:attention}#4#{} - {C:attention}Enxame de Unown e A Alma",
				  "{C:inactive}(As recompensas não são cumulativas){}"
				}
			},
			scry_cards = {
				name = "Previsão",
				text = {
					"Veja as primeiras cartas",
					"do seu deck"
				}
			},
			mega_rule = {
				name = "Restrição",
				text = {
					"Apenas 1 Curinga pode",
					"{C:attention}Mega Evoluir{} por",
					"{C:attention}Pedra Mega{} que você tem"
				}
			},
			mega_poke = {
				name = "Mega Evolução",
				text = {
					"Pode {C:attention}Mega Evoluir{}",
					"com uma {C:attention}Pedra Mega{}"
				}
			},
			mega_used_on = {
				name = "Usado Em",
				text = {
					"{C:attention}#1#{}",
				}
			},
			split_mega = {
				name = "Mega XY",
				text = {
				  "{C:attention}Mega Evolui{} baseado na posição",
				  "Mais à esquerda - {C:attention}#1#{}",
				  "Mais à direita - {C:attention}#2#{}"
				}
			},
			playing_card_to_evolve = {
				name = "Requisito",
				text = {
					"Deve ser usado em",
					"uma {C:attention}carta de jogo{}",
					"para evoluir"
				}
			},
			deli_gift = {
				name = "Presentes",
				text = {
					"{C:green}35%{} - {C:money}$8{}",
					"{C:green}30%{} - {C:item}Carta{} de {C:item}Item{}",
					"{C:green}20%{} - Etiqueta de {C:attention}Cupom{}",
					"{C:green}15%{} - {C:dark_edition}Policromática{} {C:attention}Carta de Presente{}",
				}
			},
			pickup = {
			  name = "Coletar",
			  text = {
				"{C:green}34%{} - {C:item}Item{}",
				"{C:green}25%{} - {C:item}Item de Evolução{}",
				"{C:green}20%{} - {C:item}Sobras{}",
				"{C:green}20%{} - {C:item}Colher Torcida{}",
				"{C:green}1%{} - {C:spectral}Transformação{}",
			  }
			},
			pokeballs_group = {
			  name = "Pokébolas",
			  text = {
				"Cria um Curinga aleatório",
				"com uma certa qualidade",
			  }
			},
			holding = {
				name = "Segurando",
				text = {
				  "Este Curinga vem com",
				  "uma carta {C:attention}#1#{}",
				  "{C:inactive}(Deve ter espaço){}"
				}
			},
			holding_an = {
				name = "Segurando",
				text = {
				  "Este Curinga vem com",
				  "uma carta {C:attention}#1#{}",
				  "{C:inactive}(Deve ter espaço){}"
				}
			},
			eeveelution = {
				name = "Evoluções",
				text = {
					"{C:attention}Pedra da Água{} - {X:water,C:white}Vaporeon{}",
					"{C:attention}Pedra do Trovão{} - {X:lightning,C:black}Jolteon{}",
					"{C:attention}Pedra do Fogo{} - {X:fire,C:white}Flareon{}",
					"{C:attention}Pedra do Sol{} - {X:psychic,C:white}Espeon{}",
					"{C:attention}Pedra da Lua{} - {X:dark,C:white}Umbreon{}",
					"{C:attention}Pedra da Folha{} - {X:grass,C:white}Leafeon{}",
					"{C:attention}Pedra do Gelo{} - {X:water,C:white}Glaceon{}",
					"{C:attention}Pedra Brilhante{} - {X:fairy,C:white}Sylveon{}"
				}
			},
			poke_egg_tip = {
			  name = "Ovo Misterioso",
			  text = {
				"Parece frio e solitário."
			  }
			},
			poke_top_cards = {
			  name = "Cartas Superiores",
			  text = {
				"{C:attention}#1#{}",
				"{C:attention}#2#{}",
			  }
			},
			poke_drain = {
			  name = "Drenar",
			  text = {
				"Remove o valor de venda de",
				"um Curinga e adiciona a si mesmo",
				"se o Curinga tiver mais de",
				"{C:money}$1{} de valor de venda"
			  }
			},
			poke_drain_item = {
			  name = "Drenar",
			  text = {
				"Remove o valor de venda de",
				"um Curinga se o Curinga tiver",
				"mais de {C:money}$1{} de valor de venda",
			  }
			},
			poke_volatile_left = {
			  name = "Volátil Esquerda",
			  text = {
				"A seguinte habilidade só é acionada",
				"quando este é o Curinga mais à esquerda",
				"{C:inactive}(Ignorando Pokémon {C:attention}Voláteis{C:inactive})"
			  }
			},
			poke_volatile_right = {
			  name = "Volátil Direita",
			  text = {
				"A seguinte habilidade só é acionada",
				"quando este é o Curinga mais à direita",
				"{C:inactive}(Ignorando Pokémon {C:attention}Voláteis{C:inactive})"
			  }
			},
			sketch = {
			  name = "Esboço",
			  text = {
				"Copia o Curinga até ser vendido,",
				"destruído ou copiar outra habilidade",
				"A cópia aparece como uma dica",
				"e no menu Pokédex",
				"Esboço é reiniciado quando o Curinga é copiado"
			  }
			},
			unlimited_energy_tooltip = {
			  name = "Energia Ilimitada",
			  text = {
				"Curingas podem ter {C:pink}Energia{} usada",
				"neles qualquer número de vezes"
			  }
			},
			precise_energy_tooltip = {
				name = "Escala de Energia Precisão",
				text = {
					"{s:0.8}Usa {C:attention,s:0.8}decimais{} para todos os valores ao aplicar bônus de {C:pink,s:0.8}Energia{}{s:0.8}",
					"{s:0.8}Com esta opção {C:attention,s:0.8}desligada{}{s:0.8} o seguinte ocorrerá para o bônus:{}",
					"{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - Usa Decimais",
					"{C:attenion}2. {s:0.8}{C:mult,s:0.8}Mult{} Fixo{s:0.8} e {C:chips,s:0.8}Fichas{s:0.8} - Arredonda para o número inteiro mais próximo",
					"{C:attenion}3. {s:0.8}Ganho de {C:mult,s:0.8}Mult{s:0.8} e Ganho de {C:chips,s:0.8}Fichas{s:0.8} - Componente decimal exibido",
					"{s:0.8}como uma porcentagem, usado para aplicar bônus à base de {C:mult,s:0.8}Mult{s:0.8} e {C:chips,s:0.8}Fichas{}",
					"{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Componente decimal exibido como uma porcentagem,",
					"{s:0.8}usado como chance para ganhar {C:money,s:0.8}${}{s:0.8} extra{}",
					"{C:inactive,s:0.8}(Curingas não-Pokémon sempre usarão escala precisa){}"
				}
			},
			discovery_tooltip = {
			  name = "Descoberta",
			  text = {
				"Objetos do mod Pokermon não são descobertos",
				"por padrão. Desligar esta opção de configuração",
				"descobrirá todos os objetos do mod",
				"{C:red}Descobrir todos os objetos não pode ser desfeito{}"
			  }
			},
			pokemononly_tooltip = {
			  name = "Apenas Pokémon",
			  text = {
				"Apenas Curingas {C:attention}Pokémon{} aparecerão",
			  }
			},
			gen1_tooltip = {
			  name = "Geração 1 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da primeira",
				"geração aparecerão"
			  }
			},
			gen2_tooltip = {
			  name = "Geração 2 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da segunda",
				"geração aparecerão"
			  }
			},
			gen3_tooltip = {
			  name = "Geração 3 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da terceira",
				"geração aparecerão"
			  }
			},
			gen4_tooltip = {
			  name = "Geração 4 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da quarta",
				"geração aparecerão"
			  }
			},
			gen5_tooltip = {
			  name = "Geração 5 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da quinta",
				"geração aparecerão"
			  }
			},
			gen6_tooltip = {
			  name = "Geração 6 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da sexta",
				"geração aparecerão"
			  }
			},
			gen7_tooltip = {
			  name = "Geração 7 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da sétima",
				"geração aparecerão"
			  }
			},
			gen8_tooltip = {
			  name = "Geração 8 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da oitava",
				"geração aparecerão"
			  }
			},
			gen9_tooltip = {
			  name = "Geração 9 Permitida",
			  text = {
				"Curingas {C:attention}Pokémon{} da nona",
				"geração aparecerão"
			  }
			},
			hazards_on_tooltip = {
			  name = "Riscos Permitidos",
			  text = {
				"Curingas {C:attention}Pokémon{} com",
				"{C:purple}Riscos{} aparecerão"
			  }
			},
			shinyplayingcard_tooltip = {
			  name = "Shiny em Cartas de Jogo",
			  text = {
				"Permite que {C:attention}cartas de jogo{}",
				"tenham a edição {C:dark_edition}Shiny{}"
			  }
			},
			detailed_tooltips_tooltip = {
			  name = "Dicas Detalhadas",
			  text = {
				"Todas as dicas serão exibidas",
				"Desligar isso removerá a maioria",
				"das dicas dos Curingas Pokémon",
			  }
			},
			legacycontent_tooltip = {
			  name = "Conteúdo Legado",
			  text = {
				"Habilita conteúdo que",
				"foi removido"
			  }
			},
			jokecontent_tooltip = {
			  name = "Conteúdo de Piada",
			  text = {
				"Habilita conteúdo que é",
				"feito para ser humorístico"
			  }
			},
			splashcard_tooltip = {
			  name = "Carta de Abertura Pokémon",
			  text = {
				"Substitui a carta de abertura usual",
				"por um Curinga Pokémon aleatório",
			  }
			},
			title_tooltip = {
			  name = "Tela de Título Pokémon",
			  text = {
				"Substitui a tela de título usual",
				"pela versão Pokermon",
			  }
			},
			altart_tooltip = {
			  name = "Arte Alternativa",
			  text = {
				"Usa sprites alternativos para",
				"certos Curingas Pokémon",
			  }
			},
			animation_tooltip = {
			  name = "Habilitar Animações",
			  text = {
				"Habilita sprites animados para",
				"certos Curingas Pokémon",
			  }
			},
			allowpokeballs_tooltip = {
			  name = "Permitir Pokébolas",
			  text = {
				"Permite que {C:item}itens{} de Pokébola apareçam",
			  }
			},
			pokemaster_tooltip = {
			  name = "Modo Mestre Pokémon",
			  text = {
				"Configuração Apenas Pokémon aplicada",
				"Apostas Adicionais estão disponíveis"
			  }
			},
			designed_by = {
			  name = "Desenhado Por",
			  text = {
				"{C:dark_edition}#1#{}"
			  }
			},
			endless = {
			  name = "Reutilizável",
			  text = {
				"Não é consumido quando usado",
				"{C:inactive,s:0.8}(Excluído por {C:attention,s:0.8}Colher Torcida{C:inactive,s:0.8})"
			  }
			},
			sylveon_tag_pool = {
			  name = "Conjunto de Etiquetas",
			  text = {
				"{C:attention}#1#",
				"{C:tarot}#2#",
				"{C:attention}#3#",
			  }
			},
			omastar_tag_pool = {
			  name = "Conjunto de Etiquetas",
			  text = {
				"{C:money}#1#",
				"{C:money}#2#",
				"{C:money}#3#",
				"{C:money}#4#",
				"{C:money}#5#",
			  }
			},
			safaridesc = {
				name = "Safári",
				text = {
					"Só pode ser obtido",
					"através de {C:attention}Evolução{}",
					"ou certos {C:attention}Itens de Pokébola{}"
				}
			},

			--this key is extremely cursed xd
			poke_pink_seal_seal = {
				name = "Selo Rosa",
				text = {
					"Cria uma carta de {C:pink}Energia{}",
					"correspondente ao {C:attention}tipo{} de um Curinga possuído",
					"se ele pontuar na",
					"{C:attention}primeira mão{} da rodada",
					"{C:inactive}(Deve ter espaço){}"
				},
			},

			--less cursed
			poke_silver_seal = {
				name = "Selo Prateado",
				text = {
				  "Cria uma carta de {C:item}Item{}",
				  "e é {C:attention}descartada{} se {C:attention}segurada{}",
				  "na mão quando as cartas são pontuadas"
				}
			},
			--[[
			grass_sticker = {
				name = "Tipo",
				text = {
					"{X:grass,C:white}Grama{}"
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
					"{X:water,C:white}Água{}"
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
					"{X:metal,C:white}Metálico{}"
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
					"{X:earth,C:white}Terrestre{}"
				}
			},
			--]]
			--Since these are normally discovered by default these will probably not matter
			--But they COULD matter? Right? Right??????
			undiscovered_energy = {
				name = "Não Descoberto",
				text = {
					"Compre ou use",
					"esta carta em uma",
					"partida não-semeadada para",
					"saber o que ela faz"
				}
			},
			undiscovered_item = {
				name = "Não Descoberto",
				text = {
					"Compre ou use",
					"esta carta em uma",
					"partida não-semeadada para",
					"saber o que ela faz"
				}
			},
			p_poke_pokepack_normal_1 = {
				name = "Pacote de Bolso",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_normal_2 = {
				name = "Pacote de Bolso",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_jumbo_1 = {
				name = "Pacote de Bolso Jumbo",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_mega_1 = {
				name = "Pacote de Bolso Mega",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_normal_3 = {
				name = "Pacote de Bolso",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_normal_4 = {
				name = "Pacote de Bolso",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_jumbo_2 = {
				name = "Pacote de Bolso Jumbo",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_mega_2 = {
				name = "Pacote de Bolso Mega",
				text = {
					"Escolha {C:attention}#1#{} entre",
					"{C:attention}#2#{} Cartas de {C:item}Item{} e",
					"{C:attention}#3#{} Carta de {C:pink}Energia{}",
				},
			},
			p_poke_pokepack_wish_pack = {
				name = "Pacote do Desejo",
				text = {
					"{C:dark_edition}Faça um Pedido!{}",
				},
			},
			poke_hazards = {
				name = "Riscos",
				text = {
					"Quando um {C:attention}Blind{} é selecionado,",
					"adiciona {C:attention}Cartas de Risco{} ao deck",
					"baseado no tamanho do deck",
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
            c_poke_poke_master = "Mestre Pokémon",
            c_poke_nuzlocke = "Nuzlocke",
            c_poke_goodasgold = "Bom Como Ouro",
            c_poke_parenthood = "Paternidade",
            c_poke_littlecup = "Copinha",
            c_poke_hammertime = "Hora do Martelo",
            c_poke_lonesome = "Solitário",
            c_poke_randomizer = "Randomizador"
        },
        dictionary = {
            k_energy = "Energia",
            k_item = "Item",
            k_poke_pocket_pack = "Pacote de Bolso",
            k_poke_wish_pack = "Pacote do Desejo",
            
            k_poke_baby = "Bebê",
            k_poke_safari = "Safári",
            k_poke_mega = "Mega",

            b_save = "SALVAR",
            b_energy_cards = "Cartas de Energia",
            b_item_cards = "Cartas de Item",
            
            --Mod Menu stuff
            poke_settings_header_required = "Reinício Necessário:",
            poke_settings_header_norequired = "Reinício Não Necessário:",
            poke_settings_pokemon_only = "Apenas Pokémon?",
            poke_settings_unlimited_energy = "Energia Ilimitada?",
            poke_settings_shiny_playing_cards = "Shiny em cartas de jogo?",
            poke_settings_pokemon_detailed_tooltips = "Dicas Detalhadas?",
            poke_settings_jokers_only = "Apenas Curingas?",
            poke_settings_no_evolutions = "Sem Evoluções?",
            poke_settings_pokeballs = "Permitir Pokébolas?",
            poke_settings_pokedex_number = "Números da Pokédex?",
            poke_settings_pokemon_splash = "Carta de Abertura Pokémon?",
            poke_settings_pokemon_title = "Título Pokémon?",
            poke_settings_pokemon_gen_one = "Geração 1 Permitida?",
            poke_settings_pokemon_gen_two = "Geração 2 Permitida?",
            poke_settings_pokemon_gen_three = "Geração 3 Permitida?",
            poke_settings_pokemon_gen_four = "Geração 4 Permitida?",
            poke_settings_pokemon_gen_five = "Geração 5 Permitida?",
            poke_settings_pokemon_gen_six = "Geração 6 Permitida?",
            poke_settings_pokemon_gen_seven = "Geração 7 Permitida?",
            poke_settings_pokemon_gen_eight = "Geração 8 Permitida?",
            poke_settings_pokemon_gen_nine = "Geração 9 Permitida?",
            poke_settings_pokemon_hazards_on = "Riscos Permitidos?",
            poke_settings_pokemon_precise_energy = "Usar Escala de Energia Precisão?",
            poke_settings_pokemon_discovery = "! Descoberta?",
            poke_settings_pokemon_altart = "Arte Alternativa?",
            poke_settings_pokemon_aprilfools = "Conteúdo de Piada?",
            poke_settings_pokemon_legacy = "Conteúdo Legado?",
            poke_settings_enable_animations = "Habilitar Animações?",
            poke_settings_pokemon_master = "Modo Mestre Pokémon?",
            poke_settings_pokemon_spritesheet = "Folha de Sprites Padrão",
            poke_settings_pokemon_spritesheet_classic = "Clássico",
            poke_settings_pokemon_spritesheet_seriesa = "Série A",
            
            poke_credits_actualcredits = "Créditos",
            poke_credits_thanks = "Agradecimentos a",
            poke_credits_lead = "Desenvolvedor Líder: ",
            poke_credits_graphics = "Design Gráfico: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "Desenvolvedores: ",
            poke_credits_designer = "Assistentes de Design: ",
            poke_credits_community_manager = "Gerentes de Comunidade: ",
            poke_credits_special_thanks = "Agradecimentos Especiais: ",
            poke_credits_localization = "Localização: ",
            poke_credits_sound = "Engenheiro de Áudio: ",

            poke_plus_pokeitem = "+1 Item",
            poke_plus_energy = "+1 Energia",
            poke_plus_shop = "+1 Carta na Loja",
            poke_destroyed_ex = "Destruído!",
            poke_evolve_success = "Evoluiu!",
            poke_transform_success = "Transformado!",
            poke_evolve_level = "Subiu de Nível!",
            poke_tera = "Tera",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Metálico!",
            poke_dragon_ex = "Dragão!",
            poke_energized_ex = "Energizado!",
            poke_round_plus_ex = "Rodada Passada!",
            poke_unlimited_energy = "Infinito",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch'd",
            cubone_marowak_infoqueue = "Cubone e Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokébola",
            goodrod_variable = "Vara Boa",
            pinkseal_variable = "Selo Rosa",
            silverseal_variable = "Selo Prateado",
            twisted_spoon_variable = "Colher Torcida",
            double_rainbow_energy_variable = "Energia Duplo Arco-Íris",

            --From Gastly Line
            poke_lick_ex = "Lambida!",
            poke_lick = "Lambida",
            --From Kingler
            poke_surf_ex = "Surfar!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            --From Exeggutor
            poke_solar_ex = "Solar!",
            poke_solar = "Solar",
            --From Pinsir
            poke_pinsir_pin = "Afixado!",
            poke_pinsir_remove_pin = "Desafixado!",
            --From Tangela line
            poke_tangela_bonus = "Todos!",
            --Golbat And Crobat thingy
            poke_screech_ex = "Skree!",
            --Hoppip Line
            poke_hop_ex = "Pular!",
            poke_skip_ex = "Pular!",
            poke_jump_ex = "Saltar!",
            --From Bellossom
            poke_petal_dance_ex = "Pétala!",
            poke_petal_dance = "Pétala",
            --From Scizor
            poke_x_scissor_ex = "X Tesoura!",
            poke_x_scissor = "X Tesoura",
            --From Kingdra
            poke_twister_ex = "Twister!",
            --From Mime Jr.
            poke_mime_ex = "Mímica!",
            --From Magmortar
            poke_fire_blast_ex = "Explosão de Fogo!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Trovão!",
            poke_gift_ex = "Presente!",
            poke_faint_ex = "Desmaiou!",
            poke_reveal_ex = "Revelado!",
            poke_nido_ex = "Nido!",
            poke_disguise_intact = "Disfarce Intacto! Morte Evitada!",
            poke_disguise_broken = "Disfarce Quebrado! Morte Não Evitada!",
            poke_dig_ex = "Cavar!",
            poke_blazekick_ex = "Chute Ardente!",
            poke_darts_ex = "Dardos!",
            poke_none = "Nenhum",
            poke_dawn_info1 = "(Próxima mão jogada define o tipo de mão)",
            poke_dawn_info2 = "(Tipo de mão definido!)",
            poke_make_it_rain = "Faça Chover!",
            poke_val_down = "Valor Diminuído!",
            poke_powder_ex = "Neve em Pó!",
            poke_future_sight = "Visão Futura!",
            poke_smell_ya = "Te Cheiro Mais Tarde!",
            poke_wowthree = "Uau! Três!",
            poke_illusion = "...?",
            poke_crack_ex = "CRACK!",
            poke_shake_ex = "Sacudir!",
            poke_closed_ex = "Fechado!",
            poke_reload_ex = "Recarregar!",
            poke_shadow_tag_ex = "Etiqueta Sombria!",
            poke_flees_ex = "Foge!",
            poke_hidden_power_ex = "Poder Oculto!",
            poke_nasty_plot_ex = "Trama Maldosa!",
            poke_iron_tail_ex = "Cauda de Ferro!",
            poke_autotomize_ex = "Autotomizar!",
            poke_highjumpkick_ex = "Chute do Alto!",
            
            poke_grass_badge = "Grama",
            poke_fire_badge = "Fogo",
            poke_water_badge = "Água",
            poke_lightning_badge = "Elétrico",
            poke_psychic_badge = "Psíquico",
            poke_fighting_badge = "Lutador",
            poke_colorless_badge = "Incolor",
            poke_dark_badge = "Sombrio",
            poke_metal_badge = "Metálico",
            poke_fairy_badge = "Fada",
            poke_dragon_badge = "Dragão",
            poke_earth_badge = "Terrestre",
            poke_bird_badge = "Pássaro",
            
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Selo Rosa",
            poke_silver_seal = "Selo Prateado",

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

            k_poke_safari = "Safári",
            k_poke_mega = "Mega",
        },
        tutorial = {
          poke_intro_1 = {
          "Olá, sou o {C:attention}Professor Jimbo{}!",
          "Bem-vindo ao mundo de {C:attention}Pokermon{}!",
          },
        },
        v_dictionary = {
          poke_discards = "+#1# Descartes",
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Slot de Curinga quando Chefe cego derrotado {C:inactive}(até 5)"},
           ch_c_poke_nuzlocke = {"Primeira loja de cada Ante contém um {C:attention}Pacote de Bufão"},
           ch_c_apply_randomizer = {"Curingas Pokémon evoluem para Curingas Pokémon aleatórios"},
        },
    }
}