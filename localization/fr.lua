-- Welcome to fr.lua !
-- fr stands for French

--Progress report:
--Update this as you go ! Or don't, I know Cryptid doesn't (lmfao)

--[[
    Decks: Yes
Jokers: No
    Settings/Mod: Yes
    Items: Yes
    Energy: Yes
    Deck Sleeves (requires Decksleeves Mod): Yes
    Blinde de Bosss: Yes
    Challenges: Yes
    Spectrals: Yes
    Tarots: Yes
    Stickers: Yes? They were all commented from base
    Planets: Yes (there aren't any lmao)
    Dictonary: Yes
    Editions: Yes
    Vouchers: Yes
    Tags: Yes
    Misc Infoqueues (ancient, baby, eitem, Type, etc): Yes (part of other)
    Other (packs, stickers, etc): Yes
    Misc: Yes
]]--

-- ctrl-f "-- ?" pour voir tous les endroits où j'ai un doute 

return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Jeu dresseur",
                text = {
                    "Commencez la partie avec",
                    "le coupon {C:tarot,T:v_poke_goodrod}#1#{}",
                    "et une carte {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Jeu télékinétique",
                text = {
                    "Commencez la partie avec",
                    "le coupon {C:tarot,T:v_crystal_ball}#1#{}",
                    "et {C:attention}2{} copies",
                    "de {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            b_poke_obituarydeck = {
                name = "Jeu nécrotique",
                text = {
                    "Tous les cartes ont un {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Jeu lumineux",
                text = {
                    "Tous les Jokers sont créés",
                    "avec un autocollant {C:pink}Type{} aléatoire",
                    "et ont {C:attention}+1{} {C:pink}Énergie{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Chambre chartreuse", -- ? Je sais pas trop comment traduire Chartreuse Chamber
                text = {
                    "Des Types aléatoires sont",
                    "annulés à chaque main",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Base{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
            c_poke_greatball = {
                name = "Super Ball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Niveau 1{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
            c_poke_moonstone = {
                name = "Pierre Lune",
                text = {
                    "{C:green}#2# chance(s) sur #3#{}",
                    "d'augmenter le niveau",
                    "de la {C:attention}main de poker{} sélectionnée",
                    "{C:attention}Carte d'Évolution{}",
                    "{C:inactive}(Main: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Pierre Soleil",
                text = {
                    "Améliore {C:attention}#1#{} cartes sélectionnées",
                    "en {C:attention}Cartes Sauvages{} et",
                    "{C:attention}change aléatoirement{} leurs rangs",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_waterstone = {
                name = "Pierre Eau",
                text = {
                    "Améliore {C:attention}#1#{} carte sélectionnée",
                    "en une {C:attention}Carte Bonus{}",
                    "S'il s'agit déjà d'une {C:attention}Carte Bonus{}",
                    "{C:attention}Double{} ses jetons",
                    "{C:inactive}(Maximum de {C:chips}+#2#{C:inactive} Jetons)",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_thunderstone = {
                name = "Pierre Foudre",
                text = {
                    "Détruit {C:attention}1{} carte sélectionnée,",
                    "ajoute {C:attention}2 Cartes Or{}",
                    "du même rang au jeu",
                    "et en pioche {C:attention}1{}",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_firestone = {
                name = "Pierre Feu",
                text = {
                    "Améliore {C:attention}#1#{} cartes sélectionnées en {C:attention}Cartes Multi.i.{}",
                    "puis en détruit {C:attention}1{} aléatoirement",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_leafstone = {
                name = "Pierre Plante",
                text = {
                    "{C:green}#1# chance(s) sur #2#{}",
                    "d'améliorer chaque carte en main",
                    "en {C:attention}Carte Chance{}",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_linkcable = {
                name = "Câble Link",
                text = {
                    "Sélectionnez {C:attention}#1#{} cartes",
                    "{C:attention}Augmente{} le rang de la carte de {C:attention}gauche{}",
                    "{C:attention}Diminue{} le rang de la carte de {C:attention}droite{}",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_leftovers = {
                name = "Restes",
                text = {
                    "{C:attention}Réutilisable{}",
                    "Ajoute {C:money}#2# ${} à la valeur de vente",
                    "du Joker le plus à gauche ou sélectionné",
                    "{C:inactive}(Utilisable une fois par manche)",
                }
            },
            c_poke_leek = {
                name = "Poireau",
                text = {
                    "{C:attention}Réutilisable{}",
                    "{C:green}#1# chance(s) sur #2#{} d'ajouter",
                    "un effet {C:dark_edition}Brillant{}, {C:dark_edition}Holographique{}, ou",
                    "{C:dark_edition}Polychrome{} à soi-même",
                    "Retire {C:attention}l'édition{} à la fin de la manche",
                    "{C:inactive}(Utilisable une fois par manche)",
                }
            },
            c_poke_thickclub = {
                name = "Masse Os",
                text = {
                    "{C:attention}Réutilisable{}",
                    "Ajoute de manière permanente {C:chips}+#2#{} Jetons",
                    "à {C:attention}#1#{} carte sélectionnée",
                    "{C:inactive}(Utilisable une fois par manche)",
                }
            },
            c_poke_teraorb = {
                name = "Orbe Téracristal",
                text = {
                    "Donne {C:attention}+1{} {C:pink}Énergie{} au Joker",
                    "le plus à gauche ou sélectionné{}",
                    "{C:attention}Change-Type{}"
                },
            },
            c_poke_metalcoat = {
                name = "Peau Métal",
                text = {
                    "Crée une copie {C:attention}Acier{} de",
                    "{C:attention}1{} carte sélectionnée",
                    "{C:attention}Change-Type{}"
                },
            },
            c_poke_dragonscale = {
                name = "Écaille Draco",
                text = {
                    "Crée jusqu'à {C:attention}3{} cartes",
                    "{C:item}Objet{} ou {C:pink}Énergie{} aléatoires",
                    "{C:attention}Change-Type{}",
                    "{C:inactive}(Selon la place disponible){}"
                },
            },
            c_poke_kingsrock = {
                name = "Roche Royale",
                text = {
                    "Change le rang de {C:attention}#1#{}",
                    "carte sélectionnée en {C:attention}Roi{}",
                    "{C:attention}Carte d'Évolution{}",
                },
            },
            c_poke_upgrade = {
                name = "Améliorator",
                text = {
                    "Donne à {C:attention}#1#{} cartes sélectionnées",
                    "une {C:attention}Amélioration non-Roche{} aléatoire",
                    "{C:attention}Carte d'Évolution{}",
                }
            },
            c_poke_dubious_disc = {
                name = "CD Douteux",
                text = {
                    "Change aléatoirement ou retire {C:attention}l'amélioration{}",
                    "de toutes les cartes en main",
                    "{C:attention}Carte d'Évolution{}",
                    "{C:inactive}(Inclut les cartes sans amélioration){}"
                }
            },
            c_poke_icestone = {
                name = "Pierre Glace",
                text = {
                    "Améliore {C:attention}#1#{} cartes sélectionnées",
                    "en {C:attention}Cartes Verre{}",
                    "{C:green}#2# chance(s) sur #3#{} pour chaque",
                    "carte sélectionnée d'être {C:attention}détruite{}",
                    "{C:attention}Carte d'Évolution{}",
                }
            },
            c_poke_shinystone = {
                name = "Pierre Éclat",
                text = {
                    "Ajoute un effet {C:dark_edition}Brillant{}, {C:dark_edition}Holographique{},",
                    "{C:dark_edition}Holographique{}, ou {C:dark_edition}Polychrome{}",
                    "à {C:attention}1{} carte sélectionnée en main et",
                    "supprime son {C:attention}Amélioration{}",
                    "{C:attention}Carte d'Évolution{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Cuillière Tordue",
                text = {
                    "Crée la dernière",
                    "carte {C:item}Objet{} ou {C:pink}Énergie{} utilisée",
                    "pendant cette partie",
                    "{s:0.8}Sauf {s:0.8,C:item}Cuillière Tordue et Réutilisables"
                }
            },
            c_poke_prismscale = {
                name = "Bel'Écaille",
                text = {
                    "Convertit {C:attention}#2#{} cartes {C:attention}en main{}",
                    "aléatoires en la {C:attention}couleur{} de",
                    "{C:attention}#1#{} carte sélectionnée",
                    "{C:attention}Carte d'Évolution{}"
                }
            },
            c_poke_duskstone = {
                name = "Pierre Nuit",
                text = {
                    "Octroie {C:money}#1# ${} pour chaque Joker {C:attention}Drainable{}",
                    "vous avez et leur {C:attention}Draine {C:money}1 ${}",
                    "Ne {C:attention}Draine{} pas après {C:attention}#2#{} manches {C:inactive}(Manche #3#)",
                    "{C:attention}Carte d'Évolution{}",
                    "{C:inactive}(Actuellement {C:money}#4# ${C:inactive}/#5# $ Maximum)"
                }
            },
            c_poke_dawnstone = {
                name = "Pierre Aube",
                text = {
                    "Octroie {C:money}${} égale au {c:attention}double{}",
                    "de la valeur de {C:mult}Multi.i.{} de {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:attention}Carte d'Évolution{}",
                    "{C:inactive}(Actuellement {C:money}#2# ${C:inactive}/40 $ Maximum)",
                }
            },
            c_poke_hardstone = {
                name = "Pierre Dure",
                text = {
                    "Améliore {C:attention}1{} carte sélectionnée en",
                    "{C:attention}Carte Pierre{} avec {C:chips}+#2#{} Jetons supplémentaires",
                    "pour chaque Joker {X:earth,C:white}Terre{} que vous avez"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Énergie Plante",
                text = {
                    "{C:pink}Énergise{} le Joker {X:grass,C:white}Plante{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_fire_energy = {
                name = "Énergie Feu",
                text = {
                    "{C:pink}Énergise{} le Joker {X:fire,C:white}Feu{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_water_energy = {
                name = "Énergie Eau",
                text = {
                    "{C:pink}Énergise{} le Joker {X:water,C:white}Eau{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_lightning_energy = {
                name = "Énergie Électrique",
                text = {
                    "{C:pink}Énergise{} le Joker {X:lightning,C:white}Électrique{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_psychic_energy = {
                name = "Énergie Psy",
                text = {
                    "{C:pink}Énergise{} le Joker {X:psychic,C:white}Psy{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_fighting_energy = {
                name = "Énergie Combat",
                text = {
                    "{C:pink}Énergise{} le Joker {X:fighting,C:white}Combat{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_colorless_energy = {
                name = "Énergie Incolore",
                text = {
                    "{C:pink}Énergise{} le Joker {X:colorless,C:white}Incolore{}",
                    "le plus à gauche ou sélectionné si possible",
                    "Moitié moins efficace sur",
                    "les Jokers non-{X:colorless,C:white}Incolores{}",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)"
                },
            },
            c_poke_darkness_energy = {
                name = "Énergie Obscurité",
                text = {
                    "{C:pink}Énergise{} le Joker {X:dark,C:white}Obscurité{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_metal_energy = {
                name = "Énergie Métal",
                text = {
                    "{C:pink}Énergise{} le Joker {X:metal,C:white}Métal{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_fairy_energy = {
                name = "Énergie Fée",
                text = {
                    "{C:pink}Énergise{} le Joker {X:fairy,C:white}Fée{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Énergie Dragon",
                text = {
                    "{C:pink}Énergise{} le Joker {X:dragon,C:white}Dragon{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_earth_energy = {
                name = "Énergie Terre",
                text = {
                    "{C:pink}Énergise{} le Joker {X:earth,C:white}Terre{}",
                    "le plus à gauche ou sélectionné si possible",
                    "{C:inactive}(Maximum de {C:attention}#1#{C:inactive} augmentations par Joker)",
                },
            },
            c_poke_emergy = {
                name = "Émergie",
                text = {
                    "Crée {C:attention}1{} carte {C:green}Énergie{} aléatoire",
                    "avec {C:dark_edition}Négatif{} pour chaque",
                    "{C:attention}Joker Jolly{} ou {C:legendary}M Joker{}" -- ? Mod Cryptid?? jsp comment c'est traduit sur ce mod
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Chromatique",
                label = "Chromatique",
                text = {
                    "{C:attention}+1{} emplacement de Booster",
                    "disponible dans le magasin",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
            -- HA HA ! Not anymore !

            m_poke_hazard = {
                name = "Carte Piège",
                text = {
                    "{C:attention}+1{} à la taille de main",
                    "Pas de rang ou de couleur",
                    "Retiré à la fin de la manche",
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "Mise diamand",
                colour = "Diamond",
                text = {
                    "Les Jokers {C:attention}non-Bébés{} évoluent",
                    "{C:attention}1{} manche plus lentement",
                    "{s:0.8}Applique toutes les mises précédentes"
                }
            },
            stake_poke_pearl = {
                name = "Pearl Stake",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} limite d'Énergie",
                    "{s:0.8}Applique toutes les mises précédentes"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} hand size",
                    "Earn {C:money}$#1#{} for each",
                    "{C:attention}#3#{} held in hand",
                    "{C:inactive,s:0.8}(Rank changes every round){}",
                    "{C:inactive,s:0.8}(Evolves after earning {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} hand size",
                    "Earn {C:money}$#1#{} or {C:money}$#5#{} for each",
                    "{C:attention}#4#{} held in hand",
                    "{C:inactive,s:0.8}(Rank changes every round){}",
                    "{C:inactive,s:0.8}(Evolves after earning {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} hand size",
                    "Earn {C:money}$#1#{} for each",
                    "{C:attention}#4#{} held in hand",
                    "{C:inactive,s:0.8}(Rank changes every round){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} hand size",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} discard",
                    "Gains {C:mult}+#2#{} Mult per hand played",
                    "when {C:attention}#3#{} discards remaining",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +16 Mult)",
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} discard",
                    "Gains {C:mult}+#2#{} Mult per hand played",
                    "when {C:attention}#3#{} discards remaining",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +36 Mult)",
                }
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} discard, {C:mult}+#1#{} Mult",
                    "{X:mult,C:white} X#2# {} Mult when {C:attention}#3#{} discards remaining",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Charizard X",
                text = {
                    "{X:mult,C:white} X#1# {} Mult when {C:attention}#2#{} discards remaining",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "Mega Charizard Y",
                text = {
                    "{C:red}+#1#{} discards",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#3#{} hands",
                    "Gains {C:chips}+#2#{} Chips for each hand",
                    "remaining at end of round",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +32 Chips)",
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} hands",
                    "Gains {C:chips}+#2#{} Chips for each hand",
                    "remaining at end of round",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +72 Chips)",
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} hands, {C:chips}+#1#{} Chips",
                    "{C:chips}+#2#{} Chips for each remaining hand",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:chips}+#2#{} hands",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
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
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Chips"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:chips}+#1#{} Chips",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "{C:mult}+#2#{} Mult if scoring hand contains",
                    "multiple ranks and multiple suits",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "{C:mult}+#2#{} Mult if scoring hand contains",
                    "multiple ranks and multiple suits",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Create a {C:planet}Planet{} card when {C:attention}Blind{} is selected",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#1#{} Mult if scoring hand contains",
                    "multiple ranks and multiple suits",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "When {C:attention}Blind{} is selected {C:attention}lose all discards{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Each played card gives {X:mult,C:white}X{} Mult",
                    "equal to {C:attention}discards lost{} if scoring hand",
                    "contains multiple ranks and multiple suits",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Retrigger {C:attention}first 2{} scored cards",
                    "{C:attention}#1#{} additional time",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Retrigger {C:attention}first 3{} scored cards",
                    "{C:attention}#1#{} additional time",
                }
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "After playing {C:attention}#2#{} {C:inactive}[#3#]{} scoring cards",
                    "upgrade level of next played {C:attention}poker hand{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "After playing {C:attention}#1#{} {C:inactive}[#2#]{} scoring cards",
                    "upgrade level of next played {C:attention}poker hand{}{C:inactive}#3#{}",
                }
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:chips}+#1#{} Chips if played hand",
                    "contains a {C:attention}Straight{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:chips}+#1#{} Chips if played hand",
                    "contains a {C:attention}Straight{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Create a {C:tarot}Tarot{} card if",
                    "it also contains an {C:attention}Ace{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Earn {C:money}$#1#{} for each Joker card",
                    "you have at end of round",
                    "{C:inactive,s:0.8}(Max of {C:money,s:0.8}$10{C:inactive,s:0.8})",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Gains {C:dark_edition}Negative{} at end of round",
                    "if you have at least {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Increases per Raichu you have){}",
                    "Earn {C:money}$#1#{} for each Joker card",
                    "you have at end of round",
                    "{C:inactive,s:0.8}(Max of {C:money,s:0.8}$#3#{C:inactive,s:0.8})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} Chips for each {C:attention}Glass{} card",
                    "in your full deck",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{V:1}Add a copy of the first {C:attention,V:1}Glass{V:1} card",
                    "{V:1}shattered each round to hand",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} Chips for each {C:attention}Glass{} card",
                    "in your full deck",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{V:1}Add a copy of the first {C:attention,V:1}#3#{} {C:inactive}[#4#]{} {C:attention,V:1}Glass{V:1} cards",
                    "{V:1}shattered each round to hand",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Each {C:attention}Queen{} held in hand",
                    "gives {C:chips}+#1#{} Chips",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Each {C:attention}Queen{} held in hand",
                    "gives {C:chips}+#1#{} Chips",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} hand size",
                    "Each {C:attention}Queen{} held in hand",
                    "gives {C:chips}+#1#{} Chips",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Each {C:attention}King{} held in hand",
                    "gives {C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Each {C:attention}King{} held in hand",
                    "gives {C:mult}+#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} hand size",
                    "Each {C:attention}King{} held in hand",
                    "gives {C:mult}+#1#{} Mult",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Played {C:clubs}#2#{} cards",
                    "give {C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "When scored, {C:clubs}#2#{} cards",
                    "give {C:mult}+#1#{} Mult for each",
                    "{C:clubs}#2#{} card played this round",
                    "{C:inactive,s:0.8}(If you play 5 clubs, each gives {C:mult,s:0.8}+#4#{C:inactive,s:0.8} Mult)",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}9{} to create a",
                    "{C:attention}Tarot{} card when scored",
                    "{C:inactive,s:0.8}(Must have room)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Fire Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Holding {C:dark_edition}Negative{} Medium{}",
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}9{} to create a",
                    "{C:attention}Tarot{} card when scored",
                    "{C:inactive,s:0.8}(Must have room)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Played {C:spades}#2#{} cards",
                    "give {C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Played {C:spades}#3#{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, and the",
                    "card's total chips when scored",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "Gains {C:mult}+#2#{} Mult for each Enhanced",
                    "card in scoring hand",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +#3# Mult)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Gain {C:chips}+#4#{} for scoring {C:attention}Bonus{} / {C:attention}Stone{} cards",
                    "{C:mult}+#2#{} for scoring {C:attention}Mult{} / {C:attention}Wild{} cards",
                    "{X:red,C:white}X#6#{} for scoring {C:attention}Steel{} / {C:attention}Glass{} cards",
                    "{C:money}$#8#{} for scoring {C:attention}Gold{} / {C:attention}Lucky{} cards",
                    "Then remove scoring card {C:dark_edition}Enhancements",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:red,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} end of round)",
                    "{C:inactive,s:0.8}(Evolves after eating {C:attention,s:0.8}#9#{C:inactive,s:0.8} Enhancements)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8} or {C:attention,s:0.8}Sun Stone{C:inactive,s:0.8})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#2#{} Mult or {X:mult,C:white}X#1#{} Mult",
                    "when scored",
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Mult per played hand",
                    "that contains a {C:attention}Two Pair{}",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +8 Mult)",
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Mult per played hand",
                    "that contains a {C:attention}Two Pair{}",
                    "{C:mult}-#3#{} Mult per played hand",
                    "that does not",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Adds {C:attention}#1#{} to all {C:attention}listed",
                    "{C:green,E:1,S:1.1}probabilities",
                    "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}2 in 6{C:inactive})",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
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
                    "{C:chips}+#2#{} Chips if played hand",
                    "contains a {C:attention}Three of a kind{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#3#{} Mult if played hand",
                    "contains a scoring {C:attention}2{}, {C:attention}3{}, or {C:attention}4{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} Chips if played hand",
                    "contains a {C:attention}Three of a kind{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{X:red,C:white} X#1# {} Mult if played hand",
                    "contains a scoring {C:attention}2{}, {C:attention}3{}, or {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Earn {C:money}${} at end of round",
                    "equal to {C:attention}double{} the sell value", 
                    "of the leftmost {C:attention}Joker{}",
                    "{C:inactive,s:0.8}(Except itself)",
                    "{C:inactive}(Currently {C:money}$#1#{C:inactive}, Max of {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "If played hand is a",
                    "single {C:attention}face card{}, earn {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
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
                    "Each played {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            --I'm doing pretty well. We had a snow day yesterday.
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Each played {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}7{} gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#3#{C:inactive,s:0.8} times)"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Mult if played hand",
                    "contains a {C:attention}Flush{}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Fire Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} Mult if played hand contains a {C:attention}Flush{}",
                    "First played unenhanced card in that {C:attention}Flush{}",
                    "becomes a {C:attention}Mult{} card when scored"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Played {V:1}#3#{} cards give {C:mult}+#1#{} Mult",
                    "when scored",
                    "Suit changes in order after scoring",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Played {V:1}#2#{} cards give {C:mult}+#1#{} Mult",
                    "when scored",
                    "Suit changes in order after scoring",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Water Stone{C:inactive,s:0.8} or {C:attention,s:0.8}King's Rock{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Played {V:1}#2#{} cards give {C:mult}+#7#{} Mult",
                    "and {X:mult,C:white}X#1#{} Mult when scored",
                    "Suit changes in order after scoring",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "{C:green}#1# in #2#{} chance to create an {C:item}Item",
                    "or {C:tarot}Tarot{} card if played {C:attention}poker hand{}",
                    "has already been played this round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "{C:green}#1# in #2#{} chance to create a {C:tarot}Tarot{} or",
                    "{C:item}Twisted Spoon{} card if played {C:attention}poker hand{}",
                    "has already been played this round",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} consumable slot",
                    "{C:green}#1# in #2#{} chance to create a {C:attention}Fool{} or",
                    "{C:item}Twisted Spoon{} card if played {C:attention}poker hand{}",
                    "has already been played this round",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} consumable slot",
                    "Every held {C:attention}Consumable{} gives {X:mult,C:white}X#1#{} Mult",
                    "{C:item}Twisted Spoons{} give {X:mult,C:white}X#2#{} Mult",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} hands",
                    "{C:mult}-#2# discards{}",
                    "{C:mult}+#4#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} hands",
                    "{C:mult}-#2# discards{}",
                    "{C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
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
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Played cards with {C:attention}Even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebel",
                text = {
                    "Played cards with {C:attention}Even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "and {C:attention}retrigger{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Each played {C:attention}10{} gives",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Each played {C:attention}10{} gives",
                    "{C:mult}+#1#{} Mult when scored",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:attention}10s can't{} be debuffed"
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
                    "Gains {C:chips}+#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +60 Chips)",
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Gains {C:chips}+#2#{} Chips if played", 
                    "hand contains a {C:attention}Straight{}",
                    "Chip increase goes up by {C:chips}+1{} each time",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Mult on {C:attention}final hand{} of round",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}King's Rock{C:inactive,s:0.8})"
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
                    "{X:red,C:white} X#1# {} Mult per hand played",
                    "{C:inactive,s:0.8}(Resets at end of round)",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "{X:red,C:white} X#1# {} Mult per hand played",
                    "{C:inactive,s:0.8}(resets when {C:attention,s:0.8}Boss Blind{C:inactive,s:0.8} is defeated)",
                    "{C:inactive}(Currently {X:red,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Played {C:attention}Steel{} cards",
                    "give {X:red,C:white}X#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Played {C:attention}Steel{} cards give {X:red,C:white}X#1#{} Mult",
                    "plus {X:red,C:white}X#2#{} Mult for each",
                    "adjacent {X:metal,C:white}Metal{} Joker",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Holding Leek{}",
                    "{C:green}#2# in #3#{} chance to earn {C:money}$#1#",
                    "when a {C:attention}Consumable{} is used",
                    "{C:money}${} guaranteed when using {C:attention}Leeks{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains at least {C:attention}2{} face cards",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains a {C:attention}Full House{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',
                text = {
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains at least {C:attention}3{} face cards",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:mult}+#1#{} Mult if scoring hand",
                    "contains a {C:attention}Full House{}",
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# in #2#{} chance to add a random {C:attention}seal{}",
                    "to the leftmost scoring card",
                    "on {C:attention}first hand{} of round",
                    "{C:inactive,s:0.8}(Evolves when your deck has {C:attention,s:0.8}#4#{C:inactive,s:0.8} / #3# {C:attention,s:0.8}seals{C:inactive,s:0.8})",
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Add a random {C:attention}seal{} to the",
                    "leftmost scoring card on",
                    "{C:attention}first hand{} of round",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Mult if deck size > {C:attention}#3#{}",
                    "Add a random playing card",
                    "to deck at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Mult per card over {C:attention}#2#{} in your deck",
                    "{br:4}ERROR - CONTACT STEAK",
                    "At end of round, remove {C:attention}1{} random card",
                    "from deck then add {C:attention}2{} random cards",
                    "{C:inactive}(Currently {C:mult}+#3#{} {C:inactive}Mult){}"
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "If hand has {C:attention}5{} scoring cards,",
                    "each have a {C:green}#1# in #2#{} chance",
                    "to {C:attention}retrigger{}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Water Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "If hand has {C:attention}5{} scoring cards,",
                    "each have a {C:green}#1# in #2#{} chance",
                    "to {C:attention}retrigger{}",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "{C:green}#1# in #2#{} chance to {C:attention}replace{} the",
                    "edition of a random {C:attention}Joker{} with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{S:1.1,C:red,E:2}self destructs{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "{C:green}#1# in #2#{} chance to {C:attention}replace{} the",
                    "edition of a random {C:attention}Joker{} with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{S:1.1,C:red,E:2}self destructs{}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}#1#%{} chance to {C:attention}replace{} the",
                    "edition of a random {C:attention}Joker{} with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Odds can't be increased){}",
                    "{C:inactive,s:0.8}(Excludes Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "{C:dark_edition}Polychrome{} Jokers that would appear",
                    "in the {C:attention}Shop{} and {C:attention}Booster Packs{}",
                    "are {C:dark_edition}Negative{} instead",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "The leftmost scoring card of",
                    "{C:attention}first hand{} of round",
                    "becomes a {C:attention}Stone{} card",
                    "{C:inactive,s:0.8}(Evolves with a {C:metal,s:0.8}Metal{C:inactive,s:0.8} sticker)"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{X:mult,C:white}X#2#{} Mult per unique",
                    "{C:planet}Planet{} card used this run",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after playing {C:planet,s:0.8}#3#{C:inactive,s:0.8} unique planet cards)",
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Holding Trance{}",
                    "{X:mult,C:white}X#2#{} Mult per unique",
                    "{C:planet}Planet{} card used this run",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Played {C:attention}face{} cards give",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "All played {C:attention}face{} cards give",
                    "{C:chips}+#1#{} Chips when scored and become",
                    "{C:attention}Bonus{} cards if unenhanced",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "{C:attention}Volatile Right{}",
                    "{X:mult,C:white} X#1# {} Mult and debuff self",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "{C:attention}Volatile Right{}",
                    "{X:mult,C:white} X#1# {} Mult and earn {C:money}$#2#{}",
                    "then debuff self"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Played {C:hearts}#2#{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "{C:green}#4# in #5#{} chance for played",
                    "{C:hearts}#3#{} cards to give {C:mult}+#1#{} Mult",
                    "and {X:mult,C:white}X#2#{} Mult when scored",
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',
                text = {
                    "{C:attention}Holding Thick Club{}",
                    "Gives {C:mult}+#1#{} Mult for",
                    "each {C:attention}held{} consumable",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Thick Clubs{C:inactive,s:0.8} count as double){}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after using {C:attention,s:0.8}#3#{C:inactive,s:0.8} consumables)",
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} consumable slots",
                    "Gives {X:mult,C:white} X#1# {} Mult for",
                    "each {C:attention}held{} consumable",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Thick Clubs{C:inactive,s:0.8} count as double){}",
                    "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:red,C:white}X#1#{} Mult for every card",
                    "below {C:attention}#2#{} in your full deck",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:red,C:white}X#1#{} Mult for every card",
                    "above {C:attention}#2#{} in your full deck",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "First and second played {C:attention}Jacks{}",
                    "give {X:mult,C:white} X#1# {} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Sell this card to reduce the",
                    "score requirement of the",
                    "current {C:attention}Boss Blind{} by {C:attention}half{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Sell this card to {C:attention}disable{} the",
                    "current {C:attention}Boss Blind{} and reduce",
                    "the score requirement by {C:attention}half{}",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Every played {C:attention}Stone{} card",
                    "permanently gains",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Every played {C:attention}Stone{} card permanently",
                    "gains {C:chips}+#1#{} Chips when scored",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Retrigger {C:attention}first{} scored {C:attention}Stone{} card",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "The first {C:attention}#1#{C:inactive} [#2#]{} times a {C:attention}Lucky{} card triggers",
                    "each round, add a permanent copy to",
                    "your deck and draw it to {C:attention}Hand",
                    "{C:inactive,s:0.8}(Evolves when deck is >= 25% #3#{C:attention,s:0.8}Lucky{C:inactive,s:0.8} cards)"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#6# Wild Cards{C:inactive,s:0.8})"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} consumable slots",
                    "{C:chips}-#2#{} hands",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "{C:attention}Retrigger{} all cards played",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Create a {C:attention}Double Tag{} at",
                    "end of round if at least",
                    "{C:attention}#1# Consumables{} used this round",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive} Consumables used)"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "for each {C:attention}6{}",
                    "in scoring hand",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +12 Mult)",
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Gains {C:mult}+#2#{} Mult for each scored {C:attention}6{}",
                    "Doubled if a {C:attention}King{} is held in hand",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:dragon,s:0.8}Dragon{C:inactive,s:0.8} sticker)"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Retrigger each {C:attention}Gold{} card",
                    "held in hand {C:attention}#1#{} time",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Retrigger each {C:attention}Gold{} card",
                    "held in hand {C:attention}#1#{} times",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Played {C:diamonds}#2#{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Water Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Played {C:diamonds}#3#{} cards give",
                    "{C:mult}+#1#{} Mult and {C:money}$#2#{} when scored",
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
                    "When Blind is selected, destroy Joker",
                    "to the right and gain {C:mult}+#2#{} Mult",
                    "Gain {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{}",
                    "if it was {C:red}Rare{} or higher",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:metal,s:0.8}Metal{C:inactive,s:0.8} sticker or a {C:attention,s:0.8}Hard Stone{C:inactive,s:0.8})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "When {C:attention}Blind{} is selected, gain {C:attention}+#1#{} hand size",
                    "if deck size is {C:attention}#2#{} or greater",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}Playing cards{} added to your",
                    "deck from the {C:attention}Shop{}, {C:attention}Standard{} packs,",
                    "{C:spectral}Cryptid{}, {C:item}Items{} and certain Jokers",
                    "are {C:attention}duplicated{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Gains {C:money}$#1#{} of {C:attention}sell value{} when a card",
                    "is sold and at end of round",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "Earn {C:attention}#2#%{} of this Joker's sell value",
                    "at end of round {C:inactive}(rounded up){}",
                    "{C:inactive}(Currently earns {C:money}$#3#{C:inactive}/$#4# Max)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "If {C:attention}first discard{} of round has only",
                    "{C:attention}1{} card, destroy it and gain {C:mult}+#2#{} Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Mult if a scored card",
                    "has the {C:attention}same rank{} as",
                    "a card {C:attention}held in hand{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Played {C:attention}unenhanced{} cards",
                    "give {X:mult,C:white} X#1# {} Mult when scored",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Leader)',
                text = {
                    "{C:attention}Tauros{} and {C:attention}Miltank{} Jokers",
                    "each give {X:mult,C:white} X#1# {} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Each reroll in the shop has a",
                    "{C:green}#2# in #3#{} chance to find a {C:attention}Tauros (Herd){}",
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
                    "{C:chips}+#2#{} Chip",
                    "Applies {C:attention}Splash{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
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
                    "Disables effect of",
                    "every {C:attention}Boss Blind{}"
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
                    "Sell this to duplicate the leftmost",
                    "Joker with {C:attention}Perishable{} and",
                    "a {C:colorless}Colorless{} sticker",
                    "{C:inactive,s:0.8}(removes Eternal, excludes Dittos)",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "Earn {C:money}$#1#{} for the",
                    "first {C:attention}5{} {C:green}rerolls{}",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#3#)",
                    "{C:inactive,s:0.8}(Evolves with...a lot)",
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Gains {C:chips}+#2#{} Chips for",
                    "every {C:attention}3{C:inactive} [#3#] {C:green}rerolls{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Earn {C:money}$#1#{} for",
                    "every {C:attention}3{C:inactive} [#2#] {C:green}rerolls{}",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Gains {X:red,C:white} X#2# {} Mult for",
                    "every {C:attention}3{C:inactive} [#3#] {C:green}rerolls{}",
                    "{C:inactive}(Currently {X:red,C:white} X#1# {C:inactive} Mult)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Energy Limit",
                    "Create an {C:pink}Energy{} card when",
                    "any {C:attention}Booster Pack{} is opened",
                    "{C:inactive,s:0.8}(Evolves with a {C:metal,s:0.8}Upgrade{C:inactive,s:0.8})",
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : Create a {C:tarot}Tarot{} card",
                    "{X:attention,C:white}2+{} : Earn {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Create a {C:item}Item{} card",
                    "{C:inactive,s:0.8}(Must have room)",
                    "{C:inactive,s:0.8}(Evolves after triggering third level {C:attention,s:0.8}#3#{C:inactive,s:0.8} times)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : Create a {C:tarot}Tarot{} card",
                    "{X:attention,C:white}2+{} : Earn {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Create a {C:item}Item{} card",
                    "{C:inactive,s:0.8}(Must have room)",
                    "{X:attention,C:white}4+{} : Create a {C:attention}tag{} once per round{C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}2+{} : {}Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chips",
                    "{C:inactive,s:0.8}(Evolves after triggering third level {C:attention,s:0.8}#5#{C:inactive,s:0.8} times)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}2+{} : {}Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chips",
                    "{X:attention,C:white}4+{} : {}Retrigger {C:attention}first{} and {C:attention}second{}",
                    "played cards {C:attention}#5#{} additional time"
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {X:red,C:white}X#2#{} Mult",
                    "{X:attention,C:white}2+{} : Gains {X:red,C:white}X#3#{} Mult",
                    "{X:attention,C:white}3+{} : The first scoring unenhanced {C:attention}#1#{}",
                    "becomes a {C:attention}Glass{} card",
                    "{X:attention,C:white}4+{} : {C:attention}Double{} this Joker's {X:red,C:white}X{} Mult",
                    "{C:inactive}(Resets at end of round){}",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Played {C:attention}#1#s{} give {X:mult,C:white} X#2# {} Mult for each",
                    "{C:attention}#1#{} in played hand when scored",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "{C:green}#3# in #4#{} chance for each",
                    "played {C:attention}#1#{} to be destroyed",
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "{C:attention}Holding Leftovers{}",
                    "At end of round gain {X:red,C:white}X#1#{} Mult",
                    "for each {C:attention}Leftovers{} you have",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {C:inactive} Mult)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Add {C:attention}Foil{} and a {C:attention}seal{}",
                    "to leftmost scoring card",
                    "in played hand"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Mult for",
                    "every {C:money}$#2#{} you have",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Upgrade the first {C:attention}discarded{}",
                    "poker hand each round",
                    "by {C:attention}3{} levels"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "if played hand has",
                    "{C:attention}#3#{} or fewer cards",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +10 Mult)",
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "if played hand has",
                    "{C:attention}#3#{} or fewer cards",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +30 Mult)",
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{br:1.6}ERROR - CONTACT STEAK",
                    "Retrigger played card {C:attention}#2#{} times",
                    "if played hand is",
                    "exactly {C:attention}1{} card"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "At end of shop, create a",
                    "{C:dark_edition}Polychrome{} {C:attention}duplicate{} of leftmost",
                    "{C:attention}Joker{} and {C:pink}Energize{} the {C:attention}duplicate{}",
                    "then destroy leftmost {C:attention}Joker{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:dark_edition}Polychrome{} Jokers give {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Can't destroy self)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtwo X",
                text = {
                    "All Jokers give {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtwo Y",
                text = {
                    "{C:pink}Energize{} leftmost joker {C:attention}twice{}",
                    "at end of shop",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:pink}+1{} Energy Limit when",
                    "{C:attention}Boss Blind{} is defeated"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "At the end of the {C:attention}shop{},",
                    "create a {C:dark_edition}Negative{} {C:tarot}Tarot{},",
                    "{C:spectral}Spectral{} or {C:item}Item{} card",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:green}#1#%{} chance to create a",
                    "{C:dark_edition}Negative{} Joker {C:attention}instead{}",
                    "{C:inactive,s:0.8}(Odds can't be increased){}",
                } 
            },
            j_poke_chikorita = {
                name = 'Chikorita',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Every {C:attention}third{} card {C:attention}held in hand{}",
                    "earns {C:money}$#2#{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_bayleef = {
                name = 'Bayleef',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Every {C:attention}other{} card {C:attention}held in hand{}",
                    "earns {C:money}$#2#{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_meganium = {
                name = 'Meganium',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Every card {C:attention}held in hand{}",
                    "earns {C:money}$#2#{} at end of round",
                }
            },
            j_poke_cyndaquil = {
                name = 'Cyndaquil',
                text = {
                    "{C:red}+#1#{} discard",
                    "{C:mult}+#2#{} Mult for each",
                    "remaining {C:attention}discard{}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_quilava = {
                name = 'Quilava',
                text = {
                    "{C:red}+#1#{} discard",
                    "{C:mult}+#2#{} Mult for each",
                    "remaining {C:attention}discard{}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_typhlosion = {
                name = 'Typhlosion',
                text = {
                    "{C:red}+#1#{} discard",
                    "{C:mult}+#2#{} Mult and {X:red,C:white} X#3# {} Mult for",
                    "each remaining {C:attention}discard{}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult and {X:red,C:white} X#5# {C:inactive} Mult)",
                }
            },
            j_poke_totodile = {
                name = 'Totodile',
                text = {
                    "{C:blue}+#1#{} hand",
                    "{C:chips}+#2#{} Chips for each card",
                    "played this round",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#4#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_croconaw = {
                name = 'Croconaw',
                text = {
                    "{C:blue}+#1#{} hand",
                    "{C:chips}+#2#{} Chips for each card",
                    "played this round",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#4#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_feraligatr = {
                name = 'Feraligatr',
                text = {
                    "{C:blue}+#1#{} hand",
                    "{C:chips}+#2#{} Chips for each card",
                    "played this round",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)",
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
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "{C:mult}+#2#{} Mult when played hand",
                    "isn't the last played hand",
                    "{C:inactive}(Last hand: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
                }  
            },
            j_poke_hoothoot = {
                name = 'Hoothoot',
                text = {
                    "{C:purple}+#1# Foresight ",
                    "Each {C:attention}Foreseen{} card",
                    "gives their total chips",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Foresight",
                    "Each {C:attention}Foreseen{} card",
                    "gives their total chips",
                }
            },
            j_poke_ledyba = {
                name = "Ledyba",
                text = {
                  "{C:mult}+#1#{} Mult for every {C:attention}5{} cards",
                  "remaining in deck",
                  "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                  "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
                }
            },
            j_poke_ledian = {
                name = "Ledian",
                text = {
                  "{C:mult}+#1#{} Mult for every {C:attention}3{} cards",
                  "remaining in deck",
                  "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_poke_spinarak = {
                name = "Spinarak",
                text = {
                  "{C:chips}+#1#{} Chips",
                  "{C:green}#2# in #3#{} for {C:chips}+#5#{} Chips instead",
                  "{C:inactive,s:0.8}(Evolves after {C:attention}#4#{C:inactive} rounds)",
                }
            },
            j_poke_ariados = {
              name = "Ariados",
              text = {
                "{C:chips}+#1#{} Chips",
                "{C:green}#2# in #3#{} for {C:chips}+#4#{} Chips instead",
              }
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "Gain {C:chips}+#4#{} for scoring {C:attention}Bonus{} / {C:attention}Stone{} cards",
                    "{C:mult}+#2#{} for scoring {C:attention}Mult{} / {C:attention}Wild{} cards",
                    "{X:red,C:white}X#6#{} for scoring {C:attention}Steel{} / {C:attention}Glass{} cards",
                    "{C:money}$#8#{} for scoring {C:attention}Gold{} / {C:attention}Lucky{} cards",
                    "Then {C:attention}Randomize{} scoring card {C:dark_edition}Enhancements",
                    "{C:inactive}(Currently {C:chips}+#3#{}, {C:mult}+#1#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{C:inactive} end of round)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#2# {} Mult",
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}Moon{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}World{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_togepi = {
                name = 'Togepi',
                text = {
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_togetic = {
                name = 'Togetic',
                text = {
                    "{C:attention}Lucky Cards{} have",
                    "a {C:green}#1# in #2#{} chance to give {C:chips}+#4#{} Chips",
                    "and a {C:green}#1# in #3#{} chance to give {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Shiny Stone{C:inactive,s:0.8} card)"
                }
            },
            j_poke_natu = {
                name = 'Natu',
                text = {
                    "{C:planet}Planet{} cards give an extra level",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_xatu = {
                name = 'Xatu',
                text = {
                    "{C:planet}Planet{} cards give an extra level",
                    "{C:planet}Celestial Packs{} contain every {C:planet}Planet{} card",
                }
            },
            j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white}X#1#{} Mult",
                    "Create a {C:attention}Hierophant{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_marill = {
                name = 'Marill',
                text = {
                    "{X:mult,C:white}X#2#{} Mult if played hand",
                    "contains a scoring {C:attention}unenhanced{} card",
                    "and a scoring {C:attention}enhanced{} card",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#1# Bonus Cards{C:inactive,s:0.8})",
                }
            },
            j_poke_azumarill = {
                name = 'Azumarill',
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Gives double {X:mult,C:white}X{} Mult if played hand",
                    "contains a scoring {C:attention}non-Bonus{} card",
                    "and a scoring {C:attention}Bonus{} card"
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "{C:attention}Type Changer Pokemon{}",
                  "Played {C:attention}face{} cards give {C:mult}+#1#{} Mult when scored",
                  "{br:3.5}ERROR - CONTACT STEAK",
                  "Retrigger all played {C:attention}face{} cards if",
                  "this Joker isn't {X:grass,C:white}Grass{} or",
                  "you have a {X:water,C:white}Water{} Joker"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Played cards with {C:attention}Odd{} rank",
                    "give {C:mult}+#1#{} Mult or become",
                    "{C:attention}Wild{} cards when scored",
                    "If already {C:attention}Wild{}, adds {C:dark_edition}Foil{},",
                    "{C:dark_edition}Holographic{} or {C:dark_edition}Polychrome{} edition"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Played {V:1}#2#{} cards give {C:mult}+#1#{} Mult when scored",
                    "{br:5}ERROR - CONTACT STEAK",
                    "Retrigger {V:1}#2#{} cards based on",
                    "how many {X:water,C:white}Water{} Jokers you have",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{C:inactive,s:0.8} Retrigger(s) divided evenly between scoring cards){}",
                    "{s:0.8}Suit cycles after scoring {C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                } 
            },
            j_poke_hoppip = {
                name = 'Hoppip',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "First two {C:attention}discarded cards{} become {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "First three {C:attention}discarded cards{} become {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "All {C:attention}discarded cards{} become {C:dark_edition}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                }
            },
            j_poke_aipom = {
              name = "Aipom",
              text = {
                "{C:chips}-#3#{} hand",
                "All {C:attention}Flushes{} and {C:attention}Straights{} can",
                "be made with {C:attention}3{} cards",
                "{C:inactive,s:0.8}(Evolves after playing {C:attention,s:0.8}#1#{C:inactive,s:0.8} Straights and {C:attention,s:0.8}#2#{C:inactive,s:0.8} Flushes){}"
              }
            },
            j_poke_sunkern = {
                name = 'Sunkern',
                text = {
                    "Earn {C:money}$#1#{} when {C:attention}Blind{} is selected",
                    "and when hand is {C:attention}played{}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Sun Stone{C:inactive,s:0.8})"
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
            j_poke_yanma = {
              name = "Yanma",
              text = {
                "Each played {C:attention}3{} or {C:attention}6{} gives",
                "{C:chips}+#2#{} Chips and {C:mult}+#1#{} Mult when scored",
                "{C:green}#5# in #6#{} chance for {C:chips}+#4#{} Chips",
                "and {C:mult}+#3#{} Mult instead",
                "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#7#{C:inactive,s:0.8} 3s or 6s)"
              }
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "{C:attention}Retrigger{} each played {C:attention}#3#{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Each scored {V:1}#4#{} card",
                    "gives {X:red,C:white}X#2#{} Mult",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Rank{C:inactive,s:0.8}/{C:attention,s:0.8}Suit{C:inactive,s:0.8} are {C:attention,s:0.8}randomized{C:inactive,s:0.8} on each {C:green,s:0.8}Reroll{C:inactive,s:0.8})"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Decrease level of played {C:attention}#1#{}",
                    "{br:4}ERROR - CONTACT STEAK",
                    "For every {C:attention}#2# {C:inactive}[#3#]{} decreases,",
                    "create an {C:attention}Orbital Tag{} or {C:dark_edition}Negative Tag{}",
                    "{C:inactive,s:0.8}(Required hand {C:attention,s:0.8}cycles{C:inactive,s:0.8} on each {C:green,s:0.8}Reroll{C:inactive,s:0.8})",
                } 
            },
            j_poke_murkrow = {
              name = "Murkrow",
              text = {
                "{X:red,C:white} X#1# {} Mult for each",
                "{X:dark,C:white}Dark{} Joker you have",
                "{C:inactive}(Currently {X:red,C:white} X#2#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})"
              }
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Played {C:attention}Kings{} give {X:red,C:white}X#1#{} Mult when scored",
                    "Increases by {X:red,C:white}X#2#{} Mult",
                    "per hand played beyond the first",
                    "{C:inactive,s:0.8}(Resets at end of round)",
                }
            },
            j_poke_misdreavus = {
                name = 'Misdreavus',
                text = {
                    "Played {C:attention}face{} cards permanently",
                    "lose up to {C:chips}#1#{} Chips when scored",
                    "Gain lost Chips",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})",
                }
            },
            j_poke_wobbuffet = {
              name = "Wobbuffet",
              text = {
                "Retrigger each played",
                "{C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} or {C:attention}10{}",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:attention}Volatile Left{}",
                "When blind is selected",
                "add {C:attention}Eternal{} to rightmost Joker",
              }
            },
            j_poke_girafarig = {
              name = "Girafarig",
              text = {
                "First and last {C:attention}face{} card",
                "give {X:mult,C:white}X#1#{} Mult when scored",
                "if played hand contains a {C:attention}Two Pair{}",
                "{C:inactive,s:0.8}(Evolves after using a {C:attention,s:0.8}Death{C:inactive,s:0.8} on {C:attention,s:0.8}2{C:inactive,s:0.8} face cards){}"
              }
            },
            j_poke_pineco = {
              name = "Pineco",
              text = {
                "{C:attention}Volatile Left{}",
                "{C:chips}+#1#{} Chips and debuff self",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_forretress = {
              name = "Forretress",
              text = {
                "Gains {C:chips}+#2#{} Chips when",
                "a {C:attention}held{} {C:attention}Steel{} card triggers",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:attention}Volatile Left{}",
                "{C:chips}+#1#{} Chips and debuff self",
              }
            },
            j_poke_dunsparce = {
                name = 'Dunsparce',
                text = {
                  "{C:inactive}Does nothing...?",
                  "{S:1.1,C:red,E:2}self destructs{} at end of shop",
                  "if you {C:green}Reroll{}",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_gligar = {
                name = 'Gligar',
                text = {
                    "Played cards give {X:mult,C:white}X#1#{} Mult",
                    "for each {V:1}#2#{} {C:attention}held{} in hand",
                    "{C:inactive, s:0.8}(Suit changes every round)",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "The leftmost scoring card of",
                    "{C:attention}first hand{} of round becomes a {C:attention}Steel{} card",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}Stone{} cards {C:attention}held in hand{} become {C:attention}Steel{}"
                } 
            },
            j_poke_snubbull = {
                name = 'Snubbull',
                text = {
                    "First played {C:attention}face{} card",
                    "gives {X:mult,C:white}X#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_granbull = {
                name = 'Granbull',
                text = {
                    "First played {C:attention}face{} card",
                    "gives {X:mult,C:white}X#2#{} Mult when scored if it",
                    "is a {C:attention}Queen{} and {X:mult,C:white}X#1#{} Mult otherwise",
                }
            },
            j_poke_qwilfish = {
                name = 'Qwilfish',
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Gain {C:chips}+#3#{} Chips for each",
                    "{C:attention}Hazard Card held{} in hand",
                    "when hand is played",
                    "{C:inactive}(Currently {C:chips}+#4#{C:inactive} Chips)",
                }
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "When Blind is selected, destroy Joker",
                    "to the right and gain {C:mult}+#4#{} Mult",
                    "Gain {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{}",
                    "if it was {C:red}Rare{} or higher",
                    "Those editions {C:attention}stack{} on this Joker",
                    "{C:inactive,s:0.8}(Matches destroyed Joker's edition if able){}",
                    "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult, {C:chips}+#2#{} {C:inactive}Chips, {X:red,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_sneasel = {
                name = 'Sneasel',
                text = {
                    "If played hand is a single {C:attention}#1#{}",
                    "destroy it and earn {C:money}$#2#",
                    "{C:inactive,s:0.8}(Rank changes every round){}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})",
                }
            },
            j_poke_teddiursa = {
              name = "Teddiursa",
              text = {
                "Gains {C:mult}+#2#{} Mult when any",
                "{C:attention}Booster Pack{} is skipped",
                "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / #3# Mult)",
              }
            },
            j_poke_ursaring = {
              name = "Ursaring",
              text = {
                "Gains {C:mult}+#2#{} Mult and",
                "creates an {C:item}Item{} when any",
                "{C:attention}Booster Pack{} is skipped {C:inactive,s:0.8}(Must have room)",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})",
              }
            },
            j_poke_swinub = {
                name = "Swinub",
                text = {
                  "First played card gives {C:mult}+#1#{} Mult for each",
                  "{C:attention}Stone{} and {C:attention}Glass{} Card in scoring hand",
                  "{br:2}text needs to be here to work",
                  "{C:green}#3# in #4#{} chance to earn {C:money}$#2#{} ",
                  "at end of round",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#5#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_piloswine = {
              name = "Piloswine",
              text = {
                "First played card gives {C:mult}+#1#{} Mult for each",
                "{C:attention}Stone{} and {C:attention}Glass{} Card in scoring hand",
                "{br:2}text needs to be here to work",
                "{C:green}#3# in #4#{} chance to earn {C:money}$#2#{} ",
                "at end of round",
                "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#5#{C:inactive,s:0.8} Stone or Glass cards)",
              }
            },
            j_poke_heracross = {
                name = 'Heracross',
                text = {
                    "{X:mult,C:white} X#1# {} Mult if no scored cards",
                    "have the {C:attention}same rank{} as",
                    "a card {C:attention}held in hand{}"
                }
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "{C:mult}+#1#{} Mult for each {C:attention}Enhanced{}",
                "card in your full deck",
                "{br:2}ERROR - CONTACT STEAK",
                "Create a {C:attention}Basic{} {X:water,C:white}Water{} Joker if scoring",
                "hand contains {C:attention}5 Enhanced{} cards",
                "{C:inactive,s:0.8}(Must have room)",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
              }
            },
            j_poke_remoraid = {
              name = "Remoraid",
              text = {
                "Retrigger the first {C:attention}#3#{} {C:inactive}[#4#]{}",
                "cards scored each round",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_octillery = {
              name = "Octillery",
              text = {
                "Retrigger the first {C:attention}#2#{} {C:inactive}[#3#]{}",
                "cards scored each round",
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "At end of round",
                  "receive a {S:1.1,C:green,E:2}Present{}",
                  "{C:inactive,s:0.8}(Must have room)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Gains {C:chips}+#2#{} Chips when a {C:attention}Gold{} card",
                  "is scored or {C:attention}held{} in hand",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_skarmory = {
                name = 'Skarmory',
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "{X:mult,C:white}X#3#{} Mult for each",
                    "{C:attention}Hazard Card held{} in hand",
                    "{C:inactive}(Currently {X:mult,C:white}X#4#{C:inactive} Mult)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Gains {C:mult}+#2#{} Mult for each scored {C:attention}6{}",
                    "If a {C:attention}King{} is held in hand,",
                    "gains {X:red,C:white}X#4#{} Mult {C:attention}instead{} for each scored {C:attention}6{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:red,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_phanpy = {
                name = "Phanpy",
                text = {
                  "Gains {X:red,C:white}X#2#{} Mult for each",
                  "{C:attention}consecutive{} played hand",
                  "with {C:attention}5{} scoring cards",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_donphan = {
                name = "Donphan",
                text = {
                  "Gains {X:red,C:white}X#2#{} Mult for each",
                  "{C:attention}consecutive{} played hand",
                  "with {C:attention}5{} scoring cards",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Energy Limit",
                    "When any {C:attention}Booster Pack{} is opened",
                    "create an {C:pink}Energy{} card of",
                    "the same {C:pink}Type{} of leftmost Joker",
                    "{C:inactive,s:0.8}(Evolves with a {C:metal,s:0.8}Dubious Disc{C:inactive,s:0.8})",
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                  "Gives {C:chips}+#1#{} Chips times {C:attention}highest{} scoring",
                  "rank if played hand contains a {C:attention}Pair{}",
                  "Chips {C:attention}Doubled{} on {C:attention}final hand{} of round",
                }
            },
            j_poke_smeargle = {
                name = "Smeargle",
                text = {
                  "{C:attention}Sketch{} ability of {C:attention}Joker{} to the right",
                  "when blind is selected",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Applies {C:attention}Smeared Joker{}",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "If {C:attention}first hand or discard{} of round",
                    "has exactly {C:attention}5{} cards, a random card is",
                    "copied {C:inactive}(if played){} or destroyed {C:inactive}(if discarded){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "When blind is selected",
                    "gains {X:red,C:white} X#3# {} Mult if",
                    "deck size is exactly {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}Standard{} tag",
                    "when this Joker evolves",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}Coupon{} tag",
                    "when this Joker evolves",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "{C:red}+#2#{} discards",
                    "{C:inactive}(Yes, this will {C:attention}reduce{C:inactive} your Mult)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_houndour = {
              name = "Houndour",
              text = {
                "Discarding more than {C:attention}3{} cards",
                "also discards {C:attention}#3#{} random cards {C:attention}held{} in hand",
                "{br:2}ERROR - CONTACT STEAK",
                "Discarded cards permanently gain {C:mult}+#1#{} Mult",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_houndoom = {
              name = "Houndoom",
              text = {
                "Discarding more than {C:attention}3{} cards",
                "also discards {C:attention}all{} cards {C:attention}held{} in hand",
                "{br:2}ERROR - CONTACT STEAK",
                "Discarded cards permanently gain {C:mult}+#1#{} Mult",
              }
            },
            j_poke_miltank = {
                name = "Miltank",
                text = {
                  "Earn {C:money}$#1#{} for each", 
                  "{C:colorless}Colorless{} Joker you have",
                  "at end of round",
                  "{C:inactive}(Currently {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "The first {C:attention}#1#{C:inactive} [#2#]{} times a {C:attention}Lucky{} card triggers",
                    "each round, add a permanent {C:dark_edition}Polychrome{} copy to",
                    "your deck and draw it to {C:attention}Hand",
                } 
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} Ante after skipping {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}Blinds{}",
                    "{C:inactive}(Required skips increase each time)"
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards have a",
                    "a {C:green}#4# in #5#{} chance to earn {C:money}$#1#{} when scored",
                    "Guaranteed if you have other {X:grass,C:white}Grass{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive,s:0.8}(Evolves after earning {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards have a",
                    "{C:green}#4# in #5#{} chance to earn {C:money}$#1#{} when scored",
                    "Guaranteed if you have other {X:grass,C:white}Grass{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive,s:0.8}(Evolves after earning {C:money,s:0.8}$#2#{C:inactive,s:0.8})",
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards earn {C:money}$#1#{} when scored",
                    "{br:5}ERROR - CONTACT STEAK",
                    "Earn {C:money}$#1#{} at end of round for",
                    "each other {X:grass,C:white}Grass{} card you have",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive}(Currently {C:money}$#4#{C:inactive}, Max of {C:money}$14{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} discards, {C:attention}Nature: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "{C:mult}+#1#{} Mult for each {C:attention}Nature{} card discarded this round",
                    "Doubled with other {X:fire,C:white}Fire{} or {X:earth,C:white}Fighting{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult)",
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} discards, {C:attention}Nature: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "{C:mult}+#1#{} Mult for each {C:attention}Nature{} card discarded this round",
                    "Doubled with other {X:fire,C:white}Fire{} or {X:earth,C:white}Fighting{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:mult,s:0.8}#2#{C:inactive,s:0.8} Mult)",
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} discards, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "For each {C:attention}Nature{} card discarded this round",
                    "gain {C:mult}+#4#{} Mult and {X:red,C:white}X#1#{} Mult for",
                    "each {X:fire,C:white}Fire{} or {X:earth,C:white}Fighting{} card you have",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive}(Currently {C:mult}+#5#{C:inactive} Mult, {X:red,C:white}X#3#{C:inactive} Mult){}",
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} hands, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "Doubled with other {X:water,C:white}Water{} or {X:earth,C:white}Earth{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive,s:0.8}(Evolves after gaining {C:chips,s:0.8}#2#{C:inactive,s:0.8} Chips)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} hands, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "Doubled with other {X:water,C:white}Water{} or {X:earth,C:white}Earth{} cards",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive,s:0.8}(Evolves after gaining {C:chips,s:0.8}#2#{C:inactive,s:0.8} Chips)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#3#{} hands, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "and {C:chips}+#5#{} Chips per other {X:water,C:white}Water{} or {X:earth,C:white}Earth{} card",
                    "{C:inactive,s:0.8}(includes Jokers and Energy cards){}",
                    "{C:inactive}(Currently {C:chips}+#4#{C:inactive} total)"
                } 
            },
            j_poke_zigzagoon = {
              name = "Zigzagoon",
              text = {
                "{C:attention}Holding Pickup{} {C:item}Item{}",
                "{C:green}#1# in #2#{} chance to create an",
                "{C:item}Item{} when hand is played",
                "{C:inactive}(Must have room)",
                "{C:inactive,s:0.8}(Evolves after {C:attention}#3#{C:inactive,s:0.8} rounds)",
              }
            },
            j_poke_linoone = {
              name = "Linoone",
              text = {
                "{C:green}#1# in #2#{} chance to create an",
                "{C:item}Item{} when hand is played",
                "Guaranteed if hand",
                "contains a {C:attention}Straight{}",
                "{C:inactive}(Must have room)"
              }
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "When {C:attention}Blind{} is selected, gain",
                  "{C:chips}+#1#{} hand, {C:mult}+#2#{} discard, or {C:attention}+#3#{} hand size",
                  "{C:inactive,s:0.8}(Evolves after defeating the {C:attention,s:0.8}Ante #4#{C:inactive,s:0.8} Boss Blind){}"
                }
            }, 
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "When {C:attention}Blind{} is selected, gain",
                  "{C:chips}+#1#{} hands, {C:mult}+#2#{} discards, or {C:attention}+#3#{} hand size",
                }
            }, 
            j_poke_nosepass = {
                name = 'Nosepass',      
                text = {
                    "First played {C:attention}face{} card",
                    "becomes a {C:attention}Stone{} card and",
                    "gives {X:mult,C:white} X#1# {} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "When a {C:attention}Steel{} Card is scored,",
                    "gain {X:mult,C:white}X#2#{} Mult and destroy it after scoring",
                    "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} Mult)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "When a {C:attention}Steel{} or {C:attention}Stone{} Card is scored,",
                    "gain {X:mult,C:white}X#2#{} Mult and destroy it after scoring",
                    "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} Mult)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "When a {C:attention}Steel{}, {C:attention}Stone{} or {C:attention}Gold{} Card is scored,",
                    "gain {X:mult,C:white}X#2#{} Mult and destroy it after scoring",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "Applies {C:attention}Splash{}",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Prism Scale{C:inactive,s:0.8})",
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Retrigger all cards played if",
                  "scoring hand is {C:attention}mono-suit{}"
                }
            },
            j_poke_wynaut = {
                name = 'Wynaut',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}Fool{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Go up to {C:mult}-$#1#{} in debt",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds in debt)",
                  "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dawn Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Go up to {C:mult}-$#1#{} in debt",
                  "{br:2}ERROR - CONTACT STEAK",
                  "At end of round,",
                  "sets money to {C:money}$0"
                }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Gains {C:chips}+#2#{} Chips if played hand",
                    "is a {C:attention}Four of a Kind{}",
                    "Gains {C:chips}+#2#{} Chips if scoring hand",
                    "contains an {C:attention}Ace",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +64 Chips)",
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Gains {C:chips}+#2#{} Chips if played hand",
                    "is a {C:attention}Four of a Kind{}",
                    "Gains {C:chips}+#2#{} Chips if scoring hand",
                    "contains {C:attention}2+{} {C:attention}Aces",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +256 Chips)",
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{br:3}ERROR - CONTACT STEAK",
                    "If played hand is a {C:attention}Four of a Kind{}",
                    "each played card gives {X:mult,C:white}X{} Mult",
                    "equal to the {C:attention}cube root{} ",
                    "of that card's total chips",
                } 
            },
            j_poke_jirachi = {
                name = 'Jirachi',
                text = {
                    "At the end of the shop,",
                    "{C:dark_edition}make a wish!",
                }
            },
            j_poke_jirachi_banker = {
                name = 'Jirachi',
                text = {
                    "{C:attention}Double{} end of round payout",
                }
            },
            j_poke_jirachi_booster = {
                name = 'Jirachi',
                text = {
                    "+1 {C:attention}Booster Pack slot",
                    "{C:attention}Booster Packs{} have {C:attention}1{} more card in them",
                }
            },
            j_poke_jirachi_power = {
                name = 'Jirachi',
                text = {
                    "Every {C:attention}#2# hands{}, played cards",
                    "give {X:mult,C:white}X#1#{} Mult when scored",
                    "{C:inactive}(#3#){}",
                }
            },
            j_poke_jirachi_negging = {
                name = 'Jirachi',
                text = {
                    "{C:blue}+2{} Joker slots",
                    "{C:dark_edition}Negative{} cards appear {C:attention}2X{} more often",
                }
            },
            j_poke_jirachi_copy = {
                name = 'Jirachi',
                text = {
                    "Copies ability of {C:attention}Joker{} to the right",
                    "as if it was {C:pink}Energized{} an extra time",
                }
            },
            j_poke_jirachi_fixer = {
                name = 'Jirachi',
                text = {
                    "If {C:attention}first hand{} has exactly {C:attention}1{} card,",
                    "add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{} to it",
                    "{br:3}ERROR - CONTACT STEAK",
                    "If {C:attention}first discard{} has exactly {C:attention}1{} card,",
                    "{C:attention}destroy{} it",
                }
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Chips for",
                    "each {C:attention}unscored{} card",
                    "in played hand",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
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
            j_poke_ambipom = {
              name = "Ambipom",
              text = {
                "All {C:attention}Flushes{} and {C:attention}Straights{} can",
                "be made with {C:attention}3{} cards",
              }
            },
            j_poke_mismagius = {
                name = 'Mismagius',
                text = {
                    "Played {C:attention}face{} cards permanently",
                    "lose up to {C:chips}#1#{} Chips when scored",
                    "Gain lost Chips",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:green}#3# in #4#{} chance for them to",
                    "permanently gain {C:chips}#5#{} Chips instead",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                }
            },
            j_poke_honchkrow = {
                name = "Honchkrow",
                text = {
                  "Each {X:dark,C:white}Dark{} Joker gives {X:red,C:white}X#1#{} Mult",
                }
            },
            j_poke_bonsly = {
                name = "Bonsly",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#1#{} Mult",
                  "At end of round, add a random",
                  "{C:attention}Enhanced face card{} to your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Apply a {C:attention}Red{} or {C:attention}Blue{} seal",
                    "to a random card in deck",
                    "at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a {C:attention}Magician{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:green}#3# in #4#{} chance to create {C:attention}2{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Mult",
                    "Create a random {C:item}Item{} card with",
                    "{C:dark_edition}Negative{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#2#{} Mult",
                  "At end of round, a random",
                  "card in {C:attention}deck{} becomes {C:attention}Gold{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Gold{} cards {C:attention}held{} in hand",
                  "give {C:chips}+#1#{} Chips",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
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
                    "Played {C:attention}Steel{} cards give {X:red,C:white}X#1#{} Mult",
                    "plus {X:red,C:white}X#2#{} Mult for each",
                    "{X:metal,C:white}Metal{} Joker you have",
                    "{C:inactive}(Currently {X:red,C:white}X#3#{C:inactive} Mult){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "First and second played {C:attention}Jacks{}",
                    "give {X:mult,C:white}X#1#{} Mult when scored",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Further {C:attention}Jacks{} give",
                    "{X:mult,C:white} X#2# {} Mult when scored"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Each played {C:attention}Stone{} card permanently",
                    "gains {C:chips}+#1#{} Chips when scored",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}Stone{} cards retrigger for each",
                    "{X:earth,C:white}Earth{} Joker you have",
                    "{C:inactive}(Currently #2# retriggers)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Wild cards {C:attention}can't{} be debuffed",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Gains {C:money}$#1#{} of {C:attention}sell value{} at end of",
                    "round and when a card is {C:attention}sold{}",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "Gives {X:mult,C:white}X#2#{} Mult for each dollar",
                    "of sell value this Joker has",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "If {C:attention}first discard{} of round has only",
                    "{C:attention}1{} card, destroy it and gain {C:mult}+#2#{} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "Gains {X:mult,C:white}X#4#{} Mult for each card discarded",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_togekiss = {
                name = 'Togekiss',
                text = {
                    "{C:attention}Lucky Cards{} have",
                    "a {C:green}#1# in #2#{} chance to give {C:chips}+#4#{} Chips",
                    "and a {C:green}#1# in #3#{} chance to give {X:mult,C:white}X#5#{} Mult",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}Lucky Card{} odds are {C:attention}Tripled{}",
                    "{C:inactive}(ex: {C:green}2 in 5{C:inactive} -> {C:green}6 in 5{C:inactive})",
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
                    "When a {C:attention}Lucky{} card triggers",
                    "it permanently gains {C:chips}+#2#{} Chips",
                    "per {C:green}Reroll{} used in last shop",
                    "{C:inactive}(Currently #1# {C:green}Rerolls{C:inactive} used)"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Each reroll in the shop has a",
                    "{C:green}#1# in #2#{} chance to add",
                    "a {C:attention}Glass{} copy of a random",
                    "card in your deck to shop",
                } 
            },
            j_poke_gliscor = {
                name = 'Gliscor',
                text = {
                    "Played cards give {X:mult,C:white}X#1#{} Mult for each",
                    "{V:1}#2#{} or debuffed card {C:attention}held{} in hand",
                    "{C:inactive, s:0.8}(Suit changes every round)",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_mamoswine = {
              name = "Mamoswine",
              text = {
                "First played card gives {C:mult}+#1#{} Mult for each",
                "{C:attention}Stone{} and {C:attention}Glass{} Card in scoring hand",
                "{br:2}text needs to be here to work",
                "{C:green}#3# in #4#{} chance for played {C:attention}Stone{}",
                "and {C:attention}Glass{} Cards to earn {C:money}$#2#{} when scored",
              }
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Energy Limit",
                    "{X:red,C:white} X#2# {} Mult per {C:pink}Energy{}",
                    "card used this {C:attention}run{}",
                    "{C:inactive}(Currently {X:red,C:white} X#1# {C:inactive} Mult)"
                } 
            },
            j_poke_probopass = {
                name = 'Probopass',      
                text = {
                    "{C:attention}Stone{} cards are considered face cards",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Played {C:attention}Stone{} cards",
                    "give {X:mult,C:white} X#1# {} Mult when scored"
                } 
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "Go up to {C:mult}-$#1#{} in debt",
                  "{br:2.5}ERROR - CONTACT STEAK",
                  "Create an {C:item}Item{} card if",
                  "hand is played while in debt",
                  "{C:inactive,s:0.8}(Must have room)",
                }
            },
            j_poke_pansage = {
                name = "Pansage",
                text = {
                    "Applies {C:attention}Shortcut",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_simisage = {
                name = "Simisage",
                text = {
                    "Applies {C:attention}Shortcut",
                    "All played unenhanced cards have a",
                    "{C:green}#1# in #2#{} chance to become {C:attention}Lucky{}"
                }
            },
            j_poke_pansear = {
                name = "Pansear",
                text = {
                    "Applies {C:attention}Four Fingers",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Fire Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_simisear = {
                name = "Simisear",
                text = {
                    "Applies {C:attention}Four Fingers",
                    "If first played hand contains a {C:attention}Straight",
                    "or {C:attention}Flush{}, create an {C:attention}Empress{} card",
                    "and each unscoring card is destroyed {C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "Panpour",
                text = {
                    "Applies {C:attention}Pareidolia",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Water Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_simipour = {
                name = "Simipour",
                text = {
                    "Applies {C:attention}Pareidolia",
                    "Leftmost unenhanced card with the",
                    "lowest base chips in played hand",
                    "becomes a {C:attention}Bonus{} card",
                }
            },
            j_poke_roggenrola = {
                name = "Roggenrola",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Each {C:attention}Hazard Card held{} in hand",
                    "gives {C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after triggering Hazard Cards {C:attention,s:0.8}#4#{C:inactive,s:0.8} times)",
                }
            },
            j_poke_boldore = {
                name = "Boldore",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Each {C:attention}Hazard Card held{} in hand",
                    "gives {C:mult}+#3#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_gigalith = {
                name = "Gigalith",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Each {C:attention}Hazard Card held{} in hand",
                    "gives {C:mult}+#3#{} Mult and retriggers",
                }
            },
            j_poke_zorua = {
                name = "Zorua",
                text = {
                    "{V:1}Copies ability of rightmost {C:attention}Joker{}",
                    "{br:2.5}ERROR - CONTACT STEAK",
                    "After scoring played hand while",
                    "copying, remove copy effect",
                    "until end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_zoroark = {
                name = "Zoroark",
                text = {
                    "Copies ability of rightmost {C:attention}Joker{}",
                }
            },
            j_poke_gothita = {
                name = "Gothita",
                text = {
                    "All {C:planet}Planet{} cards and {C:planet}Celestial Packs{}",
                    "in the shop cost {C:money}$2{} less",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_gothorita = {
                name = "Gothorita",
                text = {
                    "All {C:planet}Planet{} cards and {C:planet}Celestial Packs{}",
                    "in the shop cost {C:money}$3{} less",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_gothitelle = {
                name = "Gothitelle",
                text = {
                    "All {C:planet}Planet{} cards and {C:planet}Celestial Packs{}",
                    "in the shop are {C:attention}free{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Earn {C:money}$#1#{} when a {C:planet}Planet{} card is used"
                } 
            },
            j_poke_vanillite = {
                name = "Vanillite",
                text = {
                  "{C:attention}Volatile Left",
                  "{C:chips}+#1#{} Chips",
                  "{C:chips}-#3#{} Chips for every hand played",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_vanillish = {
                name = "Vanillish",
                text = {
                  "{C:attention}Volatile Left",
                  "{C:chips}+#1#{} Chips",
                  "{C:chips}-#3#{} Chips for every hand played",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_vanilluxe = {
                name = "Vanilluxe",
                text = {
                  "{C:chips}+#1#{} Chips",
                  "{C:chips}-#2#{} Chips for every hand played",
                  "{br:2}ERROR - CONTACT STEAK",
                  "When fully melted",
                  "create {C:attention}#3# Double Tags{} "
                }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "When {C:attention}Blind{} is selected, create a",
                    "{C:dark_edition}Negative{} {C:planet}Planet{} card of one of",
                    "your {C:attention}#1#{} highest level poker hands",
                    "{C:inactive,s:0.8}(Evolves when holding #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} different planet cards){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "When {C:attention}Blind{} is selected, create a",
                    "{C:dark_edition}Negative{} {C:planet}Planet{} card of one of",
                    "your {C:attention}#1#{} highest level poker hands",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "After opening {C:attention}#2# Boosters{}, create a",
                    "{C:attention}Telescope{} or {C:attention}Observatory{} if able"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:attention}Drain {C:money}$#1#{} from adjacent",
                    "Jokers at end of round",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "Adds this Joker's sell value to Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult){}",
                    "{C:inactive,s:0.8}(Evolves at {C:money,s:0.8}$#2#{C:inactive,s:0.8} Sell Value)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
                "{C:attention}Drain {C:money}$#1#{} from all other",
                "Jokers at end of round",
                "{br:3.5}ERROR - CONTACT STEAK",
                "Adds {C:attention}double{} this Joker's sell value to Mult",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
                    "Each Joker with {C:money}1${} sell value",
                    "gives {X:mult,C:white} X#1# {} Mult and earns {C:money}$#2#{}",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "Adds {C:attention}triple{} this Joker's sell value to Mult",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult){}",
                }
            },
            j_poke_golett = {
                name = "Golett",
                text = {
                  "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                  "Every {C:attention}fourth{} card {C:attention}held{} in hand",
                  "gives {X:mult,C:white}X#3#{} Mult",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#4#{C:inactive,s:0.8} rounds)"
                }
            },
            j_poke_golurk = {
                name = "Golurk",
                text = {
                  "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                  "Every {C:attention}third{} card {C:attention}held{} in hand",
                  "gives {X:mult,C:white}X#3#{} Mult",
                }
            },
            j_poke_zweilous = {
                name = "Zweilous",
                text = {
                  "{X:mult,C:white} X#1# {} Mult if played hand",
                  "is a {C:attention}Three of a Kind{}",
                  "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} Times){}"
                }
            },
            j_poke_hydreigon = {
                name = "Hydreigon",
                text = {
                  "If played hand is a {C:attention}Three of a Kind{}",
                  "each unscoring card is destroyed",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Gains {X:mult,C:white} X#2# {} Mult when a card is destroyed",
                  "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult){}"
                }
            },
            j_poke_deino = {
                name = "Deino",
                text = {
                  "{X:mult,C:white} X#1# {} Mult if played hand",
                  "is a {C:attention}Three of a Kind{}",
                  "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} Times){}"
                }
            },
            j_poke_litleo = {
                name = "Litleo",
                text = {
                    "{C:chips}+#1#{} Chips if played hand",
                    "contains a {C:attention}Flush{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "{C:chips}+#1#{} Chips if played hand contains a {C:attention}Flush{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Create an {C:pink}Energy{} card if it",
                    "also contains a {C:attention}King{} or {C:attention}Queen{}"
                } 
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Create a {C:attention}tag{} every {C:attention}#3# {C:inactive}[#2#]{} {C:green}rerolls{} ",
                    "if you have {C:attention}< 2{} tags",
                    "{br:2.5}ERROR - CONTACT STEAK",
                    "Each {C:attention}editioned{} card {C:attention}held{}",
                    "in hand gives {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:attention}Tripled{} if you have",
                    "a {X:lightning, C:black}Lightning{} Joker",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Mult for each",
                    "{X:lightning, C:black}Lightning{} Joker you have",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Mult",
                    "{X:red,C:white} X#1# {} Mult for each other",
                    "{X:lightning, C:black}Lightning{} Joker you have",
                    "{C:inactive}(Currently {X:red,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} Chips if played",
                  "hand has no scoring {C:hearts}#2#{}",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Prevents Death if chips scored are",
                  "at least {C:attention}50%{} of required chips",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Mult and earn {C:money}$#2#{}",
                    "if played hand contains",
                    "a {C:attention}Straight{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
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
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "When sold, adds {C:money}$#1#{} of sell value",
                  "to every Joker card and {C:attention}converts{}",
                  "all cards held in hand to {C:spades}#2#{}",
                  "{C:inactive,s:0.8}(Evolves when a straight flush is played)",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:red,C:white} X#4# {} Mult for every {C:money}${} of",
                  "sell value of all owned {C:attention}Jokers{}",
                  "{br:4}ERROR - CONTACT STEAK",
                  "If played hand is a {C:attention}Straight Flush{}",
                  "adds {C:money}$#1#{} of sell value to every Joker card",
                  "{C:inactive}(Currently {X:red,C:white} X#5# {C:inactive} Mult){}",
                  "{C:inactive,s:0.8}(Evolves at $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8} total sell value of Jokers)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:red,C:white} X#2# {} Mult for every {C:money}${} of",
                  "sell value of all owned {C:attention}Jokers{}",
                  "{br:4}ERROR - CONTACT STEAK",
                  "If played hand is a {C:attention}Straight Flush{}",
                  "and you have no {C:attention}Dreepy Darts{}",
                  "create {C:attention}2 Dreepy Darts{} with {C:dark_edition}Negative{}",
                  "{C:inactive}(Currently {X:red,C:white} X#3# {C:inactive} Mult){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Dreepy Dart",
                text = {
                    "When sold, adds {C:money}$#1#{} of sell value",
                    "to every Joker card and {C:attention}converts{}",
                    "all cards held in hand to {C:spades}#2#{}",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "Qwilfish (Hisuian)",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Gain {C:chips}+#3#{} Chips when a",
                    "{C:attention}Hazard Card{} is drawn",
                    "{C:inactive}(Evolves at {C:chips}+#4#{C:inactive} / +#5# Chips)",
                }
            },
            j_poke_overqwil = {
                name = "Overqwil",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Gain {C:chips}+#3#{} Chips when a",
                    "{C:attention}Hazard Card{} is drawn",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}Halve{} Chips after hand played",
                    "{C:inactive}(Currently {C:chips}+#4#{C:inactive} Chips)",
                }
            },
            j_poke_kleavor = {
                name = 'Kleavor',      
                text = {
                    "When Blind is selected, destroy",
                    "Joker to the right and gain {C:mult}+#2#{} Mult",
                    "Add a {C:attention}Stone{} card to deck with",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{} if",
                    "it was {C:green}Uncommon{} or higher",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                } 
            },
            j_poke_ursaluna = {
              name = "Ursaluna",
              text = {
                "Gains {C:mult}+#2#{} Mult and creates",
                "an {C:item}Item{} with {C:dark_edition}Polychrome{} when any",
                "{C:attention}Booster Pack{} is skipped {C:inactive,s:0.8}(Must have room)",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_tarountula = {
                name = "Tarountula",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Create a {C:planet}Planet{} card for every",
                    "{C:attention}#4# Hazard Cards held{} in hand",
                    "at end of round",
                    "{C:inactive}(Must have room)",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_spidops = {
                name = "Spidops",
                text = {
                    "{C:purple}+#1# Hazards {C:inactive}(1 per #2# cards)",
                    "Adds a {C:chips}Blue{} seal to every third",
                    "{C:attention}Hazard Card held{} in hand",
                    "at end of round",
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Gains {C:chips}+#2#{} Chips if scoring hand contains a {C:attention}#3#{}",
                  "Required {C:attention}rank{} rises with each trigger",
                  "{C:inactive,s:0.8}(If rank is highest, it becomes lowest)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                  "{C:inactive,s:0.8}(Evolves when you have a {X:fire,C:white,s:0.8}Fire{C:inactive,s:0.8} Joker)",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Gains {C:chips}+#2#{} Chips if scoring hand contains a {C:attention}#3#{}",
                  "Required {C:attention}rank{} rises with each trigger",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Increase Chip gain by {C:chips}+2{} for each",
                  "{X:fire,C:white}Fire{} Joker you have",
                  "{C:inactive,s:0.8}(If rank is highest, it becomes lowest)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} non-{C:attention}Steel{} cards in your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} non-{C:attention}Steel{} cards in your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} non-{C:attention}Steel{} cards in your deck",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Played {C:attention}Steel{} cards behave like {C:attention}Glass{} cards"
                }
            },
            j_poke_wiglett = {
                name = "Wiglett",
                text = {
                    "{C:mult}+#3#{} Mult if played hand",
                    "contains a {C:attention}Three of a kind{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:chips}+#2#{} Chips if played hand",
                    "contains a scoring {C:attention}5{}, {C:attention}6{}, or {C:attention}7{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_wugtrio = {
                name = "Wugtrio",
                text = {
                    "{X:red,C:white} X#1# {} Mult if played hand",
                    "contains a {C:attention}Three of a kind{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:chips}+#2#{} Chips if played hand",
                    "contains a scoring {C:attention}5{}, {C:attention}6{}, or {C:attention}7{}",
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
            j_poke_dudunsparce = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}+#1#{} card slot available in shop",
                  "{C:attention}+#1#{} Booster Pack slot available in shop",
                  "{C:attention}+#1#{} Voucher slot available in shop",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'Dudunsparce',
                text = {
                  "{C:attention}Holding Coupon Tag{}",
                  "{C:attention}+#1#{} card slot available in shop",
                  "{C:attention}+#1#{} Booster Pack slot available in shop",
                  "{C:attention}+#1#{} Voucher slot available in shop",
                }
            },
            j_poke_farigiraf = {
              name = "Farigiraf",
              text = {
                "{C:attention}Holding{} {C:spectral}Cryptid{}",
                "First and last {C:attention}face{} card",
                "give {X:mult,C:white}X#1#{} Mult when scored",
                "if played hand contains a {C:attention}Two Pair{}",
              }
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Chest)",
                text = {
                  "Played {C:attention}Gold{} cards earn {C:money}$#1#{} when scored",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Skip a {C:attention}Booster Pack{} for...?",
                  "{C:inactive,s:0.8}(Evolves after earning or spending {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3#)"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Roaming)",
                text = {
                  "Earn some {C:money}${}",
                  "{S:1.1,C:red,E:2}self destructs{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                  "Played {C:attention}Gold{} cards {C:red}spend{} {C:money}$#2#{}",
                  "when scored and multiply",
                  "this Joker's {X:red,C:white}X{} Mult by {X:red,C:white}X#3#",
                  "{br:3}ERROR - CONTACT STEAK",
                  "This Joker can't be debuffed",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Resets at end of round)",
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
                    "{C:mult}+#2#{} Mult for each Joker",
                    "you have that has a {C:pink}Type{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}Pokemon{} from the same", 
                    "evolutionary line may appear",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                } 
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokemon {C:attention}can't{} evolve",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "{C:attention}Basic{} and {C:attention}Baby{} Pokemon each give {X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_tall_grass = {
                name = 'Tall Grass',
                text = {
                    "{C:green}#1# in #2#{} chance to create a {C:chips}Common{}",
                    "Pokemon {C:attention}Joker{} when hand is played",
                    "Guaranteed with a scoring {C:attention}Wild{} card",
                    "{C:inactive}(Must have room){}",
                } 
            },
            j_poke_jelly_donut = {
                name = "Jelly Donut",
                text = {
                  "Create a {C:colorless}Colorless {C:pink}Energy{}",
                  "when blind is selected",
                  "{C:inactive}({C:attention}#1#{C:inactive} rounds remaining){}"
                }
            },
            j_poke_treasure_eatery = {
                name = "Treasure Eatery",
                text = {
                  "Convert the leftmost Joker's {C:pink}type{}",
                  "into the rightmost Joker's {C:pink}type{}",
                  "when blind is selected",
                  "{C:attention}Type Changer{}",
                  "{C:inactive}({C:attention}#1#{C:inactive} rounds remaining){}"
                }
            },
            j_poke_rival = {
                name = "Rival",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "If score is {C:attention}>#3#X{} Blind Requirement",
                    "{S:1.1,C:red,E:2}self destruct{} and earn {C:money}$#2#",
                }
            },
            j_poke_bitter_rival = {
                name = "Bitter Rival",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "If score is {C:attention}>#3#X{} Blind Requirement",
                    "{S:1.1,C:red,E:2}self destruct{} and earn {C:money}$#2#",
                }
            },
            j_poke_champion = {
                name = "Champion",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "If score is {C:attention}>#3#X{} Blind Requirement",
                    "{S:1.1,C:red,E:2}self destruct{} and earn {C:money}$#2#",
                }
            },
            j_poke_mystery_egg = {
                name = "Mystery Egg",
                text = {
                  "Hatches into a {C:attention}Basic{} or",
                  "{C:attention}Baby{} Joker after {C:attention}#1#{} rounds",
                  "that is {C:pink}Energized{} if applicable"
                }
            },
            j_poke_billion_lions = {
                name = 'A Billion Lions',
                text = {
                    "When blind is selected",
                    "destroy each {C:pink}typed{} Joker you have",
                    "then gain {X:mult,C:white}X#2#{} Mult for each",
                    "{S:1.1,C:red,E:2}self destructs{} when out of lions",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult, {C:attention}#3#{C:inactive} lions)"
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
                name = "Pochette dresseur", -- ? Jsp comment est traduit Sleeve dans le mod des sleeves
                text = {
                    "Commencez la partie avec",
                    "le coupon {C:tarot,T:v_poke_goodrod}#1#{}",
                    "et une carte {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Pochette nécrotique",
                text = {
                    "Toutes les cartes ont un {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Pochette lumineuse",
                text = {
                    "Tous les Jokers sont créés avec",
                    "un autocollant de {C:pink}Type{} aléatoire",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Pochette télékinétique",
                text = {
                    "Commencez la partie avec",
                    "le coupon {C:tarot,T:v_crystal_ball}#1#{}",
                    "et {C:attention}2{} copies",
                    "de {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Hyper Ball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Niveau 2{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
            c_poke_masterball = {
                name = "Masterball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Pokémon Légendaire{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
            c_poke_transformation = {
                name = "Transformation",
                text = {
                    "Évolue le Pokémon sélectionné ou le plus à gauche",
                    "au {C:attention}niveau{} le plus haut et octroie {}+1{} {C:pink}Énergie{}", 
                },
            },
            c_poke_megastone = {
                name = "Gemme Sésame",
                text = {
                    "{C:attention}Réutilisable{}",
                    "{C:attention}Méga-évolue{} un Pokemon", 
                    "ou {C:attention}désévolue{} une Méga",
                    "{C:attention}Désévolue{} la Méga si vendu",
                    "{C:inactive}(Utilisable une fois par manche)",
                },
            },
            c_poke_obituary = {
                name = "Nécrotique",
                text = {
                    "Ajoute un {C:pink}Sceau rose{}",
                    "à {C:attention}1{} carte sélectionnée",
                    "dans votre main",
                }
            },
            c_poke_nightmare = {
                name = "Cauchemar",
                text = {
                    "Détruit le Joker sélectionné avec un {C:pink}Type{}",
                    "et crée {C:attention}2{} {C:pink}Énergies{} {C:dark_edition}Négatives{}",
                    "du {C:pink}type{} de ce Joker"
                },
            },
            c_poke_revenant = {
                name = "Revenant",
                text = {
                    "Ajoute un {C:item}Sceau argent{}",
                    "à {C:attention}1{} carte sélectionnée",
                    "dans votre main",
                }
            },
            c_poke_fake_banker = {
                name = 'Vœu de Fortune',
                text = {
                    "{C:dark_edition}Souhaite de l'argent !",
                }
            },
            c_poke_fake_booster = {
                name = 'Vœu de Paquet',
                text = {
                    "{C:dark_edition}Souhaite des options !",
                }
            },
            c_poke_fake_power = {
                name = 'Vœu de Puissance',
                text = {
                    "{C:dark_edition}Souhaite de la puissance !",
                }
            },
            c_poke_fake_negging = {
                name = 'Vœu Négatif',
                text = {
                    "{C:dark_edition}Souhaite des amis !",
                }
            },
            c_poke_fake_copy = {
                name = 'Vœu de Copie',
                text = {
                    "{C:dark_edition}Souhaite un Coup d'Main !",
                }
            },
            c_poke_fake_fixer = {
                name = 'Vœu Purificateur',
                text = {
                    "{C:dark_edition}Souhaite un meilleur jeu !",
                }
            },
            c_poke_fake_masterball = {
                name = "Vœu d'Invocation",
                text = {
                    "{C:dark_edition}Souhaite d'invoquer un Pokémon Légendaire !",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Badge de poche",
                text = {
                    "Octroie un {C:pink}Paquet Méga-Pocket",
                    "{C:green}25%{} de chance que le paquet contienne",
                    "une {C:attention}Gemme Sésame{} sur les {C:attention}Mises 5+{}"
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Badge chromatique",
                text = {
                    "Le prochain joker en édition de base",
                    "du magasin sera gratuit et",
                    "obtiendra le statut {C:colorless}Chromatique{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Stage 1 Tag",
                text = {
                    "Le magasin possède un",
                    "{C:attention}Joker Niveau 1{}",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Safari Tag",
                text = {
                    "Le magasin possède un",
                    "{C:safari}Joker Safari{}",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Base{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
            c_poke_greatball = {
                name = "Super Ball",
                text = {
                    "Crée une carte",
                    "{C:attention}Joker Niveau 1{} aléatoire",
                    "{C:inactive}(Selon la place disponible)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Recherche d'Énergie",
                text = {
                    "{C:pink}+2{} limite d'Énergie"
                },
            },
            v_poke_energyresearch = {
                name = "Développement d'Énergie",
                text = {
                    "{C:pink}+3{} limite d'Énergie"
                },
            },
            v_poke_goodrod = {
                name = "Super Canne",
                text = {
                    "Les {C:attention}Booster{} ont",
                    "{C:attention}1{} carte en plus dedans",
                },
            },
            v_poke_superrod = {
                name = "Méga Canne",
                text = {
                    "Vous pouver {C:pink}Garder{} des cartes",
                    "de tous les paquets de {C:attention}consommables{}",
                },
            },
        },
        Other = {

            Grass = {
                name = "Type",
                text = {
                  "{X:grass,C:white}Plante{}",
                }
            },
            Fire = {
                name = "Type",
                text = {
                  "{X:fire,C:white}Feu{}",
                }
            },
            Water = {
                name = "Type",
                text = {
                  "{X:water,C:white}Eau{}",
                }
            },
            Lightning = {
                name = "Type",
                text = {
                  "{X:lightning,C:black}Électrique{}",
                }
            },
            Psychic = {
                name = "Type",
                text = {
                  "{X:psychic,C:white}Psy{}",
                }
            },
            Fighting = {
                name = "Type",
                text = {
                  "{X:fighting,C:white}Combat{}",
                }
            },
            Colorless = {
                name = "Type",
                text = {
                  "{X:colorless,C:white}Incolore{}",
                }
            },
            Dark = {
                name = "Type",
                text = {
                  "{X:dark,C:white}Obscurité{}",
                }
            },
            Metal = {
                name = "Type",
                text = {
                  "{X:metal,C:white}Métal{}",
                }
            },
            Fairy = {
                name = "Type",
                text = {
                  "{X:fairy,C:white}Fée{}",
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
                  "{X:earth,C:white}Terre{}",
                }
            },
            --Have you Heard? Bird is the wordddd
            Bird = {
                name = "Type",
                text = {
                  "{X:bird,C:white}Bird{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Ancien",
                text = {
                    "Effet basé sur le",
                    "nombre de {C:attention}#1#s{}",
                    "dans la main de poker",
                    "{C:inactive}(Les effets sont {C:attention}cumulatifs{C:inactive})"
                }
            },
            energize = {
                name = "Énergise",
                text = {
                  "Augment de manière permanente",
                  "les valeurs de {C:mult}Multi.{}, {C:chips}Jetons{},",
                  "{C:money}${} and {X:mult,C:white}X{} Multi.{} d'un Joker"
                }
            },
            eitem = {
                name = "Carte d'Évolution",
                text = {
                    "Quand utilisé, évolue le Joker",
                    "le plus à gauche ou sélectionné",
                    "si {C:attention}éligible{} à la fin",
                    "de la prochaine manche",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Carte tenue",
                text = {
                    "Utilisé par {C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "Change-Type",
                text = {
                    "Applique un autocollant {V:1}#1#{}",
                    "au Joker le plus à gauche ou sélectionné"
                }
            },
            typechangerother = {
                name = "Change-Type",
                text = {
                    "Applique un autocollant {V:1}#1#{}",
                }
            },
            typechangerpoke = {
                name = "Pokémon Change-Type",
                text = {
                    "Applique un autocollant {V:1}#1#{} ",
                    "à soi-même"
                }
            },
            basic = {
                name = "Base",
                text = {
                    "Un Joker Pokémon",
                    "qui n'a pas {C:attention}évolué{}",
                    "{C:inactive}(Sauf Pokémon {C:attention}Bébés{})"
                }
            },
            stage1 = {
                name = "Niveau 1",
                text = {
                    "Un Joker Pokémon",
                    "qui a {C:attention}évolué{} une fois"
                }
            },
            stage2 = {
                name = "Stage 2",
                text = {
                    "Un Joker Pokémon",
                    "qui a {C:attention}évolué{} deux fois"
                }
            },
            energy = {
                name = "Énergies utilisées",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Chance d'argent",
                text = {
                    "{C:attention}#1#%{} de chance de",
                    "gagner {C:money}1 ${} en plus"
                }
            },
            mult_progress = {
                name = "Progret des gains de Multi.",
                text = {
                    "Progresse de {C:attention}#1#%{}",
                    "les gains de {C:mult}Multi.{},",
                    "augmentant de {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Progret des gains de jetons",
                text = {
                    "Progresse de {C:attention}#1#%{}",
                    "les gains de {C:chips}Chips{},",
                    "augmentant de {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Progret des gains d'argent",
                text = {
                    "Progresse de {C:attention}#1#%{}",
                    "les gains de {C:money}${},",
                    "augmentant de {C:money}+1{}"
                }
            },
            availability = {
                name = "Disponibilité",
                text = {
                    "Pas disponible si",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Bébé",
                text = {
                    "Lorsqu'une main est jouée,",
                    "s'il y a des Jokers {C:attention}non-Bébé{}",
                    "à la droite de ce Joker,",
                    "{C:attention}annule{} ce Joker"
                }
            },
            nature = {
                name = "Nature",
                text = {
                    "Les {C:attention}#1#{} désirés sont",
                    "sélectionnés aléatoirement",
                    "à la création du Joker"
                }
            },
            scry_cards = {
                name = "Clairvoyance",
                text = {
                    "Regardez les cartes du",
                    "dessus de votre jeu"
                }
            },
            mega_rule = {
                name = "Restriction",
                text = {
                    "Seul un Joker peut",
                    "{C:attention}Méga-évoluer{} pour chaque",
                    "{C:attention}Gemme Sésame{} que vous avez"
                }
            },
            mega_poke = {
                name = "Méga-Évolution",
                text = {
                    "Peut {C:attention}Méga-évoluer{}",
                    "avec une {C:attention}Gemme Sésame{}"
                }
            },
            mega_used_on = {
                name = "Utilisée sur",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "Méga XY",
                text = {
                  "{C:attention}Méga-évolue{} selon la position",
                  "Tout à gauche - {C:attention}#1#{}",
                  "Tout à droite - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "Exigence",
                text = {
                    "Doit être utilisé sur",
                    "une {C:attention}carte à jouer{}",
                    "pour pouvoir évoluer"
                }
            },
            deli_gift = {
                name = "Cadeaux",
                text = {
                    "{C:green}35%{} - {C:money}8 ${}",
                    "{C:green}30%{} - {C:attention}Carte{} {C:item}Objet{}",
                    "{C:green}20%{} - {C:attention}Badge de coupon",
                    "{C:green}15%{} - {C:attention}Carte cadeau{} {C:dark_edition}Polychrome",
                }
            },
            pickup = {
              name = "Ramassage",
              text = {
                "{C:green}34%{} - {C:item}Objet{} {C:attention}Card",
                "{C:green}25%{} - {C:attention}Leftovers",
                "{C:green}25%{} - {C:attention}Poke Ball",
                "{C:green}15%{} - {C:attention}Great Ball",
                "{C:green}1%{} - {C:attention}Ultra Ball",
              }
            },
            pokeballs_group = {
              name = "Poké Balls",
              text = {
                "Crée un Joker aléatoire",
                "d'une certaine qualité",
              }
            },
            percent_chance = {
                name = "Pourcent de chance",
                text = {
                  "{C:green}#1#%{} de chance",
                  "pour un {C:attention}effet{} de se produire",
                  "{C:inactive}(Les probabilités ne peuvent être augmentées){}"
                }
            },
            holding = {
                name = "Tiens",
                text = {
                  "Ce Joker vient avec",
                  "une carte {C:attention}#1#{}",
                  "{C:inactive}(Selon la place disponible){}"
                }
            },
            eeveelution = {
                name = "Évolutions",
                text = {
                    "{C:attention}Pierre Eau{} - {X:water,C:white}Aquali{}",
                    "{C:attention}Pierre Foudre{} - {X:lightning,C:black}Voltali{}",
                    "{C:attention}Pierre Feu{} - {X:fire,C:white}Pyroli{}",
                    "{C:attention}Pierre Soleil{} - {X:psychic,C:white}Mentali{}",
                    "{C:attention}Pierre Lune{} - {X:dark,C:white}Noctali{}",
                    "{C:attention}Pierre Plante{} - {X:grass,C:white}Phyllali{}",
                    "{C:attention}Pierre Glace{} - {X:water,C:white}Givrali{}",
                    "{C:attention}Pierre Éclat{} - {X:fairy,C:white}Nymphali{}"
                }
            },
            poke_egg_tip = {
              name = "Œuf mystère",
              text = {
                "Il a l'air froid et seul."
              }
            },
            poke_top_cards = {
              name = "Cartes du dessus",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "Drain",
              text = {
                "Retire de la valeur de vente",
                "à un Joker et l'ajoute à soi-même",
                "si le Joker a une valeur de vente",
                "supérieure à {C:money}1 ${}"
              }
            },
            poke_drain_item = {
              name = "Drain",
              text = {
                "Retire de la valeur de vente",
                "à un Joker si sa valeur de vente",
                "est supérieure à {C:money}1 ${}"
              }
            },
            poke_volatile_left = {
              name = "Volatile Gauche",
              text = {
                "La capacité suivante se déclenche uniquement",
                "quand ce Joker est tout à gauche",
                "{C:inactive}(Ignore les Pokémon {C:attention}Volatiles)"
              }
            },
            poke_volatile_right = {
              name = "Volatile Droite",
              text = {
                "La capacité suivante se déclenche uniquement",
                "quand ce Joker est tout à droite",
                "{C:inactive}(Ignore les Pokémon {C:attention}Volatiles)"
              }
            },
            sketch = {
              name = "Gribouille",
              text = {
                "Copie un Joker jusqu'à ce qu'il soit",
                "vendu, détruit ou que vous copiez une autre capacité",
                "La copie apparait en temps qu'info-bulle",
                "et dans le menu du Pokédex", -- ? tooltip
                "Gribouille est réinitialisé quand un Joker est copié"
              }
            },
            precise_energy_tooltip = {
                name = "Mise à l'échelle précise des énergies",
                text = {
                    "{s:0.8}Use {C:attention,s:0.8}decimals{} for all values when applying {C:pink,s:0.8}Énergie{}{s:0.8} bonus{}",
                    "{s:0.8}With this option {C:attention,s:0.8}off{}{s:0.8} the following will occur for the bonus:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Multi. - Uses Decimals",
                    "{C:attenion}2. {s:0.8}Flat {C:mult,s:0.8}Multi.{}{s:0.8} and {C:chips,s:0.8}Jetons{}{s:0.8} - Rounds up to nearest whole number",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Multi. Gain{}{s:0.8} and {C:chips,s:0.8}Jetons Gain{}{s:0.8} - Decimal component displayed", 
                    "{s:0.8}as a percentage, used to apply bonus to base {C:mult,s:0.8}Multi.{}{s:0.8} and {C:chips,s:0.8}Jetons{}",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Decimal component displayed as a percentage,",
                    "{s:0.8}used as chance for extra {C:money,s:0.8}${}{s:0.8} to be gained{}",
                    "{C:inactive,s:0.8}(Non-Pokemon Jokers will always use precise scaling){}"
                }
            },
            discovery_tooltip = {
              name = "Discovery",
              text = {
                "Les objets du mod Pokermon mod sont non-découverts",
                "par défaut. Décocher cette option",
                "va découvrir tous les objets du mod.",
                "{C:red}Il n'est pas possible de revenir en arrière{}"
              }
            }, 
            pokemaster_tooltip = {
              name = "Mode Pokemon Master",
              text = {
                'Le mode "Pokémon Uniquement" s\'applique',
                "De nouvelles mises sont disponibles"
              }
            },
            designed_by = {
              name = "Designé par",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "Réutilisable",
              text = {
                "N'est pas consommé quand utilisé",
                "{C:inactive,s:0.8}(Exclu par {C:attention,s:0.8}Cuillère Tordue{C:inactive,s:0.8})"
              }
            },
            sylveon_tag_pool = {
              name = "Pool de badges", -- ?
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "Pool de badges", -- ?
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
                    "Ne peut être obtenu que",
                    "via une {C:attention}évolution{}",
                    "ou certaines {C:attention}Poké Balls{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Sceau rose",
                text = {
                    "Crée une carte {C:pink}Énergie{}",
                    "dont le {C:attention}type{} correspond à",
                    "l'un de vos Jokers si cette carte marque",
                    "durant la {C:attention}première main{} de la manche",
                    "{C:inactive}(Selon la place disponible){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Sceau argent",
                text = {
                  "Crée une carte {C:item}Objet{}",
                  "et est {C:attention}défaussée{} si {C:attention}tenue{}",
                  "en main quand les cartes",
                  "marquent des points"
                }
            },
            --[[
            grass_sticker = {
                name = "Type",
                text = {
                    "{X:grass,C:white}Plante{}"
                } 
            },
            fire_sticker = {
                name = "Type",
                text = {
                    "{X:fire,C:white}Feu{}"
                } 
            },
            water_sticker = {
                name = "Type",
                text = {
                    "{X:water,C:white}Eau{}"
                } 
            },
            lightning_sticker = {
                name = "Type",
                text = {
                    "{X:lightning,C:white}Électrique{}"
                } 
            },
            psychic_sticker = {
                name = "Type",
                text = {
                    "{X:psychic,C:white}Psy{}"
                } 
            },
            fighting_sticker = {
                name = "Type",
                text = {
                    "{X:fighting,C:white}Combat{}"
                } 
            },
            colorless_sticker = {
                name = "Type",
                text = {
                    "{X:colorless,C:white}Incolore{}"
                } 
            },
            dark_sticker = {
                name = "Type",
                text = {
                    "{X:dark,C:white}Obscurité{}"
                } 
            },
            metal_sticker = {
                name = "Type",
                text = {
                    "{X:metal,C:white}Métal{}"
                } 
            },
            fairy_sticker = {
                name = "Type",
                text = {
                    "{X:fairy,C:white}Fée{}"
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
                    "{X:earth,C:white}Terre{}"
                } 
            },
            --]]
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "Non découvert",
                text = {
                    "Achetez ou utilisez",
                    "cette carte dans une partie",
                    "sans seed pour",
                    "connaître son effet"
                }
            },
            undiscovered_item = {
                name = "Non découvert",
                text = {
                    "Achetez ou utilisez",
                    "cette carte dans une partie",
                    "sans seed pour",
                    "connaître son effet"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Paquet Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Paquet Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Paquet Jumbo Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Paquet Méga-Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Paquet Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Paquet Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Paquet Jumbo Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Paquet Méga-Pocket",
                text = {
                    "Choisissez {C:attention}#1#{} parmi",
                    "{C:attention}#2#{} {C:item}cartes Objet{} et",
                    "{C:attention}#3#{} {C:pink}carte Énergie{}",
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "Paquet Vœu",
                text = {
                    "{C:dark_edition}Faites un vœu !{}",
                },
            },
            poke_hazards = {
                name = "Pièges",
                text = {
                    "Lorsque la {C:attention}Blinde{} est sélectionnée,",
                    "ajoute des {C:attention}Cartes Piège{} au jeu",
                    "selon la taille de votre jeu",
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
            c_poke_nuzlocke = "Nuzlocke",
            c_poke_goodasgold = "Corps en Or",
            c_poke_parenthood = "Parentalité",
            c_poke_littlecup = "Little Cup",
            c_poke_hammertime = "L'heure du Marteau"
        },
        dictionary = {
            k_energy = "Énergie",
            k_item = "Objet",
            k_poke_pocket_pack = "Paquet Pocket",
            k_poke_wish_pack = "Paquet Vœu",
            
            k_poke_baby = "Bébé",
            k_poke_safari = "Safari",
            k_poke_mega = "Méga",

            b_save = "GARDER",
            b_energy_cards = "Cartes Énergie",
            b_item_cards = "Cartes Objet",
            
            --Mod Menu stuff
            poke_settings_header_required = "Redémarrage nécessaire :",
            poke_settings_header_norequired = "Pas de redémarrage nécessaire :",
            poke_settings_pokemon_only = "Uniquement les Pokémon ?",
            poke_settings_unlimited_energy = "Énergies infinies ?",
            poke_settings_shiny_playing_cards = "Cartes à jouer chromatiques ?",
            poke_settings_jokers_only = "Uniquement les Jokers ?",
            poke_settings_no_evolutions = "Pas d'Évolutions ?",
            poke_settings_pokeballs = "Poké Balls ?",
            poke_settings_pokedex_number = "Numéro de Pokédex ?",
            poke_settings_pokemon_splash = "Pokémon Splash Card ?", -- ? Je sais pas ce que ça veut dire
            poke_settings_pokemon_gen_one = "Uniquement la 1G ?",
            poke_settings_pokemon_precise_energy = "Utiliser la mise à l'échelle précise des énergies ?",
            poke_settings_pokemon_discovery = "Découverte  ! ?",
            poke_settings_pokemon_altart = "Dessins alternatifs ?",
            poke_settings_pokemon_aprilfools = "Contenu du 1er Avril ?",
            poke_settings_pokemon_master = "Mode Pokemon Master ?",
            poke_credits_actualcredits = "Crédits",
            poke_credits_thanks = "Merci à",
            poke_credits_lead = "Lead Developer : ",  -- ?
            poke_credits_graphics = "Graphistes : ",
            poke_credits_quality_assurance_main = "FAQ : ",
            poke_credits_developer = "Développeurs : ",
            poke_credits_designer = "Design Assistants : ", -- ?
            poke_credits_community_manager = "Community Managers : ", -- ?
            poke_credits_special_thanks = "Remerciements spéciaux : ",
            poke_credits_localization = "Localisation : ",
            poke_credits_sound = "Ingénieur du son : ",

            poke_plus_pokeitem = "+1 Objet",
            poke_plus_energy = "+1 Énergie",
            poke_plus_shop = "+1 Carte au magasin",
            poke_destroyed_ex = "Détruit  !",
            poke_evolve_success = "Évolué !",
            poke_evolve_level = "Niveau +  !",
            poke_tera = "Tera",
            poke_tera_ex = "Tera !",
            poke_metal_ex = "Métal !",
            poke_dragon_ex = "Dragon !",
            poke_energized_ex = "Énergisé !",
            poke_unlimited_energy = "Infini",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Canarticho",
            cubone_marowak_infoqueue = "Osselait et Ossatueur",
            snorlax_infoqueue = "Ronflex",
            pokeball_variable = "Poké Ball",
            goodrod_variable = "Super Canne",
            pinkseal_variable = "Sceau rose",
            twisted_spoon_variable = "Cuillère Tordue",

            --From Gastly Line
            poke_lick_ex = "Léchouille !",
            poke_lick = "Léchouille",
            --From Kingler
            poke_surf_ex = "Surf !",
            --From Voltorb Line
            poke_explosion_ex = "BOOM !",
            --From Exeggutor
            poke_solar_ex = "Ensoileillé !",
            poke_solar = "Ensoileillé",
            --From Pinsir
            poke_pinsir_pin = "Épinglé !",
            poke_pinsir_remove_pin = "Désépinglé !",
            --From Tangela line
            poke_tangela_bonus = "Tout !",
            --Golbat And Crobat thingy
            poke_screech_ex = "Skree !",
            --Hoppip Line
            poke_hop_ex = "Graini !",
            poke_skip_ex = "Flora !",
            poke_jump_ex = "Coto !",
            --From Bellossom
            poke_petal_dance_ex = "Fleur !",
            poke_petal_dance = "Fleur",
            --From Scizor
            poke_x_scissor_ex = "Plaie Croix !",
            poke_x_scissor = "Plaie Croix",
            --From Kingdra
            poke_twister_ex = "Ouragan !",
            --From Mime Jr.
            poke_mime_ex = "Mime !",
            --From Magmortar
            poke_fire_blast_ex = "Déflagration !",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Fatal-Foudre !",
            poke_gift_ex = "Cadeau !",
            poke_faint_ex = "K.O. !",
            poke_reveal_ex = "Révélé !",
            poke_nido_ex = "Nido !",
            poke_disguise_intact = "Fantômasque intact ! Mort évitée !",
            poke_disguise_broken = "Fantômasque tombé ! Mort non évitée !",
            poke_dig_ex = "Tunnel !",
            poke_blazekick_ex = "Pieds Brûleur !",
            poke_darts_ex = "Dards !",
            poke_none = "None",
            poke_dawn_info1 = "(La prochaine main jouée définit le type de main)",
            poke_dawn_info2 = "(Type de main défini !)",
            poke_make_it_rain = "Ruée d'Or !",
            poke_val_down = "Valeur dminuée !",
            poke_powder_ex = "Poudreuse !",
            poke_future_sight = "Prescience !",
            poke_smell_ya = "À plus tard !",
            poke_wowthree = "Wow ! Trois !",
            poke_illusion = "...?",
            poke_crack_ex = "CRACK !",
            poke_shake_ex = "Secoue !",
            poke_closed_ex = "Fermé !",
            poke_reload_ex = "Recharge !",
            poke_shadow_tag_ex = "Marque Ombre !"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for !
        labels = {
            poke_pink_seal_seal = "Sceau rose",
            poke_silver_seal = "Sceau argent",

            poke_shiny = "Chromatique",

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
            k_poke_mega = "Méga",
        },
        tutorial = {
          poke_intro_1 = {
          "Bonjour, je suis le {C:attention}Professeurr Jimbo{} !",
          "Bienvenue dans le monde de {C:attention}Pokermon{} !",
          },
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} emplacement de Joker lorsqu'une Blinde de Boss est vaincue {C:inactive}(jusqu'à 5)"},
           ch_c_poke_nuzlocke = {"Le premier magasin de chaque mise contient un {C:attention}Paquet Bouffon"},
        },
    }
}