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
                    "開局時獲得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}優惠券及",
                    "{C:tarot,T:c_poke_pokeball}#2#{}卡",
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "訃聞牌組",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "發亮牌組",
                text = {
                    "所有小丑牌附有",
                    "隨機的{C:pink}屬性{}貼紙",
                    "及{C:attention}+1{}{C:pink}能量{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "夏翠絲密室",
                text = {
                    "每次出牌時",
                    "對其中隨機一個屬性減益",
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
                    "產生一張{C:attention}月亮{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_sunstone = {
                name = "日之石",
                text = {
                    "產生一張{C:attention}太陽{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_waterstone = {
                name = "水之石",
                text = {
                    "產生一張{C:attention}教皇{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_thunderstone = {
                name = "雷之石",
                text = {
                    "產生一張{C:attention}惡魔{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_firestone = {
                name = "火之石",
                text = {
                    "產生一張{C:attention}戀人{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_leafstone = {
                name = "葉之石",
                text = {
                    "產生一張{C:attention}世界{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_linkcable = {
                name = "聯繫繩",
                text = {
                    "產生一張{C:attention}死神{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_leftovers = {
                name = "吃剩的東西",
                text = {
                    "產生一張{C:attention}吊人{}牌",
                    "{C:attention}攜帶物品牌{}",
                    "{C:inactive}（必須有空位）{}"
                }
            },
            c_poke_leek = {
                name = "大蔥",
                text = {
                    "產生一張{C:attention}幸運之輪{}牌",
                    "{C:attention}攜帶物品牌{}",
                    "{C:inactive}（必須有空位）{}"
                }
            },
            c_poke_thickclub = {
                name = "粗骨頭",
                text = {
                    "產生一張{C:attention}力量{}牌",
                    "{C:attention}攜帶物品牌{}",
                    "{C:inactive}（必須有空位）{}"
                }
            },
            c_poke_teraorb = {
                name = "太晶珠",
                text = {
                    "對最左邊的小丑牌",
                    "附上隨機的",
                    "{C:pink}屬性{}貼紙",
                    "及{C:attention}+1{}{C:pink}能量{}"
                },
            },
            c_poke_metalcoat = {
                name = "金屬膜",
                text = {
                    "對最左邊的小丑牌",
                    "附上{C:metal}鋼{}貼紙",
                    "產生一張{C:attention}戰車{}牌",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_dragonscale = {
                name = "龍之鱗片",
                text = {
                    "對最左邊的小丑牌",
                    "附上{C:dragon}龍{}貼紙",
                    "產生一張{C:attention}皇帝{}牌",
                    "{C:inactive}（必須有空位）{}"
                },
            },
            c_poke_kingsrock = {
                name = "王者之證",
                text = {
                    "選擇{C:attention}#1#{}張手牌",
                    "並轉換成{C:attention}K{}",
                    "{C:attention}此牌可用於進化{}",
                },
            },
            c_poke_upgrade = {
                name = "升級資料",
                text = {
                    "選擇{C:attention}#1#{}張手牌",
                    "並附上隨機的{C:attention}加強效果{}",
                    "{C:attention}此牌可用於進化{}",
                }
            },
            c_poke_dubious_disc = {
                name = "可疑修正檔",
                text = {
                    "隨機化或移除",
                    "所有手牌的{C:attention}加強效果{}",
                    "{C:attention}進化牌{}",
                    "{C:inactive}（包括無加強的牌）{}"
                }
            },
            c_poke_icestone = {
                name = "冰之石",
                text = {
                    "產生一張{C:attention}正義{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                }
            },
            c_poke_shinystone = {
                name = "光之石",
                text = {
                    "產生一張{C:attention}星星{}牌",
                    "{C:attention}此牌可用於進化{}",
                    "{C:inactive}（必須有空位）{}"
                }
            },
            c_poke_twisted_spoon = {
                name = "彎曲的湯匙",
                text = {
                    "產生比賽中最近使用的",
                    "{C:item}物品{}牌或{C:pink}能量{}牌",
                    "{s:0.8,C:item}彎曲的湯匙{s:0.8}除外"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "草能量",
                text = {
                    "增加最左邊的{C:attention}草{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fire_energy = {
                name = "火能量",
                text = {
                    "增加最左邊的{C:attention}火{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_water_energy = {
                name = "水能量",
                text = {
                    "增加最左邊的{C:attention}水{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_lightning_energy = {
                name = "電能量",
                text = {
                    "增加最左邊的{C:attention}電{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_psychic_energy = {
                name = "超能量",
                text = {
                    "增加最左邊的{C:attention}超能力{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fighting_energy = {
                name = "鬥能量",
                text = {
                    "增加最左邊的{C:attention}格鬥{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_colorless_energy = {
                name = "無色能量",
                text = {
                    "增加最左邊的小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "對非{C:attention}一般{}屬性小丑牌的增強效果減半",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_darkness_energy = {
                name = "惡能量",
                text = {
                    "增加最左邊的{C:attention}惡{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_metal_energy = {
                name = "鋼能量",
                text = {
                    "增加最左邊的{C:attention}鋼{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fairy_energy = {
                name = "妖能量",
                text = {
                    "增加最左邊的{C:attention}妖精{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "龍能量",
                text = {
                    "增加最左邊的{C:attention}龍{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
                    "{C:inactive}(每張小丑牌可增強{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_earth_energy = {
                name = "地能量",
                text = {
                    "增加最左邊的{C:attention}地面{}屬性小丑牌的",
                    "{C:attention}加分{}及{C:money}金錢{}數值",
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
                    "{C:attention}+1{}店內的擴充包欄位",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "妙蛙種子",
                text = {
                    "{C:attention}+#4#{}手牌數量",
                    "手牌中，每一張{C:attention}#3#{}會給予{C:money}$#1#{}",
                    "卡牌點數於每回合變更",
                    "{C:inactive}（目前已獲得{C:money}$#2#{C:inactive}）",
                    "{C:inactive}（獲得{C:money}$16{}{C:inactive}後進化）"
                } 
            },
            j_poke_ivysaur = {
                name = "妙蛙草",
                text = {
                    "{C:attention}+#3#{}手牌數量",
                    "手牌中，每一張{C:attention}#4#{}會給予{C:money}$#1#{}或{C:money}$#5#{}",
                    "卡牌點數於每回合變更",
                    "{C:inactive}（目前已獲得{C:money}$#2#{C:inactive}）",
                    "{C:inactive}（獲得{C:money}$16{}{C:inactive}後進化）"
                } 
            },
            j_poke_venusaur = {
                name = "妙蛙花",
                text = {
                    "{C:attention}+#3#{}手牌數量",
                    "手牌中，每一張{C:attention}#4#{}會給予{C:money}$#1#{}",
                    "卡牌點數於每回合變更",
                    "{C:inactive}（目前已獲得{C:money}$#2#{C:inactive}）",
                }
            },
            j_poke_charmander = {
                name = "小火龍",
                text = {
                    "{C:red}+#4#{}次棄牌",
                    "當剩下{C:attention}#3#{}次棄牌數時",
                    "每次出牌會給此牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為倍數{C:mult}+#1#{C:inactive}）",
                    "{C:inactive}（在{C:mult}+16{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_charmeleon = {
                name = "火恐龍",
                text = {
                    "{C:red}+#4#{}次棄牌",
                    "當剩下{C:attention}#3#{}次棄牌數時",
                    "每次出牌會給此牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為倍數{C:mult}+#1#{C:inactive}）",
                    "{C:inactive}（在{C:mult}+36{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_charizard = {
                name = "噴火龍",
                text = {
                    "{C:red}+#4#{}次棄牌, {C:mult}+#1#{}倍數",
                    "當剩下{C:attention}#3#{}次棄牌數時，倍數{X:mult,C:white} X#2# {}",
                } 
            },
            j_poke_squirtle = {
                name = "傑尼龜",
                text = {
                    "{C:chips}+#3#{}出牌次數",
                    "當回合結束時，每一個未使用的",
                    "出牌次數會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前為{C:chips}+#1#{C:inactive}籌碼）",
                    "{C:inactive}（在{C:chips}+16{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_wartortle = {
                name = "卡咪龜",
                text = {
                    "{C:chips}+#3#{}出牌次數",
                    "當回合結束時，每一個未使用的",
                    "出牌次數會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前為{C:chips}+#1#{C:inactive}籌碼）",
                    "{C:inactive}（在{C:chips}+36{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_blastoise = {
                name = "水箭龜",
                text = {
                    "{C:chips}+#3#{}出牌次數，{C:chips}+#1#{}籌碼",
                    "每個剩餘的出牌次數給予{C:chips}+#2#{}籌碼",
                } 
            },
            j_poke_caterpie = {
                name = "綠毛蟲",
                text = {
                    "{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_metapod = {
                name = "鐵甲蛹",
                text = {
                    "{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_butterfree = {
                name = "巴大蝶",
                text = {
                    "{C:mult}+#1#{}倍數",
                } 
            },
            j_poke_weedle = {
                name = "獨角蟲",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_kakuna = {
                name = "鐵殼蛹",
                text = {
                    "{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_beedrill = {
                name = "大針蜂",
                text = {
                    "{C:chips}+#1#{}籌碼",
                } 
            },
            j_poke_pidgey = {
                name = "波波",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}的費用",
                    "減低{C:money}$2{}",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_pidgeotto = {
                name = "比比鳥",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}的費用",
                    "減低{C:money}$3{}",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_pidgeot = {
                name = "大比鳥",
                text = {
                    "商店裏的{C:planet}行星牌{}以及",
                    "{C:planet}天外禮包{}全部免費",
                    "使用{C:planet}行星牌{}時獲得{C:money}$#1#{}"
                } 
            },
            j_poke_rattata = {
                name = "小拉達",
                text = {
                    "重新觸發得分中",
                    "{C:attention}最先{}打出的牌",
                    "額外{C:attention}#1#{}次",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_raticate = {
                name = "拉達",
                text = {
                    "重新觸發得分中",
                    "{C:attention}頭兩張{}打出的牌",
                    "額外{C:attention}#1#{}次"
                } 
            },
            j_poke_spearow = {
                name = "烈雀",
                text = {
                    "向倍數追加本次比賽中",
                    "最高牌型等級的{C:attention}雙倍{}數值",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_fearow = {
                name = "大嘴雀",
                text = {
                    "向倍數追加本次比賽中",
                    "最高牌型等級的{C:attention}四倍{}數值"
                } 
            },
            j_poke_ekans = {
                name = "阿柏蛇",
                text = {
                    "如果打出的牌包含",
                    "{C:attention}順子{}，{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_arbok = {
                name = "阿柏怪",
                text = {
                    "如果打出的牌包含",
                    "{C:attention}順子{}，{C:mult}+#1#{}倍數",
                    "如果也包含{C:attention}A{}",
                    "產生一張{C:tarot}塔羅牌{}"
                } 
            },
            j_poke_pikachu = {
                name = "皮卡丘",
                text = {
                    "當回合結束時，每一張小丑牌",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive}（最多{C:money}$10{C:inactive}）",
                    "{C:inactive}（使用{}{C:attention}雷之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_raichu = {
                name = "雷丘",
                text = {
                    "如果擁有超過{C:money}$#2#{}，在回合結束時",
                    "此牌會新增{C:dark_edition}負片{}效果",
                    "{C:inactive,s:0.8}（需要的金錢會依雷丘的數量而增加）{}",
                    "當回合結束時，每一張小丑牌",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive}（最多{C:money}$10{C:inactive}）"
                } 
            },
            j_poke_sandshrew = {
                name = "穿山鼠",
                text = {
                    "當{C:attention}玻璃牌{}被摧毀時",
                    "增加一張複製的{C:attention}石頭牌{}",
                    "到牌組並抽到{C:attention}手牌{}中",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_sandslash = {
                name = "穿山王",
                text = {
                    "當{C:attention}玻璃牌{}被摧毀時",
                    "增加一張複製的{C:attention}鋼鐵牌{}",
                    "到牌組並抽到{C:attention}手牌{}中"
                } 
            },
            j_poke_nidoranf = {
                name = "尼多蘭",
                text = {
                    "手牌中，每張{C:attention}Q{}",
                    "都給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_nidorina = {
                name = "尼多娜",
                text = {
                    "手牌中，每張{C:attention}Q{}",
                    "都給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_nidoqueen = {
                name = "尼多后",
                text = {
                    "{C:attention}+#2#{}手牌數量",
                    "手牌中，每張{C:attention}Q{}",
                    "都給予{C:chips}+#1#{}籌碼",
                } 
            },
            j_poke_nidoranm = {
                name = "尼多朗",
                text = {
                    "手牌中，每張{C:attention}K{}",
                    "都給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_nidorino = {
                name = "尼多力諾",
                text = {
                    "手牌中，每張{C:attention}K{}",
                    "都給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_nidoking = {
                name = "尼多王",
                text = {
                    "{C:attention}+#2#{}手牌數量",
                    "手牌中，每張{C:attention}K{}",
                    "都給予{C:mult}+#1#{}倍數"
                } 
            },
            j_poke_clefairy = {
                name = "皮皮",
                text = {
                    "每張計分的",
                    "{C:clubs}#2#{}花色的牌",
                    "都給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_clefable = {
                name = "皮可西",
                text = {
                    "每張計分的",
                    "{C:clubs}#2#{}花色的牌",
                    "都給予{C:mult}+#1#{}倍數",
                } 
            },
            j_poke_vulpix = {
                name = "六尾",
                text = {
                    "每張計分的{C:attention}9{}",
                    "有{C:green}#1#/#2#{}的機率",
                    "產生一張{C:spectral}靈媒{}牌",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（使用{}{C:attention}火之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_ninetales = {
                name = "九尾",
                text = {
                    "每張計分的{C:attention}9{}",
                    "有{C:green}#1#/#2#{}的機率",
                    "產生一張{C:spectral}靈媒{}牌",
                    "{C:inactive}（必須有空位）"
                } 
            },
            j_poke_jigglypuff = {
                name = "胖丁",
                text = {
                    "每張計分的",
                    "{C:spades}#2#{}花色的牌",
                    "都給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}月之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_wigglytuff = {
                name = "胖可丁",
                text = {
                    "每張計分的",
                    "{C:spades}#3#{}花色的牌",
                    "都給予{C:mult}+#1#{}倍數和{C:chips}+#2#{}籌碼"
                } 
            },
            j_poke_zubat = {
                name = "超音蝠",
                text = {
                    "每張在牌組中的加強牌",
                    "都給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#2#{}{C:inactive}倍數，{C:attention}#4#{}{C:inactive}加強牌）",
                    "{C:inactive}（在擁有{C:mult}#3#{C:inactive}張加強牌時進化）"
                } 
            },
            j_poke_golbat = {
                name = "大嘴蝠",
                text = {
                    "移除計分牌的加強效果",
                    "從{C:attention}倍數{}及{C:attention}萬能{}牌獲得{C:mult}+#2#{}倍數",
                    "從{C:attention}獎勵{}及{C:attention}石頭{}牌獲得{C:chips}+#4#{}籌碼",
                    "從{C:attention}鋼鐵{}及{C:attention}玻璃{}牌獲得{X:red,C:white}X#6#{}倍數",
                    "從{C:attention}黃金{}及{C:attention}幸運{}牌獲得{C:money}$#8#{}金錢",
                    "{C:inactive}（在移除{C:attention}#9#{}{C:inactive}/20張加強牌時進化）",
                    "{C:inactive}（目前為{C:mult}+#1#{}，{C:chips}+#3#{}，{X:red,C:white}X#5#{}，{C:inactive}回合結束時，{}{C:money}$#7#{}）"
                } 
            },
            j_poke_oddish = {
                name = "走路草",
                text = {
                    "每張計分的{C:attention}奇數{}點的牌",
                    "都給予{C:mult}+#1#{}或{C:mult}+#2#{}倍數",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_gloom = {
                name = "臭臭花",
                text = {
                    "每張計分的{C:attention}奇數{}點的牌",
                    "都給予{C:mult}+#1#{}或{C:mult}+#2#{}倍數",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}或{}{C:attention}日之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_vileplume = {
                name = "霸王花",
                text = {
                    "每張計分的{C:attention}奇數{}點的牌",
                    "都給予{C:mult}+#2#{}倍數或{X:mult,C:white} X#1# {}倍數"
                } 
            },
            j_poke_paras = {
                name = "派拉斯",
                text = {
                    "如果打出的牌包含{C:attention}兩對{}",
                    "此小丑牌獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{}{C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+8{}{C:inactive}倍數時進化)"
                }  
            },
            j_poke_parasect = {
                name = "派拉斯特",
                text = {
                    "如果打出的牌包含{C:attention}兩對{}",
                    "此小丑牌獲得{C:mult}+#2#{}倍數",
                    "否則{C:mult}-#3#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{}{C:inactive}倍數）",
                } 
            },
            j_poke_venonat = {
                name = "毛球",
                text = {
                    "對所有{C:attention}機率牌{}的{C:green,E:1,S:1.1}機率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}2/6{C:inactive}）",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_venomoth = {
                name = "摩魯蛾",
                text = {
                    "對所有{C:attention}機率牌{}的{C:green,E:1,S:1.1}機率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}3/6{C:inactive}）"
                } 
            },
            j_poke_diglett = {
                name = "地鼠",
                text = {
                    "得到這張牌時，",
                    "產生一張{C:attention}金星{}牌",
                    "{C:inactive}（必須有空位）{}",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_dugtrio = {
                name = "三地鼠",
                text = {
                    "每一級的三條都給予{X:red,C:white} X#1# {}倍數",
                    "等級1除外",
                    "{C:inactive}（目前為{X:red,C:white} X#2# {}{C:inactive}倍數）"
                } 
            },
            j_poke_meowth = {
                name = "喵喵",
                text = {
                    "每回合結束時",
                    "獲得{C:money}$#1#{}",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_persian = {
                name = "貓老大",
                text = {
                    "每回合結束時",
                    "獲得最左邊小丑牌賣出價格的",
                    "{C:attention}雙倍{}{C:money}金錢{}", 
                    "{C:inactive}（自身除外）{}",
                    "{C:inactive}（目前為{C:money}$#1#{C:inactive}，最多{C:money}$15{C:inactive}）",
                } 
            },
            j_poke_psyduck = {
                name = "可達鴨",
                text = {
                    "如果打出的牌為",
                    "單張{C:attention}人頭牌{}，獲得{C:money}$#1#{}",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_golduck = {
                name = "哥達鴨",
                text = {
                    "如果打出的牌為",
                    "單張{C:attention}人頭牌{}，獲得{C:money}$#1#{}",
                    "並變為{C:attention}黃金牌{}"
                } 
            },
            j_poke_mankey = {
                name = "猴怪",
                text = {
                    "每張計分的{C:attention}2{}，",
                    "{C:attention}3{}或{C:attention}5{}給予",
                    "{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            j_poke_primeape = {
                name = "火爆猴",
                text = {
                    "每張計分的{C:attention}2{},",
                    "{C:attention}3{}或{C:attention}5{}給予",
                    "{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "{C:inactive}（在觸發{C:attention}#3#{}{C:inactive}/25 次後進化）{}"
                } 
            },
            j_poke_growlithe = {
                name = "卡蒂狗",
                text = {
                    "如果打出的牌包含{C:attention}同花{}",
                    "{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}火之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_arcanine = {
                name = "風速狗",
                text = {
                    "如果打出的牌包含{C:attention}同花{}",
                    "{X:red,C:white} X#1# {}倍數",
                    "選擇{C:attention}盲注{}後",
                    "產生一張{C:attention}戀人{}牌",
                } 
            },
            j_poke_poliwag = {
                name = "蚊香蝌蚪",
                text = {
                    "每張計分的{V:1}#3#{}花色的牌",
                    "給予{C:mult}+#1#{}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_poliwhirl = {
                name = "蚊香君",
                text = {
                    "每張計分的{V:1}#2#{}花色的牌",
                    "給予{C:mult}+#1#{}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}水之石{}{C:inactive,s:0.8}或{C:attention,s:0.8}王者之證{}{C:inactive,s:0.8}牌進化）"
                } 
            },
            j_poke_poliwrath = {
                name = "蚊香泳士",
                text = {
                    "每張計分的{V:1}#2#{}花色的牌",
                    "給予{C:mult}+#7#{}倍數及{X:mult,C:white} X#1# {}倍數",
                    "花色在出牌後按次序地變更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "凱西",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已經在此局出過時",
                    "有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_kadabra = {
                name = "勇基拉",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已經在此局出過時",
                    "有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_alakazam = {
                name = "胡地",
                text = {
                    "{C:attention}+#3#{}消耗牌欄位",
                    "如果打出的{C:attention}牌型{}",
                    "已經在此局出過時",
                    "有{C:green}#1#/#2#{}的機率產生一張{C:attention}愚者{}牌"
                } 
            },
            j_poke_machop = {
                name = "腕力",
                text = {
                    "{C:chips}+#1#{}出牌次數",
                    "{C:mult}-#2#棄牌次數{}",
                    "{C:mult}+#4#{}倍數",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_machoke = {
                name = "豪力",
                text = {
                    "{C:chips}+#1#{}出牌次數",
                    "{C:mult}-#2#棄牌次數{}",
                    "{C:mult}+#3#{}倍數",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_machamp = {
                name = "怪力",
                text = {
                    "{C:chips}+#1#{}出牌次數",
                    "{C:mult}-#2#棄牌次數{}",
                    "{C:mult}+#3#{}倍數"
                } 
            },
            j_poke_bellsprout = {
                name = "喇叭芽",
                text = {
                    "每張計分的{C:attention}偶數{}點的牌",
                    "給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_weepinbell = {
                name = "口呆花",
                text = {
                    "每張計分的{C:attention}偶數{}點的牌",
                    "給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_victreebel = {
                name = "大食花",
                text = {
                    "每張計分的{C:attention}偶數{}點的牌",
                    "給予{C:chips}+#1#{}籌碼",
                    "並{C:attention}重新觸發{}"
                } 
            },
            j_poke_tentacool = {
                name = "瑪瑙水母",
                text = {
                    "如果打出的牌只有{C:attention}10{}",
                    "每張計分的{C:attention}10{}",
                    "給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_tentacruel = {
                name = "毒刺水母",
                text = {
                    "每張計分的{C:attention}10{}",
                    "給予{C:mult}+#1#{}倍數",
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
                    "如果打出的牌包含{C:attention}順子{}",
                    "此小丑牌會獲得{C:chips}#2#{}籌碼", 
                    "{C:inactive}（目前為{C:chips}+#1#{C:inactive}籌碼）",
                    "{C:inactive}（在{C:chips}+60{}{C:inactive}籌碼時進化）"
                } 
            }, 
            j_poke_rapidash = {
                name = "烈焰馬",
                text = {
                    "如果打出的牌包含{C:attention}順子{}",
                    "此小丑牌會獲得{C:chips}#2#{}籌碼", 
                    "第一次出牌時附上{C:attention}捷徑{}效果",
                    "{C:inactive}（目前為{C:chips}+#1#{C:inactive}籌碼）",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "呆呆獸",
                text = {
                    "每回合的{C:attention}最後一次出牌{}",
                    "可得到{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
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
                    "每次出牌獲得{X:red,C:white} X#1# {}倍數",
                    "回合結束時重設",
                    "{C:inactive}（目前為{X:red,C:white} X#2# {}{C:inactive}倍數）"
                } 
            },
            j_poke_magnemite = {
                name = "小磁怪",
                text = {
                    "每張計分的{C:attention}鋼鐵{}牌",
                    "給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_magneton = {
                name = "三合一磁怪",
                text = {
                    "每張計分的{C:attention}鋼鐵{}牌",
                    "給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（使用{C:attention}雷之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_farfetchd = {
                name = '大蔥鴨',      
                text = {
                    "當你得到這張牌後",
                    "產生一張{C:attention}大蔥{}牌",
                    "有{C:green}#2#/#3#{}的機率給予{X:red,C:white}X#1#{}倍數",
                    "每張在手的{C:attention}大蔥{}牌加倍這個機率",
                } 
            },
            j_poke_doduo = {
                name = '嘟嘟',      
                text = {
                    "如果計分的牌包含至少{C:attention}2{}張人頭牌",
                    "給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_dodrio = {
                name = '嘟嘟利',      
                text = {
                    "如果計分的牌包含至少{C:attention}3{}張人頭牌",
                    "給予{C:mult}+#1#{}倍數"
                } 
            },
            j_poke_seel = {
                name = '小海獅',      
                text = {
                    "如果回合中的{C:attention}第一次{}出牌",
                    "只有{C:attention}1{}張牌，有{C:green}#1#/#2#{}的機率",
                    "新增隨機的{C:attention}封蠟章{}到那張牌",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_dewgong = {
                name = '白海獅',      
                text = {
                    "如果回合中的{C:attention}第一次{}出牌",
                    "只有{C:attention}1{}張牌",
                    "新增隨機的{C:attention}封蠟章{}到那張牌"
                } 
            },
            j_poke_grimer = {
                name = '臭泥',      
                text = {
                    "如果你的牌組有多於{C:attention}#3#{}張牌",
                    "給予{C:mult}+#1#{}倍數",
                    "每回合結束時",
                    "增加一張隨機的撲克牌到牌組",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_muk = {
                name = '臭臭泥',      
                text = {
                    "在你的牌組中",
                    "每張多於{C:attention}#3#{}張牌都獲得{C:mult}+#1#{}倍數",
                    "如果你的牌組有多於{C:attention}#4#{}張牌，{X:mult,C:white} X#2# {}倍數",
                    "{C:inactive,s:0.8}（目前為{C:mult,s:0.8}+#5#{}{C:inactive,s:0.8}倍數）{}",
                    "每回合結束時",
                    "增加兩張隨機的撲克牌到牌組",
                    "並從牌組中移除一張隨機的撲克牌"
                } 
            },
            j_poke_shellder = {
                name = '大舌貝',      
                text = {
                    "如果打出的牌有計分的{C:attention}5{}",
                    "每一張有{C:green}#1#/#2#{}的機率重新觸發",
                    "{C:inactive}（使用{}{C:attention}水之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_cloyster = {
                name = '刺甲貝',      
                text = {
                    "如果打出的牌有計分的{C:attention}5{}",
                    "每一張有{C:green}#1#/#2#{}的機率重新觸發"
                } 
            },
            j_poke_gastly = {
                name = '鬼斯',      
                text = {
                    "有{C:green}#1#/#2#{}的機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "新增{C:dark_edition}負片{}效果",
                    "{S:1.1,C:red,E:2}觸發後自我毀滅{}",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_haunter = {
                name = '鬼斯通',      
                text = {
                    "有{C:green}#1#/#2#{}的機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "新增{C:dark_edition}負片{}效果",
                    "{S:1.1,C:red,E:2}觸發後自我毀滅{}",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_gengar = {
                name = '耿鬼',      
                text = {
                    "回合結束後，有{C:green}#1#/#2#{}的機率",
                    "對隨機的{C:attention}小丑牌{}",
                    "新增{C:dark_edition}負片{}效果",
                    "{C:inactive,s:0.8}（自身除外，機率不能提升）{}"
                } 
            },
            j_poke_onix = {
                name = '大岩蛇',      
                text = {
                    "{C:attention}第一次出牌{}時，最左邊的計分牌",
                    "會變成{C:attention}石頭牌{}",
                    "{C:inactive}（附上{C:metal}鋼{}{C:inactive}貼紙後進化）{}"
                } 
            },
            j_poke_drowzee = {
                name = '催眠貘',      
                text = {
                    "在此局中，每一張已使用並不重複的",
                    "{C:planet}行星牌{}給予{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+21{C:inactive}倍數時進化）"
                } 
            },
            j_poke_hypno = {
                name = '引夢貘人',      
                text = {
                    "在此局中，每一張已使用並不重複的",
                    "{C:planet}行星牌{}給予{C:mult}+#2#{}倍數",
                    "當你得到這張牌後",
                    "產生一張{C:spectral}入迷{}牌",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                } 
            },
            j_poke_krabby = {
                name = '大鉗蟹',      
                text = {
                    "每張計分的{C:attention}人頭牌{}",
                    "給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_kingler = {
                name = '巨鉗蟹',      
                text = {
                    "每張計分的{C:attention}人頭牌{}",
                    "變成{C:attention}獎勵牌{}",
                } 
            },
            j_poke_voltorb = {
                name = '霹靂電球',      
                text = {
                    "如果這張牌是{C:attention}最左邊{}的小丑牌",
                    "給予{C:mult}+#1#{}倍數並減益這張小丑牌",
                    "直到回合結束",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_electrode = {
                name = '頑皮雷彈',      
                text = {
                    "如果這張牌是{C:attention}最左邊{}的小丑牌",
                    "給予{C:mult}+#1#{}倍數及{C:money}$#2#{}",
                    "並減益這張小丑牌直到回合結束",
                } 
            },
            j_poke_exeggcute = {
                name = '蛋蛋',      
                text = {
                    "每張計分的{C:hearts}#2#{}花色的牌",
                    "給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}葉之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_exeggutor = {
                name = '椰蛋樹',      
                text = {
                    "每張計分的{C:hearts}#3#{}花色的牌",
                    "有{C:green}#4#/#5#{}的機率",
                    "給予{C:mult}+#1#{}倍數及{X:mult,C:white}X#2#{}倍數",
                } 
            },
            j_poke_cubone = {
                name = '卡拉卡拉',      
                text = {
                    "當你得到這張牌後",
                    "產生一張{C:attention}粗骨頭{}牌",
                    "每個已佔據的消耗牌欄位",
                    "給予{C:mult}+#1#{}倍數",
                    "{C:inactive,s:0.75}（{C:attention,s:0.75}粗骨頭{}{C:inactive,s:0.75}牌當作雙倍）{}",
                    "{C:inactive}（目前為{C:mult}+#3#{C:inactive}倍數）",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_marowak = {
                name = '嘎啦嘎啦',      
                text = {
                    "{C:attention}+#2#{}消耗牌欄位",
                    "每個已佔據的消耗牌欄位",
                    "給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive,s:0.75}（{C:attention,s:0.75}粗骨頭{}{C:inactive,s:0.75}牌當作雙倍）{}",
                    "{C:inactive}（目前為{X:mult,C:white} X#3# {}{C:inactive}倍數）",
                } 
            },
            j_poke_hitmonlee = {
                name = '飛腿郎',      
                text = {
                    "在你的牌組中，每兩張少於{C:attention}#2#{}張的牌",
                    "都給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前為{X:red,C:white}X#3#{C:inactive}倍數）",
                } 
            },
            j_poke_hitmonchan = {
                name = '快拳郎',      
                text = {
                    "在你的牌組中，每兩張多於{C:attention}#2#{}張的牌",
                    "都給予{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前為{X:red,C:white}X#3#{C:inactive}倍數）",
                } 
            },
            j_poke_lickitung = {
                name = '大舌頭',      
                text = {
                    "頭兩張的計分的{C:attention}J{}",
                    "給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive}（在觸發{C:attention}#2#{}{C:inactive}/20 次後進化）{}"
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
                    "每張計分的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_rhydon = {
                name = '鑽角犀獸',      
                text = {
                    "每張計分的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_chansey = {
                name = '吉利蛋',      
                text = {
                    "每個回合中頭{C:attention}#1#{}張被觸發的{C:attention}幸運牌{}",
                    "會增加一張複製的那張牌到牌組並抽到{C:attention}手牌{}中",
                    "{C:inactive}（目前為{C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive}）",
                    "{C:inactive}（在牌組有25%或以上是{C:attention}幸運牌{C:inactive}時進化）"
                } 
            },
            j_poke_tangela = {
                name = '蔓藤怪',      
                text = {
                    "每張計分的{C:attention}萬能牌{}",
                    "給予{C:mult}+#1#{}倍數，{C:chips}+#2#{}籌碼或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的機率給予{C:attention}以上三個的加成{}",
                    "{C:inactive}（在牌組有20%或以上是{C:attention}萬能牌{C:inactive}時進化）"
                } 
            },
            j_poke_kangaskhan = {
                name = '袋獸',      
                text = {
                    "{C:attention}+#1#{}消耗牌欄位",
                    "{C:chips}-#2#{}出牌次數",
                } 
            },
            j_poke_horsea = {
                name = '墨海馬',      
                text = {
                    "在{C:attention}第一次出牌{}中，每張計分的{C:attention}6{}",
                    "會給此牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（{C:mult}+12{} {C:inactive}倍數時進化）"
                } 
            },
            j_poke_seadra = {
                name = '海刺龍',      
                text = {
                    "在{C:attention}頭兩次出牌{}中，每張計分的{C:attention}6{}",
                    "會給此牌{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（附上{C:dragon}龍{}{C:inactive}貼紙後進化）{}"
                } 
            },
            j_poke_goldeen = {
                name = '角金魚',      
                text = {
                    "重新觸發在手牌中所有的",
                    "{C:attention}黃金牌{}一次",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_seaking = {
                name = '金魚王',      
                text = {
                    "重新觸發在手牌中所有的",
                    "{C:attention}黃金牌{}{C:attention}#1#{}次"
                } 
            },
            j_poke_staryu = {
                name = '海星星',      
                text = {
                    "每張計分的{C:diamonds}#2#{}花色的牌",
                    "給予{C:mult}+#1#{}倍數",
                    "{C:inactive}（使用{}{C:attention}水之石{}{C:inactive}牌進化）"
                } 
            },
            j_poke_starmie = {
                name = '寶石海星',      
                text = {
                    "每張計分的{C:diamonds}#2#{}花色的牌",
                    "給予{C:mult}+#1#{}倍數及{C:money}$#2#{}"
                } 
            },
            j_poke_mrmime = {
                name = '魔牆人偶',      
                text = {
                    "重新觸發在手牌中",
                    "最左邊的牌{C:attention}#1#{}次"
                } 
            },
            j_poke_scyther = {
                name = '飛天螳螂',      
                text = {
                    "選擇盲注後，摧毀右邊的小丑牌並獲得{C:mult}+#2#{}倍數",
                    "如果被摧毀的小丑牌是{C:red}稀有{}或以上",
                    "新增{C:attention}銀箔{}，{C:attention}全像攝影{}或{C:attention}彩色{}版本",
                    "{C:inactive}（附上{C:metal}鋼{}{C:inactive}貼紙後進化）{}",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive} 倍數）"
                } 
            },
            j_poke_jynx = {
                name = '迷唇姐',      
                text = {
                    "從{C:attention}商店{}，{C:attention}標準{}禮包，",
                    "{C:spectral}傳說動物{}及特定的小丑牌",
                    "加入到牌組的{C:attention}撲克牌{}會被{C:attention}複製{}"
                } 
            },
            j_poke_electabuzz = {
                name = '電擊獸',      
                text = {
                    "當回合結束時，每次{C:attention}賣出{}一張牌",  
                    "會把此牌的{C:attention}出售價值{}提升{C:money}$#1#{}",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_magmar = {
                name = '鴨嘴火獸',      
                text = {
                    "如果回合中的{C:attention}第一次{}棄牌只有{C:attention}一{}張牌",
                    "摧毀它並獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（使用{}{C:attention}聯繫繩{}{C:inactive}牌進化）"
                } 
            },
            j_poke_pinsir = {
                name = '凱羅斯',
                text = {
                    "{X:mult,C:white} X#1# {}倍數",
                    "{C:attention}最左邊{}的小丑牌在離開商店後",
                    "會被{C:attention}釘選{}，直到回合結束"
                } 
            },
            j_poke_tauros = {
                name = '肯泰羅（首領）',
                text = {
                    "每一張{C:attention}肯泰羅{}小丑牌給予{X:mult,C:white} X#1#{}倍數",
                    "每次在商店中重鎩會有{C:green}#2#/#3#{}的機率",
                    "新增一張{C:attention}肯泰羅（牛群）{}到商店中",
                } 
            },
            j_poke_taurosh = {
                name = '肯泰羅（牛群）',
                text = {
                    "{C:mult}+#1#{}倍數",
                } 
            },
            j_poke_magikarp = {
                name = '鯉魚王',
                text = {
                    "附上{C:attention}水花噴濺{}效果",
                    "{C:inactive}（在{C:attention}#1#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_gyarados = {
                name = '暴鯉龍',
                text = {
                    "{X:red,C:white} X#1# {}倍數",
                } 
            },
            j_poke_lapras = {
                name = '拉普拉斯',
                text = {
                    "本比賽中每個已跳過的{C:attention}盲注{}",
                    "會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前為{C:chips}+#1# {C:inactive}籌碼）"
                } 
            },
            j_poke_ditto = {
                name = '百變怪',
                text = {
                    "賣出這張牌來產生最左邊的小丑牌的副本",
                    "副本帶有{C:attention}非保久{}貼紙",
                    "{C:inactive}（移除永恆貼紙）{}",
                } 
            },
            j_poke_eevee = {
                name = '伊布',
                text = {
                    "{C:attention}頭五次{}的{C:green}重鎩{}",
                    "會獲得{C:money}$#1#{}",
                    "{C:inactive}（每種的進化之石會有不同的進化）{}",
                    "{C:inactive}目前為{C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = '水伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會給此牌{C:chips}+#2#{}籌碼",
                    "{C:inactive}（目前有{C:attention}#3#{}{C:inactive}/3次重鎩）",
                    "{C:inactive}（目前為{C:chips}+#1#{C:inactive}籌碼）",
                } 
            },
            j_poke_jolteon = {
                name = '雷伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會給予{C:money}$#1#{}",
                    "{C:inactive}（目前有{C:attention}#2#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_flareon = {
                name = '火伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會給此牌{X:red,C:white} X#2# {}倍數",
                    "{C:inactive}（目前有{C:attention}#3#{}{C:inactive}/3次重鎩）",
                    "{C:inactive}（目前為{X:red,C:white} X#1# {}{C:inactive}籌碼）"
                } 
            },
            j_poke_porygon = {
                name = '多邊獸',
                text = {
                    "{C:pink}+1{}能量上限",
                    "每次打開{C:attention}擴充包{}時",
                    "產生一張{C:pink}能量{}牌",
                    "{C:inactive}（使用{} {C:attention}升級資料{}{C:inactive}牌進化）"
                } 
            },
            j_poke_omanyte = {
                name = '菊石獸',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{} #1#：此牌的出售價值{}提升{C:money}$#2#{}",
                    "{C:attention}兩張{} #1#：獲得{C:money}$#3#{}",
                    "{C:attention}三張或以上{} #1#：產生一張{C:attention}塔羅牌{}{C:inactive}（必須有空位）",
                    "{C:inactive}（在{C:attention}#4#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_omastar = {
                name = '多刺菊石獸',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}兩張{} #1#：此牌的出售價值{}提升{C:money}$#2#{}",
                    "{C:attention}三張{} #1#：獲得{C:money}$#3#{}",
                    "{C:attention}四張或以上{} #1#：產生兩張隨機的{C:attention}塔羅牌{}{C:inactive}（必須有空位）",
                } 
            },
            j_poke_kabuto = {
                name = '化石盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}一張{} #1#：{C:chips}+#2#{}籌碼",
                    "{C:attention}兩張{} #1#：計分的{C:attention}#1#{}可永久獲得{C:chips}+#3#{}籌碼",
                    "{C:attention}三張或以上{} #1#：{C:chips}+#4#{}籌碼",
                    "{C:inactive}（在{C:attention}#5#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_kabutops = {
                name = '鐮刀盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}兩張{} #1#：{C:chips}+#2#{}籌碼",
                    "{C:attention}三張{} #1#：計分的{C:attention}#1#{}可永久獲得{C:chips}+#3#{}籌碼",
                    "{C:attention}四張或以上{} #1#：{C:chips}+#4#{}籌碼",
                } 
            },
            j_poke_aerodactyl = {
                name = '化石翼龍',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{C:attention}兩張{} #1#：{C:mult}+#2#{}倍數",
                    "{C:attention}三張{} #1#：{C:mult}+#3#{}倍數及{C:chips}+#4#{}籌碼",
                    "{C:attention}四張或以上{} #1#：{X:red,C:white}X#5#{}倍數"
                } 
            },
            j_poke_snorlax = {
                name = '卡比獸',
                text = {
                    "當你得到這張牌後",
                    "產生一張{C:attention}吃剩的東西{}牌",
                    "回合結束時，每張{C:attention}吃剩的東西{}牌",
                    "會給此牌{X:red,C:white}X#1#{}倍數",
                    "{C:inactive}（目前為{X:red,C:white} X#2# {}{C:inactive}倍數）"
                } 
            },
            j_poke_articuno = {
                name = '急凍鳥',
                text = {
                    "每回合中的{C:attention}第一次出牌{}時",
                    "新增{C:attention}銀箔{}，隨機的{C:attention}增強效果{}",
                    "及隨機的{C:attention}封蠟章{}到未計分的牌",
                } 
            },
            j_poke_zapdos = {
                name = '閃電鳥',
                text = {
                    "每持有的{C:money}$#2#{}",
                    "會給予{X:mult,C:white} X#1# {}倍數",
                    "{C:inactive}（目前為{X:red,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_moltres = {
                name = '火焰鳥',
                text = {
                    "升級每回合中",
                    "{C:attention}頭三次棄牌{}",
                    "的牌型等級"
                } 
            },
            j_poke_dratini = {
                name = '迷你龍',
                text = {
                    "如果打出的牌不超過{C:attention}#3#{}張",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在擁有{C:mult}+10{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_dragonair = {
                name = '哈克龍',
                text = {
                    "如果打出的牌不超過{C:attention}#3#{}張",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）",
                    "{C:inactive}（在擁有{C:mult}+30{}{C:inactive}倍數時進化）"
                } 
            },
            j_poke_dragonite = {
                name = '快龍',
                text = {
                    "{C:mult}+#1#{}倍數",
                    "如果只打出一張牌",
                    "重新觸發那張牌{C:attention}#2#{}次"
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
            j_poke_mew = {
                name = '夢幻',
                text = {
                    "離開商店後，產生一張隨機的",
                    "{C:dark_edition}負片{}{C:attention}塔羅{}，{C:spectral}幻靈{}或{C:item}物品{}牌",
                    "有{C:green}#1#/{C:green}#2#{}產生一張",
                    "隨機的{C:dark_edition}負片{}小丑牌",
                    "{C:inactive,s:0.8}（概率不能提升）{}"
                } 
            },
            j_poke_sentret = {
                name = '尾立',
                text = {
                    "如果打出的牌型{C:attention}連續{}不是上一個的牌型",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（上一個牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（目前為{C:mult}+#1#{} {C:inactive}倍數）",
                    "{C:inactive}（在{C:mult}+15{} {C:inactive}倍數時進化）"
                }  
            },
            j_poke_furret = {
                name = '大尾立',
                text = {
                    "如果打出的牌型不是上一個的牌型",
                    "這張牌會獲得{C:mult}+#2#{}倍數",
                    "{C:inactive}（上一個牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（目前為{C:mult}+#1#{} {C:inactive}倍數）",
                }  
            },
            j_poke_crobat = {
                name = '叉字蝠',
                text = {
                    "{C:attention}隨機{}所有計分牌現有的強化效果",
                    "從{C:attention}倍數{}及{C:attention}萬能{}牌獲得{C:mult}+#2#{}倍數",
                    "從{C:attention}獎勵{}及{C:attention}石頭{}牌獲得{C:chips}+#4#{}籌碼",
                    "從{C:attention}鋼鐵{}及{C:attention}玻璃{}牌獲得{X:red,C:white}X#6#{}倍數",
                    "從{C:attention}黃金{}及{C:attention}幸運{}牌獲得{C:money}$#8#{}金錢",
                    "{C:inactive}（目前為{C:mult}+#1#{}，{C:chips}+#3#{}，{X:red,C:white}X#5#{}，{C:inactive}回合結束時，{}{C:money}$#7#{}）"
                } 
            },
            j_poke_pichu = {
                name = '皮丘',
                text = {
                    "{C:attention}嬰兒{}",
                    "回合結束時",
                    "獲得{C:money}$#1#{}",
                    "{X:red,C:white} X#2# {}倍數",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_cleffa = {
                name = '皮寶寶',
                text = {
                    "{C:attention}嬰兒{}",
                    "回合結束時",
                    "產生一張帶有{C:dark_edition}負片{}的{C:attention}月亮{}牌",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_igglybuff = {
                name = '寶寶丁',
                text = {
                    "{C:attention}嬰兒{}",
                    "回合結束時",
                    "產生一張帶有{C:dark_edition}負片{}的{C:attention}世界{}牌",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_bellossom = {
                name = '美麗花',
                text = {
                    "在{C:attention}小盲注{}期間",
                    "每張計分的{C:attention}奇數{}牌",
                    "會變成{C:attention}萬能牌{}",
                    "如果已經是{C:attention}萬能牌{}，新增{C:dark_edition}彩色{}版本"
                } 
            },
            j_poke_politoed = {
                name = '蚊香蛙皇',
                text = {
                    "每張計分的{V:1}#2#{}花色的牌",
                    "會給予{C:mult}+#1#{}倍數",
                    "那些牌會依{X:water,C:white}水屬性{}",
                    "的小丑牌的數量而重新觸發",
                    "{C:inactive,s:0.8}（{C:attention,s:0.8}#7#{}{C:inactive,s:0.8}次的重新觸發數量會平均分配到每張的計分牌）{}",
                    "花色在出牌後按次序地變更{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = '太陽伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會產生一張{C:attention}太陽{}牌",
                    "在{C:attention}第一次出牌{}中，重新觸發所有打出的",
                    "{C:hearts}紅心{}花色的牌",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（目前{C:attention}#1#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_umbreon = {
                name = '月亮伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會產生一張{C:attention}月亮{}牌",
                    "在{C:attention}最後一次{}出牌時，重新觸發",
                    "所有{C:clubs}#2#{}花色牌的",
                    "{C:attention}持在手中{}的效果",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（目前{C:attention}#1#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_slowking = {
                name = '呆呆王',
                text = {
                    "每張計分的{C:attention}K{}",
                    "給予{X:red,C:white}X#1#{}倍數",
                    "每次出牌後增加{X:red,C:white}X#2#{}倍數",
                    "回合結束後重設",      
                }
            },
            j_poke_steelix = {
                name = '大鋼蛇',
                text = {
                    "{C:attention}第一次出牌{}時，最左邊的計分牌",
                    "會變成{C:attention}鋼鐵牌{}",
                    "在{C:attention}手中{}的{C:attention}石頭牌{}會變成{C:attention}鋼鐵牌{}",
                } 
            },
            j_poke_scizor = {
                name = '巨鉗螳螂',
                text = {
                    "選擇盲注後，摧毀右邊的小丑牌",
                    "並獲得{C:attention}銀箔{}，{C:attention}全像攝影{}或{C:attention}彩色{}",
                    "那些版本會在此牌{C:attention}疊加{}",
                    "{C:inactive,s:0.75}（會優先選擇被摧毀的小丑牌如有的版本）{}",
                    "{C:inactive}（目前為{C:mult}+#1#{}{C:inactive}倍數，{C:chips}+#2#{}{C:inactive}籌碼，{X:red,C:white}X#3#{} {C:inactive}倍數)"
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
            j_poke_kingdra = {
                name = '刺龍王',
                text = {
                    "每張計分的{C:attention}6{}",
                    "會給此牌{C:mult}+#2#{}倍數",
                    "手牌中的每張{C:attention}K{}",
                    "在{C:attention}出牌{}時會給此牌{X:red,C:white}X#4#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數，{X:red,C:white}X#3#{}倍數{C:inactive}）",
                } 
            },
            j_poke_porygon2 = {
                name = '多邊獸Ⅱ',
                text = {
                    "{C:pink}+2{}能量上限",
                    "每次打開{C:attention}擴充包{}時",
                    "產生一張與最左邊的小丑牌的{C:pink}屬性{}",
                    "相同的{C:pink}能量{}牌",
                    "{C:inactive}（使用{}{C:attention}可疑修正檔{}{C:inactive}牌進化）"
                } 
            },
            j_poke_stantler = {
                name = "驚角鹿",
                text = {
                  "如果打出的手牌包含{C:attention}對子{}",
                  "給予{C:chips}+#1#{}籌碼乘以",
                  "第一張記分牌的{C:attention}默認{}籌碼",
                  "在{C:attention}最後一次{}出牌時，給予的籌碼會{C:attention}加倍{}",
                }
            },
            j_poke_tyrogue = {
                name = '無畏小子',
                text = {
                    "{C:attention}嬰兒{}",
                    "在回合的{C:attention}第一次出牌或棄牌{}中",
                    "如果丟棄{C:attention}一{}張牌，{C:attention}摧毀{}那張牌",
                    "如果打出{C:attention}三張或以上{}{C:attention}計分{}的牌，{C:attention}複製{}一張到手牌中",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }  
            },
            j_poke_hitmontop = {
                name = '戰舞郎',
                text = {
                    "如果你的牌組正好有{C:attention}#2#{}張牌",
                    "{X:red,C:white} X#1# {}倍數",
                } 
            },
            j_poke_smoochum = {
                name = '迷唇娃',
                text = {
                    "{C:attention}嬰兒{}",
                    "當這個小丑牌進化時",
                    "產生一個{C:attention}標準{}標籤",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_elekid = {
                name = '電擊怪',
                text = {
                    "{C:attention}嬰兒{}",
                    "當這個小丑牌進化時",
                    "產生一個{C:attention}優惠券{}標籤",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_magby = {
                name = '鴨嘴寶寶',
                text = {
                    "{C:attention}嬰兒{}",
                    "{C:red}+#2#{}棄牌次數",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
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
            j_poke_treecko = {
                name = "木守宮",
                text = {
                    "{C:attention}+#3#{}手牌數量，{C:attention}多種性格{}",
                    "打出的{C:attention}#6#，#7#或#8#{}牌",
                    "會有{C:green}#4#/#5#{}的機率獲得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}屬性牌，效果確保觸發",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（在賺取{C:money}$#2#/16{}後進化）"
                } 
            },
            j_poke_grovyle = {
                name = "森林蜥蜴",
                text = {
                    "{C:attention}+#3#{}手牌數量，{C:attention}多種性格{}",
                    "打出的{C:attention}#6#，#7#或#8#{}牌",
                    "會有{C:green}#4#/#5#{}的機率獲得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}屬性牌，效果確保觸發",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}在賺取{C:money}$#2#/32{}後進化）"
                } 
            },
            j_poke_sceptile = {
                name = "蜥蜴王",
                text = {
                    "{C:attention}+#3#{}手牌數量，{C:attention}多種性格{}",
                    "打出的{C:attention}#5#，#6#或#7#{}牌會獲得{C:money}$#1#{}",
                    "回合結束後，每一張{X:grass,C:white}草{}屬性牌會給予{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前為{C:money}$#4#{}，最多{C:money}$14{}{C:inactive}）{}"
                } 
            },
            j_poke_torchic = {
                name = "火稚雞",
                text = {
                    "{C:mult}+#3#{}棄牌次數，{C:attention}多種性格{}",
                    "這回合中，每張棄掉的{C:attention}#5#，#6#或#7#{}都給予{C:mult}+#1#{}倍數",
                    "如果你有其他的{X:fire,C:white}火{}屬性或{X:earth,C:white}鬥{}屬性的牌，給予的倍數翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前為{C:mult}#4#{}{C:inactive}倍數）{}",
                    "{C:inactive}（在給予{C:mult}#2#/60{}{C:inactive}倍數後進化）"
                } 
            },
            j_poke_combusken = {
                name = "力壯雞",
                text = {
                    "{C:mult}+#3#{}棄牌次數，{C:attention}多種性格{}",
                    "這回合中，每張棄掉的{C:attention}#5#，#6#或#7#{}都給予{C:mult}+#1#{}倍數",
                    "如果你有其他的{X:fire,C:white}火{}屬性或{X:earth,C:white}鬥{}屬性的牌，給予的倍數翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前為{C:mult}#4#{}{C:inactive}倍數）{}",
                    "{C:inactive}（在給予{C:mult}#2#/150{}{C:inactive}倍數後進化）"
                } 
            },
            j_poke_blaziken = {
                name = "火焰雞",
                text = {
                    "{C:mult}+#2#{}棄牌次數，{C:attention}多種性格{}",
                    "這回合中，每張棄掉的{C:attention}#4#，#5#或#6#{}都給予{{X:red,C:white} X#1# {}倍數",
                    "如果你有其他的{X:fire,C:white}火{}屬性或{X:earth,C:white}鬥{}屬性的牌，給予的倍數翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前為{X:red,C:white} X#3# {}{C:inactive}倍數）{}",
                } 
            },
            j_poke_mudkip = {
                name = "水躍魚",
                text = {
                    "{C:chips}+#3#{}出牌次數，{C:attention}多種性格{}",
                    "打出的{C:attention}#4#，#5#或#6#{}會給予{C:chips}+#1#{}籌碼",
                    "如果你有其他的{X:water,C:white}水{}屬性或{X:earth,C:white}地{}屬性的牌，給予的籌碼翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（在給予{C:chips}#2#/400{}{C:inactive}籌碼後進化）"
                } 
            },
            j_poke_marshtomp = {
                name = "沼躍魚",
                text = {
                    "{C:chips}+#3#{}出牌次數，{C:attention}多種性格{}",
                    "打出的{C:attention}#4#，#5#或#6#{}會給予{C:chips}+#1#{}籌碼",
                    "如果你有其他的{X:water,C:white}水{}屬性或{X:earth,C:white}地{}屬性的牌，給予的籌碼翻倍",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（在給予{C:chips}#2#/960{}{C:inactive}籌碼後進化）"
                } 
            },
            j_poke_swampert = {
                name = "巨沼怪",
                text = {
                    "{C:chips}+#3#{}出牌次數，{C:attention}多種性格{}",
                    "打出的{C:attention}#5#, #6# or #7#{}會給予{C:chips}+#1#{}籌碼",
                    "如果你有其他的{X:water,C:white}水{}屬性或{X:earth,C:white}地{}屬性的牌，每張額外給予{C:chips}+#1#{}籌碼",
                    "{C:inactive,s:0.8}（這包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前給予了{C:chips}+#4#{}{C:inactive}籌碼）"
                } 
            },
            j_poke_beldum = {
                name = '鐵啞鈴',
                text = {
                    "如果打出的牌包含至少一張計分的{C:attention}A{}",
                    "這張牌會得到{C:chips}+#2#{}籌碼",
                    "如果牌型是{C:attention}四條{}，得到的籌碼{C:attention}翻倍{}",
                    "{C:inactive}（目前為{C:chips}+#1#{}{C:inactive}籌碼）",
                    "{C:inactive}（在擁有{C:chips}+64{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_metang = {
                name = '金屬怪',
                text = {
                    "如果打出的牌包含至少兩張計分的{C:attention}A{}",
                    "這張牌會得到{C:chips}+#2#{}籌碼",
                    "如果牌型是{C:attention}四條{}，得到的籌碼有{C:attention}四倍{}加成",
                    "{C:inactive}（目前為{C:chips}+#1#{}{C:inactive}籌碼）",
                    "{C:inactive}（在擁有{C:chips}+256{}{C:inactive}籌碼時進化）"
                } 
            },
            j_poke_metagross = {
                name = '巨金怪',
                text = {
                    "如果打出的牌型是{C:attention}四條{}",
                    "給予{C:chips}+#1#{}籌碼",
                    "每張打出的牌會給予等同那張牌的",
                    "基本籌碼的{C:attention}立方根{}的{X:mult,C:white}X{}倍數"
                } 
            },
            j_poke_buizel = {
                name = '泳圈鼬',
                text = {
                    "每張在出牌中{C:attention}沒有計分{}的牌",
                    "會給予{C:chips}+#1#{}籌碼",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）",
                }  
            },
            j_poke_floatzel = {
                name = '浮潛鼬',
                text = {
                    "每張在出牌中{C:attention}沒有計分{}的牌",
                    "會給予{C:chips}+#1#{}籌碼",
                }  
            },
            j_poke_mimejr = {
                name = '魔尼尼',
                text = {
                    "{C:attention}嬰兒{}",
                    "回合結束後，新增{C:attention}紅色{}或{C:attention}藍色{}封蠟章",
                    "到牌組中的隨機一張牌",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_happiny = {
                name = '小福蛋',
                text = {
                    "{C:attention}嬰兒{}",
                    "如果這張牌是最右邊的小丑牌",
                    "在{C:attention}最後一次{}出牌時，所有計分牌會變成{C:attention}幸運牌{}",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_munchlax = {
                name = '小卡比獸',
                text = {
                    "{C:attention}嬰兒{}",
                    "回合結束後，產生一張隨機的",
                    "{C:dark_edition}負片{}{C:item}物品牌{}",
                    "{X:red,C:white} X#1# {}倍數",
                    "{C:inactive}（你沒看錯，這會{C:attention}減低{C:inactive}你的倍數）",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }
            },
            j_poke_magnezone = {
                name = '自爆磁怪',
                text = {
                    "每張計分的{C:attention}鋼鐵牌{}",
                    "會給予{X:red,C:white}X#1#{}倍數",
                    "每張在旁邊的{X:metal,C:white}鋼{}屬性小丑牌",
                    "會給予{X:red,C:white}X#2#{}倍數"
                } 
            },
            j_poke_lickilicky = {
                name = '大舌舔',
                text = {
                    "頭兩張計分的{C:attention}J{}會給予{X:mult,C:white} X#1# {}倍數",
                    "之後每張計分的{C:attention}J{}會給予{X:mult,C:white} X#2# {}倍數",
                } 
            },
            j_poke_rhyperior = {
                name = '超甲狂犀',
                text = {
                    "每張計分的{C:attention}石頭牌{}",
                    "可永久獲得{C:chips}+#1#{}籌碼",
                    "每張{X:earth,C:white}地{}屬性小丑牌會重新觸發{C:attention}石頭牌{}",
                    "{C:inactive}（目前有#2#次重新觸發）"
                } 
            },
            j_poke_tangrowth = {
                name = '巨蔓藤',
                text = {
                    "每張計分的{C:attention}萬能牌{}會給予",
                    "{C:mult}+#1#{}倍數，{C:chips}+#2#{}籌碼或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的機率給予{C:attention}以上三個的加成{}",
                    "萬能牌{C:attention}不能{}被減益"
                } 
            },
            j_poke_electivire = {
                name = '電擊魔獸',
                text = {
                    "當回合結束時，每次{C:attention}賣出{}一張牌",
                    "會把此牌的{C:attention}出售價值{}提升{C:money}$#1#{}",
                    "此牌的出售價值每一元會給予{X:mult,C:white}X#2#{}倍數",
                    "{C:inactive}（目前為{X:mult,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_magmortar = {
                name = '鴨嘴炎獸',
                text = {
                    "如果回合中的{C:attention}第一次{}棄牌只有{C:attention}一{}張牌",
                    "摧毀它並獲得{C:mult}+#2#{}倍數",
                    "每張棄掉的牌會給予{X:mult,C:white}X#4#{}倍數",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數，{X:mult,C:white}X#3#{}{C:inactive}倍數）",
                } 
            },
            j_poke_leafeon = {
                name = '葉伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會產生一張{C:attention}世界{}牌",
                    "每張計分的{C:spades}#2#{}花色的牌",
                    "可永久獲得{C:chips}+#3#{}籌碼",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（目前{C:attention}#1#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_glaceon = {
                name = '冰伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會產生一張隨機的{C:attention}塔羅牌{}",
                    "有{C:green}#2#{}/{C:green}#3#{}的機率產生兩張{C:attention}塔羅牌{}",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（目前{C:attention}#1#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_porygonz = {
                name = '多邊獸Ｚ',
                text = {
                    "{C:pink}+3{}能量上限",
                    "每張在此{C:attention}比賽{}中使用的{C:pink}能量{}牌會給予{X:red,C:white} X#2# {}倍數",
                    "{C:inactive}（目前為{X:red,C:white} X#1# {}{C:inactive}倍數）"
                } 
            },
            j_poke_sylveon = {
                name = '仙子伊布',
                text = {
                    "每{C:attention}三{}次的{C:green}重鎩{}",
                    "會產生一張{C:attention}星星{}牌",
                    "每張在手中的{C:diamonds}#2#{}花色的牌",
                    "會給予{X:mult,C:white} X#3# {}倍數",
                    "{C:inactive}（必須有空位）",
                    "{C:inactive}（目前{C:attention}#1#{}{C:inactive}/3次重鎩）"
                } 
            },
            j_poke_grubbin = {
                name = '強顎雞母蟲',
                text = {
                    "{C:mult}+#1#{}倍數",
                    "如果你有{X:lightning, C:black}電{}屬性的小丑牌",
                    "此牌給予的倍數會增加{C:attention}三倍{}",
                    "{C:inactive}（在{C:attention}#2#{}{C:inactive}個回合後進化）"
                }  
            },
            j_poke_charjabug = {
                name = '蟲電寶',
                text = {
                    "每張你擁有的{X:lightning, C:black}電{}屬性小丑牌",
                    "會給予{C:mult}+#1#{}倍數{C:inactive}（包括自身）{}",
                     "{C:inactive}（目前為{C:mult}#2#{C:inactive}倍數）",
                    "{C:inactive}（使用{} {C:attention}雷之石{}{C:inactive}牌進化）"
                }  
            },
            j_poke_vikavolt = {
                name = '鍬農炮蟲',
                text = {
                    "{C:mult}+#3#{}倍數",
                    "每張其他你擁有的{X:lightning, C:black}雷{}屬性小丑牌",
                    "會給予{X:red,C:white} X#1# {}倍數",
                     "{C:inactive}（目前為{X:red,C:white} X#2# {}{C:inactive}倍數）",
                }  
            },
            j_poke_mimikyu = {
                name = "謎擬Ｑ",
                text = {
                  "如果打出的牌沒有計分的{C:hearts}#2#{}牌",
                  "給予{C:chips}+#1#{}籌碼",
                  "如果你得到最少{C:attention}50%{}的所需籌碼",
                  "此牌會防止死亡",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = '來電汪',
                text = {
                    "如果打出的牌包含{C:attention}順子{}",
                    "給予{C:mult}+#1#{}倍數及獲得{C:money}$#2#{}",
                    "{C:inactive}（在{C:attention}#3#{}{C:inactive}個回合後進化）"
                } 
            },
            j_poke_boltund = {
                name = '逐電犬',
                text = {
                    "如果打出的牌包含{C:attention}順子{}",
                    "給予{X:red,C:white}X#1#{}倍數及獲得{C:money}$#2#{}",
                } 
            },
            j_poke_fidough = {
                name = "狗仔包",
                text = {
                  "如果打出的牌包含{C:attention}#3#{}，此牌獲得{C:chips}+#2#{}籌碼",
                  "所需的{C:attention}卡牌點數{}會在每次觸發時提升一點",
                  "{C:inactive,s:0.8}（如果是A，那就會變回2）",
                  "{C:inactive}（目前有{C:chips}+#1#{C:inactive}籌碼）",
                  "{C:inactive}（在擁有{X:fire,C:white}火{}{C:inactive}屬性小丑牌時進化）",
                }
            },
            j_poke_dachsbun = {
                name = "麻花犬",
                text = {
                  "如果打出的牌包含{C:attention}#3#{}，此牌獲得{C:chips}+#2#{}籌碼",
                  "所需的{C:attention}卡牌點數{}會在每次觸發時提升一點",
                  "每張{X:fire,C:white}火{}屬性小丑牌會增加{C:chips}+1{}到獲得的籌碼",
                  "{C:inactive,s:0.8}（如果是A，那就會變回2）",
                  "{C:inactive}（目前有{C:chips}+#1#{C:inactive}籌碼）",
                }
            },
            j_poke_tinkatink = {
                name = "小鍛匠",
                text = {
                  "每張打出的牌給予{C:mult}+#1#{}倍數",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的牌",
                  "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
                }
            },
            j_poke_tinkatuff = {
                name = "巧鍛匠",
                text = {
                  "每張打出的牌給予{C:mult}+#1#{}倍數",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的牌",
                  "{C:inactive}（在{C:attention}#2#{C:inactive}個回合後進化）",
                }
            },
            j_poke_tinkaton = {
                name = "巨鍛匠",
                text = {
                  "每張打出的牌給予{C:mult}+#1#{}倍數",
                  "選擇盲注後，減益{C:attention}#3#{}張在牌組裏",
                  "不是{C:attention}鋼鐵牌{}的牌",
                  "打出的{C:attention}鋼鐵牌{}會有{C:attention}玻璃牌{}的效果",
                }
            },
            j_poke_annihilape = {
                name = '棄世猴',
                text = {
                    "每張計分的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}",
                    "給予{C:mult}+#1#{}倍數及{C:chips}+#2#{}籌碼",
                    "加成會在每次出牌疊加，回合結束後重設",
                    "{C:inactive}（目前為{C:mult}+#3#{}{C:inactive}倍數{C:chips}+#4#{C:inactive}籌碼）",
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
                    "{C:attention}寶可夢{}小丑牌可能會重複出現",
                    "{C:inactive}（目前為{C:mult}+#1#{C:inactive}倍數）"
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
                    "如果計分牌中包含{C:attention}萬能牌{}，效果會確保觸發",
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
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "訓練家牌套",
                text = {
                    "開局時獲得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}優惠券及",
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
                    "把選擇的或最左邊的寶可夢進化到最高{C:attention}階段{}",
                    "並給予{}+1{} {C:pink}能量{}", 
                },
            },
            c_poke_obituary = {
                name = "訃告",
                text = {
                    "新增{C:pink}粉紅{}封蠟章",
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
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "能量分析",
                text = {
                    "{C:pink}+2{}能量上限"
                },
            },
            v_poke_energyresearch = {
                name = "能量研究",
                text = {
                    "{C:pink}+3{}能量上限"
                },
            },
            v_poke_goodrod = {
                name = "好釣竿",
                text = {
                    "{C:attention}寶可夢{}禮包",
                    "有額外{C:attention}一{}張牌在裡面",
                },
            },
            v_poke_superrod = {
                name = "厲害釣竿",
                text = {
                    "{C:attention}寶可夢{}禮包",
                    "有額外{C:attention}一{}張牌在裡面",
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
                    "如果你有{C:attention}非保久的小丑牌{}",
                    "這張牌就不會出現",
                }
            },
            baby = {
                name = "嬰兒",
                text = {
                    "當你得到這張牌時",
                    "{C:attention}釘選{}其他非嬰兒的小丑牌",
                    "直到此牌進化或移除"
                }
            },
            nature = {
                name = "多種性格",
                text = {
                    "這張牌觸發的{C:attention}卡牌點數{}",
                    "會在這張牌生成後隨機決定",
                }
            },
            playing_card_to_evolve = {
                name = "非自然進化",
                text = {
                    "必需用到{C:attention}進化牌{}才能進化",
                }
            },
            deli_gift = {
                name = "禮物",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}物品{}{C:attention}牌",
                    "{C:green}20%{} - {C:attention}優惠券標籤",
                    "{C:green}15%{} - {C:dark_edition}彩色{}{C:attention}禮物卡",
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
                    "如果此牌在{C:attention}第一次出牌{}時計分",
                    "產生一張{C:pink}能量{}牌",
                },
            },

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
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "未發現",
                text = {
                    "在無種子比賽中",
                    "購買或使用此牌",
                    "來了解功用"
                }
            },
            undiscovered_item = {
                name = "未發現",
                text = {
                    "在無種子比賽中",
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
        },
        dictionary = {
            k_energy = "能量",
            k_item = "物品",
            k_poke_pocket_pack = "寶可夢禮包",

            k_poke_safari = "野生",

            b_save = "SAVE",
            b_energy_cards = "能量牌",
            b_item_cards = "物品牌",
            
            --Mod Menu stuff
            poke_settings_header_required = "需要重啟：",
            poke_settings_header_norequired = "無需重啟：",
            poke_settings_pokemon_only = "只使用寶可夢？",
            poke_settings_unlimited_energy = "能量無上限？",
            poke_settings_shiny_playing_cards = "撲克牌可有發光版本？",
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

            poke_plus_pokeitem = "+1 物品",
            poke_plus_energy = "+1 能量",
            poke_destroyed_ex = "摧毀！",
            poke_evolve_success = "進化！",
            poke_evolve_level = "升級！",
            poke_tera_ex = "變更！",
            poke_metal_ex = "鋼化！",
            poke_dragon_ex = "龍化！",
            poke_energized_ex = "能量全滿！",
            poke_unlimited_energy = "無上限",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "大蔥鴨",
            cubone_marowak_infoqueue = "卡拉卡拉及嘎啦嘎啦",
            snorlax_infoqueue = "卡比獸",
            pokeball_variable = "精靈球",
            goodrod_variable = "好釣竿",
            pinkseal_variable = "粉紅封蠟章",

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
            poke_disguise_broken = "畫皮已脫落！死亡沒有防止！"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "粉紅封蠟章",

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
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"打敗Boss盲注後，{C:attention}+1{}小丑牌欄位{C:inactive}（最多5個）"},
           ch_c_poke_nuzlocke = {"每個賭注的第一個商店必定有{C:attention}丑角禮包"}
        },
    }
}
