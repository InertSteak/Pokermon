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
			b_poke_telekineticdeck = {
                name = "テレキネシスデッキ",
                text = {
					"{C:tarot,T:v_crystal_ball}#1#{} のバウチャーと",
                    "{C:item,T:c_poke_twisted_spoon}#2#{} の",
                    "{C:attention}2{} つのコピーで",
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
                    "{C:pink}エナジャイズ{} {C:attention}された{} 作成される"
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
                    "ランダムな {C:attention}たねジョーカー{} カード",
                    "作る",
                    "{C:inactive}(空きが必要)"
                },
            },
            c_poke_greatball = {
                name = "スーパーボール",
                text = {
                    "ランダムな {C:attention}1進化ジョーカー{} カード",
                    "作る",
                    "{C:inactive}(空きが必要)"
                },
            },
            c_poke_moonstone = {
                name = "月の石",
                text = {
                    "{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "{C:green}#3#分の#2#{} の確率で",
                    "選択した {C:attention}ポーカーハンド{} の",
                    "レベルがアップグレードする",
                    "{C:inactive}(ハンド：{C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "太陽の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択した {C:attention}#1#{} 枚のカードを",
                    "ワイルドカードに強化して",
					"ランクがランダムになる",
                },
            },
            c_poke_waterstone = {
                name = "水の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択した {C:attention}#1#{} 枚のカードを",
                    "{C:attention}ボーナスカード{} に強化する",
					"すでに {C:attention}ボーナスカード{} である場合は",
					"チップの合計を {C:attention}2倍になります{}",
                    "{C:inactive}(最高 {C:chips}+#2#{C:inactive} チップ)",
                },
            },
            c_poke_thunderstone = {
                name = "雷の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択した {C:attention}1{} 枚のカードの破壊し",
                    "同じランク {C:attention}ゴールドカード{} を",
					"{C:attention}2枚{} デッキに加えて手札に {C:attention}1枚{} ドローする",
                },
            },
            c_poke_firestone = {
                name = "炎の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"選択した {C:attention}#1#{} 枚のカードを",
					"{C:attention}倍率カード{} に強化すると",
					"{C:attention}1枚{} をランダムに破壊する",
                },
            },
            c_poke_leafstone = {
                name = "リーフの石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:green}#2#分の#1#{} の確率で",
                    "手札にある各カードを",
					"{C:attention}ラッキーカード{} に強化する",
                },
            },
            c_poke_linkcable = {
                name = "つながりのヒモ",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}#1#{} 枚のカードを選択し",
                    "{C:attention}左{} のカードを {C:attention}1つ{} 大きい数字にして",
                    "{C:attention}右{} のカードを {C:attention}1つ{} 小さい数字にする",
                },
            },
            c_poke_leftovers = {
                name = "食べ残し",
                text = {
					"{C:attention}再使用可能{}",
                    "選択したか一番左ジョーカーの",
                    "セルバリューに{C:money}$#2#{}を加える",
                    "{C:inactive}(ラウンドごとに1回使える){}"
                }
            },
            c_poke_leek = {
                name = "長ネギ",
                text = {
					"{C:attention}再使用可能{}",
                    "{C:green}#2#分の#1#{} の確率で自身に",
                    "{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、{C:dark_edition}ポリクローム{} の",
                    "いずれかの効果を加える",
					"ラウンド終了時に{C:attention}エディション{}を解除する",
                    "{C:inactive}(ラウンドごとに1回使える){}"
                }
            },
            c_poke_thickclub = {
                name = "太いホネ",
                text = {
					"{C:attention}再使用可能{}",
					"選択した {C:attention}#1#{} 枚のカードを",
                    "永久的にチップ {C:chips}+#2#{} を与える",
                    "{C:inactive}(ラウンドごとに1回使える){}"
                }
            },
            c_poke_teraorb = {
                name = "テラスタルオーブ",
                text = {
					"{C:attention}タイプチェンジャー{} {X:pink,C:white}ランダム{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択したか一番左ジョーカーを",
                    "{C:pink}エナジャイズ{} する",
                },
            },
            c_poke_metalcoat = {
                name = "メタルコート",
                text = {
					"{C:attention}タイプチェンジャー{} {X:metal,C:white}鋼{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択したカードの{C:attention}スチール{}コピーを",
					"1枚作る",
                },
            },
            c_poke_dragonscale = {
                name = "竜のウロコ",
                text = {
					"{C:attention}タイプチェンジャー{} {X:dragon,C:white}ドラゴン{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "ランダムな {C:item}アイテム{}か {C:pink}エネルギー{} カードを",
					"最大 {C:attention}3{}枚まで作る",
					"{C:attention}タイプチェンジャー{}",
                    "{C:inactive}（空きが必要）{}"
                },
            },
            c_poke_kingsrock = {
                name = "王者の印",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"選択した {C:attention}#1#{} 枚のカードを",
                    "{C:attention}キング{} に変える",
                },
            },
            c_poke_upgrade = {
                name = "アップグレード",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択した {C:attention}#1#{} 枚のカードに",
                    "{C:attention}ストーン以外{}のランダムな {C:attention}強化{} を与える",
                }
            },
			c_poke_dubious_disc = {
                name = "怪しいパッチ",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "手札にあるすべてのカードの {C:attention}強化{} を",
                    "解除かランダム強化する",
                    "{C:inactive}(強化なしのカードを同梱){}"
                }
            },
            c_poke_icestone = {
                name = "氷の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "選択した {C:attention}#1#{} 枚のカードを",
					"{C:attention}グラスカード{} に強化する",
					"各カードは{C:green}#3#分の#2#{}の確率で{C:attention}破壊される{}",
                }
            },
            c_poke_shinystone = {
                name = "光の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"選択した {C:attention}#1#{} 枚のカードに",
					"{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、{C:dark_edition}ポリクローム{} の",
                    "いずれかの効果を加えて",
					"{C:attention}強化{}を解除する",
                }
            },
            c_poke_twisted_spoon = {
                name = "曲がったスプーン",
                text = {
                    "このランで使用された",
                    "最後の {C:item}アイテム{} または {C:energy}エネルギー{} カードを",
                    "作る",
                    "{s:0.8}ただし {s:0.8,C:item}曲がったスプーンと再使用可能なもの{s:0.8} は除く"
                }
            },
			c_poke_prismscale = {
                name = "綺麗なウロコ",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"手札にあるランダムなカード{C:attention}#2#{}枚を",
					"選択した{C:attention}#1#{}枚のカードと同じスーツに変換する",
                }
            },
			c_poke_duskstone = {
                name = "闇の石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}ドレインできる{} ジョーカー1枚につき{C:money}$#1#{}を与える",
					"ジョーカーのセルバリューから{C:money}$1{} を {C:attention}ドレイン{}する",
					"{C:attention}#2#{}ラウンド後に{C:attention}ドレイン{}しません {C:inactive}(ラウンド #3#)",
                    "{C:inactive}(現在 {C:money}$#4#{C:inactive}/$#5# 最高)"
                }
            },
			c_poke_dawnstone = {
                name = "目覚め石",
                text = {
					"{C:attention}進化カード{}",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}#1#{}の{C:mult}倍率{}の2倍に",
					"相当する{C:money}${}を得る",
                    "{C:inactive}#4#{}",
                    "{C:inactive}(現在 {C:money}$#2#{C:inactive}/$40 最高)",
                }
            },
			c_poke_hardstone = {
                name = "固い石",
                text = {
					"選択した {C:attention}#1#{} 枚のカードを",
                    "{C:attention}ストーンカード{} に",
                    "強化する",
					"{X:earth,C:white}地面{} ジョーカーにつき",
					"そのストーンカードはチップ {C:chips}+#2#{} を得る",
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "草エネルギー",
                text = {
					"可能であれば選択したか一番左",
					"{C:attention}草{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fire_energy = {
                name = "炎エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}炎{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_water_energy = {
                name = "水エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}水{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_lightning_energy = {
                name = "雷エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}雷{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_psychic_energy = {
                name = "超エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}超{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fighting_energy = {
                name = "闘エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}闘{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_colorless_energy = {
                name = "無色エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"ジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:attention}無色{} ジョーカー以外では増加半減",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_darkness_energy = {
                name = "悪エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}悪{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_metal_energy = {
                name = "鋼エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}鋼{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_fairy_energy = {
                name = "フェアリーエネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}フェアリー{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            --Dragon deez キンタマ
            c_poke_dragon_energy = {
                name = "ドラゴンエネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}ドラゴン{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
                    "{C:inactive}(ジョーカー1枚につき最大 {C:attention}#1#{}{C:inactive} 回まで増加)",
                },
            },
            c_poke_earth_energy = {
                name = "地面エネルギー",
                text = {
                    "可能であれば選択したか一番左",
					"{C:attention}地面{} タイプのジョーカーを {C:pink}エナジャイズ{} する",
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
            -- HA HA! Not anymore!

            m_poke_hazard = {
                name = "ハザードカード",
                text = {
                    "{C:attention}+1{} ハンドサイズ",
                    "ランクおよびスーツはない",
					"ラウンド終了時に取り除く",
                },
            }
        },
		Stake = {
            stake_poke_diamond = {
                name = "ダイヤモンドステーク",
                colour = "Diamond",
                text = {
					"{C:attention}ベイビィ以外{} ポケモンジョーカーは進化が１ラウンド遅れます",
                    "{s:0.8}以前のすべてのステークに適用"
                }
            },
            stake_poke_pearl = {
                name = "パールステーク",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} エネルギーMAXレベル",
                    "{s:0.8}以前のすべてのステークに適用"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "フシギダネ",
                text = {
                    "ハンドサイズ {C:attention}+#4#{}",
					"手札にある",
                    "{C:attention}#3#{} ランク1枚につき",
					"{C:money}$#1#{}を与える",
					"{C:inactive,s:0.8}(ランクはラウンドごとに変わる){}",
                    "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8} 与えた後に進化)",
                } 
            },
            j_poke_ivysaur = {
                name = "フシギソウ",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}",
                    "手札にある",
                    "{C:attention}#4#{} ランクカード1枚につき",
					"{C:money}$#1#{} か {C:money}$#5#{} を与える",
					"{C:inactive,s:0.8}(ランクはラウンドごとに変わる){}",
                    "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8} 与えた後に進化)",
                } 
            },
            j_poke_venusaur = {
                name = "フシギバナ",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}",
                    "{C:attention}#4#{} ランク1枚につき",
					"{C:money}$#1#{}を与える",
					"{C:inactive,s:0.8}ランクはラウンドごとに変わる",
                }
            },
			j_poke_mega_venusaur = {
                name = "メガフシギバナ",
                text = {
                    "{C:attention}+#1#{} ハンドサイズ",
                }
            },
            j_poke_charmander = {
                name = "ヒトカゲ",
                text = {
                    "ディスカード {C:red}+#4#{}",
					"{C:attention}#3#{} ディスカードが残っていない時に",
					"プレイしたハンドが",
                    "倍率 {C:mult}+1{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +16で進化)"
                } 
            },
            j_poke_charmeleon = {
                name = "リザード",
                text = {
                    "ディスカード {C:red}+#4#{}",
					"{C:attention}#3#{} ディスカードが残っていない時に",
					"プレイしたハンドが",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +36で進化)",
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
			j_poke_mega_charizard_x = {
                name = "メガリザードンX",
                text = {
					"{C:attention}#2#{} ディスカードが残っていない時に",
                    "倍率 {X:mult,C:white} X#1#{}",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "メガリザードンY",
                text = {
                    "ディスカード {C:red}+#1#{}",
                } 
            },
            j_poke_squirtle = {
                name = "ゼニガメ",
                text = {
                    "ハンド {C:chips}+#3#{}",
                    "ラウンド終了時に",
					"残りのハンドごとにチップ {C:chips}+#2#{} を得る",
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}+#1#{C:inactive,s:0.8} / +32で進化)"
                } 
            },
            j_poke_wartortle = {
                name = "カメール",
                text = {
                    "ハンド {C:chips}+#3#{}",
                    "ラウンド終了時に",
					"残りのハンドごとにチップ {C:chips}+#2#{} を得る",
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}+#1#{C:inactive,s:0.8} / +72で進化)"
                } 
            },
            j_poke_blastoise = {
                name = "カメックス",
                text = {
                    "ハンド {C:chips}+#3#{}, チップ {C:chips}+#1#{}",
                    "残りのハンドごとにチップ {C:chips}+#2#{}",
                } 
            },
			j_poke_mega_blastoise = {
                name = "メガカメックス",
                text = {
                    "ハンド {C:chips}+#2#{}",
                } 
            },
            j_poke_caterpie = {
                name = "キャタピー",
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_metapod = {
                name = "トランセル",
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_kakuna = {
                name = "コクーン",
                text = {
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_beedrill = {
                name = "スピアー",
                text = {
                    "チップ {C:chips}+#1#{}",
                } 
            },
			j_poke_mega_beedrill = {
                name = "メガスピアー",
                text = {
                    "チップ {C:chips}+#1#{}",
                } 
            },
            j_poke_pidgey = {
                name = "ポッポ",
                text = {
					"スコアされたハンドに",
					"複数のランクおよび複数のスーツが含む場合",
					"倍率 {C:mult}+#2#{}",
					"{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
				}
			},
            j_poke_pidgeotto = {
                name = "ピジョン",
                text = {
                    "スコアされたハンドに",
					"複数のランクおよび複数のスーツが含む場合",
					"倍率 {C:mult}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_pidgeot = {
                name = "ピジョット",
                text = {
					"{C:attention}ブラインド{} が選択された時{C:planet}惑星{} カードを1枚作る",
					"{br:2}ERROR - CONTACT STEAK",
                    "スコアされたハンドに",
					"複数のランクおよび複数のスーツが含む場合",
					"倍率 {C:mult}+#1#{}",
                } 
            },
			j_poke_mega_pidgeot = {
                name = "メガピジョット",
                text = {
					"{C:attention}ブラインド{} が選択された時すべてのディスカードを失う",
                    "{br:2}ERROR - CONTACT STEAK",
                    "スコアされたハンドに",
					"複数のランクおよび複数のスーツが含む場合",
					"プレイされた各カードは失ったディスカードの数に相当する",
					"倍率 {X:mult,C:white}X{} ",
                    "{C:inactive,s:0.8}(現在 倍率{X:mult,C:white,s:0.8}X#1#{C:inactive,s:0.8})"
                } 
            },
            j_poke_rattata = {
                name = "コラッタ",
                text = {
                    "プレイしたカードで、",
                    "スコアされた{C:attention}最初の2枚{}を",
                    "{C:attention}#1#{}回追加で再発動する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_raticate = {
                name = "ラッタ",
                text = {
                    "プレイしたカードで、",
                    "スコアされた{C:attention}最初の3枚{}を",
                    "{C:attention}#1#{}回追加で再発動する",
                } 
            },
            j_poke_spearow = {
                name = "オニスズメ",
                text = {
					"{C:attention}#2#{} {C:inactive}[#3#]{} スコアされるカードをプレイした後",
					"次のプレイされる{C:attention}ポーカーハンド{}",
					"のレベルがアップグレードする",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_fearow = {
                name = "オニドリル",
                text = {
                    "{C:attention}#1#{} {C:inactive}[#2#]{} スコアされるカードをプレイした後",
					"次のプレイされる{C:attention}ポーカーハンド{}",
					"のレベルがアップグレードする",
                } 
            },
            j_poke_ekans = {
                name = "アーボ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_arbok = {
                name = "アーボック",
                text = {
                    "プレイしたハンドが {C:attention}ストレート{} を",
                    "含む場合はチップ {C:chips}+#1#{}",
					"{br:2}ERROR - CONTACT STEAK",
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
                    "{C:inactive,s:0.8}(最高 {C:money,s:0.8}$10{C:inactive,s:0.8})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}雷の石{} {C:inactive,s:0.8}カードで進化)"
                } 
            },
            j_poke_raichu = {
                name = "ライチュウ",
                text = {
					"ラウンド終了時に",
					"{C:money}$#2#{} 以上資金いるは",
                    "このジョーカーに {C:dark_edition}ネガティブ{} を加える",
                    "{C:inactive,s:0.8}($が ライチュウ ごとに増加){}",
                    "ラウンド終了時に",
                    "{C:attention}ジョーカー{} カード1枚につき",
                    "{C:money}$#1#{} を与える",
                    "{C:inactive,s:0.8}(最高 {C:money,s:0.8}$10{C:inactive,s:0.8})"
                } 
            },
            j_poke_sandshrew = {
                name = "サンド",
                text = {
					"フルデッキにある{C:attention} グラスカード{} 1枚につき",
					"チップ {C:chips}+#2#{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "ラウンドごとに {C:attention}グラスカード{} が初めて破壊される時",
                    "そのカードのコピーを手札に加える",
					"{C:inactive}(現在 チップ {C:chips}+#3#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_sandslash = {
                name = "サンドパン",
                text = {
					"フルデッキにある{C:attention} グラスカード{} 1枚につき",
					"チップ {C:chips}+#1#{}",
                    "{br:3}ERROR - CONTACT STEAK",
					"ラウンドごとに最初に破壊される {C:attention}#3#{C:inactive}[#4#]{}枚の",
                    "{C:attention}グラスカード{} のコピーを手札に加える",
					"{C:inactive}(現在 チップ {C:chips}+#2#{C:inactive,})",
                } 
            },
            j_poke_nidoranf = {
                name = "ニドラン（メス）",
                text = {
                    "手札にある {C:attention}クイーン{}",
                    "1枚につき",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_nidorina = {
                name = "ニドリーナ",
                text = {
                    "手札にある {C:attention}クイーン{}",
                    "1枚につき",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}月の石{}{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_nidorino = {
                name = "ニドリーノ",
                text = {
                    "手札にある {C:attention}キング{}",
                    "1枚につき",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}月の石{}{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}月の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_clefable = {
                name = "ピクシー",
                text = {
                    "プレイされた {C:clubs}#2#{} スーツの",
                    "カードがスコアされた時",
					"このラウンドでプレイされた {C:clubs}#2#{} カードにつき",
                    "倍率 {C:mult}+#1#{}",
					"{C:inactive,s:0.8}(クラブを5枚プレイされば、各カードが倍率{C:mult,s:0.8}+#4#{C:inactive,s:0.8})",
					"{C:inactive}(現在 倍率 {C:mult}+#3#{C:inactive})",
                } 
            },
            j_poke_vulpix = {
                name = "ロコン",
                text = {
					"プレイされた {C:attention}9{} がスコアされたごと時",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:tarot}タロット{} カードを作る",
                    "{C:inactive,s:0.8}（空きが必要）",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}炎の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_ninetales = {
                name = "キュウコン",
                text = {
					"{C:dark_edition}ネガティブ{} ミーディアムを{C:attention}持っている{}",
                    "プレイされた {C:attention}9{} がスコアされたごと時",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:tarot}タロット{} カードを作る",
                    "{C:inactive,s:0.8}（空きが必要）",
                } 
            },
            j_poke_jigglypuff = {
                name = "プリン",
                text = {
                    "プレイされた {C:spades}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "{C:inactive,s:0.8}({C:attention,s:0.8}月の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_wigglytuff = {
                name = "プクリン",
                text = {
                    "プレイされた {C:spades}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
					"更にそのカードのチップ値を与える",
                } 
            },
            j_poke_zubat = {
                name = "ズバット",
                text = {
					"スコアされたポーカーハンドにある",
					"強化されているカードにつき",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +#3#で進化)"
                } 
            },
            j_poke_golbat = {
                name = "ゴルバット",
                text = {
                    "スコアされたカードの強化を解除する",
                    "{C:attention}倍率{} と {C:attention}ワイルド{} カードに倍率 {C:mult}+#2#{} を得る",
                    "{C:attention}ボーナス{} と {C:attention}ストーン{} カードにチップ {C:chips}+#4#{} を得る",
                    "{C:attention}スチール{} と {C:attention}グラス{} カードに倍率 {X:red,C:white}X#6#{} を得る",
                    "{C:attention}ゴールド{} と {C:attention}ラッキー{} カードに {C:money}$#8#{} を得る",
                    "{C:inactive}(現在 {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} をラウンド終了時に得る)",
                    "{C:inactive,s:0.8}(強化を {C:attention,s:0.8}#9#{}{C:inactive,s:0.8}つ解除した後で進化)"
                } 
            },
            j_poke_oddish = {
                name = "ナゾノクサ",
                text = {
					"プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} か {C:mult}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_gloom = {
                name = "クサイハナ",
                text = {
                    "プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} か {C:mult}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}リーフ石{} か {C:attention,s:0.8}太陽石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_vileplume = {
                name = "ラフレシア",
                text = {
                    "プレイされた {C:attention}奇数{} ランクの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#2#{} か倍率 {X:mult,C:white} X#1# {}"
                } 
            },
            j_poke_paras = {
                name = "パラス",
                text = {
					"プレイしたハンドが",
                    "{C:attention}ツーペア{}を含む場合",
                    "倍率 {C:mult}+#2#",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{}{C:inactive,s:0.8} / +8で進化)"
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
                    "{C:inactive}（例：{C:green}3分の1{C:inactive} → C:green}3分の2{C:inactive}）",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_venomoth = {
                name = "モルフォン",
                text = {
                    "すべての {C:green,E:1,S:1.1}確率{} を",
					"{C:attention}#1#{}を足す",
                    "{C:inactive}（例：{C:green}6分の1{C:inactive} → {C:green}6分の3{C:inactive}）",
                } 
            },
            j_poke_diglett = {
                name = "ディグダ",
                text = {
					"プレイしたハンドが {C:attention}スリーカード{} を含む場合",
                    "チップ {C:chips}+#2#{}",
					"{br:2}ERROR - CONTACT STEAK",
					"プレイしたハンドがスコアされる{C:attention}2{} か {C:attention}3{} か {C:attention}4{} を含む場合",
					"倍率 {C:mult}+#3#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_dugtrio = {
                name = "ダグトリオ",
                text = {
                    "プレイしたハンドが {C:attention}スリーカード{} を含む場合",
                    "チップ {C:chips}+#2#{}",
					"{br:2}ERROR - CONTACT STEAK",
					"プレイしたハンドがスコアされる{C:attention}2{} か {C:attention}3{} か {C:attention}4{} を含む場合",
					"倍率 {X:red,C:white} X#1# {}",
                } 
            },
            j_poke_meowth = {
                name = "ニャース",
                text = {
                    "ラウンド終了時に",
                    "{C:money}$#1#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_persian = {
                name = "ペルシアン",
                text = {
					"ラウンド終了時に",
					"一番左の {C:attention}ジョーカー{} のセルバリューの",
					"{C:attention}2倍{} に {C:money}${} を得る",
                    "{C:inactive,s:0.8}(自身除き){}",
                    "{C:inactive}(現在 {C:money}$#1#{C:inactive}, 最高 {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "コダック",
                text = {
					"ハンドのカード1枚しかない場合",
					"それがフェイスカードの場合",
                    "{C:money}$#1#{} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_golduck = {
                name = "ゴルダック",
                text = {
                    "ハンドのカード1枚しかない場合",
					"それがフェイスカードの場合",
                    "{C:money}$#1#{} を与える",
					"{C:attention}ゴールドカード{}になる"
                } 
            },
            j_poke_mankey = {
                name = "マンキー",
                text = {
                    "プレイされる {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, {C:attention}7{} のカードが",
                    "スコアされた時",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            --anyways, how's your day been? i'm doing fine myself　いいだよ
            j_poke_primeape = {
                name = "オコリザル",
                text = {
                    "プレイされる {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, {C:attention}7{} のカードが",
                    "スコアされた時",
                    "倍率 {C:mult}+#1#{} とチップ {C:chips}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8}つ発動した後で進化){}"
                } 
            },
            j_poke_growlithe = {
                name = "ガーディ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "倍率 {C:red}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}炎の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_arcanine = {
                name = "ウインディ",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "倍率 {X:mult,C:white}X#1#{}",
					"そのフラッシュの中で最初に",
					"強化されていないカードがスコアされた時",
					"そのカードが {C:attention}倍率{} カードになる",
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}水の石{}{C:inactive,s:0.8} か {C:attention,s:0.8}王者の印{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_poliwrath = {
                name = "ニョロボン",
                text = {
                    "プレイされた {V:1}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#7#{} と 倍率 {X:mult,C:white} X#1# {}", 
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
                    "{C:tarot}タロット{} か {C:item}アイテム{} カードを1枚作る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_kadabra = {
                name = "ユンゲラー",
                text = {
                    "プレイした {C:attention}ポーカーハンド{} が",
                    "すでにこのラウンドでプレイされていた場合",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:tarot}タロット{} か {C:item}曲がったスプーン{} カードを1枚作る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_alakazam = {
                name = "フーディン",
                text = {
                    "消耗スロット {C:attention}+#3#{}",
                    "プレイした {C:attention}ポーカーハンド{} が",
                    "すでにこのラウンドでプレイされていた場合",
                    "{C:green}#2#分の#1#{} の確率で",
                    "{C:attention}愚者{} か {C:item}曲がったスプーン{} カードを1枚作る",
                } 
            },
			j_poke_mega_alakazam = {
                name = "メガフーディン",
                text = {
                    "消耗スロット {C:attention}+#3#{}",
                    "持っている {C:attention}消耗カード{} が倍率 {X:mult,C:white}X#1#{}",
                    "{C:item}曲がったスプーン{} は倍率 {X:mult,C:white}X#2#{}",
                } 
            },
            j_poke_machop = {
                name = "ワンリキー",
                text = {
                    "ハンド {C:chips}+#1#{}",
                    "ディスカード {C:mult}-#2#{}",
                    "倍率 {C:mult}+#4#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_machoke = {
                name = "ゴーリキー",
                text = {
                    "ハンド {C:chips}+#1#{}",
                    "ディスカード {C:mult}-#2#{}",
                    "倍率 {C:mult}+#3#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_weepinbell = {
                name = "ウツドン",
                text = {
                    "プレイされた {C:attention}偶数{} ランクの",
                    "カードがスコアされた時",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}リーフの石{}{C:inactive,s:0.8} で進化)"
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
					"プレイされた {C:attention}10{} がスコアされた時",
                    "倍率 {C:mult}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_tentacruel = {
                name = "ドククラゲ",
                text = {
                    "プレイされた {C:attention}10{} がスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{br:2}ERROR - CONTACT STEAK",
                    "{C:attention}10はデバフできない{}"
                } 
            },
            j_poke_geodude = {
                name = "イシツブテ",
                text = {
                    "チップ {C:chips}+#1#{},",
                    "ハンドサイズ {C:attention}-#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_graveler = {
                name = "ゴローン",
                text = {
                    "チップ {C:chips}+#1#{},",
                    "ハンドサイズ {C:attention}-#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}+#1#{C:inactive,s:0.8} / +60で進化)"
                } 
            }, 
            j_poke_rapidash = {
                name = "ギャロップ",
                text = {
                    "プレイしたハンドに",
                    "{C:attention}ストレート{} が含まれる場合",
                    "チップ {C:chips}+#2#{}",
					"チップの増加は発動するごとに {C:chips}+1{} ずつ増える",
                    "{C:inactive}(現在 {C:chips}+#1#{C:inactive} チップ)",
                } 
            },
            --This was my first shiny :O　色違いおめでとう～
            j_poke_slowpoke = {
                name = "ヤドン",
                text = {
                    "ラウンドの {C:attention}最終ハンド{} の",
                    "倍率 {X:red,C:white}X#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} つ発動した後で進化)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}王者の印{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_slowpoke2 = {
                name = "ヤドン",
                text = {
                    "ラウンドの {C:attention}最終ハンド{} の倍率 {X:red,C:white}X#1#{}",
					"ラウンド終了時に",
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
                    "{C:inactive,s:0.8}(ラウンド終了時にリセットされる)",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#2#{C:inactive})"
                } 
            },
			j_poke_mega_slowbro = {
                name = "メガヤドラン",
                text = {
					"プレイしたハンドたびに",
                    "倍率 {X:red,C:white} X#1# {} を得る",
                    "{C:inactive,s:0.8}({C:attentions:0.8}ボスブラインド{C:inactive,s:0.8} を倒すとリセットされる)",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#2#{C:inactive})"
                } 
            },
            j_poke_magnemite = {
                name = "コイル",
                text = {
                    "プレイされた {C:attention}スチール{} カードが",
                    "倍率 {X:red,C:white}X#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_magneton = {
                name = "レアコイル",
                text = {
					"プレイされた {C:attention}スチール{} カードは",
                    "倍率 {X:red,C:white}X#1#{}",
					"隣接する {X:metal,C:white}鋼{} タイプジョーカーごとに",
                    "この倍率は {X:red,C:white}X#2# {}ずつ増加する",
					"{C:inactive,s:0.8}({C:attention,s:0.8}雷の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_farfetchd = {
                name = "カモネギ",      
                text = {
					"{C:attention}長ネギを持っている{}",
					"{C:attention}消耗カード{}を使用する時",
                    "{C:green}#3#分の#2#{} の確率で",
					"{C:money}$#1# を与える",
					"{C:attention}長ネギ{} なら確定",
                } 
            },
            j_poke_doduo = {
                name = "ドードー",      
                text = {
					"スコアされたハンドにフェイスカードが",
					"{C:attention}2{}枚以上含む場合",
                    "倍率 {C:mult}+#1#{}",
                    "{br:2}ERROR - CONTACT STEAK",
					"スコアされたハンドに{C:attention}フルハウス{}が含む場合",
					"倍率 {C:mult}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_dodrio = {
                name = "ドードリオ",      
                text = {
                    "スコアされたハンドにフェイスカードが",
					"{C:attention}3{}枚以上含む場合",
                    "倍率 {C:mult}+#1#{}",
                    "{br:2}ERROR - CONTACT STEAK",
					"スコアされたハンドに{C:attention}フルハウス{}が含む場合",
					"倍率 {C:mult}+#1#{}"
                } 
            },
            j_poke_seel = {
                name = "パウワウ",      
                text = {
					"ラウンドの {C:attention}ファーストハンド{} で最初にスコアされたカードに",
					"{C:green}#2#分の#1#{} の確率で",
					"ランダムな {C:attention}シール{} を加える",
                    "{C:inactive,s:0.8}(フルデッキに {C:attention,s:0.8}#4#{C:inactive,s:0.8} /#3# つシールがあったら進化)"
                } 
            },
            j_poke_dewgong = {
                name = "ジュゴン",      
                text = {
                    "ラウンドの {C:attention}ファーストハンド{}",
					"で最初にスコアされたカードに",
                    "ランダムな {C:attention}シール{} を加える",
                } 
            },
            j_poke_grimer = {
                name = 'ベトベター',      
                text = {
                    "デッキサイズ > {C:attention}#3#{} 場合",
					"倍率 {C:mult}+#1#{}",
                    "ラウンド終了時にランダムなカードを",
					"1枚デッキに加える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_muk = {
                name = 'ベトベトン',      
                text = {
					"フルデッキの {C:attention}#2#{} 枚を上回る",
					"カード1枚につき倍率 {C:mult}+#1#{}",
					"{br:4}ERROR - CONTACT STEAK",
                    "ラウンド終了時にデッキのランダムなカードを",
					"1枚破壊し、2枚加える",
					"{C:inactive}(現在 倍率 {C:mult}+#3#{} {C:inactive}){}",
                } 
            },
            j_poke_shellder = {
                name = 'シェルダー',      
                text = {
                    "プレイしたハンドが",
                    "スコアされたカード {C:attention}5{}枚の場合",
                    "各カードは {C:green}#2#分の#1#{} の確率で",
                    "{C:attention}再発動する{}",
                    "{C:inactive,s:0.8}({} {C:attention,s:0.8}水の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_cloyster = {
                name = 'パルシェン',      
                text = {
                    "プレイしたハンドが",
                    "スコアされたカード {C:attention}5{}枚の場合",
                    "各カードは {C:green}#2#分の#1#{} の確率で",
                    "{C:attention}再発動する{}",
                } 
            },
            j_poke_gastly = {
                name = 'ゴース',      
                text = {
                    "{C:green}#2#分の#1#{} の確率で",
                    "ラウンド終了時にランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を替える",
                    "{S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_haunter = {
                name = 'ゴースト',      
                text = {
                    "{C:green}#2#分の#1#{} の確率で",
                    "ラウンド終了時にランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を替える",
                    "{S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_gengar = {
                name = 'ゲンガー',      
                text = {
                    "ラウンド終了時に{C:green}#1#%{}の確率で",
					"ランダムな {C:attention}ジョーカー{} に",
                    "{C:dark_edition}ネガティブ{} を替える",
					"{C:inactive,s:0.8}(確率は変更できない)",
                    "{C:inactive,s:0.8}(ゲンガー除き){}"
                } 
            },
			j_poke_mega_gengar = {
                name = 'メガゲンガー',      
                text = {
					"{C:attention}ショップ{} と {C:attention}ブースターパック{} に",
					"出現する {C:dark_edition}ポリクローム{} ジョーカーは",
					"代わりに {C:dark_edition}ネガティブ{}",
                } 
            },
            j_poke_onix = {
                name = 'イワーク',      
                text = {
					"{C:attention}ファーストハンド{}の",
					"最初にスコアされたカードを",
					"{C:attention}ストーン{} に強化する",
                    "{C:inactive,s:0.8}({C:metal,s:0.8}鋼{}{C:inactive,s:0.8}タイプ ステッカで進化){}"
                } 
            },
            j_poke_drowzee = {
                name = 'スリープ',      
                text = {
					"{C:attention}トランスを持っている{}",
					"このランで使われた {C:planet}惑星{} カード1種類ごとに",
                    "倍率 {X:mult,C:white}X#2#{}",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#1#{C:inactive})",
                    "{C:inactive,s:0.8}(惑星カード {C:planet,s:0.8}#3# {C:inactive,s:0.8}種類を使った後に進化)"
                } 
            },
            j_poke_hypno = {
                name = 'スリーパー',      
                text = {
                    "このランで使われた {C:planet}惑星{} カード1種類ごとに",
                    "{X:mult,C:white}X#2#{}",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#1#{C:inactive})",
                } 
            },
            j_poke_krabby = {
                name = 'クラブ',      
                text = {
                    "プレイされた {C:attention}フェイス{} カードが",
                    "スコアされた時",
                    "チップを {C:chips}+#1#{} 与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_kingler = {
                name = 'キングラー',      
                text = {
                    "プレイした全ての{C:attention}フェイス{}カードが、",
                    "スコアされた時",
					"チップを {C:chips}+#1#{} 与える",
                    "強化されていなければ {C:attention}ボーナス{} カードになる"
                } 
            },
            j_poke_voltorb = {
                name = 'ビリリダマ',      
                text = {
					"{C:attention}ボラタイル右{}",
					"倍率 {C:mult}+#1#{}",
					"このラウンド終了時までデバフ",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_electrode = {
                name = 'マルマイン',      
                text = {
					"{C:attention}ボラタイル右{}",
                    "倍率 {X:mult,C:white}+#1#{} と",
					"{C:money}$#2#{} を得る",
					"このラウンド終了時までデバフ",
                } 
            },
            j_poke_exeggcute = {
                name = 'タマタマ',      
                text = {
                    "プレイされた {C:hearts}#2#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{}", 
                    "{C:inactive,s:0.8}({C:attention,s:0.8}リーフの石{}{C:inactive,s:0.8} で進化)"
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
                    "{C:attention}太いホネを持っている{}",
					"{C:attention}消耗{} エリアにある",
                    "カード1枚につき",
					"倍率 {C:mult}+#1#{} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}太いホネ{}{C:inactive,s:0.8} は2倍){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#2#{C:inactive})",
                    "{C:inactive,s:0.8}(消耗カードを{C:attention,s:0.8}#3#枚{C:inactive,s:0.8}使った後に進化)"
                } 
            },
            j_poke_marowak = {
                name = 'ガラガラ',      
                text = {
					"消耗スロット {C:attention}+#2#{}",
					"{C:attention}消耗{} エリアにある",
                    "カード1枚につき",
					"倍率 {X:mult,C:white} X#1# {} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}太いホネ{}{C:inactive,s:0.8} は2倍){}",
                    "{C:inactive}(現在 倍率 {X:mult,C:white} X#3# {}{C:inactive})",
                } 
            },
            j_poke_hitmonlee = {
                name = 'サワムラー',      
                text = {
					"フルデッキの {C:attention}#2#{} 枚を下回る",
                    "カード1枚につき",
                    "倍率 {X:red,C:white}X#1#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#3#{})",
                } 
            },
            j_poke_hitmonchan = {
                name = 'エビワラー',      
                text = {
					"フルデッキの {C:attention}#2#{} 枚を上回る",
                    "カード1枚につき",
                    "倍率 {X:red,C:white}X#1#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#3#{})",
                } 
            },
            j_poke_lickitung = {
                name = 'ベロリンガ',      
                text = {
					"1枚目と2枚目にプレイされた{C:attention}ジャック{} が",
                    "スコアされた時",
                    "倍率 {X:mult,C:white} X#1#{}",
					"{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} つ発動した後で進化",
                } 
            },
            j_poke_koffing = {
                name = 'ドガース',      
                text = {
					"このカードを売ると {C:attention}ボスブラインド{} の",
                    "必要なスコアを {C:attention}半分{} にする",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_weezing = {
                name = 'マタドガス',      
                text = {
                    "このカードを売ると {C:attention}ボスブラインド{} を",
                    "無効にすると",
                    "必要なスコアを{C:attention} 半分{} にする",
                } 
            },
            j_poke_rhyhorn = {
                name = 'サイホーン',      
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_rhydon = {
                name = 'サイドン',      
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を得る",
					"{br:4}ERROR - CONTACT STEAK",
					"スコアされた {C:attention}ストーン{} カードの",
					"{C:attention}1枚目{} を再発動する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_chansey = {
                name = 'ラッキー',      
                text = {
					"各ラウンドの最初 {C:attention}#1#{C:inactive} [#2#]{} 回に",
					"{C:attention}ラッキー{} カードが発動に成功する時",
					"永久的なコピーを1枚デッキに加えて",
                    "ドローしてから {C:attention}手札{} に加える",
                    "{C:inactive,s:0.8}(デッキの25%以上が {C:attention,s:0.8}ラッキー{C:inactive,s:0.8} カードの場合に進化)"
                } 
            },
            j_poke_tangela = {
                name = 'モンジャラ',      
                text = {
					"プレイされた {C:attention}ワイルド{} のカードが",
					"倍率 {C:mult}+#1#{} ,チップ {C:chips}+#2#{} か {C:money}$#3#{} を与える",
                    "{C:green}#5#分の#4#{} 確率で {C:attention}３つすべて{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}ワイルド{C:inactive,s:0.8} カードをスコアした後に進化)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'ガルーラ',      
                text = {
                    "消耗スロット {C:attention}+#1#{}",
                    "ハンド {C:chips}-#2#{}",
                } 
            },
			j_poke_mega_kangaskhan = {
                name = 'メガガルーラ',      
                text = {
                    "すべてのプレイされたカードを {C:attention}再発動する{}",
                    "{br:3}ERROR - CONTACT STEAK",
					"ラウンド終了時に {C:attention}消耗カード{} を少なくとも {C:attention}#1#{} 枚を使った場合",
                    "{C:attention}ダブルタグ{} を作る",
                    "{C:inactive}(現在 {C:attention}#2#{C:inactive} 枚の消耗カードが使われた)"
                } 
            },
            j_poke_horsea = {
                name = 'タッツー',      
                text = {
					"スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1{C:inactive,s:0.8} / +12で進化)"
                } 
            },
            j_poke_seadra = {
                name = 'シードラ',      
                text = {
                    "スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
					"手札にある {C:attention}キング{} 場合, 倍率の増加は2倍される",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                    "{C:inactive,s:0.8}({C:dragon,s:0.8}ドラゴン{C:inactive,s:0.8} タイプ ステッカで進化){}"
                } 
            },
            j_poke_goldeen = {
                name = 'トサキント',      
                text = {
					"手札にある",
					"すべての {C:attention}ゴールド{} カードを",
					"{C:attention}#1#{} 回再発動する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
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
                    "{C:inactive,s:0.8}({} {C:attention,s:0.8}水の石{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_starmie = {
                name = 'スターミー',      
                text = {
                    "プレイされた {C:diamonds}#3#{} スーツの",
                    "カードがスコアされた時",
                    "倍率 {C:mult}+#1#{} と",
					"{C:money}$#2#{} を与える"
                } 
            },
            j_poke_mrmime = {
                name = 'バリヤード',      
                text = {
					"手札にある",
					"一番左カードを",
					"{C:attention}#1#{} 回再発動する",
                } 
            },
            j_poke_scyther = {
                name = 'ストライク',      
                text = {
					"ブラインドが選択された時",
					"右のジョーカーを破壊しと",
					"倍率 {C:mult}+#2#{} を得る",
					"ジョーカーが {C:red}レア{} またはそれ以上の場合",
					"{C:dark_edition}フォイル{}、 {C:dark_edition}ホログラム{}",
                    "{C:dark_edition}ポリクローム{} エディションのいずれかを得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}",
                    "{C:inactive,s:0.8}({C:metal,s:0.8}鋼 {C:inactive,s:0.8}タイプ ステッカか {C:attention,s:0.8}固い石{C:inactive,s:0.8}で進化)",
                } 
            },
            j_poke_jynx = {
                name = 'ルージュラ',      
                text = {
					"{C:attention}ブラインド{}が選択された時",
					"デッキのサイズが {C:attention}#2#{} 枚またはそれ以上場合",
					"ハンドサイズ {C:attention}+#1#{}",
					"{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}カード{}がデッキに {C:attention}ショップ{}, {C:attention}スタンダードパック{}, ",
					"{C:spectral}クリプティッド{}, {C:item}アイテム{}, 特定ジョーカーから",
					"追加されるたびには {C:attention}複製{}する",
                } 
            },
            j_poke_electabuzz = {
                name = 'エレブー',      
                text = {
					"ラウンド終了時と",
					"カードが1枚 {C:attention}売れる{} たびに",
					"{C:attention}セルバリュー{} を",
                    "{C:money}$#1#{} を得る",
                    "{br:3.5}ERROR - CONTACT STEAK",
					"ラウンド終了時にこのジョーカーの",
					"セルバリューの {C:attention}#2#%{} を与える {C:inactive}(切り上げられた){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{}{C:inactive,s:0.8} で進化)"
                } 
            },
            j_poke_pinsir = {
                name = 'カイロス',
                text = {
					"スコアされたカードが {C:attention}手札{} のカードと",
					"{C:attention}同じランク{} の場合",
                    "倍率 {X:mult,C:white} X#1# {}",
                } 
            },
			j_poke_mega_pinsir = {
                name = 'メガカイロス',
                text = {
					"プレイされた強化されていないカードが",
					"スコアされた時",
					"{X:mult,C:white} X#1# {}",
                } 
            },
            j_poke_tauros = {
                name = 'ケンタロス（先達）',
                text = {
					"それぞれの {C:attention}ケンタロス{} や  {C:attention}ミルタンク{} ジョーカーが",
                    "倍率 {X:mult,C:white}X#1#{} を与える",
                    "{br:4}ERROR - CONTACT STEAK",
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_gyarados = {
                name = 'ギャラドス',
                text = {
                    "倍率 {X:red,C:white} X#1# {}",
                } 
            },
			j_poke_mega_gyarados = {
                name = 'メガギャラドス',
                text = {
                    "{X:red,C:white} X#1# {} Mult",
                    "{br:1.5}ERROR - CONTACT STEAK",
					"すべての {C:attention}ボスブラインド{} の",
                    "効果を無効にする",
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
					"{C:colorless}無色{} ステッカー と {C:attention}摩耗{} で",
                    "複製する",
                    "{C:inactive,s:0.8}(エターナル解除, メタモン除き){}",
                } 
            },
            j_poke_eevee = {
                name = 'イーブイ',
                text = {
                    "最初に{C:attention}5回{} {C:green}リロールが{}",
					"{C:money}$#1#{} を得る",
                    "{C:inactive}(現在 {C:attention}#2#{C:inactive}/#3#)",
                    "{C:inactive,s:0.8}(進化する…たくさん){}",
                } 
            },
            j_poke_vaporeon = {
                name = 'シャワーズ',
                text = {
                    "ショップで{C:attention}3回{} [#3#] {C:green}リロール{}",
					"するたびに、チップ{C:chips}+#2#{}",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                } 
            },
            j_poke_jolteon = {
                name = 'サンダース',
                text = {
					"ショップで{C:attention}3回{} [#2#] {C:green}リロール{} すると",
                    "{C:money}$#1#{} を得る",
                } 
            },
            j_poke_flareon = {
                name = 'ブースター',
                text = {
					"ショップで{C:attention}3回{} [#3#] {C:green}リロール{}",
                    "するたびに、倍率{X:red,C:white} X#2# {} を得る",
                    "{C:inactive}(現在 倍率{X:red,C:white} X#1# {}{C:inactive})"
                } 
            },
            j_poke_porygon = {
                name = 'ポリゴン',
                text = {
					"{C:pink}+1{} エネルギーMAXレベル",
					"{C:attention}ブースターパック{} を開封するたびに",
					"{C:pink}エネルギー{} カードを作る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}アップグレード{}{C:inactive,s:0.8} で進化する)"
                } 
            },
            j_poke_omanyte = {
                name = 'オムナイト',
                text = {
                    "{C:attention}原始 #1#{}",
                    "{X:attention,C:white}1+{} : {C:tarot}タロット{} カードを作る",
                    "{X:attention,C:white}2+{} : {C:money}$#2#{} を得る",
                    "{X:attention,C:white}3+{} : {C:item}アイテム{} カードを作る",
					"{C:inactive,s:0.8}(空きが必要)",
                    "{C:inactive,s:0.8}(3+のレベルを {C:attention,s:0.8}#3#{}{C:inactive,s:0.8} 回発動した後に進化)"
                } 
            },
            j_poke_omastar = {
                name = 'オムスター',
                text = {
                    "{C:attention}原始 #1#{}",
					"{X:attention,C:white}1+{} : {C:tarot}タロット{} カードを作る",
                    "{X:attention,C:white}2+{} : {C:money}$#2#{} を得る",
                    "{X:attention,C:white}3+{} : {C:item}アイテム{} カードを作る",
					"{C:inactive,s:0.8}(空きバサギリが必要)",
                    "{X:attention,C:white}4+{} : ラウンドごとに1回 {C:attention}タグ{} を作る {C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = 'カブト',
                text = {
                    "{C:attention}原始 #1#{}",
                    "{X:attention,C:white}1+{} : チップ {C:chips}+#2#{}",
                    "{X:attention,C:white}2+{} : {C:attention}#1#{} のカードがスコアされた時永久的にチップ {C:chips}+#3#{}",
                    "{X:attention,C:white}3+{} : チップ {C:chips}+#4#{}",
                    "{C:inactive,s:0.8}(3+のレベルを {C:attention,s:0.8}#3#{}{C:inactive,s:0.8} 回発動した後に進化)"
                } 
            },
            j_poke_kabutops = {
                name = 'カブトプス',
                text = {
                    "{C:attention}原始 #1#{}",
					"{X:attention,C:white}1+{} : チップ {C:chips}+#2#{}",
                    "{X:attention,C:white}2+{} : {C:attention}#1#{} のカードがスコアされた時永久的にチップ {C:chips}+#3#{}",
                    "{X:attention,C:white}3+{} : チップ {C:chips}+#4#{}",
                    "{X:attention,C:white}4+{} : {C:attention}1枚目{} と {C:attention}2枚目{} にプレイされたカードを {C:attention}#5#{}回発動する",
                } 
            },
            j_poke_aerodactyl = {
                name = 'プテラ',
                text = {
                    "{C:attention}原始 #1#{}",
					"{X:attention,C:white}1+{} : 倍率 {X:red,C:white}X#2#{}",
                    "{X:attention,C:white}2+{} : 倍率 {X:red,C:white}X#3#{} を得る",
                    "{X:attention,C:white}3+{} : 最初のスコアされた強化されていない {C:attention}#1#{} {C:attention}グラス{} カードになる",
                    "{X:attention,C:white}4+{} : このジョーカーの 倍率 {X:red,C:white}X{} の値が {C:attention}2倍される{}",
					"{C:inactive}(ラウンド終了時にリセットされる)",
                } 
            },
			j_poke_mega_aerodactyl = {
                name = 'メガプテラ',
                text = {
					"プレイされたハンドにある {C:attention}#1#{} 1枚につき,",
					"スコアされた時プレイされた {C:attention}#1#{} が",
					"{X:mult,C:white}X#2#{} を与える",
                    "{br:3.5}ERROR - CONTACT STEAK",
					"{C:green}#4#分の#3#{} の確率で",
                    "プレイされた各 {C:attention}#1#{} が破壊される",
                } 
            },
            j_poke_snorlax = {
                name = 'カビゴン',
                text = {
					"{C:attention}食べ残しを持っている{}",
					"ラウンド終了時に{ C:attention}食べ残し{} 1枚につき",
					"倍率 {X:red,C:white}X#1#{} を得る",
					"{C:inactive}(現在 {X:red,C:white}X#2#{}{C:inactive})"
                } 
            },
            j_poke_articuno = {
                name = 'フリーザー',
                text = {
					"プレイされたハンドに最初のスコアされたカードに",
					"{C:attention}フォイル{} エディション と",
					"ランダムな {C:attention}シール{} を加える",
                } 
            },
            j_poke_zapdos = {
                name = 'サンダー',
                text = {
                    "自分が持っている",
                    "{C:money}$#2#{}につき、倍率{X:mult,C:white} X#1#{}",
                    "{C:inactive}(現在 {X:red,C:white}X#3#{}{C:inactive})"
                } 
            },
            j_poke_moltres = {
                name = 'ファイヤー',
                text = {
                    "各ラウンドで最初に {C:attention}ディスカード{} された",
                    "ポーカーハンド {C:attention}3段{} のレベルをアップグレードする"
                } 
            },
            j_poke_dratini = {
                name = 'ミニリュウ',
                text = {
					"プレイされたハンドが",
                    "{C:attention}#3#{} 以下枚の場合、",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +10{}{C:inactive,s:0.8}で進化)"
                } 
            },
            j_poke_dragonair = {
                name = 'ハクリュー',
                text = {
                    "プレイされたハンドが",
                    "{C:attention}#3#{} 以下枚の場合、",
                    "倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +30{}{C:inactive,s:0.8}で進化)",
                } 
            },
            j_poke_dragonite = {
                name = 'カイリュー',
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{br:1.6}ERROR - CONTACT STEAK",
                    "ハンドのカードが {C:attention}1{} 枚しかない場合",
                    "{C:attention}#2#{}回追加で再発動する"
                } 
            },
            j_poke_mewtwo = {
                name = 'ミュウツー',
                text = {
					"ショップ終了時に",
					"一番左ジョーカーの{C:dark_edition}ポリクローム{}と {C:pink}エナジャイズ{} {C:attention}された{}",
					"{C:attention}コピー{} を作成する",
					"次に一番左ジョーカーを{C:attention}破壊{}する",
					"{br:3}ERROR - CONTACT STEAK",
					"それぞれの {C:dark_edition}ポリクローム{} ジョーカーが",
					"倍率 {X:mult,C:white} X#1# {} を与える",
                    "{C:inactive}(自己破壊できない)"
                } 
            },
			j_poke_mega_mewtwo_x = {
                name = "メガミュウツーX",
                text = {
                    "すべてのジョーカーが 倍率 {X:mult,C:white} X#1# {}を与える",
                } 
            },
			j_poke_mega_mewtwo_y = {
                name = "メガミュウツーY",
                text = {
					"ショップ終了時に一番左ジョーカーを {C:attention}2回{} {C:pink}エナジャイズ{} する",
                    "{br:2}ERROR - CONTACT STEAK",
					"{C:attention}ボスブラインド{} を倒した時",
					"{C:pink}+1{} エネルギーMAXレベル",
                } 
            },
            j_poke_mew = {
                name = 'ミュウ',
                text = {
					"ショップ終了時に",
					"ランダムな {C:dark_edition}ネガティブ{} {C:tarot}タロット{},",
					"{C:spectral}スペクトル{} か {C:item}アイテム{} カードを作る",
					"{C:green}#1#%{}の確率で {C:attention}代わり{} に",
					"ラ{C:dark_edition}ネガティブ{} ジョーカーを作る",
					"{C:inactive,s:0.8}(確率は変更できない)",
                } 
            },
			j_poke_chikorita = {
                name = 'チコリータ',
                text = {
					"ハンドサイズ {C:attention}+#1#{}",
					"ラウンド終了時に",
					"手札のカード {C:attention}3枚目{} ごとに {C:money}$#2#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_bayleef = {
                name = 'ベイリーフ',
                text = {
                    "ハンドサイズ {C:attention}+#1#{}",
					"ラウンド終了時に",
					"手札のカード {C:attention}2枚目{} ごとに {C:money}$#2#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_meganium = {
                name = 'メガニウム',
                text = {
                    "ハンドサイズ {C:attention}+#1#{}",
					"ラウンド終了時に",
					"手札のカード {C:attention}1枚{} ごとに {C:money}$#2#{} を得る",
                }
            },
			j_poke_cyndaquil = {
                name = 'ヒノアラシ',
                text = {
                    "ディスカード {C:red}+#1#{}",
					"残っている {C:attention}ディスカード{} ごとに",
					"倍率 {C:mult}+#2#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#4#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_quilava = {
                name = 'マグマラシ',
                text = {
                    "ディスカード {C:red}+#1#{}",
                    "残っている {C:attention}ディスカード{} ごとに",
					"倍率 {C:mult}+#2#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#4#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_typhlosion = {
                name = 'バクフーン',
                text = {
                    "ディスカード {C:red}+#1#{}",
                    "残っている {C:attention}ディスカード{} ごとに",
					"倍率 {C:mult}+#2#{}, {X:red,C:white}X#3#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#4#{C:inactive}, {X:red,C:white}X#5# {C:inactive})",
                }
            },
			j_poke_totodile = {
                name = 'ワニノコ',
                text = {
                    "ハンド {C:blue}+#1#{}",
					"このラウンドでプレイされたカードにつき",
                    "チップ {C:chips}+#2#{}",
                    "{C:inactive}(現在 チップ {C:chips}+#3#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_croconaw = {
                name = 'Croconaw',
                text = {
                    "ハンド {C:blue}+#1#{}",
					"このラウンドでプレイされたカードにつき",
                    "チップ {C:chips}+#2#{}",
                    "{C:inactive}(現在 チップ {C:chips}+#3#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_feraligatr = {
                name = 'Feraligatr',
                text = {
                    "ハンド {C:blue}+#1#{}",
					"このラウンドでプレイされたカードにつき",
                    "チップ {C:chips}+#2#{}",
                    "{C:inactive}(現在 チップ {C:chips}+#3#{C:inactive})",
                }
            },
            j_poke_sentret = {
                name = 'オタチ',
                text = {
					"プレイしたハンドが",
					"直前ハンドと {C:attention}同じでない{} 場合",
					"倍率 {C:mult}+#2#{} を得る",
					"同じで倍率を {C:attention}リセット{}",
                    "{C:inactive}(直前ハンド: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / +15{C:inactive,s:0.8}で進化)"
                }  
            },
            j_poke_furret = {
                name = 'オオタチ',
                text = {
                    "プレイしたハンドが",
					"直前ハンドと {C:attention}同じでない{} 場合",
					"倍率 {C:mult}+#2#{} を得る",
                    "{C:inactive}(直前ハンド: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{} {C:inactive})",
                }  
            },
			j_poke_hoothoot = {
                name = 'ホーホー',
                text = {
                    "{C:purple}見破る +#1#",
					"{C:attention}見破った{} 各カードは",
					"チップを与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_noctowl = {
                name = 'ヨルノズク',
                text = {
                    "{C:purple}見破る +#1#",
					"{C:attention}見破った{} 各カードは",
					"チップを与える",
                }
            },
			j_poke_ledyba = {
                name = "レディバ",
                text = {
					"{C:attention}デッキ{} の残りのカード {C:attention}5枚{} につき",
					"倍率 {C:mult}+#1#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_ledian = {
                name = "レディアン",
                text = {
                    "{C:attention}デッキ{} の残りのカード {C:attention}3枚{} につき",
					"倍率 {C:mult}+#1#{}",
                    "{C:inactive}(現在 倍率 {C:mult}+#2#{C:inactive})",
                }
            },
			j_poke_spinarak = {
                name = "イトマル",
                text = {
                  "チップ {C:chips}+#1#{}",
				  "{C:green}#3#分の#2#{} の確率で代わりに チップ {C:chips}+#5#{}",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_ariados = {
              name = "アリアドス",
              text = {
                  "チップ {C:chips}+#1#{}",
				  "{C:green}#3#分の#2#{} の確率で代わりに チップ {C:chips}+#4#{}",
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
                    "{C:inactive}(現在 {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} をラウンド終了時に得る)"
                } 
            },
            j_poke_pichu = {
                name = 'ピチュー',
                text = {
                    "{C:attention}ベイビィ{}",
                    "ラウンド終了時に",
                    "{C:money}$#1#{} を得る",
                    "倍率 {X:red,C:white} X#2# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_cleffa = {
                name = 'ピィ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ショップ終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}月{} カードを作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
            j_poke_igglybuff = {
                name = 'ププリン',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}世界{} カードを作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
			j_poke_togepi = {
                name = 'トゲピー',
                text = {
					"",
					"",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_togetic = {
                name = 'トゲチック',
                text = {
                    "{C:attention}ラッキーカード{} は",
                    "{C:green}#2#分の#1#{} の確率でチップ {C:chips}+#4#{}",
                    "そして {C:green}#3#分の#1#{} の確率で倍率 {X:mult,C:white}X#5#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}光の石{C:inactive,s:0.8} で進化)"
                }
            },
			j_poke_natu = {
                name = 'ネイティ',
                text = {
                    "{C:planet}惑星{} カードは追加のレベルを1段与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_xatu = {
                name = 'ネイティオ',
                text = {
                    "{C:planet}惑星{} カードは追加のレベルを1段与える",
                    "{C:planet}天体パック{} にすべての{C:planet}惑星{} カードが含まれる",
                }
            },
			j_poke_azurill = {
                name = 'Azurill',
                text = {
                    "{C:attention}べいビィー{}",
                    "ショップ終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}教皇{} カードを作る",
					"倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_marill = {
                name = 'マリル',
                text = {
					"プレイされたハンドにスコアされた {C:attention}強化されていない{} カード",
					"およびスコアされた {C:attention}強化されている{} が含まれる場合",
                    "倍率 {X:mult,C:white}X#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}ボーナスカード{} を {C:attention,s:0.8}#1#枚{C:inactive,s:0.8} スコアした後に進化)",
                }
            },
            j_poke_azumarill = {
                name = 'マリルリ',
                text = {
                    "倍率 {X:mult,C:white}X#1#{}",
                    "プレイされたハンドにスコアされた {C:attention}強化されていない{} カード",
					"およびスコアされた {C:attention}強化されている{} が含まれる場合",
					"このジョーカーの {X:mult,C:white}X倍率{} の値は2倍される",
                }
            },
			j_poke_sudowoodo = {
                name = "ウソッキー",
                text = {
                    "{C:attention}タイプチェンジャーのポケモン{}",
				    "プレイされた {C:attention}フェイス{} カードがスコアされた時",
				    "倍率 {C:mult}+#1#{} を与える",
                    "{br:3.5}ERROR - CONTACT STEAK",
				    "このジョーカーは {X:grass,C:white}草{} タイプじゃない場合か",
				    "{X:water,C:white}水{} タイプのジョーカーがある場合",
				    "すべてのプレイされた {C:attention}フェイス{} カードが再発動する",
                }
            },
            j_poke_bellossom = {
                name = 'キレイハナ',
                text = {
                    "プレイされた {C:attention}奇数{} ランクの",
					"カードがスコアされた時",
					"{C:attention}ワイルド{} カードになる",
					"すでに {C:attention}ワイルド{} は",
					"{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、{C:dark_edition}ポリクローム{} の",
                    "いずれかの効果を加える",
                } 
            },
            j_poke_politoed = {
                name = 'ニョロトノ',
                text = {
                    "プレイされた {V:1}#2#{} スーツの",
                    "カードがスコアされた時, 倍率 {C:mult}+#1#{}",
					"{br:5}ERROR - CONTACT STEAK",
					"{V:1}#2#{} スーツのカードを",
					"{X:water,C:white}水タイプ{} ジョーカー1枚につき再発動",
					"{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} 再発動はスコアしたカードに均等に分散する){}",
					"ハンドがプレイ後にスーツの変わってが順番に行われる",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
			 j_poke_hoppip = {
                name = 'ハネッコ',
                text = {
                    "ハンドサイズ {C:attention}+#1#{}",
					"ディスカードされた{C:attention}最初の2枚{} カードは",
					"{C:dark_edition}ワイルド{} になる",
					"ディスカード時に {S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_skiploom = {
                name = 'ポポッコ',
                text = {
                    "ハンドサイズ {C:attention}+#1#{}",
					"ディスカードされた{C:attention}最初の3枚{} カードは",
					"{C:dark_edition}ワイルド{} になる",
					"ディスカード時に {S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_jumpluff = {
                name = 'ワタッコ',
                text = {
                    "ハンドサイズ {C:attention}+#1#{}",
					"ディスカードされたカードは",
					"{C:dark_edition}ワイルド{} になる",
					"ディスカード時に {S:1.1,C:red,E:2}自らを破壊する{}",
                }
            },
			j_poke_aipom = {
              name = "エイパム",
              text = {
					"ハンド {C:chips}-#3#{}",
					"すべての {C:attention}フラッシュ{} と",
                    "{C:attention}ストレート{} を",
                    "{C:attention}3枚{} のカードで作ることができる",
					"{C:inactive,s:0.8}(ストレートを{C:attention,s:0.8}#1#つ{C:inactive,s:0.8} と フラッシュを {C:attention,s:0.8}#2#つ{C:inactive,s:0.8} プレイした後に進化){}"
              }
            },
			j_poke_sunkern = {
                name = 'ヒマナッツ',
                text = {
					"{C:attention}ブラインド{} が選択された時と",
					"ハンドが {C:attention}プレイされた{} 時",
                    "{C:money}$#1#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}太陽の石{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_sunflora = {
                name = 'キマワリ',
                text = {
				    "{C:attention}ブラインド{} が選択された時, ハンドが {C:attention}プレイされた{} 時",
					"ハンドが {C:attention}ディスカードされた{} 時, 消耗カードが {C:attention}使われた{} 時",
					"カードが {C:attention}売られた{} 時 そしてラウンド終了時に",
                    "{C:money}$#1#{} を得る",
                }
            },
			j_poke_yanma = {
              name = "ヤンヤンマ",
              text = {
					"プレイされた {C:attention}3{} か {C:attention}6{} がスコアされた時",
					"チップ {C:chips}+#2#{} と 倍率 {C:mult}+#1#{} を与える",
					"{C:green}#6#分の#5#{} 確率で",
					"代わりに チップ {C:chips}+#4#{} と 倍率 {C:mult}+#3#{}",
                    "{C:inactive,s:0.8}(3か6を{C:attention,s:0.8}#7#枚{C:inactive,s:0.8}スコアした後に進化)"
              }
            },
            j_poke_espeon = {
                name = 'エーフィ',
                text = {
					"プレイされた {C:attention}#3#{} を {C:attention}再発動{}",
					"{br:3}ERROR - CONTACT STEAK",
					"スコアされた {V:1}#4#{} カードが",
					"倍率 {X:red,C:white}X#2#{} を与える",
					"{C:inactive,s:0.8}({C:green,s:0.8}リロール{C:inactive,s:0.8}した後に {C:attention,s:0.8}ランク{C:inactive,s:0.8}/{C:attention,s:0.8}スーツ{C:inactive,s:0.8} が {C:attention,s:0.8}ランダム{C:inactive,s:0.8} になる)",
                } 
            },
            j_poke_umbreon = {
                name = 'ブラッキー',
                text = {
                    "プレイされた {C:attention}#1#{} のレベルを下げる",
                    "{br:4}ERROR - CONTACT STEAK",
					"下げるの {C:attention}#2# {C:inactive}[#3#]{}回につき",
					"{C:attention}オービタルタグ{} か {C:attention}ネガティブタグ{} を作る",
                    "{C:inactive,s:0.8}({C:green,s:0.8}リロール{C:inactive,s:0.8}した後にポーカーハンドが{C:attention,s:0.8}変化する{C:inactive,s:0.8})",
                } 
            },
			j_poke_murkrow = {
              name = "ヤミカラス",
              text = {
				"{X:dark,C:white}悪{} タイプのジョーカーにつき",
                "倍率 {X:red,C:white} X#1# {}",
                "{C:inactive}(現在 倍率 {X:red,C:white} X#2#{C:inactive} )",
                "{C:inactive,s:0.8}({C:attention,s:0.8}闇の石{C:inactive,s:0.8} で進化)"
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
                    "{C:inactive,s:0.8}(ラウンド終了時にリセットされる)",
                }
            },
			j_poke_misdreavus = {
                name = 'ムウマ',
                text = {
					"プレイされた {C:attention}フェイス{} カードがスコアされた時",
					"チップを最大 {C:chips}#1#{} まで失う",
					"このジョーカーはその失ったチップを得る",
                    "{C:inactive}(現在 チップ {C:chips}+#2#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}闇の石{C:inactive,s:0.8} で進化)",
                }
            },
			j_poke_wobbuffet = {
              name = "ソーナンス",
              text = {
                "プレイされた {C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{} と {C:attention}10{} を",
                "再発動する",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:attention}ボラタイル左{}",
                "ブラインドが選択された時",
                "一番右ジョーカーに {C:attention}エターナル{} を加える",
              }
            },
			j_poke_girafarig = {
              name = "キリンリキ",
              text = {
				"プレイしたハンドが {C:attention}ツーペア{} を含まれる場合",
				"最初と最終の {C:attention}フェイス{} カードがスコアされた時",
                "倍率 {X:mult,C:white}X#1#{} を与える",
                "{C:inactive,s:0.8}({C:attention,s:0.8}2枚{C:inactive,s:0.8} のフェイスカードに {C:attention,s:0.8}死神{C:inactive,s:0.8} を使った後に進化){}"
              }
            },
			j_poke_pineco = {
              name = "クヌギダマ",
              text = {
                "{C:attention}ボラタイル左{}",
                "チップ {C:chips}+#1#{}",
				"このラウンド終了時までデバフ",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
              }
            },
            j_poke_forretress = {
              name = "フォレトス",
              text = {
				"手札にある {C:attention}スチールカード{} が発動される時",
				"チップ {C:chips}+#2#{} を得る",
                "{br:2}ERROR - CONTACT STEAK",
                "{C:attention}ボラタイル左{}",
                "チップ {C:chips}+#1#{}",
				"このラウンド終了時までデバフ",
              }
            },
			j_poke_dunsparce = {
                name = 'ノコッチ',
                text = {
                  "{C:inactive}何もしない？",
                  "{C:green}リロール{}した場合",
				  "ショップ終了時に {S:1.1,C:red,E:2}自らを破壊する{}",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_gligar = {
                name = 'グライガー',
                text = {
					"{C:attention}手札にある{} {V:1}#2#{} につき",
					"プレイされたカードが倍率 {X:mult,C:white}X#1#{} を与える",
                    "{C:inactive, s:0.8}(スーツはラウンド終了時に変わる)",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#3#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}闇の石{C:inactive,s:0.8} で進化)",
                }
            },
            j_poke_steelix = {
                name = 'ハガネール',
                text = {
					"{C:attention}ファーストハンド{}の",
					"最初にスコアされたものを",
					"{C:attention}スチール{} に強化する",
					"{br:4}ERROR - CONTACT STEAK",
					"{C:attention}手札にある{}",
					"{C:attention}すべてのストーン{} カードを",
					"{C:attention}スチール{} カードになる"
                } 
            },
			j_poke_snubbull = {
                name = 'ブルー',
                text = {
					"最初にプレイされた{C:attention}フェイス{} カードが",
                    "スコアされた時",
                    "倍率 {X:mult,C:white}X#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_granbull = {
                name = 'グランブル',
                text = {
                    "最初のプレイされた",
					"{C:attention}フェイス{} カードは {C:attention}クイーン{} 場合",
                    "倍率 {X:mult,C:white}X#2#{} を与える",
					"それ以外場合",
                    "倍率 {X:mult,C:white}X#1#{} を与える",
                }
            },
			j_poke_qwilfish = {
                name = 'ハリーセン',
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
					"ハンドがプレイされた時",
					"手札にある {C:attention}ハザードカード{} につき",
                    "チップ {C:chips}+#3#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#4#{C:inactive})",
                }
            },
            j_poke_scizor = {
                name = 'ハッサム',
                text = {
                    "ブラインドが選択された時",
					"右のジョーカーを破壊しと",
					"倍率 {C:mult}+#4#{} を得る",
					"ジョーカーが {C:red}レア{} またはそれ以上の場合",
					"{C:dark_edition}フォイル{}、 {C:dark_edition}ホログラム{}",
                    "{C:dark_edition}ポリクローム{} エディションのいずれかを加える",
					"このジョーカーにエディションの効果は {C:attention}蓄積{} された",
                    "{C:inactive,s:0.8}(可能であれば破壊されたジョーカーのエディションと一致する){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{} {C:inactive}, チップ {C:chips}+#2#{} {C:inactive}, 倍率 {X:red,C:white}X#3#{} {C:inactive})"
                } 
            },
			j_poke_sneasel = {
                name = 'ニューラ',
                text = {
					"プレイされたハンドのカード1枚しかない場合",
					"それが {C:attention}#1#{} のカード場合",
					"それを破壊し、 {C:money}$#2#{} を得る",
                    "{C:inactive,s:0.8}(ランクはラウンド終了時に変わる){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}闇の石{C:inactive,s:0.8} で進化)",
                }
            },
			j_poke_teddiursa = {
              name = "ヒメグマ",
              text = {
					"{C:attention}ブースターパック{}が",
                    "スキップされた時、",
                    "倍率{C:red}+#2#{}",
					"{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}+#1#{C:inactive,s:0.8} / #3#で進化)"
              }
            },
            j_poke_ursaring = {
              name = "リングマ",
              text = {
					"{C:attention}ブースターパック{}が",
                    "スキップされた時、",
                    "倍率{C:red}+#2#{}",
					"{C:item}アイテム{} を作る",
					"{C:inactive,s:0.8}(空きが必要)",
					"{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
					"{C:inactive,s:0.8}({C:attention,s:0.8}月の石{C:inactive,s:0.8} で進化)",
              }
            },
			j_poke_swinub = {
                name = "ウリムー",
                text = {
					"最初のプレイされたカードは",
					"スコアされたハンドある {C:attention}ストーン{} と {C:attention}グラス{} カードにつき",
					"倍率 {C:mult}+#1#{}",
					"{br:2}text needs to be here to work",
					"ラウンド終了時に {C:green}#4#分の#3#{} 確率で",
					"{C:money}$#2#{} を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#5#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_piloswine = {
              name = "イノムー",
              text = {
                    "最初のプレイされたカードは",
					"スコアされたハンドある {C:attention}ストーン{} と {C:attention}グラス{} カードにつき",
					"倍率 {C:mult}+#1#{}",
                    "{br:2}text needs to be here to work",
                    "ラウンド終了時に {C:green}#4#分の#3#{} 確率で",
					"{C:money}$#2#{} を得る",
                    "{C:inactive,s:0.8}(ストーン か グラスカードを {C:attention,s:0.8}#5#{C:inactive,s:0.8}枚スコアした後に進化)",
              }
            },
			j_poke_heracross = {
                name = 'ヘラクロス',
                text = {
					"スコアされたカードが {C:attention}手札{} のカードと",
					"{C:attention}同じランク{} でない場合",
                    "倍率 {X:mult,C:white} X#1# {}",
                }
            },
			j_poke_corsola = {
              name = 'サニーゴ',
              text = {
			    "フルデッキに {C:attention}強化されている{} カードにつき",
                "倍率 {C:mult}+#1#{}",
                "{br:2}ERROR - CONTACT STEAK",
				"スコアされたハンドが",
				"{C:attention}5枚の強化されているカード{} 場合",
				"{C:attention}たね{} の {X:water,C:white}水{} タイプのジョーカーを作る",
                "{C:inactive,s:0.8}(空きが必要)",
                "{C:inactive}(現在 倍率 {C:mult}+#2#{C:inactive})",
              }
            },
			j_poke_remoraid = {
              name = "テッポウオ",
              text = {
				"ラウンドごとに 最初にスコアされる {C:attention}#3#{} {C:inactive}[#4#]{} 枚のカードを",
                "再発動する",
                "{C:inactive}({C:attention}#2#{C:inactive} ラウンド後に進化)",
              }
            },
            j_poke_octillery = {
              name = "オクタン",
              text = {
                "ラウンドごとに 最初にスコアされる {C:attention}#2#{} {C:inactive}[#3#]{} 枚のカードを",
                "再発動する"
              }
            },
            j_poke_delibird = {
                name = "デリバード",
                text = {
                  "ショップ終了時に",
                  "{S:1.1,C:green,E:2}プレゼント{} を作る",
                  "{C:inactive,s:0.8}(空きが必要)"
                }
            },
			j_poke_mantine = {
                name = "マンタイン",
                text = {
					"スコアされた {C:attention}ゴールド{} カードにつき",
					"チップ {C:chips}+#2#{} を得る",
					"ハンドがプレイされた時、手札に {C:attention}ゴールド{} カードにつき",
                    "チップ {C:chips}+#2#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                }
            },
			j_poke_skarmory = {
                name = 'エアームド',
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
					"手札にある {C:attention}ハザードカード{} につき",
                    "倍率 {X:mult,C:white}X#3#{} ",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#4#{C:inactive} )",
                }
            },
            j_poke_kingdra = {
                name = 'キングドラ',
                text = {
                    "スコアした {C:attention}6{} につき",
					"倍率 {C:mult}+#2#{} を得る",
					"手札にある",
                    "{C:attention}キング{} 1枚が場合",
					"{C:attention}代わりに{} 倍率 {X:red,C:white}X#4#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}, 倍率 {X:red,C:white}X#3#{}{C:inactive})",
                } 
            },
			j_poke_phanpy = {
                name = "ゴマゾウ",
                text = {
				    "{C:attention}5枚 {}のスコアされたカードのハンドが",
					"{C:attention}連続{} でプレイされるたびに",
                    "倍率 {X:red,C:white}X#2#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#1#{C:inactive} )",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_donphan = {
                name = "ドンファン",
                text = {
                    "{C:attention}5枚 {}のスコアされたカードのハンドが",
					"{C:attention}連続{} でプレイされるたびに",
                    "倍率 {X:red,C:white}X#2#{} を得る",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#1#{C:inactive} )",
                }
            },
            j_poke_porygon2 = {
                name = 'ポリゴン2',
                text = {
                    "{C:pink}+2{} エネルギーMAXレベル",
					"{C:attention}ブースターパック{} を開封するたびに",
					"一番左ジョーカーと同じ {C:pink}タイプ{} の",
					"{C:pink}エネルギーカード{} を作る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}怪しいパッチ{}{C:inactive,s:0.8} で進化する)"
                } 
            },
            j_poke_stantler = {
                name = "オドシシ",
                text = {
					"プレイしたハンドが",
                    "{C:attention}ペア{} を含む場合",
					"{C:attention}最高ランク{} のプレイしたカードの",
					"チップの {C:chips}+#1#{} 倍を与える",
					"{C:inactive}(追加チップとフォイル除き){}",
					"{C:attention}最終ハンド{}でチップは {C:attention}2倍{} になる",
                }
            },
			j_poke_smeargle = {
                name = "ドーブル",
                text = {
					"ブラインドが選択された時",
					"右の {C:attention}ジョーカー{} の能力を",
                    "{C:attention}スケッチする{}",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:attention}スメアードジョーカー{} を適用する",
                }
            },
            j_poke_tyrogue = {
                name = 'バルキー',
                text = {
                    "{C:attention}ベイビィ{}",
					"各ラウンドで",
                    "最初に{C:attention}ディスカードかハンド{} された",
					"{C:attention}ディスカード{} がカード {C:attention}5枚{} 場合が, ランダムなカードを {C:attention}破壊{}する",
					"{C:attention}ハンド{} がカード {C:attention}5枚{} 場合が, ランダムなカードの {C:attention}コピー{} を1枚手札に加える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }  
            },
            j_poke_hitmontop = {
                name = 'カポエラー',
                text = {
					"倍率 {X:red,C:white} X#1# {}",
					"ブラインドが選択された時, フルデッキが",
					"{C:attention}ちょうど{} {C:attention}#2#{} 枚場合",
                    "倍率 {X:red,C:white} X#3# {}を得る",
                } 
            },
            j_poke_smoochum = {
                name = 'ムチュール',
                text = {
                    "{C:attention}ベイビィ{}",
					"このジョーカーが進化すると",
					"{C:attention}スタンダードタグ{} を作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive,s:0.8}( {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
            j_poke_elekid = {
                name = 'エレキッド',
                text = {
                    "{C:attention}ベイビィ{}",
                    "このジョーカーが進化すると",
					"{C:attention}クーポンタグ{} を作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
            j_poke_magby = {
                name = 'ブビィ',
                text = {
                    "{C:attention}ベイビィ{}",
                    "ディスカード {C:red}+#2#{}",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive}(この倍率を {C:attention}減ら{} します)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
			j_poke_houndour = {
              name = "デルビル",
              text = {
				"ディスカードされたカードが 永久的に倍率 {C:mult}+#1#{} を得る",
				"{br:2}ERROR - CONTACT STEAK",
				"カードを {C:attention}3枚{}以上ディスカードする時",
				"{C:attention}#3#枚{} のランダムな {C:attention}手札にある{} カードもディスカードする",
                "{C:inactive}({C:attention}#2#{C:inactive} ラウンド後に進化)",
              }
            },
            j_poke_houndoom = {
              name = "ヘルガー",
              text = {
			    "ディスカードされたカードが 永久的に倍率 {C:mult}+#1#{} を得る",
				"{br:2}ERROR - CONTACT STEAK",
				"カードを {C:attention}3枚{}以上ディスカードする時",
				"{C:attention}すべて{} の {C:attention}手札にある {}カードもディスカードする",
              }
            },
			j_poke_miltank = {
                name = "Miltank",
                text = {
					"ラウンド終了時に",
					"{C:colorless}無色{} タイプのジョーカー1枚につき",
                    "{C:money}$#1#{} を得る", 
                    "{C:inactive}(現在 {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = 'ハピナス',
                text = {
                    "各ラウンドの最初 {C:attention}#1#{C:inactive} [#2#]{} 回に",
					"{C:attention}ラッキー{} カードが発動に成功するに",
					"永久的な {C:dark_edition}ポリクローム{} コピーを1枚デッキに加えて",
                    "ドローしてから {C:attention}手札{} に加える",
                } 
            },
			j_poke_celebi = {
                name = "セレビィ",
                text = {
					"{C:attention}#1#{} {C:inactive}[#3#]{} のブラインドをスキップした後に",
					"アンティ {C:attention}-#2#{}",
					"{C:inactive}(発動するごとにスキップの要件が増加する)",
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
                    "{C:inactive,s:0.8}({C:money}$#2# {C:inactive,s:0.8}を与えた後に進化)"
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
                    "{C:inactive,s:0.8}({C:money}$#2# {C:inactive,s:0.8}を与えた後に進化)"
                } 
            },
            j_poke_sceptile = {
                name = "ジュカイン",
                text = {
                    "ハンドサイズ {C:attention}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#6#, #7#, #8#{} カードがスコアされた時",
                    "{C:money}$#1#{} を与える",
                    "{br:5}ERROR - CONTACT STEAK",
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
					"このラウンドで {C:attention}#5#, #6#, #7#{} カードが",
					"ディスカードされるたびに倍率 {C:mult}+#1#{} を得る",
					"他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カードを有する場合",
					"倍率は2倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {C:mult}#4#{}{C:inactive}){}",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}#2#{C:inactive,s:0.8} スコアした後に進化)"
                } 
            },
            j_poke_combusken = {
                name = "ワカシャモ",
                text = {
                    "ディスカード {C:mult}+#3#{}, {C:attention}性格{}",
					"このラウンドで {C:attention}#5#, #6#, #7#{} カードが",
					"ディスカードされるたびに倍率 {C:mult}+#1#{} を得る",
					"他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カードを有する場合",
					"倍率は2倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {C:mult}#4#{}{C:inactive}){}",
                    "{C:inactive,s:0.8}(倍率 {C:mult,s:0.8}#2#{C:inactive,s:0.8} スコアした後に進化)"
                } 
            },
            j_poke_blaziken = {
                name = "バシャーモ",
                text = {
                    "ディスカード {C:mult}+#3#{}, {C:attention}性格{}",
					"このラウンドで {C:attention}#6#, #7#, #8#{} カードが",
					"ディスカードされるたびに, 他の {X:fire,C:white}炎{} か {X:earth,C:white}闘{} カード1枚につき",
					"倍率 {C:mult}+#4#{}, {X:red,C:white} X#1# {} を得る",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 倍率 {C:mult}+#5#{C:inactive}, {X:red,C:white} X#3# {}{C:inactive}){}",
                } 
            },
            j_poke_mudkip = {
                name = "ミズゴロウ",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#4#, #5#, #6#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"他の {X:water,C:white}水{} か {X:earth,C:white}地面{} カードを有する場合",
					"チップは2倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}#2#{C:inactive,s:0.8} スコアした後に進化)"
                } 
            },
            j_poke_marshtomp = {
                name = "ヌマクロー",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#4#, #5#, #6#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"他の {X:water,C:white}水{} か {X:earth,C:white}地面{} カードを有する場合",
					"チップは2倍になる",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}#2#{C:inactive,s:0.8} スコアした後に進化)"
                } 
            },
            j_poke_swampert = {
                name = "ラグラージ",
                text = {
                    "ハンド {C:chips}+#3#{}, {C:attention}性格{}",
                    "プレイされた {C:attention}#6#, #7#, #8#{} カードがスコアされた時",
                    "チップ {C:chips}+#1#{} を与える",
					"{X:water,C:white}水{} か {X:earth,C:white}地面{} カード1枚につき",
					"チップさらに {C:chips}+#5#{} を与える",
                    "{C:inactive,s:0.8}(ジョーカかエネルギー){}",
                    "{C:inactive}(現在 チップ {C:chips}+#4#{}{C:inactive})"
                } 
            },
			j_poke_zigzagoon = {
                name = "ジグザグマ",
                text = {
					"{C:attention}物拾い{} {C:item}アイテム{C:attention} を持っている",
					"ハンドがプレイされた時",
					"{C:green}#2#分の#1#{} の確率で",
					"{C:item}アイテム{} を作る",
					"{C:inactive}(空きが必要)",
					"{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            }, 
            j_poke_linoone = {
                name = "マッスグマ",
                text = {
					"ハンドがプレイされた時",
					"{C:green}#2#分の#1#{} の確率で",
					"{C:item}アイテム{} を作る",
					"ハンドが {C:attention}ストレート{} を含む場合",
					"確率保証",
					"{C:inactive}(空きが必要)",
                }
            },
			j_poke_shroomish = {
                name = "キノココ",
                text = {
					"{C:attention}ブラインド{} が選択された時",
					"ハンド {C:chips}+#1#{}、 ディスカード {C:mult}+#2#{}、 ハンドサイズ {C:attention}+#3#{} の",
                    "いずれかの効果を得る",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}アンティ #4#{C:inactive,s:0.8} のボスブラインドを倒した後に進化){}"
                }
            }, 
            j_poke_breloom = {
                name = "キノガッサ",
                text = {
                    "{C:attention}ブラインド{} が選択された時",
					"ハンド {C:chips}+#1#{}、 ディスカード {C:mult}+#2#{}、 ハンドサイズ {C:attention}+#3#{} の",
                    "いずれかの効果を得る",
                }
            }, 
			j_poke_nosepass = {
                name = 'ノズパス',      
                text = {
					"最初のプレイされた {C:attention}フェイス{} カードが",
					"{C:attention}ストーン{} カードになる",
					"そのカードがスコアされた時",
                    "倍率 {X:mult,C:white} X#1# ",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}雷の石{C:inactive,s:0.8} で進化)"
                } 
            },
			j_poke_aron = {
                name = 'ココドラ',
                text = {
					"{C:attention}スチール{} カードがスコアされた時",
					"倍率 {X:mult,C:white}X#2#{} を得る",
					"そのカードを破壊する",
                    "{C:inactive}(倍率 {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} で進化)",
                }
            },
            j_poke_lairon = {
                name = 'コドラ',
                text = {
                    "{C:attention}スチール{} か {C:attention}ストーン{} カードがスコアされた時",
					"倍率 {X:mult,C:white}X#2#{} を得る",
					"そのカードを破壊する",
                    "{C:inactive}(倍率 {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} で進化)",
                }
            },
            j_poke_aggron = {
                name = 'ボスゴドラ',
                text = {
                    "{C:attention}スチール{}, {C:attention}ストーン{} か {C:attention}ゴールド{} カードがスコアされた時",
					"倍率 {X:mult,C:white}X#2#{} を得る",
					"そのカードを破壊する",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#1#{C:inactive} )"
                }
            },
			j_poke_feebas = {
                name = 'ヒンバス',
                text = {
                    "倍率 {C:mult}+#1#{}",
                    "{C:attention}スプラッシュ{} を適用する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}綺麗なウロコ{C:inactive,s:0.8} で進化)",
                } 
            },
            j_poke_milotic = {
                name = "ミロカロス",
                text = {
					"すべてのスコアされたカードが",
					"{C:attention}同じスーツ{} 場合",
					"そのカードを再発動する",
                }
            },
			j_poke_wynaut = {
                name = 'ソーナノ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}愚者{} カードを作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_snorunt = {
                name = "ユキワラシ",
                text = {
					"負債額が",
                    "{C:red}-$#1#{} まで増える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}光の石{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_glalie = {
                name = "オニゴーリ",
                text = {
					"負債額が",
                    "{C:red}-$#1#{} まで増える",
                    "{br:2}ERROR - CONTACT STEAK",
                    "ラウンド終了時に",
				    "資金を {C:money}$0{} にする",
                }
            },
            j_poke_beldum = {
                name = 'ダンバル',
                text = {
					"プレイしたハンドが",
					"{C:attention}フォーカード{} の場合",
					"チップ {C:chips}+#2#{} を得る",
					"スコアした {C:attention}エース{} を含む場合",
					"チップ {C:chips}+#2#{} を得る",
                    "{C:inactive,s:0.8}(チップ {C:chips,s:0.8}+#1#{C:inactive,s:0.8} / +64{C:inactive,s:0.8}で進化)"
                } 
            },
            j_poke_metang = {
                name = 'メタング',
                text = {
                    "プレイしたハンドが",
					"{C:attention}フォーカード{} の場合",
					"チップ {C:chips}+#2#{} を得る",
					"スコアした {C:attention}エース{} を {C:attention}2+枚{}含む場合",
					"チップ {C:chips}+#2#{} を得る",
                    "{C:inactive,s:0.8}(チップ C:chips,s:0.8}+#1#{C:inactive,s:0.8} / +256{}{C:inactive,s:0.8}で進化)"
                } 
            },
            j_poke_metagross = {
                name = 'メタグロス',
                text = {
					"チップ {C:chips}+#1#{}",
                    "{br:3}ERROR - CONTACT STEAK",
					"プレイしたハンドが {C:attention}フォーカード{} の場合",
					"各プレイのカードがそのカードの",
					"チップの {C:attention}立方根{} に等しい",
					"{X:mult,C:white}X 倍率{} を与える",
                } 
            },
			j_poke_jirachi = {
                name = 'ジラーチ',
                text = {
                    "ショップ終了時に",
                    "{C:dark_edition}願い事をする！",
                }
            },
            j_poke_jirachi_banker = {
                name = 'ジラーチ',
                text = {
					"ラウンド終了の$を {C:attention}2倍する{}",
                }
            },
			j_poke_jirachi_booster = {
                name = 'ジラーチ',
                text = {
                    "ショップに {C:attention}+1{} ブースターパックを1つ加える",
                    "{C:attention}ブースターパック{} が さらに{C:attention}1枚{} カードを含む",
                }
            },
            j_poke_jirachi_power = {
                name = 'ジラーチ',
                text = {
                    "{C:attention}#2#{} ハンドがプレイされるたびに",
					"スコアされたカードが 倍率 {X:mult,C:white}X#1#{} を与える",
                    "{C:inactive}(#3#){}",
                }
            },
			j_poke_jirachi_negging = {
                name = 'ジラーチ',
                text = {
                    "ジョーカースロット {C:blue}+2{}",
                    "{C:dark_edition}ネガティブ{} カードの出現確率 {C:attention}2X{}",
                }
            },
            j_poke_jirachi_copy = {
                name = 'ジラーチ',
                text = {
					"右のジョーカーが {C:pink}エナジャイズ{} されたかのように",
					"その能力をコピーする",
                }
            },
            j_poke_jirachi_fixer = {
                name = 'ジラーチ',
                text = {
					"ラウンドの {C:attention}ファーストハンド{} のカードが",
                    "{C:attention}1{} 枚しかない場合",
					"そのカードに {C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、{C:dark_edition}ポリクローム{} の",
                    "いずれかの効果を加える",
                    "{br:3}ERROR - CONTACT STEAK",
					"ラウンドの {C:attention}最初のディスカード{} が",
                    "{C:attention}1{} 枚だった場合",
					"それを {C:attention}破壊{}する",
                }
            },
            j_poke_buizel = {
                name = 'ブイゼル',
                text = {
					"プレイしたハンドに",
					"各 {C:attention}スコアされない{} カードが",
                    "チップ {C:chips}+#1#{} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)",
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
			j_poke_ambipom = {
              name = "エテボース",
              text = {
					"すべての {C:attention}フラッシュ{} と",
                    "{C:attention}ストレート{} を",
                    "{C:attention}3枚{} のカードで作ることができる",
              }
            },
			j_poke_mismagius = {
                name = 'ムウマージ',
                text = {
                    "プレイされた {C:attention}フェイス{} カードがスコアされた時",
					"チップを最大 {C:chips}#1#{} まで失う",
					"このジョーカーはその失ったチップを得る",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:green}#4#分の#3#{} 確率で",
					"代わりにそのカードが永久的にチップ {C:chips}#5#{} を得る",
                    "{C:inactive}(現在 チップ {C:chips}+#2#{C:inactive})",
                }
            },
            j_poke_honchkrow = {
                name = "ドンカラス",
                text = {
					"各 {X:dark,C:white}悪{} タイプのジョーカーが 倍率 {X:red,C:white}X#1#{}",
                }
            },
			j_poke_bonsly = {
                name = "ウソハチ",
                text = {
                    "{C:attention}べいビィー{}",
					"ラウンド終了時に",
					"デッキにランダムな {C:attention}強化されているフェイス{} カードを加える",
				    "倍率 {X:red,C:white}X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} rounds)",
                }
            },
            j_poke_mimejr = {
                name = 'マネネ',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
					"にランダムなカードに",
					"{C:attention}レッド{} か {C:attention}ブルー{} シールを加える",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
            j_poke_happiny = {
                name = 'ピンプク',
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に",
                    "{C:dark_edition}ネガティブ{} {C:attention}魔術師{} カードを作る",
					"{C:green}#4#分の#3#{} 確率で {C:attention}2枚{} を作る",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
			j_poke_mantyke = {
                name = "タマンタ",
                text = {
                    "{C:attention}ベイビィ{}",
					"ラウンド終了時に {C:attention}デッキ{} にランダムなカードが",
					"{C:attention}ゴールド{} になる",
					"{br:2}ERROR - CONTACT STEAK",
					"{C:attention}手札{} にある {C:attention}ゴールド{} カードが",
					"チップ {C:chips}+#1#{} を与える",
                    "倍率 {X:red,C:white} X#1# ",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
			j_poke_weavile = {
                name = 'マニューラ',
                text = {
					"プレイされたハンドのカード1枚しかない場合",
					"それが {C:attention}#1#{} のカード場合",
					"それを破壊し、 {C:money}$#2#{} を得る",
					"このジョーカーが倍率 {X:mult,C:white}X#1#{} を得る",
					"{C:attention}ボスブラインド{} を倒すとリセットされる",
                    "{C:inactive,s:0.8}(ランクはラウンド終了時に変わる){}",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#2#{C:inactive} )",
                }
            },
            j_poke_magnezone = {
                name = 'ジバコイル',
                text = {
                    "プレイされた {C:attention}スチール{} カードが",
                    "倍率 {X:red,C:white}X#1#{} を与える",
					"{X:metal,C:white}鋼{} タイプジョーカーにつき",
                    "倍率の値が {X:red,C:white}X#2#{} で増える",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#3#{C:inactive} )"
                } 
            },
            j_poke_lickilicky = {
                name = 'ベロベルト',
                text = {
					"1枚目と2枚目にプレイされた{C:attention}ジャック{} が",
                    "スコアされた時",
                    "倍率 {X:mult,C:white} X#1# {}",
					"{br:3}ERROR - CONTACT STEAK",
					"各追加のジャックが",
					"倍率 {X:mult,C:white} X#2# {}",
                } 
            },
            j_poke_rhyperior = {
                name = 'ドサイドン',
                text = {
                    "プレイされた {C:attention}ストーン{} カードが",
                    "スコアされた時、永久的に",
                    "チップ {C:chips}+#1#{} を得る",
                    "{br:3}ERROR - CONTACT STEAK",
					"{C:attention}ストーン{} カードを {X:earth,C:white}地面{} タイプジョーカー",
					"1枚につき再発動する",
                    "{C:inactive}(現在 #2# 再発動)"
                } 
            },
            j_poke_tangrowth = {
                name = 'モジャンボ',
                text = {
                    "{C:attention}ワイルドカードはデバフできない{}",
                    "{br:3}ERROR - CONTACT STEAK",
                    "プレイされた {C:attention}ワイルド{} のカードが",
					"倍率 {C:mult}+#1#{} ,チップ {C:chips}+#2#{} か {C:money}$#3#{} を与える",
                    "{C:green}#5#分の#4#{} 確率で {C:attention}3つすべて{}",
                } 
            },
            j_poke_electivire = {
                name = 'エレキブル',
                text = {
                    "ラウンド終了時と",
					"カードが1枚 {C:attention}売れる{} たびに",
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
                    "{br:4}ERROR - CONTACT STEAK",
					"ディスカードされた {C:attention}カード{} 1枚につき",
                    "倍率 {X:mult,C:white}X#4#{} を得る",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive}, 倍率 {X:mult,C:white}X#3#{}{C:inactive})",
                } 
            },
			j_poke_togekiss = {
                name = 'トゲキッス',
                text = {
                    "{C:attention}ラッキーカード{} は",
                    "{C:green}#2#分の#1#{} の確率でチップ {C:chips}+#4#{}",
                    "そして {C:green}#3#分の#1#{} の確率で倍率 {X:mult,C:white}X#5#{}",
                    "{br:4}ERROR - CONTACT STEAK",
                    "{C:attention}ラッキーカード{} の確率は {C:attention}3倍される{}",
                    "{C:inactive}(例: {C:green}5分の2{C:inactive} -> {C:green}5分の6{C:inactive})",
                }
            },
			j_poke_yanmega = {
              name = "Yanmega",
              text = {
					"プレイされた {C:attention}3{} か {C:attention}6{} がスコアされた時",
					"チップ {C:chips}+#2#{} と 倍率 {C:mult}+#1#{} を与える",
					"{br:2}ERROR - CONTACT STEAK",
					"プレイされた {C:attention}3{} か {C:attention}6{} を",
					"{C:green}#4#分の#3#{} 確率で",
					"再発動する",
              }
            },
            j_poke_leafeon = {
                name = 'リーフィア',
                text = {
					"{C:attention}ラッキーカード{}が",
                    "発動に{C:green}成功{}する時",
                    "最後のショップで{C:green}リロール{} につき",
                    "そのカードが永久的に チップ {C:chips}+#2#{} を得る",
                    "{C:inactive}(現在 {C:attention}#1#{}{C:inactive}回{C:green}リロール{C:inactive})"
                } 
            },
            j_poke_glaceon = {
                name = 'グレイシア',
                text = {
					"各 {C:green}リロール{}が",
					"{C:green}#2#分の#1#{} 確率で",
					"デッキにランダムなカードの",
					"{C:attention}グラスカード{} のコピーをショップに加える",
                } 
            },
			j_poke_gliscor = {
                name = 'グライオン',
                text = {
					"{C:attention}手札にある{} {V:1}#2#{} か デバフさせているカード につき",
					"プレイされたカードが倍率 {X:mult,C:white}X#1#{} を与える",
                    "{C:inactive, s:0.8}(スーツはラウンド終了時に変わる)",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#3#{C:inactive})",
				}
            },
			j_poke_mamoswine = {
              name = "マンムー",
              text = {
					"最初のプレイされたカードは",
					"スコアされたハンドある {C:attention}ストーン{} と {C:attention}グラス{} カードにつき",
					"倍率 {C:mult}+#1#{}",
					"{br:2}text needs to be here to work",
					"プレイされた {C:attention}ストーン{} と {C:attention}グラス{} カードが",
					"{C:green}#4#分の#3#{} 確率で {C:money}$#2#{} を得る",
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
			j_poke_probopass = {
                name = 'ダイノーズ',      
                text = {
					"{C:attention}ストーン{} カードがフェイスカードとみなされる",
                    "{br:2}ERROR - CONTACT STEAK",
					"プレイされた{C:attention}ストーン{} カードがスコアされた時",
                    "倍率 {X:mult,C:white} X#1# {} を与える"
                } 
            },
			j_poke_froslass = {
                name = "ユキメノコ",
                text = {
                  "負債額が",
                  "{C:red}-$#1#{} まで増える",
                  "{br:2.5}ERROR - CONTACT STEAK",
				  "負債を抱えている中でハンドがプレイされた場合",
				  "{C:item}アイテム{} カードを作る",
                  "{C:inactive,s:0.8}(空きが必要)",
                }
            },
			j_poke_pansage = {
                name = "ヤナップ",
                text = {
                    "{C:attention}ショートカット{} を適用する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}リーフの石{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_simisage = {
                name = "ヤナッキー",
                text = {
                    "{C:attention}ショートカット{} を適用する",
					"プレイされた強化されていないカードが",
					"{C:green}#2#分の#1#{} 確率で",
					"{C:attention}ラッキー{} になる",
                }
            },
			j_poke_pansear = {
                name = "バオップ",
                text = {
                    "{C:attention}フォーフィンガー{} を適用する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}炎の石{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_simisear = {
                name = "バオッキー",
                text = {
                    "{C:attention}フォーフィンガー{} を適用する",
					"最初のプレイされたハンドが",
					"{C:attention}ストレート{} か {C:attention}フラッシュ{} を含む場合",
					"{C:attention}女帝{} カードを作る",
					"スコアされないカードを破壊する",
					"{C:inactive}#1#{}",
                }
            },
			j_poke_panpour = {
                name = "ヒヤップ",
                text = {
                    "{C:attention}パレイドリア{} を適用する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}水の石{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_simipour = {
                name = "ヒヤッキー",
                text = {
                    "{C:attention}パレイドリア{} を適用する",
					"左から最も低いチップ値の",
					"強化されていないカードが",
					"{C:attention}ボーナス{} カードになる",
                }
            },
			j_poke_roggenrola = {
                name = "ダンゴロ",
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
					"{C:attention}手札{} にある {C:attention}ハザードカード{} が",
                    "倍率 {C:mult}+#3#{} を与える",
                    "{C:inactive,s:0.8}(ハザードカードを {C:attention,s:0.8}#4#{C:inactive,s:0.8} 回発動した後に進化)",
                }
            },
            j_poke_boldore = {
                name = "ガントル",
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
                    "{C:attention}手札{} にある {C:attention}ハザードカード{} が",
                    "倍率 {C:mult}+#3#{} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}つながりのヒモ{C:inactive,s:0.8} で進化)"
                }
            },
            j_poke_gigalith = {
                name = "ギガイアス",
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
                    "{C:attention}手札{} にある {C:attention}ハザードカード{} が",
                    "倍率 {C:mult}+#3#{} を与えて",
					"再発動させる",
                }
            },
			j_poke_zorua = {
                name = "ゾロア",
                text = {
                    "{V:1}最右の {C:attention}ジョーカー{} の能力をコピーする",
                    "{br:2.5}ERROR - CONTACT STEAK",
					"コピーする中, ハンドがプレイされた時",
					"ラウンド終了までコピー効果をス解除する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_zoroark = {
                name = "ゾロアーク",
                text = {
                    "最右の {C:attention}ジョーカー{} の能力をコピーする",
                }
            },
			j_poke_gothita = {
                name = "ゴチム",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} のコスト",
                    "がすべて {C:money}$2{} 減少する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_gothorita = {
                name = "ゴチミル",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} のコスト",
                    "がすべて {C:money}$3{} 減少する",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_gothitelle = {
                name = "ゴチルゼル",
                text = {
                    "ショップの {C:planet}惑星{} カードと",
                    "{C:planet}天体パック{} ",
                    "がすべて {C:attention}無料{} になる",
                    "{br:2}ERROR - CONTACT STEAK",
                    "{C:planet}惑星{} カードを使用と {C:money}$#1#{} 与える"
                } 
            },
			j_poke_vanillite = {
                name = "バニプッチ",
                text = {
                  "{C:attention}ボラタイル左",
                  "チップ {C:chips}+#1#{}",
				  "ハンドがプレイされるたびに",
                  "チップ {C:chips}-#3#{}",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_vanillish = {
                name = "バニリッチ",
                text = {
                  "{C:attention}ボラタイル左",
                  "チップ {C:chips}+#1#{}",
				  "ハンドがプレイされるたびに",
                  "チップ {C:chips}-#3#{}",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_vanilluxe = {
                name = "バイバニラ",
                text = {
                  "チップ {C:chips}+#1#{}",
				  "ハンドがプレイされるたびに",
                  "チップ {C:chips}-#2#{}",
                  "{br:2}ERROR - CONTACT STEAK",
				  "解けた後に",
				  "{C:attention}ダブルタグ{} を {C:attention}#3#{}つ作る",
                }
            },
			j_poke_elgyem = {
                name = "リグレー",
                text = {
					"{C:attention}ブラインド{} が選択された時",
					"最高レベル{C:attention}#1#{}つのポーカーハンドの",
					"いずれかの {C:dark_edition}ネガティブ{} {C:planet}惑星{} カードを",
					"1枚作る",
                    "{C:inactive,s:0.8}(個性的な惑星カードを #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} 枚持っている時進化){}"
                }
            },
            j_poke_beheeyem = {
                name = "オーベム",
                text = {
                    "{C:attention}ブラインド{} が選択された時",
					"最高レベル{C:attention}#1#{}つのポーカーハンドの",
					"いずれかの {C:dark_edition}ネガティブ{} {C:planet}惑星{} カードを",
					"1枚作る",
                    "{br:3.5}ERROR - CONTACT STEAK",
					"可能であれば {C:attention}ブースターパック{} を {C:attention}#2#つ{} 開封する後に",
                    "{C:attention}望遠鏡{} か {C:attention}天文台{} を作る"
                }
            },
			j_poke_litwick = {
                name = "ヒトモシ",
                text = {
					"ラウンド終了時に隣接しているジョーカーから",
					"{C:money}$#1#{} を {C:attention}ドレイン{}する",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "このジョーカーのセルバリューを倍率に加える",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{C:inactive}){}",
                    "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8} セルバリューで進化)"
                }
            },
            j_poke_lampent = {
              name = "ランプラー",
              text = {
					"ラウンド終了時に他のジョーカーから",
					"{C:money}$#1#{} を {C:attention}ドレイン{}する",
					"{br:3.5}ERROR - CONTACT STEAK",
					"このジョーカーのセルバリューを {C:attention}2倍し{}、倍率に加える",
					"{C:inactive}(現在 倍率 {C:mult}+#2#{C:inactive}){}",
					"{C:inactive,s:0.8}({C:attention,s:0.8}闇の石{C:inactive,s:0.8} で進化)"
              }
            },
            j_poke_chandelure = {
                name = "シャンデラ",
                text = {
					"セルバリューが {C:money}$1{} のジョーカーが",
					"倍率 {X:mult,C:white} X#1# {} と {C:money}$#2#{} を与える",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "このジョーカーのセルバリューを {C:attention}3倍し{}、倍率に加える",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{C:inactive}){}",
                }
            },
			j_poke_golett = {
                name = "ゴビット",
                text = {
                  "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
				  "手札のカード {C:attention}4枚目{} ごとに",
				  "倍率 {X:mult,C:white}X#3#{} を与える",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8} ラウンド後に進化)"
                }
            },
            j_poke_golurk = {
                name = "ゴルーグ",
                text = {
                  "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
				  "手札のカード {C:attention}3枚目{} ごとに",
				  "倍率 {X:mult,C:white}X#3#{} を与える",
                }
            },
			j_poke_zweilous = {
                name = "ジヘッド",
                text = {
                    "プレイしたハンドが",
					"{C:attention}スリーカード{} の場合",
                    "倍率 {X:mult,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 回発動した後に進化){}"
                }
            },
            j_poke_hydreigon = {
                name = "サザンドラ",
                text = {
                    "プレイしたハンドが",
					"{C:attention}スリーカード{} の場合",
                    "{C:attention}スコアされない{} カードが破壊される",
                    "{br:3}ERROR - CONTACT STEAK",
					"カードが破壊された時",
                    "倍率 {X:mult,C:white} X#2# {} を得る",
                    "{C:inactive}(現在 倍率 {X:mult,C:white} X#1# {C:inactive}){}"
                }
            },
            j_poke_deino = {
                name = "モノズ",
                text = {
					"プレイしたハンドが",
					"{C:attention}スリーカード{} の場合",
                    "倍率 {X:mult,C:white} X#1# {}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 回発動した後に進化){}"
                }
            },
			j_poke_litleo = {
                name = "シシコ",
                text = {
				    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "チップ {C:chips}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                } 
            },
            j_poke_pyroar = {
                name = "Pyroar",
                text = {
                    "プレイしたハンドが",
                    "{C:attention}フラッシュ{} を含む場合",
                    "チップ {C:chips}+#1#{}",
                    "{br:2}ERROR - CONTACT STEAK",
					"{C:attention}キング{} か {C:attention}クイーン{} も含む場合",
                    "{C:pink}エネルギー{} カードを作る",
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
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{}{C:inactive,s:0.8} ラウンド後に進化)"
                }  
            },
            j_poke_charjabug = {
                name = 'デンヂムシ',
                text = {
					"それぞれの {X:lightning, C:black}雷{} タイプジョーカーが",
                    "倍率 {C:mult}#1#{} を与える",
                    "{C:inactive}(現在 {C:mult}#2#{C:inactive})",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}雷の石{}{C:inactive,s:0.8} で進化)"
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
				  "{br:3}ERROR - CONTACT STEAK",
                  "必要なチップの{C:attention}50%{} 以上だった場合",
                  "死を一度防ぎ",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'ワンパチ',
                text = {
                    "プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "倍率 {C:red}+#1#{} と {C:money}$#2#{} を与える",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_boltund = {
                name = 'パルスワン',
                text = {
					"プレイしたハンドが",
                    "{C:attention}ストレート{} を含む場合",
                    "倍率 {X:red,C:white}X#1#{} と {C:money}$#2#{} を与える"
                } 
            },
			j_poke_dreepy = {
                name = "ドラメシヤ",
                text = {
					"このジョーカーを売ると",
					"他のジョーカーのセルバリューに {C:money}$#1#{} を加えて",
					"すべての手札にあるカードを {C:spades}#2#{} に変換する",
                    "{C:inactive,s:0.8}(ストレートフラッシュがプレイされた時に進化)",
                }
            },
            j_poke_drakloak = {
                name = "ドロンチ",
                text = {
					"現在のすべてのジョーカー {C:attention}セルバリュー{} につき",
					"倍率 {X:mult,C:white}X#4#{} を与える",
                    "{br:4}ERROR - CONTACT STEAK",
					"プレイしたハンドが",
					"{C:attention}ストレートフラッシュ{} の場合",
					"すべてのジョーカーのセルバリューに {C:money}$#1#{} を加える",
                    "{C:inactive}(現在 倍率 {X:red,C:white} X#5# {C:inactive}){}",
                    "{C:inactive,s:0.8}(現在のすべてのジョーカーのセルバリューの合計は $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8} で進化)",
                }
            },
            j_poke_dragapult = {
                name = "ドラパルト",
                text = {
                    "現在のすべてのジョーカー {C:attention}セルバリュー{} につき",
					"倍率 {X:mult,C:white}X#2#{} を与える",
                    "{br:4}ERROR - CONTACT STEAK",
					"プレイしたハンドが",
					"{C:attention}ストレートフラッシュ{} の場合",
					"{C:attention}ドラメシヤアロー{} がない場合",
					"{C:dark_edition}ネガティブ{} {C:attention}ドラメシヤアロー{} を2枚作る",
                    "{C:inactive}(現在 倍率 {X:red,C:white} X#3# {C:inactive}){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "ドラメシヤアロー",
                text = {
                    "このジョーカーを売ると",
					"他のジョーカーのセルバリューに {C:money}$#1#{} を加えて",
					"すべての手札にあるカードを {C:spades}#2#{} に変換する",
                }
            },
			j_poke_kleavor = {
                name = 'バサギリ',      
                text = {
					"ブラインドが選択された時",
					"右のジョーカーを破壊しと",
					"倍率 {C:mult}+#2#{} を得る",
					"ジョーカーが {C:green}アンコモン{} またはそれ以上の場合",
					"デッキに {C:dark_edition}フォイル{}、 {C:dark_edition}ホログラム{}",
                    "{C:dark_edition}ポリクローム{} エディションのいずれかの {C:attention}ストーンカード{} を加える",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
                } 
            },
			
			j_poke_ursaluna = {
              name = "ガチグマ",
              text = {
					"{C:attention}ブースターパック{}が",
                    "スキップされた時、",
                    "倍率{C:red}+#2#{}",
					"{C:dark_edition}ポリクローム {C:item}アイテム{} を作る",
					"{C:inactive,s:0.8}(空きが必要)",
					"{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})",
              }
            },
			j_poke_tarountula = {
                name = "タマンチュラ",
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
					"ラウンド終了時に",
					"手札にある {C:attention}ハザードカード{} {C:attention}#4#{}枚につき",
					"{C:planet}惑星{} カードを作る",
                    "{C:inactive}(空きが必要)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_spidops = {
                name = "ワナイダー",
                text = {
                    "{C:purple}ハザード +#1# {C:inactive}(デッキで #2# 枚につき1枚)",
					"ラウンド終了時に",
					"{C:attention}3枚目{} の {C:attention}手札のハザードカード{} ごとに",
					"{C:chips}ブルー{} シールを加える",
                }
            },
			j_poke_fidough = {
                name = "パピモッチ",
                text = {
					"スコアされたハンドが {C:attention}#3#{} を含む場合",
					"チップ +#2#{} を得る",
					"発動した後に {C:attention}ランク{} が増やす",
                    "{C:inactive,s:0.8}(最高ランク場合, 最低になる)",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                    "{C:inactive,s:0.8}({X:fire,C:white,s:0.8}炎{C:inactive,s:0.8} タイプのジョーカーがある進化)",
                }
            },
            j_poke_dachsbun = {
                name = "バウッツェル",
                text = {
					"スコアされたハンドが {C:attention}#3#{} を含む場合",
					"チップ {C:chips}+#2#{} を得る",
					"発動した後に {C:attention}ランク{} が増やす",
                    "{br:4}ERROR - CONTACT STEAK",
					"{X:fire,C:white}炎{} タイプのジョーカーにつき",
					"チップの増加を {C:chips}+2{} に増える",
                    "{C:inactive,s:0.8}(最高ランク場合, 最低になる)",
                    "{C:inactive}(現在 チップ {C:chips}+#1#{C:inactive})",
                }
            },
			j_poke_tinkatink = {
                name = "カヌチャン",
                text = {
					"プレイされたカードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
                    "{br:3}ERROR - CONTACT STEAK",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードに",
					"デバフをかかる",
					"その {C:attention}スチール{} カードでない",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_tinkatuff = {
                name = "ナカヌチャン",
                text = {
                    "プレイされたカードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードに",
					"デバフをかかる",
					"その {C:attention}スチール{} カードでない",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} ラウンド後に進化)",
                }
            },
            j_poke_tinkaton = {
                name = "デカヌチャン",
                text = {
                    "プレイされたカードがスコアされた時",
                    "倍率 {C:mult}+#1#{}",
					"{C:attention}ブラインド{} が選択された時",
					"デッキに {C:attention}#3#{} 枚のカードにデバフをかかる",
					"その {C:attention}スチール{} カードでない",
					"{br:4}ERROR - CONTACT STEAK",
					"プレイされた {C:attention}スチール{} カードを",
					"{C:attention}グラス{} カードと同様に機能する",
                }
            },
			j_poke_wiglett = {
                name = "ウミディグダ",
                text = {
					"プレイしたハンドが {C:attention}スリーカード{} を含む場合",
                    "倍率 {C:mult}+#3#{}",
                    "{br:2}ERROR - CONTACT STEAK",
					"プレイしたハンドがスコアされる{C:attention}5{} か {C:attention}6{} か {C:attention}7{} を含む場合",
					"チップ {C:chips}+#2#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{}{C:inactive,s:0.8} ラウンド後に進化)"
                } 
            },
            j_poke_wugtrio = {
                name = "ウミトリオ",
                text = {
                    "プレイしたハンドが {C:attention}スリーカード{} を含む場合",
                    "倍率 {X:red,C:white} X#1# {}",
                    "{br:2}ERROR - CONTACT STEAK",
					"プレイしたハンドがスコアされる{C:attention}5{} か {C:attention}6{} か {C:attention}7{} を含む場合",
					"チップ {C:chips}+#2#{}",
                } 
            },
            j_poke_annihilape = {
                name = 'コノヨザル',
                text = {
					"ラウンドでプレイしたハンド1枚につき",
					"プレイされた {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, {C:attention}7{} ごとに",
					"倍率 {C:mult}+#1#{} と チップ {C:chips}+#2#{} を与える",
                    "{C:inactive}(現在 倍率 {C:mult}+#3#{} {C:inactive}チップ {C:chips}+#4#{C:inactive})",
                } 
            },
			j_poke_dudunsparce = {
                name = 'ノココッチ',
                text = {
					"ショップでカードスロット {C:attention}+#1#{}",
					"ショップでブースターパック {C:attention}+#1#{}",
					"ショップでバウチャースロット {C:attention}+#1#{}",
                }
            },
            j_poke_dudunsparce2 = {
                name = 'ノココッチ',
                text = {
                    "{C:attention}クーポンタグを持っている{}",
                    "ショップでカードスロット {C:attention}+#1#{}",
					"ショップでブースターパック {C:attention}+#1#{}",
					"ショップでバウチャースロット {C:attention}+#1#{}",
                }
            },
			j_poke_farigiraf = {
              name = "リキキリン",
              text = {
                "{C:spectral}クリプティッド{} を {C:attention}持っている{}",
                "プレイしたハンドが {C:attention}ツーペア{} を含まれる場合",
				"最初と最終の {C:attention}フェイス{} カードがスコアされた時",
                "倍率 {X:mult,C:white}X#1#{} を与える",
              }
            },
			j_poke_gimmighoul = {
                name = "コレクレー (はこ)",
                text = {
					"プレイされた {C:attention}ゴールド{} カードがスコアされた時",
					"{C:money}$#1#{} を得る",
                    "{br:3}ERROR - CONTACT STEAK",
                    "{C:attention}ブースターパック{} をスキップすると...?",
                    "{C:inactive,s:0.8}(合計 {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3# を得ったか費やした後に進化)"
                }
            },
            j_poke_gimmighoulr = {
                name = "コレクレー (とほ)",
                text = {
                  "いくらかの {C:money}${} を得る",
                  "{S:1.1,C:red,E:2}自らを破壊する{}",
                }
            },
            j_poke_gholdengo = {
                name = "サーフゴー",
                text = {
					"プレイされた {C:attention}ゴールド{} カードが {C:money}$#2#{} を費やして",
					"このジョーカーの {X:red,C:white}X{}倍率を {X:red,C:white}X#3#{} に倍する",
                    "{br:3}ERROR - CONTACT STEAK",
                    "このジョーカーはデバフできない",
                    "{C:inactive}(現在 倍率 {X:red,C:white}X#1#{C:inactive})",
                    "{C:inactive,s:0.8}(ラウンド終了時にリセットされる)",
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
					"{br:3}ERROR - CONTACT STEAK",
					"同じ進化の系譜の {C:attention}ポケモンジョーカー{} が",
					"複数回出現する",
                    "{C:inactive}(現在 倍率 {C:mult}+#1#{C:inactive})"
                } 
            },
            j_poke_everstone = {
                name = '変わるずの石',
                text = {
					"ポケモンが {C:attention}進化できない{}",
                    "{br:3.5}ERROR - CONTACT STEAK",
                    "それぞれの {C:attention}たね{} と {C:attention}べいビィー{} ポケモンが",
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
					"{C:inactive}(空きが必要)",
                } 
            },
            j_poke_jelly_donut = {
                name = "おにぎり",
                text = {
                    "ブラインドが選択された時",
                    "{C:colorless}無色{C:pink}エネルギー{} 作る",
                    "{C:inactive}(残り{C:attention}#1#{}{C:inactive}ラウンド){}"
                },
            },
			j_poke_treasure_eatery = {
                name = "宝食堂",
                text = {
					"ブラインドが選択された時",
					"最左のジョーカーの {C:pink}タイプ{} を",
					"最右のジョーカーの {C:pink}タイプ{} に",
					"変換する",
                    "{C:attention}タイプチェンジャー{}",
                    "{C:inactive}(残り{C:attention}#1#{C:inactive}ラウンド){}"
                }
            },
			j_poke_rival = {
                name = "ライバル",
                text = {
                    "倍率 {C:mult}+#1#{}",
					"スコアされたチップが必要なチップに {C:attention}#3#倍{}以上だった場合",
                    "{S:1.1,C:red,E:2}自らを破壊する{} と {C:money}$#2#{} を得る",
                }
            },
            j_poke_bitter_rival = {
                name = "恨めしいライバル",
                text = {
                    "倍率 {C:mult}+#1#{}",
					"スコアされたチップが必要なチップに {C:attention}#3#倍{}以上だった場合",
                    "{S:1.1,C:red,E:2}自らを破壊する{} と {C:money}$#2#{} を得る",
                }
            },
            j_poke_champion = {
                name = "チャンピオン",
                text = {
                    "倍率 {C:mult}+#1#{}",
					"スコアされたチップが必要なチップに {C:attention}#3#倍{}以上だった場合",
                    "{S:1.1,C:red,E:2}自らを破壊する{} と {C:money}$#2#{} を得る",
                }
            },
			j_poke_mystery_egg = {
                name = "不思議なタマゴ",
                text = {
					"{C:attention}#1#{} ラウンド後に",
					"{C:attention}たね{} か {C:attention}べいビィー{} ポケモンが",
					"孵ります",
					"可能であれば {C:pink}エナジャイズ{} する",
                }
            },
			j_poke_billion_lions = {
                name = '10億頭のライオン',
                text = {
					"ブラインドが選択された時",
					"{C:pink}タイプステッカー{} 付きジョーカーを破壊する",
					"破壊したジョーカーにつき",
					"倍率 {X:mult,C:white}X#2#{} を得る",
                    "ライオンがない場合 {S:1.1,C:red,E:2}自らを破壊する{}",
                    "{C:inactive}(現在 倍率 {X:mult,C:white}X#1#{C:inactive}, {C:attention}#3#{C:inactive}頭のライオン)"
                } 
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "トレーナースリーブ",
                text = {
                    "{C:tarot,T:v_poke_goodrod}#1#{} のバウチャーと",
                    "{C:tarot,T:c_poke_pokeball}#2#{} カードが",
					"ランをスタートする",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "訃報スリーブ",
                text = {
                    "すべてのカードは {C:dark_edition}#1#{} 有する",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "ステラスリーブ",
                text = {
                    "すべてのジョーカーは",
                    "ランダムな {C:pink}タイプ{} のステッカー作成され",
                },
            },
			sleeve_poke_telekineticsleeve = {
                name = "テレキネシススリーブ",
                text = {
                    "{C:tarot,T:v_crystal_ball}#1#{} のバウチャーと",
                    "{C:item,T:c_poke_twisted_spoon}#2#{} の",
                    "{C:attention}2{} つのコピーで",
                    "ランをスタートする",
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "ハイパーボール",
                text = {
                    "ランダムな {C:attention}2進化ジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_masterball = {
                name = "マスターボール",
                text = {
                    "ランダムな {C:attention}レジェンドジョーカー{} カード",
                    "作る",
                    "{C:inactive}（空きが必要）"
                },
            },
            c_poke_transformation = {
                name = "超進化",
                text = {
					"選択したか一番左のポケモンを",
					"{C:attention}最終進化{}させ、可能であれば",
                    "{C:pink}エナジャイズ{} する",
                },
            },
			c_poke_megastone = {
                name = "メガストーン",
                text = {
                    "{C:attention}再使用可能{}",
					"ポケモンを {C:attention}メガシンカ{}する か",
					"メガポケモンを {C:attention}退化{}する",
					"売ったら {C:attention}退化{}する",
                    "{C:inactive}(ラウンドごとに1回使える)",
                },
            },
            c_poke_obituary = {
                name = "訃報",
                text = {
                    "手札から選んだ",
                    "カード {C:attention}1{} 枚に",
                    "{C:pink}ピンク{} シールを加える",
                },
            },
            c_poke_nightmare = {
                name = "悪夢",
                text = {
					"選んだ {C:pink}タイプステッカー{} 付きジョーカーを破壊して",
					"そのジョーカーのタイプの {C:dark_edition}ネガティブ{} {C:pink}エネルギー{} カードを",
					"{C:attention}2{} 枚作る",
                },
            },
			c_poke_revenant = {
                name = "幽鬼",
                text = {
                    "手札から選んだ",
                    "カード {C:attention}1{} 枚に",
                    "{C:silver}シルバー{} シールを加える",
                }
            },
			c_poke_fake_banker = {
                name = 'お金願い事',
                text = {
                    "{C:dark_edition}お金を願う!",
                }
            },
            c_poke_fake_booster = {
                name = 'ブースター願い事',
                text = {
                    "{C:dark_edition}選択肢を願う!",
                }
            },
            c_poke_fake_power = {
                name = '力願い事',
                text = {
                    "{C:dark_edition}力を願う!",
                }
            },
			c_poke_fake_negging = {
                name = 'ネガティブ願い事',
                text = {
                    "{C:dark_edition}友達を願う!",
                }
            },
            c_poke_fake_copy = {
                name = 'コピー願い事',
                text = {
                    "{C:dark_edition}手助けを願う!",
                }
            },
			c_poke_fake_fixer = {
                name = '垢離願い事',
                text = {
                    "{C:dark_edition}もっといいデッキを願う!",
                }
            },
            c_poke_fake_masterball = {
                name = '召喚願い事',
                text = {
                    "{C:dark_edition}伝説のポケモンを願う!",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "ポケットタグ",
                text = {
                    "無料の",
                    "{C:pink}メガポケットパック{}を与える",
					"{C:attention}アンティ 5+{}場合",
					"{C:green}25%{} 確率で {C:attention}メガストーン{} を含む",
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
			c_poke_pokeball = {
                name = "モンスターボール",
                text = {
                    "ランダムな {C:attention}たねジョーカー{} カード",
                    "作る",
                    "{C:inactive}(空きが必要)"
                },
            },
            c_poke_greatball = {
                name = "スーパーボール",
                text = {
                    "ランダムな {C:attention}1進化ジョーカー{} カード",
                    "作る",
                    "{C:inactive}(空きが必要)"
                },
            },
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
                    "カードを {C:attention}1{} つ加える",
                },
            },
            v_poke_superrod = {
                name = "すごいつりざお",
                text = {
					"すべての {C:attention}消耗{} パックから",
					"カードを {C:pink}蓄えられる{}",
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
					"ポーカーハンドの{C:attention}#1#{}数に",
                    "基づく効果",
					"{C:inactive}(効果は{C:attention}累積{C:inactive})",
                }
            },
			energize = {
                name = "エナジャイズ",
                text = {
					"ジョーカーの",
					"{X:red,C:white}X倍率{}、{C:mult}倍率{}、{C:chips}チップ{}、{C:money}${}",
					"永久的に増加させる",
                }
            },
            eitem = {
                name = "進化カード",
                text = {
                    "選択したか一番左 {C:attention}適格{} ジョーカー",
                    "進化する",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "持ちカード",
                text = {
                    "{C:attention}#1#{} に使われる"
                }
            },
			typechanger = {
                name = "タイプチェンジャー",
                text = {
					"選択したか一番左ジョーカーに",
                    "{V:1}#1#{} ステッカーを加える",
                }
            },
            typechangerother = {
                name = "タイプチェンジャー",
                text = {
                    "{V:1}#1#{} ステッカーを加える",
                }
            },
            typechangerpoke = {
                name = "タイプチェンジャーのポケモン",
                text = {
					"自らに {V:1}#1#{} ステッカーを加える",
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
					"このジョーカーはデバフされる"
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
			scry_cards = {
                name = "見破る",
                text = {
					"デッキのトップカードを見る",
                }
            },
			mega_rule = {
                name = "制約",
                text = {
					"{C:attention}メガストーン{} につき",
					"1枚のジョーカーだけが",
					"{C:attention}メガシンカ{}できる",
                }
            },
			mega_poke = {
                name = "メガシンカ",
                text = {
					"{C:attention}メガストーン{} で",
                    "{C:attention}メガシンカできる",
                }
            },
			mega_used_on = {
                name = "現在使っている",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
			split_mega = {
                name = "XY メガ",
                text = {
					"位置によって {C:attention}メガシンカ{}する",
                    "最左 - {C:attention}#1#{}",
                    "最右 - {C:attention}#2#{}"
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
			pickup = {
              name = "物拾い",
              text = {
                "{C:green}34%{} - {C:item}アイテム{} {C:attention}カード",
                "{C:green}25%{} - {C:attention}食べ残し",
                "{C:green}25%{} - {C:attention}モンスターボール",
                "{C:green}15%{} - {C:attention}スーパーボール",
                "{C:green}1%{} - {C:attention}ハイパーボール",
              }
            },
			pokeballs_group = {
              name = "Pokeballs",
              text = {
				"ある品質のランダムなジョーカーを",
				"作る",
              }
            },
			percent_chance = {
                name = "パーセントチャンス",
                text = {
                  "{C:green}#1#%{} 確率で",
                  "{C:attention}効果{} が起こる",
                  "{C:inactive}(確率は変更できない){}"
                }
            },
			holding = {
                name = "持っている",
                text = {
					"選択される時,",
                    "{C:attention}#1#{} カードも得る",
                    "{C:inactive}(空きが必要){}"
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
			poke_egg_tip = {
              name = "不思議なタマゴ",
              text = {
                "さみしくて寒いみたい"
              }
            },
			poke_top_cards = {
              name = "トップカード",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
			poke_drain = {
              name = "ドレイン",
              text = {
				"ジョーカーのセルバリューは {C:money}$1{} 以上場合",
				"そのジョーカーのセルバリューから取って",
				"自らのに足す",
              }
            },
			poke_drain_item = {
              name = "ドレイン",
              text = {
                "ジョーカーのセルバリューは {C:money}$1{} 以上場合",
				"そのジョーカーのセルバリューから取る",
              }
            },
			poke_volatile_left = {
              name = "ボラタイル左",
              text = {
				"このジョーカーは最左の場合にのみ",
				"この能力を発動する",
				"{C:inactive}({C:attention}ボラタイル{C:inactive} ポケモン除き)"
              }
            },
			poke_volatile_right = {
              name = "ボラタイル右",
              text = {
                "このジョーカーは最右の場合にのみ",
				"この能力を発動する",
				"{C:inactive}({C:attention}ボラタイル{C:inactive} ポケモン除き)"
              }
            },
			sketch = {
              name = "スケッチ",
              text = {
				"このジョーカーが売られる, 破壊される か",
				"他の能力をコピーするまで コピーする",
                "ツールチップとポケモン図鑑メニューに",
				"コピーした能力は見れる",
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
			discovery_tooltip = {
              name = "Discovery",
              text = {
                "Pokermon mod objects are undiscovered",
                "by default. Turning off this config option",
                "will discover all mod objects",
                "{C:red}Discovering all objects can't be undone{}"
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
              name = "デザイン",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "再使用可能",
              text = {
				"使われた時消耗されない",
                "{C:inactive,s:0.8}({C:attention,s:0.8}曲がったスプーン{C:inactive,s:0.8} に除外される)",
				}
            },
			sylveon_tag_pool = {
              name = "タグプール",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "タグプール",
              text = {
                "{C:money}#1#",
                "{C:money}#2#",
                "{C:money}#3#",
                "{C:money}#4#",
                "{C:money}#5#",
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
			poke_silver_seal = {
                name = "シルバーシール",
                text = {
					"カードがスコアされた時",
					"手札にある場合",
					"{C:item}アイテム{} カードを作って, ディスカードされる",
                }
            },
            --[[grass_sticker = {
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
			--]]
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
			p_poke_pokepack_wish_pack = {
                name = "願い事パック",
                text = {
                    "{C:dark_edition}願い事をする!{}",
                },
            },
            poke_hazards = {
                name = "ハザード",
                text = {
					"{C:attention}ブラインド{} が選択された時",
					"デッキサイズによって, デッキに",
					"{C:attention}ハザードカード{}を加える",
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
			c_poke_goodasgold = "Good As Gold",
            c_poke_parenthood = "Parenthood",
            c_poke_littlecup = "Little Cup",
            c_poke_hammertime = "Hammertime",
        },
        dictionary = {
            k_energy = "エネルギーカード",
            k_item = "アイテム",
            k_poke_pocket_pack = "ポケットパック",
            k_poke_wish_pack = "願い事パック",
            
            k_poke_baby = "ベイビィ",
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
			poke_settings_pokemon_discovery = "! Discovery?",
            poke_settings_pokemon_altart = "Alt Art?",
            poke_settings_pokemon_aprilfools = "April Fools Content?",
            poke_settings_pokemon_master = "Pokemon Master Mode?",
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
			poke_credits_sound = "オーディオエンジニア: ",

            poke_plus_pokeitem = "+1 アイテム",
            poke_plus_energy = "+1 エネルギー",
			poke_plus_shop = "+1 ショップカード",
            poke_destroyed_ex = "破壊した！",
            poke_evolve_success = "進化した！",
            poke_evolve_level = "レベルアップ！",
			poke_tera = "テラスタル",
            poke_tera_ex = "テラスタル！",
            poke_metal_ex = "鋼！",
            poke_dragon_ex = "ドラゴン！",
			poke_energized_ex = "エナジャイズ！",
            poke_unlimited_energy = "無限",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "カモネギ",
            cubone_marowak_infoqueue = "カラカラとガラガラ",
            snorlax_infoqueue = "カビゴン",
            pokeball_variable = "モンスターボール",
            goodrod_variable = "いいつりざお",
            pinkseal_variable = "ピンクシール",
			twisted_spoon_variable = "曲がったスプーン",

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
            poke_disguise_broken = "化けの皮剥がれた…",
			
            poke_none = "なし",
            poke_dawn_info1 = "(次のプレイされるポーカーハンドはセットされる)",
            poke_dawn_info2 = "(ポーカーハンドはセットされた！)",
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "ピンクシール",
			poke_silver_seal = "シルバーシール",

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
			k_poke_mega = "メガ",
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"ボスブラインドを倒すとジョーカースロット{C:attention}+1{} {C:inactive}(最高 5スロット)"},
           ch_c_poke_nuzlocke = {"各アンティ最初のショップには {C:attention}道化師パック"}
        },
    },
}
