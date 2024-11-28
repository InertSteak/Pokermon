-- Welcome to ja.lua!
-- Ja stands for Japan, the country pokémon originates from

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
                name = "トレーナーデッキ",
                text = {
                    "{C:tarot,T:v_poke_goodrod}#1#{} のバウチャーと",
                    "{C:tarot,T:c_poke_pokeball}#2#{} カードが",
					"ランをスタートする",
                } 
            },
            b_poke_obituarydeck = {
                name = "訃報デッキ",
                text = {
                    "すべてのカードは {C:dark_edition}#1#{} 有する",
                } 
            },
            b_poke_luminousdeck = {
                name = "ステラデッキ",
                text = {
                    "すべてのジョーカーは",
                    "ランダムな {C:pink}タイプ{} のステッカーや",
                    "{C:pink}エネルギー{} {C:attention}+1{} 作成され"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = " シャルトルーズ石室",
                text = {
                    "すべてのハンドで",
                    "1枚のランダムなタイプが無効にされる",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "モンスターボール",
                text = {
                    "ランダムな　{C:attention}たねジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_greatball = {
                name = "スーパーボール",
                text = {
                    "ランダムな　{C:attention}1進化ジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_moonstone = {
                name = "月の石",
                text = {
                    "{C:attention}月{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_sunstone = {
                name = "太陽の石",
                text = {
                    "{C:attention}太陽{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_waterstone = {
                name = "水の石",
                text = {
                    "{C:attention}教皇{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_thunderstone = {
                name = "雷の石",
                text = {
                    "{C:attention}悪魔{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_firestone = {
                name = "炎の石",
                text = {
                    "{C:attention}恋人{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_leafstone = {
                name = "リーフの石",
                text = {
                    "{C:attention}世界{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_linkcable = {
                name = "つながりのヒモ",
                text = {
                    "{C:attention}死神{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_leftovers = {
                name = "食べ残し",
                text = {
                    "{C:attention}吊された男{} カードを作る",
                    "{C:attention}持ちカード{}",
                    "{C:inactive}（空きが必要）{}"
                }
            },
            c_poke_leek = {
                name = "長ネギ",
                text = {
                    "{C:attention}運命の輪{} カードを作る",
                    "{C:attention}持ちカード{}",
                    "{C:inactive}（空きが必要）{}"
                }
            },
            c_poke_thickclub = {
                name = "太いホネ",
                text = {
                    "{C:attention}強さ{} カードを作る",
                    "{C:attention}持ちカード{}",
                    "{C:inactive}（空きが必要）{}"
                }
            },
            c_poke_teraorb = {
                name = "テラスタルオーブ",
                text = {
                    "一番左ジョーカーに",
					"ランダムな {C:pink}タイプ{} ステッカーと",
                    "{C:attention}+1{} {C:pink}エネルギー{} を与える",
                },
            },
            c_poke_metalcoat = {
                name = "メタルコート",
                text = {
                    "一番左ジョーカーに",
					"{C:metal}鋼{} タイプステッカーを与える",
                    "{C:attention}戦車{} カードを作る",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_dragonscale = {
                name = "竜のウロコ",
                text = {
                    "一番左ジョーカーに",
					"{C:dragon}ドラゴン{} タイプステッカーを与える",
                    "{C:attention}皇帝{} カードを作る",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_kingsrock = {
                name = "王者の印",
                text = {
					"選択した {C:attention}#1#{} 枚のカードを",
                    "{C:attention}キング{} に変える",
                    "{C:attention}進化カード{}",
                },
            },
            c_poke_upgrade = {
                name = "アップグレード",
                text = {
                    "選択した {C:attention}#1#{} 枚のカードを",
                    "ランダムな {C:attention}強化{} する",
                    "{C:attention}進化カード{}",
                }
            },
			c_poke_dubious_disc = {
                name = "怪しいパッチ",
                text = {
                    "手札にあるすべてのカードの {C:attention}強化{} を",
                    "解除かランダム強化する",
                    "{C:attention}進化カード{}",
                    "{C:inactive}(強化なしのカードを同梱){}"
                }
            },
            c_poke_icestone = {
                name = "氷の石",
                text = {
                    "{C:attention}正義{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                }
            },
            c_poke_shinystone = {
                name = "光の石",
                text = {
                    "{C:attention}星{} カードを作る",
                    "{C:attention}進化カード{}",
                    "{C:inactive}（空きが必要）{}"
                }
            },
            c_poke_twisted_spoon = {
                name = "曲がったスプーン",
                text = {
                    "このランで使用された",
                    "最後の {C:item}アイテム{} または {C:energy}エネルギー{} カードを",
                    "作る",
                    "ただし {s:0.8,C:tarot}曲がったスプーン{s:0.8} は除く"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "草エネルギー",
                text = {
					"可能であれば選択したか一番左 {C:attention}草{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fire_energy = {
                name = "炎エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}炎{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_water_energy = {
                name = "水エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}水{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_lightning_energy = {
                name = "雷エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}雷{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_psychic_energy = {
                name = "超エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}超{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fighting_energy = {
                name = "闘エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}闘{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_colorless_energy = {
                name = "無色エネルギー",
                text = {
                    "可能であれば選択したか一番左ジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:attention}無色{} ジョーカー以外では増加半減",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_darkness_energy = {
                name = "悪エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}悪{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_metal_energy = {
                name = "鋼エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}鋼{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fairy_energy = {
                name = "フェアリーエネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}フェアリー{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            --Dragon deez キンタマ
            c_poke_dragon_energy = {
                name = "ドラゴンエネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}ドラゴン{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_earth_energy = {
                name = "地面エネルギー",
                text = {
                    "可能であれば選択したか一番左 {C:attention}地面{} タイプのジョーカの",
                    "{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"恒久的に増加させる",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_emergy = {
                name = "エムルギー",
                text = {
                    "Create {C:attention}1{} random {C:green}Energy",
                    "card with {C:dark_edition}Negative{} for each",
                    "{C:attention}Jolly Joker{} or {C:legendary}M Joker{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "色違い",
                label = "色違い",
                text = {
					"ショップに",
                    "{C:attention}+1{} ブースターパックを1つ加える",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "フシギダネ",
                text = {
                    "ハンドサイズ {C:attention}+#4#{}",
					"手札にある",
                    "{C:attention}#3#{} ランク1枚につき",
					"{C:money}$#1#{}を与える",
					"{s:0.8}ランクはラウンドごとに変わる",
                    "{C:inactive}(現在 {C:money}$#2#{C:inactive} 与えた)",
                    "{C:inactive}({C:money}$16{}{C:inactive} 与えた後に進化)"
                } 
            },
            j_poke_ivysaur = {
                name = "フシギソウ",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}",
                    "手札にある",
                    "{C:attention}#4#{} ランクカード1枚につき",
					"{C:money}$#1#{} か {C:money}$#5#{} を与える",
					"{s:0.8}ランクはラウンドごとに変わる",
                    "{C:inactive}(現在 {C:money}$#2#{C:inactive} 与えた)",
                    "{C:inactive}({C:money}$16{}{C:inactive} 与えた後に進化)"
                } 
            },
            j_poke_venusaur = {
                name = "フシギバナ",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}",
                    "{C:attention}#4#{} ランク1枚につき",
					"{C:money}$#1#{}を与える",
					"{s:0.8}ランクはラウンドごとに変わる",
                    "{C:inactive}(現在 {C:money}$#2#{C:inactive} 与えた)",
                }
            },
            j_poke_charmander = {
                name = "ヒトカゲ",
                text = {
                    "ディスカード {C:red}+#4#{}",
					"{C:attention}#3#{} ディスカードが残っていない時に",
					"プレイしたハンドが",
                    "倍率 {C:mult}+1{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}(倍率 {C:mult}+16{}{C:inactive} で進化)"
                } 
            },
            j_poke_charmeleon = {
                name = "リザード",
                text = {
                    "ディスカード {C:red}+#4#{}",
					"{C:attention}#3#{} ディスカードが残っていない時に",
					"プレイしたハンドが",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive} Mult)",
                    "{C:inactive}(倍率 {C:mult}+36{}{C:inactive} で進化)"
                } 
            },
            j_poke_charizard = {
                name = "リザードン",
                text = {
					"ディスカード {C:red}+#4#{}, 倍率 {C:mult}+#1#{}",
                    "{C:attention}#3#{} ディスカードが",
					"残っていない時に",
                    "倍率 {X:mult,C:white} X#2# {}",
                } 
            },
            j_poke_squirtle = {
                name = "ゼニガメ",
                text = {
                    "ハンド {C:chips}+#3#{}",
                    "ラウンド終了時に",
					"残りのハンドごとにチップ {C:chips}+#2#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                    "{C:inactive}(チップ {C:chips}+16{} {C:inactive} で進化)"
                } 
            },
            j_poke_wartortle = {
                name = "カメール",
                text = {
                    "ハンド {C:chips}+#3#{}",
                    "ラウンド終了時に",
					"残りのハンドごとにチップ {C:chips}+#2#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                    "{C:inactive}(チップ {C:chips}+36{} {C:inactive} で進化)"
                } 
            },
            j_poke_blastoise = {
                name = "カメックス",
                text = {
                    "ハンド {C:chips}+#3#{}, チップ {C:chips}+#1#{}",
                    "残りのハンドごとにチップ {C:chips}+#2#{}",
                } 
            },
            j_poke_caterpie = {
                name = "キャタピー",
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_metapod = {
                name = "トランセル",
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_butterfree = {
                name = "バタフリー",
                text = {
                    "倍率 {C:mult}+#1#{}",
                } 
            },
            j_poke_weedle = {
                name = "ビードル",
                text = {
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_kakuna = {
                name = "コクーン",
                text = {
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_beedrill = {
                name = "スピアー",
                text = {
                    "チップ {C:chips}+#1#{}",
                } 
            },
            j_poke_pidgey = {
                name = "ポッポ",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} のコスト",
                    "がすべて {C:money}$2{} 減少する",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_pidgeotto = {
                name = "ピジョン",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} のコスト",
                    "がすべて {C:money}$3{} 減少する",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_pidgeot = {
                name = "ピジョット",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} ",
                    "がすべて {C:attention}無料{} になる",
                    "{C:planet}惑星{} カードを使用と {C:money}$#1#{} 与える"
                } 
            },
            j_poke_rattata = {
                name = "コラッタ",
                text = {
                    "プレイしたカードで、",
                    "{C:attention}1枚目に{}スコアされたものを",
                    "{C:attention}#1#{}回追加で再発動する",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_raticate = {
                name = "ラッタ",
                text = {
                    "プレイしたカードで、",
                    "{C:attention}1枚目と2枚目に{}スコアされたものを",
                    "{C:attention}#1#{}回追加で再発動する",
                } 
            },
            j_poke_spearow = {
                name = "オニスズメ",
                text = {
					"最高ポーカーハンドのレベルを{C:attention}2倍{} に",
					"して倍率に追加",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_fearow = {
                name = "オニドリル",
                text = {
                    "最高ポーカーハンドのレベルを{C:attention}4倍{} に",
					"して倍率に追加"
                } 
            },
            j_poke_ekans = {
                name = "アーボ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "倍率 {C:red}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_arbok = {
                name = "アーボック",
                text = {
                    "プレイしたハンドが {C:attention}ストレート{} を",
                    "含む場合は倍率 {C:red}+#1#{}",
                    "{C:attention}エース{} も含む場合",
                    "{C:tarot}タロット{} カードを1枚作る"
                } 
            },
            j_poke_pikachu = {
                name = "ピカチュウ",
                text = {
					"ラウンド終了時に",
                    "{C:attention}ジョーカー{} カード1枚につき",
                    "{C:money}$#1#{} を与える",
                    "{C:inactive}(最高 {C:money}$10{C:inactive})",
                    "{C:inactive}({C:attention}雷の石{} {C:inactive}カードで進化)"
                } 
            },
            j_poke_raichu = {
                name = "ライチュウ",
                text = {
					"ラウンド終了に",
					"{C:money}$#2#{} 以上資金いるは",
                    "このジョーカーに {C:dark_edition}ネガティブ{} を加える",
                    "{C:inactive,s:0.8}($が ライチュウ ごとに増加){}",
                    "ラウンド終了時に",
                    "{C:attention}ジョーカー{} カード1枚につき",
                    "{C:money}$#1#{} を与える",
                    "{C:inactive}(最高 {C:money}$10{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "サンド",
                text = {
                    "{C:attention}グラスカード",
                    "が破壊されるたびに",
                    "{C:attention}ストーン{} コピーをデッキに加えて",
					"ドローしてから {C:attention}手札{} に加える",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_sandslash = {
                name = "Sサンドパン",
                text = {
                    "{C:attention}グラスカード",
                    "が破壊されるたびに",
                    "{C:attention}スチール{} コピーをデッキに加えて",
					"ドローしてから {C:attention}手札{} に加える",
                } 
            },
            j_poke_nidoranf = {
                name = "ニドラン（メス）",
                text = {
                    "手札にある {C:attention}クイーン{}",
                    "1枚につき",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_nidorina = {
                name = "ニドリーナ",
                text = {
                    "手札にある {C:attention}クイーン{}",
                    "1枚につき",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}月の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_nidoqueen = {
                name = "ニドクイン",
                text = {
                    "ハンドサイズ {C:attention}+#2#{}",
                    "手札にある {C:attention}クイーン{}",
                    "1枚につき",
                    "チップ {C:chips}+#1#{}",
                } 
            },
            j_poke_nidoranm = {
                name = "ニドラン（オス）",
                text = {
                    "手札にある {C:attention}キング{}",
                    "1枚につき",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_nidorino = {
                name = "ニドリーノ",
                text = {
                    "手札にある {C:attention}キング{}",
                    "1枚につき",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}月の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_nidoking = {
                name = "ニドキング",
                text = {
					"ハンドサイズ {C:attention}+#2#{}",
                    "手札にある {C:attention}キング{}",
                    "1枚につき",
                    "倍率 {C:mult}+#1#{}",
                } 
            },
            j_poke_clefairy = {
                name = "ピッピ",
                text = {
                    "プレイされた {C:clubs}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}月の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_clefable = {
                name = "ピクシー",
                text = {
                    "プレイされた {C:clubs}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
                } 
            },
            j_poke_vulpix = {
                name = "ロコン",
                text = {
					"{C:attention}9{}がプレイされたごと時",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:spectral}ミディアム{} カードを作る",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}({C:attention}炎の石{}{C:inactive} で進化)"
                } 
            },
            j_poke_ninetales = {
                name = "ロコン",
                text = {
                    "{C:attention}9{}がプレイされたごと時",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:spectral}ミディアム{} カードを作る",
                    "{C:inactive}（空きが必要）",
                } 
            },
            j_poke_jigglypuff = {
                name = "プリン",
                text = {
                    "プレイされた {C:spades}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "{C:inactive}({C:attention}月の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_wigglytuff = {
                name = "プクリン",
                text = {
                    "プレイされた {C:spades}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
                } 
            },
            j_poke_zubat = {
                name = "ズバット",
                text = {
					"{C:attention}フルデッキ{}の",
					"強化カード1枚につき、",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#2#{}{C:inactive}, 強化カード {C:attention}#4#{}{C:inactive})",
                    "{C:inactive}(強化カード枚 {C:attention}#3#{C:inactive} で進化)"
                } 
            },
            j_poke_golbat = {
                name = "ゴルバット",
                text = {
                    "カードの強化を解除する",
                    "{C:attention}倍率{} と {C:attention}ワイルド{} カードに倍率 {C:mult}+#2#{} を得る",
                    "{C:attention}ボーナス{} と {C:attention}ストーン{} カードにチップ {C:chips}+#4#{} を得る",
                    "{C:attention}スチール{} と {C:attention}グラス{} カードに倍率 {X:red,C:white}X#6#{} を得る",
                    "{C:attention}ゴールド{} と {C:attention}ラッキー{} カードに {C:money}$#8#{} を得る",
                    "{C:inactive}(破壊 {C:attention}#9#{}{C:inactive}/20 で進化)",
                    "{C:inactive}(現在 {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} をラウンド終了に得る)"
                } 
            },
            j_poke_oddish = {
                name = "ナゾノクサ",
                text = {
					"プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} か {C:mult}+#2#{}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_gloom = {
                name = "クサイハナ",
                text = {
                    "プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} か {C:mult}+#2#{}",
                    "{C:inactive}({C:attention}リーフか太陽石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_vileplume = {
                name = "ラフレシア",
                text = {
                    "プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} か倍率 {X:mult,C:white} X#1# {}"
                } 
            },
            j_poke_paras = {
                name = "パラス",
                text = {
					"プレイしたハンドが",
                    "{C:attention}ツーペア{}を含む場合",
                    "倍率 {C:mult}+#2#",
                    "{C:inactive}（現在 倍率{C:red}+#1#{C:inactive}",
                    "{C:inactive}(倍率 {C:mult}+8{}{C:inactive} で進化)"
                }  
            },
            j_poke_parasect = {
                name = "パラセクト",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}ツーペア{}を含む場合",
                    "倍率 {C:mult}+#2#",
                    "含まない場合は",
                    "倍率 {C:mult}-#3#",
                    "{C:inactive}（現在 倍率 {C:red}+#1#{C:inactive}",
                } 
            },
            j_poke_venonat = {
                name = "コンパン",
                text = {
					"すべての {C:green,E:1,S:1.1}確率{} を",
					"{C:attention}#1#{}を足す",
                    "{C:inactive}（例：{C:green}3分の1{C:inactive}　→　{C:green}3分の2{C:inactive}）",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_venomoth = {
                name = "モルフォン",
                text = {
                    "すべての {C:green,E:1,S:1.1}確率{} を",
					"{C:attention}#1#{}を足す",
                    "{C:inactive}（例：{C:green}6分の1{C:inactive}　→　{C:green}6分の3{C:inactive}）",
                } 
            },
            j_poke_diglett = {
                name = "ディグダ",
                text = {
                    "取得したら",
					"{C:attention}金星{} カードを作る",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_dugtrio = {
                name = "ダグトリオ",
                text = {
                    "{C:attention}スリーカード{} の最初のレベルを",
                    "過ぎた各レベルで",
					"倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(現在 倍率 {X:red,C:white} X#2# {}{C:inactive})"
                } 
            },
            j_poke_meowth = {
                name = "ニャース",
                text = {
                    "ラウンド終了時に",
                    "{C:money}$#1#{} を得る",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_persian = {
                name = "ペルシアン",
                text = {
					"ラウンド終了時に",
					"一番左の {C:attention}ジョーカー{} のセルバリューの",
					"{C:attention}2倍{} に {C:money}${} を得る",
                    "{C:inactive}（自身除き）{}",
                    "{C:inactive}(現在 {C:money}$#1#{C:inactive}, 最高 {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "コダック",
                text = {
					"ハンドのカード1枚しかない場合",
					"それがフェイスカードの場合",
                    "{C:money}$#1#{} を与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_golduck = {
                name = "ゴルダック",
                text = {
                    "ハンドのカード1枚しかない場合",
					"それがフェイスカードの場合",
                    "{C:money}$#1#{} を与える",
					"ゴールドカードになる"
                } 
            },
            j_poke_mankey = {
                name = "マンキー",
                text = {
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}5{} のカードが",
                    "プレイされるごとに",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself　いいだよ
            j_poke_primeape = {
                name = "オコリザル",
                text = {
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}5{} のカードが",
                    "プレイされるごとに",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
                    "{C:inactive}(発動 {C:attention}#3#{}{C:inactive}/25 後で進化){}"
                } 
            },
            j_poke_growlithe = {
                name = "ガーディ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "倍率 {C:red}+#1#{}",
                    "{C:inactive}({C:attention}炎の石{}{C:inactive} で進化)"
                } 
            },
            j_poke_arcanine = {
                name = "ウインディ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "倍率 {X:mult,C:white}X#1#{}",
                    "{C:attention}ブラインド{} が選択された時",
                    "{C:tarot}恋人{} カードを1枚作る",
                } 
            },
            j_poke_poliwag = {
                name = "ニョロモ",
                text = {
                    "プレイされた {V:1}#3#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "ハンドがプレイ後にスーツの",
                    "変わってが順番に行われる",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_poliwhirl = {
                name = "ニョロゾ",
                text = {
					"プレイされた {V:1}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "ハンドがプレイ後にスーツの",
                    "変わってが順番に行われる",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}水の石{}{C:inactive,s:0.8} か {C:attention,s:0.8}王者の印{}{C:inactive,s:0.8} カードで進化)"
                } 
            },
            j_poke_poliwrath = {
                name = "ニョロボン",
                text = {
                    "プレイされた {V:1}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} と 倍率 {X:mult,C:white} X#1# {}", 
                    "ハンドがプレイ後にスーツの",
                    "変わってが順番に行われる",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "ケーシィ",
                text = {
					"プレイした {C:attention}ポーカーハンド{} が",
                    "すでにこのラウンドでプレイされていた場合",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:attention}愚者{} か {C:attention}曲がったスプーン{} カードを1枚作る",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_kadabra = {
                name = "ユンゲラー",
                text = {
                    "プレイした {C:attention}ポーカーハンド{} が",
                    "すでにこのラウンドでプレイされていた場合",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:attention}愚者{} か {C:attention}曲がったスプーン{} カードを1枚作る",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_alakazam = {
                name = "フーディン",
                text = {
                    "消耗スロット {C:attention}+1{}",
                    "プレイした {C:attention}ポーカーハンド{} が",
                    "すでにこのラウンドでプレイされていた場合",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:attention}愚者{} か {C:attention}曲がったスプーン{} カードを1枚作る",
                } 
            },
            j_poke_machop = {
                name = "ワンリキー",
                text = {
                    "ハンド {C:chips}+#1#{}",
                    "ディスカード {C:mult}-#2#{}",
                    "倍率 {C:mult}+#4#{}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_machoke = {
                name = "ゴーリキー",
                text = {
                    "ハンド {C:chips}+#1#{}",
                    "ディスカード {C:mult}-#2#{}",
                    "倍率 {C:mult}+#3#{}",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_machamp = {
                name = "カイリキー",
                text = {
                    "ハンド {C:chips}+#1#{}",
                    "ディスカード {C:mult}-#2#{}",
                    "倍率 {C:mult}+#3#{}",
                } 
            },
            j_poke_bellsprout = {
                name = "マダツボミ",
                text = {
                    "プレイされた {C:attention}偶数{} ランクの",
                    "カードがスコアされた時",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_weepinbell = {
                name = "ウツドン",
                text = {
                    "プレイされた {C:attention}偶数{} ランクの",
                    "カードがスコアされた時",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive}({C:attention}リーフの石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_victreebel = {
                name = "ウツボット",
                text = {
                    "プレイされた {C:attention}偶数{} ランクの",
                    "カードがスコアされた時",
                    "チップ {C:chips}+#1#{} と{C:attention}再発動{}する",
                } 
            },
            j_poke_tentacool = {
                name = "メノクラゲ",
                text = {
					"プレイしたハンドが",
					"{C:attention}10{} のみの場合",
                    "各{C:attention}10{} は倍率 {C:mult}+#1#{} を与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_tentacruel = {
                name = "ドククラゲ",
                text = {
                    "プレイされた {C:attention}10{} がスコアされた時",
                    "倍率 {C:mult}+#1#{} を与える",
                    "{C:attention}10はデバフできない{}"
                } 
            },
            j_poke_geodude = {
                name = "イシツブテ",
                text = {
                    "チップ {C:chips}+#1#{},",
                    "ハンドサイズ {C:attention}-#2#{}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_graveler = {
                name = "ゴローン",
                text = {
                    "チップ {C:chips}+#1#{},",
                    "ハンドサイズ {C:attention}-#2#{}",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_golem = {
                name = "ゴローニャ",
                text = {
                    "チップ {C:chips}+#1#{},",
                    "ハンドサイズ {C:attention}-#2#{}",
                } 
            },
            j_poke_ponyta = {
                name = "ポニータ",
                text = {
                    "プレイしたハンドに",
                    "{C:attention}ストレート{} が含まれる場合",
                    "チップ {C:chips}+#2#{}",
                    "{C:inactive}（現在 {C:chips}+#1#{C:inactive} チップ",
                    "{C:inactive}(チップ {C:chips}+60{} {C:inactive}で進化)"
                } 
            }, 
            j_poke_rapidash = {
                name = "ギャロップ",
                text = {
                    "プレイしたハンドに",
                    "{C:attention}ストレート{} が含まれる場合",
                    "チップ {C:chips}+#2#{}",
					"最初のハンドに",
					"{C:attention}ショートカット{} を適用する",
                    "{C:inactive}（現在 {C:chips}+#1#{C:inactive} チップ",
                } 
            },
            --This was my first shiny :O　色違いおめでとう～
            j_poke_slowpoke = {
                name = "ヤドン",
                text = {
                    "ラウンドの {C:attention}最終ハンド{} の",
                    "倍率 {X:red,C:white}X#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_slowpoke2 = {
                name = "ヤドン",
                text = {
                    "ラウンドの {C:attention}最終ハンド{} の倍率 {X:red,C:white}X#1#{}",
					"ラウンド終了に",
                    "{C:green}#4#分の#3#{} の確率で",
                    "{C:attention}王者の印{} カードを1枚作る",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化か {C:attention,s:0.8}王者の印{} {C:inactive,s:0.8} カードで進化)"
                } 
            },
            j_poke_slowbro = {
                name = "ヤドラン",
                text = {
					"プレイしたハンドたびに",
                    "倍率 {X:red,C:white} X#1# {} を得る",
                    "{C:attention}ラウンド終了{} にリセットされる",
                    "{C:inactive}(現在 倍率 {X:red,C:white} X#2# {}{C:inactive})"
                } 
            },
            j_poke_magnemite = {
                name = "コイル",
                text = {
                    "プレイされた {C:attention}スチール{} カードが",
                    "倍率 {X:red,C:white}X#1#{} を与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_magneton = {
                name = "レアコイル",
                text = {
                    "プレイされた {C:attention}スチール{} カードが",
                    "倍率 {X:red,C:white}X#1#{} を与える",
                    "{C:inactive}({C:attention}雷の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_farfetchd = {
                name = 'カモネギ',      
                text = {
                    "取得したら",
					"{C:attention}長ネギ{} カードを作る",
                    "{C:green}#3#分の#2#{} の確率で",
					"倍率 {X:red,C:white}X#1#{}",
					"{C:attention}長ネギ{} カード1本につき確率は",
                    "2倍にする",
                } 
            },
            j_poke_doduo = {
                name = 'ドードー',      
                text = {
					"ハンドにフェイスカードが",
					"{C:attention}2{}枚以上含場合",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_dodrio = {
                name = 'ドードリオ',      
                text = {
                    "ハンドにフェイスカードが",
					"{C:attention}3{}枚以上含場合",
                    "倍率 {C:mult}+#1#{}",
                } 
            },
            j_poke_seel = {
                name = 'パウワウ',      
                text = {
					"ラウンドの {C:attention}ファーストハンド{} のカードが",
                    "{C:attention}1{} 枚しかない場合",
					"{C:green}#2#分の#1#{} の確率で",
					"ランダムな {C:attention}シール{} を加える",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_dewgong = {
                name = 'ジュゴン',      
                text = {
                    "ラウンドの {C:attention}ファーストハンド{} のカードが",
                    "{C:attention}1{} 枚しかない場合",
					"ランダムな {C:attention}シール{} を加える",
                } 
            },
            j_poke_grimer = {
                name = 'ベトベター',      
                text = {
                    "デッキサイズ > {C:attention}#3#{} 場合",
					"倍率 {C:mult}+#1#{}",
                    "ラウンド終了にランダムなカードを",
					"1枚デッキに加える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_muk = {
                name = 'ベトベトン',      
                text = {
					"フルデッキの {C:attention}#3#{} 枚を上回る",
					"カード1枚につき倍率 {C:mult}+#1#{}",
					"デッキサイズ > {C:attention}#4#{} 場合",
					"倍率 {X:mult,C:white} X#2# {}",
                    "ラウンド終了にランダムなカードを",
					"2枚デッキに加えると1枚破壊して",
					"{C:inactive,s:0.8}(現在 倍率 {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}){}",
                } 
            },
            j_poke_shellder = {
                name = 'シェルダー',      
                text = {
                    "プレイしたハンドが",
                    "{C:attention}5{}枚の場合、",
                    "各カードは {C:green}#2#分の#1#{} の確率で",
                    "再発動する",
                    "{C:inactive}({} {C:attention}水の石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_cloyster = {
                name = 'パルシェン',      
                text = {
                    "プレイしたハンドが",
                    "{C:attention}5{}枚の場合、",
                    "各カードは {C:green}#2#分の#1#{} の確率で",
                    "再発動する",
                } 
            },
            j_poke_gastly = {
                name = 'ゴース',      
                text = {
                    "{C:green}#2#分の#1#{} の確率で",
                    "ランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を加える",
                    "{S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_haunter = {
                name = 'ゴースト',      
                text = {
                    "{C:green}#2#分の#1#{} の確率で",
                    "ランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を加える",
                    "{S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_gengar = {
                name = 'ゲンガー',      
                text = {
                    "{C:green}#2#分の#1#{} の確率で",
                    "ランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を加える",
                    "{C:inactive,s:0.8}(ゲンガー除き, 確率は変更できない){}"
                } 
            },
            j_poke_onix = {
                name = 'イワーク',      
                text = {
					"{C:attention}ファーストハンド{}の",
					"最初にスコアされたものを",
					"{C:attention}ストーン{} に強化する",
                    "{C:inactive}({C:metal}鋼{} タイプ{C:inactive}ステッカで進化){}"
                } 
            },
            j_poke_drowzee = {
                name = 'スリープ',      
                text = {
					"このランで使われた {C:planet}惑星{} カード1種類ごとに",
                    "倍率 {C:mult}+#2#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}(倍率 {C:mult}+21{C:inactive} で進化)"
                } 
            },
            j_poke_hypno = {
                name = 'スリーパー',      
                text = {
                    "このランで使われた {C:planet}惑星{} カード1種類ごとに",
                    "倍率 {C:mult}+#2#{}",
                    "取得したら",
					"{C:attention}トランス{} カードを作る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                } 
            },
            j_poke_krabby = {
                name = 'クラブ',      
                text = {
                    "プレイされた {C:attention}フェイス{} カードが",
                    "スコアされた時",
                    "チップを {C:chips}+#1#{} 与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_kingler = {
                name = 'キングラー',      
                text = {
                    "プレイした全ての{C:attention}フェイス{}カードが、",
                    "スコアされた時に",
                    "{C:attention}ボーナス{} カードになる"
                } 
            },
            j_poke_voltorb = {
                name = 'ビリリダマ',      
                text = {
					"このジョーカは{C:attention}一番左{} の",
					"ジョーカーの場合倍率 {C:mult}+#1#{}",
					"次にラウンド終了時までデバフ",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_electrode = {
                name = 'マルマイン',      
                text = {
                    "このジョーカは{C:attention}一番左{} の",
					"ジョーカーの場合倍率 {C:mult}+#1#{} と",
					"{C:money}$#2#{} を得る",
					"次にラウンド終了時までデバフ",
                } 
            },
            j_poke_exeggcute = {
                name = 'タマタマ',      
                text = {
                    "プレイされた {C:hearts}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "{C:inactive}({C:attention}リーフの石{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_exeggutor = {
                name = 'ナッシー',      
                text = {
					"プレイされた {C:hearts}#3#{} スーツの",
                    "カードがスコアされた時",
					"{C:green}#5#分の#4#{} の確率で",
					"倍率 {C:mult}+#1#{} と倍率 {X:mult,C:white}X#2#{} を得る"
                } 
            },
            j_poke_cubone = {
                name = 'カラカラ',      
                text = {
                    "取得したら",
					"{C:attention}太いホネ{} カードを作る",
					"{C:attention}消耗{} エリアにある",
                    "カード1枚につき",
					"倍率 {C:mult}+#1#{} を与える",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}太いホネ{}{C:inactive,s:0.75} は2倍){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{C:inactive})",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_marowak = {
                name = 'ガラガラ',      
                text = {
					"消耗スロット {C:attention}+#2#{}",
					"{C:attention}消耗{} エリアにある",
                    "カード1枚につき",
					"倍率 {X:mult,C:white} X#1# {} を与える",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}太いホネ{}{C:inactive,s:0.75} は2倍){}",
                    "{C:inactive}(現在 倍率 {X:mult,C:white} X#3# {}{C:inactive})",
                } 
            },
            j_poke_hitmonlee = {
                name = 'サワムラー',      
                text = {
					"フルデッキの {C:attention}#2#{} 枚を下回る",
                    "カード2枚につき",
                    "倍率 {X:red,C:white}X#1#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#3#{}",
                } 
            },
            j_poke_hitmonchan = {
                name = 'エビワラー',      
                text = {
					"フルデッキの {C:attention}#2#{} 枚を上回る",
                    "カード2枚につき",
                    "倍率 {X:red,C:white}X#1#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#3#{}",
                } 
            },
            j_poke_lickitung = {
                name = 'ベロリンガ',      
                text = {
					"1枚目と2枚目ににプレイされた{C:attention}ジャック{} が",
                    "スコアされた時",
                    "倍率 {X:mult,C:white} X#1# {}",
					"発動 {C:attention}#2#{}{C:inactive}/20 後で進化",
                } 
            },
            j_poke_koffing = {
                name = 'ドガース',      
                text = {
					"このカードを売ると {C:attention}ボスブラインド{} の",
                    "必要なスコアを {C:attention}半分{} にする",
					"ボスブラインドの必要なスコアを半分にする",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_weezing = {
                name = 'マタドガス',      
                text = {
                    "このカードを売ると",
                    "現在の {C:attention}ボスブラインド{} を",
                    "無効にすると",
                    "必要なスコアを",
					"{C:attention} 半分{}にする",
                } 
            },
            j_poke_rhyhorn = {
                name = 'サイホーン',      
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_rhydon = {
                name = 'サイドン',      
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を与える",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_chansey = {
                name = 'ラッキー',      
                text = {
					"各ラウンドの最初 {C:attention}2{} 回に",
					"{C:attention}ラッキー{} カードが発動に成功するに",
					"永久的なコピーを1枚デッキに加えて",
                    "ドローしてから {C:attention}手札{} に加える",
                    "{C:inactive}(現在 {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(デッキの25%以上が {C:attention}ラッキー{C:inactive} カードの場合に進化)"
                } 
            },
            j_poke_tangela = {
                name = 'モンジャラ',      
                text = {
					"プレイされた {C:attention}ワイルド{} のカードが",
					"倍率 {C:mult}+#1#{} ,チップ {C:chips}+#2#{} か {C:money}$#3#{} を与える",
                    "{C:green}#5#分の#4#{} 確率で {C:attention}３つすべて{}",
                    "{C:inactive}(デッキの20%以上が {C:attention}ワイルド{C:inactive} カードの場合に進化)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'ガルーラ',      
                text = {
                    "消耗スロット {C:attention}+#1#{}",
                    "ハンド {C:chips}-#2#{}",
                } 
            },
            j_poke_horsea = {
                name = 'タッツー',      
                text = {
					"ラウンドの {C:attention}最初のハンド{} に",
					"スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}(倍率 {C:mult}+12{} {C:inactive} で進化)"
                } 
            },
            j_poke_seadra = {
                name = 'シードラ',      
                text = {
                    "ラウンドの最初の {C:attention}2つ{} のハンドに",
					"スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}({C:dragon}ドラゴン{} タイプステッカ {C:inactive}で進化){}"
                } 
            },
            j_poke_goldeen = {
                name = 'トサキント',      
                text = {
					"手札にある",
					"すべての {C:attention}ゴールド{} カードを",
					"{C:attention}#1#{} 回再発動する",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_seaking = {
                name = 'トサキント',      
                text = {
                    "手札にある",
					"すべての {C:attention}ゴールド{} カードを",
					"{C:attention}#1#{} 回再発動する",
                } 
            },
            j_poke_staryu = {
                name = 'ヒトデマン',      
                text = {
                    "プレイされた {C:diamonds}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive}({} {C:attention}水の石{}{C:inactive} で進化)"
                } 
            },
            j_poke_starmie = {
                name = 'スターミー',      
                text = {
                    "プレイされた {C:diamonds}#3#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} と",
					"{C:money}$#2#{} を得る"
                } 
            },
            j_poke_mrmime = {
                name = 'バリヤード',      
                text = {
					"手札にある",
					"一番左カードを",
					"{C:attention}3{} 回再発動する",
                } 
            },
            j_poke_scyther = {
                name = 'ストライク',      
                text = {
					"ブラインドが選択された時",
					"右のジョーカーを破壊しと",
					"倍率 {C:mult}+#2#{} を加える",
					"ジョーカーが {C:red}レア{} またはそれ以上の場合",
					"{C:dark_edition}フォイル{}、 {C:dark_edition}ホログラム{}",
                    "{C:dark_edition}ポリクローム{} エディションのいずれかを加える",
                    "{C:inactive}({C:metal}鋼{} タイプ{C:inactive}ステッカで進化){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}"
                } 
            },
            j_poke_jynx = {
                name = 'ルージュラ',      
                text = {
                    "{C:attention}カード{}がデッキに",
					"{C:attention}ショップ{}, {C:attention}スタンダードパック{}, {C:spectralクリプティッド{}, 特定ジョーカーから",
					"追加されるたびには",
                    "{C:attention}複製{}する"
                } 
            },
            j_poke_electabuzz = {
                name = 'エレブー',      
                text = {
					"ラウンド終了時と",
					"カードが1枚　{C:attention}売れる{}　たびに",
					"{C:attention}セルバリュー{} を",
                    "{C:money}$#1#{} を得る",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
			--ｗｗｗ
            j_poke_magmar = {
                name = 'ブーバー',      
                text = {
                    "ラウンドの {C:attention}最初のディスカード{} が",
                    "{C:attention}1{} 枚だった場合",
                    "それを破壊して倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}({C:attention}つながりのヒモ{}{C:inactive} カードで進化)"
                } 
            },
            j_poke_pinsir = {
                name = 'カイロス',
                text = {
                    "倍率 {X:mult,C:white} X#1# {}",
					"ショップ了時に",
                    "{C:attention一番左{} のジョーカーが{C:attention}ピン留め{}",
                    "ラウンド終了時に",
					"ピン留めが {C:attention}解除{} する"
                } 
            },
            j_poke_tauros = {
                name = 'ケンタロス（先達）',
                text = {
					"それぞれの {C:green}ケンタロス{} ジョーカーが",
                    "倍率 {X:mult,C:white}X#1#{} を与える",
					"各リロールに",
					"{C:green}#3#分の#2#{}確率で",
                    "ショップに {C:attention}ケンタロス（群れ）{}を加える",
                } 
            },
            j_poke_taurosh = {
                name = 'ケンタロス（群れ）',
                text = {
                    "倍率 {C:mult}+#1#{}",
                } 
            },
            j_poke_magikarp = {
                name = 'コイキング',
                text = {
                    "チップ {C:chips}+#2#{}",
                    "{C:attention}スプラッシュ{} を適用する",
                    "{C:inactive}({C:attention}#1#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_gyarados = {
                name = 'ギャラドス',
                text = {
                    "倍率 {X:red,C:white} X#1# {}",
                } 
            },
            j_poke_lapras = {
                name = 'ラプラス',
                text = {
					"このランで {C:attention}ブラインド{} をスキップするごとに",
                    "チップ {C:chips}+#2#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#1# {C:inactive})"
                } 
            },
            j_poke_ditto = {
                name = 'メタモン',
                text = {
                    "このカードを売ると",
					"一番左のジョーカーを",
					"{C:colorless}無色ステッカー{} と {C:attention}摩耗{} で",
                    "複製する",
                    "{C:inactive}(エターナル解除){}",
                } 
            },
            j_poke_eevee = {
                name = 'イーブイ',
                text = {
                    "最初に{C:attention}5回{} {C:green}リロールが{}",
					"{C:money}$#1#{} を得る",
                    "{C:inactive}(進化する…たくさん){}",
                    "{C:inactive}現在 {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'シャワーズ',
                text = {
                    "ショップで{C:attention}3回{} {C:green}リロール{}",
					"するたびに、チップ{C:chips}+#2#{}",
                    "{C:inactive}(現在 {C:attention}#3#{}{C:inactive}/3リロール)",
                    "{C:inactive}(現在 チップ{C:chips}+#1#{C:inactive})",
                } 
            },
            j_poke_jolteon = {
                name = 'サンダース',
                text = {
					"ショップで{C:attention}3回{} {C:green}リロール{}",
                    "{C:money}$#1#{} を得る",
                    "{C:inactive}(現在 {C:attention}#2#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_flareon = {
                name = 'ブースター',
                text = {
					"ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびに、倍率{X:red,C:white} X#2# {}",
                    "{C:inactive}(現在 {C:attention}#3#{}{C:inactive}/3リロール)",
                    "{C:inactive}(現在 倍率{X:red,C:white} X#1# {}{C:inactive})"
                } 
            },
            j_poke_porygon = {
                name = 'ポリゴン',
                text = {
					"{C:pink}+1{} エネルギーMAXレベル",
					"{C:attention}ブースターパック{} を開封するたびに",
					"{C:pink}エネルギー{} カードを作る",
                    "{C:inactive}({C:attention}アップグレード{}{C:inactive} カードで進化する)"
                } 
            },
            j_poke_omanyte = {
                name = 'オムナイト',
                text = {
                    "{C:attention}原始 #1#s{}",
                    "{C:attention}1{} #1#: セルバリューを {C:money}$#2#{} を得る",
                    "{C:attention}2{} #1#s: {C:money}$#3#{} を得る",
                    "{C:attention}3+{} #1#s: ランダムな {C:attention}タロット{} カードを作る {C:inactive}（空きが必要）",
                    "{C:inactive}({C:attention}#4#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_omastar = {
                name = 'オムスター',
                text = {
                    "{C:attention}原始 #1#s{}",
                    "{C:attention}2{} #1#s: セルバリューを {C:money}$#2#{} を得る",
                    "{C:attention}3{} #1#s: {C:money}$#3#{} を得る",
                    "{C:attention}4+{} #1#s: ランダムな {C:attention}タロット{} カード2枚を作る {C:inactive}（空きが必要）",
                } 
            },
            j_poke_kabuto = {
                name = 'カブト',
                text = {
                    "{C:attention}原始 #1#s{}",
                    "{C:attention}1{} #1#s: チップ {C:chips}+#2#{}",
                    "{C:attention}2{} #1#s: {C:attention}#1#s{} のカードがスコアされた時永久的にチップ {C:chips}+#3#{}",
                    "{C:attention}3+{} #1#s: チップ {C:chips}+#4#{}",
                    "{C:inactive}({C:attention}#5#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_kabutops = {
                name = 'カブトプス',
                text = {
                    "{C:attention}原始 #1#s{}",
                    "{C:attention}2{} #1#s: チップ {C:chips}+#2#{}",
                    "{C:attention}3{} #1#s: {C:attention}#1#s{} のカードがスコアされた時永久的にチップ {C:chips}+#3#{}",
                    "{C:attention}4+{} #1#s: チップ {C:chips}+#4#{}",
                } 
            },
            j_poke_aerodactyl = {
                name = 'プテラ',
                text = {
                    "{C:attention}原始 #1#s{}",
                    "{C:attention}2{} #1#s: 現在 {C:mult}+#2#{}",
                    "{C:attention}3{} #1#s: 現在 {C:mult}+#3#{} とチップ {C:chips}+#4#{}",
                    "{C:attention}4+{} #1#s: 現在 {X:red,C:white}X#5#{}"
                } 
            },
            j_poke_snorlax = {
                name = 'カビゴン',
                text = {
					"取得したら",
					"{C:attention}食べ残し{}カードを作る",
					"ラウンド終了時に{ C:attention}食べ残し{} 1枚につき",
					"倍率 {X:red,C:white}X#1#{} を得る",
					"{C:inactive}(現在 {X:red,C:white}X#2#{}{C:inactive})"
                } 
            },
            j_poke_articuno = {
                name = 'フリーザー',
                text = {
					"ファーストハンドのスコアされないカードが",
					"{C:attention}フォイル{} エディション,",
					"ランダムな{C:attention}強化{}と",
					"ランダムな{C:attention}シール{}を加える"
                } 
            },
            j_poke_zapdos = {
                name = 'フリーザー',
                text = {
                    "自分が持っている",
                    "{C:money}$#2#{}につき、倍率{X:mult,C:white} X#1# {}",
                    "{C:inactive}(現在 {X:red,C:white}X#3#{}{C:inactive})"
                } 
            },
            j_poke_moltres = {
                name = 'ファイヤー',
                text = {
                    "各ラウンドで最初に {C:attention}ディスカード{} された",
                    "ポーカーハンド {C:attention}3枚{} のレベルをアップグレードする"
                } 
            },
            j_poke_dratini = {
                name = 'ミニリュウ',
                text = {
					"プレイしたハンドが",
                    "{C:attention}#3#{} 以下枚の場合、",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率{C:mult}+#1#{C:inactive})",
                    "{C:inactive}(倍率　{C:mult}+10{}{C:inactive} で進化)"
                } 
            },
            j_poke_dragonair = {
                name = 'ハクリュー',
                text = {
                    "プレイしたハンドが",
                    "{C:attention}#3#{} 以下枚の場合、",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive}(倍率 {C:mult}+30{}{C:inactive} で進化)"
                } 
            },
            j_poke_dragonite = {
                name = 'カイリュー',
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "ハンドのカードが {C:attention}1{} 枚しかない場合",
                    "{C:attention}#2#{}回追加で再発動する"
                } 
            },
            j_poke_mewtwo = {
                name = 'ミュウツー',
                text = {
					"ショップ終了時に",
					"一番左ジョーカーを{C:dark_edition}ポリクローム{}と{C:attention}+1{} {C:pink}エネルギー{}",
					"{C:attention}複製{}する",
					"次に一番左ジョーカーを{C:attention}破壊{}する",
					"それぞれの {C:dark_edition}ポリクローム{} ジョーカーが",
					"倍率 {X:mult,C:white} X#1# {} を与える",
                    "{C:inactive}(自己破壊できない)"
                } 
            },
            j_poke_mew = {
                name = 'ミュウ',
                text = {
					"ショップ終了時に",
					"ランダムな {C:dark_edition}ネガティブ{}{C:attention}タロット{},",
					"{C:spectral}スペクトル{}か{C:item}アイテム{}カードを作る",
					"{C:green}#2#{} 分の {C:green}#1#{} の確率で",
					"{C:attention}代わり{} にランダムな {C:dark_edition}ネガティブ{} ジョーカーを作る",
                    "{C:inactive,s:0.8}(確率は変更できない){}"
                } 
            },
            j_poke_sentret = {
                name = 'オタチ',
                text = {
					"プレイしたハンドが",
					"直前ハンドと {C:attention}同じでない{} 場合",
					"倍率 {C:mult} +1{}を得る",
					"同じで倍率を {C:attention}リセット{}",
                    "{C:inactive}(直前ハンド: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{} {C:inactive})",
                    "{C:inactive}(倍率 {C:mult}+10{} {C:inactive} で進化)"
                }  
            },
            j_poke_furret = {
                name = 'オオタチ',
                text = {
                    "プレイしたハンドが",
					"直前ハンドと {C:attention}同じでない{} 場合",
					"倍率 {C:mult} +1{}を得る",
                    "{C:inactive}(直前ハンド: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{} {C:inactive})",
                }  
            },
            j_poke_crobat = {
                name = 'クロバット',
                text = {
					"カードの強化を {C:attention}ランダム{} にする",
                    "{C:attention}倍率{} と {C:attention}ワイルド{} カードに倍率 {C:mult}+#2#{} を得る",
                    "{C:attention}ボーナス{} と {C:attention}ストーン{} カードにチップ {C:chips}+#4#{} を得る",
                    "{C:attention}スチール{} と {C:attention}グラス{} カードに倍率 {X:red,C:white}X#6#{} を得る",
                    "{C:attention}ゴールド{} と {C:attention}ラッキー{} カードに {C:money}$#8#{} を得る",
                    "{C:inactive}(現在 {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} をラウンド終了に得る)"
                } 
            },
            j_poke_pichu = {
                name = 'ピチュー',
                text = {
                    "{C:attention}ベイビィ{}",
                    "ラウンド終了時に",
                    "{C:money}$#1#{} を得る",
                    "倍率 {X:red,C:white} X#2# {}",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_cleffa = {
                name = 'ピィ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ショップ終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}月{} カードを作る",
                    "{X:red,C:white} X#1# {} Mult",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_igglybuff = {
                name = 'ププリン',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}世界{} カードを作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_bellossom = {
                name = 'キレイハナ',
                text = {
                    "{C:attention}スモールブラインド{} に",
					"プレイされた {C:attention}偶数{} ランクの",
					"カードがスコアされた時",
					"{C:attention}ワイルド{} カードになる",
					"すでに {C:attention}ワイルド{} は",
                    "{C:dark_edition}ポリクローム{} を加える"
                } 
            },
            j_poke_politoed = {
                name = 'ニョロトノ',
                text = {
                    "プレイされた {V:1}#2#{} スーツの",
                    "カードがスコアされた時, 倍率 {C:mult}+#1#{}",
					"{V:1}#2#{} スーツのカードを",
					"{X:water,C:white}水タイプ{} ジョーカー1枚につき再発動",
					"{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} 再発動はスコアしたカードに均等に分散する){}",
					"ハンドがプレイ後にスーツの変わってが順番に行われる",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = 'エーフィ',
                text = {
					"ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびに {C:attention}太陽{} カードを作る",
                    "ラウンドの{C:attention}ファーストハンド{}に",
                    "{C:hearts}ハート{} スーツのカードが再発動する",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_umbreon = {
                name = 'ブラッキー',
                text = {
                    "ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびに {C:attention}月{} カードを作る",
                    "{C:attention}最終ハンド{}に{C:attention}手札にある{}に",
                    "{C:clubs}#2#{} スーツの能力を再発動させる",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_slowking = {
                name = 'ヤドキング',
                text = {
					"プレイされた {C:attention}キング{} が",
                    "それぞれスコアされた時",
                    "倍率 {X:mult,C:white}X#1#{}",
                    "プレイしたハンドされるたびに",
                    "倍率 {X:red,C:white} X#2# {} を得る",
                    "{C:attention}ラウンド終了{} にリセットされる",
                }
            },
            j_poke_steelix = {
                name = 'ハガネール',
                text = {
					"{C:attention}ファーストハンド{}の",
					"最初にスコアされたものを",
					"{C:attention}スチール{} に強化する",
					"{C:attention}手札にある{}",
					"{C:attention}すべてのストーン{} カードを",
					"{C:attention}スチール{} カードになる"
                } 
            },
            j_poke_scizor = {
                name = 'ハッサム',
                text = {
                    "ブラインドが選択された時",
					"右のジョーカーを破壊しと",
					"{C:dark_edition}フォイル{}、 {C:dark_edition}ホログラム{}",
                    "{C:dark_edition}ポリクローム{} エディションのいずれかを加える",
					"このジョーカーにエディションの効果は {C:attention} 蓄積{}された",
                    "{C:inactive,s:0.75}(可能であれば破壊されたジョーカーのエディションと一致する){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{} {C:inactive}, チップ {C:chips}+#2#{} {C:inactive}, 倍率 {X:red,C:white}X#3#{} {C:inactive})"
                } 
            },
            j_poke_delibird = {
                name = "デリバード",
                text = {
                  "ショップ終了時に",
                  "{S:1.1,C:green,E:2}プレゼント{} を作える",
                  "{C:inactive}（空きが必要）"
                }
            },
            j_poke_kingdra = {
                name = 'キングドラ',
                text = {
                    "スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
					"手札あるに",
                    "{C:attention}キング{} 1枚が場合",
					"倍率 {X:red,C:white}X#4#{} をも得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}, 倍率 {X:red,C:white}X#3#{}{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'ポリゴン2',
                text = {
                    "{C:pink}+2{} エネルギーMAXレベル",
					"{C:attention}ブースターパック{} を開封するたびに",
					"一番左ジョーカーと同じ {C:pink}タイプ{} の",
					"{C:pink}エネルギーカード{} を作る",
                    "{C:inactive}({C:attention}怪しいパッチ{}{C:inactive} カードで進化する)"
                } 
            },
            j_poke_stantler = {
                name = "オドシシ",
                text = {
					"プレイしたハンドが",
                    "{C:attention}ペア{} を含む場合",
					"最初のプレイしたカードの",
					"チップの {C:chips}+#1#{} 倍を与える {C:attention}(追加チップとフォイル除き){}",
					"{C:attention}最終ハンド{}でチップは {C:attention}2倍{} になる",
                }
            },
            j_poke_tyrogue = {
                name = 'バルキー',
                text = {
                    "{C:attention}ベイビィ{}",
					"各ラウンドで",
                    "最初に{C:attention}ディスカードかハンド{} された",
					"{C:attention}ディスカード{} がカード {C:attention}1枚{} 場合が, それを {C:attention}破壊{}する",
					"{C:attention}ハンド{} がカード {C:attention}3枚以上{} 含場合が {C:attention}コピー{} を1枚手札に加える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }  
            },
            j_poke_hitmontop = {
                name = 'カポエラー',
                text = {
					"フルデッキが",
					"{C:attention}ちょうど{} {C:attention}#2#{} 枚場合",
                    "倍率 {X:red,C:white} X#1# {}",
                } 
            },
            j_poke_smoochum = {
                name = 'ムチュール',
                text = {
                    "{C:attention}ベイビィ{}",
					"このジョーカーが進化すると",
					"{C:attention}スタンダードタグ{} を作える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_elekid = {
                name = 'エレキッド',
                text = {
                    "{C:attention}ベイビィ{}",
                    "このジョーカーが進化すると",
					"{C:attention}クーポンタグ{} を作える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive}(Evolves after {C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_magby = {
                name = 'ブビィ',
                text = {
                    "{C:attention}ベイビィ{}",
                    "ディスカード {C:red}+#2#{}",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive}(Evolves after {C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_blissey = {
                name = 'ハピナス',
                text = {
                    "各ラウンドの最初 {C:attention}2{} 回に",
					"{C:attention}ラッキー{} カードが発動に成功するに",
					"永久的な {C:dark_edition}ポリクローム{} コピーを1枚デッキに加えて",
                    "ドローしてから {C:attention}手札{} に加える",
                    "{C:inactive}(現在 {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                } 
            },
            j_poke_treecko = {
                name = "キモリ",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#6#, #7#, #8#{} カードがスコアされた時",
                    "{C:green}#5#分の#4#{} の確率で {C:money}$#1#{} を与える",
					"他の {X:grass,C:white}草{} カードを有する場合",
					"確率保証",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}({C:money}$#2#/16{} 与えた後に進化)"
                } 
            },
            j_poke_grovyle = {
                name = "ジュプトル",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#6#, #7#, #8#{} カードがスコアされた時",
                    "{C:green}#5#分の#4#{} の確率で {C:money}$#1#{} を与える",
					"他の {X:grass,C:white}草{} カードを有する場合",
					"確率保証",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}({C:money}$#2#/32{} 与えた後に進化)"
                } 
            },
            j_poke_sceptile = {
                name = "ジュカイン",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#5#, #6#, #7#{} カードがスコアされた時",
                    "{C:money}$#1#{} を与える",
					"ラウンド終了時に",
					"{X:grass,C:white}草{} カード1枚につき {C:money}$#1#{} を得る",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 {C:money}$#4#{}, 最高 {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "アチャモ",
                text = {
                    "ディスカード {C:mult}+#3#{}, {C:attention}性格{}",
					"このラウンドで {C:attention}#5#, #6# or #7#{} カードが",
					"ディスカードされるたびに倍率 {C:mult}+#1#{} を得る",
					"他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カードを有する場合",
					"倍率は倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {C:mult}#4#{}{C:inactive}){}",
                    "{C:inactive}(倍率 {C:mult}#2#/60{} {C:inactive} スコアした後に進化)"
                } 
            },
            j_poke_combusken = {
                name = "ワカシャモ",
                text = {
                    "ディスカード {C:mult}+#3#{}, {C:attention}性格{}",
					"このラウンドで {C:attention}#5#, #6# or #7#{} カードが",
					"ディスカードされるたびに倍率 {C:mult}+#1#{} を得る",
					"他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カードを有する場合",
					"倍率は倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {C:mult}#4#{}{C:inactive}){}",
                    "{C:inactive}(倍率 {C:mult}#2#/150{} {C:inactive} スコアした後に進化)"
                } 
            },
            j_poke_blaziken = {
                name = "バシャーモ",
                text = {
                    "ディスカード {C:mult}+#3#{}, {C:attention}性格{}",
					"このラウンドで {C:attention}#4#, #5#, #6#{} カードが",
					"ディスカードされるたびに倍率 {X:red,C:white} X#1# {} を得る",
                    "他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カードを有する場合",
					"倍率は倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {X:red,C:white} X#3# {}{C:inactive}){}",
                } 
            },
            j_poke_mudkip = {
                name = "ミズゴロウ",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#4#, #5#, #6#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"他の {X:water,C:white}水{} と {X:earth,C:white}地面{} カードを有する場合",
					"倍率は倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(チップ {C:chips}#2#/400{} {C:inactive} スコアした後に進化)"
                } 
            },
            j_poke_marshtomp = {
                name = "ヌマクロー",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#4#, #5#, #6#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"他の {X:water,C:white}水{} か {X:earth,C:white}地面{} カードを有する場合",
					"倍率は倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(チップ {C:chips}#2#/400{} {C:inactive} スコアした後に進化)"
                } 
            },
            j_poke_swampert = {
                name = "ラグラージ",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#5#, #6#, #7#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"{X:water,C:white}水{} と {X:earth,C:white}地面{} カード1枚につき",
					"チップさらに {C:chips}+#1#{} を与える",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 チップ {C:chips}+#4#{}{C:inactive})"
                } 
            },
            j_poke_beldum = {
                name = 'ダンバル',
                text = {
					"プレイしたハンドにスコアしたの",
					"{C:attention}エース{} が1枚以上含場合",
					"チップ {C:chips}+#2#{} を得る",
					"{C:attention}フォーカード{}であれば{C:attention}2倍{}",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{}{C:inactive})",
                    "{C:inactive}(チップ {C:chips}+64{}{C:inactive} で進化)"
                } 
            },
            j_poke_metang = {
                name = 'メタング',
                text = {
                    "プレイしたハンドにスコアしたの",
					"{C:attention}エース{} が2枚以上含場合",
					"チップ {C:chips}+#2#{} を得る",
					"{C:attention}フォーカード{}であれば{C:attention}4倍{}",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{}{C:inactive})",
                    "{C:inactive}(チップ {C:chips}+256{}{C:inactive} で進化)"
                } 
            },
            j_poke_metagross = {
                name = 'メタグロス',
                text = {
					"チップ {C:chips}+#1#{}",
					"プレイしたハンドが {C:attention}フォーカード{} の場合",
					"各プレイのカードがそのカードの",
					"チップの {C:attention}立方根{} に等しい",
					"{X:mult,C:white}X 倍率{} を与える",
                } 
            },
            j_poke_buizel = {
                name = 'ブイゼル',
                text = {
					"プレイしたハンドに",
					"各 {C:attention}スコアされない{} カードが",
                    "チップ {C:chips}+#1#{} を与える",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)",
                }  
            },
            j_poke_floatzel = {
                name = 'フローゼル',
                text = {
                    "プレイしたハンドに",
					"各 {C:attention}スコアされない{} カードが",
                    "チップ {C:chips}+#1#{} を与える",
                }  
            },
            j_poke_mimejr = {
                name = 'マネネ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
					"デックにランダムなカードに",
					"レッドかブルーシールを加える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_happiny = {
                name = 'ピンプク',
                text = {
                    "{C:attention}ベイビィ{}",
                    "このジョーカーが一番右の場合",
					"{C:attention}最終ハンドで{}",
					"すべてのスコアしたを",
					"{C:attention}ラッキー{}カードになる",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_munchlax = {
                name = 'ゴンベ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
					"ランダムな {C:dark_edition}ネガティブ{} {C:item}アイテム{}カードを1枚作る",
					"{C:item}アイテム{} カードを1枚作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }
            },
            j_poke_magnezone = {
                name = 'ジバコイル',
                text = {
                    "プレイされた {C:attention}スチール{} カードが",
                    "倍率 {X:red,C:white}X#1#{} を与える",
					"隣接した {X:metal,C:white}鋼{} タイプジョーカーが",
                    "倍率 {X:red,C:white}X#2#{} を与える",
                } 
            },
            j_poke_lickilicky = {
                name = 'ベロベルト',
                text = {
					"1枚目と2枚目ににプレイされた{C:attention}ジャック{} が",
                    "スコアされた時",
                    "倍率 {X:mult,C:white} X#1# {}",
					"各追加のジャックが",
					"倍率 X#2# {}",
                } 
            },
            j_poke_rhyperior = {
                name = 'ドサイドン',
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を与える",
					"{C:attention}ストーン{} カードを {X:earth,C:white}地面{} タイプジョーカー",
					"1枚につき再発動",
                    "{C:inactive}(現在 #2# 再発動)"
                } 
            },
            j_poke_tangrowth = {
                name = 'モジャンボ',
                text = {
                    "プレイされた {C:attention}ワイルド{} のカードが",
					"倍率 {C:mult}+#1#{} ,チップ {C:chips}+#2#{} か {C:money}$#3#{} を与える",
                    "{C:green}#5#分の#4#{} 確率で {C:attention}３つすべて{}",
                    "{C:attention}ワイルドカードはデバフできない{}"
                } 
            },
            j_poke_electivire = {
                name = 'エレキブル',
                text = {
                    "ラウンド終了時と",
					"カードが1枚　{C:attention}売れる{}　たびに",
					"{C:attention}セルバリュー{} を",
                    "{C:money}$#1#{} を得る",
					"このジョーカー {C:attention}セルバリュー{} につき",
					"倍率 {X:mult,C:white}X#2#{} を与える",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#3#{}{C:inactive})",
                } 
            },
            j_poke_magmortar = {
                name = 'ブーバーン',
                text = {
					"ラウンドの {C:attention}最初のディスカード{} が",
                    "{C:attention}1{} 枚だった場合",
                    "それを破壊して倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
					"ディスカードされた {C:attention}カード{} 1枚につき",
                    "倍率 {X:mult,C:white}X#4#{} を与える",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}, 倍率 {X:mult,C:white}X#3#{}{C:inactive})",
                } 
            },
            j_poke_leafeon = {
                name = 'リーフィア',
                text = {
                    "ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびに {C:attention}世界{} カードを作る",
                    "プレイされた{C:spades}#2#{} スーツのカードが",
					"スコアされた時、永久的にチップ {C:chips}+#3#{} を与える",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_glaceon = {
                name = 'グレイシア',
                text = {
                    "ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびにランダム {C:attention}タロット{} カードを作る",
                    "{C:green}#3#{} 分の {C:green}#2#{} の確率で{C:attention}タロット{} カード2枚を作る",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_porygonz = {
                name = 'ポリゴンZ',
                text = {
                    "{C:pink}+3{} エネルギーMAXレベル",
					"使用された {C:pink}エネルギー{} カード1枚につき",
                    "倍率 {X:red,C:white} X#2# {} を得る",
                    "{C:inactive}(倍率 {X:red,C:white} X#1# {}{C:inactive})"
                } 
            },
            j_poke_sylveon = {
                name = 'ニンフィア',
                text = {
                    "ショップで{C:attention}3回{} {C:green}リロール{}",
                    "するたびに {C:attention}星{} カードを作る",
                    "手札にある {C:diamonds}#2#{} スーツ1枚につき",
                    "倍率 {X:mult,C:white} X#3# {} を与える",
                    "{C:inactive}（空きが必要）",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}/3リロール)"
                } 
            },
            j_poke_grubbin = {
                name = 'アゴジムシ',
                text = {
                    "倍率 {C:mult}+#1#{}",
					"{X:lightning, C:black}雷{} タイプジョーカーを有する場合",
					"倍率が3倍",
                    "{C:inactive}({C:attention}#2#{}{C:inactive} ラウンド後に進化)"
                }  
            },
            j_poke_charjabug = {
                name = 'デンヂムシ',
                text = {
					"それぞれの {X:lightning, C:black}雷{} タイプジョーカーが",
                    "倍率 {C:mult}#1#{} を与える",
					"{C:inactive}（このジョーカー含）{}",
                     "{C:inactive}(現在 {C:mult}#2#{C:inactive} )",
                    "{C:inactive}({C:attention}雷の石{}{C:inactive} カードで進化)"
                }  
            },
            j_poke_vikavolt = {
                name = 'クワガノン',
                text = {
                    "{C:mult}+#3#{} Mult",
					"他のすべての",
					"{X:lightning, C:black}雷{} タイプジョーカーが",
                    "倍率 {X:red,C:white} X#1# {}",
                     "{C:inactive}(現在 倍率 {X:red,C:white} X#2# {}{C:inactive})",
                }  
            },
            j_poke_mimikyu = {
                name = "ミミッキュ",
                text = {
				  "{C:hearts}#2#{} カードがスコアされない場合、チップ {C:chips}+#1#{}",
				  "プレイされたスコアされたチップが",
                  "必要なチップの{C:attention}25%{} 以上だった場合",
                  "死を一度防ぎ",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'ワンパチ',
                text = {
                    "プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "倍率 {C:red}+#1#{} と {C:money}$#2#{} を得る",
                    "{C:inactive}({C:attention}#3#{}{C:inactive} ラウンド後に進化)"
                } 
            },
            j_poke_boltund = {
                name = 'パルスワン',
                text = {
					"プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "倍率 {X:red,C:white}X#1#{} と {C:money}$#2#{} を得る"
                } 
            },
			j_poke_tinkatink = {
                name = "カヌチャン",
                text = {
					"プレイされた {C:attention}偶数{} カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードに",
					"デバフをかかる",
					"その {C:attention}スチール{} カードでない",
                    "{C:inactive}({C:attention}#2#{C:inactive} ラウンド後に進化)",
                }
            },
            j_poke_tinkatuff = {
                name = "ナカヌチャン",
                text = {
                    "プレイされた {C:attention}偶数{} カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードに",
					"デバフをかかる",
					"その {C:attention}スチール{} カードでない",
                  "{C:inactive}({C:attention}#2#{C:inactive} ラウンド後に進化)",
                }
            },
            j_poke_tinkaton = {
                name = "デカヌチャン",
                text = {
                    "プレイされた {C:attention}偶数{} カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードにデバフをかかる",
					"その {C:attention}スチール{} カードでない",
					"プレイされた {C:attention}スチール{} カードを",
					"{C:attention}グラス{} カードと同様に機能する",
                }
            },
            j_poke_annihilape = {
                name = 'コノヨザル',
                text = {
					"ラウンドでプレイしたハンド1枚につき",
					"プレイされた {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, {C:attention}7{}, ごとに",
					"倍率 {C:mult}+#1#{} と チップ {C:chips}+#2#{} を与える",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{} {C:inactive}チップ {C:chips}+#4#{C:inactive})",
                } 
            },
            j_poke_missingno = {
                name = 'けつばん',
                text = {
					"しゅとくしたらぁぁぁ",
					"しょ う も う つ く る ？",
                    "{C:attention}#1#{}? {C:attention}タグ{} 作ル？",
                } 
            },
            j_poke_pokedex = {
                name = 'ポケモン図鑑',
                text = {
					"{C:pink}タイプステッカー{} 付きジョーカー1枚につき",
					"倍率 {C:mult}+#2#{}",
					"{C:attention}ポケモンジョーカー{} が",
					"複数回出現する",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})"
                } 
            },
            j_poke_everstone = {
                name = '変わるずの石',
                text = {
					"ポケモンが {C:attention}進化できない{}",
                    "それぞれの {C:attention}たね{} ポケモンが",
					"倍率 {X:mult,C:white} X#1# {}",
                } 
            },
            j_poke_tall_grass = {
                name = '草むら',
                text = {
					"プレイしたハンドに",
                    "{C:green}#2#分の#1#{}の確率で",
                    "{C:chips}コモン{} ポケモン {C:attention}ジョーカー{}",
                    "ハンドに {C:attention}ワイルド{} カード含む場合",
					"確率保証",
                } 
            },
            j_poke_jelly_donut = {
                name = "おにぎり",
                text = {
                  "ブラインドが選択された時",
                  "{C:colorless}無色{C:pink}エネルギー{} 作る",
                  "{C:inactive}(残り{C:attention}#1#{}{C:inactive}ラウンド){}"
                }
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "トレーナースレーブ",
                text = {
                    "{C:tarot,T:v_poke_goodrod}#1#{} のバウチャーと",
                    "{C:tarot,T:c_poke_pokeball}#2#{} カードが",
					"ランをスタートする",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "訃報スレーブ",
                text = {
                    "すべてのカードは {C:dark_edition}#1#{} 有する",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "ステラスレーブ",
                text = {
                    "すべてのジョーカーは",
                    "ランダムな {C:pink}タイプ{} のステッカー作成され",
                },
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "ハイパーボール",
                text = {
                    "ランダムな　{C:attention}2進化ジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_masterball = {
                name = "マスターボール",
                text = {
                    "ランダムな　{C:attention}レジェンドジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_transformation = {
                name = "超進化",
                text = {
					"選択したか一番左のポケモンを",
					"{C:attention}最終進化{}させ、可能であれば",
                    "エネルギー+1を得る",
                    "{C:inactive}(ジョーカー{C:attention}#1#{}{C:inactive}枚につき最大3回まで増加)",
                },
            },
            c_poke_obituary = {
                name = "訃報",
                text = {
                    "手札から選んだ",
                    "カード {C:attention}1{} 枚に",
                    "{C:red}ピンクシール{} を加える",
                }
            },
            c_poke_nightmare = {
                name = "悪夢",
                text = {
					"ランダムな {C:dark_edition}ネガティブ{} {C:pink}エネルギー{} カード",
					"{C:attention}3{} 枚を作る",
                    "ランダムなジョーカー1枚を{C:attention}破壊{}する"
                },
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "ポケットタグ",
                text = {
                    "無料の",
                    "{C:pink}メガポケットパック{}を与える",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "色違いタグ",
                text = {
                    "次のベースショップジョーカーが",
                    "無料になり、以下の",
                    "エディションになる：{C:colorless}色違い{}",
                }, 
            },
			tag_poke_stage_one_tag = {
                name = "1進化タグ",
                text = {
                    "ショップに出現：無料の",
                    "{C:attention}1進化{} ジョーカー",
                }, 
            },
            tag_poke_safari_tag = {
                name = "サファリタグ",
                text = {
                    "ショップに出現：無料の",
                    "{C:safari}サファリ{} ジョーカー",
                }, 
            },
        },
        Tarot = {
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "エネルギー転送",
                text = {
                    "{C:pink}+2{} エネルギーMAXレベル"
                },
            },
            v_poke_energyresearch = {
                name = "エネルギー転送PRO",
                text = {
                    "{C:pink}+3{} エネルギーMAXレベル"
                },
            },
            v_poke_goodrod = {
                name = "いいつりざお",
                text = {
                    "{C:attention}ポケットパック{} に",
                    "カードを　{C:attention}1{} つ加える",
                },
            },
            v_poke_superrod = {
                name = "すごいつりざお",
                text = {
                    "{C:attention}ポケットパック{} に",
                    "カードを　{C:attention}1{} つ加える",
                },
            },
        },
        Other = {

            Grass = {
                name = "タイプ",
                text = {
                  "{X:grass,C:white}草{}",
                }
            },
            Fire = {
                name = "タイプ",
                text = {
                  "{X:fire,C:white}炎{}",
                }
            },
            Water = {
                name = "タイプ",
                text = {
                  "{X:water,C:white}水{}",
                }
            },
            Lightning = {
                name = "タイプ",
                text = {
                  "{X:lightning,C:black}雷{}",
                }
            },
            Psychic = {
                name = "タイプ",
                text = {
                  "{X:psychic,C:white}超{}",
                }
            },
            Fighting = {
                name = "タイプ",
                text = {
                  "{X:fighting,C:white}闘{}",
                }
            },
            Colorless = {
                name = "タイプ",
                text = {
                  "{X:colorless,C:white}無色{}",
                }
            },
            Dark = {
                name = "タイプ",
                text = {
                  "{X:dark,C:white}悪{}",
                }
            },
            Metal = {
                name = "タイプ",
                text = {
                  "{X:metal,C:white}鋼{}",
                }
            },
            Fairy = {
                name = "タイプ",
                text = {
                  "{X:fairy,C:white}フェアリー{}",
                }
            },
            Dragon = {
                name = "タイプ",
                text = {
                  "{X:dragon,C:white}ドラゴン{}",
                }
            },
            Earth = {
                name = "タイプ",
                text = {
                  "{X:earth,C:white}地面{}",
                }
            },
            Bird = {
                name = "タイプ",
                text = {
                  "{X:bird,C:white}バード{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "原始",
                text = {
					"ポーカーハンドの{C:attention}#1#s{}数に",
                    "基づく効果",
                }
            },
            eitem = {
                name = "進化カード",
                text = {
                    "選択したか一番左　{C:attention}適格{} ジョーカー",
                    "進化する",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "持ちカード",
                text = {
                    "Used by {C:attention}#1#{}"
                }
            },
            basic = {
                name = "たね",
                text = {
                    "ポケモンジョーカーが",
                    "{C:attention}進化{}してない"
                }
            },
            stage1 = {
                name = "1進化",
                text = {
                    "ポケモンジョーカーが",
                    "一{C:attention}進化{}した"
                }
            },
            stage2 = {
                name = "2進化",
                text = {
                    "ポケモンジョーカーが",
                    "{C:attention}進化{}した"
                }
            },
            energy = {
                name = "エネルギーレベル",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "ドルチャンス",
                text = {
                    "{C:attention}#1#%{} 確率で",
                    "{C:money}$1{} を得る"
                }
            },
            mult_progress = {
                name = "倍率得る進捗",
                text = {
                    "{C:mult}+1倍率{} の得るまでの",
                    "進捗は {C:attention}#1#%{}",
                }
            },
            chip_progress = {
                name = "チップ得る進捗",
                text = {
					"{C:chips}+1チップ{} の得るまでの",
                    "進捗は {C:attention}#1#%{}",
                }
            },
            money_progress = {
                name = "ドル得る進捗",
                text = {
                    "{C:money}+1${} の得るまでの",
                    "進捗は {C:attention}#1#%{}",
                }
            },
            availability = {
                name = "可用性",
                text = {
                    "{C:attention}ジョーカーは摩耗ジョーカーをいる{} 場合",
					"姿を現さない",
                }
            },
            baby = {
                name = "ベイビィ",
                text = {
					"ハンドがプレイされた際",
					"このジョーカーが {C:attention}ベイビー{} ジョーカー以外の",
					"ジョーカーの左側に位置する場合",
					"それをデバフ"
                }
            },
            nature = {
                name = "性格",
                text = {
                    "ランダムな {C:attention}カードランク{} が",
                    "ジョーカー作成時に",
                    "決定される所要する"
                }
            },
            playing_card_to_evolve = {
                name = "進化条件",
                text = {
                    "進化させるには",
                    "{C:attention}カード{} にで",
                    "使用しなければならない"
                }
            },
            deli_gift = {
                name = "プレゼント",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}アイテム{} {C:attention}カード",
                    "{C:green}20%{} - {C:attention}クーポンタグ",
                    "{C:green}15%{} - {C:dark_edition}ポリクローム{} {C:attention}ギフトカード",
                }
            },
            eeveelution = {
                name = "イーブイの進化",
                text = {
                    "{C:attention}水の石{} - {X:water,C:white}シャワーズ{}",
                    "{C:attention}雷の石{} - {X:lightning,C:black}サンダース{}",
                    "{C:attention}炎の石{} - {X:fire,C:white}ブースター{}",
                    "{C:attention}太陽の石{} - {X:psychic,C:white}エーフィ{}",
                    "{C:attention}月の石{} - {X:dark,C:white}ブラッキー{}",
                    "{C:attention}リーフの石{} - {X:grass,C:white}リーフィア{}",
                    "{C:attention}氷の石{} - {X:water,C:white}グレイシア{}",
                    "{C:attention}光の石{} - {X:fairy,C:white}ニンフィア{}"
                }
            },
            precise_energy_tooltip = {
                name = "精密なエネルギーボーナス数値",
                text = {
                    "{s:0.8}{C:pink,s:0.8}エネルギー{}{s:0.8}ボーナス を適用する際にはすべての値に{C:attention,s:0.8}小数{}を使用します{}",
                    "{C:attention,s:0.8}OFF{}{s:0.8}にするとボーナスに対して以下の処理する:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X 倍率{}{s:0.8} - 小数を使用",
                    "{C:attenion}2. {s:0.8}{C:mult,s:0.8}倍率{}{s:0.8} や {C:chips,s:0.8}チップ{}{s:0.8} - 近い整数に切り上げ",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}倍率{}{s:0.8} や {C:chips,s:0.8}チップ 得る{}{s:0.8} - 小数は {C:mult,s:0.8}倍率{}{s:0.8} や {C:chips,s:0.8}チップ{}の", 
                    "{s:0.8}得るに割合の進捗され",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - 小数部分は割合として表示され",
                    "{s:0.8}追加の{C:money,s:0.8}${}{s:0.8}を獲得する確率を{s:0.8} 得る{}",
                    "{C:inactive,s:0.8}（ポケモン以外のジョーカーは常に値に小数を使用）{}"
                }
            },
            safaridesc = {
                name = "サファリ",
                text = {
					"{C:attention}進化{} または",
					"{C:attention}モンスターボールアイテム{} に",
                    "よってのみ入手できる"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "ピンクシール",
                text = {
					"ラウンドの{C:attention}ファーストハンド{}に",
					"スコアされた時{C:pink}エネルギー{}カードを作る"
                },
            },

            grass_sticker = {
                name = "タイプ",
                text = {
                    "{X:grass,C:white}草{}"
                } 
            },
            fire_sticker = {
                name = "タイプ",
                text = {
                    "{X:fire,C:white}炎{}"
                } 
            },
            water_sticker = {
                name = "タイプ",
                text = {
                    "{X:water,C:white}水{}"
                } 
            },
            lightning_sticker = {
                name = "タイプ",
                text = {
                    "{X:lightning,C:white}雷{}"
                } 
            },
            psychic_sticker = {
                name = "タイプ",
                text = {
                    "{X:psychic,C:white}超{}"
                } 
            },
            fighting_sticker = {
                name = "タイプ",
                text = {
                    "{X:fighting,C:white}闘{}"
                } 
            },
            colorless_sticker = {
                name = "タイプ",
                text = {
                    "{X:colorless,C:white}無色{}"
                } 
            },
            dark_sticker = {
                name = "タイプ",
                text = {
                    "{X:dark,C:white}悪{}"
                } 
            },
            metal_sticker = {
                name = "タイプ",
                text = {
                    "{X:metal,C:white}鋼{}"
                } 
            },
            fairy_sticker = {
                name = "タイプ",
                text = {
                    "{X:fairy,C:white}フェアリー{}"
                } 
            },
            dragon_sticker = {
                name = "タイプ",
                text = {
                    "{X:dragon,C:white}ドラゴン{}"
                } 
            },
            earth_sticker = {
                name = "タイプ",
                text = {
                    "{X:earth,C:white}地面{}"
                } 
            },
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "未発見",
                text = {
                    "このカードを購入するか",
                    "シードされていないランで使用すると",
                    "効果を知ることができる",
                    " "
                }
            },
            undiscovered_item = {
                name = "未発見",
                text = {
                    "このカードを購入するか",
                    "シードされていないランで使用すると",
                    "効果を知ることができる",
                    " "
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "ポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "ポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "ジャンボポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "メガPocket Pack",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "ポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "ポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "ジャンボポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "メガポケットパック",
                text = {
                    "{C:attention}#2#{} 枚までの",
					"{C:pink}エネルギー{} か {C:item}アイテム{} カードから{}",
                    "{C:attention}#1#{} 枚を選んで",
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
            c_poke_poke_master = "ポケモンマスター",
            c_poke_nuzlocke = "ナズロック",
        },
        dictionary = {
            k_energy = "エネルギーカード",
            k_item = "アイテム",
            k_poke_pocket_pack = "ポケットパック",

            k_poke_safari = "サファリ",

            b_save = "蓄える",
            b_energy_cards = "エネルギーカード",
            b_item_cards = "アイテムカード",
            
            --Mod Menu stuff
			poke_settings_header_required = "再起動必要:",
            poke_settings_header_norequired = "再起動ない:",
            poke_settings_pokemon_only = "ポケモン専ら？",
            poke_settings_unlimited_energy = "無限エネルギー？",
            poke_settings_shiny_playing_cards = "色違いデッキのカード？",
            poke_settings_jokers_only = "ジョーカー専ら？",
            poke_settings_no_evolutions = "進化ない？",
            poke_settings_pokeballs = "モンスターボール？",
            poke_settings_pokedex_number = "全国ナンバー？",
            poke_settings_pokemon_splash = " ポケモンスプラッシュスクリーン?",
			poke_settings_pokemon_gen_one = "第一世代ポケモン専ら？",
			poke_settings_pokemon_precise_energy = "精密なエネルギーボーナス数値を使用？",
            poke_credits_actualcredits = "クレジット",
            poke_credits_thanks = "スペシャルサンクス",
            poke_credits_lead = "チーフプログラマー： ",
            poke_credits_graphics = "グラフィック ディレクター： ",
            poke_credits_quality_assurance_main = "品質保証リーダー: ",
            poke_credits_developer = "開発元: ",
			poke_credits_designer = "デザイン補佐: ",
            poke_credits_community_manager = "コミュニティマネージャー: ",
            poke_credits_promotion_producer = "プロモプロデューサー: ",
            poke_credits_localization = "多言語化: ",

            poke_plus_pokeitem = "+1 アイテム",
            poke_plus_energy = "+1 エネルギー",
            poke_destroyed_ex = "破壊した！",
            poke_evolve_success = "進化した！",
            poke_evolve_level = "レベルアップ！",
            poke_tera_ex = "テラスタル！",
            poke_metal_ex = "鋼！",
            poke_dragon_ex = "ドラゴン！",
			poke_energized_ex = "エナジャイズー！",
            poke_unlimited_energy = "無限",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "カモネギ",
            cubone_marowak_infoqueue = "カラカラとガラガラ",
            snorlax_infoqueue = "カビゴン",
            pokeball_variable = "モンスターボール",
            goodrod_variable = "いいつりざお",
            pinkseal_variable = "ピンクシール",

            --From Gastly Line
            poke_lick_ex = "なめる！",
            poke_lick = "なめる",
            --From Kingler
            poke_surf_ex = "なみのり！",
            --From Voltorb Line
            poke_explosion_ex = "ドカーン！",
            --From Exeggutor
            poke_solar_ex = "ソーラー！",
            poke_solar = "ソーラー",
            --From Pinsir
            poke_pinsir_pin = "ピン留め！",
            poke_pinsir_remove_pin = "ピン留めない！",
            --From Tangela line
            poke_tangela_bonus = "すべて！",
            --Golbat And Crobat thingy
            poke_screech_ex = " キーン！",
            --From Bellossom
            poke_petal_dance_ex = "はなびら！",
            poke_petal_dance = "はなびら",
            --From Scizor
            poke_x_scissor_ex = "シザークロス！",
            poke_x_scissor = "シザークロス",
            --From Kingdra
            poke_twister_ex = "たつまき！",
            --From Mime Jr.
            poke_mime_ex = "マイム！",
            --From Magmortar
            poke_fire_blast_ex = "だいもんじ！",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "かみなり！",
            poke_gift_ex = "プレゼント!",
			poke_faint_ex = "たおれた！",
			poke_nido_ex = "ニド！",
			poke_disguise_intact = "化けの皮身代わり！セーフ！",
            poke_disguise_broken = "化けの皮剥がれた…"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "ピンクシール",

            poke_shiny = "色違い",

            grass_sticker = "テラ草",
            fire_sticker = "テラ炎",
            water_sticker = "テラ水",
            lightning_sticker = "テラ雷",
            psychic_sticker = "テラ超",
            fighting_sticker = "テラ闘",
            colorless_sticker = "テラ無色",
            dark_sticker = "テラ悪",
            metal_sticker = "テラ鋼",
            fairy_sticker = "テラフェアリー",
            dragon_sticker = "テラドラゴン",
            earth_sticker = "テラ地面",

            k_poke_safari = "サファリ",
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"ボスブラインドを倒すとジョーカースロット{C:attention}+1{} {C:inactive}(最高 5スロット)"},
           ch_c_poke_nuzlocke = {"各アンティ最初のショップには {C:attention}道化師パック"}
        },
    }
}
