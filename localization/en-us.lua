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
            b_poke_pokemondeck = {
                name = "Trainer Deck",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
                    "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Telekinetic Deck",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_crystal_ball}#1#{} voucher",
                    "and {C:attention}2{} copies",
                    "of {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "Obituary Deck",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                } 
            },
            b_poke_revenantdeck = {
                name = "Revenant Deck",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Luminous Deck",
                text = {
                    "All Jokers are",
                    "created {C:pink}Energized{} and",
                    "with random {C:pink}Type{} stickers"
                }
            },
            b_poke_ampeddeck = {
                name = "Amped Deck",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_energysearch}#1#{} voucher",
                    "and a copy of",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
            b_poke_futuredeck = {
                name = "Future Deck",
                text = {
                    "{C:purple}+#1# Foresight{}",
                } 
            },
            b_poke_stadiumdeck = {
                name = "Stadium Deck",
                text = {
                    "Deck starts with a {C:attention}Bonus, Mult,",
                    "{C:attention}Wild, Glass, Steel, Stone,",
                    "{C:attention}Gold,{} and {C:attention}Lucky{} card"
                } 
            },
            b_poke_megadeck = {
                name = "Mega Deck",
                text = {
                    "Start the run with the",
                    "{C:tarot,T:v_reroll_surplus}#2#{}, {C:tarot,T:v_reroll_glut}#3#{}",
                    "and {C:tarot,T:v_crystal_ball}#5#{} vouchers",
                    "and a {C:spectral,T:c_poke_megastone}#1#{} card",
                    "{C:red}-#4#{} shop slot"
                } 
            },
            b_poke_vendingdeck = {
                name = "Vending Deck",
                text = {
                    "After defeating each",
                    "{C:attention}Odd Boss Blind{}, gain a",
                    "{C:attention,T:tag_vremade_double}#1#",
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
            bl_poke_mirror = {
                name = "The Mirror",
                text = {
                    "Rightmost Joker",
                    "transforms into a {c:attention}Ditto",
                    "when {C:attention}Blind{} selected",
                }, 
            },
            bl_poke_rocket = {
                name = "The Rocket",
                text = {
                    "All cards are drawn face down",
                    "if you have $25 or more"
                }, 
            },
            bl_poke_magma = {
                name = "The Magma",
                text = {
                    "Base Chips are quartered",
                }, 
            },
            bl_poke_aqua = {
                name = "The Aqua",
                text = {
                    "Base Mult is quartered",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Poké Ball",
                text = {
                    "Creates a",
                    "{C:attention}Basic Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_greatball = {
                name = "Great Ball",
                text = {
                    "Creates a",
                    "{C:attention}Stage 1 Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_moonstone = {
                name = "Moon Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#2# in #3#{} chance to",
                    "upgrade level of",
                    "selected {C:attention}poker hand{}",
                    "{C:inactive}(Hand: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Sun Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Wild{} cards and",
                    "{C:attention}randomizes{} their ranks",
                },
            },
            c_poke_waterstone = {
                name = "Water Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Enhances {C:attention}#1#{} selected card",
                    "into a {C:attention}Bonus{} card",
                    "If already a {C:attention}Bonus{} card",
                    "{C:attention}Doubles{} its total Chips",
                    "{C:inactive}(Up to {C:chips}+#2#{C:inactive} Chips per increase)",
                },
            },
            c_poke_thunderstone = {
                name = "Thunder Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Destroys {C:attention}1{} selected card,",
                    "adds {C:attention}2 Gold{} cards with",
                    "the same rank to deck",
                    "and draws {C:attention}1{} to hand",
                },
            },
            c_poke_firestone = {
                name = "Fire Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Enhances {C:attention}#1#{} selected cards to {C:attention}Mult{} cards",
                    "then destroys {C:attention}1{} at random",
                },
            },
            c_poke_leafstone = {
                name = "Leaf Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#1# in #2#{} chance for",
                    "each card in hand to",
                    "be enhanced to a {C:attention}Lucky{} card",
                },
            },
            c_poke_linkcable = {
                name = "Linking Cord",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Select {C:attention}#1#{} cards,",
                    "{C:attention}Increase{} the rank of the {C:attention}left{} card",
                    "{C:attention}Decrease{} the rank of the {C:attention}right{} card",
                },
            },
            c_poke_leftovers = {
                name = "Leftovers",
                text = {
                    "{C:attention}Reusable{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Adds {C:money}$#2#{} of sell value to",
                    "leftmost or selected Joker",
                    "{C:inactive}(Useable once per round)",
                }
            },
            c_poke_leek = {
                name = "Leek",
                text = {
                    "{C:attention}Reusable{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#1# in #2#{} chance to add",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or",
                    "{C:dark_edition}Polychrome{} to self,",
                    "remove {C:attention}Edition{} at end of round",
                    "{C:inactive}(Useable once per round)",
                }
            },
            c_poke_thickclub = {
                name = "Thick Club",
                text = {
                    "{C:attention}Reusable{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Permanently adds {C:chips}+#2#{} Chips",
                    "to {C:attention}#1#{} selected card",
                    "{C:inactive}(Useable once per round)",
                }
            },
            c_poke_teraorb = {
                name = "Tera Orb",
                text = {
                    "{C:attention}Type Changer:{} {B:1,V:2}#1#{}",
                    "{C:inactive,s:0.8}({C:pink,s:0.8}Type{C:inactive,s:0.8} changes every hand played){}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:pink}Energize{} leftmost or",
                    "selected Joker if it",
                    "is already {B:1,V:2}#1#{} {C:pink}Type{}"
                },
            },
            c_poke_metalcoat = {
                name = "Metal Coat",
                text = {
                    "{C:attention}Type Changer:{} {X:metal,C:white}Metal{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Creates a {C:attention}Steel{} copy of",
                    "{C:attention}1{} selected card",
                },
            },
            c_poke_dragonscale = {
                name = "Dragon Scale",
                text = {
                    "{C:attention}Type Changer:{} {X:dragon,C:white}Dragon{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Creates up to {C:attention}3{} random",
                    "{C:item}Item{} or {C:pink}Energy{} cards",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_kingsrock = {
                name = "King's Rock",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Turns {C:attention}#1#{} selected",
                    "card into a {C:attention}King{}",
                },
            },
            c_poke_upgrade = {
                name = "Upgrade",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Gives {C:attention}#1#{} selected cards",
                    "a random {C:attention}non-Stone Enhancement{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Dubious Disc",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:attention}Enhances{} all cards",
                    "{C:attention}held{} in hand randomly",
                }
            },
            c_poke_icestone = {
                name = "Ice Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Enhances {C:attention}#1#{} selected cards",
                    "to {C:attention}Glass Cards{}",
                    "{C:green}#2# in #3#{} chance for each",
                    "selected card to {C:attention}shatter{}",
                }
            },
            c_poke_shinystone = {
                name = "Shiny Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "or {C:dark_edition}Polychrome{} effect to",
                    "{C:attention}1{} selected card in hand and",
                    "remove card {C:attention}Enhancement{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Twisted Spoon",
                text = {
                    "Creates the last",
                    "{C:item}Item{} card or {C:pink}Energy{} card",
                    "used during this run",
                    "{s:0.8,C:item}Twisted Spoon, Reusables",
                    "{s:0.8,C:item}and Berry Juices{s:0.8} excluded"
                }
            },
            c_poke_prismscale = {
                name = "Prism Scale",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Converts {C:attention}#2#{} random {C:attention}held{}",
                    "cards to be the {C:attention}suit{} of",
                    "{C:attention}#1#{} selected card",
                }
            },
            c_poke_duskstone = {
                name = "Dusk Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Earn {C:money}$#1#{} for each {C:attention}Drainable{} ",
                    "Joker, then {C:attention}Drain {C:money}$1{} from them",
                    "{br:2}ERROR - CONTACT STEAK",
                    "After {C:attention}#2#{} {C:inactive}[#3#]{} Rounds, earn",
                    "{C:money}$#1#{} for each Joker instead",
                    "{C:inactive}(Currently {C:money}$#4#{C:inactive}/$#5# Max)"
                }
            },
            c_poke_dawnstone = {
                name = "Dawn Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Earn {C:money}${} equal to {c:attention}twice{}",
                    "the {C:mult}Mult{} value of {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:inactive}(Currently {C:money}$#2#{C:inactive}/$40 Max)",
                }
            },
            c_poke_hardstone = {
                name = "Hard Stone",
                text = {
                    "{C:attention}Evolution Card{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Enhances {C:attention}1{} selected card into a",
                    "{C:attention}Stone{} card with {C:chips}+#2#{} extra Chips",
                    "for each {X:earth,C:white}Earth{} Joker you have"
                }
            },
            c_poke_heartscale = {
                name = "Heart Scale",
                text = {
                    "Select {C:attention}#1#{} cards,",
                    "convert the {C:attention}left{} card",
                    "into the {C:attention}right{} card and",
                    "both cards into {C:hearts}#2#{}",
                    "{C:inactive}(Drag to rearrange)",
                }
            },
            c_poke_berry_juice = {
                name = "Berry Juice",
                text = {
                    "Effect depends on",
                    "{C:attention}Consumable{} destroyed"
                }
            },
            c_poke_berry_juice_energy = {
                name = "Energized Berry Juice",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "Joker of any {C:pink}Type{}",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "Ghostly Berry Juice",
                text = {
                    "Add a random {C:attention}seal{} and {C:dark_edition}Foil{}, ",
                    "{C:dark_edition}Holographic{} or {C:dark_edition}Polychrome{} to",
                    "{C:attention}1{} selected card in hand"
                },
            },
            c_poke_berry_juice_planet = {
                name = "Starry Berry Juice",
                text = {
                    "Upgrades highest level",
                    "{C:attention}poker hand{} by one level",
                },
            },
            c_poke_berry_juice_item = {
                name = "Itemized Berry Juice",
                text = {
                    "Create a {C:item}Twisted Spoon{} card",
                    "{C:green}#1# in #2#{} chance to",
                    "create {C:attention}2{} instead",
                    "{C:inactive}(Must have room){}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "Occult Berry Juice",
                text = {
                    "Create a {C:tarot}Fool{} card",
                    "and earn {C:money}$#1#{}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "Mystery Berry Juice",
                text = {
                    "Creates a random",
                    "{C:item}Berry Juice{} card"
                }
            },
            c_poke_oven = {
                name = "Microwave",
                text = {
                  "Gain {C:attention}+#1#{} discard this round",
                  "if used during the {C:attention}Blind",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforms leftmost",
                  "or selected {C:attention}Rotom"
                }
            },
            c_poke_washing_machine = {
                name = "Washing Machine",
                text = {
                  "Gain {C:attention}+#1#{} hand this round",
                  "if used during the {C:attention}Blind",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforms leftmost",
                  "or selected {C:attention}Rotom"
                }
            },
            c_poke_fridge = {
                name = "Fridge",
                text = {
                  "Create {C:attention}2{} random {C:attention}Consumables",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforms leftmost",
                  "or selected {C:attention}Rotom"
                }
            },
            c_poke_fan = {
                name = "Fan",
                text = {
                  "Create up to {C:attention}2{}",
                  "{C:blue}Common{} Jokers",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforms leftmost",
                  "or selected {C:attention}Rotom"
                }
            },
            c_poke_lawn_mower = {
                name = "Lawn Mower",
                text = {
                  "Gain {C:attention}+#1#{} hand size this round",
                  "if used during the {C:attention}Blind",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Transforms leftmost",
                  "or selected {C:attention}Rotom"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Grass Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:grass,C:white}Grass{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_fire_energy = {
                name = "Fire Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:fire,C:white}Fire{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_water_energy = {
                name = "Water Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:water,C:white}Water{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_lightning_energy = {
                name = "Lightning Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:lightning,C:black}Lightning{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_psychic_energy = {
                name = "Psychic Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:psychic,C:white}Psychic{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_fighting_energy = {
                name = "Fighting Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:fighting,C:white}Fighting{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_colorless_energy = {
                name = "Colorless Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:colorless,C:white}Colorless{} Joker if able",
                    "Half as effective with",
                    "non-{X:colorless,C:white}Colorless{} Jokers",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)"
                },
            },
            c_poke_darkness_energy = {
                name = "Darkness Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:dark,C:white}Dark{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_metal_energy = {
                name = "Metal Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:Metal,C:white}Metal{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_fairy_energy = {
                name = "Fairy Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:fairy,C:white}Fairy{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Dragon Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:dragon,C:white}Dragon{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_earth_energy = {
                name = "Earth Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "{X:earth,C:white}Earth{} Joker if able",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_bird_energy = {
                name = "Bird Energy",
                text = {
                  ""
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
            -- HA HA! Not anymore!

            m_poke_hazard = {
                name = "Hazard Card",
                text = {
                    "no rank or suit",
                    "remove {C:attention}enhancement{}",
                    "at end of round",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#1# in #2#{} chance to",
                    "be destroyed if {C:attention}held{} in",
                    "hand at end of round"
                },
            },
            m_poke_flower = {
                name = "Flower Card",
                text = {
                    "{X:mult,C:white} X#1# {} Mult if poker",
                    "hand contains {C:attention}4+ suits"
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "Diamond Stake",
                colour = "Diamond",
                text = {
                    "{C:attention}Non-Baby{} Pokemon Jokers evolve {C:attention}1{} round slower",
                    "{s:0.8}Applies all previous Stakes"
                }
            },
            stake_poke_pearl = {
                name = "Pearl Stake",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} Energy Limit",
                    "{s:0.8}Applies all previous Stakes"
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
                    "{C:chips}+#2#{} hand",
                    "Gains {C:chips}+#4#{} Chips for each",
                    "remaining {C:attention}hand{} when",
                    "hand is played",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +#3# Chips)",
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#2#{} hand",
                    "Gains {C:chips}+#4#{} Chips for each",
                    "remaining {C:attention}hand{} when",
                    "hand is played",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +#3# Chips)",
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} hand, {C:chips}+#1#{} Chips",
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
                    "Gives {C:mult}+#2#{} Mult for each",
                    "different {C:attention}rank{} and {C:attention}suit",
                    "in poker hand",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Gives {C:mult}+#2#{} Mult for each",
                    "different {C:attention}rank{} and {C:attention}suit",
                    "in poker hand",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Gives {C:mult}+#1#{} Mult for each",
                    "different {C:attention}rank{} and {C:attention}suit",
                    "in poker hand",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Gives {X:mult,C:white} X#1# {} Mult for each",
                    "different {C:attention}rank{} and {C:attention}suit",
                    "in poker hand",
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
                    "{C:mult}+#1#{} Mult if played hand",
                    "contains a {C:attention}Straight{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Mult if played hand",
                    "contains a {C:attention}Straight{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Create a {C:tarot}Tarot{} card if",
                    "it also contains an {C:attention}Ace{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "{C:mult}+#1#{} Mult if you",
                    "have {C:money}$#3#{} or more",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Earn {C:money}$#2#{} when {C:attention}Blind{}",
                    "is selected if you have",
                    "less than {C:money}$#3#",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "{C:mult}+#1#{} Mult for every",
                    "{C:money}$#2#{} you have",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Earn interest when",
                    "{C:attention}Blind{} is selected",
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} Chips for each {C:attention}Glass{} card",
                    "in your {C:attention}full deck",
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
                    "in your {C:attention}full deck",
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
                    "Played {C:clubs}#2#{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
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
                    "{C:tarot}Tarot{} card when scored",
                    "{C:inactive,s:0.8}(Must have room)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Fire Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Holding {C:dark_edition}Negative {C:spectral}Medium{}",
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}9{} to create a",
                    "{C:tarot}Tarot{} card when scored",
                    "{C:inactive,s:0.8}(Must have room)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Played {C:spades}#2#{} cards give",
                    "{C:mult}+#1#{} Mult and {C:chips}+#3#{} Chips",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Moon Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Played {C:spades}#3#{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, and the",
                    "card's total Chips when scored",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "Gains {C:mult}+#2#{} Mult for each",
                    "{C:attention}Enhanced{} card in poker hand",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +#3# Mult)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Gain {C:chips}+#4#{} for scoring {C:attention}Bonus{} / {C:attention}Stone{} cards",
                    "{C:mult}+#2#{} for scoring {C:attention}Mult{} / {C:attention}Wild{} cards",
                    "{X:mult,C:white}X#6#{} for scoring {C:attention}Steel{} / {C:attention}Glass{} cards",
                    "{C:money}$#8#{} for scoring {C:attention}Gold{} / {C:attention}Lucky{} cards,",
                    "removes card {C:attention}Enhancement",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:mult,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} end of round)",
                    "{C:inactive,s:0.8}(Evolves after eating {C:attention,s:0.8}#9#{C:inactive,s:0.8} Enhancements)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Played cards with {C:attention}odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Played cards with {C:attention}odd{} rank",
                    "give {C:mult}+#1#{} or {C:mult}+#2#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8} or {C:attention,s:0.8}Sun Stone{C:inactive,s:0.8})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Played cards with {C:attention}odd{} rank",
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
                    "{X:mult,C:white} X#1# {} Mult if played hand",
                    "contains a scoring {C:attention}2{}, {C:attention}3{}, or {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Earn {C:money}$#1#{} at end of round",
                    "{br:2}ERROR - CONTACT STEAK",
                    "The first {C:green}successful{} {C:attention}Lucky{} card",
                    "trigger each round increases",
                    "payout by {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Evolves at {C:money,s:0.8}$#1#{C:inactive,s:0.8} / $#3# payout)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Earn {C:money}$#1#{} at end of round",
                    "{C:green}#3# in #4#{} chance to earn {C:attention}double{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "The first {C:green}successful{} {C:attention}Lucky{} card",
                    "trigger each round increases",
                    "payout by {C:money}$#2#{}",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "If played hand is a",
                    "single {C:attention}face{} card, earn {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "If played hand is a single",
                    "{C:attention}face{} card, earn {C:money}$#1#{} and it",
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
                    "{X:mult,C:white} X#1# {} Mult if played hand contains a {C:attention}Flush{}",
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
                    "{C:green}#1# in #2#{} chance to create a {C:tarot}Tarot{}",
                    "or {C:item}Item{} card if played {C:attention}poker hand{}",
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
                    "Played cards with {C:attention}even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Played cards with {C:attention}even{} rank",
                    "give {C:chips}+#1#{} Chips when scored",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebel",
                text = {
                    "Played cards with {C:attention}even{} rank",
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
                    "{X:mult,C:white} X#1# {} Mult on {C:attention}final hand{} of round",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}King's Rock{C:inactive,s:0.8})"
                } 
            },
            -- not used currently
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:mult,C:white} X#1# {} Mult on {C:attention}final hand{} of round",
                    "{C:green}#3# in #4#{} chance to create",
                    "a {C:attention}King's Rock{} card at",
                    "end of round {C:inactive,s:0.8}(Must have room){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds or with a {C:attention,s:0.8}King's Rock{} {C:inactive,s:0.8}card)"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} Mult per hand played",
                    "{C:inactive,s:0.8}(Resets at end of round)",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "{X:mult,C:white} X#1# {} Mult per hand played",
                    "{C:inactive,s:0.8}(Resets when {C:attention,s:0.8}Boss Blind{C:inactive,s:0.8} is defeated)",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
                } 
            },
            j_poke_shell = {
                name = "Shellder...?",
                text = {
                  "Evolves leftmost {C:attention}Slowpoke",
                  "{S:1.1,C:red,E:2}self destructs{}",
                }
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Played {C:attention}Steel{} cards",
                    "give {X:mult,C:white}X#1#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Played {C:attention}Steel{} cards give {X:mult,C:white}X#1#{} Mult",
                    "plus {X:mult,C:white}X#2#{} Mult for each",
                    "adjacent {X:metal,C:white}Metal{} Joker",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Thunder Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Holding {C:item}Leek{}",
                    "{C:green}#2# in #3#{} chance to earn {C:money}$#1#",
                    "when a {C:attention}Consumable{} is used,",
                    "{C:money}${} guaranteed when using {C:item}Leeks{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "First {C:attention}2{} played {C:attention}face{} cards",
                    "give {C:mult}+#1#{} Mult when scored",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',
                text = {
                    "First {C:attention}3{} played {C:attention}face{} cards",
                    "give {C:mult}+#1#{} Mult when scored",
                    "{br:2}ERROR - CONTACT STEAK",
                    "If poker hand is ",
                    "{C:attention}exactly 3 face{} cards gain",
                    "{C:attention}+#2#{} hand size this round"
                    
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "{C:green}#1# in #2#{} chance to add a random",
                    "{C:attention}seal{} to first scoring card",
                    "on {C:attention}first hand{} of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
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
                    "At end of round, destroy {C:attention}1{} random card",
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
                    "{C:attention}Replace{} the edition of a",
                    "random {C:attention}Joker{} with",
                    "{C:dark_edition}Negative{} in {C:dark_edition}#1#{} rounds",
                    "{C:inactive,s:0.8}(Gengar picks a new number!){}",
                    "{C:inactive,s:0.8}(Excludes Gengars){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "Create a {C:attention}Negative Tag{} when",
                    "{C:attention}Small Blind{} or {C:attention}Big Blind{} is selected",
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
                    "{C:attention}Holding {C:spectral}Trance{}",
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
                    "{X:mult,C:white} X#1# {} Mult then",
                    "debuff self this round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds not debuffed)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "{C:attention}Volatile Right{}",
                    "{X:mult,C:white} X#1# {} Mult and earn {C:money}$#2#{}",
                    "then debuff self this round"
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Played {C:hearts}#2#{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:green}#4# in #5#{} chance for",
                    "{C:mult}+#3#{} Mult instead",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Leaf Stone{C:inactive,s:0.8})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "Played {C:hearts}#3#{} cards give",
                    "{C:mult}+#1#{} Mult when scored",
                    "{C:green}#4# in #5#{} chance for",
                    "{X:mult,C:white}X#2#{} Mult instead",
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',
                text = {
                    "{C:attention}Holding {C:item}Thick Club{}",
                    "Gives {C:mult}+#1#{} Mult for",
                    "each {C:attention}held consumable",
                    "{C:inactive,s:0.8}({C:item,s:0.8}Thick Clubs{C:inactive,s:0.8} count as double){}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves after using {C:attention,s:0.8}#3#{C:inactive,s:0.8} consumables)",
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} consumable slots",
                    "Gives {X:mult,C:white} X#1# {} Mult for",
                    "each {C:attention}held consumable",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Thick Clubs{C:inactive,s:0.8} count as double){}",
                    "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:mult,C:white}X#1#{} Mult for every card",
                    "below {C:attention}#2#{} in your {C:attention}full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:mult,C:white}X#1#{} Mult for every card",
                    "above {C:attention}#2#{} in your {C:attention}full deck",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
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
                    "your deck and draw it to hand",
                    "{C:inactive,s:0.8}(Evolves when deck is >= 25% #3#{C:attention,s:0.8}Lucky{C:inactive,s:0.8} cards)"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#6#{C:inactive,s:0.8}  Wild cards)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} consumable slots",
                    "{C:mult}-$#2#{} interest cap",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "Retrigger all cards played",
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
                    "in poker hand",
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
                    "{C:attention}held in hand #1#{} time",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Retrigger each {C:attention}Gold{} card",
                    "{C:attention}held in hand #1#{} times",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Played {C:diamonds}#2#{} cards give",
                    "{C:mult}+#1#{} Mult and {C:money}$#3#{} when scored",
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
                    "{C:attention}held in hand #1#{} times"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "When Blind is selected, destroy Joker",
                    "to the right and gain {C:mult}+#2#{} Mult",
                    "Gain {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{}",
                    "if it was {C:rare}Rare{} or higher",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Evolves with a {C:metal,s:0.8}Metal{C:inactive,s:0.8} sticker or a {C:attention,s:0.8}Hard Stone{C:inactive,s:0.8})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "gain {C:attention}+#1#{} hand size if",
                    "deck size >= {C:attention}#2#{}",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}Playing cards{} added to",
                    "your deck are {C:attention}duplicated{}",
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Gains {C:money}$#1#{} of {C:attention}sell value{} when a card",
                    "is {C:attention}sold{} and at end of round",
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
                    "Rerolls have a {C:green}#2# in #3#{} chance",
                    "to add a {C:attention}Tauros (Herd){} to shop",
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
                    "{X:mult,C:white} X#1# {} Mult",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
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
                    "{br:2}ERROR - CONTACT STEAK",
                    "Visit the {C:attention}shop{}",
                    "after skipping",
                    "{C:inactive}(Currently {C:chips}+#1# {C:inactive}Chips)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "{C:attention}Volatile Right{}",
                    "{C:attention}Transforms{} into leftmost",
                    "Joker with {C:attention}Perishable{}",
                    "and a {X:colorless,C:white}Colorless{} sticker",
                    "at end of shop",
                    "{C:inactive,s:0.8}(Excludes Dittos)",
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
                    "Every played {C:attention}card{}",
                    "permanently gains",
                    "{C:chips}+#1#{} Chips when scored",
                    "{C:attention}Doubled{} for {C:attention}Bonus{} cards"
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Earn {C:money}$#1#{} for each",
                    "discarded {C:attention}Gold{} card",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "First {C:attention}Mult{} card",
                    "held in hand", 
                    "gives {X:mult,C:white} X#1# {} Mult"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Energy Limit",
                    "Create an {C:pink}Energy{} card when",
                    "any {C:attention}Booster Pack{} is opened",
                    "{C:inactive,s:0.8}(Evolves with a {C:item,s:0.8}Upgrade{C:inactive,s:0.8})",
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : Create a {C:tarot}Tarot{} card",
                    "{X:attention,C:white}2+{} : Earn {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : Create a {C:item}Item{} card {C:inactive,s:0.7}(Trigger {C:attention,s:0.7}#3#{C:inactive,s:0.7} times to evolve)",
                    "{C:inactive,s:0.8}(Must have room)",
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
                    "{X:attention,C:white}4+{} : Create a {C:attention}Tag{} once per round{C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}2+{} : {}Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chips {C:inactive,s:0.8}(Trigger {C:attention,s:0.8}#5#{C:inactive,s:0.8} times to evolve)",
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chips",
                    "{X:attention,C:white}2+{} : {}Scoring {C:attention}#1#s{} permanently gain {C:chips}+#3#{} Chips",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chips",
                    "{X:attention,C:white}4+{} : {}Retrigger all played {C:attention}#1#s{}",
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Ancient #1#s{}",
                    "{X:attention,C:white}1+{} : {X:mult,C:white}X#2#{} Mult",
                    "{X:attention,C:white}2+{} : Gains {X:mult,C:white}X#3#{} Mult",
                    "{X:attention,C:white}3+{} : The first scoring unenhanced {C:attention}#1#{}",
                    "becomes a {C:attention}Glass{} card",
                    "{X:attention,C:white}4+{} : {C:attention}Double{} this Joker's {X:mult,C:white}X{} Mult",
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
                    "{C:attention}Holding {C:item}Leftovers{}",
                    "At end of round gain {X:mult,C:white}X#1#{} Mult",
                    "for each {C:item}Leftovers{} you have",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
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
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Upgrade the {C:attention}first discarded{}",
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
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +#4# Mult)",
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Gains {C:mult}+#2#{} Mult",
                    "if played hand has",
                    "{C:attention}#3#{} or fewer cards",
                    "{C:inactive}(Evolves at {C:mult}+#1#{C:inactive} / +#4# Mult)",
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
                    "When {C:attention}Boss Blind{} is defeated, create a",
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
                    "{C:pink}Energize{} leftmost {C:attention}Joker twice{}",
                    "at end of shop",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:pink}+1{} Energy Limit when",
                    "{C:attention}Boss Blind{} is defeated",
                    "{C:inactive}(Can't {C:pink}Energize{C:inactive} self)",
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
                    "Every card held in hand",
                    "beyond the {C:attention}fourth{} earns",
                    "{C:money}$#2#{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_bayleef = {
                name = 'Bayleef',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Every card held in hand",
                    "beyond the {C:attention}second{} earns",
                    "{C:money}$#2#{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_meganium = {
                name = 'Meganium',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Every card held in hand",
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
                    "{C:mult}+#2#{} Mult and {X:mult,C:white} X#3# {} Mult for",
                    "each remaining {C:attention}discard{}",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult and {X:mult,C:white} X#5# {C:inactive} Mult)",
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
                    "gives their total Chips",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_noctowl = {
                name = 'Noctowl',
                text = {
                    "{C:purple}+#1# Foresight",
                    "Each {C:attention}Foreseen{} card",
                    "gives their total Chips",
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
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#4#{C:inactive,s:0.8} rounds)",
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
                    "{X:mult,C:white}X#6#{} for scoring {C:attention}Steel{} / {C:attention}Glass{} cards",
                    "{C:money}$#8#{} for scoring {C:attention}Gold{} / {C:attention}Lucky{} cards",
                    "Then {C:attention}Randomize{} scoring card {C:dark_edition}Enhancements",
                    "{C:inactive}(Currently {C:chips}+#3#{}, {C:mult}+#1#{}, {X:mult,C:white}X#5#{}, {C:money}$#7#{C:inactive} end of round)"
                } 
            },
            j_poke_chinchou = {
                name = "Chinchou",
                text = {
                  "Gives {C:chips}+#1#{} Chips and earns {C:money}$#2#{}",
                  "if played hand contains a {C:attention}Pair",
                  "{C:inactive}(Evolves after {C:attention}#3#{C:inactive} rounds)",
                }
            },
            j_poke_lanturn = {
                name = "Lanturn",
                text = {
                  "Gives {C:chips}+#1#{} Chips and earns {C:money}$#2#{}",
                  "if played hand contains a {C:attention}Pair",
                  "{br:3}ERROR - CONTACT STEAK",
                  "{C:chips}+#3#{} Chips extra per {X:water,C:white}Water{} Joker",
                  "{C:money}$#4#{} extra per {X:lightning,C:black}Lightning{} Joker",
                  "{C:inactive}(Currently {C:chips}+#6#{C:inactive} Chips and {C:money}$#5#{C:inactive})"
                }
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#2# {} Mult",
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:tarot}The Moon{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:tarot}The World{} at end of round",
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
                    "{C:attention}Lucky{} cards have",
                    "a {C:green}#1# in #2#{} chance to give {C:chips}+#4#{} Chips",
                    "and a {C:green}#1# in #3#{} chance to give {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Shiny Stone{C:inactive,s:0.8})"
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
            j_poke_mareep = {
                name = "Mareep",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult when one or more",
                  "{C:attention}playing cards{} are {C:attention}added{} to deck",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Loses {X:mult,C:white}X#3#{} Mult when one or more",
                  "{C:attention}playing cards{} are {C:attention}destroyed",
                  "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_flaaffy = {
                name = "Flaaffy",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult when one or more",
                  "{C:attention}playing cards{} are {C:attention}added{} to deck",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Loses {X:mult,C:white}X#3#{} Mult when one or more",
                  "{C:attention}playing cards{} are {C:attention}destroyed",
                  "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / X#4# Mult)",
                }
            },
            j_poke_ampharos = {
                name = "Ampharos",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult when one or more",
                  "{C:attention}playing cards{} are {C:attention}added{} to deck",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_mega_ampharos = {
                name = "Mega Ampharos",
                text = {
                  "{X:mult,C:white} X#1# {} Mult",
                  "When Blind is selected, increase",
                  "hand size to {C:attention}half{} your",
                  "deck size then lose all",
                  "discards and all but {C:attention}1{} hand",
                  "{C:inactive}(rounded up, currently {C:attention}#2#{C:inactive})"
                }
            },
            j_poke_marill = {
                name = 'Marill',
                text = {
                    "{X:mult,C:white}X#2#{} Mult if played hand",
                    "contains a scoring {C:attention}unenhanced{} card",
                    "and a scoring {C:attention}enhanced{} card",
                    "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#1#{C:inactive,s:0.8} Bonus cards)",
                }
            },
            j_poke_azumarill = {
                name = 'Azumarill',
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "Gives {C:attention}double{} {X:mult,C:white}X{} Mult if played hand",
                    "contains a scoring {C:attention}non-Bonus{} card",
                    "and a scoring {C:attention}Bonus{} card"
                }
            },
            j_poke_sudowoodo = {
                name = "Sudowoodo",
                text = {
                  "Retrigger all {C:attention}played{} and",
                  "{C:attention}held{} {C:attention}face{} cards",
                }
            },
            j_poke_weird_tree = {
                name = "Weird Tree",
                text = {
                  "{C:attention}Type Changer: {X:grass,C:white}Grass{}",
                  "{C:}Transforms{} at end of round",
                  "if this Joker isn't",
                  "a {X:grass,C:white}Grass{} type or you",
                  "have a {X:water,C:white}Water{} type"
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Played cards with {C:attention}odd{} rank",
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
                    "First two {C:attention}discarded cards{} become {C:attention}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_skiploom = {
                name = 'Skiploom',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "First three {C:attention}discarded cards{} become {C:attention}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_jumpluff = {
                name = 'Jumpluff',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "All {C:attention}discarded cards{} become {C:attention}Wild{}",
                    "{S:1.1,C:red,E:2}self destructs{} on discard",
                }
            },
            j_poke_aipom = {
              name = "Aipom",
              text = {
                "{C:attention}-#3#{} card selection limit",
                "{C:inactive}(play/discard limits)",
                "{br:2}ERROR - CONTACT STEAK",
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
                    "consumable is {C:attention}used{} and at end of round",
                }
            },
            j_poke_wooper = {
                name = "Wooper",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#3#{} Mult for each {C:attention}face{}",
                  "card remaining in {C:attention}deck",
                  "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)",
                  "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
                }
            },
            j_poke_quagsire = {
                name = "Quagsire",
                text = {
                  "{C:mult}+#1#{} Mult",
                  "{C:mult}-#2#{} Mult for each {C:attention}face{}",
                  "card remaining in {C:attention}deck",
                  "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
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
                    "Retrigger each played {C:attention}#3#{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Each scored {V:1}#4#{} card",
                    "gives {X:mult,C:white}X#2#{} Mult",
                    "{C:inactive,s:0.7}Rank and Suit change every round{}"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Decrease level of",
                    "discarded {C:attention}#1#{}",
                    "and add it to most",
                    "played {C:attention}poker hand",
                    "{C:inactive,s:0.7}Hand changes every round{}"
                } 
            },
            j_poke_murkrow = {
              name = "Murkrow",
              text = {
                "{X:mult,C:white} X#1# {} Mult for each",
                "{X:dark,C:white}Dark{} Joker you have",
                "{C:inactive}(Currently {X:mult,C:white} X#2#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})"
              }
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Played {C:attention}Kings{} give",
                    "{X:mult,C:white}X#1#{} Mult when scored",
                    "Increases by {X:mult,C:white}X#2#{} Mult",
                    "when hand is played",
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
            j_poke_unown = {
                name = "Unown",
                text = {
                  "{C:attention}Nature:{} {C:inactive}({C:attention}#2#{C:inactive})",
                  "{C:mult}+#1#{} Mult if played hand",
                  "contains a {C:attention}Nature{} card",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{S:1.1,C:red,E:2}self destructs{} at end of round",
                }
            },
            j_poke_wobbuffet = {
              name = "Wobbuffet",
              text = {
                "Retrigger each played",
                "{C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} or {C:attention}10{}",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:attention}Volatile Left{}",
                "When {C:attention}Blind{} is selected",
                "add {C:attention}Eternal{} to rightmost Joker",
              }
            },
            j_poke_girafarig = {
              name = "Girafarig",
              text = {
                "First and last {C:attention}face{} cards",
                "give {X:mult,C:white}X#1#{} Mult when scored",
                "if played hand contains a {C:attention}Two Pair{}",
                "{C:inactive,s:0.8}(Evolves after using a {C:attention,s:0.8}Death{C:inactive,s:0.8} on {C:attention,s:0.8}2{C:inactive,s:0.8} face cards){}"
              }
            },
            j_poke_pineco = {
              name = "Pineco",
              text = {
                "{C:attention}Volatile Left{}",
                "{C:chips}+#1#{} Chips then",
                "debuff self this round",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds not debuffed)",
              }
            },
            j_poke_forretress = {
              name = "Forretress",
              text = {
                "{C:attention}Volatile Left{}",
                "{C:chips}+#1#{} Chips then",
                "debuff self this round",
                "Gives {C:attention}Double{} Chips if a",
                "{C:attention}Steel{} card is {C:attention}held{} in hand",
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
                    "{C:attention}Stone{} cards held in hand become {C:attention}Steel{}"
                } 
            },
            j_poke_mega_steelix = {
                name = "Mega Steelix",
                text = {
                  "Earn {C:money}$#1#{} for each {C:diamonds}#2#{} in your",
                  "{C:attention}full deck{} at end of round",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:diamonds}non-#2#{} {C:attention}Steel{} cards",
                  "held in hand become {C:diamonds}#3#{}",
                  "then lose their {C:attention}Enhancement{}",
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
                    "{C:purple}+#1# Hazards",
                    "Gain {C:chips}+#2#{} Chips when",
                    "an {C:attention}enhanced{} card",
                    "is destroyed",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)",
                }
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "When {C:attention}Blind{} is selected, destroy Joker",
                    "to the right and gain {C:mult}+#4#{} Mult",
                    "Gain {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{}",
                    "if it was {C:red}Rare{} or higher",
                    "Those editions {C:attention}stack{} on this Joker",
                    "{C:inactive,s:0.8}(Matches destroyed Joker's edition if able){}",
                    "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips, {C:mult}+#1#{} {C:inactive}Mult, {X:mult,C:white}X#3#{} {C:inactive}Mult)"
                } 
            },
            j_poke_mega_scizor = {
                name = "Mega Scizor",
                text = {
                  "{C:blue}Common{} Jokers give {X:mult,C:white} X#1# {} Mult",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Destroy all {C:blue}Common{} Jokers",
                  "at end of round"
                }
            },
            j_poke_shuckle = {
                name = "Shuckle",
                text = {
                  "When {C:attention}Blind{} is selected, destroy",
                  "leftmost {C:attention}Consumable{} and",
                  "create a {C:item}Berry Juice{} card",
                  "{C:inactive}(Can't destroy {C:item}Berry Juice{C:inactive})"
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
            j_poke_slugma = {
              name = "Slugma",
              text = {
                "Every {C:attention}4{} {C:inactive}[#4#]{} hands played, destroy",
                "first card {C:attention}held{} in hand after scoring",
                "and this Joker gains {C:chips}+#2#{} Chips",
                "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / #3# Chips)",
              }
            },
            j_poke_magcargo = {
                name = "Magcargo",
                text = {
                  "Every {C:attention}3{} {C:inactive}[#3#]{} hands played, destroy",
                  "first card {C:attention}held{} in hand after scoring",
                  "and this Joker gains {C:chips}+#2#{} Chips",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_swinub = {
                name = "Swinub",
                text = {
                  "First played card gives {C:mult}+#1#{} Mult for each",
                  "{C:attention}Stone{} and {C:attention}Glass{} Card in poker hand",
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
                "{C:attention}Stone{} and {C:attention}Glass{} card in poker hand",
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
            j_poke_mega_heracross = {
                name = "Mega Heracross",
                text = {
                  "Retrigger all played cards {C:attention}twice{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Debuffs self this round",
                  "if you play or discard",
                  "less than {C:attention}5{} cards",
                  "{C:inactive}(debuffs before scoring)"
                }
            },
            j_poke_corsola = {
              name = 'Corsola',
              text = {
                "{C:mult}+#1#{} Mult for each {C:attention}Enhanced{}",
                "card in your {C:attention}full deck",
                "{br:2}ERROR - CONTACT STEAK",
                "Create a {C:attention}Basic{} {X:water,C:white}Water{} Joker if poker",
                "hand contains {C:attention}5 Enhanced{} cards",
                "{C:inactive,s:0.8}(Must have room)",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
              }
            },
            j_poke_remoraid = {
              name = "Remoraid",
              text = {
                "Retrigger all cards",
                "in first played hand",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_octillery = {
              name = "Octillery",
              text = {
                "Retrigger all cards played",
                "{br:2}ERROR - CONTACT STEAK",
                "Debuffs self this round after scoring",
                "if poker hand doesn't contain an {C:attention}8{}"
              }
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "At end of round,",
                  "receive a {S:1.1,C:green,E:2}Present!{}",
                  "{C:inactive,s:0.8}(Must have room)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Gains {C:chips}+#2#{} Chips when a {C:attention}Gold{} card",
                  "is scored or held in hand",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_skarmory = {
                name = 'Skarmory',
                text = {
                    "{C:purple}+#1# Hazards",
                    "{X:mult,C:white}X#2#{} Mult for each",
                    "{C:attention}Hazard{} or {C:attention}Steel{} card",
                    "{C:attention}held{} in hand",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Gains {C:mult}+#2#{} Mult for each scored {C:attention}6{}",
                    "If a {C:attention}King{} is held in hand,",
                    "gains {X:mult,C:white}X#4#{} Mult {C:attention}instead{} for each scored {C:attention}6{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_phanpy = {
                name = "Phanpy",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult for each",
                  "{C:attention}consecutive{} played hand",
                  "with {C:attention}5{} scoring cards",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_donphan = {
                name = "Donphan",
                text = {
                  "Gains {X:mult,C:white}X#2#{} Mult for each",
                  "{C:attention}consecutive{} played hand",
                  "with {C:attention}5{} scoring cards",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Energy Limit",
                    "When any {C:attention}Booster Pack{} is opened",
                    "create an {C:pink}Energy{} card of",
                    "the same {C:pink}Type{} of leftmost Joker",
                    "{C:inactive,s:0.8}(Evolves with a {C:item,s:0.8}Dubious Disc{C:inactive,s:0.8})",
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                    "{C:purple}+#1# Foresight ",
                    "Adds the rank of {C:attention}highest{}",
                    "ranked {C:attention}Foreseen{} card to Mult",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                }
            },
            j_poke_smeargle = {
                name = "Smeargle",
                text = {
                  "{C:attention}Sketch{} ability of {C:attention}Joker{} to the right",
                  "when {C:attention}Blind{} is selected",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Applies {C:attention}Smeared Joker{}",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "If {C:attention}first hand or discard{} of round",
                    "has exactly {C:attention}5{} cards, a random card is",
                    "copied {C:inactive}(if played){} or destroyed {C:inactive}(if discarded){}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "When {C:attention}Blind{} is selected",
                    "gains {X:mult,C:white} X#3# {} Mult if",
                    "deck size is exactly {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:attention}Standard Tag{}",
                    "when this Joker evolves",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:attention}Coupon Tag{}",
                    "when this Joker evolves",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "{C:red}+#2#{} discards",
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
            j_poke_mega_houndoom = {
                name = "Mega Houndoom",
                text = {
                  "Discarding also discards",
                  "{C:attention}all{} cards {C:attention}held{} in hand",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Gains {X:mult,C:white} X#2# {} Mult whenever",
                  "cards are discarded",
                  "resets at end of round",
                  "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
                }
            },
            j_poke_miltank = {
                name = "Miltank",
                text = {
                  "Earn {C:money}$#1#{} for each", 
                  "{X:colorless,C:white}Colorless{} Joker you have",
                  "at end of round",
                  "{C:inactive}(Currently {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "The first {C:attention}#1#{C:inactive} [#2#]{} times a {C:attention}Lucky{} card triggers",
                    "each round, add a permanent {C:dark_edition}Polychrome{} copy to",
                    "your deck and draw it to hand",
                } 
            },
            j_poke_raikou = {
                name = "Raikou",
                text = {
                  "If first played hand is {C:attention}1{} card,",
                  "turns {C:attention}3{} cards {C:attention}held{} in hand",
                  "to its {C:attention}rank{} and earn {C:money}$#1#{}",
                }
            },
            j_poke_entei = {
                name = "Entei",
                text = {
                  "If {C:attention}first discard{} is exactly",
                  "{C:attention}4{} cards, destroy one of them",
                  "and gain {X:red,C:white}X#2#{} Mult",
                  "{C:inactive}(Currently {X:red,C:white}X#1#{C:inactive} Mult)",
                }
            },
            j_poke_suicune = {
                name = "Suicune",
                text = {
                  "Permanently {C:attention}doubles{} the",
                  "total Chips of each scoring",
                  "card in played hand",
                  "{C:inactive}(Up to {C:chips}+#1#{C:inactive} Chips per increase)",
                }
            },
            j_poke_larvitar = {
                name = "Larvitar",
                text = {
                  "If played hand is a {C:attention}Full House{}",
                  "every played card permanently ",
                  "gains {C:chips}+#1#{} Chips when scored",
                  "{C:inactive,s:0.8}(Evolves after playing {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full Houses)"
                }
            },
            j_poke_pupitar = {
                name = "Pupitar",
                text = {
                  "If played hand is a {C:attention}Full House{}",
                  "every played card permanently ",
                  "gains {C:chips}+#1#{} Chips when scored",
                  "{C:inactive,s:0.8}(Evolves after playing {C:attention,s:0.8}#2#{C:inactive,s:0.8} Full Houses)"
                }
            },
            j_poke_tyranitar = {
                name = "Tyranitar",
                text = {
                  "If played hand is a {C:attention}Full House{}, each",
                  "played card permanently loses",
                  "up to {C:chips}#1#{} Chips and permanently",
                  "gains {X:mult,C:white}X#2#{} Mult if Chips were",
                  "lost when scored"
                }
            },
            j_poke_mega_tyranitar = {
                name = "Mega Tyranitar",
                text = {
                  "If played hand is a {C:attention}Full House{}",
                  "upgrade its level, then played",
                  "cards permanently gain {C:chips}Chips",
                  "equal to level of {C:attention}Full House{}"
                }
            },
            j_poke_lugia = {
              name = "Lugia",
              text = {
                "Gains {X:mult,C:white} X#2# {} Mult for",
                "every {C:attention}#3#{} {C:inactive}[#4#]{} cards",
                "drawn during {C:attention}Blinds{}",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult){}"
              }
            },
            j_poke_ho_oh = {
                name = "Ho-Oh",
                text = {
                  "The first time a {C:attention}Consumable{}",
                  "is used each round, create",
                  "a {C:dark_edition}Polychrome{} copy of it",
                  "{C:inactive}(Must have room)",
                }
            },
            j_poke_celebi = {
                name = "Celebi",
                text = {
                    "{C:attention}-#2#{} Ante after skipping {C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}Blinds{}",
                    "{C:inactive}(Required skips increase each time)",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{X:mult,C:white} X#4# {} Mult for each round played",
                    "{C:inactive}(Currently {X:mult,C:white} X#5# {C:inactive} Mult){}"
                    
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards earn {C:money}$#1#{}",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards earn {C:money}$#1#{}",
                    "or {C:money}$#4#{} when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} hand size, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards earn {C:money}$#1#{}",
                    "when scored plus {C:money}$#5#{} for each",
                    "{C:attention}other{} {X:grass,C:white}Grass{} Joker you have",
                    "{C:inactive}(Currently {C:money}$#4#{C:inactive} total){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} discard, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:mult}+#1#{} Mult",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} discard, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:mult}+#1#{} Mult",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)",
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#3#{} discard, {C:attention}Nature: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:mult}+#1#{} Mult",
                    "when scored",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Each {X:fire,C:white}Fire{} or {X:fighting,C:white}Fighting{} Joker gives",
                    "{X:mult,C:white} X#2# {} Mult if you have discarded",
                    "{C:attention}#4# {C:inactive}[#5#] {C:attention}Nature{} cards this round"
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} hand, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} hand, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "when scored",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#2#{} hand, {C:attention}Nature: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "Played {C:attention}Nature{} cards give {C:chips}+#1#{} Chips",
                    "when scored",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Create a {C:tarot}Tarot{} card for every {C:attention}2{}",
                    "{X:water,C:white}Water{} or {X:earth,C:white}Earth{} Jokers you have if",
                    "poker hand contains {C:attention}#3# Nature{} cards",
                    "{C:inactive}(Must have room){}"
                } 
            },
            j_poke_poochyena = {
              name = "Poochyena",
              text = {
                "Gains {C:mult}+#2#{} Mult when a",
                "{C:attention}playing card{} is destroyed",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)",
              }
            },
            j_poke_mightyena = {
              name = "Mightyena",
              text = {
                "Gains {C:mult}+#2#{} Mult when a",
                "{C:attention}playing card{} is destroyed",
                "{br:2}ERROR - CONTACT STEAK",
                "Gain increased by {C:mult}+#3#{} Mult",
                "for each {X:dark,C:white}Dark{} Joker you have",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_zigzagoon = {
              name = "Zigzagoon",
              text = {
                "{C:green}#1# in #2#{} chance to create a",
                "{C:attention}Pickup{} {C:item}Item{} when hand is played",
                "{C:inactive}(Must have room)",
                "{C:inactive,s:0.8}(Evolves after {C:attention}#3#{C:inactive,s:0.8} rounds)",
              }
            },
            j_poke_linoone = {
              name = "Linoone",
              text = {
                "{C:green}#1# in #2#{} chance to create a",
                "{C:attention}Pickup{} {C:item}Item{} when hand is played",
                "Guaranteed if hand",
                "contains a {C:attention}Straight{}",
                "{C:inactive}(Must have room)"
              }
            },
            j_poke_shroomish = {
                name = "Shroomish",
                text = {
                  "When {C:attention}Blind{} is selected, gain",
                  "{C:chips}+#1#{} hand, {C:mult}+#2#{} discard, or",
                  "{C:attention}+#3#{} hand size this round",
                  "{C:inactive,s:0.8}(Evolves after defeating {C:attention,s:0.8}#4#{C:inactive,s:0.8} Boss Blinds){}"
                }
            }, 
            j_poke_breloom = {
                name = "Breloom",
                text = {
                  "When {C:attention}Blind{} is selected, gain",
                  "{C:chips}+#1#{} hands, {C:mult}+#2#{} discards, or",
                  "{C:attention}+#3#{} hand size this round"
                }
            }, 
            j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white}X#1#{} Mult",
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:tarot}The Hierophant{} at end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
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
                    "Gain {X:mult,C:white}X#2#{} Mult for each",
                    "{C:attention}Steel{} card in {C:attention}poker hand{},",
                    "then destroy them",
                    "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} Mult)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Gain {X:mult,C:white}X#2#{} Mult for each",
                    "{C:attention}Steel{} and {C:attention}Stone{} card in",
                    "{C:attention}poker hand{}, then destroy them",
                    "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} Mult)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Gain {X:mult,C:white}X#2#{} Mult for each",
                    "{C:attention}Steel{}, {C:attention}Stone{} and {C:attention}Gold{} card in",
                    "{C:attention}poker hand{}, then destroy them",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_poke_numel = {
                name = "Numel",
                text = {
                  "{X:red,C:white}X#1#{} Mult every",
                  "{C:attention}#3#{} cards scored",
                  "{C:inactive}#4# remaining{}",
                  "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
                }
            },
            j_poke_camerupt = {
              name = "Camerupt",
              text = {
                "{X:red,C:white}X#1#{} Mult every",
                "{C:attention}#2#{} cards scored,",
                "with {C:attention}Mult{} cards",
                "counted twice",
                "{C:inactive}#3# remaining{}",
              }
            },
            j_poke_mega_camerupt = {
              name = "Mega Camerupt",
              text = {
                "Gains {X:mult,C:white} X#2# {} Mult when",
                "a {C:attention}Mult{} card is scored",
                "resets at end of round",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
              }
            },
            j_poke_lileep = {
                name = "Lileep",
                text = {
                  "{C:attention}Ancient #1#s{}",
                  "{X:attention,C:white}1+{} : {C:attention}+#4#{} hand size this round",
                  "{X:attention,C:white}2+{} : Add {C:money}$#3#{} of sell value to self",
                  "and every {C:attention}Consumable",
                  "{X:attention,C:white}3+{} : Each card held in hand gives {C:chips}+#2#{} Chips",
                  "{C:inactive,s:0.8}(Trigger {X:attention,C:white,s:0.8}3+{C:inactive,s:0.8} ability {C:attention,s:0.8}#6#{C:inactive,s:0.8} times to evolve)"
                }
            },
            j_poke_cradily = {
                name = "Cradily",
                text = {
                  "{C:attention}Ancient #1#s{}",
                  "{X:attention,C:white}1+{} : {C:attention}+#4#{} hand size this round",
                  "{X:attention,C:white}2+{} : Add {C:money}$#3#{} of sell value to self",
                  "and every {C:attention}Consumable",
                  "{X:attention,C:white}3+{} : Each card held in hand gives {C:chips}+#2#{} Chips",
                  "{X:attention,C:white}4+{} : Earn {C:money}${} equal to the highest sell",
                  "value among your {C:attention}Consumables "
                }
            },
            j_poke_anorith = {
                name = "Anorith",
                text = {
                  "{C:attention}Ancient #1#s{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} Mult",
                  "{X:attention,C:white}2+{} : {C:green}#3# in #4#{} chance to add",
                  "a {C:attention}#1#{} to deck",
                  "{X:attention,C:white}3+{} : Destroy a card in deck",
                  "with {C:attention}rank{} higher than {C:attention}#1#",
                  "{C:inactive,s:0.8}(Trigger {X:attention,C:white,s:0.8}3+{C:inactive,s:0.8} ability {C:attention,s:0.8}#5#{C:inactive,s:0.8} times to evolve)"
                }
            },
            j_poke_armaldo = {
                name = "Armaldo",
                text = {
                  "{C:attention}Ancient #1#s{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} Mult",
                  "{X:attention,C:white}2+{} : {C:green}#3# in #4#{} chance to add",
                  "an {C:attention}Enhanced #1#{} to deck",
                  "{X:attention,C:white}3+{} : Destroy a card in deck",
                  "with {C:attention}rank{} higher than {C:attention}#1#",
                  "{X:attention,C:white}4+{} : {X:mult,C:white} X#5# {} Mult for each {C:attention}Enhanced{}",
                  "{C:attention}#1#{} in your {C:attention}full deck",
                  "{C:inactive}(Currently {X:mult,C:white} X#6# {C:inactive} Mult){}"
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
                  "poker hand is {C:attention}mono-suit{}"
                }
            },
            j_poke_duskull = {
              name = "Duskull",
              text = {
                "Retrigger first {C:attention}4{} scored cards",
                "in {C:attention}final hand{} of round",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_dusclops = {
              name = "Dusclops",
              text = {
                "Retrigger first {C:attention}4{} scored cards",
                "in {C:attention}final hand{} of round",
                "{br:2}ERROR - CONTACT STEAK",
                "If there is {C:attention}1{} unscored card",
                "in final hand, destroy it",
                "and create a {C:spectral}Spectral{} card",
                "{C:inactive}(Must have room){}",
                "{C:inactive}(Evolves with a {C:attention}Linking Cord{C:inactive})",
              }
            },
            j_poke_absol = {
                name = "Absol",
                text = {
                  "{X:red,C:white}X#1#{} Mult",
                  "All {C:attention}listed{} {C:green,E:1,S:1.1}probabilities{}", 
                  "are always {C:attention}0{}",
                  "{C:inactive}(ex: {C:green}1 in 6{C:inactive} -> {C:green}0 in 6{C:inactive})",
                }
            },
            j_poke_wynaut = {
                name = 'Wynaut',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:tarot}The Fool{} at end of round",
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
            j_poke_luvdisc = {
              name = "Luvdisc",
              text = {
                "{C:attention}Holding {C:hearts}Heart Scale",
                "Applies {C:attention}Splash",
              }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Gains {C:chips}+#2#{} Chips if played hand",
                    "is a {C:attention}Four of a Kind{}",
                    "Gains {C:chips}+#2#{} Chips if poker hand",
                    "contains an {C:attention}Ace",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +#4# Chips)",
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Gains {C:chips}+#2#{} Chips if played hand",
                    "is a {C:attention}Four of a Kind{}",
                    "Gains {C:chips}+#2#{} Chips if poker hand",
                    "contains {C:attention}2+{} {C:attention}Aces",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +#4# Chips)",
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{br:3}ERROR - CONTACT STEAK",
                    "If played hand is a {C:attention}Four of a Kind{}",
                    "each played card gives {X:mult,C:white}X{} Mult",
                    "equal to the {C:attention}fourth root{} ",
                    "of that card's total Chips",
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
                    "{C:attention}+1{} Booster Pack slot",
                    "{C:attention}Booster Packs{} have {C:attention}1{} more card in them",
                }
            },
            j_poke_jirachi_power = {
                name = 'Jirachi',
                text = {
                    "Every {C:attention}#2#{} hands, played cards",
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
            j_poke_jirachi_invis = {
                name = 'Jirachi',
                text = {
                    "When {C:attention}Blind{} is selected",
                    "create a {C:attention}copy{} of",
                    "{C:attention}Joker{} to the right",
                    "then {S:1.1,C:red,E:2}self destructs{}",
                    "{C:inactive}(removes Negative)"
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
            j_poke_kricketot = {
              name = "Kricketot",
              text = {
                "Earn {C:money}$#1#{} if played hand is",
                "exactly {C:attention}4{} cards and has",
                "at least {C:attention}4{} different {C:attention}suits{}",
                "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
              }
            },
            j_poke_kricketune = {
              name = "Kricketune",
              text = {
                "Earn {C:money}$#1#{} if played hand is",
                "exactly {C:attention}4{} cards and has",
                "at least {C:attention}4{} different {C:attention}suits{}",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:green}#2# in #3#{} chance to create",
                "a {C:tarot}Tarot{} card as well"
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
                "be made with {C:attention}exactly 3{} cards",
              }
            },
            j_poke_buneary = {
              name = "Buneary",
              text = {
                "{C:mult}+#1#{} Mult for",
                "each {C:attention}unscored{} card",
                "in played hand",
                "{C:inactive}(Evolves after {C:attention}#2#{C:inactive} rounds)",
              }
            },
            j_poke_lopunny = {
                name = "Lopunny",
                text = {
                  "{C:purple}+#3# Foresight",
                  "{C:mult}+#1#{} Mult for",
                  "each unscored card",
                  "in played hand",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{X:mult,C:white} X#2# {} Mult if an unscored",
                  "card has the {C:attention}same rank{}",
                  "as a {C:attention}Foreseen{} card"
                }
            },
            j_poke_mega_lopunny = {
                name = "Mega Lopunny",
                text = {
                  "{C:purple}+#1# Foresight",
                  "Gives {X:mult,C:white}X{} Mult",
                  "equal to the {C:attention}level",
                  "of {C:attention}Foreseen hand",
                  "{C:inactive}(Foreseen hand: {C:attention}#2#{C:inactive})",
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
                  "Each {X:dark,C:white}Dark{} Joker gives {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_poke_bonsly = {
                name = "Bonsly",
                text = {
                  "{C:attention}Baby{}, {X:mult,C:white}X#1#{} Mult",
                  "At end of round, add a random",
                  "{C:attention}Enhanced face{} card to your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Adds a {C:red}Red Seal{} or {C:blue}Blue Seal{}",
                    "to a random card in deck",
                    "at the end of the round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:tarot}The Magician{} at end of round",
                    "{C:green}#3# in #4#{} chance to create {C:attention}2{}",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                    "Creates a {C:dark_edition}Negative{C:item} Item",
                    "at the end of the round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_riolu = {
              name = "Riolu",
              text = {
                "{C:attention}Baby{}, {X:mult,C:white} X#1# {} Mult",
                "Creates a copy of {C:dark_edition}Aura{}",
                "at end of round",
                "{C:inactive}(Must have room)",
                "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
              }
            },
            j_poke_lucario = {
              name = "Lucario",
              text = {
                 "Each {C:attention}editioned{} card",
                 "held in hand",
                 "gives {X:mult,C:white} X#1# {} Mult",
              }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Baby{}, {X:mult,C:white}X#2#{} Mult",
                  "Creates a {C:dark_edition}Negative{} copy of",
                  "{C:item}The Devil{} at end of round",
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
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult){}",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Played {C:attention}Steel{} cards give {X:mult,C:white}X#1#{} Mult",
                    "plus {X:mult,C:white}X#2#{} Mult for each",
                    "{X:metal,C:white}Metal{} Joker you have",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult){}",
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
                    "Each played {C:attention}Stone{} card ",
                    "permanently gains {C:chips}+#1#{} Chips",
                    "and retrigger when scored",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}Stone{} cards retrigger an",
                    "additional time for every",
                    "{C:attention}3{} {X:earth,C:white}Earth{} Jokers you have",
                    "{C:inactive}(Currently #2# retriggers)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "{C:attention}Wild{} cards {C:attention}can't{} be debuffed",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Played {C:attention}Wild{} cards give",
                    "{C:mult}+#1#{} Mult, {C:chips}+#2#{} Chips, or {C:money}$#3#{}",
                    "{C:green}#4# in #5#{} chance for {C:attention}all three{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Gains {C:money}$#1#{} of {C:attention}sell value{} when a card",
                    "is {C:attention}sold{} and at end of round",
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
                    "Gains {X:mult,C:white}X#4#{} Mult when",
                    "you use a discard",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult, {X:mult,C:white}X#3#{C:inactive} Mult)",
                } 
            },
            j_poke_togekiss = {
                name = 'Togekiss',
                text = {
                    "Adds {C:attention}#6#{} to all {C:attention}listed{} {C:green,E:1,S:1.1}probabilities",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}Lucky{} cards have",
                    "a {C:green}#1# in #2#{} chance to give {C:chips}+#4#{} Chips",
                    "and a {C:green}#1# in #3#{} chance to give {X:mult,C:white}X#5#{} Mult",
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
                    "{C:attention}+#1#{} hand size",
                    "reduces by {C:red}#2#{}",
                    "every hand played",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Gain {C:attention}+#2#{} hand size",
                    "when a {C:attention}Lucky{} card",
                    "{C:green}successfully{} triggers",
                    "{C:inactive}(Max of {C:attention}+#3#{C:inactive} hand size){}"
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
                "{C:attention}Stone{} and {C:attention}Glass{} card in poker hand",
                "{br:2}text needs to be here to work",
                "{C:green}#3# in #4#{} chance for played {C:attention}Stone{}",
                "and {C:attention}Glass{} cards to earn {C:money}$#2#{} when scored",
              }
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Energy Limit",
                    "{X:mult,C:white} X#2# {} Mult per {C:pink}Energy{}",
                    "card used this run",
                    "{br:2}text needs to be here to work",
                    "Creates an {C:pink}Energy",
                    "when you use an {C:pink}Energy",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)"
                } 
            },
            j_poke_probopass = {
                name = 'Probopass',      
                text = {
                    "{C:attention}Stone{} cards are considered {C:attention}face{} cards",
                    "{br:2}ERROR - CONTACT STEAK",
                    "Played {C:attention}Stone{} cards",
                    "give {X:mult,C:white} X#1# {} Mult when scored"
                } 
            },
            j_poke_dusknoir = {
                name = "Dusknoir",
                text = {
                  "Retrigger all scored cards",
                  "in {C:attention}final hand{} of round",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:spectral}Spectral{} cards may",
                  "appear in the shop",
                  "{C:inactive,s:0.8}(Increases rate if they already appear){}"
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
            j_poke_rotom = {
                name = "Rotom",
                text = {
                  "{C:green}#1# in #2#{} chance to create",
                  "an {C:item}Item{} card when any",
                  "{C:attention}Booster Pack{} is opened",
                  "{C:inactive}(Must have room){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Booster Packs{} cost {C:money}$1{} less",
                  "{C:inactive}(Transforms when using a {C:attention}Machine{C:inactive}){}"
                }
            },
            j_poke_rotomh = {
                name = "Rotom (Heat)",
                text = {
                  "{C:green}#1# in #2#{} chance to create",
                  "an {C:item}Item{} card when any",
                  "{C:attention}Booster Pack{} is opened",
                  "{C:inactive}(Must have room){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "If first discard is",
                  "exactly {C:attention}2{} cards, {C:attention}Enhance",
                  "both to {C:attention}Mult{} cards",
                  "{C:inactive}(Transforms when using a {C:attention}Machine{C:inactive}){}"
                }
            },
            j_poke_rotomw = {
                name = "Rotom (Wash)",
                text = {
                  "{C:green}#1# in #2#{} chance to create",
                  "an {C:item}Item{} card when any",
                  "{C:attention}Booster Pack{} is opened",
                  "{C:inactive}(Must have room){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Earn {C:money}$#3#{} per scoring",
                  "{C:attention}Enhanced{} card played,",
                  "removes card {C:attention}Enhancement",
                  "{C:inactive}(Transforms when using a {C:attention}Machine{C:inactive}){}"
                }
            },
            j_poke_rotomf = {
              name = "Rotom (Frost)",
              text = {
                "{C:green}#1# in #2#{} chance to create",
                "an {C:item}Item{} card when any",
                "{C:attention}Booster Pack{} is opened",
                "{C:inactive}(Must have room){}",
                "{br:2}ERROR - CONTACT STEAK",
                "When {C:attention}Blind{} is selected, create",
                "a random {C:attention}Consumable{} with",
                "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or {C:dark_edition}Polychrome{}",
                "{C:inactive}(Transforms when using a {C:attention}Machine{C:inactive}){}"
              }
            },
            j_poke_rotomfan = {
                name = "Rotom (Fan)",
                text = {
                  "{C:green}#1# in #2#{} chance to create",
                  "an {C:item}Item{} card when any",
                  "{C:attention}Booster Pack{} is opened",
                  "{C:inactive}(Must have room){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected,",
                  "destroy Joker to the",
                  "right and create a {C:attention}Tag",
                  "{C:inactive}(Transforms when using a {C:attention}Machine{C:inactive}){}"
                }
            },
            j_poke_rotomm = {
                name = "Rotom (Mow)",
                text = {
                  "{C:green}#1# in #2#{} chance to create",
                  "an {C:item}Item{} card when any",
                  "{C:attention}Booster Pack{} is opened",
                  "{C:inactive}(Must have room){}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "{C:attention}Decrease{} rank of",
                  "first {C:attention}2{} cards {C:attention}held{} in",
                  "hand at end of round",
                  "{C:inactive}(Transforms when using a {C:attention}Machine{}){}"
                }
            },
            j_poke_shaymin = {
              name = "Shaymin",
              text = {
                "The rightmost scoring card",
                "of {C:attention}first hand{} of round",
                "becomes a {C:attention}Flower{} card",
                "{C:inactive,s:0.8}(Transforms after scoring {C:attention,s:0.8}#1#{C:inactive,s:0.8} Flower cards)"
              }
            },
            j_poke_shaymin_sky = {
              name = "Shaymin (Sky)",
              text = {
                "{C:attention}Flower{} cards are",
                "also {C:attention}Wild{} cards",
                "{C:inactive,s:0.8}(Transforms with a {C:attention,s:0.8}Death{C:inactive,s:0.8} card)"
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
                    "lowest base Chips in played hand",
                    "becomes a {C:attention}Bonus{} card",
                }
            },
            j_poke_roggenrola = {
                name = "Roggenrola",
                text = {
                    "{C:purple}+#1# Hazards",
                    "Each card with {C:attention}no rank{}",
                    "held in hand gives {C:mult}+#2#{} Mult",
                    "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#3#{C:inactive,s:0.8} times)",
                }
            },
            j_poke_boldore = {
                name = "Boldore",
                text = {
                    "{C:purple}+#1# Hazards",
                    "Each card with {C:attention}no rank{}",
                    "held in hand gives {C:mult}+#2#{} Mult",
                    "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_gigalith = {
                name = "Gigalith",
                text = {
                    "{C:purple}+#1# Hazards",
                    "Each card with {C:attention}no rank{}",
                    "held in hand gives {C:mult}+#2#{} Mult",
                    "and retriggers"
                }
            },
            j_poke_drilbur = {
                name = "Drilbur",
                text = {
                  "First played {C:attention}Stone{} card",
                  "each round is destroyed",
                  "and creates {C:money}Treasure{}",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#1#{C:inactive,s:0.8} times)"
                }
            },
            j_poke_excadrill = {
              name = "Excadrill",
              text = {
                "Played {C:attention}Stone{} cards are",
                "destroyed and create {C:money}Treasure{}",
                "{C:inactive}(Must have room)",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:mult}+#1#{} Mult for each card below",
                "{C:attention}#2#{} in your {C:attention}full deck",
                "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
              }
            },
            j_poke_trubbish = {
              name = "Trubbish",
              text = {
                "Gains {C:chips}+#2#{} Chips and earns",
                "{C:money}$#3#{} per {C:attention}discard{} if no",
                "discards are used by",
                "the end of the round",
                "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#4#{C:inactive,s:0.8} times)"
              }
            },
            j_poke_garbodor = {
                name = "Garbodor",
                text = {
                  "Gains {C:chips}+#2#{} Chips per {C:attention}discard",
                  "if no discards are used",
                  "by the end of the round",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Creates a {C:attention}Garbage Tag{} if",
                  "no discards are used",
                  "by the end of the ante",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
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
            j_poke_frillish = {
                name = "Frillish",
				text = {
                    "Gains {C:chips}+#2#{} Chips for each",
                    "discarded {C:attention}face{} card",
                    "{C:inactive}(Evolves at {C:chips}+#1#{C:inactive} / +#3# Chips)",
                } 
            },
            j_poke_jellicent = {
                name = "Jellicent",
                text = {
                  "Gains {C:chips}+#2#{} Chips for each",
                  "discarded {C:attention}face{} card",
                  "{br:3}ERROR - CONTACT STEAK",
                  "Gain {C:attention}doubled{} if it",
                  "is a {C:attention}King{} or {C:attention}Queen{}",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_ferroseed = {
                name = "Ferroseed",
                text = {
                  "{C:attention}Wild{} cards and {C:attention}Hazard{} cards",
                  "are also {C:attention}Steel{} cards",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#1#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_ferrothorn = {
              name = "Ferrothorn",
              text = {
                "{C:attention}Wild{} cards and {C:attention}Hazard{} cards",
                "are also {C:attention}Steel{} cards",
                "{br:2}ERROR - CONTACT STEAK",
                "If played hand contains",
                "a {C:attention}Flush{}, retrigger all",
                "{C:attention}Steel{} cards {C:attention}held in hand{}",
              }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "When {C:attention}Blind{} is selected, create a",
                    "{C:dark_edition}Negative{} {C:planet}Planet{} card of one of",
                    "your {C:attention}#1#{} highest level {C:attention}poker hands",
                    "{C:inactive,s:0.8}(Evolves when holding {C:planet,s:0.8}#2#{C:inactive,s:0.8}/#3# different planet cards){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "When {C:attention}Blind{} is selected, create a",
                    "{C:dark_edition}Negative{} {C:planet}Planet{} card of one of",
                    "your {C:attention}#1#{} highest level {C:attention}poker hands",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "After opening {C:attention}#2# Boosters{}, create a",
                    "{C:attention}Telescope{} or {C:attention}Observatory{} if able"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:mult}+#4#{} Mult",
                    "{C:attention}Tripled{} if this Joker has",
                    "{C:money}$#5#{} or more sell value",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "{C:attention}Drain {C:money}$#1#{} from adjacent",
                    "Jokers at end of round",
                    "{C:inactive,s:0.8}(Evolves at {C:money,s:0.8}$#3#{C:inactive,s:0.8} / $#2# Sell Value)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
                "Adds this Joker's sell value to Mult",
                "{br:3.5}ERROR - CONTACT STEAK",
                "{C:attention}Drain {C:money}$#1#{} from all other",
                "Jokers at end of round",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
                    "Adds this Joker's sell value to Mult",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "Each Joker with {C:money}$1{} sell",
                    "value gives {X:mult,C:white} X#1# {} Mult",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
                }
            },
            j_poke_golett = {
                name = "Golett",
                text = {
                  "{C:purple}+#1# Hazards",
                  "{C:green}#4# in #5#{} chance for cards held",
                  "in hand to give {X:mult,C:white}X#2#{} Mult",
                  "Guaranteed for {C:attention}Hazard{} cards",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#3#{C:inactive,s:0.8} rounds)"
                }
            },
            j_poke_golurk = {
                name = "Golurk",
                text = {
                  "{C:purple}+#1# Hazards",
                  "{C:green}#3# in #4#{} chance for cards held",
                  "in hand to give {X:mult,C:white}X#2#{} Mult", 
                  "Guaranteed for {C:attention}Hazard{} cards",
                }
            },
            j_poke_pawniard = {
                name = "Pawniard",
                text = {
                  "Gains {X:red,C:white}X#2#{} Mult when a",
                  "{C:attention}face{} card is destroyed",
                  "{C:inactive}(Evolves at {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X#3#{C:inactive} Mult)",
                }
            },
            j_poke_bisharp = {
              name = "Bisharp",
              text = {
                "Gains {X:red,C:white}X#2#{} Mult when a",
                "{C:attention}face{} card is destroyed",
                "{br:2}ERROR - CONTACT STEAK",
                "If first played hand is a",
                "single {C:attention}face{} card, destroy it",
                "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                "{C:inactive,s:0.8}(Evolves after destroying {C:attention,s:0.8}#3#{C:inactive,s:0.8} Kings)",
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
                  "Gains {X:mult,C:white} X#2# {} Mult when a",
                  "{C:attention}playing card{} is destroyed",
                  "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult){}"
                }
            },
            j_poke_deino = {
                name = "Deino",
                text = {
                  "{X:mult,C:white} X#1# {} Mult if played hand",
                  "is a {C:attention}Three of a Kind{}",
                  "{C:inactive,s:0.8}(Evolves after triggering {C:attention,s:0.8}#2#{C:inactive,s:0.8} times){}"
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
                    "If {C:attention}first hand{} is",
                    "exactly {C:attention}1{} unenhanced card,",
                    "add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "or {C:dark_edition}Polychrome{} to it",
                } 
            },
            j_poke_pumpkaboo_small = {
                name = 'Pumpkaboo (Small)',
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_average = {
                name = 'Pumpkaboo (Average)',
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_large = {
                name = 'Pumpkaboo (Large)',
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_pumpkaboo_super = {
                name = 'Pumpkaboo (Super)',
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Linking Cord{C:inactive,s:0.8})"
                }
            },
            j_poke_gourgeist_small = {
                name = "Gourgeist (Small)",
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Earn {C:money}$#3#{} when a {C:spectral}Spectral{} card",
                  "is used and apply a {X:psychic,C:white}Psychic{}",
                  "sticker to leftmost {C:attention}Joker"
                }
            },
            j_poke_gourgeist_average = {
                name = "Gourgeist (Average)",
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Earn {C:money}$#3#{} when a {C:spectral}Spectral{} card",
                  "is used and apply a {X:psychic,C:white}Psychic{}",
                  "sticker to leftmost {C:attention}Joker"
                }
            },
            j_poke_gourgeist_large = {
                name = "Gourgeist (Large)",
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Earn {C:money}$#3#{} when a {C:spectral}Spectral{} card",
                  "is used and apply a {X:psychic,C:white}Psychic{}",
                  "sticker to leftmost {C:attention}Joker"
                }
            },
            j_poke_gourgeist_super = {
                name = "Gourgeist (Super)",
                text = {
                  "After discarding {C:attention}#1#{} {C:inactive}[#2#]{} {C:attention}Jacks,",
                  "create a {C:spectral}Spectral{} card",
                  "{C:inactive}(Must have room)",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Earn {C:money}$#3#{} when a {C:spectral}Spectral{} card",
                  "is used and apply a {X:psychic,C:white}Psychic{}",
                  "sticker to leftmost {C:attention}Joker"
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
                    "{X:mult,C:white} X#1# {} Mult for each other",
                    "{X:lightning, C:black}Lightning{} Joker you have",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)",
                }
            },
            j_poke_rockruff = {
              name = "Rockruff",
              text = {
                "Each played {C:attention}non-face{} card",
                "gives {C:mult}+#1#{} Mult when scored",
                "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#2#{C:inactive,s:0.8} Even cards)",
                "{C:inactive,s:0.8}(Evolves after scoring {C:attention,s:0.8}#3#{C:inactive,s:0.8} Odd cards)"
              }
            },
            j_poke_lycanroc_day = {
              name = "Lycanroc (Midday)",
              text = {
                "Each played card with {C:attention}even{} rank",
                "gives {C:mult}+#1#{} Mult when scored",
                "{br:3}ERROR - CONTACT STEAK",
                "If first played hand has",
                "exactly {C:attention}1{} card it gives", 
                "{C:chips}+#2#{} Chips and {C:blue}+1{} hand this",
                "round when scored"
              }
            },
            j_poke_lycanroc_night= {
              name = "Lycanroc (Midnight)",
              text = {
                "Each played card with {C:attention}odd{} rank",
                "gives {C:mult}+#1#{} Mult when scored",
                "{br:3}ERROR - CONTACT STEAK",
                "When {C:attention}Boss Blind{} is selected",
                "gain {C:chips}+#2#{} hand, {C:mult}+#3#{} discard", 
                "and {C:attention}+#2#{} hand size this round",
              }
            },
            j_poke_lycanroc_dusk = {
              name = "Lycanroc (Dusk)",
              text = {
                "Each played {C:attention}non-face{} card",
                "gives {C:mult}+#1#{} Mult when scored",
                "{br:3}ERROR - CONTACT STEAK",
                "Retrigger the {C:attention}first{} scoring",
                "card with {C:attention}even{} rank and",
                "the {C:attention}first{} scoring card with",
                "{C:attention}odd{} rank once per round"
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
            j_poke_nickit = {
                name = "Nickit",
                text = {
                    "Earn {C:money}$#1#{} at",
                    "end of round",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)"
                } 
            },
            j_poke_thievul = {
                name = "Thievul",
                text = {
                    "Earn {C:money}${} at end of round",
                    "equal to {C:attention}double{} the sell value", 
                    "of the leftmost {C:attention}Joker{}",
                    "{C:inactive,s:0.8}(Except itself)",
                    "{C:inactive}(Currently {C:money}$#1#{C:inactive}, Max of {C:money}$15{C:inactive})",
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
                    "{X:mult,C:white}X#1#{} Mult and earn {C:money}$#2#{}",
                    "if played hand contains",
                    "a {C:attention}Straight{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "When sold, adds {C:money}$#1#{} of sell value",
                  "to every {C:attention}Joker{} card and {C:attention}converts{}",
                  "all cards held in hand to {C:spades}#2#{}",
                  "{C:inactive,s:0.8}(Evolves when a straight flush is played)",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:mult,C:white} X#4# {} Mult for every {C:money}${} of",
                  "sell value of all owned {C:attention}Jokers{}",
                  "{br:4}ERROR - CONTACT STEAK",
                  "If played hand is a {C:attention}Straight Flush{}",
                  "adds {C:money}$#1#{} of sell value to every Joker card",
                  "{C:inactive}(Currently {X:mult,C:white} X#5# {C:inactive} Mult){}",
                  "{C:inactive,s:0.8}(Evolves at {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3# total sell value of Jokers)",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:mult,C:white} X#2# {} Mult for every {C:money}${} of",
                  "sell value of all owned {C:attention}Jokers{}",
                  "{br:4}ERROR - CONTACT STEAK",
                  "If played hand is a {C:attention}Straight Flush{}",
                  "and you have no {C:attention}Dreepy Darts{}",
                  "create {C:attention}2 Dreepy Darts{} with {C:dark_edition}Negative{}",
                  "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Dreepy Dart",
                text = {
                    "When sold, adds {C:money}$#1#{} of sell value",
                    "to every {C:attention}Joker{} card and {C:attention}converts{}",
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
            j_poke_wyrdeer = {
                name = "Wyrdeer",
                text = {
                    "{C:purple}+#1# Foresight",
                    "Adds {C:attention}double{} the rank of {C:attention}highest{}",
                    "ranked {C:attention}Foreseen{} card to Mult",
                    "{br:3}ERROR - CONTACT STEAK",
                    "Gain {C:purple}+#2# Foresight{} when hand is played",
                    "{C:inactive,s:0.8}(Resets at end of round)",
                    
                }
            },
            j_poke_kleavor = {
                name = 'Kleavor',      
                text = {
                    "When {C:attention}Blind{} is selected, destroy",
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
                    "{C:purple}+#1# Hazards{}, {C:attention}+#3#{} hand size",
                    "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_spidops = {
                name = "Spidops",
                text = {
                    "{C:purple}+#1# Hazards, {C:attention}+#2#{} hand size",
                    "If first played hand is",
                    "all {C:attention}Hazard{} cards, gain",
                    "{C:attention}+#2#{} hand size this round for",
                    "each card in that hand"
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Gains {C:chips}+#2#{} Chips if poker hand contains a {C:attention}#3#{}",
                  "Required {C:attention}rank{} rises with each trigger",
                  "{C:inactive,s:0.8}(If rank is highest, it becomes lowest)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                  "{C:inactive,s:0.8}(Evolves when you have a {X:fire,C:white,s:0.8}Fire{C:inactive,s:0.8} Joker)",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Gains {C:chips}+#2#{} Chips if poker hand contains a {C:attention}#3#{}",
                  "Required {C:attention}rank{} rises with each trigger",
                  "{br:4}ERROR - CONTACT STEAK",
                  "Increase Chip gain by {C:chips}+2{} for each",
                  "{X:fire,C:white}Fire{} Joker you have",
                  "{C:inactive,s:0.8}(If rank is highest, it becomes lowest)",
                  "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_poke_charcadet = {
              name = "Charcadet",
              text = {
                "Gains {C:mult}+#2#{} Mult after scoring",
                "played hand",
                "{C:inactive,s:0.8}(Resets at end of round)",
                "{C:inactive,s:0.8}(Evolves with a {C:attention,s:0.8}Dawn Stone{C:inactive,s:0.8} or {C:attention,s:0.8}Dusk Stone{C:inactive,s:0.8})",
                "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
              }
            },
            j_poke_armarouge = {
              name = "Armarouge",
              text = {
                "{X:mult,C:white} X#1# {} Mult",
                "Loses {X:mult,C:white} X#2# {} Mult after scoring",
                "played hand",
                "{C:inactive,s:0.8}(Resets at end of round)",
              }
            },
            j_poke_ceruledge = {
              name = "Ceruledge",
              text = {
                "Gains {X:mult,C:white} X#2# {} Mult after scoring",
                "played hand and drains {C:money}$#3#{}",
                "from another random Joker",
                "{C:inactive,s:0.8}(Resets at end of round)",
                "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)",
              }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} {C:attention}non-Steel{} cards in your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} {C:attention}non-Steel{} cards in your deck",
                  "{C:inactive,s:0.8}(Evolves after {C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Played cards give {C:mult}+#1#{} Mult",
                  "{br:3}ERROR - CONTACT STEAK",
                  "When {C:attention}Blind{} is selected, debuff",
                  "{C:attention}#3#{} {C:attention}non-Steel{} cards in your deck",
                  "{br:4}ERROR - CONTACT STEAK",
                  "{C:attention}Steel{} cards are also {C:attention}Glass{} cards"
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
                    "{X:mult,C:white} X#1# {} Mult if played hand",
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
            j_poke_kingambit = {
                name = "Kingambit",
                text = {
                  "{X:red,C:white}X#1#{} Mult",
                  "If played hand has the only",
                  "{C:attention}King{} in your {C:attention}full deck{}, each",
                  "played {C:attention}non-face{} card gives half",
                  "this Joker's {X:mult,C:white}X{} Mult when scored",
                }
            },
            j_poke_farigiraf = {
              name = "Farigiraf",
              text = {
                "{C:attention}Holding{} {C:spectral}Cryptid{}",
                "First and last {C:attention}face{} cards",
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
                  "this Joker's {X:mult,C:white}X{} Mult by {X:mult,C:white}X#3#",
                  "{br:3}ERROR - CONTACT STEAK",
                  "This Joker can't be debuffed",
                  "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
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
                    "{C:attention}Pokemon{} from the same", 
                    "evolutionary line may appear",
                } 
            },
            j_poke_rotomdex = {
                name = 'Rotom Dex',
                text = {
                    "{C:attention}Booster Packs{} cost {C:money}$1{} less",
                    "for each different {C:pink}Type",
                    "among your Jokers",
                    "{C:inactive}(Currently {C:money}$#1#{C:inactive} less)"
                } 
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokemon {C:attention}can't{} evolve or transform",
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
                  "Create a {X:colorless,C:white}Colorless{C:pink} Energy",
                  "when {C:attention}Blind{} is selected",
                  "{C:inactive}({C:attention}#1#{C:inactive} rounds remaining){}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "Ruins of Alph",
                text = {
                  "When {C:attention}Blind{} is selected,",
                  "create {C:attention}3{} {C:dark_edition}Negative{} {C:attention}Unown",
                  "{br:2}ERROR - CONTACT STEAK",
                  "After an {C:attention}Unown{} triggers",
                  "merge it and gain {C:mult}+#1#{} Mult",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Sell this for a {C:attention}reward{}", 
                  "based on Unown {C:attention}merged",
                  "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult and {C:attention}#2#{C:inactive} Unown)",
                }
            },
            j_poke_unown_swarm = {
                name = "Unown Swarm",
                text = {
                  "Each {C:purple}Legendary{} Joker gives",
                  "{C:mult}+#1#{} Mult and {X:mult,C:white}X#2#{} Mult"
                }
            },
            j_poke_treasure_eatery = {
                name = "Treasure Eatery",
                text = {
                  "{C:attention}Type Changer{}",
                  "{br:2}ERROR - CONTACT STEAK",
                  "Convert the leftmost Joker's {C:pink}Type{}",
                  "into the rightmost Joker's {C:pink}Type{}",
                  "when {C:attention}Blind{} is selected",
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
            j_poke_professor = {
                name = "Professor",
                text = {
                    "After {C:attention}#1#{} rounds, sell this card",
                    "to create a {C:attention}Starter Tag",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#){}"
                }
            },
            j_poke_mystery_egg = {
                name = "Mystery Egg",
                text = {
                  "Transforms into a {C:attention}Basic{} or",
                  "{C:attention}Baby{} Joker after {C:attention}#1#{} rounds",
                  "that is {C:pink}Energized{} if applicable"
                }
            },
            j_poke_billion_lions = {
                name = 'A Billion Lions',
                text = {
                    "When {C:attention}Blind{} is selected",
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
                name = "Trainer Sleeve",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
                    "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
                },
            },
            sleeve_poke_pokemonsleeve_alt = {
                name = "Trainer Sleeve",
                text = {
                    "Start run with a {C:tarot,T:c_poke_greatball}#3#{} card",
                    "instead of a {C:tarot,T:c_poke_pokeball}#2#{} card",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Obituary Sleeve",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_obituarysleeve_alt = {
                name = "Obituary Sleeve",
                text = {
                    "{C:pink}Pink Seals{} have a {C:green}#1# in #2#{} chance to",
                    "be removed after triggering",
                    "Jokers create a {C:dark_edition}Negative {C:pink}Energy{} of",
                    "their type when sold or destroyed",
                },
            },
            sleeve_poke_revenantsleeve = {
                name = "Revenant Sleeve",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                },
            },
			sleeve_poke_revenantsleeve_alt = {
              name = "Revenant Sleeve",
              text = {
                  "{C:blue}+#1#{} consumable slots",
                  "{C:pink}Pocket Packs{} will not",
                  "appear in the shop",
              },
            },
            sleeve_poke_luminoussleeve = {
                name = "Luminous Sleeve",
                text = {
                    "All Jokers are created",
                    "with random {C:pink}Type{} stickers",
                    "and are {C:pink}Energized{} once",
                },
            },
            sleeve_poke_luminoussleeve_alt = {
                name = "Luminous Sleeve",
                text = {
                    "Rerolls have a {C:green}#1# in #2#{} chance",
                    "to spawn a {C:item}Tera Orb",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Telekinetic Sleeve",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_crystal_ball}#1#{} voucher",
                    "and {C:attention}2{} copies",
                    "of {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
			sleeve_poke_telekineticsleeve_alt = {
                name = "Telekinetic Sleeve",
                text = {
                    "{C:item,T:c_poke_twisted_spoon}#2#s{} in your",
                    "{C:attention}consumable{} area give",
                    "{C:blue}+1{} consumable slot",
                }
            },
            sleeve_poke_ampedsleeve = {
                name = "Amped Sleeve",
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_poke_energysearch}#1#{} voucher",
                    "and a copy of",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
            sleeve_poke_ampedsleeve_alt = {
                name = "Amped Sleeve",
                text = {
                    "Start run with a {C:dark_edition}Negative {C:attention,T:j_poke_jelly_donut}#1#",
                    "instead of a {C:pink,T:c_poke_double_rainbow_energy}#2#",
                    "{C:pink,T:c_poke_colorless_energy}#3#{} is no longer half as",
                    "effective on non-Colorless Jokers",
                } 
            },
            sleeve_poke_futuresleeve = {
                name = "Future Sleeve",
                text = {
                    "{C:purple}+#1# Foresight{}",
                } 
            },
            sleeve_poke_futuresleeve_alt = {
                name = "Future Sleeve",
                text = {
                  "Gain {C:purple}+#2# Foresight{} when hand is played",
                  "{C:inactive,s:0.8}(Resets at end of round)",
                } 
            },
            sleeve_poke_stadiumsleeve = {
                name = "Stadium Sleeve",
                text = {
                    "Deck starts with a {C:attention}Bonus, Mult,",
                    "{C:attention}Wild, Glass, Steel, Stone,",
                    "{C:attention}Gold,{} and {C:attention}Lucky{} card"
                } 
            },
            sleeve_poke_stadiumsleeve_alt = {
                name = "Stadium Sleeve",
                text = {
                    "After defeating each",
                    "{C:attention}Boss Blind{}, create a random",
                    "{C:dark_edition}Negative{} {C:attention}Enhancement{} {C:tarot}Tarot{} card"
                } 
            },
            sleeve_poke_megasleeve = {
                name = "Mega Sleeve",
                text = {
                    "Start the run with the",
                    "{C:tarot,T:v_reroll_surplus}#2#{}, {C:tarot,T:v_reroll_glut}#3#{}",
                    "and {C:tarot,T:v_crystal_ball}#5#{} vouchers",
                    "and a {C:spectral,T:c_poke_megastone}#1#{} card",
                    "{C:red}-#4#{} shop slot"
                } 
            },
            sleeve_poke_megasleeve_alt = {
                name = "Mega Sleeve",
                text = {
                    "{C:attention}Mega Evolution{} is no longer",
                    "restricted to 1 Joker per",
                    "{C:spectral,T:c_poke_megastone}#1#{} you have",
                } 
            },
            sleeve_poke_vendingsleeve = {
                name = "Vending Sleeve",
                text = {
                    "After defeating each",
                    "{C:attention}Odd Boss Blind{}, gain a",
                    "{C:attention,T:tag_vremade_double}#1#",
                } 
            },
            sleeve_poke_vendingsleeve_alt = {
                name = "Vending Sleeve",
                text = {
                    "Gain a {C:attention,T:tag_vremade_double}#1#",
                    "after defeating every",
                    "{C:attention}Boss Blind{} instead"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultra Ball",
                text = {
                    "Creates a",
                    "{C:attention}Stage 2 Joker{} card",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_masterball = {
                name = "Master Ball",
                text = {
                    "Creates a",
                    "{C:legendary,E:1}Legendary{C:attention} Pokemon {}Joker",
                    "{C:inactive}(Must have room)"
                },
            },
            c_poke_transformation = {
                name = "Transformation",
                text = {
                    "Evolves leftmost or selected Pokemon to",
                    "the highest {C:attention}stage{} and {C:pink}Energizes{} it", 
                },
            },
            c_poke_megastone = {
                name = "Mega Stone",
                text = {
                    "{C:attention}Reusable{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:attention}Mega Evolves{} a Pokemon", 
                    "or {C:attention}devolves{} a Mega",
                    "{C:attention}Devolves{} Mega if sold",
                    "{C:inactive}(Useable once per round)",
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
                    "Destroys leftmost or selected",
                    "Joker and creates {C:attention}2{} {C:dark_edition}Negative{}",
                    "{C:pink}Energy{} of that Joker's {C:pink}type{}",
                    "{C:inactive}(Typeless jokers give {X:colorless,C:white}Colorless{C:inactive})"
                },
            },
            c_poke_revenant = {
                name = "Revenant",
                text = {
                    "Adds a {C:item}Silver{} seal",
                    "to {C:attention}1{} selected card",
                }
            },
            c_poke_double_rainbow_energy = {
                name = "Double Rainbow Energy",
                text = {
                    "{C:pink}Energize{} leftmost or selected",
                    "Joker of any {C:pink}Type{} {C:red}t{C:attention}w{C:green}i{C:blue}c{C:purple}e{}",
                    "Earn no interest this round",
                    "{C:inactive}(Max of {C:attention}#1#{C:inactive} increases per Joker)",
                },
            },
            c_poke_fake_banker = {
                name = 'Money Wish',
                text = {
                    "{C:dark_edition}Wish for Money!",
                }
            },
            c_poke_fake_booster = {
                name = 'Booster Wish',
                text = {
                    "{C:dark_edition}Wish for Options!",
                }
            },
            c_poke_fake_power = {
                name = 'Power Wish',
                text = {
                    "{C:dark_edition}Wish for Power!",
                }
            },
            c_poke_fake_negging = {
                name = 'Negative Wish',
                text = {
                    "{C:dark_edition}Wish for Friends!",
                }
            },
            c_poke_fake_copy = {
                name = 'Copy Wish',
                text = {
                    "{C:dark_edition}Wish for a Helping Hand!",
                }
            },
            c_poke_fake_fixer = {
                name = 'Purify Wish',
                text = {
                    "{C:dark_edition}Wish for a better Deck!",
                }
            },
            c_poke_fake_masterball = {
                name = 'Summon Wish',
                text = {
                    "{C:dark_edition}Wish to summon a Legendary Pokermon!",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Pocket Tag",
                text = {
                    "Gives a free {C:pink}Mega Pocket Pack",
                    "{C:green}#1#%{} chance pack contains",
                    "a {C:attention}Mega Stone{} on {C:attention}Ante 5+{}",
                    "{C:inactive,s:0.8}(Odds can't be increased){}",
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
            tag_poke_stage_one_tag = {
                name = "Stage 1 Tag",
                text = {
                    "Shop has a free",
                    "{C:attention}Stage 1{} Joker",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Safari Tag",
                text = {
                    "Shop has a free",
                    "{C:safari}Safari{} Joker",
                }, 
            },
            tag_poke_starter_tag = {
                name = "Starter Tag",
                text = {
                    "Gives a free {C:attention}Starter Pack",
                }, 
            },
        },
        Tarot = {
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
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Energy Search",
                text = {
                    "{C:pink}+2{} Energy Limit"
                },
            },
            v_poke_energyresearch = {
                name = "Energy Research",
                text = {
                    "{C:pink}+3{} Energy Limit"
                },
            },
            v_poke_goodrod = {
                name = "Good Rod",
                text = {
                    "{C:attention}Booster{} packs have",
                    "{C:attention}1{} more card in them",
                },
            },
            v_poke_superrod = {
                name = "Super Rod",
                text = {
                    "You can {C:pink}Save{} cards",
                    "from all {C:attention}consumable{} packs",
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
            --Have you Heard? Bird is the wordddd
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
                    "in {C:attention}poker hand",
                    "{C:inactive}(Effects are {C:attention}cumulative{C:inactive})"
                }
            },
            energize = {
                name = "Energize",
                text = {
                  "Permanently increases the",
                  "{C:mult}Mult{}, {C:chips}Chips{}, {C:money}${} and {X:mult,C:white}X{} Mult",
                  "values of a Joker"
                }
            },
            eitem = {
                name = "Evolution Card",
                text = {
                    "When consumed, evolves",
                    "leftmost or selected",
                    "{C:attention}eligible{} Joker at",
                    "end of next round",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Held Card",
                text = {
                    "Used by {C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "Type Changer",
                text = {
                    "Applies a {V:1}#1#{} sticker",
                    "to leftmost or selected Joker"
                }
            },
            typechangerother = {
                name = "Type Changer",
                text = {
                    "Applies a {V:1}#1#{} sticker",
                }
            },
            typechangerpoke = {
                name = "Type Changer",
                text = {
                    "Applies a {V:1}#1#{} sticker",
                    "to itself on creation"
                }
            },
            basic = {
                name = "Basic",
                text = {
                    "A Pokemon Joker",
                    "that hasn't {C:attention}Evolved{}",
                    "{C:inactive,s:0.8}(Ignoring {C:attention,s:0.8}Baby{C:inactive,s:0.8} and {C:purple,s:0.8}Legendary{C:inactive,s:0.8} Pokemon)"
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
            money_chance = {
                name = "Money Chance",
                text = {
                    "{C:attention}#1#%{} chance of",
                    "earning an additional {C:money}$1{}"
                }
            },
            mult_progress = {
                name = "Mult Gain Progress",
                text = {
                    "{C:attention}#1#%{} progress",
                    "towards {C:mult}Mult{} Gain",
                    "increasing by {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Chip Gain Progress",
                text = {
                    "{C:attention}#1#%{} progress",
                    "towards {C:chips}Chip{} Gain",
                    "increasing by {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Money Gain Progress",
                text = {
                    "{C:attention}#1#%{} progress",
                    "towards {C:money}${} Gain",
                    "increasing by {C:money}1${}"
                }
            },
            availability = {
                name = "Availability",
                text = {
                    "Not available if",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Baby",
                text = {
                    "When hand is played",
                    "if there are any {C:attention}non-Baby{}",
                    "Jokers to the right of this",
                    "Joker, {C:attention}debuff{} this Joker"
                }
            },
            nature = {
                name = "Nature",
                text = {
                    "A unique {C:attention}#1#{} or set of {C:attention}#1#s{}",
                    "that trigger this Joker",
                    "Set once upon Joker creation",
                }
            },
            merge = {
                name = "Merge",
                text = {
                  "Removes card and adds it",
                  "to this Joker",
                  "Right click to view",
                  "merged cards",
                  "{C:inactive}(Merged Jokers can't be copied){}"
                }
            },
            rewards_ruins_of_alph = {
                name = "Rewards",
                text = {
                  "{C:attention}#1#{} - {C:attention}Safari{} Joker",
                  "{C:attention}#2#{} - {C:attention}Duplicate{} a random Joker",
                  "{C:attention}#3#{} - {C:attention}Brainstorm{}",
                  "{C:attention}#4#{} - {C:attention}Unown Swarm and The Soul",
                  "{C:inactive}(Rewards are not cumulative){}"
                }
            },
            scry_cards = {
                name = "Foresight",
                text = {
                    "View top cards",
                    "of your deck"
                }
            },
            mega_rule = {
                name = "Restriction",
                text = {
                    "Only 1 Joker can",
                    "{C:attention}Mega Evolve{} per",
                    "{C:attention}Mega Stone{} you have"
                }
            },
            mega_poke = {
                name = "Mega Evolution",
                text = {
                    "Can {C:attention}Mega Evolve{}",
                    "with a {C:attention}Mega Stone{}"
                }
            },
            mega_used_on = {
                name = "Used On",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "XY Mega",
                text = {
                  "{C:attention}Mega Evolves{} based on position",
                  "Leftmost - {C:attention}#1#{}",
                  "Rightmost - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "Requirement",
                text = {
                    "Must use on",
                    "{C:attention}playing card{} in",
                    "order to evolve"
                }
            },
            deli_gift = {
                name = "Presents",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}Item{} {C:attention}Card",
                    "{C:green}20%{} - {C:attention}Coupon Tag",
                    "{C:green}15%{} - {C:dark_edition}Polychrome{} {C:attention}Gift Card",
                }
            },
            dril_treasure = {
                name = "Treasure",
                text = {
                    "{C:green}30%{} - {C:attention}Evolution {C:item}Stone   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}2 Evolution {C:item}Stones",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}5%{} - {C:money}$20{}             ",
                }
            },
            exdril_treasure = {
                name = "Treasure",
                text = {
                    "{C:green}30%{} - {C:attention}Evolution {C:item}Stone   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}2 Evolution {C:item}Stones",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}4%{} - {C:money}$20{}             ",
                    "{C:green}1%{} - {C:attention}Mega Stone     ",
                }
            },
            pickup = {
              name = "Pickup",
              text = {
                "{C:green}34%{} - {C:item}Item{}",
                "{C:green}25%{} - {C:item}Evolution Item",
                "{C:green}20%{} - {C:item}Leftovers",
                "{C:green}20%{} - {C:item}Twisted Spoon",
                "{C:green}1%{} - {C:spectral}Transformation",
              }
            },
            poke_artist = {
              name = "Artist",
              text = {
                "{V:1}#1#"
              }
            },
            pokeballs_group = {
              name = "Pokeballs",
              text = {
                "Creates a random Joker",
                "with a certain quality",
              }
            },
            holding = {
                name = "Holding",
                text = {
                  "This Joker comes with",
                  "a {C:attention}#1#{} card",
                  "{C:inactive}(Must have room){}"
                }
            },
            holding_an = {
                name = "Holding",
                text = {
                  "This Joker comes with",
                  "an {C:attention}#1#{} card",
                  "{C:inactive}(Must have room){}"
                }
            },
            eeveelution = {
                name = "Evolutions",
                text = {
                    "{C:attention}Water Stone{} - {X:water,C:white}Vaporeon{}",
                    "{C:attention}Thunder Stone{} - {X:lightning,C:black}Jolteon{}",
                    "{C:attention}Fire Stone{} - {X:fire,C:white}Flareon{}",
                    "{C:attention}Sun Stone{} - {X:psychic,C:white}Espeon{}",
                    "{C:attention}Moon Stone{} - {X:dark,C:white}Umbreon{}",
                    "{C:attention}Leaf Stone{} - {X:grass,C:white}Leafeon{}",
                    "{C:attention}Ice Stone{} - {X:water,C:white}Glaceon{}",
                    "{C:attention}Shiny Stone{} - {X:fairy,C:white}Sylveon{}"
                }
            },
            poke_egg_tip = {
              name = "Mystery Egg",
              text = {
                "It looks cold and lonely."
              }
            },
            poke_top_cards = {
              name = "Top Cards",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "Drain",
              text = {
                "Remove sell value from",
                "a Joker and add it to self",
                "if Joker has greater than",
                "{C:money}$1{} sell value"
              }
            },
            poke_drain_item = {
              name = "Drain",
              text = {
                "Remove sell value from",
                "a Joker if Joker has",
                "greater than {C:money}$1{} sell value",
              }
            },
            poke_volatile_left = {
              name = "Volatile Left",
              text = {
                "The following ability only triggers",
                "when this is the leftmost Joker",
                "{C:inactive}(Ignoring {C:attention}Volatile{C:inactive} Pokemon)"
              }
            },
            poke_volatile_right = {
              name = "Volatile Right",
              text = {
                "The following ability only triggers",
                "when this is the rightmost Joker",
                "{C:inactive}(Ignoring {C:attention}Volatile{C:inactive} Pokemon)"
              }
            },
            sketch = {
              name = "Sketch",
              text = {
                "Copies Joker until it is sold,",
                "destroyed or you copy another ability",
                "Copy appears as a tooltip",
                "and in Pokedex menu",
                "Sketch resets when Joker is copied"
              }
            },
            unlimited_energy_tooltip = {
              name = "Unlimited Energy",
              text = {
                "Jokers can have {C:pink}Energy{} used",
                "on them any number of times"
              }
            },
            precise_energy_tooltip = {
                name = "Precise Energy Scaling",
                text = {
                    "{s:0.8}Use {C:attention,s:0.8}decimals{} for all values when applying {C:pink,s:0.8}Energy{}{s:0.8} bonus{}",
                    "{s:0.8}With this option {C:attention,s:0.8}off{}{s:0.8} the following will occur for the bonus:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - Uses Decimals",
                    "{C:attenion}2. {s:0.8}Flat {C:mult,s:0.8}Mult{}{s:0.8} and {C:chips,s:0.8}Chips{}{s:0.8} - Rounds up to nearest whole number",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Mult Gain{}{s:0.8} and {C:chips,s:0.8}Chips Gain{}{s:0.8} - Decimal component displayed", 
                    "{s:0.8}as a percentage, used to apply bonus to base {C:mult,s:0.8}Mult{}{s:0.8} and {C:chips,s:0.8}Chips{}",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Decimal component displayed as a percentage,",
                    "{s:0.8}used as chance for extra {C:money,s:0.8}${}{s:0.8} to be gained{}",
                    "{C:inactive,s:0.8}(Non-Pokemon Jokers will always use precise scaling){}"
                }
            },
            discovery_tooltip = {
              name = "Discovery",
              text = {
                "Pokermon mod objects are undiscovered",
                "by default. Turning off this config option",
                "will discover all mod objects",
                "{C:red}Discovering all objects can't be undone{}"
              }
            }, 
            pokemononly_tooltip = {
              name = "Pokemon Only",
              text = {
                "Only {C:attention}Pokemon{} Jokers will appear",
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
			order_jokers_tooltip = {
              name = "Order Jokers by Dex No.",
              text = {
                "Pokemon Jokers appear",
                "in the collection in",
                "Pokedex order",
              }
            },
            pokemon_only_collection_tooltip = {
              name = "Only Pokemon In Collection",
              text = {
                "Only Pokemon Jokers",
                "will appear in",
                "the collection",
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
                    "Creates an {C:pink}Energy{} card",
                    "matching an owned Joker's {C:attention}type",
                    "if it scores in",
                    "{C:attention}first hand{} of round",
                    "{C:inactive}(Must have room){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Silver Seal",
                text = {
                  "Creates an {C:item}Item{} card",
                  "and is {C:attention}discarded{} if {C:attention}held{}",
                  "in hand when cards are scored"
                }
            },
            --[[
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
            --]]
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
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Jumbo Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Mega Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Jumbo Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Mega Pocket Pack",
                text = {
                    "Choose {C:attention}#1#{} from among",
                    "{C:attention}#2#{} {C:item}Item{} Cards and",
                    "{C:attention}#3#{} {C:pink}Energy{} Card",
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "Wish Pack",
                text = {
                    "{C:dark_edition}Make a Wish!{}",
                },
            },
            p_poke_pokepack_starter_pack = {
                name = "Starter Pack",
                text = {
                    "Choose {C:attention}#1# Starter Pokemon{}",
                    "from among {C:attention}#2#{} Cards"
                },
            },
            poke_hazards = {
                name = "Hazards",
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "{C:attention}#1#{} unenhanced cards in deck",
                    "become {C:attention}Hazard Cards{}",
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
            c_poke_goodasgold = "Good As Gold",
            c_poke_parenthood = "Parenthood",
            c_poke_littlecup = "Little Cup",
            c_poke_hammertime = "Hammertime",
            c_poke_lonesome = "Lonesome",
            c_poke_randomizer = "Randomizer"
        },
        dictionary = {
            k_energy = "Energy",
            k_item = "Item",
            k_poke_pocket_pack = "Pocket Pack",
            k_poke_wish_pack = "Wish Pack",
            k_poke_starter_pack = "Starter Pack",
            k_poke_gives = "Gives",
            k_poke_ignores = "Ignores",
            k_poke_limit = "Limit",
            k_poke_pp = "PP UP",
            
            k_poke_baby = "Baby",
            k_poke_safari = "Safari",
            k_poke_mega = "Mega",

            b_save = "SAVE",
            b_energy_cards = "Energy Cards",
            b_item_cards = "Item Cards",
            
            --Mod Menu stuff
            poke_settings_header_required = "Restart Required:",
            poke_settings_header_norequired = "No Restart Required:",
            poke_settings_pokemon_only = "Pokemon Only?",
            poke_settings_unlimited_energy = "Unlmited Energy?",
            poke_settings_shiny_playing_cards = "Shiny on playing cards?",
            poke_settings_pokemon_detailed_tooltips = "Detailed Tooltips?",
			poke_settings_previous_evo_stickers = "Previous Evo Stickers?",
			poke_settings_order_jokers = "Order Jokers by Dex No.?",
            poke_settings_pokemon_only_collection = "Only Pokermon Jokers in Collection?",
            poke_settings_jokers_only = "Jokers only?",
            poke_settings_no_evolutions = "No Evolutions?",
            poke_settings_pokeballs = "Allow Pokéballs?",
            poke_settings_pokedex_number = "Pokedex Numbers?",
            poke_settings_pokemon_splash = "Pokémon Splash Card?",
            poke_settings_pokemon_title = "Pokemon Title?",
            poke_settings_pokemon_gen_one = "Gen 1 Allowed?",
            poke_settings_pokemon_gen_two = "Gen 2 Allowed?",
            poke_settings_pokemon_gen_three = "Gen 3 Allowed?",
            poke_settings_pokemon_gen_four = "Gen 4 Allowed?",
            poke_settings_pokemon_gen_five = "Gen 5 Allowed?",
            poke_settings_pokemon_gen_six = "Gen 6 Allowed?",
            poke_settings_pokemon_gen_seven = "Gen 7 Allowed?",
            poke_settings_pokemon_gen_eight = "Gen 8 Allowed?",
            poke_settings_pokemon_gen_nine = "Gen 9 Allowed?",
            poke_settings_pokemon_hazards_on = "Hazards Allowed?",
            poke_settings_pokemon_precise_energy = "Use Precise Energy Scaling?",
            poke_settings_pokemon_discovery = "! Discovery?",
            poke_settings_pokemon_altart = "Alt Art?",
            poke_settings_pokemon_aprilfools = "Joke Content?",
            poke_settings_pokemon_legacy = "Legacy Content?",
            poke_settings_enable_animations = "Enable Animations?",
            poke_settings_pokemon_master = "Pokemon Master Mode?",
            poke_settings_pokemon_spritesheet = "Default Sprite Sheet (Resets Individual)",
            poke_settings_pokemon_sprites_right_click_to_change = "Right Click to Change",
            poke_settings_pokemon_spritesheet_classic = "Classic",
            poke_settings_pokemon_spritesheet_seriesa = "Series A",
            poke_settings_pokemon_spritesheet_seriesb = "Series B",
            
            poke_credits_actualcredits = "Credits",
            poke_credits_thanks = "Thanks to",
            poke_credits_lead = "Lead Developer: ",
            poke_credits_graphics = "Graphic Design: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "Developers: ",
            poke_credits_designer = "Design Assistants: ",
            poke_credits_community_manager = "Community Managers: ",
            poke_credits_special_thanks = "Special Thanks: ",
            poke_credits_localization = "Localization: ",
            poke_credits_sound = "Audio Engineer: ",
            poke_credits_artist = "Artist: ",
            poke_credits_designer = "Designer: ",

            poke_artist_credits_art_credits = "Art Credits",
            poke_artist_credits_artists = "Artists:",
            poke_artist_credits_basic_sprites_by = "Basic Pokémon sprites by:",
            poke_artist_credits_sprite_resource = "the 64x64 Pokémon sprite resource",
            poke_artist_credits_artist_info = "Artist info",
            poke_artist_credits_art_collection = "Art collection",
            poke_artist_credits_toggle_shiny = "Right Click to toggle Shiny",
            poke_artist_credits_cycle_draw_layers = "Double Click to cycle through layers",
            poke_artist_credits_toggle_center_layer = "Double Click to hide background",
            poke_artist_credits_toggle_soul_layer = "Double Click to hide Soul Layer",

            poke_artist_credits_sprite_resource_content = {
                "The basic sprites art style uses sprites from",
                "the 64x64 Pokémon sprites resource, as well as its successors.",
                "While the plan is to eventually use Series A as the new standard,",
                "we'd like to thank all contributors to these resources",
                "for the opportunity to use these sprites.",
                "You may find the Pokecommunity threads for these resources",
                "by clicking their respective buttons:"
            },

            poke_plus_pokeitem = "+1 Item",
            poke_plus_energy = "+1 Energy",
            poke_plus_consumable = "+1 Consumable",
            poke_plus_shop = "+1 Shop Card",
            poke_destroyed_ex = "Destroyed!",
            poke_evolve_success = "Evolved!",
            poke_transform_success = "Transformed!",
            poke_evolve_level = "Level up!",
            poke_tera = "Tera",
            poke_tera_ex = "Tera!",
            poke_metal_ex = "Metal!",
            poke_dragon_ex = "Dragon!",
            poke_energized_ex = "Energized!",
            poke_round_plus_ex = "Round Passed!",
            poke_unlimited_energy = "Infinity",
            poke_reroll_plural = "Rerolls",
            poke_reroll_singular = "Reroll",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone and Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokéball",
            greatball_variable = "Greatball",
            goodrod_variable = "Good Rod",
            pinkseal_variable = "Pink Seal",
            silverseal_variable = "Silver Seal",
            twisted_spoon_variable = "Twisted Spoon",
            double_rainbow_energy_variable = "Double Rainbow Energy",
            megastone_variable = "Mega Stone",

            --From Gastly Line
            poke_lick_ex = "Lick!",
            poke_lick = "Lick",
            --From Kingler
            poke_surf_ex = "Surf!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            poke_boo_ex = "BOO!",
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
            poke_drill_ex = "Drill Run!",
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
            poke_shadow_tag_ex = "Shadow Tag!",
            poke_flees_ex = "Flees!",
            poke_hidden_power_ex = "Hidden Power!",
            poke_nasty_plot_ex = "Nasty Plot!",
            poke_iron_tail_ex = "Iron Tail!",
            poke_autotomize_ex = "Autotomize!",
            poke_highjumpkick_ex = "High Jump Kick!",
            poke_water_gun_ex = "Water Gun!",
            poke_sky_attack_ex = "Sky Attack!",
            
            poke_grass_badge = "Grass",
            poke_fire_badge = "Fire",
            poke_water_badge = "Water",
            poke_lightning_badge = "Lightning",
            poke_psychic_badge = "Psychic",
            poke_fighting_badge = "Fighting",
            poke_colorless_badge = "Colorless",
            poke_dark_badge = "Dark",
            poke_metal_badge = "Metal",
            poke_fairy_badge = "Fairy",
            poke_dragon_badge = "Dragon",
            poke_earth_badge = "Earth",
            poke_bird_badge = "Bird",
            
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
        quips = {
          poke_lose_quip1 = {"Maybe Pokémon contests", "are more your speed...",},
          poke_lose_quip2 = {"You looked like a", "Magikarp out of water!",},
          poke_lose_quip3 = {"Did you forget", "to study your", "type matchups?",},
          poke_lose_quip4 = {"Oh no, we're", "blasting off again!",},
          poke_lose_quip5 = {"Looks like that", "blind was super effective!",},
          poke_lose_quip6 = {"That run turned to ash...",},
          poke_lose_quip7 = {"It's more important", "to master the cards", "you're holding than", "to complain about the", "ones you weren't dealt!",},
          poke_lose_quip8 = {"Better hurry to", "a Pokémon center!",},
          poke_lose_quip9 = {"Need a Revive?",},
          poke_lose_quip10 = {"I get half of","your Poké Dollars!",},
          poke_win_quip1 = {"A real Pokermon Master!",},
          poke_win_quip2 = {"Truly skilled trainers", "win with their", "favorites!",},
          poke_win_quip3 = {"What's next, trainer?",},
          poke_win_quip4 = {"I wouldn't want", "to face you", "in the arena!",},
          poke_win_quip5 = {"With your luck,", "our next stop", "should be the", "game corner!",},
          poke_win_quip6 = {"Your skills have evolved!",},
          poke_win_quip7 = {"Welcome to the", "Hall of Fame!",},
          poke_win_quip8 = {"What a champion", "time we had!",},
          poke_win_quip9 = {"A truly Legendary performance!",},
          poke_win_quip10 = {"That run was Mythical!",},
        },
        tutorial = {
          poke_intro_1 = {
          "Hello, I'm {C:attention}Professor Jimbo{}!",
          "Welcome to the world of {C:attention}Pokermon{}!",
          },
        },
        v_dictionary = {
          poke_discards = "+#1# Discards",
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Joker Slot when Boss Blind defeated {C:inactive}(up to 5)"},
           ch_c_poke_nuzlocke = {"First shop of each Ante contains a {C:attention}Buffoon Pack"},
           ch_c_apply_randomizer = {"Pokemon Jokers evolve into random Pokemon Jokers"},
        },
    }
}
