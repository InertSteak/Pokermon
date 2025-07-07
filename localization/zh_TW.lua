-- Welcome to zh_TW.lua!

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
                name = "訓練家牌組",
                text = {
                    "開始遊戲時獲得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}兌換券及",
                    "{C:tarot,T:c_poke_pokeball}#2#{}卡",
                } 
            },
            b_poke_telekineticdeck = {
                name = "念力牌組",
                text = {
                    "開始遊戲時獲得",
                    "{C:tarot,T:v_crystal_ball}#1#{}兌換券",
                    "及{C:attention}兩張{}{C:item,T:c_poke_twisted_spoon}#2#",
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "訃聞牌組",
                text = {
                    "所有卡牌帶有{C:dark_edition}#1#{}",
                } 
            },
            b_poke_revenantdeck = {
                name = "亡靈牌組",
                text = {
                    "所有卡牌帶有{C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "發亮牌組",
                text = {
                    "所有小丑牌帶有",
                    "隨機的{C:pink}屬性{}貼紙",
                    "及{C:attention}+1{}{C:pink}能量{}"
                }
            },
            b_poke_ampeddeck = {
                name = "振奮牌組",
                text = {
                    "開始遊戲時獲得",
                    "{C:tarot,T:v_poke_energysearch}#1#{}兌換券",
                    "及一張{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "夏翠絲密室",
                text = {
                    "每次出牌時",
                    "其中隨機一個屬性會被減益",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "精靈球",
                text = {
                    "產生一張隨機",
                    "{C:attention}基礎的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
            c_poke_greatball = {
                name = "超級球",
                text = {
                    "產生一張隨機",
                    "{C:attention}一次進化的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
            c_poke_moonstone = {
                name = "月之石",
                text = {
                    "有{C:green}#2#/#3#{}的機率",
                    "對所選的{C:attention}牌型{}升級",
                    "{C:attention}進化牌{}",
                    "{C:inactive}（目前的牌型：{C:attention}#1#{C:inactive}）{}"
                },
            },
            c_poke_sunstone = {
                name = "日之石",
                text = {
                    "對選擇的最多{C:attention}#1#{}張牌",
                    "來加強為{C:attention}萬能牌{}",
                    "並{C:attention}隨機{}它的牌級",
                    "{C:attention}進化牌{}",
                },
            },
            c_poke_waterstone = {
                name = "水之石",
                text = {
                    "對選擇的最多{C:attention}#1#{}張牌",
                    "來加強為{C:attention}獎勵牌{}",
                    "如果已經是{C:attention}獎勵牌{}",
                    "那些牌的籌碼{C:attention}翻倍{}",
                    "{C:inactive}（最多{C:chips}+#2#{C:inactive}籌碼）",
                    "{C:attention}進化牌{}",
                },
            },
            c_poke_thunderstone = {
                name = "雷之石",
                text = {
                    "產生兩張",
                    "與選擇的{C:attention}1張{}卡牌的牌級相同的{C:attention}黃金牌{}",
                    "到你的牌組中",
                    "並把其中{C:attention}1{}張抽到手牌中",
                    "{C:attention}進化牌{}",
                },
            },
            c_poke_firestone = {
                name = "火之石",
                text = {
                    "對選擇的最多{C:attention}#1#{}張牌",
                    "加強為{C:attention}倍數牌{}",
                    "並摧毀隨機{C:attention}1{}張牌",
                },
            },
            c_poke_leafstone = {
                name = "葉之石",
                text = {
                    "每張在手中的卡牌",
                    "有{C:green}#1#/#2#{}的機率加強為{C:attention}幸運牌{}",
                    "{C:attention}進化牌{}",
                },
            },
            c_poke_linkcable = {
                name = "聯繫繩",
                text = {
                    "選擇{C:attention}#1#{}張牌",
                    "對{C:attention}左邊{}的卡牌的牌級{C:attention}提升{}一級",
                    "對{C:attention}右邊{}的卡牌的牌級{C:attention}降低{}一級",
                    "{C:attention}進化牌{}",
                },
            },
            c_poke_leftovers = {
                name = "吃剩的東西",
                text = {
                    "{C:attention}可重用{}",
                    "對選擇的或最左邊的小丑牌的出售價",
                    "提升{C:money}$#2#{}",
                    "{C:inactive}（每個回合可使用一次）",
                }
            },
            c_poke_leek = {
                name = "大蔥",
                text = {
                    "{C:attention}可重用{}",
                    "有{C:green}#1#/#2#{}的機率",
                    "對自身增加{C:dark_edition}銀箔{}，{C:dark_edition}全息{}",
                    "或{C:dark_edition}彩色{}版本",
                    "{C:attention}版本{}在回合結束後移除",
                    "{C:inactive}（每個回合可使用一次）",
                }
            },
            c_poke_thickclub = {
                name = "粗骨頭",
                text = {
                    "{C:attention}可重用{}",
                    "對選擇的{C:attention}#1#{}張牌",
                    "永久增加{C:chips}+#2#{}籌碼",
                    "如果卡牌已增加籌碼，對那些牌加強為{C:attention}石頭牌{}",
                    "{C:inactive}（每個回合可使用一次）",
                }
            },
            c_poke_teraorb = {
                name = "太晶珠",
                text = {
                    "{C:attention}屬性變更：{}{X:pink,C:white}隨機{}",
                    "{br:2}此為分隔線",
                    "對最左邊或選擇的小丑牌增加{C:pink}能量{}",
                },
            },
            c_poke_metalcoat = {
                name = "金屬膜",
                text = {
                    "{C:attention}屬性變更：{}{X:metal,C:white}鋼{}",
                    "{br:2}此為分隔線",
                    "產生一張",
                    "與選擇的{C:attention}1張{}卡牌的牌級相同的{C:attention}鋼鐵牌{}",
                },
            },
            c_poke_dragonscale = {
                name = "龍之鱗片",
                text = {
                    "{C:attention}屬性變更：{}{X:dragon,C:white}龍{}",
                    "{br:2}此為分隔線",
                    "產生最多{C:attention}3{}張隨機的",
                    "{C:item}物品牌{}或{C:pink}能量牌{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_kingsrock = {
                name = "王者之證",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "選擇{C:attention}#1#{}張手牌",
                    "並轉換成{C:attention}K{}",
                },
            },
            c_poke_upgrade = {
                name = "升級資料",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "選擇{C:attention}#1#{}張手牌",
                    "並附上隨機{C:attention}非石頭的加強效果{}",
                }
            },
            c_poke_dubious_disc = {
                name = "可疑修正檔",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "隨機化或移除",
                    "所有手牌的{C:attention}加強效果{}",
                    "{C:inactive}（包括無加強的卡牌）{}"
                }
            },
            c_poke_icestone = {
                name = "冰之石",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "對選擇的{C:attention}#1#{}張牌",
                    "加強為{C:attention}玻璃牌{}",
                    "選擇的卡牌有{C:green}#2#/#3#{}的機率{C:attention}摧毀{}",
                }
            },
            c_poke_shinystone = {
                name = "光之石",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "對選擇的{C:attention}#1#{}張手牌",
                    "增加{C:dark_edition}銀箔{}，{C:dark_edition}全息{}",
                    "或{C:dark_edition}彩色{}版本",
                    "並移除卡牌的{C:attention}加強效果",
                }
            },
            c_poke_twisted_spoon = {
                name = "彎曲的湯匙",
                text = {
                    "產生這局遊戲中最近使用的",
                    "{br:2}此為分隔線",
                    "{C:item}物品{}牌或{C:pink}能量{}牌",
                    "{s:0.8,C:item}彎曲的湯匙{s:0.8}除外"
                }
            },
            c_poke_prismscale = {
                name = "美麗鱗片",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "轉換{C:attention}#2#{}張隨機{C:attention}手牌{}中的卡牌",
                    "至選擇的{C:attention}#1#{}張卡牌的{C:attention}花色{}",
                }
            },
            c_poke_duskstone = {
                name = "暗之石",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "如果在獲得這張牌後",
                    "{C:attention}#2#{}個回合後才使用這張牌",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive}（會在回合{C:attention}#3#{C:inactive}獲得{C:money}${C:inactive}）"
                }
            },
            c_poke_dawnstone = {
                name = "覺醒之石",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "獲得等同於{C:attention}#1#{}{C:mult}倍數{}",
                    "的{c:attention}兩倍{}數量的{C:money}金錢{}",
                    "{C:inactive}#4#{}",
                    "{C:inactive}（目前會獲得{C:money}$#2#{C:inactive}/最多$40）",
                }
            },
            c_poke_hardstone = {
                name = "硬石頭",
                text = {
                    "{C:attention}進化牌{}",
                    "{br:2}此為分隔線",
                    "加強{C:attention}1{}張選擇的卡牌至{C:attention}石頭牌{}",
                    "每張你持有的{X:earth,C:white}地面{}屬性的小丑牌",
                    "會對那張牌給予{C:chips}+#2#{}額外籌碼",
                }
            },
            c_poke_berry_juice = {
                name = "樹果汁",
                text = {
                    "這張牌的效果",
                    "會根據被摧毀的{C:attention}消耗牌{}而定"
                }
            },
            c_poke_berry_juice_energy = {
                name = "能量樹果汁",
                text = {
                    "對最左邊或選擇的任意{C:pink}屬性{}的小丑牌",
                    "增加一級{C:pink}能量{}",
                    "{C:inactive}（每個小丑牌可增加能量{C:attention}#1#{C:inactive}次）",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "幻靈樹果汁",
                text = {
                    "附加隨機的{C:attention}封蠟章{}及{C:dark_edition}銀箔{}，",
                    "{C:dark_edition}全息{}或{C:dark_edition}彩色{}效果",
                    "到{C:attention}1{}張選擇的卡牌中",
                },
            },
            c_poke_berry_juice_planet = {
                name = "天文樹果汁",
                text = {
                    "對最高等級的{C:attention}牌型{}",
                    "提升一級",
                },
            },
            c_poke_berry_juice_item = {
                name = "物品樹果汁",
                text = {
                    "產生一張{C:item}彎曲的湯匙{}牌",
                    "有{C:green}#1#/#2#{}的機率",
                    "產生{C:attention}額外{}一張",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "奧祕樹果汁",
                text = {
                    "產生一張{C:tarot}愚者{}牌",
                    "並獲得{C:money}$#1#{}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "神秘樹果汁",
                text = {
                    "產生一張",
                    "隨機的{C:item}樹果汁{}牌"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "草能量",
                text = {
                    "對最左邊或選擇的{X:grass,C:white}草{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fire_energy = {
                name = "火能量",
                text = {
                    "對最左邊或選擇的{X:fire,C:white}火{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_water_energy = {
                name = "水能量",
                text = {
                    "對最左邊或選擇的{X:water,C:white}水{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_lightning_energy = {
                name = "電能量",
                text = {
                    "對最左邊或選擇的{X:lightning,C:black}電{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_psychic_energy = {
                name = "超能量",
                text = {
                    "對最左邊或選擇的{X:psychic,C:white}超能力{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fighting_energy = {
                name = "鬥能量",
                text = {
                    "對最左邊或選擇的{X:fighting,C:white}格鬥{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_colorless_energy = {
                name = "無色能量",
                text = {
                    "對最左邊或選擇的{X:colorless,C:white}一般{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "對非{C:attention}一般{}屬性小丑牌的增強效果減半",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_darkness_energy = {
                name = "惡能量",
                text = {
                    "對最左邊或選擇的{X:dark,C:white}惡{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_metal_energy = {
                name = "鋼能量",
                text = {
                    "對最左邊或選擇的{X:Metal,C:white}鋼{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fairy_energy = {
                name = "妖能量",
                text = {
                    "對最左邊或選擇的{X:fairy,C:white}妖精{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "龍能量",
                text = {
                    "對最左邊或選擇的{X:dragon,C:white}龍{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_earth_energy = {
                name = "地能量",
                text = {
                    "對最左邊或選擇的{X:earth,C:white}地面{}屬性小丑牌",
                    "增加{C:pink}能量{}，如果可適用",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_emergy = {
                name = "M能量",
                text = {
                    "每張{C:attention}開心小丑{}牌或{C:legendary}M 小丑牌{}會",
                    "產生{C:attention}一張{}隨機帶有{C:dark_edition}負片{}的{C:green}能量牌{}",
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "發光",
                label = "發光",
                text = {
                    "店內的擴充包欄位{C:attention}+1{}",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl

            m_poke_hazard = {
                name = "陷阱牌",
                text = {
                    "手牌數量{C:attention}+1{}",
                    "無牌級及花色",
                    "在回合結束後移除",
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "鑽石賭注",
                colour = "鑽石",
                text = {
                    "{C:attention}非嬰兒{}的寶可夢小丑牌需要多{C:attention}1{}個回合進化",
                    "{s:0.8}套用先前賭注的效果"
                }
            },
            stake_poke_pearl = {
                name = "珍珠賭注",
                colour = "珍珠",
                text = {
                    "能量上限{C:attention}-1{}",
                    "{s:0.8}套用先前賭注的效果"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "妙蛙種子",
                text = {
                    "手牌數量{C:attention}+#4#{}",
                    "手牌中，每一張{C:attention}#3#{}會給予{C:money}$#1#{}",
                    "卡牌牌級在每個回合變更",
                    "{C:inactive}（獲得{C:money}$16{}{C:inactive}後進化）"
                } 
            },
            j_poke_ivysaur = {
                name = "妙蛙草",
                text = {
                    "手牌數量{C:attention}+#3#{}",
                    "手牌中，每一張{C:attention}#4#{}會給予{C:money}$#1#{}或{C:money}$#5#{}",
                    "卡牌牌級在每個回合變更",
                    "{C:inactive}（獲得{C:money}$16{}{C:inactive}後進化）"
                } 
            },
            j_poke_venusaur = {
                name = "妙蛙花",
                text = {
                    "手牌數量{C:attention}+#3#{}",
                    "手牌中，每一張{C:attention}#4#{}會給予{C:money}$#1#{}",
                    "卡牌牌級在每個回合變更",
                }
            },
            j_poke_mega_venusaur = {
                name = "超級妙蛙花",
                text = {
                    "手牌數量{C:attention}+#1#{}",
                }
            },
            j_poke_charmander = {
                name = "小火龍",
                text = {
                    "棄牌次數{C:red}+#4#{}",
                    "當剩下{C:attention}#3#{}次棄牌數時",
                    "每次出牌會給這張牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +16 倍數時進化）"
                } 
            },
            j_poke_charmeleon = {
                name = "火恐龍",
                text = {
                    "棄牌次數{C:red}+#4#{}",
                    "當剩下{C:attention}#3#{}次棄牌數時",
                    "每次出牌會給這張牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +36 倍數時進化）"
                } 
            },
            j_poke_charizard = {
                name = "噴火龍",
                text = {
                    "棄牌次數{C:red}+#4#{}, 倍數{C:mult}+#1#{}",
                    "當剩下{C:attention}#3#{}次棄牌次數時，倍數{X:mult,C:white} X#2# {}",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "超級噴火龍 X",
                text = {
                    "當剩下{C:attention}#2#{}次棄牌次數時，倍數{X:mult,C:white} X#1# {}",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "超級噴火龍 Y",
                text = {
                    "棄牌次數{C:red}+#1#{}",
                } 
            },
            j_poke_squirtle = {
                name = "傑尼龜",
                text = {
                    "出牌次數{C:chips}+#3#{}",
                    "當回合結束時，每一個未使用的",
                    "出牌次數會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在{C:chips}+#1#{C:inactive} / +32 籌碼時進化）"
                } 
            },
            j_poke_wartortle = {
                name = "卡咪龜",
                text = {
                    "出牌次數{C:chips}+#3#{}",
                    "當回合結束時，每一個未使用的",
                    "出牌次數會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在{C:chips}+#1#{C:inactive} / +72 籌碼時進化）"
                } 
            },
            j_poke_blastoise = {
                name = "水箭龜",
                text = {
                    "出牌次數{C:chips}+#3#{}，{C:chips}+#1#{}籌碼",
                    "每個剩餘的出牌次數會給予{C:chips}+#2#{}籌碼",
                } 
            },
            j_poke_mega_blastoise = {
                name = "超級水箭龜",
                text = {
                    "出牌次數{C:chips}+#2#{}",
                } 
            },
            j_poke_caterpie = {
                name = "綠毛蟲",
                text = {
                    "倍數{C:mult}+#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_metapod = {
                name = "鐵甲蛹",
                text = {
                    "倍數{C:mult}+#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_butterfree = {
                name = "巴大蝶",
                text = {
                    "倍數{C:mult}+#1#{}",
                } 
            },
            j_poke_weedle = {
                name = "獨角蟲",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_kakuna = {
                name = "鐵殼蛹",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_beedrill = {
                name = "大針蜂",
                text = {
                    "{C:chips}+#1#{}籌碼",
                } 
            },
            j_poke_mega_beedrill = {
                name = "超級大針蜂",
                text = {
                    "{C:chips}+#1#{}籌碼",
                } 
            },
            j_poke_pidgey = {
                name = "波波",
                text = {
                    "如果打出的得分牌",
                    "包含多於一個的牌級及花色",
                    "倍數{C:mult}+#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_pidgeotto = {
                name = "比比鳥",
                text = {
                    "如果打出的得分牌",
                    "包含多於一個的牌級及花色",
                    "倍數{C:mult}+#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_pidgeot = {
                name = "大比鳥",
                text = {
                    "選擇{C:attention}盲注{}時，產生一張{C:planet}行星牌",
                    "{br:2}此為分隔線",
                    "如果打出的得分牌",
                    "包含多於一個的牌級及花色",
                    "倍數{C:mult}+#1#{}"
                } 
            },
            j_poke_mega_pidgeot = {
                name = "超級大比鳥",
                text = {
                    "選擇{C:attention}盲注{}時，{C:attention}失去所有棄牌次數{}",
                    "{br:2}此為分隔線",
                    "如果打出的得分牌包含多於一個的牌級及花色",
                    "每張打出的卡牌會給予",
                    "等同於{C:attention}失去的棄牌次數數量{}的{X:mult,C:white}乘數倍數加成{}",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#1#{C:inactive}倍數）"
                } 
            },
            j_poke_rattata = {
                name = "小拉達",
                text = {
                    "{C:attention}頭兩張{}打出的的得分牌",
                    "會額外觸發{C:attention}#1#{}次",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_raticate = {
                name = "拉達",
                text = {
                    "{C:attention}頭三張{}打出的的得分牌",
                    "會額外觸發{C:attention}#1#{}次",
                } 
            },
            j_poke_spearow = {
                name = "烈雀",
                text = {
                    "當有{C:attention}#2#{} {C:inactive}[#3#]{} 張牌得分後",
                    "升級下一個打出的{C:attention}牌型{}",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_fearow = {
                name = "大嘴雀",
                text = {
                    "當有{C:attention}#1#{} {C:inactive}[#2#]{}張牌得分後",
                    "升級下一個打出的{C:attention}牌型{}",
                } 
            },
            j_poke_ekans = {
                name = "阿柏蛇",
                text = {
                    "如果打出的手牌包含",
                    "{C:attention}順子{}，{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_arbok = {
                name = "阿柏怪",
                text = {
                    "如果打出的手牌包含",
                    "{C:attention}順子{}，{C:chips}+#1#{}籌碼",
                    "{br:2}此為分隔線",
                    "如果也包含{C:attention}A{}",
                    "產生一張{C:tarot}塔羅牌{}"
                } 
            },
            j_poke_pikachu = {
                name = "皮卡丘",
                text = {
                    "回合結束時",
                    "每一張小丑牌會給予{C:money}$#1#{}",
                    "{C:inactive}（最多{C:money}$10{C:inactive}）",
                    "{C:inactive}（使用{}{C:attention}雷之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_raichu = {
                name = "雷丘",
                text = {
                    "如果擁有超過{C:money}$#2#{}，在回合結束時",
                    "這張牌會獲得{C:dark_edition}負片{}效果",
                    "{C:inactive,s:0.8}（需要的金錢會依雷丘的數量而增加）{}",
                    "回合結束時",
                    "每一張小丑牌會給予{C:money}$#1#{}",
                    "{C:inactive}（最多{C:money}$10{C:inactive}）"
                } 
            },
            j_poke_sandshrew = {
                name = "穿山鼠",
                text = {
                    "每張在牌組的玻璃牌會給予這張牌{C:chips}+#2#{}籌碼",
                    "{br:3}此為分隔線",
                    "當回合中第一張{C:attention}玻璃牌{}被摧毀時",
                    "複製那張{C:attention}玻璃牌{}",
                    "到牌組並抽到{C:attention}手牌{}中",
                    "{C:inactive}（目前會給予{C:chips}+#3#{C:inactive}籌碼）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_sandslash = {
                name = "穿山王",
                text = {
                    "每張在牌組的玻璃牌會給予這張牌{C:chips}+#1#{}籌碼",
                    "{br:3}此為分隔線",
                    "當回合中頭{C:attention,V:1}#3#{} {C:inactive}[#4#]{}張{C:attention}玻璃牌{}被摧毀時",
                    "複製那兩張{C:attention}玻璃牌{}",
                    "到牌組並抽到{C:attention}手牌{}中",
                    "{C:inactive}（目前會給予{C:chips}+#3#{C:inactive}籌碼）",
                } 
            },
            j_poke_nidoranf = {
                name = "尼多蘭",
                text = {
                    "手牌中，每張{C:attention}Q{}",
                    "會給予{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_nidorina = {
                name = "尼多娜",
                text = {
                    "手牌中，每張{C:attention}Q{}",
                    "會給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_nidoqueen = {
                name = "尼多后",
                text = {
                    "手牌數量{C:attention}+#2#{}",
                    "手牌中，每張{C:attention}Q{}",
                    "會給予{C:chips}+#1#{}籌碼",
                } 
            },
            j_poke_nidoranm = {
                name = "尼多朗",
                text = {
                    "手牌中，每張{C:attention}K{}",
                    "會給予{C:mult}+#1#{}倍數",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_nidorino = {
                name = "尼多力諾",
                text = {
                    "手牌中，每張{C:attention}K{}",
                    "會給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_nidoking = {
                name = "尼多王",
                text = {
                    "手牌數量{C:attention}+#2#{}",
                    "手牌中，每張{C:attention}K{}",
                    "會給予{C:mult}+#1#{}倍數"
                } 
            },
            j_poke_clefairy = {
                name = "皮皮",
                text = {
                    "每張打出的{C:clubs}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_clefable = {
                name = "皮可西",
                text = {
                    "每張打出的{C:clubs}#2#{}花色的卡牌",
                    "會在得分時給予這個回合中",
                    "與打出的梅花牌數量相等的倍數",
                    "{C:inactive,s:0.8}（如果打出了五張梅花牌，每張牌會給予{C:mult,s:0.8}+5{}{C:inactive,s:0.8}倍數）{}",
                    "{C:inactive}（目前會給予{C:mult}#3#{}{C:inactive}倍數）{}"
                } 
            },
            j_poke_vulpix = {
                name = "六尾",
                text = {
                    "每張打出的{C:attention}9{}",
                    "在得分時會有{C:green}#1#/#2#{}的機率",
                    "產生一張{C:attention}塔羅牌{}",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（使用{}{C:attention}火之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_ninetales = {
                name = "九尾",
                text = {
                    "{C:attention}持有{}{C:spectral}靈媒牌{}",
                    "每張打出的{C:attention}9{}",
                    "在得分時會有{C:green}#1#/#2#{}的機率",
                    "產生一張{C:attention}塔羅{}或{C:planet}行星{}牌",
                    "{C:inactive}（必須有空位）"
                } 
            },
            j_poke_jigglypuff = {
                name = "胖丁",
                text = {
                    "每張打出的{C:spades}#2#{}花色的卡牌",
                    "在得分時會給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_wigglytuff = {
                name = "胖可丁",
                text = {
                    "每張打出的{C:spades}#3#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數，{C:chips}+#2#{}籌碼",
                    "及卡牌給予的籌碼"
                } 
            },
            j_poke_zubat = {
                name = "超音蝠",
                text = {
                    "每張得分的加強牌",
                    "會給予這張牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{}{C:inactive}倍數）",
                    "{C:inactive}（在擁有{C:mult}+#1#{C:inactive} / #3#{C:inactive}倍數時進化）"
                } 
            },
            j_poke_golbat = {
                name = "大嘴蝠",
                text = {
                    "移除得分牌的加強效果",
                    "從{C:attention}倍數{}及{C:attention}萬能{}牌獲得{C:mult}+#4#{}倍數",
                    "從{C:attention}獎勵{}及{C:attention}石頭{}牌獲得{C:chips}+#2#{}籌碼",
                    "從{C:attention}鋼鐵{}及{C:attention}玻璃{}牌獲得{X:red,C:white}X#6#{}倍數",
                    "從{C:attention}黃金{}及{C:attention}幸運{}牌獲得{C:money}$#8#{}金錢",
                    "{C:inactive}（目前會給予{C:mult}+#3#{}，{C:chips}+#1#{}，{X:red,C:white}X#5#{}，{C:inactive}回合結束時，{}{C:money}$#7#{}）",
                    "{C:inactive}（在移除{C:attention}#9#{}{C:inactive}個加強效果時進化）",
                } 
            },
            j_poke_oddish = {
                name = "走路草",
                text = {
                    "每張打出的{C:attention}奇數{}牌級的卡牌",
                    "會在得分時給予{C:mult}+#1#{}或{C:mult}+#2#{}倍數",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_gloom = {
                name = "臭臭花",
                text = {
                    "每張打出的{C:attention}奇數{}牌級的卡牌",
                    "會在得分時給予{C:mult}+#1#{}或{C:mult}+#2#{}倍數",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}或{}{C:attention}日之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_vileplume = {
                name = "霸王花",
                text = {
                    "每張打出的{C:attention}奇數{}牌級的卡牌",
                    "會在得分時給予{C:mult}+#2#{}倍數或{X:mult,C:white} X#1# {}倍數"
                } 
            },
            j_poke_paras = {
                name = "派拉斯",
                text = {
                    "如果打出的手牌包含{C:attention}兩對{}",
                    "此小丑牌獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{}{C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+8{}{C:inactive}倍數時進化)"
                }  
            },
            j_poke_parasect = {
                name = "派拉斯特",
                text = {
                    "如果打出的手牌包含{C:attention}兩對{}",
                    "此小丑牌獲得{C:mult}+#2#{}倍數",
                    "否則{C:mult}-#3#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{}{C:inactive}倍數）",
                } 
            },
            j_poke_venonat = {
                name = "毛球",
                text = {
                    "對所有{C:attention}有機率觸發的效果{}的{C:green,E:1,S:1.1}機率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}2/6{C:inactive}）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_venomoth = {
                name = "摩魯蛾",
                text = {
                    "對所有{C:attention}有機率觸發的效果{}的{C:green,E:1,S:1.1}機率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}3/6{C:inactive}）"
                } 
            },
            j_poke_diglett = {
                name = "地鼠",
                text = {
                    "如果打出的手牌包含{C:attention}三條{}",
                    "給予{C:chips}+#2#{}籌碼",
                    "如果打出的手牌包含{C:attention}2{}，{C:attention}3{}或{C:attention}4{}",
                    "給予{C:mult}+#3#{}倍數",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_dugtrio = {
                name = "三地鼠",
                text = {
                    "如果打出的手牌包含{C:attention}三條{}",
                    "給予{C:chips}+#2#{}籌碼",
                    "如果打出的手牌包含{C:attention}2{}，{C:attention}3{}或{C:attention}4{}",
                    "給予{X:red,C:white} X#1# {}倍數",
                } 
            },
            j_poke_meowth = {
                name = "喵喵",
                text = {
                    "回合結束時",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_persian = {
                name = "貓老大",
                text = {
                    "回合結束時",
                    "獲得最左邊小丑牌賣出價格的",
                    "{C:attention}雙倍{}{C:money}金錢{}", 
                    "{C:inactive}（自身除外）{}",
                    "{C:inactive}（目前會獲得{C:money}$#1#{C:inactive}，最多{C:money}$15{C:inactive}）",
                } 
            },
            j_poke_psyduck = {
                name = "可達鴨",
                text = {
                    "如果打出的手牌為",
                    "單張{C:attention}人頭牌{}，獲得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_golduck = {
                name = "哥達鴨",
                text = {
                    "如果打出的手牌為",
                    "單張{C:attention}人頭牌{}，獲得{C:money}$#1#{}",
                    "並把那張牌變為{C:attention}黃金牌{}"
                } 
            },
            j_poke_mankey = {
                name = "猴怪",
                text = {
                    "每張打出的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}",
                    "會在得分時給予{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{}{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            j_poke_primeape = {
                name = "火爆猴",
                text = {
                    "每張打出的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}",
                    "會在得分時給予{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "{C:inactive,s:0.8}（在觸發{C:attention,s:0.8}#3#{}{C:inactive,s:0.8}次後進化）{}"
                } 
            },
            j_poke_growlithe = {
                name = "卡蒂狗",
                text = {
                    "如果打出的手牌包含{C:attention}同花{}",
                    "倍數{C:mult}+#1#{}",
                    "{C:inactive}（使用{}{C:attention}火之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_arcanine = {
                name = "風速狗",
                text = {
                    "如果打出的手牌包含{C:attention}同花{}",
                    "倍數{X:red,C:white} X#1# {}",
                    "{br:2}此為分隔線",
                    "在打出的{C:attention}同花{}中",
                    "第一張非加強牌會在得分時變為{C:attention}倍數牌{}",
                } 
            },
            j_poke_poliwag = {
                name = "蚊香蝌蚪",
                text = {
                    "每張打出的{V:1}#3#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_poliwhirl = {
                name = "蚊香君",
                text = {
                    "每張打出的{V:1}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}水之石{}{C:inactive,s:0.8}或{C:attention,s:0.8}王者之證{}{C:inactive,s:0.8}牌進化）"
                } 
            },
            j_poke_poliwrath = {
                name = "蚊香泳士",
                text = {
                    "每張打出的{V:1}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#7#{}倍數及{X:mult,C:white} X#1# {}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "凱西",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已經在這個回合打出的話",
                    "將有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌或{C:item}物品{}牌",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_kadabra = {
                name = "勇基拉",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已經在這個回合打出的話",
                    "將有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌或{C:item}彎曲的湯匙{}牌",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_alakazam = {
                name = "胡地",
                text = {
                    "消耗牌欄位{C:attention}+#3#{}",
                    "如果打出的{C:attention}牌型{}",
                    "已經在這個回合打出的話",
                    "將有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌或{C:item}彎曲的湯匙{}牌"
                } 
            },
            j_poke_mega_alakazam = {
                name = "超級胡地",
                text = {
                    "消耗牌欄位{C:attention}+#3#{}",
                    "每張持有的{C:attention}消耗牌{}會給予{X:mult,C:white}X#1#{}倍數",
                    "{C:item}彎曲的湯匙{}會給予{X:mult,C:white}X#2#{}倍數",
                } 
            },
            j_poke_machop = {
                name = "腕力",
                text = {
                    "出牌次數{C:chips}+#1#{}",
                    "{C:mult}棄牌次數-#2#{}",
                    "倍數{C:mult}+#4#{}",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_machoke = {
                name = "豪力",
                text = {
                    "出牌次數{C:chips}+#1#{}",
                    "{C:mult}棄牌次數-#2#{}",
                    "倍數{C:mult}+#3#{}",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_machamp = {
                name = "怪力",
                text = {
                    "出牌次數{C:chips}+#1#{}",
                    "{C:mult}棄牌次數-#2#{}",
                    "倍數{C:mult}+#3#{}"
                } 
            },
            j_poke_bellsprout = {
                name = "喇叭芽",
                text = {
                    "每張打出的{C:attention}偶數{}牌級的卡牌",
                    "會在得分時給予{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_weepinbell = {
                name = "口呆花",
                text = {
                    "每張打出的{C:attention}偶數{}牌級的卡牌",
                    "會在得分時給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_victreebel = {
                name = "大食花",
                text = {
                    "每張打出的{C:attention}偶數{}牌級的卡牌",
                    "會在得分時給予{C:chips}+#1#{}籌碼",
                    "並{C:attention}額外觸發一次{}"
                } 
            },
            j_poke_tentacool = {
                name = "瑪瑙水母",
                text = {
                    "每張打出的{C:attention}10{}",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_tentacruel = {
                name = "毒刺水母",
                text = {
                    "每張打出的{C:attention}10{}",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{br:2}此為分隔線",
                    "{C:attention}10牌不能{}被減益"
                } 
            },
            j_poke_geodude = {
                name = "小拳石",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:attention}-#2#{}手牌數量",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_graveler = {
                name = "隆隆石",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:attention}-#2#{}手牌數量",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_golem = {
                name = "隆隆岩",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:attention}-#2#{}手牌數量",
                } 
            },
            j_poke_ponyta = {
                name = "小火馬",
                text = {
                    "如果打出的手牌包含{C:attention}順子{}",
                    "這張小丑牌會獲得{C:chips}#2#{}籌碼", 
                    "{C:inactive}（在 {C:chips}+#1#{C:inactive} / +60 籌碼時進化）"
                } 
            }, 
            j_poke_rapidash = {
                name = "烈焰馬",
                text = {
                    "如果打出的手牌包含{C:attention}順子{}",
                    "這張小丑牌會獲得{C:chips}#2#{}籌碼", 
                    "籌碼加成會在每次觸發時提升{C:chips}+1{}",
                    "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼）",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "呆呆獸",
                text = {
                    "每個回合的{C:attention}最後一次出牌{}",
                    "可得到{X:red,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{}{C:inactive,s:0.8}個回合後或使用{C:attention,s:0.8}王者之證{}{C:inactive,s:0.8}牌進化）"
                } 
            },
            j_poke_slowpoke2 = {
                name = "呆呆獸",
                text = {
                    "每回合的{C:attention}最後一次出牌{}可得到{X:red,C:white} X#1# {}倍數",
                    "每回合結束後，有{C:green}#3#/#4#{}機率",
                    "產生一張{C:attention}王者之證{}牌{C:inactive,s:0.8}（必須有空位）{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{}{C:inactive,s:0.8}個回合後或使用{C:attention,s:0.8}王者之證{}{C:inactive,s:0.8}牌進化）"
                } 
            },
            j_poke_slowbro = {
                name = "呆殼獸",
                text = {
                    "每次出牌時",
                    "這張牌會獲得{X:red,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.8}（回合結束時重設）",
                    "{C:inactive}（目前會給予{X:red,C:white} X#2# {}{C:inactive}倍數）"
                } 
            },
            j_poke_mega_slowbro = {
                name = "超級呆殼獸",
                text = {
                    "每次出牌時",
                    "這張牌會獲得{X:red,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.8}（擊敗{C:attention,s:0.8}Boss盲注{C:inactive,s:0.8}後重設）",
                    "{C:inactive}（目前會給予{X:red,C:white}X#2#{C:inactive}倍數）"
                } 
            },
            j_poke_magnemite = {
                name = "小磁怪",
                text = {
                    "每張打出的{C:attention}鋼鐵{}牌",
                    "會在得分時給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_magneton = {
                name = "三合一磁怪",
                text = {
                    "每張打出的{C:attention}鋼鐵{}牌",
                    "會在得分時給予{X:red,C:white}X#1#{}倍數",
                    "每張在這張牌旁邊的{X:metal,C:white}鋼{}屬性小丑牌",
                    "會對加成增加{X:red,C:white}X#2#{}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white}X#3#{}{C:inactive}倍數）{}",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}雷之石{}{C:inactive,s:0.8}牌進化）"
                } 
            },
            j_poke_farfetchd = {
                name = '大蔥鴨',      
                text = {
                    "{C:attention}持有大蔥牌{}",
                    "每次使用{C:attention}消耗牌{}時",
                    "有{C:green}#2#/#3#{}的機率獲得{C:money}$#1#{}",
                    "如果是使用{C:attention}大蔥{}牌，確保獲得{C:money}金錢{}",
                } 
            },
            j_poke_doduo = {
                name = '嘟嘟',      
                text = {
                    "如果打出的手牌",
                    "包含至少{C:attention}2{}張得分的人頭牌",
                    "倍數{C:mult}+#1#{}",
                    "{br:2}此為分隔線",
                    "如果打出的手牌包含{C:attention}葫蘆",
                    "倍數{C:mult}+#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_dodrio = {
                name = '嘟嘟利',      
                text = {
                    "如果打出的手牌",
                    "包含至少{C:attention}3{}張得分的人頭牌",
                    "倍數{C:mult}+#1#{}",
                    "{br:2}此為分隔線",
                    "如果打出的手牌包含{C:attention}葫蘆",
                    "倍數{C:mult}+#1#{}",
                } 
            },
            j_poke_seel = {
                name = '小海獅',      
                text = {
                    "在{C:attention}第一次{}出牌中",
                    "有{C:green}#1#/#2#{}的機率",
                    "新增隨機的{C:attention}封蠟章{}到最左邊的得分牌",
                    "{C:inactive,s:0.75}（在牌組中擁有至少{C:attention,s:0.75}#3#{}{C:inactive,s:0.75}{C:attention,s:0.75}個封蠟章{C:inactive,s:0.75}時進化）"
                } 
            },
            j_poke_dewgong = {
                name = '白海獅',      
                text = {
                    "在{C:attention}第一次{}出牌中",
                    "新增隨機的{C:attention}封蠟章{}到最左邊的得分牌",
                } 
            },
            j_poke_grimer = {
                name = '臭泥',      
                text = {
                    "如果你的牌組有多於{C:attention}#3#{}張牌",
                    "給予{C:mult}+#1#{}倍數",
                    "每回合結束時",
                    "增加一張隨機的卡牌到牌組",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_muk = {
                name = '臭臭泥',      
                text = {
                    "在你的牌組中",
                    "每張多於{C:attention}#2#{}張牌會獲得{C:mult}+#1#{}倍數",
                    "{br:4}此為分隔線",
                    "回合結束時，增加兩張隨機的卡牌到牌組",
                    "並從牌組中移除一張隨機的卡牌",
                    "{C:inactive}（目前會給予{C:mult}+#3#{} {C:inactive}倍數）{}"
                } 
            },
            j_poke_shellder = {
                name = '大舌貝',      
                text = {
                    "如果打出的手牌中有{C:attention}5{}張得分牌",
                    "每一張有{C:green}#1#/#2#{}的機率額外觸發一次",
                    "{C:inactive}（使用{}{C:attention}水之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_cloyster = {
                name = '刺甲貝',      
                text = {
                    "如果打出的手牌中有{C:attention}5{}張得分牌",
                    "每一張有{C:green}#1#/#2#{}的機率額外觸發一次"
                } 
            },
            j_poke_gastly = {
                name = '鬼斯',      
                text = {
                    "有{C:green}#1#/#2#{}的機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "更換至{C:dark_edition}負片{}效果",
                    "{S:1.1,C:red,E:2}觸發後自我毀滅{}",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_haunter = {
                name = '鬼斯通',      
                text = {
                    "有{C:green}#1#/#2#{}的機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "更換至{C:dark_edition}負片{}效果",
                    "{S:1.1,C:red,E:2}觸發後自我毀滅{}",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_gengar = {
                name = '耿鬼',      
                text = {
                    "{C:green}百份比機率",
                    "回合結束後，有機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "更換至{C:dark_edition}負片{}效果",
                    "{C:inactive,s:0.8}（自身除外）{}"
                } 
            },
            j_poke_mega_gengar = {
                name = '超級耿鬼',      
                text = {
                    "在{C:attention}商店{}及{C:attention}擴充包{}出現的",
                    "{C:dark_edition}彩色{}小丑牌會轉換成{C:dark_edition}負片{}", 
                } 
            },
            j_poke_onix = {
                name = '大岩蛇',      
                text = {
                    "{C:attention}第一次出牌{}時，最左邊的得分牌",
                    "會變成{C:attention}石頭牌{}",
                    "{C:inactive}（附上{C:metal}鋼{}{C:inactive}貼紙後進化）{}"
                } 
            },
            j_poke_drowzee = {
                name = '催眠貘',      
                text = {
                    "在這局遊戲中，每張已使用並不重複的",
                    "{C:planet}行星牌{}會給予{X:mult,C:white}X#2#{}倍數",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#1#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（在使用{C:planet,s:0.8}#3#{C:inactive,s:0.8}張不重複的行星牌時進化）"
                } 
            },
            j_poke_hypno = {
                name = '引夢貘人',      
                text = {
                    "{C:attention}持有恍惚牌{}",
                    "在這局遊戲中，每張已使用並不重複的",
                    "{C:planet}行星牌{}會給予{X:mult,C:white}X#2#{}倍數",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#1#{C:inactive}倍數）",
                } 
            },
            j_poke_krabby = {
                name = '大鉗蟹',      
                text = {
                    "每張打出的{C:attention}人頭牌{}",
                    "會在得分時給予{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_kingler = {
                name = '巨鉗蟹',      
                text = {
                    "每張打出的{C:attention}人頭牌{}",
                    "會在得分時給予{C:chips}+#1#{}籌碼",
                    "並會變成{C:attention}獎勵牌{}如果是非加強牌",
                } 
            },
            j_poke_voltorb = {
                name = '霹靂電球',      
                text = {
                    "{C:attention}右邊揮發{}",
                    "倍數{X:mult,C:white} X#1# {}",
                    "{br:2}此為分隔線",
                    "這張牌觸發時，會自我減益直到回合結束",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合沒有觸發後進化）",
                } 
            },
            j_poke_electrode = {
                name = '頑皮雷彈',      
                text = {
                    "{C:attention}右邊揮發{}",
                    "倍數{X:mult,C:white} X#1# {}",
                    "打出手牌時，獲得{C:money}$#2#{}",
                    "{br:2}此為分隔線",
                    "這張牌觸發時，會自我減益直到回合結束"
                } 
            },
            j_poke_exeggcute = {
                name = '蛋蛋',      
                text = {
                    "每張打出的{C:hearts}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_exeggutor = {
                name = '椰蛋樹',      
                text = {
                    "每張打出的{C:hearts}#3#{}花色的卡牌",
                    "會在得分時有{C:green}#4#/#5#{}的機率",
                    "給予{C:mult}+#1#{}倍數及{X:mult,C:white}X#2#{}倍數",
                } 
            },
            j_poke_cubone = {
                name = '卡拉卡拉',      
                text = {
                    "{C:attention}持有粗骨頭牌{}",
                    "每張持有的消耗牌會給予{C:mult}+#1#{}倍數",
                    "{C:inactive,s:0.75}（{C:attention,s:0.75}粗骨頭{}{C:inactive,s:0.75}牌當作雙倍）{}",
                    "{C:inactive}（目前會給予{C:mult}+#2#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}#3#{C:inactive,s:0.8}張消耗牌後進化）",
                } 
            },
            j_poke_marowak = {
                name = '嘎啦嘎啦',      
                text = {
                    "消耗牌欄位{C:attention}+#2#{}",
                    "每張持有的消耗牌會給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.75}（{C:attention,s:0.75}粗骨頭{}{C:inactive,s:0.75}牌當作雙倍）{}",
                    "{C:inactive}（目前會給予{X:mult,C:white} X#3# {}{C:inactive}倍數）",
                } 
            },
            j_poke_hitmonlee = {
                name = '飛腿郎',      
                text = {
                    "在你的牌組中，每張少於{C:attention}#2#{}張的卡牌",
                    "會給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white}X#3#{C:inactive}倍數）",
                } 
            },
            j_poke_hitmonchan = {
                name = '快拳郎',      
                text = {
                    "在你的牌組中，每張多於{C:attention}#2#{}張的卡牌",
                    "會給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white}X#3#{C:inactive}倍數）",
                } 
            },
            j_poke_lickitung = {
                name = '大舌頭',      
                text = {
                    "頭兩張的打出的{C:attention}J{}",
                    "會在得分時給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.8}（在觸發{C:attention,s:0.8}#2#{C:inactive,s:0.8}次後進化）{}"
                } 
            },
            j_poke_koffing = {
                name = '瓦斯彈',      
                text = {
                    "賣出這張牌來減低",
                    "目前{C:attention}Boss 盲注{}所需的一半分數",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_weezing = {
                name = '雙彈瓦斯',      
                text = {
                    "賣出這張牌來減低",
                    "目前{C:attention}Boss 盲注{}所需的一半分數",
                    "並消除限制效果",
                } 
            },
            j_poke_rhyhorn = {
                name = '獨角犀牛',      
                text = {
                    "每張打出的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_rhydon = {
                name = '鑽角犀獸',      
                text = {
                    "每張打出的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_chansey = {
                name = '吉利蛋',      
                text = {
                    "每個回合中頭{C:attention}#1#{}張被觸發的{C:attention}幸運牌{}",
                    "會增加一張複製的那張牌到牌組並抽到{C:attention}手牌{}中",
                    "{C:inactive}（目前已觸發{C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive}張）",
                    "{C:inactive}（在牌組有25%或以上是{C:attention}幸運牌{C:inactive}時進化）"
                } 
            },
            j_poke_tangela = {
                name = '蔓藤怪',      
                text = {
                    "每張打出的{C:attention}萬能牌{}",
                    "會在得分時給予{C:mult}+#1#{}倍數，{C:chips}+#2#{}籌碼或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的機率給予{C:attention}以上三個的加成{}",
                    "{C:inactive}（在牌組有20%或以上是{C:attention}萬能牌{C:inactive}時進化）"
                } 
            },
            j_poke_kangaskhan = {
                name = '袋獸',      
                text = {
                    "消耗牌欄位{C:attention}+#1#{}",
                    "出牌次數{C:chips}-#2#{}",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = '超級袋獸',      
                text = {
                    "所有打出的卡牌會{C:attention}額外觸發{}一次",
                    "{br:3}此為分隔線",
                    "如果回合中至少使用{C:attention}#1#張消耗牌{}",
                    "回合結束後，產生一個{C:attention}雙倍標籤{}",
                    "{C:inactive}（目前已使用{C:attention}#2#{C:inactive}張消耗牌）"
                } 
            },
            j_poke_horsea = {
                name = '墨海馬',      
                text = {
                    "每張打出的{C:attention}6{}",
                    "會在得分時給予這張小丑牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +12 倍數時進化）"
                } 
            },
            j_poke_seadra = {
                name = '海刺龍',      
                text = {
                    "每張打出的{C:attention}6{}",
                    "會在得分時給予這張小丑牌{C:mult}+#2#{}倍數",
                    "如果手牌中持有{C:attention}K{}，加成效果翻倍",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（附上{C:dragon,s:0.8}龍{}{C:inactive,s:0.8}貼紙後進化）{}"
                } 
            },
            j_poke_goldeen = {
                name = '角金魚',      
                text = {
                    "在手牌中的{C:attention}黃金牌{}",
                    "會額外觸發{C:attention}#1#{}次",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_seaking = {
                name = '金魚王',      
                text = {
                    "在手牌中的{C:attention}黃金牌{}",
                    "會額外觸發{C:attention}#1#{}次",
                } 
            },
            j_poke_staryu = {
                name = '海星星',      
                text = {
                    "每張打出的{C:diamonds}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}水之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_starmie = {
                name = '寶石海星',      
                text = {
                    "每張打出的{C:diamonds}#3#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數及{C:money}$#2#{}"
                } 
            },
            j_poke_mrmime = {
                name = '魔牆人偶',      
                text = {
                    "額外觸發在手牌中",
                    "最左邊的手牌{C:attention}#1#{}次"
                } 
            },
            j_poke_scyther = {
                name = '飛天螳螂',      
                text = {
                    "選擇盲注後，摧毀右邊的小丑牌並獲得{C:mult}+#2#{}倍數",
                    "如果被摧毀的小丑牌是{C:red}稀有{}或以上",
                    "新增{C:attention}銀箔{}，{C:attention}全息{}或{C:attention}彩色{}版本",
                    "{C:inactive}（附上{C:metal}鋼{}{C:inactive}貼紙或使用{C:attention,s:0.8}硬石頭{C:inactive,s:0.8}牌後進化）{}",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive} 倍數）"
                } 
            },
            j_poke_jynx = {
                name = '迷唇姐',      
                text = {
                    "選擇{C:attention}盲注{}後，如果牌組有多於{C:attention}#2#{}張牌",
                    "將會獲得{C:attention}+#1#{}手牌數量",
                    "{br:4}此為分隔線",
                    "從{C:attention}商店{}，{C:attention}標準{}禮包，",
                    "{C:spectral}神秘生物{}及特定的小丑牌",
                    "加入到牌組的{C:attention}卡牌{}會被{C:attention}複製{}"
                } 
            },
            j_poke_electabuzz = {
                name = '電擊獸',      
                text = {
                    "當回合結束時，每次{C:attention}賣出{}一張牌",  
                    "會把這張牌的{C:attention}出售價值{}提升{C:money}$#1#{}",
                    "{br:3.5}此為分隔線",
                    "回合結束時，會獲得等同於",
                    "這張小丑牌出售價格的{C:attention}#2#%{}的金錢{C:inactive}（上捨至整數）{}",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_magmar = {
                name = '鴨嘴火獸',      
                text = {
                    "如果回合中的{C:attention}第一次{}棄牌只有{C:attention}一{}張牌",
                    "摧毀它並獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_pinsir = {
                name = '凱羅斯',
                text = {
                    "如果得分牌",
                    "和{C:attention}在手牌中{}{C:attention}牌級{}相同",
                    "倍數{X:mult,C:white} X#1# {}",
                } 
            },
            j_poke_mega_pinsir = {
                name = '超級凱羅斯',
                text = {
                    "打出的{C:attention}無加強{}的卡牌",
                    "會在得分時給予{X:mult,C:white} X#1# {}倍數",
                } 
            },
            j_poke_tauros = {
                name = '肯泰羅（首領）',
                text = {
                    "每張{C:attention}肯泰羅{}及{C:attention}大奶罐{}小丑牌",
                    "會給予{X:mult,C:white} X#1#{}倍數",
                    "{br:4}此為分隔線",
                    "每次在商店中刷新會有{C:green}#2#/#3#{}的機率",
                    "新增一張{C:attention}肯泰羅（牛群）{}到商店中",
                } 
            },
            j_poke_taurosh = {
                name = '肯泰羅（牛群）',
                text = {
                    "倍數{C:mult}+#1#{}",
                } 
            },
            j_poke_magikarp = {
                name = '鯉魚王',
                text = {
                    "{C:chips}+#2#{}籌碼",
                    "附上{C:attention}水花噴濺{}效果",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_gyarados = {
                name = '暴鯉龍',
                text = {
                    "倍數{X:red,C:white} X#1# {}",
                } 
            },
            j_poke_mega_gyarados = {
                name = '超級暴鯉龍',
                text = {
                    "倍數{X:red,C:white} X#1# {}",
                    "{br:1.5}此為分隔線",
                    "消除每個{C:attention}Boss盲注{}的限制效果",
                } 
            },
            j_poke_lapras = {
                name = '拉普拉斯',
                text = {
                    "本局遊戲中每個已跳過的{C:attention}盲注{}",
                    "會給這張牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#1# {C:inactive}籌碼）"
                } 
            },
            j_poke_ditto = {
                name = '百變怪',
                text = {
                    "賣出這張牌來產生最左邊的小丑牌的副本",
                    "副本帶有{C:attention}有限期{}貼紙及{C:colorless}一般{}貼紙",
                    "{C:inactive}（移除永恆貼紙，不能複製其他百變怪）{}",
                } 
            },
            j_poke_eevee = {
                name = '伊布',
                text = {
                    "在{C:attention}頭五次{}的{C:green}刷新{}中",
                    "每次{C:green}刷新{}會獲得{C:money}$#1#{}",
                    "{C:inactive}（每種的進化之石會有不同的進化）{}",
                    "{C:inactive}目前已刷新{C:attention}#2#{C:inactive}/#3#次"
                } 
            },
            j_poke_vaporeon = {
                name = '水伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}刷新{}",
                    "會給這張牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前已刷新{C:attention}#3#{}{C:inactive}/3次）",
                    "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼）",
                } 
            },
            j_poke_jolteon = {
                name = '雷伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}刷新{}",
                    "會給予{C:money}$#1#{}",
                    "{C:inactive}（目前已刷新{C:attention}#2#{}{C:inactive}/3次）"
                } 
            },
            j_poke_flareon = {
                name = '火伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}刷新{}",
                    "會給這張牌{X:red,C:white} X#2# {}倍數",
                    "{C:inactive}（目前已刷新{C:attention}#3#{}{C:inactive}/3次）",
                    "{C:inactive}（目前會給予{X:red,C:white} X#1# {}{C:inactive}倍數）"
                } 
            },
            j_poke_porygon = {
                name = '多邊獸',
                text = {
                    "能量上限{C:pink}+1{}",
                    "每次打開{C:attention}擴充包{}時",
                    "產生一張{C:pink}能量{}牌",
                    "{C:inactive}（使用{} {C:attention}升級資料{}{C:inactive}牌進化）"
                } 
            },
            j_poke_omanyte = {
                name = '菊石獸',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{}：產生一張隨機的{C:attention}塔羅牌{}",
                    "{C:attention}兩張{}：獲得{C:money}$#2#{}",
                    "{C:attention}三張或以上{}：產生一張隨機的{C:item}物品牌{}",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive,s:0.8}（在觸發第三級{C:attention,s:0.8}#3#{C:inactive,s:0.8}次後進化）"
                } 
            },
            j_poke_omastar = {
                name = '多刺菊石獸',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{}：產生一張隨機的{C:attention}塔羅牌{}",
                    "{C:attention}兩張{}：獲得{C:money}$#2#{}",
                    "{C:attention}三張{}：產生一張隨機的{C:item}物品牌{}",
                    "{C:attention}四張或以上{}：每個回合一次，產生一個{C:attention}標籤{}",
                    "{C:inactive}（必須有空位）",
                } 
            },
            j_poke_kabuto = {
                name = '化石盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{}：{C:chips}+#2#{}籌碼",
                    "{C:attention}兩張{}：得分的{C:attention}#1#{}可永久獲得{C:chips}+#3#{}籌碼",
                    "{C:attention}三張或以上{}：{C:chips}+#4#{}籌碼",
                    "{C:inactive,s:0.8}（在觸發第三級{C:attention,s:0.8}#5#{C:inactive,s:0.8}次後進化）"
                } 
            },
            j_poke_kabutops = {
                name = '鐮刀盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{}：{C:chips}+#2#{}籌碼",
                    "{C:attention}兩張{}：得分的{C:attention}#1#{}可永久獲得{C:chips}+#3#{}籌碼",
                    "{C:attention}三張{}：{C:chips}+#4#{}籌碼",
                    "{C:attention}四張或以上{}：額外觸發{C:attention}頭兩張{}打出的卡牌{C:attention}#5#{}次",
                } 
            },
            j_poke_aerodactyl = {
                name = '化石翼龍',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{}：倍數{X:red,C:white}X#2#{}",
                    "{C:attention}兩張{}：這張小丑牌會獲得{X:red,C:white}X#3#{}倍數",
                    "{C:attention}三張{}：第一張得分及未加強的{C:attention}#1#{}會變為{C:attention}玻璃牌{}",
                    "{C:attention}四張或以上{}：這張牌的{X:red,C:white}X{}倍數加成{C:attention}翻倍"
                } 
            },
            j_poke_mega_aerodactyl = {
                name = '超級化石翼龍',
                text = {
                    "每張打出的{C:attention}#1#{}",
                    "會在得分時給予{X:mult,C:white} X#2# {}倍數乘以打出的{C:attention}#1#{}的數量",
                    "{br:3.5}此為分隔線",
                    "打出的{C:attention}#1#{}有{C:green}#3#/#4#{}的機率被摧毀",
                } 
            },
            j_poke_snorlax = {
                name = '卡比獸',
                text = {
                    "{C:attention}持有吃剩的東西牌{}",
                    "回合結束時，每張{C:attention}吃剩的東西{}牌",
                    "會給這張牌{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white} X#2# {}{C:inactive}倍數）"
                } 
            },
            j_poke_articuno = {
                name = '急凍鳥',
                text = {
                    "新增{C:attention}銀箔版本{}及隨機的{C:attention}封蠟章{}",
                    "到打出的卡牌中最左邊的卡牌",
                } 
            },
            j_poke_zapdos = {
                name = '閃電鳥',
                text = {
                    "每持有的{C:money}$#2#{}",
                    "會給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_moltres = {
                name = '火焰鳥',
                text = {
                    "對回合中第一個{C:attention}棄掉{}的牌型",
                    "的等級提升{C:attention}3{}個等級",
                } 
            },
            j_poke_dratini = {
                name = '迷你龍',
                text = {
                    "如果打出的手牌只有{C:attention}#3#{}張或更少的卡牌",
                    "這張小丑牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在擁有{C:mult}+10{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_dragonair = {
                name = '哈克龍',
                text = {
                    "如果打出的手牌只有{C:attention}#3#{}張或更少的卡牌",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在擁有{C:mult}+30{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_dragonite = {
                name = '快龍',
                text = {
                    "倍數{C:mult}+#1#{}",
                    "{br:1.6}此為分隔線",
                    "如果打出的手牌只有{C:attention}1{}張牌",
                    "那張牌會額外觸發{C:attention}#2#{}次"
                } 
            },
            j_poke_mewtwo = {
                name = '超夢',
                text = {
                    "離開商店後，{C:attention}複製及摧毀{}最左邊的{C:attention}小丑牌{}",
                    "副本帶有{C:dark_edition}彩色{}版本及{C:attention}+1{}{C:pink}能量{}",
                    "每張{C:dark_edition}彩色{}版本的小丑牌給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive}（不能摧毀自身）",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "超級超夢 X",
                text = {
                    "所有小丑牌會給予{X:mult,C:white} X#1# {}倍數",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "超級超夢 Y",
                text = {
                    "離開商店後",
                    "對最左邊的小丑牌給予{C:attention}+2{}{C:pink}能量{}",
                    "{br:2}此為分隔線",
                    "擊敗{C:attention}Boss盲注{}後",
                    "能量上限{C:pink}+1{}",
                } 
            },
            j_poke_mew = {
                name = '夢幻',
                text = {
                    "離開商店後，產生一張隨機的",
                    "{C:dark_edition}負片{}{C:attention}塔羅{}，{C:spectral}幻靈{}或{C:item}物品{}牌",
                    "有機率產生一張隨機的{C:dark_edition}負片{}小丑牌",
                } 
            },
            j_poke_chikorita = {
                name = '菊草葉',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "{C:attention}手牌{}中每{C:attention}三{}張卡牌",
                    "會在回合結束時給予{C:money}$#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_bayleef = {
                name = '月桂葉',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "{C:attention}手牌{}中每{C:attention}兩{}張卡牌",
                    "會在回合結束時給予{C:money}$#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_meganium = {
                name = '大竺葵',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "{C:attention}手牌{}中每張卡牌",
                    "會在回合結束時給予{C:money}$#2#{}",
                }
            },
            j_poke_cyndaquil = {
                name = '火球鼠',
                text = {
                    "棄牌次數{C:red}+#1#{}",
                    "每個剩餘的{C:attention}棄牌次數",
                    "會給予{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#4#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_quilava = {
                name = '火岩鼠',
                text = {
                    "棄牌次數{C:red}+#1#{}",
                    "每個剩餘的{C:attention}棄牌次數",
                    "會給予{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#4#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_typhlosion = {
                name = '火爆獸',
                text = {
                    "棄牌次數{C:red}+#1#{}",
                    "每個剩餘的{C:attention}棄牌次數",
                    "會給予{C:mult}+#2#{}倍數及{X:red,C:white} X#3# {}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#4#{C:inactive}倍數及{X:red,C:white} X#5# {C:inactive}倍數）",
                }
            },
            j_poke_totodile = {
                name = '小鋸鱷',
                text = {
                    "出牌次數{C:blue}+#1#{}",
                    "在這個回合中，每張打出的卡牌",
                    "會給予這張小丑牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#3#{C:inactive}籌碼）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#4#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_croconaw = {
                name = '藍鱷',
                text = {
                    "出牌次數{C:blue}+#1#{}",
                    "在這個回合中，每張打出的卡牌",
                    "會給予這張小丑牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#3#{C:inactive}籌碼）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#4#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_feraligatr = {
                name = '大力鱷',
                text = {
                    "出牌次數{C:blue}+#1#{}",
                    "在這個回合中，每張打出的卡牌",
                    "會給予這張小丑牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#3#{C:inactive}籌碼）",
                }
            },
            j_poke_sentret = {
                name = '尾立',
                text = {
                    "每次{C:attention}連續{}地不打出上一個的牌型",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（上一個牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（目前會給予{C:mult}+#1#{} {C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+15{} {C:inactive}倍數時進化）"
                }  
            },
            j_poke_furret = {
                name = '大尾立',
                text = {
                    "如果打出的牌型不是上一個的牌型",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（上一個牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（目前會給予{C:mult}+#1#{} {C:inactive}倍數）",
                }  
            },
            j_poke_hoothoot = {
                name = '咕咕',
                text = {
                    "預視{C:purple}#1#{}張牌",
                    "每張{C:attention}預視{}的卡牌",
                    "會給予它們合共的籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_noctowl = {
                name = '貓頭夜鷹',
                text = {
                    "預視{C:purple}#1#{}張牌",
                    "每張{C:attention}預視{}的卡牌",
                    "會給予它們合共的籌碼",
                }
            },
            j_poke_ledyba = {
                name = "芭瓢蟲",
                text = {
                  "每{C:attention}4{}張在牌組中剩餘的卡牌",
                  "會給予{C:mult}+#1#{}倍數",
                  "{C:inactive}（目前會給予{C:mult}+#3#{C:inactive}倍數）",
                  "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
                }
            },
            j_poke_ledian = {
                name = "安瓢蟲",
                text = {
                  "每{C:attention}2{}張在牌組中剩餘的卡牌",
                  "會給予{C:mult}+#1#{}倍數",
                  "{C:inactive}（目前會給予{C:mult}+#2#{C:inactive}倍數）",
                }
            },
            j_poke_spinarak = {
                name = "圓絲蛛",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "加成有{C:green}#2#/#3#{}的機率改為{C:chips}+#5#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention}#4#{C:inactive}個回合後進化）",
                }
            },
            j_poke_ariados = {
                name = "阿利多斯",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "加成有{C:green}#2#/#3#{}的機率改為{C:chips}+#4#{}籌碼",
                }
            },
            j_poke_crobat = {
                name = '叉字蝠',
                text = {
                    "{C:attention}隨機{}所有得分牌現有的強化效果",
                    "從{C:attention}倍數{}及{C:attention}萬能{}牌獲得{C:mult}+#2#{}倍數",
                    "從{C:attention}獎勵{}及{C:attention}石頭{}牌獲得{C:chips}+#4#{}籌碼",
                    "從{C:attention}鋼鐵{}及{C:attention}玻璃{}牌獲得{X:red,C:white}X#6#{}倍數",
                    "從{C:attention}黃金{}及{C:attention}幸運{}牌獲得{C:money}$#8#{}金錢",
                    "{C:inactive}（目前會給予{C:mult}+#1#{}，{C:chips}+#3#{}，{X:red,C:white}X#5#{}，{C:inactive}回合結束時，{}{C:money}$#7#{}）"
                } 
            },
            j_poke_chinchou = {
                name = "燈籠魚",
                text = {
                  "如果得分的手牌包含{C:attention}對子",
                  "將給予{C:chips}+#1#{}籌碼並獲得{C:money}$#2#{}",
                  "{C:inactive}（在{C:attention}#3#{C:inactive}個回合後進化）",
                }
            },
            j_poke_lanturn = {
                name = "電燈怪",
                text = {
                  "如果得分的手牌包含{C:attention}對子",
                  "將給予{C:chips}+#1#{}籌碼並獲得{C:money}$#2#{}",
                  "{br:3}此為分隔線",
                  "每張{X:water,C:white}水{}屬性的小丑牌會額外給予{C:chips}+#3#{}籌碼",
                  "每張{X:lightning,C:black}雷{}屬性的小丑牌會額外給予{C:money}$#4#{}",
                  "{C:inactive}（目前會給予{C:chips}+#6#{C:inactive}籌碼及{C:money}$#5#{C:inactive}）"
                }
            },
            j_poke_pichu = {
                name = '皮丘',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#2# {}",
                    "回合結束時，獲得{C:money}$#1#{}",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_cleffa = {
                name = '皮寶寶',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "回合結束時，產生一張{C:dark_edition}負片{}{C:attention}月亮{}牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_igglybuff = {
                name = '寶寶丁',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "回合結束時，產生一張{C:dark_edition}負片{}{C:attention}世界{}牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_togepi = {
                name = '波克比',
                text = {
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_togetic = {
                name = '波克基古',
                text = {
                    "{C:attention}幸運牌{}有{C:green}#1#/#2#{}的機率",
                    "會給予{C:chips}+#4#{}籌碼",
                    "並有{C:green}#1#/#3#{}的機率給予{X:mult,C:white}X#5#{}倍數",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}光之石{C:inactive,s:0.8}牌來進化）"
                }
            },
            j_poke_natu = {
                name = '天然雀',
                text = {
                    "{C:planet}行星牌{}會給予額外1個等級",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_xatu = {
                name = '天然鳥',
                text = {
                    "{C:planet}行星牌{}會給予額外{C:attention}#1#{}個等級",
                    "{C:planet}天外擴充包{}會帶有所有{C:planet}行星牌{}",
                }
            },
            j_poke_mareep = {
                name = "咩利羊",
                text = {
                  "當有一張或以上{C:attention}卡牌{}{C:attention}新增{}至牌組中",
                  "這張小丑牌將獲得{X:mult,C:white}X#2#{}倍數",
                  "{br:3}此為分隔線",
                  "當有一張或以上{C:attention}卡牌{}{C:attention}被摧毀{}",
                  "這張小丑牌將失去{X:mult,C:white}X#3#{}倍數",
                  "{C:inactive}（在{X:mult,C:white}X#1#{C:inactive} / X#4#倍數時進化）",
                }
            },
            j_poke_flaaffy = {
                name = "茸茸羊",
                text = {
                  "當有一張或以上{C:attention}卡牌{}{C:attention}新增{}至牌組中",
                  "這張小丑牌將獲得{X:mult,C:white}X#2#{}倍數",
                  "{br:3}此為分隔線",
                  "當有一張或以上{C:attention}卡牌{}{C:attention}被摧毀{}",
                  "這張小丑牌將失去{X:mult,C:white}X#3#{}倍數",
                  "{C:inactive}（在{X:mult,C:white}X#1#{C:inactive} / X#4#倍數時進化）",
                }
            },
            j_poke_ampharos = {
                name = "電龍",
                text = {
                  "當有一張或以上{C:attention}卡牌{}{C:attention}新增{}至牌組中",
                  "這張小丑牌將獲得{X:mult,C:white}X#2#{}倍數",
                  "{C:inactive}（目前會給予：{X:mult,C:white}X#1#{C:inactive}倍數）",
                }
            },
            j_poke_marill = {
                name = '瑪力露',
                text = {
                    "如果打出的手牌",
                    "包含得分的{C:attention}非加強牌{}及得分的{C:attention}加強牌{}，倍數{X:mult,C:white}X#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#張獎勵牌{C:inactive,s:0.8}得分後進化）",
                }
            },
            j_poke_azumarill = {
                name = '瑪力露麗',
                text = {
                    "倍數{X:mult,C:white}X#1#{}",
                    "如果打出的手牌",
                    "包含得分的{C:attention}非獎勵牌{}及得分的{C:attention}獎勵牌{}",
                    "對以上的加成增加雙倍",
                }
            },
            j_poke_sudowoodo = {
                name = "樹才怪",
                text = {
                  "{C:attention}轉換屬性的小丑牌{}",
                  "打出的{C:attention}人頭牌{}會在得分時給予{C:mult}+#1#{}倍數",
                  "{br:2}此為分隔線",
                  "如果這張小丑牌不是{X:grass,C:white}草屬性{}",
                  "或是擁有{X:water,C:white}水屬性{}的小丑牌",
                  "所有{C:attention}人頭牌{}會額外觸發一次",
                }
            },
            j_poke_bellossom = {
                name = '美麗花',
                text = {
                    "每張打出的{C:attention}奇數{}牌",
                    "會在得分時給予{C:mult}+#1#{}倍數或變成{C:attention}萬能牌{}",
                    "如果已經是{C:attention}萬能牌{}，新增{C:attention}銀箔{}，",
                    "{C:attention}全息{}或{C:attention}彩色{}版本"
                } 
            },
            j_poke_politoed = {
                name = '蚊香蛙皇',
                text = {
                    "每張打出的{V:1}#2#{}花色的卡牌",
                    "會在得分時給予{C:mult}+#1#{}倍數",
                    "{br:5}此為分隔線",
                    "那些牌會依{X:water,C:white}水屬性{}",
                    "的小丑牌的數量而額外觸發",
                    "{C:inactive,s:0.8}（{C:attention,s:0.8}#7#{}{C:inactive,s:0.8}次的額外觸發數量會平均分配到每張的得分牌）{}",
                    "花色在出牌後按次序地變更{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_hoppip = {
                name = '毽子草',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "頭兩張{C:attention}棄掉的卡牌{}會加強為{C:dark_edition}萬能牌{}",
                    "這張小丑牌在棄牌後會{S:1.1,C:red,E:2}自我毀滅{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_skiploom = {
                name = '毽子花',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "頭三張{C:attention}棄掉的卡牌{}會加強為{C:dark_edition}萬能牌{}",
                    "這張小丑牌在棄牌後會{S:1.1,C:red,E:2}自我毀滅{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_jumpluff = {
                name = '毽子棉',
                text = {
                    "手牌數量{C:attention}+#1#{}",
                    "{C:attention}棄掉的卡牌{}會加強為{C:dark_edition}萬能牌{}",
                    "這張小丑牌在棄牌後會{S:1.1,C:red,E:2}自我毀滅{}",
                }
            },
            j_poke_aipom = {
              name = "長尾怪手",
              text = {
                "出牌次數{C:chips}-#3#{}",
                "所有{C:attention}同花{}及{C:attention}順子{}",
                "可以只用{C:attention}3{}張卡牌來湊成",
                "{C:inactive,s:0.8}（在打出{C:attention,s:0.8}#1#{C:inactive,s:0.8}個順子及{C:attention,s:0.8}#2#{C:inactive,s:0.8}個同花後進化）{}"
              }
            },
            j_poke_sunkern = {
                name = '向日種子',
                text = {
                    "選擇{C:attention}盲注{}或{C:attention}打出{}手牌時，",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}日之石{C:inactive,s:0.8}牌來進化）"
                }
            },
            j_poke_sunflora = {
                name = '向日花怪',
                text = {
                    "選擇{C:attention}盲注{}、{C:attention}打出{}手牌、",
                    "{C:attention}棄掉{}手牌，{C:attention}使用{}消耗牌、",
                    "及{C:attention}賣出{}卡牌時，會在回合結束時獲得{C:money}$#1#{}",
                }
            },
            j_poke_wooper = {
                name = "烏波",
                text = {
                  "倍數{C:mult}+#1#{}",
                  "在{C:attention}牌組{}中的每張{C:attention}人頭牌{}",
                  "會對這張小丑牌減少{C:mult}-#3#{}倍數",
                  "{C:inactive}（目前會給予{C:mult}+#4#{C:inactive}倍數）",
                  "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
                }
            },
            j_poke_quagsire = {
                name = "沼王",
                text = {
                  "倍數{C:mult}+#1#{}",
                  "在{C:attention}牌組{}中的每張{C:attention}人頭牌{}",
                  "會對這張小丑牌減少{C:mult}-#2#{}倍數",
                  "{C:inactive}（目前會給予{C:mult}+#3#{C:inactive}倍數）",
                }
            },
            j_poke_yanma = {
              name = "蜻蜻蜓",
              text = {
                "每張打出的{C:attention}3{}或{C:attention}6{}",
                "會在得分時給予{C:chips}+#2#{}籌碼及{C:mult}+#1#{}倍數",
                "有{C:green}#5#/#6#{}的機率",
                "改為{C:chips}+#4#{}籌碼及{C:mult}+#3#{}倍數",
                "{C:inactive,s:0.8}（在打出並得分的{C:attention,s:0.8}#7#{C:inactive,s:0.8}張3或6時進化）"
              }
            },
            j_poke_espeon = {
                name = '太陽伊布',
                text = {
                    "每張打出的{C:attention}#3#{}會{C:attention}額外觸發{}一次",
                    "{br:3}此為分隔線",
                    "每張打出的{V:1}#4#{}花色的卡牌",
                    "會在得分時會給予{X:red,C:white}X#2#{}倍數",
                    "{C:inactive,s:0.8}（觸發的{C:attention,s:0.8}牌級{C:inactive,s:0.8}及{C:attention,s:0.8}花色{C:inactive,s:0.8}會在每次{C:green,s:0.8}刷新{C:inactive,s:0.8}時{C:attention,s:0.8}隨機抽選{C:inactive,s:0.8}{C:inactive,s:0.8}）"
                } 
            },
            j_poke_umbreon = {
                name = '月亮伊布',
                text = {
                    "降低打出的{C:attention}#1#{}的牌級",
                    "{br:4}此為分隔線",
                    "每降低{C:inactive}[#3#]{}{C:attention}#2#{}個等級",
                    "將會產生一個{C:attention}軌道標籤{}或{C:dark_edition}負片標籤{}",
                    "{C:inactive,s:0.8}（需要的牌型會在每次{C:green,s:0.8}刷新{C:inactive,s:0.8}時{C:attention,s:0.8}轉換{C:inactive,s:0.8}）",
                } 
            },
            j_poke_murkrow = {
                name = "黑暗鴉",
                text = {
                  "每張持有的{X:dark,C:white}惡{}屬性的小丑牌",
                  "會給予{X:red,C:white}X#1#{}倍數",
                  "{C:inactive}（目前會給予{X:red,C:white} X#2#{C:inactive}倍數）",
                  "{C:inactive,s:0.8}（使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}牌進化）"
                }
              },
            j_poke_slowking = {
                name = '呆呆王',
                text = {
                    "每張打出的{C:attention}K{}會在得分時給予{X:red,C:white}X#1#{}倍數",
                    "每次出牌後增加{X:red,C:white}X#2#{}倍數",
                    "第一次出牌除外",
                    "回合結束後重設",      
                }
            },
            j_poke_misdreavus = {
                name = '夢妖',
                text = {
                    "打出的{C:attention}人頭牌{}",
                    "會在得分時會永久失去{C:chips}#1#{}籌碼",
                    "這張小丑牌會獲得失去的籌碼",
                    "{C:inactive}(目前會給予{C:chips}+#2#{C:inactive}籌碼）",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}牌進化）",
                }
            },
            j_poke_unown = {
                name = "未知圖騰",
                text = {
                  "{C:attention}偏好牌級：{} {C:inactive}（{C:attention}#2#{C:inactive}）",
                  "如果得分的手牌中",
                  "包含{C:attention}偏好牌級{}的卡牌，倍數{C:mult}+#1#{}",
                  "{br:2}此為分隔線",
                  "回合結束後會{S:1.1,C:red,E:2}自我摧毀{}",
                }
            },
            j_poke_wobbuffet = {
              name = "果然翁",
              text = {
                "打出的{C:attention}6{}、{C:attention}7{}、{C:attention}8{}、{C:attention}9{}及{C:attention}10{}",
                "會額外觸發一次",
                "{br:2}此為分隔線",
                "{C:attention}左邊揮發{}",
                "選擇盲注後",
                "對最右邊的小丑牌附上{C:attention}永恆{}貼紙",
              }
            },
            j_poke_girafarig = {
              name = "麒麟奇",
              text = {
                "如果打出的手牌包含{C:attention}兩對{}",
                "第一張及最後一張打出的{C:attention}人頭牌{}",
                "會在得分時給予{X:mult,C:white}X#1#{}倍數",
                "{C:inactive,s:0.8}（對{C:attention,s:0.8}2張{C:inactive,s:0.8}人頭牌使用{C:attention,s:0.8}死神{C:inactive,s:0.8}時進化）{}"
              }
            },
            j_poke_pineco = {
              name = "榛果球",
              text = {
                "{C:attention}左邊揮發{}",
                "{C:chips}+#1#{}籌碼並自我減益",
                "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
              }
            },
            j_poke_forretress = {
              name = "佛烈托斯",
              text = {
                "當{C:attention}在手牌中{}的{C:attention}鋼鐵牌{}觸發時",
                "這張小丑牌會獲得{C:chips}+#2#{}籌碼",
                "{br:2}此為分隔線",
                "{C:attention}左邊揮發{}",
                "{C:chips}+#1#{}籌碼並自我減益",
              }
            },
            j_poke_dunsparce = {
                name = '土龍弟弟',
                text = {
                  "{C:inactive}有作用嗎？",
                  "如果你在商店{C:green}刷新{}，",
                  "這張小丑牌會在離開商店後{S:1.1,C:red,E:2}自我毀滅{}",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_gligar = {
                name = '天蠍',
                text = {
                    "每張在{C:attention}手中{}的{V:1}#2#{}花色的卡牌",
                    "會對打出的卡牌給予{X:mult,C:white}X#1#{}倍數",
                    "{C:inactive, s:0.8}（花色會在每個回合變更）",
                    "{C:inactive}（目前會給予：{X:mult,C:white}X#3#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}暗之石{C:inactive,s:0.8}牌進化）",
                }
            },
            j_poke_steelix = {
                name = '大鋼蛇',
                text = {
                    "{C:attention}第一次出牌{}時，最左邊的得分牌",
                    "會變成{C:attention}鋼鐵牌{}",
                    "在{C:attention}手中{}的{C:attention}石頭牌{}會變成{C:attention}鋼鐵牌{}",
                } 
            },
            j_poke_snubbull = {
                name = '布魯',
                text = {
                    "第一張打出的{C:attention}人頭牌{}",
                    "會在得分時給予{X:mult,C:white}X#1#{}倍數",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_granbull = {
                name = '布魯皇',
                text = {
                    "第一張打出的{C:attention}人頭牌{}",
                    "會在得分時給予{X:mult,C:white}X#1#{}倍數",
                    "如果卡牌是{C:attention}Q{}，會改為給予{X:mult,C:white}X#2#{}倍數",
                }
            },
            j_poke_qwilfish = {
                name = '千針魚',
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "打出手牌時，每張{C:attention}在手牌中的陷阱牌{}",
                    "會給予這張小丑牌{C:chips}+#3#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#4#{C:inactive}籌碼）",
                }
            },
            j_poke_scizor = {
                name = '巨鉗螳螂',
                text = {
                    "選擇盲注後，摧毀右邊的小丑牌並獲得{C:mult}+#4#{}倍數",
                    "如果摧毀的小丑牌是{C:red}稀有{}或更高的稀有度時",
                    "這張牌會獲得{C:attention}銀箔{}，{C:attention}全息{}或{C:attention}彩色{}",
                    "那些版本會在這張牌{C:attention}疊加{}",
                    "{C:inactive,s:0.8}（會優先選擇被摧毀的小丑牌如有的版本）{}",
                    "{C:inactive}（目前會給予{C:mult}+#1#{}{C:inactive}倍數，{C:chips}+#2#{}{C:inactive}籌碼，{X:red,C:white}X#3#{} {C:inactive}倍數)"
                } 
            },
            j_poke_shuckle = {
                name = "壺壺",
                text = {
                  "選擇{C:attention}盲注{}後，摧毀最左邊的{C:attention}消耗牌{}",
                  "並產生一張{C:item}樹果汁{}牌",
                  "{C:inactive}（不能摧毀{C:item}樹果汁{C:inactive}牌）"
                }
            },
            j_poke_sneasel = {
                name = '狃拉',
                text = {
                    "如果打出的手牌為單張{C:attention}#1#{}",
                    "摧毀那張牌並獲得{C:money}$#2#",
                    "{C:inactive,s:0.8}（需要的牌級在每個回合變更）{}",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}牌進化）",
                }
            },
            j_poke_teddiursa = {
              name = "熊寶寶",
              text = {
                "當有{C:attention}擴充包{}被跳過時",
                "這張小丑牌將獲得{C:mult}+#2#{}倍數",
                "{C:inactive}（在{C:mult}+#1#{C:inactive} / #3# 倍數後進化）",
              }
            },
            j_poke_ursaring = {
              name = "圈圈熊",
              text = {
                "當有{C:attention}擴充包{}被跳過時",
                "這張小丑牌將獲得{C:mult}+#2#{}倍數",
                "並產生一張隨機的{C:item}物品牌{}",
                "{C:inactive,s:0.8}（必須有空位）",
                "{C:inactive}（目前會給予：{C:mult}+#1#{C:inactive}倍數）",
                "{C:inactive,s:0.8}（使用{C:attention,s:0.8}月之石{C:inactive,s:0.8}牌進化）",
              }
            },
            j_poke_slugma = {
              name = "熔岩蟲",
              text = {
                "每打出第{C:attention}4{}{C:inactive}[#4#]{}次手牌時",
                "在手牌得分後，摧毀{C:attention}手牌{}中的第一張卡牌",
                "並對這張小丑牌給予{C:chips}+#2#{}籌碼",
                "{C:inactive}（在{C:chips}+#1#{C:inactive} / #3#籌碼時進化）",
              }
            },
            j_poke_magcargo = {
                name = "熔岩蝸牛",
                text = {
                  "每打出第{C:attention}3{}{C:inactive}[#3#]{}次手牌時",
                  "在手牌得分後，摧毀{C:attention}手牌{}中的第一張卡牌",
                  "並對這張小丑牌給予{C:chips}+#2#{}籌碼",
                  "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼時進化）",
                }
            },
            j_poke_swinub = {
                name = "小山豬",
                text = {
                  "每張在得分牌中的{C:attention}石頭牌{}及{C:attention}玻璃牌{}",
                  "會對第一張打出的卡牌給予{C:mult}+#1#{}倍數",
                  "{br:2}此為分隔線",
                  "回合結束後",
                  "有{C:green}#3#/#4#{}的機率獲得{C:money}$#2#{} ",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#5#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_piloswine = {
              name = "長毛豬",
              text = {
                "每張在得分牌中的{C:attention}石頭牌{}及{C:attention}玻璃牌{}",
                "會對第一張打出的卡牌給予{C:mult}+#1#{}倍數",
                "{br:2}此為分隔線",
                "回合結束後",
                "有{C:green}#3#/#4#{}的機率獲得{C:money}$#2#{} ",
                "{C:inactive,s:0.8}（在{C:attention,s:0.8}#5#{C:inactive,s:0.8}張石頭牌或玻璃牌得分後進化）",
              }
            },
            j_poke_heracross = {
                name = '赫拉克羅斯',
                text = {
                    "如果得分牌沒有與{C:attention}手牌{}中",
                    "{C:attention}相同牌級{}的卡牌，倍數{X:mult,C:white} X#1# {}",
                }
            },
            j_poke_corsola = {
                name = '太陽珊瑚',
                text = {
                    "每張在牌組中的{C:attention}加強牌{}",
                    "會給予{C:mult}+#1#{}倍數",
                    "{br:2}此為分隔線",
                    "如果打出的手牌包含{C:attention}5張得分的加強牌{}",
                    "將會產生一張{C:attention}基礎的{}{X:water,C:white}水屬性{}小丑牌",
                    "{C:inactive,s:0.8}（必須有空位）",
                    "{C:inactive}（目前會給予{C:mult}+#2#{C:inactive}倍數）",
                }
            },
            j_poke_remoraid = {
                name = "鐵炮魚",
                text = {
                  "每個回合中頭{C:attention}#3#{} {C:inactive}[#4#]{}張的得分牌",
                  "會額外觸發一次",
                  "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
                }
            },
              j_poke_octillery = {
                name = "章魚桶",
                text = {
                  "每個回合中頭{C:attention}#2#{} {C:inactive}[#3#]{}張的得分牌",
                  "會額外觸發一次",
                }
            },
            j_poke_delibird = {
                name = "信使鳥",
                text = {
                  "回合結束後，",
                  "獲得一個{S:1.1,C:green,E:2}禮物{}",
                  "{C:inactive}（必須有空位）"
                }
            },
            j_poke_mantine = {
                name = "巨翅飛魚",
                text = {
                  "每張在手牌中或打出並計分的{C:attention}黃金牌",
                  "會給予此牌{C:chips}+#2#{}籌碼",
                  "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼）",
                }
            },
            j_poke_skarmory = {
                name = '盔甲鳥',
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每張{C:attention}在手牌中的陷阱牌{}",
                    "會給予{X:mult,C:white}X#3#{}倍數",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#4#{C:inactive}倍數）",
                }
            },
            j_poke_kingdra = {
                name = '刺龍王',
                text = {
                    "每張打出的{C:attention}6{}",
                    "會在得分時給這張牌{C:mult}+#2#{}倍數",
                    "如果手牌中有一張{C:attention}K{}",
                    "以上的加成會改為{X:red,C:white}X#4#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數，{X:red,C:white}X#3#{}倍數{C:inactive}）",
                } 
            },
            j_poke_phanpy = {
                name = "小小象",
                text = {
                  "{C:attention}連續{}打出包含{C:attention}5{}張得分牌的手牌時",
                  "這張小丑牌會獲得{X:red,C:white}X#2#{}倍數",
                  "{C:inactive}（目前會給予{X:red,C:white}X#1#{C:inactive}倍數）",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_donphan = {
                name = "頓甲",
                text = {
                  "{C:attention}連續{}打出包含{C:attention}5{}張得分牌的手牌時",
                  "這張小丑牌會獲得{X:red,C:white}X#2#{}倍數",
                  "{C:inactive}（目前會給予{X:red,C:white}X#1#{C:inactive}倍數）",
                }
            },
            j_poke_porygon2 = {
                name = '多邊獸Ⅱ',
                text = {
                    "能量上限{C:pink}+2{}",
                    "每次打開{C:attention}擴充包{}時",
                    "產生一張與最左邊的小丑牌的{C:pink}屬性{}",
                    "相同的{C:pink}能量{}牌",
                    "{C:inactive}（使用{}{C:attention}可疑修正檔{}{C:inactive}牌進化）"
                } 
            },
            j_poke_stantler = {
                name = "驚角鹿",
                text = {
                    "預視{C:purple}#1#{}張牌",
                    "按照{C:attention}預視{}的卡牌中牌級{C:attention}最高{}的卡牌",
                    "向倍數追加其牌級{C:attention}兩倍{}的數量",
                    "{C:inactive,s:0.8}（在觸發{C:attention,s:0.8}#2#{C:inactive,s:0.8}次後進化）",
                }
            },
            j_poke_smeargle = {
                name = "圖圖犬",
                text = {
                  "選擇盲注後",
                  "對右邊的{C:attention}小丑牌{}的能力進行{C:attention}寫生{}",
                  "{br:2}此為分隔線",
                  "附上{C:attention}模糊小丑{}的效果",
                }
            },
            j_poke_tyrogue = {
                name = '無畏小子',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "在回合的{C:attention}第一次出牌或棄牌{}中",
                    "如果選擇了{C:attention}五{}張牌，有隨機一張牌",
                    "會複製如果是出牌，或摧毀如果是棄牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }  
            },
            j_poke_hitmontop = {
                name = '戰舞郎',
                text = {
                    "倍數{X:red,C:white} X#1# {}",
                    "選擇盲注時",
                    "如果你的牌組正好有{C:attention}#2#{}張牌",
                    "這張牌會獲得{X:red,C:white} X#3# {}倍數"
                } 
            },
            j_poke_smoochum = {
                name = '迷唇娃',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "當這個小丑牌進化時",
                    "產生一個{C:attention}標準{}標籤",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_elekid = {
                name = '電擊怪',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "當這個小丑牌進化時",
                    "產生一個{C:attention}兌換券{}標籤",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_magby = {
                name = '鴨嘴寶寶',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "棄牌次數{C:red}+#2#{}",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_houndour = {
              name = "戴魯比",
              text = {
                "如果你棄掉多於{C:attention}3{}張卡牌",
                "你也會自動棄掉{C:attention}#3#{}張{C:attention}手中{}的隨機卡牌",
                "{br:2}此為分隔線",
                "棄掉的卡牌會永久獲得{C:mult}+#1#{}倍數",
                "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
              }
            },
            j_poke_houndoom = {
              name = "黑魯加",
              text = {
                "如果你棄掉多於{C:attention}3{}張卡牌",
                "你也會自動棄掉{C:attention}所有手中{}的卡牌",
                "{br:2}此為分隔線",
                "棄掉的卡牌會永久獲得{C:mult}+#1#{}倍數",
              }
            },
            j_poke_miltank = {
                name = "大奶罐",
                text = {
                  "回合結束時",
                  "每張持有的{C:colorless}一般{}小丑牌",
                  "會給予{C:money}$#1#{}", 
                  "{C:inactive}（目前會給予{C:money}$#2#{C:inactive}）{}"
                }
            },
            j_poke_blissey = {
                name = '幸福蛋',
                text = {
                    "在每個回合中，頭{C:attention}#1#{}張被觸發的{C:attention}幸運牌{}",
                    "會被複製並帶有{C:dark_edition}彩色{}版本到牌組，",
                    "然後抽到{C:attention}手牌{}中",
                    "{C:inactive}（目前有{C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive}）"
                } 
            },
            j_poke_raikou = {
                name = "雷公",
                text = {
                  "如果第一次出牌中只有{C:attention}1{}張牌",
                  "轉換{C:attention}3{}張在{C:attention}手中{}的卡牌",
                  "至打出的{C:attention}牌級{}並獲得{C:money}$#1#{}",
                }
            },
            j_poke_entei = {
                name = "炎帝",
                text = {
                  "如果{C:attention}第一次{}棄牌剛好有{C:attention}4{}張牌",
                  "摧毀其中一張卡牌並獲得{X:red,C:white}X#2#{}倍數",
                  "{C:inactive}（目前會給予：{X:red,C:white}X#1#{C:inactive}倍數）",
                }
            },
            j_poke_suicune = {
                name = "水君",
                text = {
                  "對打出的手牌中",
                  "每張卡牌的籌碼數量增加{C:attention}雙倍{}",
                  "{C:inactive}（最高可增至：{C:chips}+#1#{C:inactive}籌碼）",
                }
            },
            j_poke_larvitar = {
                name = "幼基拉斯",
                text = {
                  "如果打出的牌型為{C:attention}葫蘆{}",
                  "每張打出的卡牌在得分時會永久獲得{C:chips}+#1#{}籌碼",
                  "{C:inactive,s:0.8}（在打出{C:attention,s:0.8}#2#{C:inactive,s:0.8}個葫蘆時進化）"
                }
            },
            j_poke_pupitar = {
                name = "沙基拉斯",
                text = {
                  "如果打出的牌型為{C:attention}葫蘆{}",
                  "每張打出的卡牌在得分時會永久獲得{C:chips}+#1#{}籌碼",
                  "{C:inactive,s:0.8}（在打出{C:attention,s:0.8}#2#{C:inactive,s:0.8}個葫蘆時進化）"
                }
            },
            j_poke_tyranitar = {
                name = "班基拉斯",
                text = {
                  "如果打出的牌型為{C:attention}葫蘆{}",
                  "每張打出的卡牌在得分時會永久失去{C:chips}#1#{}籌碼",
                  "如果卡牌失去籌碼，那張牌會永久獲得{X:mult,C:white}X#2#{}倍數",
                }
            },
            j_poke_lugia = {
              name = "洛奇亞",
              text = {
                "在{C:attention}盲注{}中，每抽出{C:attention}#3#{}{C:inactive}[#4#]{}張卡牌",
                "會給予這張小丑牌{X:mult,C:white} X#2# {}倍數",
                "{C:inactive}（目前會給予：{X:mult,C:white} X#1# {C:inactive}倍數）{}"
              }
            },
            j_poke_ho_oh = {
                name = "鳳王",
                text = {
                  "產生一張在每個回合中",
                  "第一張使用的{C:attention}消耗牌{}的複本",
                  "複本會帶有{C:dark_edition}彩色{}版本",
                  "{C:inactive}（必須有空位）",
                }
            },
            j_poke_celebi = {
                name = "時拉比",
                text = {
                    "跳過{C:attention}#1#{} {C:inactive}[#3#]{}個{C:attention}盲注{}後，底注{C:attention}-#2#{}",
                    "{C:inactive}（需要跳過的次數在每次底注下降時提升）"
                } 
            },
            j_poke_treecko = {
                name = "木守宮",
                text = {
                    "手牌數量{C:attention}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#6#，#7#，#8#{C:inactive}）{}",
                    "每張打出的{C:attention}偏好牌級{}的卡牌",
                    "在得分時有{C:green}#4#/#5#{}的機率獲得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}屬性牌，以上的效果會確保觸發",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在賺取{C:money,s:0.8}$#2#{C:inactive,s:0.8}後進化）"
                } 
            },
            j_poke_grovyle = {
                name = "森林蜥蜴",
                text = {
                    "手牌數量{C:attention}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#6#，#7#，#8#{C:inactive}）{}",
                    "每張打出的{C:attention}偏好牌級{}的卡牌",
                    "在得分時有{C:green}#4#/#5#{}的機率獲得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}屬性牌，以上的效果會確保觸發",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}在賺取{C:money,s:0.8}$#2#{C:inactive,s:0.8}後進化）"
                } 
            },
            j_poke_sceptile = {
                name = "蜥蜴王",
                text = {
                    "手牌數量{C:attention}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#5#，#6#，#7#{C:inactive}）{}",
                    "每張打出的{C:attention}偏好牌級{}的卡牌",
                    "在得分時獲得{C:money}$#1#{}",
                    "{br:5}此為分隔線",
                    "回合結束後，每一張{X:grass,C:white}草{}屬性牌會給予{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前會給予{C:money}$#4#{}，最多{C:money}$14{}{C:inactive}）{}"
                } 
            },
            j_poke_torchic = {
                name = "火稚雞",
                text = {
                    "棄牌次數{C:mult}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#5#，#6#，#7#{C:inactive}）{}",
                    "這回合中，每張棄掉的{C:attention}偏好牌級{}卡牌會給予{C:mult}+#1#{}倍數",
                    "如果你有其他的{X:fire,C:white}火{}屬性或{X:earth,C:white}鬥{}屬性的卡牌，給予的倍數翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前會給予{C:mult}+#4#{}{C:inactive}倍數）{}",
                    "{C:inactive,s:0.8}（在給予{C:mult,s:0.8}#2#{C:inactive,s:0.8}倍數後進化）"
                } 
            },
            j_poke_combusken = {
                name = "力壯雞",
                text = {
                    "棄牌次數{C:mult}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#5#，#6#，#7#{C:inactive}）{}",
                    "這回合中，每張棄掉的{C:attention}偏好牌級{}卡牌會給予{C:mult}+#1#{}倍數",
                    "如果你有其他的{X:fire,C:white}火{}屬性或{X:earth,C:white}鬥{}屬性的卡牌，給予的倍數翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前會給予{C:mult}+#4#{}{C:inactive}倍數）{}",
                    "{C:inactive,s:0.8}（在給予{C:mult,s:0.8}#2#{}{C:inactive,s:0.8}倍數後進化）"
                } 
            },
            j_poke_blaziken = {
                name = "火焰雞",
                text = {
                    "棄牌次數{C:mult}+#2#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#6#，#7#，#8#{C:inactive}）{}",
                    "這回合中，每張棄掉的{C:attention}偏好牌級{}卡牌會給予{C:mult}+#4#{}倍數及{X:mult,C:white}X#1#{}倍數",
                    "以上的加成會因{X:fire,C:white}火{}屬性及{X:earth,C:white}鬥{}屬性的卡牌而增加",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前會給予{C:mult}+#5#{C:inactive}倍數及{X:red,C:white} X#3# {}{C:inactive}倍數）{}",
                } 
            },
            j_poke_mudkip = {
                name = "水躍魚",
                text = {
                    "出牌次數{C:chips}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#4#，#5#，#6#{C:inactive}）{}",
                    "打出的{C:attention}偏好牌級{}卡牌會給予{C:chips}+#1#{}籌碼",
                    "如果你有其他的{X:water,C:white}水{}屬性或{X:earth,C:white}地{}屬性的卡牌，給予的籌碼翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在給予{C:chips,s:0.8}#2#{}{C:inactive,s:0.8}籌碼後進化）"
                } 
            },
            j_poke_marshtomp = {
                name = "沼躍魚",
                text = {
                    "出牌次數{C:chips}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#4#，#5#，#6#{C:inactive}）{}",
                    "打出的{C:attention}偏好牌級{}卡牌會給予{C:chips}+#1#{}籌碼",
                    "如果你有其他的{X:water,C:white}水{}屬性或{X:earth,C:white}地{}屬性的卡牌，給予的籌碼翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在給予{C:chips,s:0.8}#2#{}{C:inactive,s:0.8}籌碼後進化）"
                } 
            },
            j_poke_swampert = {
                name = "巨沼怪",
                text = {
                    "出牌次數{C:chips}+#3#{}，{C:attention}偏好牌級：{C:inactive}（{C:attention}#6#，#7#，#8#{C:inactive}）{}",
                    "打出的{C:attention}偏好牌級{}卡牌會給予{C:chips}+#1#{}籌碼",
                    "以及{C:chips}+#5#{}乘以{X:water,C:white}水{}屬性及{X:earth,C:white}地{}屬性卡牌數量的籌碼",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前給予了{C:chips}+#4#{}{C:inactive}籌碼）"
                } 
            },
            j_poke_zigzagoon = {
              name = "蛇紋熊",
              text = {
                "{C:attention}持有撿拾{}{C:item}物品{}",
                "打出手牌時，有{C:green}#1#/#2#{}的機率",
                "產生一張隨機的{C:item}物品牌{}",
                "{C:inactive}（必須有空位）",
                "{C:inactive,s:0.8}（在{C:attention}#3#{C:inactive,s:0.8}個回合後進化）",
              }
            },
            j_poke_linoone = {
              name = "直衝熊",
              text = {
                "打出手牌時，有{C:green}#1#/#2#{}的機率",
                "產生一張隨機的{C:item}物品牌{}",
                "如果打出的手牌包含{C:attention}順子{}",
                "以上的機率會必定觸發",
                "{C:inactive}（必須有空位）"
              }
            },
            j_poke_shroomish = {
                name = "蘑蘑菇",
                text = {
                  "選擇{C:attention}盲注{}後",
                  "獲得{C:chips}+#1#{}出牌次數，{C:mult}+#2#{}棄牌次數或{C:attention}+#3#{}手牌數量",
                  "{C:inactive,s:0.8}（在擊敗{C:attention,s:0.8}底注#4#{C:inactive,s:0.8}的Boss盲注後進化）{}"
                }
            }, 
            j_poke_breloom = {
                name = "斗笠菇",
                text = {
                  "選擇{C:attention}盲注{}後",
                  "獲得{C:chips}+#1#{}出牌次數，{C:mult}+#2#{}棄牌次數或{C:attention}+#3#{}手牌數量",
                }
            }, 
            j_poke_azurill = {
                name = '露力麗',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:mult,C:white}X#1#{}",
                    "回合結束後，產生一張{C:dark_edition}負片{}{C:attention}教皇{}牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_nosepass = {
                name = '朝北鼻',      
                text = {
                    "第一張打出的{C:attention}人頭牌{}",
                    "會變成{C:attention}石頭牌{}",
                    "並在得分時給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive}（使用{}{C:attention}雷之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_aron = {
                name = '可可多拉',
                text = {
                    "當有{C:attention}鋼鐵牌{}得分時",
                    "這張小丑牌會獲得{X:mult,C:white}X#2#{}倍數並摧毀那張卡牌",
                    "{C:inactive}（在{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{} {C:inactive}倍數時進化）",
                }
            },
            j_poke_lairon = {
                name = '可多拉',
                text = {
                    "當有{C:attention}鋼鐵牌{}或{C:attention}石頭牌{}得分時",
                    "這張小丑牌會獲得{X:mult,C:white}X#2#{}倍數並摧毀那張卡牌",
                    "{C:inactive}（在{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{} {C:inactive}倍數時進化）"
                }
            },
            j_poke_aggron = {
                name = '波士可多拉',
                text = {
                    "當有{C:attention}鋼鐵牌{}，{C:attention}石頭牌{}或{C:attention}黃金牌{}得分時",
                    "這張小丑牌會獲得{X:mult,C:white}X#2#{}倍數並摧毀那張卡牌",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#1#{C:inactive}倍數）"
                }
            },
            j_poke_feebas = {
                name = '醜醜魚',
                text = {
                    "倍數{C:mult}+#1#{}",
                    "附上{C:attention}水花噴濺{}效果",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}美麗鱗片{}{C:inactive,s:0.8}牌進化）",
                } 
            },
            j_poke_milotic = {
                name = "美納斯",
                text = {
                  "如果打出的所有手牌",
                  "都是同一個{C:attention}花色{}",
                  "所有卡牌會額外觸發一次"
                }
            },
            j_poke_wynaut = {
                name = '小果然',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "回合結束後，產生一張{C:dark_edition}負片{}的{C:attention}愚者{}牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_snorunt = {
                name = "雪童子",
                text = {
                  "可負債至{C:mult}-$#1#{}",
                  "{C:inactive,s:0.8}（在負債{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                  "{C:inactive,s:0.8}（使用{C:attention,s:0.8}覺醒之石{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_glalie = {
                name = "冰鬼護",
                text = {
                  "可負債至{C:mult}-$#1#{}",
                  "{br:2}此為分隔線",
                  "回合結束後",
                  "把金錢設至{C:money}$0"
                }
            },
            j_poke_beldum = {
                name = '鐵啞鈴',
                text = {
                    "如果打出的牌型為{C:attention}四條{}",
                    "這張小丑牌會獲得{C:chips}+#2#{}籌碼",
                    "如果得分牌中包含{C:attention}A",
                    "這張小丑牌會獲得{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在擁有{C:chips}+#1#{C:inactive} / +64{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_metang = {
                name = '金屬怪',
                text = {
                    "如果打出的牌型為{C:attention}四條{}",
                    "這張小丑牌會獲得{C:chips}+#2#{}籌碼",
                    "如果得分牌中包含{C:attention}A",
                    "這張小丑牌會獲得{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在擁有{C:chips}+#1#{C:inactive} / +256{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_metagross = {
                name = '巨金怪',
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{br:3}此為分隔線",
                    "如果打出的牌型是{C:attention}四條{}",
                    "每張打出的卡牌會給予等同那張牌的",
                    "基本籌碼的{C:attention}立方根{}的{X:mult,C:white}X{}倍數"
                } 
            },
            j_poke_jirachi = {
                name = '基拉祈',
                text = {
                    "離開商店後",
                    "{C:dark_edition}許個願望！",
                }
            },
            j_poke_jirachi_banker = {
                name = '基拉祈',
                text = {
                    "從回合結束獲得的金錢{C:attention}翻倍{}",
                }
            },
            j_poke_jirachi_booster = {
                name = '基拉祈',
                text = {
                    "{C:attention}擴充包欄位{}+1",
                    "{C:attention}擴充包{}有額外{C:attention}1{}張牌",
                }
            },
            j_poke_jirachi_power = {
                name = '基拉祈',
                text = {
                    "每第{}{C:attention}#2#{C:inactive}[#3#]{}次出牌時",
                    "每張打出的卡牌會在得分時給予{X:mult,C:white}X#1#{}倍數",
                }
            },
            j_poke_jirachi_negging = {
                name = '基拉祈',
                text = {
                    "小丑牌欄位{C:blue}+2{}",
                    "商店內出現{C:dark_edition}負片{}的卡牌的頻率增加{C:attention}2X{}倍",
                }
            },
            j_poke_jirachi_copy = {
                name = '基拉祈',
                text = {
                    "複製右邊{C:attention}小丑牌{}的能力",
                    "複製的效果會有{C:attention}#1#{}個額外的{C:pink}能量",
                }
            },
            j_poke_jirachi_fixer = {
                name = '基拉祈',    
                text = {
                    "如果{C:attention}第一次出牌{}只有{C:attention}1{}張牌",
                    "添加{C:attention}銀箔{}，{C:attention}全息{}或{C:attention}彩色{}版本到那張牌中",
                    "{br:3}此為分隔線",
                    "如果{C:attention}第一次棄牌{}只有{C:attention}1{}張牌",
                    "{C:attention}摧毀{}那張牌",
                }
            },
            j_poke_buizel = {
                name = '泳圈鼬',
                text = {
                    "每張在出牌中{C:attention}沒有得分{}的卡牌",
                    "會給予{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }  
            },
            j_poke_floatzel = {
                name = '浮潛鼬',
                text = {
                    "每張在出牌中{C:attention}沒有得分{}的卡牌",
                    "會給予{C:chips}+#1#{}籌碼",
                }  
            },
            j_poke_mismagius = {
                name = '夢妖魔',
                text = {
                    "打出的{C:attention}人頭牌{}",
                    "會在得分時永久失去{C:chips}#1#{}籌碼",
                    "這張小丑牌會獲得失去的籌碼",
                    "{br:3}此為分隔線",
                    "打出的{C:attention}人頭牌{}",
                    "有{C:green}#3#/#4#{}的機率永久獲得{C:chips}#5#{}籌碼",
                    "{C:inactive}（目前會給予{C:chips}+#2#{C:inactive} 籌碼）",
                }
            },
            j_poke_honchkrow = {
                name = "烏鴉頭頭",
                text = {
                  "每張{X:dark,C:white}惡{}屬性的小丑牌會給予{X:red,C:white}X#1#{}倍數",
                }
            },
            j_poke_bonsly = {
                name = "盆才怪",
                text = {
                  "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                  "回合結束後",
                  "新增一張{C:attention}加強人頭牌{}到牌組中",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_mimejr = {
                name = '魔尼尼',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "回合結束後，新增{C:attention}紅色{}或{C:attention}藍色{}封蠟章",
                    "到牌組中的隨機一張牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_happiny = {
                name = '小福蛋',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "如果這張牌是最右邊的小丑牌",
                    "在{C:attention}最後一次{}出牌時，所有得分牌會變成{C:attention}幸運牌{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_munchlax = {
                name = '小卡比獸',
                text = {
                    "{C:attention}嬰兒{}，倍數{X:red,C:white} X#1# {}",
                    "回合結束後，產生一張隨機的",
                    "{C:dark_edition}負片{}{C:item}物品牌{}",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_mantyke = {
                name = "小球飛魚",
                text = {
                  "{C:attention}嬰兒{}，倍數{X:red,C:white}X#2#{}",
                  "回合結束後，{C:attention}牌組{}中有一張",
                  "隨機的卡牌會變為{C:attention}黃金牌{}.",
                  "{br:2}此為分隔線",
                  "每張在{C:attention}手牌{}中的{C:attention}黃金牌{}",
                  "會給予{C:chips}+#1#{}籌碼",
                  "{C:inactive}（在{C:attention}#3#{C:inactive}個回合後進化）",
                }
            },
            j_poke_weavile = {
                name = '瑪狃拉',
                text = {
                    "如果打出的手牌為單張{C:attention}#3#{}，摧毀那張牌",
                    "這張小丑牌並將獲得{X:mult,C:white}X#1#{}倍數及給予{C:money}$#4#{}",
                    "倍數會在擊敗{C:attention}Boss盲注{}後重設",
                    "{C:inactive,s:0.8}（需要的牌級在每個回合變更）{}",
                    "{C:inactive}（目前會給予：{X:mult,C:white}X#2#{C:inactive}倍數）{}",
                }
            },
            j_poke_magnezone = {
                name = '自爆磁怪',
                text = {
                    "每張得分的{C:attention}鋼鐵牌{}",
                    "會給予{X:red,C:white}X#1#{}倍數",
                    "每張在旁邊的{X:metal,C:white}鋼{}屬性小丑牌",
                    "會給予{X:red,C:white}X#2#{}倍數"
                } 
            },
            j_poke_lickilicky = {
                name = '大舌舔',
                text = {
                    "頭兩張得分的{C:attention}J{}會給予{X:mult,C:white} X#1# {}倍數",
                    "之後每張得分的{C:attention}J{}會給予{X:mult,C:white} X#2# {}倍數",
                } 
            },
            j_poke_rhyperior = {
                name = '超甲狂犀',
                text = {
                    "每張得分的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "{br:3}此為分隔線",
                    "每張{X:earth,C:white}地{}屬性小丑牌會額外觸發{C:attention}石頭牌{}",
                    "{C:inactive}（目前會額外觸發#2#次）"
                } 
            },
            j_poke_tangrowth = {
                name = '巨蔓藤',
                text = {
                    "萬能牌{C:attention}不能{}被減益",
                    "{br:3}此為分隔線",
                    "每張打出的的{C:attention}萬能牌{}",
                    "會在得分時給予{C:mult}+#1#{}倍數，{C:chips}+#2#{}籌碼或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的機率會給予{C:attention}以上三個的加成{}",
                } 
            },
            j_poke_electivire = {
                name = '電擊魔獸',
                text = {
                    "當回合結束時，每次{C:attention}賣出{}一張牌",
                    "會把此牌的{C:attention}出售價值{}提升{C:money}$#1#{}",
                    "這張牌的出售價值每個{C:money}${}會給予{X:mult,C:white}X#2#{}倍數",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_magmortar = {
                name = '鴨嘴炎獸',
                text = {
                    "如果回合中的{C:attention}第一次{}棄牌只有{C:attention}一{}張牌",
                    "摧毀它並獲得{C:mult}+#2#{}倍數",
                    "每張棄掉的卡牌會給予{X:mult,C:white}X#4#{}倍數",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數，{X:mult,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_togekiss = {
                name = '波克基斯',
                text = {
                    "{C:attention}幸運牌{}有{C:green}#1#/#2#{}的機率",
                    "給予{C:chips}+#4#{}籌碼",
                    "並有{C:green}#1#/#3#{}的機率給予{X:mult,C:white}X#5#{}倍數",
                    "{br:4}此為分隔線",
                    "{C:attention}幸運牌{}觸發的機率增加{C:attention}三倍{}",
                    "{C:inactive}（例：{C:green}2/5{C:inactive} -> {C:green}6/5{C:inactive}）",
                }
            },
            j_poke_yanmega = {
              name = "遠古巨蜓",
              text = {
                "每張打出的{C:attention}3{}或{C:attention}6{}",
                "會在得分時給予{C:chips}+#2#{}籌碼及{C:mult}+#1#{}倍數",
                "{br:2}此為分隔線",
                "每張打出的{C:attention}3{}或{C:attention}6{}",
                "有{C:green}#3#/#4#{}的機率會額外觸發一次",
              }
            },
            j_poke_leafeon = {
                name = '葉伊布',
                text = {
                    "當有{C:attention}幸運牌{}觸發時",
                    "那張牌會永久獲得{C:chips}+#2#{}乘以上一個商店中{C:green}刷新{}次數的籌碼",
                    "{C:inactive}（目前已{C:green}重開{C:inactive}#1#次）"
                } 
            },
            j_poke_glaceon = {
                name = '冰伊布',
                text = {
                    "每次在商店中刷新",
                    "會有{C:green}#1#/#2#{}的機率",
                    "新增一張牌組中隨機的{C:attention}玻璃牌{}複本",
                    "到商店中",
                } 
            },
            j_poke_gliscor = {
                name = '天蠍王',
                text = {
                    "每張在{C:attention}手中{}的{V:1}#2#{}花色或被減益的卡牌",
                    "會對打出的卡牌給予{X:mult,C:white}X#1#{}倍數",
                    "{C:inactive, s:0.8}（花色會在每個回合變更）",
                    "{C:inactive}（目前會給予：{X:mult,C:white}X#3#{C:inactive}倍數）",
                }
            },
            j_poke_mamoswine = {
              name = "象牙豬",
              text = {
                "每張在得分牌中的{C:attention}石頭牌{}及{C:attention}玻璃牌{}",
                "會對第一張打出的卡牌給予{C:mult}+#1#{}倍數",
                "{br:2}此為分隔線",
                "每張打出的{C:attention}石頭牌{}及{C:attention}玻璃牌{}",
                "在得分時會有{C:green}#3#/#4#{}的機率給予{C:money}$#2#{}",
              }
            },
            j_poke_porygonz = {
                name = '多邊獸Ｚ',
                text = {
                    "能量上限{C:pink}+3{}",
                    "每張在本局{C:attention}遊戲{}中使用的{C:pink}能量{}牌會給予{X:red,C:white} X#2# {}倍數",
                    "{C:inactive}（目前會給予{X:red,C:white} X#1# {}{C:inactive}倍數）"
                } 
            },
            j_poke_probopass = {
                name = '大朝北鼻',      
                text = {
                    "{C:attention}石頭牌{}會一律視為人頭牌",
                    "{br:2}此為分隔線",
                    "打出的{C:attention}石頭牌{}",
                    "會在得分時給予{X:mult,C:white} X#1# {}倍數"
                } 
            },
            j_poke_froslass = {
                name = "雪妖女",
                text = {
                  "可負債至{C:mult}-$#1#{}",
                  "{br:2.5}此為分隔線",
                  "如果在負債中打出手牌",
                  "產生一張{C:item}物品牌{}",
                  "{C:inactive,s:0.8}（必須有空位）",
                }
            },
            j_poke_pansage = {
                name = "花椰猴",
                text = {
                    "附上{C:attention}捷徑{}的效果",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}葉之石{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_simisage = {
                name = "花椰猿",
                text = {
                    "附上{C:attention}捷徑{}的效果",
                    "所有打出的非加強牌",
                    "有{C:green}#1#/#2#{}的機率變為{C:attention}幸運牌{}"
                }
            },
            j_poke_pansear = {
                name = "爆香猴",
                text = {
                    "附上{C:attention}四指手{}的效果",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}火之石{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_simisear = {
                name = "爆香猿",
                text = {
                    "附上{C:attention}四指手{}的效果",
                    "如果第一次出牌包含{C:attention}順子{}或{C:attention}同花{}",
                    "產生一張{C:attention}皇后牌{}",
                    "並摧毀未得分的卡牌 {C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "冷水猴",
                text = {
                    "附上{C:attention}空想性錯視{}的效果",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}水之石{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_simipour = {
                name = "冷水猿",
                text = {
                    "附上{C:attention}空想性錯視{}的效果",
                    "打出的手牌中",
                    "最左邊及最少基礎籌碼的卡牌",
                    "會變成{C:attention}獎勵牌{}",
                }
            },
            j_poke_roggenrola = {
                name = "石丸子",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每張在手牌中的{C:attention}陷阱牌{}",
                    "會給予{C:mult}+#3#{}倍數",
                    "{C:inactive,s:0.8}（在觸發陷阱牌{C:attention,s:0.8}#4#{C:inactive,s:0.8}次時進化）",
                }
            },
            j_poke_boldore = {
                name = "地幔岩",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每張在手牌中的{C:attention}陷阱牌{}",
                    "會給予{C:mult}+#3#{}倍數",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}聯繫繩{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_gigalith = {
                name = "龐岩怪",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每張在手牌中的{C:attention}陷阱牌{}",
                    "會給予{C:mult}+#3#{}倍數並額外觸發一次",
                }
            },
            j_poke_zorua = {
                name = "索羅亞",
                text = {
                    "複製最右邊{C:attention}小丑牌{}的能力",
                    "直到打出回合中第一個得分的手牌",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_zoroark = {
                name = "索羅亞克",
                text = {
                    "複製最右邊{C:attention}小丑牌{}的能力",
                }
            },
            j_poke_gothita = {
                name = "哥德寶寶",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}的費用",
                    "減低{C:money}$2{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_gothorita = {
                name = "哥德小童",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}的費用",
                    "減低{C:money}$3{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_gothitelle = {
                name = "哥德小姐",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}全部免費",
                    "{br:2}此為分隔線",
                    "使用{C:planet}行星牌{}時獲得{C:money}$#1#{}"
                } 
            },
            j_poke_vanillite = {
                name = "迷你冰",
                text = {
                  "{C:attention}左邊揮發",
                  "{C:chips}+#1#{}籌碼",
                  "每次出牌後，這張小丑損失{C:chips}-#3#{}籌碼",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合沒有觸發後進化）",
                }
            },
            j_poke_vanillish = {
                name = "多多冰",
                text = {
                  "{C:attention}左邊揮發",
                  "{C:chips}+#1#{}籌碼",
                  "每次出牌後，這張小丑損失{C:chips}-#3#{}籌碼",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合沒有觸發後進化）",
                }
            },
            j_poke_vanilluxe = {
                name = "雙倍多多冰",
                text = {
                  "{C:chips}+#1#{}籌碼",
                  "每次出牌後，這張小丑損失{C:chips}-#2#{}籌碼",
                  "{br:2}此為分隔線",
                  "完全融化後，產生{C:attention}#3#個雙倍標籤{}",
                }
            },
            j_poke_elgyem = {
                name = "小灰怪",
                text = {
                  "選擇{C:attention}盲注{}後",
                  "產生其中一張你頭{C:attention}#1#{}高的",
                  "{}牌型{}的{C:dark_edition}負片{}{C:planet}行星牌{}",
                  "{C:inactive,s:0.8}（在持有#2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8}張不同的行星牌時進化）{}"
                }
            },
            j_poke_beheeyem = {
                name = "大宇怪",
                text = {
                    "選擇{C:attention}盲注{}後",
                    "產生其中一張你頭{C:attention}#1#{}高的",
                    "{}牌型{}的{C:dark_edition}負片{}{C:planet}行星牌{}",
                    "開啟{C:attention}#2#個擴充包{}後",
                    "產生{C:attention}望遠鏡{}或{C:attention}天文台{}禮券"
                }
            },
            j_poke_litwick = {
                name = "燭光靈",
                text = {
                    "回合結束後",
                    "對旁邊的小丑牌{C:attention}吸取{C:money}$#1#{}",
                    "{br:3.5}此為分隔線",
                    "這張小丑牌的出售價會加到倍數中",
                    "{C:inactive}（目前會增加{C:mult}+#3#{C:inactive}倍數）{}",
                    "{C:inactive,s:0.8}（在出售價為{C:money,s:0.8}$#2#{C:inactive,s:0.8}時進化）"
                }
            },
            j_poke_lampent = {
                name = "燈火幽靈",
                text = {
                    "回合結束後",
                    "對其他的小丑牌{C:attention}吸取{C:money}$#1#{}",
                    "{br:3.5}此為分隔線",
                    "這張小丑牌出售價的{C:attention}雙倍{}數值會加到倍數中",
                    "{C:inactive}（目前會增加{C:mult}+#2#{C:inactive}倍數）{}",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}牌進化）"
                }
            },
            j_poke_chandelure = {
                name = "水晶燈火靈",
                text = {
                    "每張出售價格只有{C:money}1${}的小丑牌",
                    "會給予{X:mult,C:white} X#1# {}倍數及{C:money}$#2#{}",
                    "{br:3.5}此為分隔線",
                    "這張小丑牌出售價的{C:attention}三倍{}數值會加到倍數中",
                    "{C:inactive}（目前會增加{C:mult}+#3#{C:inactive}倍數）{}"
                }
            },
            j_poke_golett = {
                name = "泥偶小人",
                text = {
                  "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                  "{C:attention}手牌中{}每{C:attention}四{}張卡牌",
                  "會給予{X:mult,C:white}X#3#{}倍數",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#4#{C:inactive,s:0.8}個回合後進化）"
                }
            },
            j_poke_golurk = {
                name = "泥偶巨人",
                text = {
                 "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                  "{C:attention}手牌中{}每{C:attention}三{}張卡牌",
                  "會給予{X:mult,C:white}X#3#{}倍數",
                }
            },
            j_poke_deino = {
                name = "單首龍",
                text = {
                  "如果打出的牌型為{C:attention}三條{}",
                  "倍數{X:mult,C:white} X#1# {}",
                  "{C:inactive,s:0.8}（在觸發{C:attention,s:0.8}#2#{C:inactive,s:0.8}次後進化）{}"
                }
            },
            j_poke_zweilous = {
                name = "雙首暴龍",
                text = {
                  "如果打出的牌型為{C:attention}三條{}",
                  "倍數{X:mult,C:white} X#1# {}",
                  "{C:inactive,s:0.8}（在觸發{C:attention,s:0.8}#2#{C:inactive,s:0.8}次後進化）{}"
                }
            },
            j_poke_hydreigon = {
                name = "三首惡龍",
                text = {
                  "如果打出的牌型為{C:attention}三條{}",
                  "摧毀沒有得分的卡牌",
                  "{br:3}此為分隔線",
                  "當有卡牌摧毀時，這張小丑牌會獲得{X:mult,C:white} X#2# {}倍數",
                  "{C:inactive}（目前會給予{X:mult,C:white} X#1# {C:inactive}倍數）{}"
                }
            },
            j_poke_litleo = {
                name = "小獅獅",
                text = {
                    "如果打出的牌型包含{C:attention}同花{}",
                    "{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                } 
            },
            j_poke_pyroar = {
                name = "火炎獅",
                text = {
                    "如果打出的牌型包含{C:attention}同花{}，{C:chips}+#1#{}籌碼",
                    "{br:2}此為分隔線",
                    "如果同時包含{C:attention}K{}或{C:attention}Q{}",
                    "產生一張{C:pink}能量牌{}",
                } 
            },
            j_poke_sylveon = {
                name = '仙子伊布',
                text = {
                    "如果你有{C:attention}少於兩個{}標籤",
                    "每{C:attention}#3#{C:inactive}[#2#]{}次{C:green}刷新{}會產生一個{C:attention}標籤{}",
                    "{br:2.5}此為分隔線",
                    "每張{C:attention}在手牌中{}帶有{C:attention}版本{}的卡牌",
                    "會給予{X:mult,C:white} X#1# {}倍數",
                } 
            },
            j_poke_grubbin = {
                name = '強顎雞母蟲',
                text = {
                    "倍數{C:mult}+#1#{}",
                    "如果你有{X:lightning, C:black}電{}屬性的小丑牌",
                    "此牌給予的倍數會增加{C:attention}三倍{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }  
            },
            j_poke_charjabug = {
                name = '蟲電寶',
                text = {
                    "每張你擁有的{X:lightning, C:black}電{}屬性小丑牌",
                    "會給予{C:mult}+#1#{}倍數{C:inactive}（包括自身）{}",
                     "{C:inactive}（目前會給予{C:mult}#2#{C:inactive}倍數）",
                    "{C:inactive}（使用{} {C:attention}雷之石{}{C:inactive}牌進化）"
                }  
            },
            j_poke_vikavolt = {
                name = '鍬農炮蟲',
                text = {
                    "倍數{C:mult}+#3#{}",
                    "每張其他你擁有的{X:lightning, C:black}雷{}屬性小丑牌",
                    "會給予{X:red,C:white} X#1# {}倍數",
                     "{C:inactive}（目前會給予{X:red,C:white} X#2# {}{C:inactive}倍數）",
                }  
            },
            j_poke_mimikyu = {
                name = "謎擬Ｑ",
                text = {
                  "如果打出的卡牌沒有得分的{C:hearts}#2#{}牌",
                  "給予{C:chips}+#1#{}籌碼",
                  "如果你得到最少{C:attention}50%{}的所需籌碼",
                  "這張牌會防止輸掉這個回合",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = '來電汪',
                text = {
                    "如果打出的手牌包含{C:attention}順子{}",
                    "給予{C:mult}+#1#{}倍數及獲得{C:money}$#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{}{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_boltund = {
                name = '逐電犬',
                text = {
                    "如果打出的手牌包含{C:attention}順子{}",
                    "給予{X:red,C:white}X#1#{}倍數及獲得{C:money}$#2#{}",
                } 
            },
            j_poke_dreepy = {
                name = "多龍梅西亞",
                text = {
                    "賣出這張牌後",
                    "增加{C:money}$#1#{}到其他小丑牌的賣出價格",
                    "並轉換所有{C:attention}手牌中{}的卡牌至{C:spades}#2#{}",
                    "{C:inactive}（打出同花順牌型時進化）{}",
                }
            },
            j_poke_drakloak = {
                name = "多龍奇",
                text = {
                    "所有持有的{C:attention}小丑牌{}的賣出價格的每一個{C:money}${}",
                    "會給予{X:red,C:white} X#4# {}倍數",
                    "{br:4}此為分隔線",
                    "如果打出的牌型為{C:attention}同花順{}",
                    "對所有持有的小丑牌的賣出價格增加{C:money}$#1#{}",
                    "{C:inactive}（在所有小丑牌的賣出價格合共 {C:money}$#2#{}{C:inactive}/#3# 時進化）",
                }
            },
            j_poke_dragapult = {
                name = "多龍巴魯托",
                text = {
                    "所有持有的{C:attention}小丑牌{}的賣出價格的每一個{C:money}${}",
                    "會給予{X:red,C:white} X#2# {}倍數",
                    "{br:4}此為分隔線",
                    "如果打出的牌型為{C:attention}同花順{}",
                    "並未持有{C:attention}多龍梅西亞飛鏢{}",
                    "產生兩個帶有{C:dark_edition}負片{}的{C:attention}多龍梅西亞飛鏢{}",
                    "{C:inactive}（目前會給予{X:red,C:white} X#3# {C:inactive}倍數）{}"
                }
            },
            j_poke_dreepy_dart = {
                name = "多龍梅西亞飛鏢",
                text = {
                    "賣出這張牌後",
                    "增加{C:money}$#1#{}到其他小丑牌的賣出價格",
                    "並轉換所有{C:attention}手牌中{}的卡牌至{C:spades}#2#{}",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "千針魚（洗翠的樣子）",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每次抽出{C:attention}陷阱牌{}時",
                    "這張小丑牌會獲得{C:chips}+#3#{}籌碼",
                    "{C:inactive}（在 {C:chips}+#4#{C:inactive} / +#5# 籌碼時進化）",
                }
            },
            j_poke_overqwil = {
                name = "萬針魚",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "每次抽出{C:attention}陷阱牌{}時",
                    "這張小丑牌會獲得{C:chips}+#3#{}籌碼",
                    "{br:3}此為分隔線",
                    "打出手牌後，這張小丑牌的籌碼{C:attention}減半{}",
                    "{C:inactive}（目前會給予{C:chips}+#4#{C:inactive} 籌碼）",
                }
            },
            j_poke_wyrdeer = {
                name = "詭角鹿",
                text = {
                    "預視{C:purple}#1#{}張牌",
                    "按照{C:attention}預視{}的卡牌中牌級{C:attention}最高{}的卡牌",
                    "向倍數追加其牌級{C:attention}兩倍{}的數量",
                    "{br:3}此為分隔線",
                    "打出手牌時，這張小丑牌會獲得{C:purple}#2#個預視{}",
                    "{C:inactive,s:0.8}（回合結束後重設）",
                    
                }
            },
            j_poke_kleavor = {
                name = '劈斧螳螂',      
                text = {
                    "選擇盲注後",
                    "摧毀右邊的小丑牌並獲得{C:mult}+#2#{}倍數",
                    "如果被摧毀的小丑牌為{C:green}罕見{}或更高的稀有度時",
                    "增加一張帶有{C:attention}銀箔{}，{C:attention}全息{}或{C:attention}彩色{}版本",
                    "的{C:attention}石頭牌{}到牌組中",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
                } 
            },
            j_poke_ursaluna = {
              name = "月月熊",
              text = {
                "當有{C:attention}擴充包{}被跳過時",
                "這張小丑牌將獲得{C:mult}+#2#{}倍數",
                "並產生一張帶有{C:dark_edition}彩色{}版本的隨機{C:item}物品牌{}",
                "{C:inactive,s:0.8}（必須有空位）",
                "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）",
              }
            },
            j_poke_tarountula = {
                name = "團珠蛛",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "回合結束後",
                    "{C:attention}每#4#張在手牌中的陷阱牌{}",
                    "會產生一張{C:planet}行星牌{}",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_spidops = {
                name = "操陷蛛",
                text = {
                    "{C:purple}+#1#張陷阱牌{C:inactive}（每#2#張牌增加一張）",
                    "回合結束後",
                    "對每三張{C:attention}在手牌中的陷阱牌{}",
                    "附加{C:chips}藍色封蠟章{}",
                }
            },
            j_poke_fidough = {
                name = "狗仔包",
                text = {
                  "如果打出的手牌包含{C:attention}#3#{}，此牌獲得{C:chips}+#2#{}籌碼",
                  "所需的{C:attention}卡牌牌級{}會在每次觸發時提升一點",
                  "{C:inactive,s:0.8}（如果是A，那就會變回2）",
                  "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼）",
                  "{C:inactive}（在擁有{X:fire,C:white}火{}{C:inactive}屬性小丑牌時進化）",
                }
            },
            j_poke_dachsbun = {
                name = "麻花犬",
                text = {
                  "如果打出的手牌包含{C:attention}#3#{}，此牌獲得{C:chips}+#2#{}籌碼",
                  "所需的{C:attention}卡牌牌級{}會在每次觸發時提升一點",
                  "每張{X:fire,C:white}火{}屬性小丑牌會增加{C:chips}+1{}到獲得的籌碼",
                  "{C:inactive,s:0.8}（如果是A，那就會變回2）",
                  "{C:inactive}（目前會給予{C:chips}+#1#{C:inactive}籌碼）",
                }
            },
            j_poke_tinkatink = {
                name = "小鍛匠",
                text = {
                  "每張打出的卡牌會給予{C:mult}+#1#{}倍數",
                  "{br:3}此為分隔線",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的卡牌",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_tinkatuff = {
                name = "巧鍛匠",
                text = {
                  "每張打出的卡牌會給予{C:mult}+#1#{}倍數",
                  "{br:3}此為分隔線",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的卡牌",
                  "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}個回合後進化）",
                }
            },
            j_poke_tinkaton = {
                name = "巨鍛匠",
                text = {
                  "每張打出的卡牌會給予{C:mult}+#1#{}倍數",
                  "{br:3}此為分隔線",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的卡牌",
                  "打出的{C:attention}鋼鐵牌{}會有{C:attention}玻璃牌{}的效果",
                }
            },
            j_poke_wiglett = {
                name = "海地鼠",
                text = {
                    "如果打出的牌型包含{C:attention}三條{}",
                    "倍數{C:mult}+#3#{}",
                    "{br:2}此為分隔線",
                    "如果打出的卡牌",
                    "包含{C:attention}5{}，{C:attention}6{}或{C:attention}7{}，{C:chips}+#2#{}籌碼",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}個回合後進化）"
                } 
            },
            j_poke_wugtrio = {
                name = "三海地鼠",
                text = {
                    "如果打出的牌型包含{C:attention}三條{}",
                    "倍數{X:red,C:white} X#1# {}",
                    "{br:2}此為分隔線",
                    "如果打出的卡牌",
                    "包含{C:attention}5{}，{C:attention}6{}或{C:attention}7{}，{C:chips}+#2#{}籌碼",
                } 
            },
            j_poke_annihilape = {
                name = '棄世猴',
                text = {
                    "每張得分的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}",
                    "給予{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "加成會在每次出牌後增加，回合結束後重設",
                    "{C:inactive}（目前會給予{C:mult}+#3#{}{C:inactive}倍數{C:chips}+#4#{C:inactive}籌碼）",
                } 
            },
            j_poke_dudunsparce = {
                name = '土龍節節',
                text = {
                  "商店內卡牌欄位{C:attention}+#1#{}",
                  "商店內擴充包欄位{C:attention}+#1#{}",
                  "商店內兌換券欄位{C:attention}+#1#{}",
                }
            },
            j_poke_dudunsparce2 = {
                name = '土龍節節',
                text = {
                  "{C:attention}持有兌換券標籤{}",
                  "商店內卡牌欄位{C:attention}+#1#{}",
                  "商店內擴充包欄位{C:attention}+#1#{}",
                  "商店內兌換券欄位{C:attention}+#1#{}",
                }
            },
            j_poke_farigiraf = {
              name = "奇麒麟",
              text = {
                "{C:attention}持有{}{C:spectral}神秘生物{}牌",
                "如果打出的手牌包含{C:attention}兩對{}",
                "第一張及最後一張打出的{C:attention}人頭牌{}",
                "會在得分時給予{X:mult,C:white}X#1#{}倍數",
              }
            },
            j_poke_gimmighoul = {
                name = "索財靈（寶箱形態）",
                text = {
                  "每張打出的{C:attention}黃金牌{}會在得分時給予{C:money}$#1#{}",
                  "{br:3}此為分隔線",
                  "跳過{C:attention}擴充包{}會有神奇的效果...?",
                  "{C:inactive,s:0.8}（在合共花掉及獲得 $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8}時進化）"
                }
            },
            j_poke_gimmighoulr = {
                name = "索財靈（徒步形態）",
                text = {
                  "獲得一些{C:money}${}",
                  "{S:1.1,C:red,E:2}效果觸發後自我毀滅{}",
                }
            },
            j_poke_gholdengo = {
                name = "賽富豪",
                text = {
                    "每張打出的{C:attention}黃金牌{}會在得分時損失{C:money}$#2#{}",
                    "並對這張牌的{X:red,C:white}倍數加成{}乘以{X:red,C:white}X#3#",
                    "{br:3}此為分隔線",
                    "這張小丑牌不會被減益",
                    "{C:inactive}（目前會給予{X:red,C:white}X#1#{C:inactive}倍數）",
                    "{C:inactive,s:0.8}（回合結束後重設）",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "得到這張牌時，產生消耗牌",
                    "回合結束後，產生{C:attention}#1#{}個{C:attention}標籤{}",
                } 
            },
            j_poke_pokedex = {
                name = '寶可夢圖鑑',
                text = {
                    "每個有{C:pink}屬性{}的小丑牌",
                    "會給予{C:mult}+#2#{}倍數",
                    "{br:3}此為分隔線",
                    "{C:attention}寶可夢{}小丑牌可能會重複出現",
                    "{C:inactive}（目前會給予{C:mult}+#1#{C:inactive}倍數）"
                } 
            },
            j_poke_everstone = {
                name = '不變之石',
                text = {
                    "寶可夢{C:attention}不能{}進化",
                    "每張{C:attention}基礎{}寶可夢會給予{X:mult,C:white} X#1# {}倍數",
                } 
            },
            j_poke_tall_grass = {
                name = '草叢',
                text = {
                    "出牌時，有{C:green}#1#/#2#{}的機率",
                    "產生一張{C:chips}一般{}的寶可夢{C:attention}小丑牌{}",
                    "如果得分牌中包含{C:attention}萬能牌{}，以上的效果會確保觸發",
                } 
            },
            j_poke_jelly_donut = {
                name = "御握",
                text = {
                  "選擇盲注後",
                  "產生一張{C:colorless}無色{}{C:pink}能量{}牌",
                  "{C:inactive}（剩餘{C:attention}#1#{}{C:inactive}個回合）{}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "阿露福遺跡",
                text = {
                  "選擇{C:attention}盲注{}後",
                  "產生{C:attention}3{}張{C:dark_edition}負片{}{C:attention}未知圖騰",
                  "{br:2}此為分隔線",
                  "當有{C:attention}未知圖騰{}觸發時",
                  "合併它並獲得{C:mult}+#1#{}倍數",
                  "{br:2}此為分隔線",
                  "賣出這張牌來獲得{C:attention}獎勵{}", 
                  "獎勵的大小根據{C:attention}已合併{}的未知圖騰的數量",
                  "{C:inactive}（目前會給予：{C:mult}+#3#{C:inactive}倍數及已合併{C:attention}#2#{C:inactive}個未知圖騰）",
                }
            },
            j_poke_unown_swarm = {
                name = "大群圖騰",
                text = {
                  "{C:attention}持有{}{C:spectral}靈魂{}牌",
                  "每張{C:purple}傳奇{}小丑牌",
                  "會給予{C:mult}+#1#{}倍數及{X:mult,C:white}X#2#{}倍數"
                }
            },
            j_poke_treasure_eatery = {
                name = "寶食堂",
                text = {
                  "選擇盲注時",
                  "轉換最左邊小丑牌的{C:pink}屬性{}",
                  "至最右邊小丑牌的{C:pink}屬性{}",
                  "{C:attention}屬性轉換牌{}",
                  "{C:inactive}（剩餘{C:attention}#1#{C:inactive}個回合）{}"
                }
            },
            j_poke_rival = {
                name = "勁敵",
                text = {
                    "倍數{C:mult}+#1#{}",
                    "如果得到的分數高於所需的分數的{C:attention}#3#倍{}",
                    "這張小丑牌會{S:1.1,C:red,E:2}自我毀滅{}並獲得{C:money}$#2#",
                }
            },
            j_poke_bitter_rival = {
                name = "懷恨的勁敵",
                text = {
                    "倍數{C:mult}+#1#{}",
                    "如果得到的分數高於所需的分數的{C:attention}#3#倍{}",
                    "這張小丑牌會{S:1.1,C:red,E:2}自我毀滅{}並獲得{C:money}$#2#",
                }
            },
            j_poke_champion = {
                name = "冠軍",
                text = {
                    "倍數{X:mult,C:white}X#1#{}",
                    "如果得到的分數高於所需的分數的{C:attention}#3#倍{}",
                    "這張小丑牌會{S:1.1,C:red,E:2}自我毀滅{}並獲得{C:money}$#2#",
                }
            },
            j_poke_mystery_egg = {
                name = "神奇蛋",
                text = {
                  "在{C:attention}#1#{}個回合後",
                  "會孵化一個{C:attention}基礎{}或{C:attention}嬰兒{}小丑牌",
                  "如果適用，會對那張牌加上{C:pink}+1{}能量"
                }
            },
            j_poke_billion_lions = {
                name = '十億隻獅子',
                text = {
                    "選擇盲注後",
                    "摧毀每張持有的{C:pink}有屬性{}小丑牌",
                    "每張被摧毀的小丑牌會給予這張小丑牌{X:mult,C:white}X#2#{}倍數",
                    "失去所有獅子時會{S:1.1,C:red,E:2}自我毀滅{}",
                    "{C:inactive}（目前會給予{X:mult,C:white}X#1#{C:inactive}倍數，剩餘{C:attention}#3#{C:inactive}隻獅子）"
                } 
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "訓練家牌套",
                text = {
                    "開局時獲得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}兌換券及",
                    "{C:tarot,T:c_poke_pokeball}#2#{}牌",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "訃聞牌套",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "發亮牌套",
                text = {
                    "所有小丑牌附有",
                    "隨機的{C:pink}屬性{}貼紙"
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "念力牌套",
                text = {
                    "開始遊戲時獲得",
                    "{C:tarot,T:v_crystal_ball}#1#{}兌換券",
                    "及{C:attention}兩張{}{C:item,T:c_poke_twisted_spoon}#2#",
                } 
            },
            sleeve_poke_ampeddeck = {
                name = "振奮牌套",
                text = {
                    "開始遊戲時獲得",
                    "{C:tarot,T:v_poke_energysearch}#1#{}兌換券",
                    "及一張{C:pink,T:c_poke_double_rainbow_energy}#2#"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "高級球",
                text = {
                    "產生一張隨機",
                    "{C:attention}二次進化的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
            c_poke_masterball = {
                name = "大師球",
                text = {
                    "產生一張隨機",
                    "{C:attention}傳說的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
            c_poke_transformation = {
                name = "蛻變",
                text = {
                    "把選擇的或最左邊的",
                    "寶可夢進化到最高{C:attention}階段{}",
                    "並給予{}+1{} {C:pink}能量{}", 
                },
            },
            c_poke_megastone = {
                name = "超級石",
                text = {
                    "{C:attention}可重用{}",
                    "對一隻寶可夢{C:attention}超級進化{}", 
                    "或對一隻已超級進化的寶可夢{C:attention}還原{}至原本狀態",
                    "賣出這張牌會{C:attention}退化{}超級進化的寶可夢",
                    "{C:inactive}（每個回合可使用一次）",
                },
            },
            c_poke_obituary = {
                name = "訃告",
                text = {
                    "新增{C:pink}粉紅{}封蠟章",
                    "到選擇的{C:attention}1{}張手牌中",
                }
            },
            c_poke_revenant = {
                name = "亡靈",
                text = {
                    "新增{C:item}銀色{}封蠟章",
                    "到選擇的{C:attention}1{}張手牌中",
                }
            },
            c_poke_nightmare = {
                name = "夢魘",
                text = {
                    "摧毀一張隨機的寶可夢小丑牌",
                    "並產生{C:attention}3{}張",
                    "隨機的{C:dark_edition}負片{}{C:pink}能量牌{}"
                },
            },
            c_poke_double_rainbow_energy = {
                name = "雙虹能量",
                text = {
                    "對最左邊或選擇的任意{C:pink}屬性{}的小丑牌",
                    "{C:red}增{C:attention}加{C:pink}能量{}{C:green}兩{C:blue}次",
                    "使用後將不會獲得本回合的利息",
                    "{C:inactive}（最多對小丑牌增加{C:attention}#1#{C:inactive}級能量）",
                },
            },
            c_poke_fake_banker = {
                name = '金錢願望',
                text = {
                    "{C:dark_edition}我想要財富！",
                }
            },
            c_poke_fake_booster = {
                name = '擴充牌願望',
                text = {
                    "{C:dark_edition}我想要選擇！",
                }
            },
            c_poke_fake_power = {
                name = '力量願望',
                text = {
                    "{C:dark_edition}我想要力量！",
                }
            },
            c_poke_fake_negging = {
                name = '負片願望',
                text = {
                    "{C:dark_edition}我想要更多小丑牌！",
                }
            },
            c_poke_fake_copy = {
                name = '複製願望',
                text = {
                    "{C:dark_edition}我想要一個幫手！",
                }
            },
            c_poke_fake_fixer = {
                name = '清洗願望',
                text = {
                    "{C:dark_edition}我想要更好的牌組！",
                }
            },
            c_poke_fake_masterball = {
                name = '召喚願望',
                text = {
                    "{C:dark_edition}我想要傳奇的寶可夢！",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "寶可夢標籤",
                text = {
                    "獲得一個免費的",
                    "{C:pink}超級寶可夢禮包",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "發光標籤",
                text = {
                    "下個在商店中的小丑牌",
                    "是免費並帶有{C:colorless}發光{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "一次進化標籤",
                text = {
                    "下個在商店中",
                    "有免費的{C:attention}一次進化{}寶可夢",
                }, 
            },
            tag_poke_safari_tag = {
                name = "野生標籤",
                text = {
                    "下個在商店中",
                    "有免費的{C:safari}野生{}寶可夢",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "精靈球",
                text = {
                    "產生一張隨機",
                    "{C:attention}基礎的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
            c_poke_greatball = {
                name = "超級球",
                text = {
                    "產生一張隨機",
                    "{C:attention}一次進化的寶可夢小丑{}牌",
                    "{C:inactive}（必須有空位）"
                },
            },
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "能量分析",
                text = {
                    "能量上限{C:pink}+2{}"
                },
            },
            v_poke_energyresearch = {
                name = "能量研究",
                text = {
                    "能量上限{C:pink}+3{}"
                },
            },
            v_poke_goodrod = {
                name = "好釣竿",
                text = {
                    "所有{C:attention}擴充包",
                    "有額外{C:attention}一{}張牌在裡面",
                },
            },
            v_poke_superrod = {
                name = "厲害釣竿",
                text = {
                    "您可以把從任何的{C:attention}擴充包{}中的消耗牌",
                    "{C:pink}放在{}欄位中",
                },
            },
        },
        Other = {

            Grass = {
                name = "屬性",
                text = {
                  "{X:grass,C:white}草{}",
                }
            },
            Fire = {
                name = "屬性",
                text = {
                  "{X:fire,C:white}火{}",
                }
            },
            Water = {
                name = "屬性",
                text = {
                  "{X:water,C:white}水{}",
                }
            },
            Lightning = {
                name = "屬性",
                text = {
                  "{X:lightning,C:black}電{}",
                }
            },
            Psychic = {
                name = "屬性",
                text = {
                  "{X:psychic,C:white}超能力{}",
                }
            },
            Fighting = {
                name = "屬性",
                text = {
                  "{X:fighting,C:white}格鬥{}",
                }
            },
            Colorless = {
                name = "屬性",
                text = {
                  "{X:colorless,C:white}一般{}",
                }
            },
            Dark = {
                name = "屬性",
                text = {
                  "{X:dark,C:white}惡{}",
                }
            },
            Metal = {
                name = "屬性",
                text = {
                  "{X:metal,C:white}鋼{}",
                }
            },
            Fairy = {
                name = "屬性",
                text = {
                  "{X:fairy,C:white}妖精{}",
                }
            },
            Dragon = {
                name = "屬性",
                text = {
                  "{X:dragon,C:white}龍{}",
                }
            },
            Earth = {
                name = "屬性",
                text = {
                  "{X:earth,C:white}地面{}",
                }
            },
            --Have you Heard? Bird is the wordddd
            Bird = {
                name = "屬性",
                text = {
                  "{X:bird,C:white}鳥{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "原始之力",
                text = {
                    "這張牌的效果",
                    "會以打出的{C:attention}#1#{}的數量來決定",
                    "{C:inactive}（效果會{C:attention}累計地觸發{}{C:inactive}）"
                }
            },
            energize = {
                name = "能量",
                text = {
                  "永久增加小丑牌的",
                  "{C:mult}倍數{}、{C:chips}籌碼{}、{C:money}金錢{}及{X:mult,C:white}X{}倍數數值",
                }
            },
            eitem = {
                name = "進化牌",
                text = {
                    "對最左邊及{C:attention}適合的{}",
                    "小丑牌進行進化"
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "物品牌",
                text = {
                    "適用於{C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "屬性轉換牌",
                text = {
                    "對最左邊或選擇的小丑牌",
                    "附上{V:1}#1#{}貼紙",
                }
            },
            typechangerpoke = {
                name = "屬性轉換小丑牌",
                text = {
                    "會對自身附上{V:1}#1#{}貼紙",
                }
            },
            basic = {
                name = "基礎",
                text = {
                    "未曾{C:attention}進化{}的",
                    "寶可夢小丑牌"
                }
            },
            stage1 = {
                name = "一次進化",
                text = {
                    "已{C:attention}進化{}一次的",
                    "寶可夢小丑牌"
                }
            },
            stage2 = {
                name = "二次進化",
                text = {
                    "已{C:attention}進化{}兩次的",
                    "寶可夢小丑牌"
                }
            },
            energy = {
                name = "能量",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "給予金錢的機率",
                text = {
                    "有{C:attention}#1#%{}的機率",
                    "獲得額外{C:money}$1{}"
                }
            },
            mult_progress = {
                name = "獲得的倍數進度",
                text = {
                    "對獲得的{C:mult}倍數{}",
                    "的{C:attention}#1#%{}進度增加{C:mult}+1{}",
                }
            },
            chip_progress = {
                name = "獲得的籌碼進度",
                text = {
                    "對獲得的{C:chip}籌碼{}",
                    "的{C:attention}#1#%{}進度增加{C:chip}+1{}",
                }
            },
            money_progress = {
                name = "獲得的金錢進度",
                text = {
                    "對獲得的{C:money}金錢{}",
                    "的{C:attention}#1#%{}進度增加{C:money}1${}",
                }
            },
            availability = {
                name = "現身條件",
                text = {
                    "如果你有{C:attention}有限期的小丑牌{}",
                    "這張牌就不會出現",
                }
            },
            baby = {
                name = "嬰兒",
                text = {
                    "出牌時，如果有{C:attention}非嬰兒{}",
                    "小丑牌在這張牌的右邊",
                    "這張牌會被{C:attention}減益{}"
                }
            },
            nature = {
                name = "偏好牌級",
                text = {
                    "這張小丑牌所需要觸發的{C:attention}#1#{}或一列的{C:attention}#1#{}",
                    "會在這張牌生成後隨機決定",
                }
            },
            merge = {
                name = "合併",
                text = {
                  "移除一張卡牌",
                  "並加入到這張小丑牌",
                  "按下右滑鼠鍵",
                  "來檢視已合併的卡牌",
                  "{C:inactive}（合併的小丑牌不能被複製）{}"
                }
            },
            rewards_ruins_of_alph = {
                name = "圖騰獎勵",
                text = {
                  "{C:attention}#1#{} - {C:attention}野生{}小丑牌",
                  "{C:attention}#2#{} - {C:attention}複製{}一張隨機小丑牌",
                  "{C:attention}#3#{} - {C:attention}藍圖小丑{}",
                  "{C:attention}#4#{} - {C:attention}大群圖騰",
                  "{C:inactive}（獲得的獎勵不會重疊）{}"
                }
            },
            scry_cards = {
                name = "預視",
                text = {
                    "可以看見你的牌組中",
                    "頂部的卡牌"
                }
            },
            mega_rule = {
                name = "限制",
                text = {
                    "每張持有的{C:attention}超級石{}",
                    "只能對一張小丑牌進行{C:attention}超級進化{}",
                }
            },
            mega_poke = {
                name = "超級進化",
                text = {
                    "這張小丑牌可以使用{C:attention}超級石{}",
                    "來進行{C:attention}超級進化{}",
                }
            },
            mega_used_on = {
                name = "使用在",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "X/Y超級進化",
                text = {
                  "{C:attention}超級進化{}的形態是基於小丑牌的位置",
                  "最左邊 - {C:attention}#1#{}",
                  "最右邊 - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "非自然進化",
                text = {
                    "必需使用{C:attention}進化牌{}才能進化",
                }
            },
            deli_gift = {
                name = "禮物",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}物品{}{C:attention}牌",
                    "{C:green}20%{} - {C:attention}兌換券標籤",
                    "{C:green}15%{} - {C:dark_edition}彩色{}{C:attention}禮物卡",
                }
            },
            pickup = {
              name = "撿拾的物品",
              text = {
                "{C:green}34%{} - {C:item}物品牌{}",
                "{C:green}25%{} - {C:attention}吃剩的東西",
                "{C:green}25%{} - {C:attention}精靈球",
                "{C:green}15%{} - {C:attention}超級球",
                "{C:green}1%{} - {C:attention}高級球",
              }
            },
            percent_chance = {
                name = "百份比機率",
                text = {
                  "這張牌的效果",
                  "有{C:green}#1#%{}的機率觸發",
                  "{C:inactive}（機率不能提升）{}"
                }
            },
            holding = {
                name = "攜帶物品",
                text = {
                  "這張牌附帶",
                  "一張{C:attention}#1#{}牌",
                  "{C:inactive}（必須有空位）{}"
                }
            },
            eeveelution = {
                name = "伊布家族",
                text = {
                    "{C:attention}水之石{} - {X:water,C:white}水伊布{}",
                    "{C:attention}雷之石{} - {X:lightning,C:black}雷伊布{}",
                    "{C:attention}火之石{} - {X:fire,C:white}火伊布{}",
                    "{C:attention}日之石{} - {X:psychic,C:white}太陽伊布{}",
                    "{C:attention}月之石{} - {X:dark,C:white}月亮伊布{}",
                    "{C:attention}葉之石{} - {X:grass,C:white}葉伊布{}",
                    "{C:attention}冰之石{} - {X:water,C:white}冰伊布{}",
                    "{C:attention}光之石{} - {X:fairy,C:white}仙子伊布{}"
                }
            },
            poke_egg_tip = {
                name = "神奇蛋",
                text = {
                  "看下去很孤獨及冰冷的"
                }
              },
            poke_top_cards = {
                name = "頂部的卡牌",
                text = {
                  "{C:attention}#1#{}",
                  "{C:attention}#2#{}",
                }
            },
            poke_drain = {
                name = "吸取",
                text = {
                  "如果有小丑牌的出售價高於{C:money}$1{}",
                  "對那張小丑牌的出售價轉移至這張牌上",
                }
            },
            poke_drain_item = {
                name = "吸取",
                text = {
                  "如果有小丑牌的出售價高於{C:money}$1{}",
                  "移除那張小丑牌的出售價",
                }
            },
            poke_volatile_left = {
                name = "左邊揮發",
                text = {
                  "這張小丑牌的效果",
                  "只會在這張牌在{C:attention}最左邊{}時觸發",
                  "{C:inactive}（無視其他{C:attention}揮發性的{C:inactive}寶可夢）"
                }
            },
              poke_volatile_right = {
                name = "右邊揮發",
                text = {
                  "這張小丑牌的效果",
                  "只會在這張牌在{C:attention}最右邊{}時觸發",
                  "{C:inactive}（無視其他{C:attention}揮發性的{C:inactive}寶可夢）"
                }
            },
            sketch = {
                name = "寫生",
                text = {
                  "複製小丑牌的能力",
                  "直到那張牌被賣出，摧毀或複製其他能力",
                  "被複製的能力會在提示框",
                  "及寶可夢圖鑑中顯示"
                }
            },
            precise_energy_tooltip = {
                name = "精準的能量刻度",
                text = {
                    "{s:0.8}使用{C:attention,s:0.8}小數{}{s:0.8}來顯示所有的{C:pink,s:0.8}能量{}{s:0.8}加成的數值",
                    "{C:attention,s:0.8}禁用{}{s:0.8}這個選項會對加成造成以下影響",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}乘成{}{s:0.8}倍數 - 使用小數",
                    "{C:attenion}2. {s:0.8}加成{C:mult,s:0.8}倍數{}{s:0.8}及{C:chips,s:0.8}籌碼{}{s:0.8} - 上取整至整數",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}獲得的倍數{}{s:0.8}及{C:chips,s:0.8}獲得的籌碼{}{s:0.8} - 小數單位會以", 
                    "{s:0.8}百分比顯示，用於套用加成到基本{C:mult,s:0.8}倍數{}{s:0.8}及{C:chips,s:0.8}籌碼{}",
                    "{C:attenion}4. {C:money,s:0.8}金錢{}{s:0.8} - 小數單位會以百分比顯示",
                    "{s:0.8}用於有機率獲得額外{C:money,s:0.8}金錢{}{s:0.8}的效果{}",
                    "{C:inactive,s:0.8}（非寶可夢小丑牌總是使用精準刻度）{}"
                }   
            },
            discovery_tooltip = {
                name = "隱藏未發現的內容",
                text = {
                    "這個模組的內容",
                    "全都預設為未發現的",
                    "關閉這個選項會顯示所有模組的內容",
                    "{C:red}關閉這個選項後，這個操作不會撤銷{}"
                }
            }, 
            pokemaster_tooltip = {
              name = "大師級模式",
              text = {
                "只可使用寶可夢小丑牌",
                "啟用額外的賭注"
              }
            },
            designed_by = {
                name = "設計者",
                text = {
                    "{C:dark_edition}#1#{}"
                }
            },
            endless = {
                name = "可重用",
                text = {
                    "使用後不會消耗",
                    "{C:inactive,s:0.8}（不會被{C:attention,s:0.8}彎曲的湯匙{C:inactive,s:0.8}產生）"
                }
            },
            sylveon_tag_pool = {
                name = "可能獲得的標籤",
                text = {
                    "{C:attention}#1#",
                    "{C:tarot}#2#",
                    "{C:attention}#3#",
                }
            },
            omastar_tag_pool = {
              name = "可能獲得的標籤",
              text = {
                "{C:money}#1#",
                "{C:money}#2#",
                "{C:money}#3#",
                "{C:money}#4#",
                "{C:money}#5#",
              }
            },
            safaridesc = {
                name = "野生",
                text = {
                    "只可以透過",
                    "{C:attention}進化{}或特定{C:attention}的物品{}",
                    "來獲得此牌"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "粉紅封蠟章",
                text = {
                    "如果此牌在{C:attention}第一次出牌{}時得分",
                    "產生一張{C:pink}能量{}牌",
                },
            },

            poke_silver_seal = {
                name = "銀色封蠟章",
                text = {
                  "如果這張牌在出牌時{C:attention}在手牌中",
                  "產生一張{C:item}物品{}牌",
                  "並{C:attention}棄掉{}這張牌"
                }
            },

            --[[
            grass_sticker = {
                name = "屬性",
                text = {
                    "{X:grass,C:white}草{}"
                } 
            },
            fire_sticker = {
                name = "屬性",
                text = {
                    "{X:fire,C:white}火{}"
                } 
            },
            water_sticker = {
                name = "屬性",
                text = {
                    "{X:water,C:white}水{}"
                } 
            },
            lightning_sticker = {
                name = "屬性",
                text = {
                    "{X:lightning,C:white}電{}"
                } 
            },
            psychic_sticker = {
                name = "屬性",
                text = {
                    "{X:psychic,C:white}超能力{}"
                } 
            },
            fighting_sticker = {
                name = "屬性",
                text = {
                    "{X:fighting,C:white}格鬥{}"
                } 
            },
            colorless_sticker = {
                name = "屬性",
                text = {
                    "{X:colorless,C:white}一般{}"
                } 
            },
            dark_sticker = {
                name = "屬性",
                text = {
                    "{X:dark,C:white}惡{}"
                } 
            },
            metal_sticker = {
                name = "屬性",
                text = {
                    "{X:metal,C:white}鋼{}"
                } 
            },
            fairy_sticker = {
                name = "屬性",
                text = {
                    "{X:fairy,C:white}妖精{}"
                } 
            },
            dragon_sticker = {
                name = "屬性",
                text = {
                    "{X:dragon,C:white}龍{}"
                } 
            },
            earth_sticker = {
                name = "屬性",
                text = {
                    "{X:earth,C:white}地面{}"
                } 
            },
            --]]
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "未發現",
                text = {
                    "在無種子遊戲中",
                    "購買或使用此牌",
                    "來了解功用"
                }
            },
            undiscovered_item = {
                name = "未發現",
                text = {
                    "在無種子遊戲中",
                    "購買或使用此牌",
                    "來了解功用"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "特大寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "超級寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "特大寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "超級寶可夢禮包",
                text = {
                    "從{C:attention}#2#{}張{C:pink}能量{}或{C:item}物品{}牌中",
                    "選擇{C:attention}#1#{}張"
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "願望包",
                text = {
                    "{C:dark_edition}許個願望！{}",
                },
            },
            poke_hazards = {
                name = "陷阱",
                text = {
                    "選擇{C:attention}盲注{}後",
                    "會根據現時的牌組大小",
                    "而增加{C:attention}陷阱牌{}到牌組中",
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
            c_poke_poke_master = "寶可夢大師",
            c_poke_nuzlocke = "Nuzlocke",
            c_poke_goodasgold = "黃金之軀",
            c_poke_parenthood = "為人父母",
            c_poke_littlecup = "新芽盃",
            c_poke_hammertime = "錘子時間"
        },
        dictionary = {
            k_energy = "能量",
            k_item = "物品",
            k_poke_pocket_pack = "寶可夢禮包",
            k_poke_wish_pack = "願望包",

            k_poke_safari = "野生",

            b_save = "儲存",
            b_energy_cards = "能量牌",
            b_item_cards = "物品牌",
            
            --Mod Menu stuff
            poke_settings_header_required = "需要重啟：",
            poke_settings_header_norequired = "無需重啟：",
            poke_settings_pokemon_only = "只使用寶可夢？",
            poke_settings_unlimited_energy = "能量無上限？",
            poke_settings_shiny_playing_cards = "普通卡牌可有發光版本？",
            poke_settings_jokers_only = "只用非寶可夢小丑牌？",
            poke_settings_no_evolutions = "禁止進化？",
            poke_settings_pokeballs = "允許精靈球？",
            poke_settings_pokedex_number = "顯示圖鑑號碼？",
            poke_settings_pokemon_splash = "片頭中顯示隨機的寶可夢牌？",
            poke_settings_pokemon_gen_one = "只用第一世代的寶可夢？",
            poke_settings_pokemon_precise_energy = "使用精準的能量刻度？",
            poke_credits_actualcredits = "製作員名單",
            poke_credits_thanks = "鳴謝於",
            poke_credits_lead = "主導開發：",
            poke_credits_graphics = "圖形設計：",
            poke_credits_quality_assurance_main = "品質保證：",
            poke_credits_developer = "開發者：",
            poke_credits_designer = "設計輔助：",
            poke_credits_community_manager = "社群經理：",
            poke_credits_promotion_producer = "推廣員：",
            poke_credits_localization = "翻譯員：",
            poke_credits_sound = "音效設計：",

            poke_plus_pokeitem = "+1 物品",
            poke_plus_energy = "+1 能量",
            poke_destroyed_ex = "摧毀！",
            poke_evolve_success = "進化！",
            poke_evolve_level = "升級！",
            poke_tera_ex = "變更！",
            poke_metal_ex = "鋼化！",
            poke_dragon_ex = "龍化！",
            poke_energized_ex = "能量上升！",
            poke_unlimited_energy = "無上限",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "大蔥鴨",
            cubone_marowak_infoqueue = "卡拉卡拉及嘎啦嘎啦",
            snorlax_infoqueue = "卡比獸",
            pokeball_variable = "精靈球",
            goodrod_variable = "好釣竿",
            pinkseal_variable = "粉紅封蠟章",
            twisted_spoon_variable = "彎曲的湯匙",
            double_rainbow_energy_variable = "雙虹能量",

            --From Gastly Line
            poke_lick_ex = "舔舔！",
            poke_lick = "舔舔",
            --From Kingler
            poke_surf_ex = "衝浪！",
            --From Voltorb Line
            poke_explosion_ex = "自爆！",
            --From Exeggutor
            poke_solar_ex = "日光束！",
            poke_solar = "日光束",
            --From Pinsir
            poke_pinsir_pin = "釘選！",
            poke_pinsir_remove_pin = "解釘！",
            --From Tangela line
            poke_tangela_bonus = "全中！",
            --Golbat And Crobat thingy
            poke_screech_ex = "尖叫！",
            --Hoppip Line
            poke_hop_ex = "Hop!",
            poke_skip_ex = "Skip!",
            poke_jump_ex = "Jump!",
            --From Bellossom
            poke_petal_dance_ex = "花瓣舞！",
            poke_petal_dance = "花瓣舞",
            --From Scizor
            poke_x_scissor_ex = "十字剪！",
            poke_x_scissor = "十字剪",
            --From Kingdra
            poke_twister_ex = "龍捲風！",
            --From Mime Jr.
            poke_mime_ex = "模仿！",
            --From Magmortar
            poke_fire_blast_ex = "大字爆炎！",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "打雷！",
            poke_gift_ex = "禮物！",
            poke_faint_ex = "瀕死！",
            poke_nido_ex = "Nido!",
            poke_disguise_intact = "畫皮被觸發！防止了死亡！",
            poke_disguise_broken = "畫皮已脫落！死亡沒有防止！",
            poke_dig_ex = "Dig!",
            poke_blazekick_ex = "火焰踢！",
            poke_darts_ex = "Darts!",
            poke_none = "None",
            poke_dawn_info1 = "（會設定至下一個打出的牌型）",
            poke_dawn_info2 = "（牌型設定了！）",
            poke_make_it_rain = "淘金潮！",
            poke_val_down = "價值下降！",
            poke_powder_ex = "細雪！",
            poke_future_sight = "識破！",
            poke_smell_ya = "再見了！",
            poke_wowthree = "三節！",
            poke_illusion = "...?",
            poke_crack_ex = "孵化！",
            poke_shake_ex = "Shake!",
            poke_reload_ex = "Reload!",
            poke_shadow_tag_ex = "Shadow Tag!",
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "粉紅封蠟章",
            poke_silver_seal = "銀色封蠟章",

            poke_shiny = "發光",

            grass_sticker = "屬性貼紙",
            fire_sticker = "屬性貼紙",
            water_sticker = "屬性貼紙",
            lightning_sticker = "屬性貼紙",
            psychic_sticker = "屬性貼紙",
            fighting_sticker = "屬性貼紙",
            colorless_sticker = "屬性貼紙",
            dark_sticker = "屬性貼紙",
            metal_sticker = "屬性貼紙",
            fairy_sticker = "屬性貼紙",
            dragon_sticker = "屬性貼紙",
            earth_sticker = "屬性貼紙",

            k_poke_safari = "野生",
            k_poke_mega = "超級",
        },
        tutorial = {
                poke_intro_1 = {
                    "你好！我是{C:attention}金寶博士{}！",
                    "歡迎來到{C:attention}撲克夢的世界{}！",
                },
          },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"打敗Boss盲注後，小丑牌欄位{C:attention}+1{}{C:inactive}（最多5個）"},
           ch_c_poke_nuzlocke = {"每個底注中第一個商店必定有{C:attention}丑角禮包"}
        },
    }
}
