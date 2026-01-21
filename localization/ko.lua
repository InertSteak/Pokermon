-- Welcome to ko.lua!
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
                name = "트레이너 덱",
                text = {
                    "{C:tarot,T:v_poke_goodrod}#1#{} 바우처와",
                    "{C:tarot,T:c_poke_pokeball}#2#{} 카드를",
                    "보유하고 시작합니다",
                } 
            },
            b_poke_telekineticdeck = {
                name = "염동력 덱",
                text = {
                    "{C:tarot,T:v_crystal_ball}#1#{} 바우처와",
                    "{C:item,T:c_poke_twisted_spoon}#2#{} 카드를",
                    "{C:attention}2{}장 보유하고 시작합니다",
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "부고 덱",
                text = {
                    "모든 카드에 {C:dark_edition}#1#{}가 부여됩니다",
                } 
            },
            b_poke_revenantdeck = {
                name = "망령 덱",
                text = {
                    "모든 카드에 {C:dark_edition}#1#{}가 부여됩니다",
                } 
            },
            b_poke_luminousdeck = {
                name = "루미너스 덱",
                text = {
                    "모든 조커가 {C:pink}에너지화{}된 상태로,",
                    "무작위 {C:pink}타입{} 스티커가 붙어서",
                    "생성됩니다"
                }
            },
            b_poke_ampeddeck = {
                name = "증폭 덱",
                text = {
                    "{C:tarot,T:v_poke_energysearch}#1#{} 바우처와",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#{} 카드를",
                    "보유하고 시작합니다",
                } 
            },
            b_poke_futuredeck = {
                name = "미래 덱",
                text = {
                    "{C:purple}+#1# 꿰뚫어보기{}",
                } 
            },
            b_poke_stadiumdeck = {
                name = "스타디움 덱",
                text = {
                    "덱에 {C:attention}보너스, 배수,",
                    "{C:attention}와일드, 글래스, 스틸, 석재,",
                    "{C:attention}골드,{} {C:attention}럭키{} 카드를",
                    "가지고 시작합니다"
                } 
            },
            b_poke_megadeck = {
                name = "메가 덱",
                text = {
                    "{C:tarot,T:v_reroll_surplus}#2#{}, {C:tarot,T:v_reroll_glut}#3#{},",
                    "{C:tarot,T:v_crystal_ball}#5#{} 바우처와",
                    "{C:spectral,T:c_poke_megastone}#1#{} 카드를 보유하고 시작합니다",
                    "상점 슬롯 {C:red}-#4#{}칸"
                } 
            },
            b_poke_vendingdeck = {
                name = "자판기 덱",
                text = {
                    "각 {C:attention}홀수 앤티 보스 블라인드{}를",
                    "격파할 때마다,",
                    "{C:attention,T:tag_vremade_double}#1#{}를 획득합니다",
                } 
            },
			b_poke_diceydeck = {
                name = "잔해 덱",
                text = {
                    "{C:hazard}+#1#{} 위험 수치 및 한도, {C:attention}+#1#{} 손 크기",
                    "매 라운드 종료 시:",
                    "{C:attention}전체 덱{}에 있는 각 {C:attention}위험{}",
                    "카드 한 장당 {C:money}$#4#{} 획득",
                    "{C:attention}이자{} 획득 불가"
                } 
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "연두빛 방",
                text = {
                    "매 핸드마다 무작위 타입이",
                    "능력 무효화됩니다",
                }, 
            },
            bl_poke_mirror = {
                name = "거울",
                text = {
                    "{C:attention}블라인드{} 선택 시,",
                    "가장 오른쪽의 조커가",
                    "{c:attention}메타몽{}으로 변신합니다",
                }, 
            },
            bl_poke_rocket = {
                name = "로켓단",
                text = {
                    "보유 금액이 $25 이상일 경우",
                    "모든 카드가 뒷면으로 뽑힙니다"
                }, 
            },
            bl_poke_star = {
                name = "별",
                text = {
                    "매 핸드마다 무작위 타입이",
                    "능력 무효화됩니다"
                },
            },
            bl_poke_gray_godfather = {
                name = "회색 대부",
                text = {
                    "핸드를 플레이하거나 버릴 때 {C:money}-$#1#{},",
                    "그 후 빚이 있는 상태라면",
                    "무작위 조커 하나를 파괴합니다"
                }, 
            },
            bl_poke_white_executive = {
                name = "하얀 간부",
                text = {
                    "{C:attention}블라인드{} 선택 시, 모든 조커와",
                    "소모품의 판매 가치 합계만큼",
                    "덱에 있는 카드 {C:attention}#1#{}장을",
                    "능력 무효화합니다"
                }, 
            },
            bl_poke_magma = {
                name = "마그마단",
                text = {
                    "기본 칩이 1/4로 감소합니다",
                }, 
            },
            bl_poke_aqua = {
                name = "아쿠아단",
                text = {
                    "기본 배수가 1/4로 감소합니다",
                }, 
            },
			bl_poke_iridescent_hacker = {
                name = "무지개빛 해커",
                text = {
                    "매 핸드마다 무작위 타입이",
                    "능력 무효화됩니다",
                },
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "몬스터볼",
                text = {
                    "{C:attention}기본 조커{} 카드를",
                    "생성합니다",
                    "{C:inactive}(공간이 있어야 함)"
                },
            },
            c_poke_greatball = {
                name = "수퍼볼",
                text = {
                    "{C:attention}1진화 조커{} 카드를",
                    "생성합니다",
                    "{C:inactive}(공간이 있어야 함)"
                },
            },
            c_poke_moonstone = {
                name = "달의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:green}#2# / #3#{} 확률로",
                    "선택한 {C:attention}포커 핸드{}의",
                    "레벨을 상승시킵니다",
                    "{C:inactive}(핸드: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "태양의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장을",
                    "{C:attention}와일드{} 카드로 강화하고",
                    "랭크를 {C:attention}무작위{}로 변경합니다",
                },
            },
            c_poke_waterstone = {
                name = "물의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장을",
                    "{C:attention}보너스{} 카드로 강화합니다",
                    "이미 {C:attention}보너스{} 카드라면",
                    "총 칩을 {C:attention}2배{}로 만듭니다",
                    "{C:inactive}(강화당 최대 {C:chips}+#2#{C:inactive} 칩)",
                },
            },
            c_poke_thunderstone = {
                name = "천둥의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}1{}장을 파괴하고,",
                    "같은 랭크의 {C:attention}골드{} 카드 2장을",
                    "덱에 추가하고 {C:attention}1{}장을 손으로 가져옵니다",
                },
            },
            c_poke_firestone = {
                name = "불꽃의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장을 {C:attention}배수{} 카드로 강화하고",
                    "그 중 {C:attention}1{}장을 무작위로 파괴합니다",
                },
            },
            c_poke_leafstone = {
                name = "리프의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:green}#1# / #2#{} 확률로",
                    "핸드에 있는 각 카드를",
                    "{C:attention}럭키{} 카드로 강화합니다",
                },
            },
            c_poke_linkcable = {
                name = "연결의끈",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "카드 {C:attention}#1#{}장을 선택합니다,",
                    "{C:attention}왼쪽{} 카드의 랭크를 {C:attention}상승{}시키고",
                    "{C:attention}오른쪽{} 카드의 랭크를 {C:attention}하락{}시킵니다",
                },
            },
            c_poke_leftovers = {
                name = "먹다남은음식",
                text = {
                    "{C:attention}재사용 가능{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "가장 왼쪽 또는 선택한 조커의",
                    "판매 가치를 {C:money}$#2#{} 증가시킵니다",
                    "{C:inactive}(라운드당 1회 사용 가능)",
                }
            },
            c_poke_leek = {
                name = "대파",
                text = {
                    "{C:attention}재사용 가능{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:green}#1# / #2#{} 확률로 자신에게",
                    "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{}, 또는",
                    "{C:dark_edition}폴리크롬{}을 추가하고,",
                    "라운드 종료 시 {C:attention}에디션{}을 제거합니다",
                    "{C:inactive}(라운드당 1회 사용 가능)",
                }
            },
            c_poke_thickclub = {
                name = "굵은뼈",
				
                text = {
                    "{C:attention}재사용 가능{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장에",
                    "영구적으로 {C:chips}+#2#{} 칩을 추가합니다",
                    "{C:inactive}(라운드당 1회 사용 가능)",
                }
            },
            c_poke_teraorb = {
                name = "테라오브",
                text = {
                    "{C:attention}타입 변경:{} {B:1,V:2}#1#{}",
                    "{C:inactive,s:0.8}({C:pink,s:0.8}타입{C:inactive,s:0.8}은 핸드를 낼 때마다 변경됩니다){}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "가장 왼쪽 또는 선택한 조커가",
                    "이미 {B:1,V:2}#1#{} {C:pink}타입{}이라면",
                    "{C:pink}에너지화{}합니다",
                },
            },
            c_poke_metalcoat = {
                name = "금속코트",
                text = {
                    "{C:attention}타입 변경:{} {X:metal,C:white}강철{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}1{}장의",
                    "{C:attention}스틸{} 복제본을 생성합니다",
                },
            },
            c_poke_dragonscale = {
                name = "용의비늘",
                text = {
                    "{C:attention}타입 변경:{} {X:dragon,C:white}드래곤{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "무작위 {C:item}아이템{} 또는 {C:pink}에너지{} 카드를",
                    "최대 {C:attention}3{}장 생성합니다",
                    "{C:inactive}(공간이 있어야 함){}"
                },
            },
            c_poke_kingsrock = {
                name = "왕의징표석",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장을",
                    "{C:attention}킹{}으로 변경합니다",
                },
            },
            c_poke_upgrade = {
                name = "업그레이드",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장에",
                    "무작위 {C:attention}비-석재 강화{}를 부여합니다",
                }
            },
            c_poke_dubious_disc = {
                name = "괴상한패치",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "핸드에 {C:attention}보유한{} 모든 카드를",
                    "무작위로 {C:attention}강화{}합니다",
                }
            },
            c_poke_icestone = {
                name = "얼음의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}#1#{}장을",
                    "{C:attention}글래스 카드{}로 강화합니다",
                    "{C:green}#2# / #3#{} 확률로",
                    "선택한 카드가 {C:attention}깨집니다{}",
                }
            },
            c_poke_shinystone = {
                name = "빛의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}1{}장에 {C:dark_edition}포일{}, {C:dark_edition}홀로그램{},",
                    "또는 {C:dark_edition}폴리크롬{} 효과를 추가하고",
                    "카드의 {C:attention}강화{}를 제거합니다",
                }
            },
            c_poke_twisted_spoon = {
                name = "휘어진스푼",
                text = {
                    "이번 런에서 마지막으로 사용한",
                    "{C:item}아이템{} 카드 또는 {C:pink}에너지{} 카드를 생성합니다",
                    "{s:0.8,C:item}휘어진스푼, 재사용 가능 아이템,",
                    "{s:0.8,C:item}나무열매 주스는 제외됩니다{s:0.8}"
                }
            },
            c_poke_prismscale = {
                name = "고운비늘",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "무작위로 {C:attention}보유한{} 카드 {C:attention}#2#{}장을",
                    "선택한 카드 {C:attention}#1#{}장의",
                    "{C:attention}수트{}로 변환합니다",
                }
            },
            c_poke_duskstone = {
                name = "어둠의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}흡수 가능한{} 각 조커마다 {C:money}$#1#{}를",
                    "획득하고, 그들로부터 {C:attention}{C:money}$1{}를 흡수합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}#2#{} {C:inactive}[#3#]{} 라운드 후에는,",
                    "대신 각 조커마다 {C:money}$#1#{}를 획득합니다",
                    "{C:inactive}(현재 {C:money}$#4#{C:inactive}/최대 $#5#)"
                }
            },
            c_poke_dawnstone = {
                name = "각성의돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}#1#{} {C:mult}배수{} 값의",
                    "{c:attention}2배{}만큼 {C:money}${}를 획득합니다",
                    "{C:inactive}#4#{}",
                    "{C:inactive}(현재 {C:money}$#2#{C:inactive}/최대 $40)",
                }
            },
            c_poke_hardstone = {
                name = "딱딱한돌",
                text = {
                    "{C:attention}진화 카드{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "선택한 카드 {C:attention}1{}장을 {C:attention}석재{} 카드로 강화하며,",
                    "보유한 {X:earth,C:white}땅{} 조커 하나당",
                    "{C:chips}+#2#{} 칩을 추가합니다"
                }
            },
            c_poke_miracleseed = {
                name = "기적의 씨",
                text = {
                    "선택한 카드 {C:attention}1{}장을",
                    "{C:attention}씨앗{} 카드로",
                    "{C:attention}강화{}합니다"
                }
            },
            c_poke_heartscale = {
                name = "하트비늘",
                text = {
                    "카드 {C:attention}#1#{}장을 선택합니다,",
                    "{C:attention}왼쪽{} 카드를 {C:attention}오른쪽{} 카드로 변환하고",
                    "두 카드를 모두 {C:hearts}#2#{}로 만듭니다",
                    "{C:inactive}(드래그해서 재배열)",
                }
            },
            c_poke_berry_juice = {
                name = "나무열매 주스",
                text = {
                    "효과는 파괴된",
                    "{C:attention}소모품{}에 따라 달라집니다"
                }
            },
            c_poke_berry_juice_energy = {
                name = "에너지화된 나무열매 주스",
                text = {
                    "아무 {C:pink}타입{}의 가장 왼쪽 또는 선택한",
                    "조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "유령 나무열매 주스",
                text = {
                    "선택한 카드 {C:attention}1{}장에 무작위 {C:attention}인장{}과",
                    "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{} 또는 {C:dark_edition}폴리크롬{}을",
                    "추가합니다"
                },
            },
            c_poke_berry_juice_planet = {
                name = "별의 나무열매 주스",
                text = {
                    "가장 레벨이 높은",
                    "{C:attention}포커 핸드{}를 1레벨 업그레이드합니다",
                },
            },
            c_poke_berry_juice_item = {
                name = "아이템 나무열매 주스",
                text = {
                    "{C:item}휘어진스푼{} 카드를 생성합니다",
                    "{C:green}#1# / #2#{} 확률로",
                    "대신 {C:attention}2{}장을 생성합니다",
                    "{C:inactive}(공간이 있어야 함){}"
                },
            },
            c_poke_berry_juice_tarot = {
                name = "오컬트 나무열매 주스",
                text = {
                    "{C:tarot}광대{} 카드를 생성하고",
                    "{C:money}$#1#{}를 획득합니다",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "의문의 나무열매 주스",
                text = {
                    "무작위 {C:item}나무열매 주스{} 카드를",
                    "생성합니다"
                }
            },
            c_poke_oven = {
                name = "전자레인지",
                text = {
                  "{C:attention}블라인드{} 중에 사용 시",
                  "이번 라운드에 {C:attention}+#1#{} 버리기 횟수를 얻습니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "가장 왼쪽 또는 선택한",
                  "{C:attention}로토무{}를 변신시킵니다"
                }
            },
            c_poke_washing_machine = {
                name = "세탁기",
                text = {
                  "{C:attention}블라인드{} 중에 사용 시",
                  "이번 라운드에 {C:attention}+#1#{} 핸드 횟수를 얻습니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "가장 왼쪽 또는 선택한",
                  "{C:attention}로토무{}를 변신시킵니다"
                }
            },
            c_poke_fridge = {
                name = "냉장고",
                text = {
                  "무작위 {C:attention}소모품{} {C:attention}2{}개를 생성합니다",
                  "{C:inactive}(공간이 있어야 함)",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "가장 왼쪽 또는 선택한",
                  "{C:attention}로토무{}를 변신시킵니다"
                }
            },
            c_poke_fan = {
                name = "선풍기",
                text = {
                  "{C:blue}커먼{} 조커를 최대",
                  "{C:attention}2{}장 생성합니다",
                  "{C:inactive}(공간이 있어야 함)",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "가장 왼쪽 또는 선택한",
                  "{C:attention}로토무{}를 변신시킵니다"
                }
            },
            c_poke_lawn_mower = {
                name = "잔디깎이",
                text = {
                  "{C:attention}블라인드{} 중에 사용 시",
                  "이번 라운드에 핸드 크기 {C:attention}+#1#{}를 얻습니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "가장 왼쪽 또는 선택한",
                  "{C:attention}로토무{}를 변신시킵니다"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "풀 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:grass,C:white}풀{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_fire_energy = {
                name = "불꽃 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:fire,C:white}불꽃{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_water_energy = {
                name = "물 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:water,C:white}물{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_lightning_energy = {
                name = "전기 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:lightning,C:black}전기{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_psychic_energy = {
                name = "에스퍼 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:psychic,C:white}에스퍼{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_fighting_energy = {
                name = "격투 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:fighting,C:white}격투{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_colorless_energy = {
                name = "노말 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:colorless,C:white}노말{} 조커를 {C:pink}에너지화{}합니다",
                    "{X:colorless,C:white}노말{}이 아닌 조커에게는",
                    "효과가 절반입니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)"
                },
            },
            c_poke_darkness_energy = {
                name = "악 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:dark,C:white}악{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_metal_energy = {
                name = "강철 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:Metal,C:white}강철{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_fairy_energy = {
                name = "페어리 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:fairy,C:white}페어리{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "드래곤 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:dragon,C:white}드래곤{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_earth_energy = {
                name = "땅 에너지",
                text = {
                    "가능하다면 가장 왼쪽 또는 선택한",
                    "{X:earth,C:white}땅{} 조커를 {C:pink}에너지화{}합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",
                },
            },
            c_poke_bird_energy = {
                name = "새 에너지",
                text = {
                  ""
                },
            },
            c_poke_emergy = {
                name = "이머지",
                text = {
                    "{C:attention}졸리 조커{} 또는 {C:legendary}M 조커{}당",
                    "{C:dark_edition}네거티브{}를 가진 무작위",
                    "{C:green}에너지{} 카드 {C:attention}1{}장을 생성합니다"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "이로치",
                label = "이로치",
                text = {
                    "상점에서 {C:attention}+1{}개의",
                    "부스터 팩 슬롯 이용 가능",
                },
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
            -- HA HA! Not anymore!

            m_poke_hazard = {
                name = "해저드 카드",
                text = {
                    "랭크나 수트 없음",
                    "라운드 종료 시 {C:attention}강화{} 제거",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "라운드 종료 시 핸드에 {C:attention}보유 중{}이라면",
                    "{C:green}#1# / #2#{} 확률로 파괴됨"
                },
            },
            m_poke_flower = {
                name = "플라워 카드",
                text = {
                    "포커 핸드에 {C:attention}4개 이상의 수트{}가",
                    "포함되면 {X:mult,C:white} X#1# {} 배수"
                },
            },
			m_poke_seed = {
                name = "씨앗 카드",
                text = {
                    "득점 시 {C:attention}성장{}합니다",
                    "{C:attention}#1#{}번 {C:inactive}[#2#]{} 성장하면",
                    "{C:attention}꽃{} 카드로 변하고",
                    "{C:money}$#3#{}를 획득합니다"
                },
            },
        },
        Stake = {
            stake_poke_diamond = {
                name = "다이아몬드 스테이크",
                colour = "Diamond",
                text = {
                    "{C:attention}아기 포켓몬{}이 아닌 포켓몬 조커의 진화가 {C:attention}1{} 라운드 느려짐",
                    "{s:0.8}이전 스테이크의 모든 규칙 적용"
                }
            },
            stake_poke_pearl = {
                name = "펄 스테이크",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} 에너지 한도",
                    "{s:0.8}이전 스테이크의 모든 규칙 적용"
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "이상해씨",
                text = {
                    "핸드 크기 {C:attention}+#4#{}",
                    "핸드에 {C:attention}#3#{} 카드를 보유할 때마다",
                    "{C:money}$#1#{} 획득",
                    "{C:inactive,s:0.8}(랭크는 매 라운드 변경됩니다){}",
                    "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8}를 벌면 진화)",
                } 
            },
            j_poke_ivysaur = {
                name = "이상해풀",
                text = {
                    "핸드 크기 {C:attention}+#3#{}",
                    "핸드에 {C:attention}#4#{} 카드를 보유할 때마다",
                    "{C:money}$#1#{} 또는 {C:money}$#5#{} 획득",
                    "{C:inactive,s:0.8}(랭크는 매 라운드 변경됩니다){}",
                    "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8}를 벌면 진화)",
                } 
            },
            j_poke_venusaur = {
                name = "이상해꽃",
                text = {
                    "핸드 크기 {C:attention}+#3#{}",
                    "핸드에 {C:attention}#4#{} 카드를 보유할 때마다",
                    "{C:money}$#1#{} 획득",
                    "{C:inactive,s:0.8}(랭크는 매 라운드 변경됩니다){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "메가이상해꽃",
                text = {
                    "핸드 크기 {C:attention}+#1#{}",
                }
            },
            j_poke_charmander = {
                name = "파이리",
                text = {
                    "버리기 횟수 {C:red}+#4#{}",
                    "남은 버리기 횟수가 {C:attention}#3#{}회일 때",
                    "핸드 플레이 시 {C:mult}+#2#{} 배수 증가",
                    "{C:inactive}({C:mult}+#1#{C:inactive} / +16 배수일 때 진화)",
                } 
            },
            j_poke_charmeleon = {
                name = "리자드",
                text = {
                    "버리기 횟수 {C:red}+#4#{}",
                    "남은 버리기 횟수가 {C:attention}#3#{}회일 때",
                    "핸드 플레이 시 {C:mult}+#2#{} 배수 증가",
                    "{C:inactive}({C:mult}+#1#{C:inactive} / +36 배수일 때 진화)",
                }
            },
            j_poke_charizard = {
                name = "리자몽",
                text = {
                    "버리기 횟수 {C:red}+#4#{}, {C:mult}+#1#{} 배수",
                    "남은 버리기 횟수가 {C:attention}#3#{}회일 때 {X:mult,C:white} X#2# {} 배수",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "메가리자몽X",
                text = {
                    "남은 버리기 횟수가 {C:attention}#2#{}회일 때 {X:mult,C:white} X#1# {} 배수",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "메가리자몽Y",
                text = {
                    "버리기 횟수 {C:red}+#1#{}",
                } 
            },
            j_poke_squirtle = {
                name = "꼬부기",
                text = {
                    "핸드 횟수 {C:chips}+#2#{}",
                    "핸드를 플레이할 때",
                    "남은 {C:attention}핸드{} 횟수마다",
                    "{C:chips}+#4#{} 칩 증가",
                    "{C:inactive}({C:chips}+#1#{C:inactive} / +#3# 칩일 때 진화)",
                } 
            },
            j_poke_wartortle = {
                name = "어니부기",
                text = {
                    "핸드 횟수 {C:chips}+#2#{}",
                    "핸드를 플레이할 때",
                    "남은 {C:attention}핸드{} 횟수마다",
                    "{C:chips}+#4#{} 칩 증가",
                    "{C:inactive}({C:chips}+#1#{C:inactive} / +#3# 칩일 때 진화)",
                } 
            },
            j_poke_blastoise = {
                name = "거북왕",
                text = {
                    "핸드 횟수 {C:chips}+#3#{}, {C:chips}+#1#{} 칩",
                    "남은 핸드 횟수마다 {C:chips}+#2#{} 칩",
                } 
            },
            j_poke_mega_blastoise = {
                name = "메가거북왕",
                text = {
                    "핸드 횟수 {C:chips}+#2#{}",
                } 
            },
            j_poke_caterpie = {
                name = "캐터피",
                text = {
                    "{C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_metapod = {
                name = "단데기",
                text = {
                    "{C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_butterfree = {
                name = "버터플",
                text = {
                    "{C:mult}+#1#{} 배수",
                } 
            },
            j_poke_weedle = {
                name = "뿔충이",
                text = {
                    "{C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_kakuna = {
                name = "딱충이",
                text = {
                    "{C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_beedrill = {
                name = "독침붕",
                text = {
                    "{C:chips}+#1#{} 칩"
                } 
            },
            j_poke_mega_beedrill = {
                name = "메가독침붕",
                text = {
                    "{C:chips}+#1#{} 칩",
                } 
            },
            j_poke_pidgey = {
                name = "구구",
                text = {
                    "포커 핸드에 있는 서로 다른",
                    "{C:attention}랭크{}와 {C:attention}수트{}마다",
                    "{C:mult}+#2#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_pidgeotto = {
                name = "피죤",
                text = {
                    "포커 핸드에 있는 서로 다른",
                    "{C:attention}랭크{}와 {C:attention}수트{}마다",
                    "{C:mult}+#2#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_pidgeot = {
                name = "피죤투",
                text = {
                    "포커 핸드에 있는 서로 다른",
                    "{C:attention}랭크{}와 {C:attention}수트{}마다",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                } 
            },
            j_poke_mega_pidgeot = {
                name = "메가피죤투",
                text = {
                    "포커 핸드에 있는 서로 다른",
                    "{C:attention}랭크{}와 {C:attention}수트{}마다",
                    "{X:mult,C:white} X#1# {} 배수를 제공합니다",
                } 
            },
            j_poke_rattata = {
                name = "꼬렛",
                text = {
                    "득점한 {C:attention}처음 2장{}의 카드를",
                    "{C:attention}#1#{}회 재트리거합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_raticate = {
                name = "레트라",
                text = {
                    "득점한 {C:attention}처음 3장{}의 카드를",
                    "{C:attention}#1#{}회 재트리거합니다",
                }
            },
            j_poke_spearow = {
                name = "깨비참",
                text = {
                    "{C:attention}#2#{} {C:inactive}[#3#]{}장의 득점 카드를 낸 후",
                    "다음 플레이한 {C:attention}포커 핸드{}의 레벨을 업그레이드합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_fearow = {
                name = "깨비드릴조",
                text = {
                    "{C:attention}#1#{} {C:inactive}[#2#]{}장의 득점 카드를 낸 후",
                    "다음 플레이한 {C:attention}포커 핸드{}의 레벨을 업그레이드합니다{C:inactive}#3#{}",
                }
            },
            j_poke_ekans = {
                name = "아보",
                text = {
                    "플레이한 핸드에 {C:attention}스트레이트{}가",
                    "포함되면 {C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_arbok = {
                name = "아보크",
                text = {
                    "플레이한 핸드에 {C:attention}스트레이트{}가",
                    "포함되면 {C:mult}+#1#{} 배수",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "추가로 {C:attention}에이스{}가 포함되어 있으면",
                    "{C:tarot}타로{} 카드를 생성합니다"
                } 
            },
            j_poke_pikachu = {
                name = "피카츄",
                text = {
                    "{C:money}$#3#{} 이상 보유 시",
                    "{C:mult}+#1#{} 배수",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "보유 금액이 {C:money}$#3#{} 미만일 때",
                    "{C:attention}블라인드{}를 선택하면 {C:money}$#2#{} 획득",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}천둥의돌{C:inactive,s:0.8}로 진화)"
                }
            },
            j_poke_raichu = {
                name = "라이츄",
                text = {
                    "보유한 {C:money}$#2#{}마다",
                    "{C:mult}+#1#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}블라인드{} 선택 시",
                    "이자를 획득합니다",
                } 
            },
            j_poke_sandshrew = {
                name = "모래두지",
                text = {
                    "{C:attention}전체 덱{}에 있는 {C:attention}글래스{} 카드마다",
                    "{C:chips}+#2#{} 칩",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{V:1}매 라운드 처음으로 깨진 {C:attention,V:1}글래스{V:1} 카드의",
                    "{V:1}복제본을 핸드에 추가합니다",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive} 칩)",
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}"
                } 
            },
            j_poke_sandslash = {
                name = "고지",
                text = {
                    "{C:attention}전체 덱{}에 있는 {C:attention}글래스{} 카드마다",
                    "{C:chips}+#1#{} 칩",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{V:1}매 라운드 처음으로 깨진 {C:attention,V:1}글래스{V:1} 카드",
                    "{V:1}#3# {C:inactive}[#4#]{}장의 복제본을 핸드에 추가합니다",
                    "{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)",
                } 
            },
            j_poke_nidoranf = {
                name = "니드런♀",
                text = {
                    "핸드에 {C:attention}퀸{}을 보유할 때마다",
                    "{C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}"
                } 
            },
            j_poke_nidorina = {
                name = "니드리나",
                text = {
                    "핸드에 {C:attention}퀸{}을 보유할 때마다",
                    "{C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}(달의돌로 진화){}"
                } 
            },
            j_poke_nidoqueen = {
                name = "니드퀸",
                text = {
                    "핸드 크기 {C:attention}+#2#{}",
                    "핸드에 {C:attention}퀸{}을 보유할 때마다",
                    "{C:chips}+#1#{} 칩",
                } 
            },
            j_poke_nidoranm = {
                name = "니드런♂",
                text = {
                    "핸드에 {C:attention}킹{}을 보유할 때마다",
                    "{C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}"
                } 
            },
            j_poke_nidorino = {
                name = "니드리노",
                text = {
                    "핸드에 {C:attention}킹{}을 보유할 때마다",
                    "{C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}(달의돌로 진화){}"
                } 
            },
            j_poke_nidoking = {
                name = "니드킹",
                text = {
                    "핸드 크기 {C:attention}+#2#{}",
                    "핸드에 {C:attention}킹{}을 보유할 때마다",
                    "{C:mult}+#1#{} 배수",
                } 
            },
            j_poke_clefairy = {
                name = "삐삐",
                text = {
                    "플레이한 {C:clubs}#2#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(달의돌로 진화){}"
                } 
            },
            j_poke_clefable = {
                name = "픽시",
                text = {
                    "득점 시, 이번 라운드에 플레이한",
                    "{C:clubs}#2#{} 카드 수만큼",
                    "{C:clubs}#2#{} 카드가 {C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(클럽 5장을 내면, 각각 {C:mult,s:0.8}+#4#{C:inactive,s:0.8} 배수 제공)",
                    "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)"
                } 
            },
            j_poke_vulpix = {
                name = "식스테일",
                text = {
                    "플레이한 {C:attention}9{} 카드가 득점 시",
                    "{C:green}#1# / #2#{} 확률로",
                    "{C:tarot}타로{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(공간이 있어야 함)",
                    "{C:inactive,s:0.8}(불꽃의돌로 진화){}"
                } 
            },
            j_poke_ninetales = {
                name = "나인테일",
                text = {
                    "{C:dark_edition}네거티브 {C:spectral}영매{} 카드를 보유 시",
                    "플레이한 {C:attention}9{} 카드가 득점 시",
                    "{C:green}#1# / #2#{} 확률로",
                    "{C:tarot}타로{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(공간이 있어야 함)",
                } 
            },
            j_poke_jigglypuff = {
                name = "푸린",
                text = {
                    "플레이한 {C:spades}#2#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수 및 {C:chips}+#3#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(달의돌로 진화){}"
                } 
            },
            j_poke_wigglytuff = {
                name = "푸크린",
                text = {
                    "플레이한 {C:spades}#3#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수, {C:chips}+#2#{} 칩, 그리고",
                    "해당 카드의 총 칩을 제공합니다",
                } 
            },
            j_poke_zubat = {
                name = "주뱃",
                text = {
                    "포커 핸드에 있는 {C:attention}강화된{} 카드마다",
                    "{C:mult}+#2#{} 배수 증가",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +#3#일 때 진화)",
                }
            },
            j_poke_golbat = {
                name = "골뱃",
                text = {
                    "{C:attention}보너스{} / {C:attention}석재{} 카드로 득점 시 {C:chips}+#4#{} 칩",
                    "{C:attention}배수{} / {C:attention}와일드{} 카드로 득점 시 {C:mult}+#2#{} 배수",
                    "{C:attention}스틸{} / {C:attention}글래스{} 카드로 득점 시 {X:mult,C:white}X#6#{} 배수",
                    "{C:attention}골드{} / {C:attention}럭키{} 카드로 득점 시 {C:money}$#8#{} 획득,",
                    "카드의 {C:attention}강화{}를 제거합니다",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive}, {C:mult}+#1#{C:inactive}, {X:mult,C:white}X#5#{C:inactive}, 라운드 종료 시 {C:money}$#7#{C:inactive})",
                    "{C:inactive,s:0.8}(강화 카드를 {C:attention,s:0.8}#9#{C:inactive,s:0.8}장 먹으면 진화)",
                } 
            },
            j_poke_oddish = {
                name = "뚜벅쵸",
                text = {
                    "플레이한 카드의 랭크가 {C:attention}홀수{}라면",
                    "득점 시 {C:mult}+#1#{} 또는 {C:mult}+#2#{} 배수",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_gloom = {
                name = "냄새꼬",
                text = {
                    "플레이한 카드의 랭크가 {C:attention}홀수{}라면",
                    "득점 시 {C:mult}+#1#{} 또는 {C:mult}+#2#{} 배수",
                    "{C:inactive,s:0.8}(리프의돌 또는 태양의돌로 진화){}",
                } 
            },
            j_poke_vileplume = {
                name = "라플레시아",
                text = {
                    "플레이한 카드의 랭크가 {C:attention}홀수{}라면",
                    "득점 시 {C:mult}+#2#{} 배수 또는 {X:mult,C:white}X#1#{} 배수",
                } 
            },
            j_poke_paras = {
                name = "파라스",
                text = {
                    "플레이한 핸드에 {C:attention}투 페어{}가",
                    "포함되어 있으면 {C:mult}+#2#{} 배수",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +8일 때 진화)",
                }  
            },
            j_poke_parasect = {
                name = "파라섹트",
                text = {
                    "플레이한 핸드에 {C:attention}투 페어{}가",
                    "포함되어 있으면 {C:mult}+#2#{} 배수",
                    "포함되지 않으면 {C:mult}-#3#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                } 
            },
            j_poke_venonat = {
                name = "콘팡",
                text = {
                    "{C:attention}목록에 있는{} 모든 {C:green,E:1,S:1.1}확률{}의",
                    "분자에 {C:attention}#1#{}을 더합니다",
                    "{C:inactive}(예: {C:green}1 / 6{C:inactive} -> {C:green}2 / 6{C:inactive})",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}"
                } 
            },
            j_poke_venomoth = {
                name = "도나리",
                text = {
                    "{C:attention}목록에 있는{} 모든 {C:green,E:1,S:1.1}확률{}의",
                    "분자에 {C:attention}#1#{}을 더합니다",
                    "{C:inactive}(예: {C:green}1 / 6{C:inactive} -> {C:green}3 / 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "디그다",
                text = {
                    "플레이한 핸드에 {C:attention}트리플{}이",
                    "포함되어 있으면 {C:chips}+#2#{} 칩",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "플레이한 핸드에 득점하는 {C:attention}2{}, {C:attention}3{}, 또는 {C:attention}4{}가",
                    "포함되어 있으면 {C:mult}+#3#{} 배수",
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}"
                } 
            },
            j_poke_dugtrio = {
                name = "닥트리오",
                text = {
                    "플레이한 핸드에 {C:attention}트리플{}이",
                    "포함되어 있으면 {C:chips}+#2#{} 칩",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "플레이한 핸드에 득점하는 {C:attention}2{}, {C:attention}3{}, 또는 {C:attention}4{}가",
                    "포함되어 있으면 {X:mult,C:white} X#1# {} 배수",
                } 
            },
            j_poke_meowth = {
                name = "나옹",
                text = {
                    "라운드 종료 시 {C:money}$#1#{} 획득",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "매 라운드 처음으로 {C:attention}럭키{} 카드가",
                    "{C:green}성공적{}으로 발동하면",
                    "지급액이 {C:money}$#2#{} 증가합니다",
                    "{C:inactive,s:0.8}(지급액 {C:money,s:0.8}$#1#{C:inactive,s:0.8} / $#3#일 때 진화)"
                } 
            },
            j_poke_persian = {
                name = "페르시온",
                text = {
                    "라운드 종료 시 {C:money}$#1#{} 획득",
                    "{C:green}#3# / #4#{} 확률로 {C:attention}2배{} 획득",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "매 라운드 처음으로 {C:attention}럭키{} 카드가",
                    "{C:green}성공적{}으로 발동하면",
                    "지급액이 {C:money}$#2#{} 증가합니다",
                } 
            },
            j_poke_psyduck = {
                name = "고라파덕",
                text = {
                    "플레이한 핸드가 단 한 장의",
                    "{C:attention}그림{} 카드라면, {C:money}$#1#{} 획득",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}"
                } 
            },
            j_poke_golduck = {
                name = "골덕",
                text = {
                    "플레이한 핸드가 단 한 장의",
                    "{C:attention}그림{} 카드라면, {C:money}$#1#{}를 획득하고",
                    "득점 시 {C:attention}골드{} 카드가 됩니다"
                } 
            },
            j_poke_mankey = {
                name = "망키",
                text = {
                    "플레이한 {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, 또는 {C:attention}7{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수 및 {C:chips}+#2#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_primeape = {
                name = "성원숭",
                text = {
                    "플레이한 {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, 또는 {C:attention}7{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수 및 {C:chips}+#2#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(#3#회 발동 시 진화)"
                } 
            },
            j_poke_growlithe = {
                name = "가디",
                text = {
                    "플레이한 핸드에 {C:attention}플러시{}가",
                    "포함되면 {C:mult}+#1#{} 배수",
                    "{C:inactive,s:0.8}(불꽃의돌로 진화){}"
                } 
            },
            j_poke_arcanine = {
                name = "윈디",
                text = {
                    "플레이한 핸드에 {C:attention}플러시{}가 포함되면 {X:mult,C:white} X#1# {} 배수",
                    "해당 {C:attention}플러시{}에서 첫 번째로 낸 강화되지 않은 카드는",
                    "득점 시 {C:attention}배수{} 카드가 됩니다"
                } 
            },
            j_poke_poliwag = {
                name = "발챙이",
                text = {
                    "플레이한 {V:1}#3#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수",
                    "득점 후 수트가 순서대로 변경됩니다",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_poliwhirl = {
                name = "슈륙챙이",
                text = {
                    "플레이한 {V:1}#2#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수",
                    "득점 후 수트가 순서대로 변경됩니다",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(물의돌 또는 왕의징표석으로 진화){}"
                } 
            },
            j_poke_poliwrath = {
                name = "강챙이",
                text = {
                    "플레이한 {V:1}#2#{} 카드가 득점 시",
                    "{C:mult}+#7#{} 배수 및 {X:mult,C:white}X#1#{} 배수",
                    "득점 후 수트가 순서대로 변경됩니다",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_abra = {
                name = "캐이시",
                text = {
                    "{C:green}#1# / #2#{} 확률로 {C:tarot}타로{}",
                    "또는 {C:item}아이템{} 카드를 생성합니다.",
                    "단, 플레이한 {C:attention}포커 핸드{}가",
                    "이번 라운드에 이미 플레이된 경우여야 합니다",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_kadabra = {
                name = "윤겔라",
                text = {
                    "{C:green}#1# / #2#{} 확률로 {C:tarot}타로{} 또는",
                    "{C:item}휘어진스푼{} 카드를 생성합니다.",
                    "단, 플레이한 {C:attention}포커 핸드{}가",
                    "이번 라운드에 이미 플레이된 경우여야 합니다",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_alakazam = {
                name = "후딘",
                text = {
                    "{C:attention}+#3#{} 소모품 슬롯",
                    "{C:green}#1# / #2#{} 확률로 {C:attention}광대{} 또는",
                    "{C:item}휘어진스푼{} 카드를 생성합니다.",
                    "단, 플레이한 {C:attention}포커 핸드{}가",
                    "이번 라운드에 이미 플레이된 경우여야 합니다",
                } 
            },
            j_poke_mega_alakazam = {
                name = "메가후딘",
                text = {
                    "{C:attention}+#3#{} 소모품 슬롯",
                    "보유한 {C:attention}소모품{}마다 {X:mult,C:white}X#1#{} 배수",
                    "{C:item}휘어진스푼{}은 {X:mult,C:white}X#2#{} 배수",
                } 
            },
            j_poke_machop = {
                name = "알통몬",
                text = {
                    "핸드 {C:chips}+#1#{}회",
                    "버리기 {C:mult}-#2#회{}",
                    "{C:mult}+#4#{} 배수",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_machoke = {
                name = "근육몬",
                text = {
                    "핸드 {C:chips}+#1#{}회",
                    "버리기 {C:mult}-#2#회{}",
                    "{C:mult}+#3#{} 배수",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_machamp = {
                name = "괴력몬",
                text = {
                    "핸드 {C:chips}+#1#{}회",
                    "버리기 {C:mult}-#2#회{}",
                    "{C:mult}+#3#{} 배수"
                } 
            },
            j_poke_bellsprout = {
                name = "모다피",
                text = {
                    "플레이한 {C:attention}짝수{} 랭크 카드가",
                    "득점 시 {C:chips}+#1#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_weepinbell = {
                name = "우츠동",
                text = {
                    "플레이한 {C:attention}짝수{} 랭크 카드가",
                    "득점 시 {C:chips}+#1#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(리프의돌로 진화){}"
                } 
            },
            j_poke_victreebel = {
                name = "우츠보트",
                text = {
                    "플레이한 {C:attention}짝수{} 랭크 카드가",
                    "득점 시 {C:chips}+#1#{} 칩을 제공하고",
                    "{C:attention}재트리거{}합니다"
                } 
            },
            j_poke_tentacool = {
                name = "왕눈해",
                text = {
                    "플레이한 각 {C:attention}10{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_tentacruel = {
                name = "독파리",
                text = {
                    "플레이한 각 {C:attention}10{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}10은{} 능력 무효화되지 않습니다"
                } 
            },
            j_poke_geodude = {
                name = "꼬마돌",
                text = {
                    "{C:chips}+#1#{} 칩",
                    "핸드 크기 {C:attention}-#2#{}",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_graveler = {
                name = "데구리",
                text = {
                    "{C:chips}+#1#{} 칩",
                    "핸드 크기 {C:attention}-#2#{}",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_golem = {
                name = "딱구리",
                text = {
                    "{C:chips}+#1#{} 칩",
                    "핸드 크기 {C:attention}-#2#{}",
                } 
            },
            j_poke_ponyta = {
                name = "포니타",
                text = {
                    "플레이한 핸드에 {C:attention}스트레이트{}가", 
                    "포함되면 {C:chips}+#2#{} 칩 증가",
                    "{C:inactive}({C:chips}+#1#{C:inactive} / +60 칩일 때 진화)",
                } 
            }, 
            j_poke_rapidash = {
                name = "날쌩마",
                text = {
                    "플레이한 핸드에 {C:attention}스트레이트{}가", 
                    "포함되면 {C:chips}+#2#{} 칩 증가",
                    "칩 증가량은 매번 {C:chips}+1{}씩 상승합니다",
                    "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "야돈",
                text = {
                    "라운드의 {C:attention}마지막 핸드{}에서 {X:mult,C:white} X#1# {} 배수",
                    "{C:inactive,s:0.8}(#2#회 발동 시 진화){}",
                    "{C:inactive,s:0.8}(왕의징표석으로 진화){}"
                } 
            },
            -- not used currently
            j_poke_slowpoke2 = {
                name = "야돈",
                text = {
                    "라운드의 {C:attention}마지막 핸드{}에서 {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:green}#3# / #4#{} 확률로",
                    "{C:attention}왕의징표석{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(공간이 있어야 함){}",
                    "{C:inactive,s:0.8}(#2# 라운드 후 또는 {C:attention,s:0.8}왕의징표석{C:inactive,s:0.8} 카드로 진화)"
                } 
            },
            j_poke_slowbro = {
                name = "야도란",
                text = {
                    "플레이한 핸드당 {X:mult,C:white} X#1# {} 배수",
                    "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
                    "{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "메가야도란",
                text = {
                    "플레이한 핸드당 {X:mult,C:white} X#1# {} 배수",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}보스 블라인드{C:inactive,s:0.8} 격파 시 초기화)",
                    "{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수)"
                } 
            },
            j_poke_shell = {
                name = "셀러...?",
                text = {
                  "가장 왼쪽의 {C:attention}야돈{}을 진화시키고",
                  "{S:1.1,C:red,E:2}자폭합니다{}",
                }
            },
            j_poke_magnemite = {
                name = "코일",
                text = {
                    "플레이한 {C:attention}스틸{} 카드가",
                    "{X:mult,C:white}X#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_magneton = {
                name = "레어코일",
                text = {
                    "플레이한 {C:attention}스틸{} 카드가 {X:mult,C:white}X#1#{} 배수 제공",
                    "추가로 인접한 {X:metal,C:white}강철{} 조커마다",
                    "{X:mult,C:white}X#2#{} 배수를 제공합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(천둥의돌로 진화){}"
                } 
            },
            j_poke_farfetchd = {
                name = '파오리',      
                text = {
                    "{C:item}대파{} 보유 시",
                    "{C:attention}소모품{} 사용 시 {C:green}#2# / #3#{} 확률로",
                    "{C:money}$#1#{}를 획득합니다,",
                    "{C:item}대파{} 사용 시에는 {C:money}${} 획득 보장",
                } 
            },
            j_poke_doduo = {
                name = '두두',      
                text = {
                    "플레이한 {C:attention}처음 2장{}의 {C:attention}그림{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_dodrio = {
                name = '두트리오',
                text = {
                    "플레이한 {C:attention}처음 3장{}의 {C:attention}그림{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "포커 핸드가 {C:attention}정확히 3장의 그림 카드{}라면",
                    "이번 라운드 동안 핸드 크기 {C:attention}+#2#{} 증가"
                    
                } 
            },
            j_poke_seel = {
                name = '쥬쥬',      
                text = {
                    "라운드의 {C:attention}첫 핸드{}에서 첫 번째 득점 카드에",
                    "{C:green}#1# / #2#{} 확률로 무작위 {C:attention}인장{}을",
                    "추가합니다",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_dewgong = {
                name = '쥬레곤',      
                text = {
                    "라운드의 {C:attention}첫 핸드{}에서 가장 왼쪽 득점 카드에",
                    "무작위 {C:attention}인장{}을 추가합니다",
                } 
            },
            j_poke_grimer = {
                name = '질퍽이',      
                text = {
                    "덱 크기 > {C:attention}#3#{}일 때 {C:mult}+#1#{} 배수",
                    "라운드 종료 시 무작위 플레잉 카드를",
                    "덱에 추가합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_muk = {
                name = '질뻐기',      
                text = {
                    "덱에 있는 {C:attention}#2#{}장 초과 카드당 {C:mult}+#1#{} 배수",
                    "{br:4}오류 - STEAK에게 문의바람",
                    "라운드 종료 시 덱에서 무작위 카드 {C:attention}1{}장을 파괴하고",
                    "무작위 카드 {C:attention}2{}장을 추가합니다",
                    "{C:inactive}(현재 {C:mult}+#3#{} {C:inactive}배수){}"
                } 
            },
            j_poke_shellder = {
                name = '셀러',      
                text = {
                    "핸드에 {C:attention}5{}장의 득점 카드가 있다면,",
                    "각 카드는 {C:green}#1# / #2#{} 확률로",
                    "{C:attention}재트리거{}됩니다",
                    "{C:inactive,s:0.8}(물의돌로 진화){}"
                } 
            },
            j_poke_cloyster = {
                name = '파르셀',      
                text = {
                    "핸드에 {C:attention}5{}장의 득점 카드가 있다면,",
                    "각 카드는 {C:green}#1# / #2#{} 확률로",
                    "{C:attention}재트리거{}됩니다",
                } 
            },
            j_poke_gastly = {
                name = '고오스',      
                text = {
                    "라운드 종료 시 {C:green}#1# / #2#{} 확률로",
                    "무작위 {C:attention}조커{}의 에디션을 {C:dark_edition}네거티브{}로",
                    "{C:attention}교체{}하고",
                    "{S:1.1,C:red,E:2}자폭합니다{}",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_haunter = {
                name = '고우스트',      
                text = {
                    "라운드 종료 시 {C:green}#1# / #2#{} 확률로",
                    "무작위 {C:attention}조커{}의 에디션을 {C:dark_edition}네거티브{}로",
                    "{C:attention}교체{}하고",
                    "{S:1.1,C:red,E:2}자폭합니다{}",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_gengar = {
                name = '팬텀',      
                text = {
                    "{C:dark_edition}#1#{} 라운드 안에",
                    "무작위 {C:attention}조커{}의 에디션을",
                    "{C:dark_edition}네거티브{}로 {C:attention}교체{}합니다",
                    "{C:inactive,s:0.8}(팬텀이 새로운 숫자를 고릅니다!){}",
                    "{C:inactive,s:0.8}(팬텀 제외){}",
                } 
            },
            j_poke_mega_gengar = {
                name = '메가팬텀',      
                text = {
                    "{C:attention}스몰 블라인드{} 또는 {C:attention}빅 블라인드{} 선택 시",
                    "{C:attention}네거티브 태그{}를 생성합니다",
                } 
            },
            j_poke_onix = {
                name = '롱스톤',      
                text = {
                    "라운드의 {C:attention}첫 핸드{}에서",
                    "가장 왼쪽 득점 카드가",
                    "{C:attention}석재{} 카드가 됩니다",
                    "{C:inactive,s:0.8}({C:metal,s:0.8}강철{C:inactive,s:0.8} 스티커로 진화)"
                } 
            },
            j_poke_drowzee = {
                name = '슬리프',      
                text = {
                    "이번 런에서 사용한 고유한",
                    "{C:planet}행성{} 카드마다 {X:mult,C:white}X#2#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(고유한 행성 카드 {C:planet,s:0.8}#3#{C:inactive,s:0.8}장 사용 후 진화)",
                } 
            },
            j_poke_hypno = {
                name = '슬리퍼',      
                text = {
                    "{C:spectral}트랜스{} 보유 시",
                    "이번 런에서 사용한 고유한",
                    "{C:planet}행성{} 카드마다 {X:mult,C:white}X#2#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                } 
            },
            j_poke_krabby = {
                name = '크랩',      
                text = {
                    "플레이한 {C:attention}그림{} 카드가",
                    "득점 시 {C:chips}+#1#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}"
                } 
            },
            j_poke_kingler = {
                name = '킹크랩',      
                text = {
                    "플레이한 모든 {C:attention}그림{} 카드가",
                    "득점 시 {C:chips}+#1#{} 칩을 제공하고,",
                    "강화되지 않은 경우 {C:attention}보너스{} 카드가 됩니다",
                } 
            },
            j_poke_voltorb = {
                name = '찌리리공',      
                text = {
                    "{C:attention}오른쪽 불안정{}",
                    "{X:mult,C:white} X#1# {} 배수를 제공한 후",
                    "이번 라운드 동안 자신을 무효화합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 동안 무효화되지 않으면 진화){}",
                } 
            },
            j_poke_electrode = {
                name = '붐볼',      
                text = {
                    "{C:attention}오른쪽 불안정{}",
                    "{X:mult,C:white} X#1# {} 배수 및 {C:money}$#2#{} 획득 후",
                    "이번 라운드 동안 자신을 무효화합니다"
                } 
            },
            j_poke_exeggcute = {
                name = '아라리',      
                text = {
                    "플레이한 {C:hearts}#2#{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{C:green}#4# / #5#{} 확률로",
                    "대신 {C:mult}+#3#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(리프의돌로 진화){}"
                } 
            },
            j_poke_exeggutor = {
                name = '나시',      
                text = {
                    "플레이한 {C:hearts}#3#{} 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 제공합니다",
                    "{C:green}#4# / #5#{} 확률로",
                    "대신 {X:mult,C:white}X#2#{} 배수를 제공합니다",
                } 
            },
            j_poke_cubone = {
                name = '탕구리',
                text = {
                    "{C:item}굵은뼈{} 보유 시",
                    "{C:attention}보유한 소모품{}마다",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:item,s:0.8}굵은뼈{C:inactive,s:0.8}는 2배로 계산){}",
                    "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(소모품 {C:attention,s:0.8}#3#{C:inactive,s:0.8}개 사용 후 진화)",
                } 
            },
            j_poke_marowak = {
                name = '텅구리',      
                text = {
                    "{C:attention}+#2#{} 소모품 슬롯",
                    "{C:attention}보유한 소모품{}마다",
                    "{X:mult,C:white} X#1# {} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}굵은뼈{C:inactive,s:0.8}는 2배로 계산){}",
                    "{C:inactive}(현재 {X:mult,C:white} X#3# {C:inactive} 배수)",
                } 
            },
            j_poke_hitmonlee = {
                name = '시라소몬',      
                text = {
                    "{C:attention}전체 덱{}에서 {C:attention}#2#{}보다 낮은",
                    "카드마다 {X:mult,C:white}X#1#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                } 
            },
            j_poke_hitmonchan = {
                name = '홍수몬',      
                text = {
                    "{C:attention}전체 덱{}에서 {C:attention}#2#{}보다 높은",
                    "카드마다 {X:mult,C:white}X#1#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                } 
            },
            j_poke_lickitung = {
                name = '내루미',      
                text = {
                    "처음과 두 번째로 낸 {C:attention}잭{} 카드가",
                    "득점 시 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(#2#회 발동 시 진화){}",
                } 
            },
            j_poke_koffing = {
                name = '또가스',      
                text = {
                    "이 카드를 판매하면 현재",
                    "{C:attention}보스 블라인드{}의 점수 목표를",
                    "{C:attention}절반{}으로 감소시킵니다",
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}",
                } 
            },
            j_poke_weezing = {
                name = '또도가스',      
                text = {
                    "이 카드를 판매하면 현재",
                    "{C:attention}보스 블라인드{}를 {C:attention}무력화{}하고",
                    "점수 목표를 {C:attention}절반{}으로 감소시킵니다",
                } 
            },
            j_poke_rhyhorn = {
                name = '뿔카노',      
                text = {
                    "플레이한 모든 {C:attention}석재{} 카드는",
                    "득점 시 영구적으로",
                    "{C:chips}+#1#{} 칩을 획득합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_rhydon = {
                name = '코뿌리',      
                text = {
                    "플레이한 모든 {C:attention}석재{} 카드는 득점 시",
                    "영구적으로 {C:chips}+#1#{} 칩을 획득합니다",
                    "{br:4}오류 - STEAK에게 문의바람",
                    "{C:attention}첫 번째{} 득점한 {C:attention}석재{} 카드를 재트리거합니다",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_chansey = {
                name = '럭키',      
                text = {
                    "매 라운드 처음으로 {C:attention}럭키{} 카드가",
                    "{C:attention}#1#{} {C:inactive}[#2#]{}회 발동하면,",
                    "그 카드의 영구적인 복제본을 덱에 추가하고",
                    "손으로 가져옵니다",
                    "{C:inactive,s:0.8}(덱의 25% 이상이 {C:attention,s:0.8}럭키{C:inactive,s:0.8} 카드일 때 진화)"
                } 
            },
            j_poke_tangela = {
                name = '덩쿠리',      
                text = {
                    "플레이한 {C:attention}와일드{} 카드가",
                    "{C:mult}+#1#{} 배수, {C:chips}+#2#{} 칩, 또는 {C:money}$#3#{}를 제공합니다",
                    "{C:green}#4# / #5#{} 확률로 {C:attention}모두{} 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#6#{C:inactive,s:0.8}장의 와일드 카드 득점 시 진화)"
                } 
            },
            j_poke_kangaskhan = {
                name = '캥카',      
                text = {
                    "{C:attention}+#1#{} 소모품 슬롯",
                    "{C:mult}-$#2#{} 이자 한도",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = '메가캥카',      
                text = {
                    "플레이한 모든 카드를 {C:attention}재트리거{}합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "이번 라운드에 {C:attention}#1#개 이상의 소모품{}을",
                    "사용했다면 라운드 종료 시",
                    "{C:attention}더블 태그{}를 생성합니다",
                    "{C:inactive}(현재 {C:attention}#2#{C:inactive}개 사용함)"
                } 
            },
            j_poke_horsea = {
                name = '쏘드라',      
                text = {
                    "포커 핸드에 있는",
                    "{C:attention}6{}마다",
                    "{C:mult}+#2#{} 배수 증가",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +12일 때 진화)",
                } 
            },
            j_poke_seadra = {
                name = '시드라',      
                text = {
                    "득점한 {C:attention}6{}마다 {C:mult}+#2#{} 배수 증가",
                    "핸드에 {C:attention}킹{}을 보유하고 있다면 2배로 증가",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}({C:dragon,s:0.8}드래곤{C:inactive,s:0.8} 스티커로 진화)"
                } 
            },
            j_poke_goldeen = {
                name = '콘치',      
                text = {
                    "핸드에 {C:attention}보유한{} 각 {C:attention}골드{} 카드를",
                    "{C:attention}#1#{}회 재트리거합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                } 
            },
            j_poke_seaking = {
                name = '왕콘치',      
                text = {
                    "핸드에 {C:attention}보유한{} 각 {C:attention}골드{} 카드를",
                    "{C:attention}#1#{}회 재트리거합니다",
                } 
            },
            j_poke_staryu = {
                name = '별가사리',      
                text = {
                    "플레이한 {C:diamonds}#2#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수 및 {C:money}$#3#{}를 제공합니다",
                    "{C:inactive,s:0.8}(물의돌로 진화){}"
                } 
            },
            j_poke_starmie = {
                name = '아쿠스타',      
                text = {
                    "플레이한 {C:diamonds}#3#{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수 및 {C:money}$#2#{}를 제공합니다",
                } 
            },
            j_poke_mrmime = {
                name = '마임맨',      
                text = {
                    "핸드에 {C:attention}보유한{} 가장 왼쪽 카드를",
                    "{C:attention}#1#{}회 재트리거합니다"
                } 
            },
            j_poke_scyther = {
                name = '스라크',      
                text = {
                    "블라인드 선택 시, 오른쪽 조커를 파괴하고",
                    "{C:mult}+#2#{} 배수를 얻습니다",
                    "파괴된 조커가 {C:rare}레어{} 등급 이상이었다면",
                    "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{}, 또는 {C:dark_edition}폴리크롬{}을 얻습니다",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}({C:metal,s:0.8}강철{C:inactive,s:0.8} 스티커 또는 {C:attention,s:0.8}딱딱한돌{C:inactive,s:0.8}로 진화)",
                } 
            },
            j_poke_jynx = {
                name = '루주라',      
                text = {
                    "{C:attention}블라인드{} 선택 시,",
                    "덱 크기가 {C:attention}#2#{}장 이상이라면",
                    "핸드 크기 {C:attention}+#1#{}를 얻습니다",
                    "{br:4}오류 - STEAK에게 문의바람",
                    "덱에 추가되는 {C:attention}플레잉 카드{}가",
                    "{C:attention}복제됩니다{}",
                } 
            },
            j_poke_electabuzz = {
                name = '에레브',      
                text = {
                    "카드가 {C:attention}판매{}될 때와 라운드 종료 시",
                    "{C:money}$#1#{}의 {C:attention}판매 가치{}를 얻습니다",
                    "{br:3.5}오류 - STEAK에게 문의바람",
                    "라운드 종료 시 이 조커의 판매 가치의",
                    "{C:attention}#2#%{}를 획득합니다 {C:inactive}(올림 처리){}",
                    "{C:inactive}(현재 {C:money}$#3#{C:inactive} 획득/최대 $#4#)",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_magmar = {
                name = '마그마',      
                text = {
                    "라운드의 {C:attention}첫 번째 버리기{}가 단 {C:attention}1{}장이라면,",
                    "그 카드를 파괴하고 {C:mult}+#2#{} 배수를 얻습니다",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(연결의끈으로 진화){}"
                } 
            },
            j_poke_pinsir = {
                name = '쁘사이저',
                text = {
                    "득점한 카드의 랭크가",
                    "핸드에 {C:attention}보유한{} 카드와 {C:attention}같다면{}",
                    "{X:mult,C:white} X#1# {} 배수",
                } 
            },
            j_poke_mega_pinsir = {
                name = '메가쁘사이저',
                text = {
                    "플레이한 {C:attention}강화되지 않은{} 카드가",
                    "득점 시 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                } 
            },
            j_poke_tauros = {
                name = '켄타로스 (리더)',
                text = {
                    "{C:attention}켄타로스{}와 {C:attention}밀탱크{} 조커는",
                    "각각 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                    "{br:4}오류 - STEAK에게 문의바람",
                    "리롤 시 {C:green}#2# / #3#{} 확률로",
                    "상점에 {C:attention}켄타로스 (무리){}를 추가합니다",
                } 
            },
            j_poke_taurosh = {
                name = '켄타로스 (무리)',
                text = {
                    "{C:mult}+#1#{} 배수",
                } 
            },
            j_poke_magikarp = {
                name = '잉어킹',
                text = {
                    "{C:chips}+#2#{} 칩",
                    "{C:attention}첨벙{} 효과 적용",
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}",
                } 
            },
            j_poke_gyarados = {
                name = '갸라도스',
                text = {
                    "{X:mult,C:white} X#1# {} 배수",
                } 
            },
            j_poke_mega_gyarados = {
                name = '메가갸라도스',
                text = {
                    "{X:mult,C:white} X#1# {} 배수",
                    "{br:1.5}오류 - STEAK에게 문의바람",
                    "모든 {C:attention}보스 블라인드{}의",
                    "효과를 무효화합니다"
                } 
            },
            j_poke_lapras = {
                name = '라프라스',
                text = {
                    "이번 런에서 {C:attention}스킵한 블라인드{}마다",
                    "{C:chips}+#2#{} 칩",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "스킵 후 {C:attention}상점{}을",
                    "방문합니다",
                    "{C:inactive}(현재 {C:chips}+#1# {C:inactive}칩)"
                } 
            },
            j_poke_ditto = {
                name = '메타몽',
                text = {
                    "{C:attention}오른쪽 불안정{}",
                    "상점 이용 종료 시,",
                    "가장 왼쪽의 조커로 {C:attention}변신{}하며",
                    "{C:attention}부패{} 속성과 {X:colorless,C:white}노말{} 스티커를 가집니다",
                    "{C:inactive,s:0.8}(메타몽 제외){}",
                } 
            },
            j_poke_eevee = {
                name = '이브이',
                text = {
                    "{X:mult,C:white} X#1# {} 배수",
                    "{C:inactive,s:0.8}(진화체가... 아주 많음){}",
                } 
            },
            j_poke_vaporeon = {
                name = '샤미드',
                text = {
                    "플레이한 모든 {C:attention}카드{}는",
                    "득점 시 영구적으로 {C:chips}+#1#{} 칩을 얻습니다",
                    "{C:attention}보너스{} 카드는 {C:attention}2배{}로 얻습니다"
                } 
            },
            j_poke_jolteon = {
                name = '쥬피썬더',
                text = {
                    "버려진 {C:attention}골드{} 카드마다",
                    "{C:money}$#1#{}를 획득합니다",
                } 
            },
            j_poke_flareon = {
                name = '부스터',
                text = {
                    "핸드에 {C:attention}보유한{}", 
                    "첫 번째 {C:attention}배수{} 카드가", 
                    "{X:mult,C:white} X#1# {} 배수를 제공합니다"
                } 
            },
            j_poke_porygon = {
                name = '폴리곤',
                text = {
                    "{C:pink}+1{} 에너지 한도",
                    "아무 {C:attention}부스터 팩{}을 개봉하면",
                    "{C:pink}에너지{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}({C:item,s:0.8}업그레이드{C:inactive,s:0.8}로 진화){}",
                } 
            },
            j_poke_omanyte = {
                name = '암나이트',
                text = {
                    "{C:attention}고대 #1#{}",
                    "{X:attention,C:white}1+{} : {C:tarot}타로{} 카드 생성",
                    "{X:attention,C:white}2+{} : {C:money}$#2#{} 획득",
                    "{X:attention,C:white}3+{} : {C:item}아이템{} 카드 생성 {C:inactive,s:0.7}({C:attention,s:0.7}#3#{C:inactive,s:0.7}회 발동 시 진화)",
                    "{C:inactive,s:0.8}(공간이 있어야 함)",
                } 
            },
            j_poke_omastar = {
                name = '암스타',
                text = {
                    "{C:attention}고대 #1#{}",
                    "{X:attention,C:white}1+{} : {C:tarot}타로{} 카드 생성",
                    "{X:attention,C:white}2+{} : {C:money}$#2#{} 획득",
                    "{X:attention,C:white}3+{} : {C:item}아이템{} 카드 생성",
                    "{C:inactive,s:0.8}(공간이 있어야 함)",
                    "{X:attention,C:white}4+{} : 라운드당 1회 {C:attention}태그{} 생성{C:inactive}#3#{}",
                } 
            },
            j_poke_kabuto = {
                name = '투구',
                text = {
                    "{C:attention}고대 #1#{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} 칩",
                    "{X:attention,C:white}2+{} : 득점하는 {C:attention}#1#{}들이 영구적으로 {C:chips}+#3#{} 칩 획득",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} 칩 {C:inactive,s:0.8}({C:attention,s:0.8}#5#{C:inactive,s:0.8}회 발동 시 진화)",
                } 
            },
            j_poke_kabutops = {
                name = '투구푸스',
                text = {
                    "{C:attention}고대 #1#{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} 칩",
                    "{X:attention,C:white}2+{} : 득점하는 {C:attention}#1#{}들이 영구적으로 {C:chips}+#3#{} 칩 획득",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} 칩",
                    "{X:attention,C:white}4+{} : 플레이한 모든 {C:attention}#1#{}들을 재트리거",
                } 
            },
            j_poke_aerodactyl = {
                name = '프테라',
                text = {
                    "{C:attention}고대 #1#{}",
                    "{X:attention,C:white}1+{} : {X:mult,C:white}X#2#{} 배수",
                    "{X:attention,C:white}2+{} : {X:mult,C:white}X#3#{} 배수 획득",
                    "{X:attention,C:white}3+{} : 득점하는 첫 번째 강화되지 않은 {C:attention}#1#{}이",
                    "{C:attention}글래스{} 카드가 됨",
                    "{X:attention,C:white}4+{} : 이 조커의 {X:mult,C:white}X{} 배수를 {C:attention}2배{}로 만듦",
                    "{C:inactive}(라운드 종료 시 초기화){}",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = '메가프테라',
                text = {
                    "플레이한 {C:attention}#1#{}들이 득점 시",
                    "플레이한 핸드에 있는 {C:attention}#1#{}마다",
                    "{X:mult,C:white} X#2# {} 배수를 제공합니다",
                    "{br:3.5}오류 - STEAK에게 문의바람",
                    "플레이한 {C:attention}#1#{}들은 각각",
                    "{C:green}#3# / #4#{} 확률로 파괴됩니다",
                } 
            },
            j_poke_snorlax = {
                name = '잠만보',
                text = {
                    "{C:item}먹다남은음식{} 보유 시",
                    "라운드 종료 시 보유한 {C:item}먹다남은음식{}마다",
                    "{X:mult,C:white}X#1#{} 배수를 얻습니다",
                    "{C:inactive}(현재 {X:mult,C:white} X#2# {C:inactive} 배수)"
                } 
            },
            j_poke_articuno = {
                name = '프리져',
                text = {
                    "플레이한 핸드에서 가장 왼쪽의 득점 카드에",
                    "{C:attention}포일{}과 {C:attention}인장{}을",
                    "추가합니다"
                } 
            },
            j_poke_zapdos = {
                name = '썬더',
                text = {
                    "보유한 {C:money}$#2#{}마다",
                    "{X:mult,C:white} X#1# {} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                } 
            },
            j_poke_moltres = {
                name = '파이어',
                text = {
                    "매 라운드 {C:attention}처음 버린{}",
                    "포커 핸드를 {C:attention}3{}레벨",
                    "업그레이드합니다"
                } 
            },
            j_poke_dratini = {
                name = '미뇽',
                text = {
                    "플레이한 핸드가 {C:attention}#3#{}장 이하라면",
                    "{C:mult}+#2#{} 배수 증가",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +#4#일 때 진화)",
                } 
            },
            j_poke_dragonair = {
                name = '신뇽',
                text = {
                    "플레이한 핸드가 {C:attention}#3#{}장 이하라면",
                    "{C:mult}+#2#{} 배수 증가",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +#4#일 때 진화)",
                } 
            },
            j_poke_dragonite = {
                name = '망나뇽',
                text = {
                    "{C:mult}+#1#{} 배수",
                    "{br:1.6}오류 - STEAK에게 문의바람",
                    "플레이한 핸드가 정확히 {C:attention}1{}장이라면",
                    "플레이한 카드를 {C:attention}#2#{}회 재트리거합니다",
                } 
            },
            j_poke_mewtwo = {
                name = '뮤츠',
                text = {
                    "{C:attention}보스 블라인드{} 격파 시,",
                    "가장 왼쪽 {C:attention}조커{}의 {C:dark_edition}폴리크롬{} {C:attention}복제본{}을 생성하고",
                    "그 {C:attention}복제본{}을 {C:pink}에너지화{}한 뒤,",
                    "가장 왼쪽 {C:attention}조커{}를 파괴합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{C:dark_edition}폴리크롬{} 조커는 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                    "{C:inactive}(자신을 파괴할 수 없음)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "메가뮤츠X",
                text = {
                    "모든 조커가 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "메가뮤츠Y",
                text = {
                    "상점 이용 종료 시",
                    "가장 왼쪽 {C:attention}조커{}를 {C:attention}2회{} {C:pink}에너지화{}합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:attention}보스 블라인드{} 격파 시",
                    "{C:pink}+1{} 에너지 한도",
                    "{C:inactive}(자신을 {C:pink}에너지화{C:inactive}할 수 없음)",
                } 
            },
            j_poke_mew = {
                name = '뮤',
                text = {
                    "{C:attention}상점{} 이용 종료 시,",
                    "{C:dark_edition}네거티브{} {C:tarot}타로{},",
                    "{C:spectral}유령{} 또는 {C:item}아이템{} 카드를 생성합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{C:green}#1#%{} 확률로 대신",
                    "{C:dark_edition}네거티브{} 조커를 생성합니다",
                    "{C:inactive,s:0.8}(확률은 증가하지 않음){}",
                } 
            },
            j_poke_chikorita = {
                name = '치코리타',
                text = {
                    "핸드 크기 {C:attention}+#1#{}",
                    "핸드에 {C:attention}4{}장 이상의",
                    "카드를 보유하고 있으면 라운드 종료 시",
                    "초과분 카드당 {C:money}$#2#{}를 획득합니다",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_bayleef = {
                name = '베이리프',
                text = {
                    "핸드 크기 {C:attention}+#1#{}",
                    "핸드에 {C:attention}2{}장 이상의",
                    "카드를 보유하고 있으면 라운드 종료 시",
                    "초과분 카드당 {C:money}$#2#{}를 획득합니다",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_meganium = {
                name = '메가니움',
                text = {
                    "핸드 크기 {C:attention}+#1#{}",
                    "핸드에 보유한 모든 카드가",
                    "라운드 종료 시 각각 {C:money}$#2#{}를 획득하게 합니다",
                }
            },
            j_poke_cyndaquil = {
                name = '브케인',
                text = {
                    "버리기 횟수 {C:red}+#1#{}",
                    "남은 {C:attention}버리기 횟수{}마다",
                    "{C:mult}+#2#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#4#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_quilava = {
                name = '마그케인',
                text = {
                    "버리기 횟수 {C:red}+#1#{}",
                    "남은 {C:attention}버리기 횟수{}마다",
                    "{C:mult}+#2#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#4#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_typhlosion = {
                name = '블레이범',
                text = {
                    "버리기 횟수 {C:red}+#1#{}",
                    "남은 {C:attention}버리기 횟수{}마다",
                    "{C:mult}+#2#{} 배수 및 {X:mult,C:white} X#3# {} 배수",
                    "{C:inactive}(현재 {C:mult}+#4#{C:inactive} 배수 및 {X:mult,C:white} X#5# {C:inactive} 배수)",
                }
            },
            j_poke_totodile = {
                name = '리아코',
                text = {
                    "핸드 횟수 {C:blue}+#1#{}",
                    "이번 라운드에 플레이한 카드마다",
                    "{C:chips}+#2#{} 칩",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive} 칩)",
                    "{C:inactive,s:0.8}(#4# 라운드 후 진화){}",
                }
            },
            j_poke_croconaw = {
                name = '엘리게이',
                text = {
                    "핸드 횟수 {C:blue}+#1#{}",
                    "이번 라운드에 플레이한 카드마다",
                    "{C:chips}+#2#{} 칩",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive} 칩)",
                    "{C:inactive,s:0.8}(#4# 라운드 후 진화){}",
                }
            },
            j_poke_feraligatr = {
                name = '장크로다일',
                text = {
                    "핸드 횟수 {C:blue}+#1#{}",
                    "이번 라운드에 플레이한 카드마다",
                    "{C:chips}+#2#{} 칩",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive} 칩)",
                }
            },
            j_poke_sentret = {
                name = '꼬리선',
                text = {
                    "직전에 플레이한 핸드와 같은 핸드를",
                    "{C:attention}연속{}으로 플레이하면 {C:mult}+#2#{} 배수",
                    "{C:inactive}(마지막 핸드: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / +15일 때 진화)",
                }
            },
            j_poke_furret = {
                name = '다꼬리',
                text = {
                    "직전에 플레이한 핸드와",
                    "같은 핸드를 플레이하면 {C:mult}+#2#{} 배수",
                    "{C:inactive}(마지막 핸드: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(현재 {C:mult}+#1#{} {C:inactive}배수)",
                }  
            },
            j_poke_hoothoot = {
                name = '부우부',
                text = {
                    "{C:purple}+#1# 꿰뚫어보기",
                    "{C:attention}꿰뚫어본{} 카드마다",
                    "해당 카드의 총 칩을 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_noctowl = {
                name = '야부엉',
                text = {
                    "{C:purple}+#1# 꿰뚫어보기",
                    "{C:attention}꿰뚫어본{} 카드마다",
                    "해당 카드의 총 칩을 제공합니다",
                }
            },
            j_poke_ledyba = {
                name = "레디바",
                text = {
                  "덱에 남은 카드 {C:attention}5{}장마다",
                  "{C:mult}+#1#{} 배수",
                  "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)",
                  "{C:inactive}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_ledian = {
                name = "레디안",
                text = {
                  "덱에 남은 카드 {C:attention}3{}장마다",
                  "{C:mult}+#1#{} 배수",
                  "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)",
                }
            },
            j_poke_spinarak = {
                name = "페이검",
                text = {
                  "{C:chips}+#1#{} 칩",
                  "{C:green}#2# / #3#{} 확률로 대신 {C:chips}+#5#{} 칩",
                  "{C:inactive,s:0.8}(#4# 라운드 후 진화){}",
                }
            },
            j_poke_ariados = {
              name = "아리아도스",
              text = {
                "{C:chips}+#1#{} 칩",
                "{C:green}#2# / #3#{} 확률로 대신 {C:chips}+#4#{} 칩",
              }
            },
            j_poke_crobat = {
                name = '크로뱃',
                text = {
                    "{C:attention}보너스{} / {C:attention}석재{} 카드로 득점 시 {C:chips}+#4#{} 칩",
                    "{C:attention}배수{} / {C:attention}와일드{} 카드로 득점 시 {C:mult}+#2#{} 배수",
                    "{C:attention}스틸{} / {C:attention}글래스{} 카드로 득점 시 {X:mult,C:white}X#6#{} 배수",
                    "{C:attention}골드{} / {C:attention}럭키{} 카드로 득점 시 {C:money}$#8#{} 획득",
                    "그 후 득점 카드의 {C:dark_edition}강화{}를 {C:attention}무작위로 변경{}합니다",
                    "{C:inactive}(현재 {C:chips}+#3#{}, {C:mult}+#1#{}, {X:mult,C:white}X#5#{}, 라운드 종료 시 {C:money}$#7#{C:inactive})"
                } 
            },
            j_poke_chinchou = {
                name = "초라기",
                text = {
                  "플레이한 핸드에 {C:attention}페어{}가 포함되면",
                  "{C:chips}+#1#{} 칩을 제공하고 {C:money}$#2#{}를 획득합니다",
                  "{C:inactive}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_lanturn = {
                name = "랜턴",
                text = {
                  "플레이한 핸드에 {C:attention}페어{}가 포함되면",
                  "{C:chips}+#1#{} 칩을 제공하고 {C:money}$#2#{}를 획득합니다",
                  "{br:3}오류 - STEAK에게 문의바람",
                  "{X:water,C:white}물{} 조커당 추가 {C:chips}+#3#{} 칩",
                  "{X:lightning,C:black}전기{} 조커당 추가 {C:money}$#4#{}",
                  "{C:inactive}(현재 {C:chips}+#6#{C:inactive} 칩 및 {C:money}$#5#{C:inactive})"
                }
            },
            j_poke_pichu = {
                name = '피츄',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#2# {} 배수",
                    "라운드 종료 시",
                    "{C:money}$#1#{} 획득",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                } 
            },
            j_poke_cleffa = {
                name = '삐',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브{} {C:tarot}달{} 카드의",
                    "복제본을 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_igglybuff = {
                name = '푸푸린',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브{} {C:tarot}세계{} 카드의",
                    "복제본을 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_togepi = {
                name = '토게피',
                text = {
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}",
                }
            },
            j_poke_togetic = {
                name = '토게틱',
                text = {
                    "{C:attention}럭키{} 카드는",
                    "{C:green}#1# / #2#{} 확률로 {C:chips}+#4#{} 칩을 제공하고",
                    "{C:green}#1# / #3#{} 확률로 {X:mult,C:white}X#5#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(빛의돌로 진화){}"
                }
            },
            j_poke_natu = {
                name = '네이티',
                text = {
                    "{C:planet}행성{} 카드가 레벨을 추가로 올려줍니다",
                    "{C:inactive,s:0.8}(#1# 라운드 후 진화){}",
                }
            },
            j_poke_xatu = {
                name = '네이티오',
                text = {
                    "{C:planet}행성{} 카드가 레벨을 추가로 올려줍니다",
                    "{C:planet}천체 팩{}에 모든 {C:planet}행성{} 카드가 포함됩니다",
                }
            },
            j_poke_mareep = {
                name = "메리프",
                text = {
                  "덱에 {C:attention}플레잉 카드{}가 {C:attention}추가{}될 때마다 {X:mult,C:white}X#2#{} 배수 증가",
                  "{br:3}오류 - STEAK에게 문의바람",
                  "덱에서 {C:attention}플레잉 카드{}가 {C:attention}파괴{}되면 {X:mult,C:white}X#3#{} 배수 감소",
                  "{C:inactive}(배수 {X:mult,C:white}X#1#{C:inactive} / X#4#일 때 진화)",
                }
            },
            j_poke_flaaffy = {
                name = "보송송",
                text = {
                  "덱에 {C:attention}플레잉 카드{}가 {C:attention}추가{}될 때마다 {X:mult,C:white}X#2#{} 배수 증가",
                  "{br:3}오류 - STEAK에게 문의바람",
                  "덱에서 {C:attention}플레잉 카드{}가 {C:attention}파괴{}되면 {X:mult,C:white}X#3#{} 배수 감소",
                  "{C:inactive}(배수 {X:mult,C:white}X#1#{C:inactive} / X#4#일 때 진화)",
                }
            },
            j_poke_ampharos = {
                name = "전룡",
                text = {
                  "덱에 {C:attention}플레잉 카드{}가 {C:attention}추가{}될 때마다 {X:mult,C:white}X#2#{} 배수 증가",
                  "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                }
            },
            j_poke_mega_ampharos = {
                name = "메가전룡",
                text = {
                  "{X:mult,C:white} X#1# {} 배수",
                  "블라인드 선택 시, 핸드 크기를",
                  "덱 크기의 {C:attention}절반{}으로 늘린 뒤",
                  "모든 버리기 횟수를 잃고",
                  "핸드 횟수를 {C:attention}1{}회로 만듭니다",
                  "{C:inactive}(올림 처리, 현재 {C:attention}#2#{C:inactive})"
                }
            },
            j_poke_marill = {
                name = '마릴',
                text = {
                    "플레이한 핸드에 득점하는 {C:attention}강화되지 않은{} 카드와",
                    "득점하는 {C:attention}강화된{} 카드가 포함되면 {X:mult,C:white}X#2#{} 배수",
                    "{C:inactive,s:0.8}(보너스 카드를 {C:attention,s:0.8}#1#{C:inactive,s:0.8}장 득점 시 진화)",
                }
            },
            j_poke_azumarill = {
                name = '마릴리',
                text = {
                    "{X:mult,C:white}X#1#{} 배수",
                    "플레이한 핸드에 득점하는 {C:attention}비-보너스{} 카드와",
                    "득점하는 {C:attention}보너스{} 카드가 포함되면",
                    "{X:mult,C:white}X{} 배수를 {C:attention}2배{}로 만듭니다"
                }
            },
            j_poke_sudowoodo = {
                name = "꼬지모",
                text = {
                  "{C:attention}플레이한{} 또는 {C:attention}보유한{}",
                  "{C:attention}그림{} 카드를 모두 재트리거합니다",
                }
            },
            j_poke_weird_tree = {
                name = "이상한 나무",
                text = {
                  "{C:attention}타입 변경: {X:grass,C:white}풀{}",
                  "이 조커가 {X:grass,C:white}풀{} 타입이 아니거나",
                  "{X:water,C:white}물{} 타입을 보유하고 있다면",
                  "라운드 종료 시 {C:}변신{}합니다"
                }
            },
            j_poke_bellossom = {
                name = '아르코',
                text = {
                    "플레이한 {C:attention}홀수{} 랭크 카드가",
                    "득점 시 {C:mult}+#1#{} 배수를 주거나",
                    "{C:attention}와일드{} 카드가 됩니다",
                    "이미 {C:attention}와일드{}라면, {C:dark_edition}포일{},",
                    "{C:dark_edition}홀로그램{} 또는 {C:dark_edition}폴리크롬{} 에디션을 추가합니다"
                } 
            },
            j_poke_politoed = {
                name = '왕구리',
                text = {
                    "플레이한 {V:1}#2#{} 카드가 득점 시 {C:mult}+#1#{} 배수",
                    "{br:5}오류 - STEAK에게 문의바람",
                    "보유한 {X:water,C:white}물{} 조커 수에 따라",
                    "{V:1}#2#{} 카드를 재트리거합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{C:inactive,s:0.8}회 재트리거를 득점 카드에 균등 분배){}",
                    "{s:0.8}득점 후 수트가 순환됩니다 {C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                } 
            },
            j_poke_hoppip = {
                name = '통통코',
                text = {
                    "{C:attention}+#1#{} 핸드 크기",
                    "처음 {C:attention}버린 카드 2장{}이 {C:attention}와일드{}가 됩니다",
                    "버릴 때 {S:1.1,C:red,E:2}자폭합니다{}",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_skiploom = {
                name = '두코',
                text = {
                    "{C:attention}+#1#{} 핸드 크기",
                    "처음 {C:attention}버린 카드 3장{}이 {C:attention}와일드{}가 됩니다",
                    "버릴 때 {S:1.1,C:red,E:2}자폭합니다{}",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_jumpluff = {
                name = '솜솜코',
                text = {
                    "{C:attention}+#1#{} 핸드 크기",
                    "모든 {C:attention}버린 카드{}가 {C:attention}와일드{}가 됩니다",
                    "버릴 때 {S:1.1,C:red,E:2}자폭합니다{}",
                }
            },
            j_poke_aipom = {
              name = "에이팜",
              text = {
                "{C:attention}-#3#{} 카드 선택 제한",
                "{C:inactive}(내기/버리기 제한)",
                "{br:2}오류 - STEAK에게 문의바람",
                "모든 {C:attention}플러시{}와 {C:attention}스트레이트{}를",
                "{C:attention}3{}장의 카드로 만들 수 있습니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8}번의 스트레이트와 {C:attention,s:0.8}#2#{C:inactive,s:0.8}번의 플러시 플레이 후 진화){}"
              }
            },
            j_poke_sunkern = {
                name = '해너츠',
                text = {
                    "{C:attention}블라인드{} 선택 시와",
                    "핸드를 {C:attention}플레이{}할 때 {C:money}$#1#{} 획득",
                    "{C:inactive,s:0.8}(태양의돌로 진화){}"
                }
            },
            j_poke_sunflora = {
                name = '해루미',
                text = {
                    "{C:attention}블라인드{} 선택 시, 핸드 {C:attention}플레이{} 시,",
                    "핸드 {C:attention}버리기{} 시, 소모품 {C:attention}사용{} 시,",
                    "그리고 라운드 종료 시 {C:money}$#1#{} 획득",
                }
            },
            j_poke_wooper = {
                name = "우파",
                text = {
                  "{C:mult}+#1#{} 배수",
                  "덱에 남은 {C:attention}그림{} 카드마다",
                  "{C:mult}-#3#{} 배수",
                  "{C:inactive}(현재 {C:mult}+#4#{C:inactive} 배수)",
                  "{C:inactive}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_quagsire = {
                name = "누오",
                text = {
                  "{C:mult}+#1#{} 배수",
                  "덱에 남은 {C:attention}그림{} 카드마다",
                  "{C:mult}-#2#{} 배수",
                  "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)",
                }
            },
            j_poke_yanma = {
              name = "왕자리",
              text = {
                "플레이한 {C:attention}3{} 또는 {C:attention}6{}이",
                "득점 시 {C:chips}+#2#{} 칩과 {C:mult}+#1#{} 배수를 제공합니다",
                "{C:green}#5# / #6#{} 확률로 대신 {C:chips}+#4#{} 칩",
                "및 {C:mult}+#3#{} 배수를 제공합니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{C:inactive,s:0.8}장의 3 또는 6 득점 시 진화)"
              }
            },
            j_poke_espeon = {
                name = '에브이',
                text = {
                    "플레이한 각 {C:attention}#3#{} 카드를 재트리거합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "득점한 각 {V:1}#4#{} 카드는",
                    "{X:mult,C:white}X#2#{} 배수를 제공합니다",
                    "{C:inactive,s:0.7}랭크와 수트는 매 라운드 변경됩니다{}"
                } 
            },
            j_poke_umbreon = {
                name = '블래키',
                text = {
                    "버려진 {C:attention}#1#{}의 레벨을 낮추고",
                    "가장 많이 플레이한 {C:attention}포커 핸드{}의",
                    "레벨에 더합니다",
                    "{C:inactive,s:0.7}핸드는 매 라운드 변경됩니다{}"
                } 
            },
            j_poke_murkrow = {
              name = "니로우",
              text = {
                "보유한 {X:dark,C:white}악{} 조커마다 {X:mult,C:white} X#1# {} 배수",
                "{C:inactive}(현재 {X:mult,C:white} X#2#{C:inactive} 배수)",
                "{C:inactive,s:0.8}(어둠의돌로 진화){}"
              }
            },
            j_poke_slowking = {
                name = '야도킹',
                text = {
                    "플레이한 {C:attention}킹{}이 득점 시",
                    "{X:mult,C:white}X#1#{} 배수 제공",
                    "핸드를 플레이할 때마다 {X:mult,C:white}X#2#{} 배수 증가",
                    "{C:inactive,s:0.8}(라운드 종료 시 초기화){}",
                }
            },
            j_poke_misdreavus = {
                name = '무우마',
                text = {
                    "플레이한 {C:attention}그림{} 카드는 득점 시",
                    "영구적으로 최대 {C:chips}#1#{} 칩을 잃고",
                    "잃은 만큼의 칩을 이 조커가 얻습니다",
                    "{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)",
                    "{C:inactive,s:0.8}(어둠의돌로 진화){}",
                }
            },
            j_poke_unown = {
                name = "안농",
                text = {
                  "{C:attention}네이처:{} {C:inactive}({C:attention}#2#{C:inactive})",
                  "플레이한 핸드에 {C:attention}네이처{} 카드가",
                  "포함되면 {C:mult}+#1#{} 배수",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "라운드 종료 시 {S:1.1,C:red,E:2}자폭합니다{}",
                }
            },
            j_poke_wobbuffet = {
              name = "마자용",
              text = {
                "플레이한 {C:attention}6{}, {C:attention}7{}, {C:attention}8{}, {C:attention}9{}, {C:attention}10{}을 재트리거합니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "{C:attention}왼쪽 불안정{}",
                "{C:attention}블라인드{} 선택 시",
                "오른쪽 조커에 {C:attention}이터널{}을 부여합니다",
              }
            },
            j_poke_girafarig = {
              name = "키링키",
              text = {
                "플레이한 핸드에 {C:attention}투 페어{}가 포함되면",
                "처음과 마지막 {C:attention}그림{} 카드가",
                "득점 시 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}2{C:inactive,s:0.8}장의 그림 카드에 {C:attention,s:0.8}죽음{C:inactive,s:0.8} 카드를 사용하면 진화){}"
              }
            },
            j_poke_pineco = {
              name = "피콘",
              text = {
                "{C:attention}왼쪽 불안정{}",
                "{C:chips}+#1#{} 칩을 제공한 뒤",
                "이번 라운드 동안 자신을 무효화합니다",
                "{C:inactive}(#2# 라운드 동안 무효화되지 않으면 진화){}",
              }
            },
            j_poke_forretress = {
              name = "쏘콘",
              text = {
                "{C:attention}왼쪽 불안정{}",
                "{C:chips}+#1#{} 칩을 제공한 뒤",
                "이번 라운드 동안 자신을 무효화합니다",
                "핸드에 {C:attention}스틸{} 카드를 {C:attention}보유{} 중이라면",
                "{C:attention}2배{}의 칩을 제공합니다",
              }
            },
            j_poke_dunsparce = {
                name = '노고치',
                text = {
                  "{C:inactive}아무것도 안 함...?",
                  "{C:green}리롤{} 시 상점 이용 종료 때",
                  "{S:1.1,C:red,E:2}자폭합니다{}",
                  "{C:inactive,s:0.8}(#1# 라운드 후 진화){}",
                }
            },
            j_poke_gligar = {
                name = '글라이거',
                text = {
                    "핸드에 {C:attention}보유한{} 각 {V:1}#2#{} 카드마다",
                    "플레이한 카드가 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                    "{C:inactive, s:0.8}(수트는 매 라운드 변경됩니다)",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}(어둠의돌로 진화){}",
                }
            },
            j_poke_steelix = {
                name = '강철톤',
                text = {
                    "라운드의 {C:attention}첫 핸드{}에서",
                    "가장 왼쪽 득점 카드가 {C:attention}스틸{} 카드가 됩니다",
                    "{br:4}오류 - STEAK에게 문의바람",
                    "핸드에 보유한 {C:attention}석재{} 카드가 {C:attention}스틸{} 카드가 됩니다"
                } 
            },
            j_poke_mega_steelix = {
                name = "메가강철톤",
                text = {
                  "라운드 종료 시 {C:attention}전체 덱{}에 있는 {C:diamonds}#2#{}마다",
                  "{C:money}$#1#{}를 획득합니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "핸드에 보유한 {C:diamonds}#2#{C:attention}가 아닌 스틸{} 카드는",
                  "{C:diamonds}#3#{}이 되고",
                  "{C:attention}강화{}를 잃습니다",
                }
            },
            j_poke_snubbull = {
                name = '블루',
                text = {
                    "첫 번째로 플레이한 {C:attention}그림{} 카드가",
                    "득점 시 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_granbull = {
                name = '그랑블루',
                text = {
                    "첫 번째로 플레이한 {C:attention}그림{} 카드가",
                    "{C:attention}퀸{}이면 득점 시 {X:mult,C:white}X#2#{} 배수,",
                    "그렇지 않으면 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                }
            },
            j_poke_qwilfish = {
                name = '침바루',
                text = {
                    "{C:purple}+#1# 해저드",
                    "{C:attention}강화된{} 카드가 파괴될 때마다",
                    "{C:chips}+#2#{} 칩을 얻습니다",
                    "{C:inactive}(현재 {C:chips}+#3#{C:inactive} 칩)",
                }
            },
            j_poke_scizor = {
                name = '핫삼',
                text = {
                    "블라인드 선택 시, 오른쪽 조커를 파괴하고",
                    "{C:mult}+#4#{} 배수를 얻습니다",
                    "파괴된 조커가 {C:red}레어{} 등급 이상이었다면",
                    "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{}, 또는 {C:dark_edition}폴리크롬{}을 얻습니다",
                    "이 에디션들은 이 조커에 {C:attention}중첩{}됩니다",
                    "{C:inactive,s:0.8}(가능하면 파괴된 조커의 에디션을 따릅니다){}",
                    "{C:inactive}(현재 {C:chips}+#2#{} {C:inactive}칩, {C:mult}+#1#{} {C:inactive}배수, {X:mult,C:white}X#3#{} {C:inactive}배수)"
                } 
            },
            j_poke_mega_scizor = {
                name = "메가핫삼",
                text = {
                  "{C:blue}커먼{} 조커들이 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "라운드 종료 시 모든 {C:blue}커먼{} 조커를",
                  "파괴합니다"
                }
            },
            j_poke_shuckle = {
                name = "단단지",
                text = {
                  "블라인드 선택 시, 가장 왼쪽의",
                  "{C:attention}소모품{}을 파괴하고",
                  "{C:item}나무열매 주스{} 카드를 생성합니다",
                  "{C:inactive}({C:item}나무열매 주스{C:inactive}는 파괴할 수 없음)"
                }
            },
            j_poke_sneasel = {
                name = '포푸니',
                text = {
                    "플레이한 핸드가 단 한 장의 {C:attention}#3#{}라면 파괴하고,",
                    "{C:money}$#4#{}를 획득하며 이 조커는 {X:mult,C:white}X#1#{} 배수를 얻습니다,",
                    "{C:attention}보스 블라인드{} 격파 시 초기화됩니다",
                    "{C:inactive,s:0.8}(랭크는 매 라운드 변경됩니다){}",
                    "{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수){}",
                    "{C:inactive,s:0.8}(어둠의돌로 진화){}",
                }
            },
            j_poke_teddiursa = {
              name = "깜지곰",
              text = {
                "아무 {C:attention}부스터 팩{}을 스킵할 때마다",
                "{C:mult}+#2#{} 배수를 얻습니다",
                "{C:inactive}(배수 {C:mult}+#1#{C:inactive} / #3#일 때 진화)",
              }
            },
            j_poke_ursaring = {
              name = "링곰",
              text = {
                "아무 {C:attention}부스터 팩{}을 스킵할 때마다",
                "{C:mult}+#2#{} 배수를 얻고 {C:item}아이템{}을 생성합니다",
                "{C:inactive,s:0.8}(공간이 있어야 함)",
                "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                "{C:inactive,s:0.8}(달의돌로 진화){}",
              }
            },
            j_poke_slugma = {
              name = "마그마그",
              text = {
                "매 {C:attention}4{} {C:inactive}[#4#]{}번의 핸드를 플레이할 때마다,",
                "득점 후 핸드에 {C:attention}보유한{} 첫 번째 카드를 파괴하고",
                "이 조커는 {C:chips}+#2#{} 칩을 얻습니다",
                "{C:inactive}(칩 {C:chips}+#1#{C:inactive} / #3#일 때 진화)",
              }
            },
            j_poke_magcargo = {
                name = "마그카르고",
                text = {
                  "매 {C:attention}3{} {C:inactive}[#3#]{}번의 핸드를 플레이할 때마다,",
                  "득점 후 핸드에 {C:attention}보유한{} 첫 번째 카드를 파괴하고",
                  "이 조커는 {C:chips}+#2#{} 칩을 얻습니다",
                  "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                }
            },
            j_poke_swinub = {
                name = "꾸꾸리",
                text = {
                  "첫 번째로 플레이한 카드가 포커 핸드에 있는",
                  "각 {C:attention}석재{} 및 {C:attention}글래스{} 카드마다 {C:mult}+#1#{} 배수를 제공합니다",
                  "{br:2}텍스트가 작동하려면 여기 있어야 함",
                  "{C:green}#3# / #4#{} 확률로 라운드 종료 시",
                  "{C:money}$#2#{}를 획득합니다",
                  "{C:inactive,s:0.8}(#5# 라운드 후 진화){}",
                }
            },
            j_poke_piloswine = {
              name = "메꾸리",
              text = {
                "첫 번째로 플레이한 카드가 포커 핸드에 있는",
                "각 {C:attention}석재{} 및 {C:attention}글래스{} 카드마다 {C:mult}+#1#{} 배수를 제공합니다",
                "{br:2}텍스트가 작동하려면 여기 있어야 함",
                "{C:green}#3# / #4#{} 확률로 라운드 종료 시",
                "{C:money}$#2#{}를 획득합니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#5#{C:inactive,s:0.8}장의 석재 또는 글래스 카드 득점 시 진화)",
              }
            },
            j_poke_heracross = {
                name = '헤라크로스',
                text = {
                    "득점한 어떤 카드도 핸드에 {C:attention}보유한{} 카드와",
                    "{C:attention}같은 랭크{}가 아니라면",
                    "{X:mult,C:white} X#1# {} 배수"
                }
            },
            j_poke_mega_heracross = {
                name = "메가헤라크로스",
                text = {
                  "플레이한 모든 카드를 {C:attention}2회{} 재트리거합니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "{C:attention}5{}장 미만의 카드를",
                  "플레이하거나 버리면",
                  "이번 라운드 동안 능력이 무효화됩니다",
                  "{C:inactive}(득점 전 무효화됨)"
                }
            },
            j_poke_corsola = {
              name = '코산호',
              text = {
                "{C:attention}전체 덱{}에 있는 {C:attention}강화된{} 카드마다",
                "{C:mult}+#1#{} 배수",
                "{br:2}오류 - STEAK에게 문의바람",
                "포커 핸드에 {C:attention}5장의 강화된{} 카드가 포함되면",
                "{C:attention}기본{} {X:water,C:white}물{} 조커를 생성합니다",
                "{C:inactive,s:0.8}(공간이 있어야 함)",
                "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)",
              }
            },
            j_poke_remoraid = {
              name = "총어",
              text = {
                "첫 번째로 플레이한 핸드의",
                "모든 카드를 재트리거합니다",
                "{C:inactive}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_octillery = {
              name = "대포무노",
              text = {
                "플레이한 모든 카드를 재트리거합니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "포커 핸드에 {C:attention}8{}이 포함되지 않으면",
                "득점 후 이번 라운드 동안 능력이 무효화됩니다"
              }
            },
            j_poke_delibird = {
                name = "딜리버드",
                text = {
                  "라운드 종료 시,",
                  "{S:1.1,C:green,E:2}선물{}을 받습니다!",
                  "{C:inactive,s:0.8}(공간이 있어야 함)",
                }
            },
            j_poke_mantine = {
                name = "만타인",
                text = {
                  "{C:attention}골드{} 카드가 득점하거나",
                  "핸드에 보유 중일 때 {C:chips}+#2#{} 칩을 얻습니다",
                  "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                }
            },
            j_poke_skarmory = {
                name = '무장조',
                text = {
                    "{C:purple}+#1# 해저드",
                    "핸드에 {C:attention}보유한{} 각 {C:attention}해저드{} 또는",
                    "{C:attention}스틸{} 카드마다 {X:mult,C:white}X#2#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)",
                }
            },
            j_poke_kingdra = {
                name = '킹드라',
                text = {
                    "득점한 {C:attention}6{}마다 {C:mult}+#2#{} 배수 증가",
                    "핸드에 {C:attention}킹{}을 보유하고 있다면,",
                    "득점한 {C:attention}6{}마다 {C:attention}대신{} {X:mult,C:white}X#4#{} 배수를 얻습니다",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수, {X:mult,C:white}X#3#{C:inactive} 배수)",
                } 
            },
            j_poke_phanpy = {
                name = "코코리",
                text = {
                  "{C:attention}5{}장의 득점 카드가 있는",
                  "{C:attention}연속적인{} 플레이된 핸드마다 {X:mult,C:white}X#2#{} 배수 증가",
                  "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                  "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_donphan = {
                name = "코리갑",
                text = {
                  "{C:attention}5{}장의 득점 카드가 있는",
                  "{C:attention}연속적인{} 플레이된 핸드마다 {X:mult,C:white}X#2#{} 배수 증가",
                  "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                }
            },
            j_poke_porygon2 = {
                name = '폴리곤2',
                text = {
                    "{C:pink}+2{} 에너지 한도",
                    "아무 {C:attention}부스터 팩{}을 개봉하면",
                    "가장 왼쪽 조커와 같은 {C:pink}타입{}의",
                    "{C:pink}에너지{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(괴상한패치로 진화){}",
                } 
            },
            j_poke_stantler = {
                name = "노라키",
                text = {
                    "{C:purple}+#1# 꿰뚫어보기",
                    "가장 랭크가 {C:attention}높은{} {C:attention}꿰뚫어본{} 카드의",
                    "랭크를 배수에 추가합니다",
                    "{C:inactive,s:0.8}(#2#회 발동 시 진화){}",
                }
            },
            j_poke_smeargle = {
                name = "루브도",
                text = {
                  "{C:attention}블라인드{} 선택 시",
                  "오른쪽 {C:attention}조커{}의 능력을 {C:attention}스케치{}합니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "{C:attention}번져버린 조커{}를 적용합니다",
                }
            },
            j_poke_tyrogue = {
                name = '배루키',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드의 {C:attention}첫 핸드나 버리기{}가",
                    "정확히 {C:attention}5{}장이라면, 무작위 카드가",
                    "복제되거나 {C:inactive}(플레이 시){} 파괴됩니다 {C:inactive}(버리기 시){}",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }  
            },
            j_poke_hitmontop = {
                name = '카포에라',
                text = {
                    "{X:mult,C:white} X#1# {} 배수",
                    "{C:attention}블라인드{} 선택 시",
                    "덱 크기가 정확히 {C:attention}#2#{}장이라면",
                    "{X:mult,C:white} X#3# {} 배수를 얻습니다",
                } 
            },
            j_poke_smoochum = {
                name = '뽀뽀라',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "이 조커가 진화할 때",
                    "{C:attention}표준 태그{}를 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_elekid = {
                name = '에레키드',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "이 조커가 진화할 때",
                    "{C:attention}쿠폰 태그{}를 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_magby = {
                name = '마그비',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "{C:red}+#2#{} 버리기 횟수",
                    "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_houndour = {
              name = "델빌",
              text = {
                "{C:attention}3{}장 넘게 버릴 경우",
                "핸드에 {C:attention}보유한{} 무작위 카드 {C:attention}#3#{}장도 함께 버려집니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "버려진 카드는 영구적으로 {C:mult}+#1#{} 배수를 얻습니다",
                "{C:inactive}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_houndoom = {
              name = "헬가",
              text = {
                "{C:attention}3{}장 넘게 버릴 경우",
                "핸드에 {C:attention}보유한{} {C:attention}모든{} 카드도 함께 버려집니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "버려진 카드는 영구적으로 {C:mult}+#1#{} 배수를 얻습니다",
              }
            },
            j_poke_mega_houndoom = {
                name = "메가헬가",
                text = {
                  "카드를 버리면 핸드에 {C:attention}보유한{}",
                  "{C:attention}모든{} 카드도 함께 버려집니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "카드가 버려질 때마다 {X:mult,C:white} X#2# {} 배수 증가",
                  "라운드 종료 시 초기화",
                  "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수)"
                }
            },
            j_poke_miltank = {
                name = "밀탱크",
                text = {
                  "라운드 종료 시 보유한", 
                  "{X:colorless,C:white}노말{} 조커마다 {C:money}$#1#{} 획득",
                  "{C:inactive}(현재 {C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = '해피너스',
                text = {
                    "매 라운드 처음으로 {C:attention}럭키{} 카드가",
                    "{C:attention}#1#{} {C:inactive}[#2#]{}회 발동하면,",
                    "그 카드의 영구적인 {C:dark_edition}폴리크롬{} 복제본을 덱에 추가하고",
                    "손으로 가져옵니다",
                } 
            },
            j_poke_raikou = {
                name = "라이코",
                text = {
                  "첫 번째로 플레이한 핸드가 {C:attention}1{}장이라면,",
                  "핸드에 {C:attention}보유한{} 카드 {C:attention}3{}장을",
                  "그 카드의 {C:attention}랭크{}로 바꾸고 {C:money}$#1#{}를 획득합니다",
                }
            },
            j_poke_entei = {
                name = "앤테이",
                text = {
                  "{C:attention}첫 버리기{}가 정확히 {C:attention}4{}장이라면,",
                  "그 중 하나를 파괴하고 {X:red,C:white}X#2#{} 배수를 얻습니다",
                  "{C:inactive}(현재 {X:red,C:white}X#1#{C:inactive} 배수)",
                }
            },
            j_poke_suicune = {
                name = "스이쿤",
                text = {
                  "플레이한 핸드에서 득점하는 각 카드의",
                  "총 칩을 영구적으로 {C:attention}2배{}로 만듭니다",
                  "{C:inactive}(증가 시 최대 {C:chips}+#1#{C:inactive} 칩)",
                }
            },
            j_poke_larvitar = {
                name = "에버라스",
                text = {
                  "플레이한 핸드가 {C:attention}풀 하우스{}라면",
                  "모든 플레이한 카드가 득점 시 영구적으로",
                  "{C:chips}+#1#{} 칩을 얻습니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}번의 풀 하우스 플레이 후 진화)"
                }
            },
            j_poke_pupitar = {
                name = "데기라스",
                text = {
                  "플레이한 핸드가 {C:attention}풀 하우스{}라면",
                  "모든 플레이한 카드가 득점 시 영구적으로",
                  "{C:chips}+#1#{} 칩을 얻습니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}번의 풀 하우스 플레이 후 진화)"
                }
            },
            j_poke_tyranitar = {
                name = "마기라스",
                text = {
                  "플레이한 핸드가 {C:attention}풀 하우스{}라면, 각 플레이한 카드는",
                  "득점 시 영구적으로 최대 {C:chips}#1#{} 칩을 잃고",
                  "칩을 잃었다면 영구적으로 {X:mult,C:white}X#2#{} 배수를 얻습니다"
                }
            },
            j_poke_mega_tyranitar = {
                name = "메가마기라스",
                text = {
                  "플레이한 핸드가 {C:attention}풀 하우스{}라면",
                  "그 레벨을 상승시키고, 플레이한 카드는",
                  "{C:attention}풀 하우스{}의 레벨만큼",
                  "영구적으로 {C:chips}칩{}을 얻습니다"
                }
            },
            j_poke_lugia = {
              name = "루기아",
              text = {
                "{C:attention}블라인드{} 동안 뽑은 카드",
                "매 {C:attention}#3#{} {C:inactive}[#4#]{}장마다 {X:mult,C:white} X#2# {} 배수 증가",
                "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수){}"
              }
            },
            j_poke_ho_oh = {
                name = "칠색조",
                text = {
                  "매 라운드 처음으로 {C:attention}소모품{}을",
                  "사용할 때, 그것의",
                  "{C:dark_edition}폴리크롬{} 복제본을 생성합니다",
                  "{C:inactive}(공간이 있어야 함)",
                }
            },
            j_poke_celebi = {
                name = "세레비",
                text = {
                    "{C:attention}블라인드{}를 {C:attention}#1#{} {C:inactive}[#3#]{}번 스킵하면 {C:attention}-#2#{} 앤티",
                    "{C:inactive}(필요한 스킵 횟수는 매번 증가함)",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "플레이한 라운드마다 {X:mult,C:white} X#4# {} 배수",
                    "{C:inactive}(현재 {X:mult,C:white} X#5# {C:inactive} 배수){}"
                    
                } 
            },
            j_poke_treecko = {
                name = "나무지기",
                text = {
                    "{C:attention}+#3#{} 핸드 크기, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:money}$#1#{}를 획득합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화){}",
                } 
            },
            j_poke_grovyle = {
                name = "나무돌이",
                text = {
                    "{C:attention}+#3#{} 핸드 크기, {C:attention}네이처: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:money}$#1#{} 또는 {C:money}$#4#{}를 획득합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화){}",
                } 
            },
            j_poke_sceptile = {
                name = "나무킹",
                text = {
                    "{C:attention}+#3#{} 핸드 크기, {C:attention}네이처: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시 {C:money}$#1#{}를 획득하며,",
                    "다른 {X:grass,C:white}풀{} 조커 하나당",
                    "{C:money}$#5#{}를 추가로 획득합니다",
                    "{C:inactive}(현재 총 {C:money}$#4#{C:inactive} 획득){}"
                } 
            },
            j_poke_torchic = {
                name = "아차모",
                text = {
                    "{C:mult}+#3#{} 버리기 횟수, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화){}",
                } 
            },
            j_poke_combusken = {
                name = "영치코",
                text = {
                    "{C:mult}+#3#{} 버리기 횟수, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화){}",
                } 
            },
            j_poke_blaziken = {
                name = "번치코",
                text = {
                    "{C:mult}+#3#{} 버리기 횟수, {C:attention}네이처: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:mult}+#1#{} 배수를 제공합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "이번 라운드에 {C:attention}네이처{} 카드를 {C:attention}#4# {C:inactive}[#5#]장",
                    "버렸다면, 각 {X:fire,C:white}불꽃{} 또는 {X:fighting,C:white}격투{} 조커가",
                    "{X:mult,C:white} X#2# {} 배수를 제공합니다"
                } 
            },
            j_poke_mudkip = {
                name = "물짱이",
                text = {
                    "{C:chips}+#3#{} 핸드 횟수, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:chips}+#1#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화)"
                } 
            },
            j_poke_marshtomp = {
                name = "늪짱이",
                text = {
                    "{C:chips}+#3#{} 핸드 횟수, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:chips}+#1#{} 칩을 제공합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}회 발동 시 진화)"
                } 
            },
            j_poke_swampert = {
                name = "대짱이",
                text = {
                    "{C:chips}+#2#{} 핸드 횟수, {C:attention}네이처: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "플레이한 {C:attention}네이처{} 카드가 득점 시",
                    "{C:chips}+#1#{} 칩을 제공합니다",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "포커 핸드에 {C:attention}#3#장의 네이처{} 카드가 포함되어 있다면",
                    "보유한 {X:water,C:white}물{} 또는 {X:earth,C:white}땅{} 조커 {C:attention}2{}개당",
                    "{C:tarot}타로{} 카드를 1장 생성합니다 {C:inactive}(공간이 있어야 함){}"
                } 
            },
            j_poke_poochyena = {
              name = "포챠나",
              text = {
                "{C:attention}플레잉 카드{}가 파괴될 때마다",
                "{C:mult}+#2#{} 배수를 얻습니다",
                "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
              }
            },
            j_poke_mightyena = {
              name = "그라에나",
              text = {
                "{C:attention}플레잉 카드{}가 파괴될 때마다",
                "{C:mult}+#2#{} 배수를 얻습니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "보유한 {X:dark,C:white}악{} 조커마다",
                "획득량이 {C:mult}+#3#{} 배수 증가합니다",
                "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
              }
            },
            j_poke_zigzagoon = {
              name = "지그제구리",
              text = {
                "핸드를 플레이할 때 {C:green}#1# / #2#{} 확률로",
                "{C:attention}줍기{} {C:item}아이템{}을 생성합니다",
                "{C:inactive}(공간이 있어야 함)",
                "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
              }
            },
            j_poke_linoone = {
              name = "직구리",
              text = {
                "핸드를 플레이할 때 {C:green}#1# / #2#{} 확률로",
                "{C:attention}줍기{} {C:item}아이템{}을 생성합니다",
                "핸드에 {C:attention}스트레이트{}가 포함되어 있다면",
                "확정적으로 생성합니다",
                "{C:inactive}(공간이 있어야 함)"
              }
            },
                        j_poke_wurmple = {
				name = "개무소",
				text = {
					"{C:mult}+3{} 배수 또는 {C:chips}+20{} 칩",
					"{C:attention}성격{}: (무작위 수트)",
					"{C:inactive}(성격 카드 {C:attention}5{}장 득점 시 진화){}"
				}
			},
        
            j_poke_silcoon = {
                name = "실쿤",
                text = {
                    "{C:mult}+#1#{} 배수, {C:attention}성격{}: {C:inactive}({V:1}#2#{C:inactive}){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}성격{C:inactive,s:0.8} 카드 {C:attention,s:0.8}#3#{C:inactive,s:0.8}장 득점 시 진화){}",
                }
            },
            j_poke_beautifly = {
                name = "뷰티플라이",
                text = {
                    "{C:mult}+#1#{} 배수, {C:attention}성격{}: {C:inactive}({V:1}#2#{C:inactive}){}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:green}#3# / #4#{} 확률로",
                    "{C:attention}플러시{} {C:attention}포커 핸드{}의",
                    "레벨을 업그레이드합니다",
                    "{C:attention}성격{} 카드가 득점에 포함된 경우"
                }
            },
            j_poke_cascoon = {
                name = "카스쿤",
                text = {
                    "{C:chips}+#1#{} 칩, {C:attention}성격{}: {C:inactive}({V:1}#2#{C:inactive}){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}성격{C:inactive,s:0.8} 카드 {C:attention,s:0.8}#3#{C:inactive,s:0.8}장 득점 시 진화){}",
                }
            },
            j_poke_dustox = {
                name = "독케일",
                text = {
                    "{C:chips}+#1#{} 칩, {C:attention}성격{}: {C:inactive}({V:1}#2#{C:inactive}){}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "손패에 있는 모든 카드가",
                    "{C:attention}성격{} 카드라면",
                    "{X:mult,C:white} X#3# {} 배수"
                }
            },
            
            
            j_poke_shroomish = {
                name = "버섯꼬",
                text = {
                  "{C:attention}블라인드{} 선택 시, 이번 라운드 동안",
                  "{C:chips}+#1#{} 핸드 횟수, {C:mult}+#2#{} 버리기 횟수, 또는",
                  "{C:attention}+#3#{} 핸드 크기를 얻습니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8}번의 보스 블라인드 격파 후 진화){}"
                }
            }, 
            j_poke_breloom = {
                name = "버섯모",
                text = {
                  "블라인드 선택 시, 이번 라운드 동안",
                  "{C:chips}+#1#{} 핸드 횟수, {C:mult}+#2#{} 버리기 횟수, 또는",
                  "{C:attention}+#3#{} 핸드 크기를 얻습니다"
                }
            }, 
            j_poke_azurill = {
                name = '루리리',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white}X#1#{} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브{} {C:tarot}교황{} 카드의",
                    "복제본을 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_nosepass = {
                name = '코코파스',      
                text = {
                    "첫 번째로 플레이한 {C:attention}그림{} 카드가",
                    "{C:attention}석재{} 카드가 되며",
                    "득점 시 {X:mult,C:white} X#1# {} 배수를 제공합니다",
                    "{C:inactive,s:0.8}(천둥의돌로 진화){}"
                } 
            },
            j_poke_aron = {
                name = '가보리',
                text = {
                    "{C:attention}포커 핸드{}에 있는 {C:attention}스틸{} 카드마다",
                    "{X:mult,C:white}X#2#{} 배수를 얻고, 그 카드들을 파괴합니다",
                    "{C:inactive}(배수 {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive}일 때 진화)",
                }
            },
            j_poke_lairon = {
                name = '갱도라',
                text = {
                    "{C:attention}포커 핸드{}에 있는 {C:attention}스틸{} 및 {C:attention}석재{} 카드마다",
                    "{X:mult,C:white}X#2#{} 배수를 얻고, 그 카드들을 파괴합니다",
                    "{C:inactive}(배수 {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive}일 때 진화)"
                }
            },
            j_poke_aggron = {
                name = '보스로라',
                text = {
                    "{C:attention}포커 핸드{}에 있는 {C:attention}스틸{}, {C:attention}석재{},",
                    "{C:attention}골드{} 카드마다 {X:mult,C:white}X#2#{} 배수를 얻고,",
                    "그 카드들을 파괴합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)"
                }
            },
            j_poke_numel = {
                name = "둔타",
                text = {
                  "{C:attention}#3#{}장의 카드가 득점할 때마다",
                  "{X:red,C:white}X#1#{} 배수",
                  "{C:inactive}#4#장 남음{}",
                  "{C:inactive}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_camerupt = {
              name = "폭타",
              text = {
                "{C:attention}#2#{}장의 카드가 득점할 때마다 {X:red,C:white}X#1#{} 배수,",
                "단 {C:attention}배수{} 카드는",
                "2장으로 계산됩니다",
                "{C:inactive}#3#장 남음{}",
              }
            },
            j_poke_mega_camerupt = {
              name = "메가폭타",
              text = {
                "{C:attention}배수{} 카드가 득점할 때마다",
                "{X:mult,C:white} X#2# {} 배수 증가",
                "라운드 종료 시 초기화",
                "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수)"
              }
            },
            j_poke_lileep = {
                name = "릴링",
                text = {
                  "{C:attention}고대 #1#{}",
                  "{X:attention,C:white}1+{} : 이번 라운드 핸드 크기 {C:attention}+#4#{}",
                  "{X:attention,C:white}2+{} : 자신과 모든 {C:attention}소모품{}에",
                  "판매 가치 {C:money}$#3#{} 추가",
                  "{X:attention,C:white}3+{} : 핸드에 보유한 각 카드마다 {C:chips}+#2#{} 칩",
                  "{C:inactive,s:0.8}({X:attention,C:white,s:0.8}3+{C:inactive,s:0.8} 능력을 {C:attention,s:0.8}#6#{C:inactive,s:0.8}회 발동 시 진화)"
                }
            },
            j_poke_cradily = {
                name = "릴리요",
                text = {
                  "{C:attention}고대 #1#{}",
                  "{X:attention,C:white}1+{} : 이번 라운드 핸드 크기 {C:attention}+#4#{}",
                  "{X:attention,C:white}2+{} : 자신과 모든 {C:attention}소모품{}에",
                  "판매 가치 {C:money}$#3#{} 추가",
                  "{X:attention,C:white}3+{} : 핸드에 보유한 각 카드마다 {C:chips}+#2#{} 칩",
                  "{X:attention,C:white}4+{} : 보유한 {C:attention}소모품{} 중 가장 높은 판매 가치만큼",
                  "{C:money}${} 획득"
                }
            },
            j_poke_anorith = {
                name = "아노딥스",
                text = {
                  "{C:attention}고대 #1#{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} 배수",
                  "{X:attention,C:white}2+{} : {C:green}#3# / #4#{} 확률로",
                  "{C:attention}#1#{}을 덱에 추가",
                  "{X:attention,C:white}3+{} : 덱에서 {C:attention}#1#{}보다 랭크가",
                  "높은 카드를 파괴",
                  "{C:inactive,s:0.8}({X:attention,C:white,s:0.8}3+{C:inactive,s:0.8} 능력을 {C:attention,s:0.8}#5#{C:inactive,s:0.8}회 발동 시 진화)"
                }
            },
            j_poke_armaldo = {
                name = "아말도",
                text = {
                  "{C:attention}고대 #1#{}",
                  "{X:attention,C:white}1+{} : {C:mult}+#2#{} 배수",
                  "{X:attention,C:white}2+{} : {C:green}#3# / #4#{} 확률로",
                  "{C:attention}강화된 #1#{}을 덱에 추가",
                  "{X:attention,C:white}3+{} : 덱에서 {C:attention}#1#{}보다 랭크가",
                  "높은 카드를 파괴",
                  "{X:attention,C:white}4+{} : {C:attention}전체 덱{}에 있는 {C:attention}강화된 #1#{}마다",
                  "{X:mult,C:white} X#5# {} 배수",
                  "{C:inactive}(현재 {X:mult,C:white} X#6# {C:inactive} 배수){}"
                }
            },
            j_poke_feebas = {
                name = '빈티나',
                text = {
                    "{C:mult}+#1#{} 배수",
                    "{C:attention}첨벙{} 효과 적용",
                    "{C:inactive,s:0.8}(고운비늘로 진화){}",
                } 
            },
            j_poke_milotic = {
                name = "밀로틱",
                text = {
                  "포커 핸드가 {C:attention}단일 수트{}라면",
                  "플레이한 모든 카드를 재트리거합니다"
                }
            },
            j_poke_duskull = {
              name = "해골몽",
              text = {
                "라운드의 {C:attention}마지막 핸드{}에서",
                "처음 득점한 {C:attention}4{}장의 카드를 재트리거합니다",
                "{C:inactive}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_dusclops = {
              name = "미라몽",
              text = {
                "라운드의 {C:attention}마지막 핸드{}에서",
                "처음 득점한 {C:attention}4{}장의 카드를 재트리거합니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "마지막 핸드에 {C:attention}득점하지 않은{} 카드가",
                "{C:attention}1{}장 있다면 파괴하고",
                "{C:spectral}유령{} 카드를 생성합니다",
                "{C:inactive}(공간이 있어야 함){}",
                "{C:inactive}(연결의끈으로 진화){}",
              }
            },
            j_poke_absol = {
                name = "앱솔",
                text = {
                  "{X:red,C:white}X#1#{} 배수",
                  "모든 {C:attention}표시된{} {C:green,E:1,S:1.1}확률{}이", 
                  "항상 {C:attention}0{}이 됩니다",
                  "{C:inactive}(예: {C:green}1 / 6{C:inactive} -> {C:green}0 / 6{C:inactive})",
                }
            },
            j_poke_wynaut = {
                name = '마자',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브{} {C:tarot}광대{} 카드의",
                    "복제본을 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_snorunt = {
                name = "눈꼬마",
                text = {
                  "최대 {C:mult}-$#1#{}까지 빚을 질 수 있습니다",
                  "{C:inactive,s:0.8}(빚을 진 상태로 {C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 경과 시 진화)",
                  "{C:inactive,s:0.8}(각성의돌로 진화){}"
                }
            },
            j_poke_glalie = {
                name = "얼음귀신",
                text = {
                  "최대 {C:mult}-$#1#{}까지 빚을 질 수 있습니다",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "라운드 종료 시,",
                  "자금을 {C:money}$0{}으로 만듭니다"
                }
            },
            j_poke_clamperl = {
                name = "진주몽",
                text = {
                    "{C:spectral}영체 {C:attention}태그{}를 보유한 상태에서",
                    "{C:attention}부스터 팩{}을 개봉하면",
                    "핸드 크기 {C:attention}+#1#{}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}연결의끈{C:inactive,s:0.8}으로 진화){}",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}연결의끈{C:inactive,s:0.8}을 판매하면 진화){}",
                }
            },

            j_poke_huntail = {
                name = "헌테일",
                text = {
                    "{C:attention}부스터 팩{}을 개봉하면",
                    "핸드 크기 {C:attention}+#1#{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:tarot}타로{} 또는 {C:item}아이템{} 카드가",
                    "{C:attention}판매{}되면",
                    "{X:mult,C:white} X#2# {} 배수를 획득하고",
                    "손패에 있는 무작위 카드 {C:attention}1{}장을 파괴합니다",
                    "{C:inactive}(현재 {X:mult,C:white} X#3# {C:inactive} 배수)"
                }
            },
            j_poke_gorebyss = {
                name = "분홍장이",
                text = {
                    "{C:attention}부스터 팩{}을 개봉하면",
                    "핸드 크기 {C:attention}+#1#{}",
                    "{br:2}오류 - STEAK에게 문의바람",
                    "{C:tarot}타로{} 또는 {C:item}아이템{} 카드가",
                    "{C:attention}사용{}되면",
                    "{X:mult,C:white} X#2# {} 배수를 획득합니다",
                    "{C:inactive}(현재 {X:mult,C:white} X#3# {C:inactive} 배수)"
                }
            },
            j_poke_relicanth = {
                name = "시라칸",
                text = {
                    "{C:attention}고대 카드 #1#{}장",
                    "{X:attention,C:white}1+{} : 마지막으로 득점한 카드가",
                    "{C:chips}+#2#{} 칩을 제공합니다",
                    "{X:attention,C:white}2+{} : 덱 맨 아래 카드가",
                    "{C:attention}석재{} 카드가 됩니다",
                    "{X:attention,C:white}3+{} : 덱 맨 아래 카드를 뽑고",
                    "{C:money}$#3#{}를 획득합니다",
                    "{X:attention,C:white}4+{} : 마지막으로 득점한 카드가",
                    "{X:mult,C:white} X#4# {} 배수를 제공하며",
                    "{C:attention}석재{} 카드가 아니라면 파괴됩니다",
                } 
            },
            j_poke_luvdisc = {
              name = "사랑동이",
              text = {
                "{C:hearts}하트비늘{} {C:attention}보유 시",
                "{C:attention}첨벙{} 효과 적용",
              }
            },
            j_poke_beldum = {
                name = '메탕',
                text = {
                    "플레이한 핸드가 {C:attention}포 카드{}라면 {C:chips}+#2#{} 칩",
                    "포커 핸드에 {C:attention}에이스{}가 포함되면 {C:chips}+#2#{} 칩",
                    "{C:inactive}(칩 {C:chips}+#1#{C:inactive} / +#4#일 때 진화)",
                } 
            },
            j_poke_metang = {
                name = '메탕구',
                text = {
                    "플레이한 핸드가 {C:attention}포 카드{}라면 {C:chips}+#2#{} 칩",
                    "포커 핸드에 {C:attention}2장 이상의 에이스{}가 포함되면 {C:chips}+#2#{} 칩",
                    "{C:inactive}(칩 {C:chips}+#1#{C:inactive} / +#4#일 때 진화)",
                } 
            },
            j_poke_metagross = {
                name = '메타그로스',
                text = {
                    "{C:chips}+#1#{} 칩",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "플레이한 핸드가 {C:attention}포 카드{}라면",
                    "각 플레이한 카드는 해당 카드 총 칩의",
                    "{C:attention}네제곱근{}에 해당하는 {X:mult,C:white}X{} 배수를 제공합니다",
                } 
            },
            j_poke_jirachi = {
                name = '지라치',
                text = {
                    "상점 이용 종료 시,",
                    "{C:dark_edition}소원을 비세요!",
                }
            },
            j_poke_jirachi_banker = {
                name = '지라치',
                text = {
                    "라운드 종료 보상이 {C:attention}2배{}가 됩니다",
                }
            },
            j_poke_jirachi_booster = {
                name = '지라치',
                text = {
                    "{C:attention}+1{} 부스터 팩 슬롯",
                    "{C:attention}부스터 팩{}에 카드가 {C:attention}1{}장 더 들어있습니다",
                }
            },
            j_poke_jirachi_power = {
                name = '지라치',
                text = {
                    "매 {C:attention}#2#{}번의 핸드마다, 플레이한 카드가",
                    "득점 시 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                    "{C:inactive}(#3#){}",
                }
            },
            j_poke_jirachi_negging = {
                name = '지라치',
                text = {
                    "{C:blue}+2{} 조커 슬롯",
                    "{C:dark_edition}네거티브{} 카드가 {C:attention}2배{} 더 자주 등장합니다",
                }
            },
            j_poke_jirachi_invis = {
                name = '지라치',
                text = {
                    "{C:attention}블라인드{} 선택 시",
                    "오른쪽 {C:attention}조커{}의 {C:attention}복제본{}을 생성하고",
                    "{S:1.1,C:red,E:2}자폭합니다{}",
                    "{C:inactive}(네거티브 제거됨)"
                }
            },
            j_poke_jirachi_copy = {
                name = '지라치',
                text = {
                    "오른쪽 {C:attention}조커{}의 능력을 복사하되,",
                    "추가로 한 번 더 {C:pink}에너지화{}된 것처럼 적용합니다",
                }
            },
            j_poke_jirachi_fixer = {
                name = '지라치',
                text = {
                    "{C:attention}첫 핸드{}가 정확히 {C:attention}1{}장이라면,",
                    "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{}, 또는 {C:dark_edition}폴리크롬{}을 추가합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{C:attention}첫 버리기{}가 정확히 {C:attention}1{}장이라면,",
                    "그 카드를 {C:attention}파괴{}합니다",
                }
            },
            j_poke_kricketot = {
              name = "귀뚤뚜기",
              text = {
                "플레이한 핸드가 정확히 {C:attention}4{}장이고",
                "서로 다른 {C:attention}수트{}가 {C:attention}4{}개 이상이라면",
                "{C:money}$#1#{}를 획득합니다",
                "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_kricketune = {
              name = "귀뚤톡크",
              text = {
                "플레이한 핸드가 정확히 {C:attention}4{}장이고",
                "서로 다른 {C:attention}수트{}가 {C:attention}4{}개 이상이라면",
                "{C:money}$#1#{}를 획득합니다",
                "{br:2}오류 - STEAK에게 문의바람",
                "{C:green}#2# / #3#{} 확률로 {C:tarot}타로{} 카드를 생성합니다"
              }
            },
            j_poke_buizel = {
                name = '브이젤',
                text = {
                    "플레이한 핸드의",
                    "{C:attention}득점하지 않은{} 카드마다",
                    "{C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }  
            },
            j_poke_floatzel = {
                name = '플로젤',
                text = {
                    "플레이한 핸드의",
                    "{C:attention}득점하지 않은{} 카드마다",
                    "{C:chips}+#1#{} 칩",
                }
            },
            j_poke_ambipom = {
              name = "겟핸보숭",
              text = {
                "{C:attention}정확히 3{}장의 카드로",
                "모든 {C:attention}플러시{}와 {C:attention}스트레이트{}를",
                "만들 수 있습니다",
              }
            },
            j_poke_buneary = {
              name = "이어롤",
              text = {
                "플레이한 핸드의",
                "{C:attention}득점하지 않은{} 카드마다",
                "{C:mult}+#1#{} 배수",
                "{C:inactive}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_lopunny = {
                name = "이어롭",
                text = {
                  "{C:purple}+#3# 꿰뚫어보기",
                  "플레이한 핸드의",
                  "{C:attention}득점하지 않은{} 카드마다 {C:mult}+#1#{} 배수",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "득점하지 않은 카드가 {C:attention}꿰뚫어본{} 카드와",
                  "{C:attention}같은 랭크{}라면 {X:mult,C:white} X#2# {} 배수"
                }
            },
            j_poke_mega_lopunny = {
                name = "메가이어롭",
                text = {
                  "{C:purple}+#1# 꿰뚫어보기",
                  "{C:attention}꿰뚫어본 핸드{}의 {C:attention}레벨{}만큼",
                  "{X:mult,C:white}X{} 배수를 제공합니다",
                  "{C:inactive}(꿰뚫어본 핸드: {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_mismagius = {
                name = '무우마직',
                text = {
                    "플레이한 {C:attention}그림{} 카드는 득점 시",
                    "영구적으로 최대 {C:chips}#1#{} 칩을 잃고",
                    "잃은 만큼의 칩을 이 조커가 얻습니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "{C:green}#3# / #4#{} 확률로 대신 그 카드가",
                    "영구적으로 {C:chips}#5#{} 칩을 얻습니다",
                    "{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)",
                }
            },
            j_poke_honchkrow = {
                name = "돈크로우",
                text = {
                  "각 {X:dark,C:white}악{} 조커가 {X:mult,C:white}X#1#{} 배수를 제공합니다",
                }
            },
            j_poke_bonsly = {
                name = "꼬지지",
                text = {
                  "{C:attention}아기 포켓몬{}, {X:mult,C:white}X#1#{} 배수",
                  "라운드 종료 시, 무작위 {C:attention}강화된 그림{} 카드를",
                  "덱에 추가합니다",
                  "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_mimejr = {
                name = '흉내내',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 덱에 있는 무작위 카드에",
                    "{C:red}레드 인장{} 또는 {C:blue}블루 인장{}을 추가합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_happiny = {
                name = '핑복',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브{} {C:tarot}마술사{} 카드의",
                    "복제본을 생성합니다",
                    "{C:green}#3# / #4#{} 확률로 {C:attention}2{}장을 생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_munchlax = {
                name = '먹고자',
                text = {
                    "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                    "라운드 종료 시 {C:dark_edition}네거티브 {C:item}아이템{}을",
                    "생성합니다",
                    "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
                }
            },
            j_poke_riolu = {
              name = "리오르",
              text = {
                "{C:attention}아기 포켓몬{}, {X:mult,C:white} X#1# {} 배수",
                "라운드 종료 시 {C:dark_edition}오라{} 카드의",
                "복제본을 생성합니다",
                "{C:inactive}(공간이 있어야 함)",
                "{C:inactive,s:0.8}(#2# 라운드 후 진화){}",
              }
            },
            j_poke_lucario = {
              name = "루카리오",
              text = {
                 "핸드에 {C:attention}보유한{} 각",
                 "{C:attention}에디션{} 카드마다",
                 "{X:mult,C:white} X#1# {} 배수",
              }
            },
            j_poke_mantyke = {
                name = "타만타",
                text = {
                  "{C:attention}아기 포켓몬{}, {X:mult,C:white}X#2#{} 배수",
                  "라운드 종료 시 {C:dark_edition}네거티브{} {C:item}악마{} 카드의",
                  "복제본을 생성합니다",
                  "{C:inactive,s:0.8}(#3# 라운드 후 진화){}",
                }
            },
            j_poke_weavile = {
                name = '포푸니라',
                text = {
                    "플레이한 핸드가 단 한 장의 {C:attention}#3#{}라면 파괴하고,",
                    "{C:money}$#4#{}를 획득하며 이 조커는 {X:mult,C:white}X#1#{} 배수를 얻습니다,",
                    "{C:attention}보스 블라인드{} 격파 시 초기화됩니다",
                    "{C:inactive,s:0.8}(랭크는 매 라운드 변경됩니다){}",
                    "{C:inactive}(현재 {X:mult,C:white}X#2#{C:inactive} 배수){}",
                }
            },
            j_poke_magnezone = {
                name = '자포코일',
                text = {
                    "플레이한 {C:attention}스틸{} 카드가 {X:mult,C:white}X#1#{} 배수를 제공하며,",
                    "보유한 {X:metal,C:white}강철{} 조커마다 {X:mult,C:white}X#2#{} 배수를",
                    "추가로 제공합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수){}",
                } 
            },
            j_poke_lickilicky = {
                name = '내룸벨트',
                text = {
                    "첫 번째와 두 번째로 플레이된 {C:attention}J{} 카드가",
                    "득점 시 {X:mult,C:white}X#1#{} 배수를 부여합니다",
                    "{br:3}오류 - 제작자(STEAK)에게 문의하세요",
                    "이후의 {C:attention}J{} 카드는",
                    "득점 시 {X:mult,C:white} X#2# {} 배수를 부여합니다"
                } 
            },
            j_poke_rhyperior = {
                name = '거대코뿌리',
                text = {
                    "플레이된 각 {C:attention}스톤{} 카드는",
                    "영구적으로 {C:chips}+#1#{} 칩을 얻고",
                    "득점 시 재발동합니다",
                    "{br:3}오류 - 제작자(STEAK)에게 문의하세요",
                    "보유한 {C:attention}3{}개의 {X:earth,C:white}땅{} 속성 조커당",
                    "{C:attention}스톤{} 카드가 추가로 한 번 더 재발동합니다",
                    "{C:inactive}(현재 #2#번 재발동)"
                } 
            },
            j_poke_tangrowth = {
                name = '덩쿠림보',
                text = {
                    "{C:attention}와일드{} 카드는 능력이 {C:attention}무효화되지 않습니다{}",
                    "{br:3}오류 - 제작자(STEAK)에게 문의하세요",
                    "플레이된 {C:attention}와일드{} 카드는 {C:mult}+#1#{} 배수,",
                    "{C:chips}+#2#{} 칩, 또는 {C:money}$#3#{}를 부여합니다",
                    "{C:green}#5#분의 #4#{} 확률로 {C:attention}세 가지 모두{} 부여합니다"
                } 
            },
            j_poke_electivire = {
                name = '에레키블',
                text = {
                    "카드를 {C:attention}판매{}하거나 라운드 종료 시",
                    "이 조커의 {C:attention}판매 가격{}이 {C:money}$#1#{} 증가합니다",
                    "{br:3.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "이 조커가 가진 판매 가격 $1당",
                    "{X:mult,C:white}X#2#{} 배수를 부여합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)"
                } 
            },
            j_poke_magmortar = {
                name = '마그마번',
                text = {
                    "라운드의 {C:attention}첫 버리기{} 카드가",
                    "{C:attention}1{}장뿐이라면, 이를 파괴하고 {C:mult}+#2#{} 배수를 얻습니다",
                    "{br:4}오류 - 제작자(STEAK)에게 문의하세요",
                    "버리기 횟수를 사용할 때마다",
                    "{X:mult,C:white}X#4#{} 배수를 얻습니다",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수, {X:mult,C:white}X#3#{C:inactive} 배수)"
                } 
            },
            j_poke_togekiss = {
                name = '토게키스',
                text = {
                    "모든 {C:attention}기재된{} {C:green,E:1,S:1.1}확률{}에 {C:attention}#6#{}을 더합니다",
                    "{br:4}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}럭키{} 카드가 {C:green}#2#분의 #1#{} 확률로 {C:chips}+#4#{} 칩을,",
                    "{C:green}#3#분의 #1#{} 확률로 {X:mult,C:white}X#5#{} 배수를 부여합니다"
                }
            },
            j_poke_yanmega = {
              name = "메가자리",
              text = {
                "플레이된 각 {C:attention}3{} 또는 {C:attention}6{} 카드는",
                "득점 시 {C:chips}+#2#{} 칩과 {C:mult}+#1#{} 배수를 부여합니다",
                "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                "{C:green}#4#분의 #3#{} 확률로 플레이된 각",
                "{C:attention}3{} 또는 {C:attention}6{} 카드가 재발동합니다"
              }
            },
            j_poke_leafeon = {
                name = '리피아',
                text = {
                    "핸드 크기가 {C:attention}+#1#{} 증가하지만,",
                    "핸드를 플레이할 때마다 {C:red}#2#{}씩 감소합니다",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}럭키{} 카드가 {C:green}성공적으로{} 발동할 때마다",
                    "핸드 크기가 {C:attention}+#2#{} 증가합니다",
                    "{C:inactive}(최대 {C:attention}+#3#{C:inactive} 핸드 크기)"
                } 
            },
            j_poke_glaceon = {
                name = '글레이시아',
                text = {
                    "상점의 각 리롤은 {C:green}#2#분의 #1#{} 확률로",
                    "내 덱에 있는 무작위 카드의 {C:attention}유리{} 복사본을",
                    "상점에 추가합니다"
                } 
            },
            j_poke_gliscor = {
                name = '글라이온',
                text = {
                    "핸드에 {C:attention}들고 있는{} 각 {V:1}#2#{} 또는",
                    "무효화된 카드당 플레이된 카드가 {X:mult,C:white}X#1#{} 배수를 부여합니다",
                    "{C:inactive, s:0.8}(문양은 라운드마다 바뀝니다)",
                    "{C:inactive}(현재 {X:mult,C:white}X#3#{C:inactive} 배수)"
                }
            },
            j_poke_mamoswine = {
              name = "맘모꾸리",
              text = {
                "첫 번째 플레이된 카드는 족보에 포함된 각",
                "{C:attention}스톤{} 및 {C:attention}유리{} 카드당 {C:mult}+#1#{} 배수를 부여합니다",
                "{br:2}텍스트가 여기에 있어야 작동합니다",
                "{C:green}#4#분의 #3#{} 확률로 플레이된 {C:attention}스톤{} 및",
                "{C:attention}유리{} 카드가 득점 시 {C:money}$#2#{}를 법니다"
              }
            },
            j_poke_porygonz = {
                name = '폴리곤Z',
                text = {
                    "{C:pink}에너지{} 한도 +#3#",
                    "이번 런에서 사용한 {C:pink}에너지{} 카드당",
                    "{X:mult,C:white} X#2# {} 배수",
                    "{br:2}텍스트가 여기에 있어야 작동합니다",
                    "{C:pink}에너지{} 사용 시 새로운 {C:pink}에너지{}를 생성합니다",
                    "{C:inactive}(빈 슬롯이 있어야 함)",
                    "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수)"
                } 
            },
            j_poke_probopass = {
                name = '대코파스',      
                text = {
                    "{C:attention}스톤{} 카드가 {C:attention}그림{} 카드로 취급됩니다",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "플레이된 {C:attention}스톤{} 카드는",
                    "득점 시 {X:mult,C:white} X#1# {} 배수를 부여합니다"
                } 
            },
            j_poke_dusknoir = {
                name = "야느와르몽",
                text = {
                    "라운드의 {C:attention}마지막 핸드{}에서",
                    "모든 득점 카드를 재발동시킵니다",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "상점에 {C:spectral}스펙트럼{} 카드가 나타날 수 있습니다",
                    "{C:inactive,s:0.8}(이미 나타나는 상태라면 등장 확률 증가){}"
                }
            },
            j_poke_froslass = {
                name = "눈여아",
                text = {
                    "최대 {C:mult}-$#1#{}까지 빚을 질 수 있습니다",
                    "{br:2.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "빚이 있는 상태에서 핸드를 플레이하면",
                    "{C:item}아이템{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(빈 슬롯이 있어야 함)"
                }
            },
            j_poke_rotom = {
                name = "로토무",
                text = {
                    "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                    "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}부스터 팩{}의 가격이 {C:money}$1{} 저렴해집니다",
                    "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
                }
            },
            j_poke_rotomh = {
                name = "로토무 (히트)",
                text = {
                    "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                    "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "첫 버리기가 정확히 {C:attention}2{}장이라면,",
                    "두 카드 모두 {C:attention}배수{} 카드로 {C:attention}강화{}합니다",
                    "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
                }
            },
            j_poke_rotomw = {
                name = "로토무 (워시)",
                text = {
                    "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                    "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "플레이된 각 {C:attention}강화{} 카드가 득점 시 {C:money}$#3#{}를 벌지만,",
                    "해당 카드의 {C:attention}강화{}가 제거됩니다",
                    "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
                }
            },
            j_poke_rotomf = {
              name = "로토무 (프로스트)",
              text = {
                "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                "{C:attention}블라인드{} 선택 시, {C:dark_edition}포일{}, {C:dark_edition}홀로그램{},",
                "또는 {C:dark_edition}폴리크롬{} 에디션이 부여된 무작위 {C:attention}소모품{}을 생성합니다",
                "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
              }
            },
            j_poke_rotomfan = {
                name = "로토무 (스핀)",
                text = {
                    "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                    "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}블라인드{} 선택 시, 오른쪽에 있는 조커를",
                    "파괴하고 {C:attention}태그{}를 생성합니다",
                    "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
                }
            },
            j_poke_rotomm = {
                name = "로토무 (커트)",
                text = {
                    "아무 {C:attention}부스터 팩{}을 열 때 {C:green}#2#분의 #1#{} 확률로",
                    "{C:item}아이템{} 카드를 생성합니다 {C:inactive}(빈 슬롯 필요){}",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "라운드 종료 시 핸드에 {C:attention}들고 있는{}",
                    "첫 {C:attention}2{}장의 카드의 랭크(숫자)를 {C:attention}감소{}시킵니다",
                    "{C:inactive}({C:attention}가전제품{C:inactive} 사용 시 폼체인지){}"
                }
            },
            j_poke_shaymin = {
              name = "쉐이미",
              text = {
                "라운드 {C:attention}첫 핸드{}의 가장 오른쪽 득점 카드가",
                "{C:attention}플라워{} 카드가 됩니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8}개의 플라워 카드가 득점하면 변신합니다)"
              }
            },
            j_poke_shaymin_sky = {
              name = "쉐이미 (스카이폼)",
              text = {
                "{C:attention}플라워{} 카드는 {C:attention}와일드{} 카드이기도 합니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}죽음(Death){C:inactive,s:0.8} 카드 사용 시 변신합니다)"
              }
            },
            j_poke_pansage = {
                name = "야나프",
                text = {
                    "{C:attention}지름길(Shortcut){} 효과 적용",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}리프의돌{C:inactive,s:0.8}로 진화합니다)"
                }
            },
            j_poke_simisage = {
                name = "야나키",
                text = {
                    "{C:attention}지름길(Shortcut){} 효과 적용",
                    "플레이된 각 강화되지 않은 카드는 {C:green}#2#분의 #1#{} 확률로",
                    "{C:attention}럭키{} 카드가 됩니다"
                }
            },
            j_poke_pansear = {
                name = "바오프",
                text = {
                    "{C:attention}네 손가락(Four Fingers){} 효과 적용",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}불꽃의돌{C:inactive,s:0.8}로 진화합니다)"
                }
            },
            j_poke_simisear = {
                name = "바오키",
                text = {
                    "{C:attention}네 손가락(Four Fingers){} 효과 적용",
                    "첫 플레이 핸드가 {C:attention}스트레이트{} 또는 {C:attention}플러시{}를",
                    "포함하면, {C:attention}여황제{} 카드를 생성하고 득점하지 않은",
                    "각 카드를 파괴합니다 {C:inactive}#1#{}"
                }
            },
            j_poke_panpour = {
                name = "앗차프",
                text = {
                    "{C:attention}파레이돌리아(Pareidolia){} 효과 적용",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}물의돌{C:inactive,s:0.8}로 진화합니다)"
                }
            },
            j_poke_simipour = {
                name = "앗차키",
                text = {
                    "{C:attention}파레이돌리아(Pareidolia){} 효과 적용",
                    "플레이된 핸드에서 기본 칩이 가장 낮은",
                    "강화되지 않은 가장 왼쪽 카드가 {C:attention}보너스{} 카드가 됩니다"
                }
            },
            j_poke_roggenrola = {
                name = "단굴",
                text = {
                    "{C:hazard}+#1#{} 위험 레이어",
                    "핸드에 {C:attention}랭크가 없는{} 카드를 들고 있을 때마다",
                    "{C:mult}+#2#{} 배수를 부여합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8}번 발동 후 진화합니다)"
                }
            },
            j_poke_boldore = {
                name = "암트르",
                text = {
                    "{C:hazard}+#1#{} 위험 레이어",
                    "핸드에 {C:attention}랭크가 없는{} 카드를 들고 있을 때마다",
                    "{C:mult}+#2#{} 배수를 부여합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}연결끈{C:inactive,s:0.8}으로 진화합니다)"
                }
            },
            j_poke_gigalith = {
                name = "기가이어스",
                text = {
                    "{C:hazard}+#1#{} 위험 레이어",
                    "핸드에 {C:attention}랭크가 없는{} 카드를 들고 있을 때마다",
                    "{C:mult}+#2#{} 배수를 부여하고 재발동합니다"
                }
            },
            j_poke_drilbur = {
                name = "두더류",
                text = {
                  "라운드마다 첫 플레이된 {C:attention}스톤{} 카드가",
                  "파괴되고 {C:money}보물{}을 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8}번 발동 후 진화합니다)"
                }
            },
            j_poke_excadrill = {
              name = "몰드류",
              text = {
                "플레이된 {C:attention}스톤{} 카드가 파괴되고 {C:money}보물{}을 생성합니다",
                "{C:inactive}(빈 슬롯 필요)",
                "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                "전체 덱에서 {C:attention}#2#{} 아래의 각 카드당",
                "{C:mult}+#1#{} 배수를 얻습니다",
                "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수)"
              }
            },
            j_poke_trubbish = {
              name = "깨봉이",
              text = {
                "라운드 종료 시까지 버리기를 사용하지 않으면",
                "{C:chips}+#2#{} 칩을 얻고 {C:money}$#3#{}를 법니다",
                "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                "{C:inactive,s:0.8}({C:attention,s:0.8}#4#{C:inactive,s:0.8}번 발동 후 진화합니다)"
              }
            },
            j_poke_garbodor = {
                name = "더스트나",
                text = {
                    "라운드 종료 시까지 버리기를 사용하지 않으면",
                    "남은 {C:attention}버리기 횟수{}당 {C:chips}+#2#{} 칩을 얻습니다",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "안테 종료 시까지 버리기를 사용하지 않으면",
                    "{C:attention}쓰레기 태그{}를 생성합니다",
                    "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)"
                }
            },
            j_poke_zorua = {
                name = "조로아",
                text = {
                    "{V:1}가장 오른쪽 {C:attention}조커{}의 능력을 복사합니다",
                    "{br:2.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "복사 상태로 플레이 핸드 득점 후,",
                    "라운드 종료 시까지 복사 효과가 제거됩니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                }
            },
            j_poke_zoroark = {
                name = "조로아크",
                text = {
                    "가장 오른쪽 {C:attention}조커{}의 능력을 복사합니다"
                }
            },
            j_poke_gothita = {
                name = "고디탱",
                text = {
                    "상점의 모든 {C:planet}행성{} 카드와 {C:planet}천체 팩{}의",
                    "가격이 {C:money}$2{} 저렴해집니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                } 
            },
            j_poke_gothorita = {
                name = "고디보미",
                text = {
                    "상점의 모든 {C:planet}행성{} 카드와 {C:planet}천체 팩{}의",
                    "가격이 {C:money}$3{} 저렴해집니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                } 
            },
            j_poke_gothitelle = {
                name = "고디모아젤",
                text = {
                    "상점의 모든 {C:planet}행성{} 카드와 {C:planet}천체 팩{}이",
                    "{C:attention}무료{}가 됩니다",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:planet}행성{} 카드 사용 시 {C:money}$#1#{}를 법니다"
                } 
            },
            j_poke_vanillite = {
                name = "바닐프티",
                text = {
                  "{C:attention}휘발성(왼쪽)",
                  "{C:chips}+#1#{} 칩",
                  "핸드를 플레이할 때마다 칩이 {C:chips}-#3#{} 감소합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                }
            },
            j_poke_vanillish = {
                name = "바닐리치",
                text = {
                  "{C:attention}휘발성(왼쪽)",
                  "{C:chips}+#1#{} 칩",
                  "핸드를 플레이할 때마다 칩이 {C:chips}-#3#{} 감소합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                }
            },
            j_poke_vanilluxe = {
                name = "배바닐라",
                text = {
                  "{C:chips}+#1#{} 칩",
                  "핸드를 플레이할 때마다 칩이 {C:chips}-#2#{} 감소합니다",
                  "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                  "완전히 녹았을 때",
                  "{C:attention}#3#개의 더블 태그{}를 생성합니다"
                }
            },
            j_poke_frillish = {
                name = "탱그릴",
                text = {
                    "버려진 각 {C:attention}그림{} 카드당 {C:chips}+#2#{} 칩을 얻습니다",
                    "{C:inactive}({C:chips}+#1# / +#3#{} 칩 도달 시 진화합니다)"
                } 
            },
            j_poke_jellicent = {
                name = "탱탱겔",
                text = {
                  "버려진 각 {C:attention}그림{} 카드당 {C:chips}+#2#{} 칩을 얻습니다",
                  "{br:3}오류 - 제작자(STEAK)에게 문의하세요",
                  "해당 카드가 {C:attention}K{} 또는 {C:attention}Q{}라면 {C:attention}두 배{}로 얻습니다",
                  "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)"
                }
            },
            j_poke_ferroseed = {
                name = "철시드",
                text = {
                  "{C:hazard}+#2#{} 위험 레이어",
                  "{C:attention}와일드{} 카드와 {C:attention}위험{} 카드는",
                  "{C:attention}스틸{} 카드이기도 합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                }
            },
            j_poke_ferrothorn = {
              name = "너트령",
              text = {
                "{C:hazard}+#1#{} 위험 레이어",
                "{C:attention}와일드{} 카드와 {C:attention}위험{} 카드는",
                "{C:attention}스틸{} 카드이기도 합니다",
                "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                "플레이된 핸드에 {C:attention}플러시{}가 포함되어 있으면,",
                "핸드에 {C:attention}들고 있는 모든 스틸{} 카드를 재발동시킵니다"
              }
            },
            j_poke_elgyem = {
                name = "리그레",
                text = {
                    "{C:attention}블라인드{} 선택 시, 레벨이 가장 높은 {C:attention}포커 족보",
                    "상위 {C:attention}#1#{}개 중 하나의 {C:dark_edition}네거티브 {C:planet}행성{} 카드를 생성합니다",
                    "{C:inactive,s:0.8}(다른 종류의 행성 카드를 {C:planet,s:0.8}#2#{C:inactive,s:0.8}/#3#개 보유 시 진화합니다)"
                }
            },
            j_poke_beheeyem = {
                name = "벰크",
                text = {
                    "{C:attention}블라인드{} 선택 시, 레벨이 가장 높은 {C:attention}포커 족보",
                    "상위 {C:attention}#1#{}개 중 하나의 {C:dark_edition}네거티브 {C:planet}행성{} 카드를 생성합니다",
                    "{br:3.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}#2#개의 부스터{}를 연 후, 가능하다면",
                    "{C:attention}망원경{} 또는 {C:attention}전망대{}를 생성합니다"
                }
            },
            j_poke_litwick = {
                name = "불켜미",
                text = {
                    "{C:mult}+#4#{} 배수",
                    "이 조커의 판매 가격이 {C:money}$#5#{} 이상이면 {C:attention}3배{}가 됩니다",
                    "{br:3.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "라운드 종료 시 인접한 조커로부터 {C:money}$#1#{}를 {C:attention}흡수{}합니다",
                    "{C:inactive,s:0.8}(판매 가격 {C:money,s:0.8}$#3#{C:inactive,s:0.8} / $#2# 도달 시 진화합니다)"
                }
            },
            j_poke_lampent = {
              name = "램프라",
              text = {
                "이 조커의 판매 가격을 배수에 더합니다",
                "{br:3.5}오류 - 제작자(STEAK)에게 문의하세요",
                "라운드 종료 시 다른 모든 조커로부터",
                "{C:money}$#1#{}를 {C:attention}흡수{}합니다",
                "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)",
                "{C:inactive,s:0.8}({C:attention,s:0.8}어둠의돌{C:inactive,s:0.8}로 진화합니다)"
              }
            },
            j_poke_chandelure = {
                name = "샹델라",
                text = {
                    "이 조커의 판매 가격을 배수에 더합니다",
                    "{br:3.5}오류 - 제작자(STEAK)에게 문의하세요",
                    "판매 가격이 {C:money}$1{}인 각 조커당 {X:mult,C:white} X#1# {} 배수를 부여합니다",
                    "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)"
                }
            },
            j_poke_golett = {
                name = "골비람",
                text = {
                  "{C:hazard}+#1#{} 위험 레이어",
                  "핸드에 든 카드가 {C:green}#5#분의 #4#{} 확률로 {X:mult,C:white}X#2#{} 배수를 부여합니다",
                  "{C:attention}위험{} 카드는 확률이 확정적으로 적용됩니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                }
            },
            j_poke_golurk = {
                name = "골루그",
                text = {
                  "{C:hazard}+#1#{} 위험 레이어",
                  "핸드에 든 카드가 {C:green}#4#분의 #3#{} 확률로 {X:mult,C:white}X#2#{} 배수를 부여합니다",
                  "{C:attention}위험{} 카드는 확률이 확정적으로 적용됩니다"
                }
            },
            j_poke_pawniard = {
                name = "자망칼",
                text = {
                    "{C:attention}그림{} 카드가 파괴될 때마다 {X:red,C:white}X#2#{} 배수를 얻습니다",
                    "{C:inactive}({X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X#3#{C:inactive} 배수 도달 시 진화합니다)"
                }
            },
            j_poke_bisharp = {
              name = "절각참",
              text = {
                "{C:attention}그림{} 카드가 파괴될 때마다 {X:red,C:white}X#2#{} 배수를 얻습니다",
                "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                "첫 플레이 핸드가 단일 {C:attention}그림{} 카드라면, 이를 파괴합니다",
                "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                "{C:inactive,s:0.8}({C:attention,s:0.8}K{} 카드를 #3#장 파괴한 후 진화합니다)"
              }
            },
            j_poke_zweilous = {
                name = "디헤드",
                text = {
                  "플레이 핸드가 {C:attention}트리플{}이면 {X:mult,C:white} X#1# {} 배수",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}번 발동 후 진화합니다)"
                }
            },
            j_poke_hydreigon = {
                name = "삼삼드래",
                text = {
                  "플레이 핸드가 {C:attention}트리플{}이면 득점하지 않은 모든 카드를 파괴합니다",
                  "{br:3}오류 - 제작자(STEAK)에게 문의하세요",
                  "플레잉 카드가 파괴될 때마다 {X:mult,C:white} X#2# {} 배수를 얻습니다",
                  "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수)"
                }
            },
            j_poke_deino = {
                name = "모노두",
                text = {
                  "플레이 핸드가 {C:attention}트리플{}이면 {X:mult,C:white} X#1# {} 배수",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8}번 발동 후 진화합니다)"
                }
            },
            j_poke_litleo = {
                name = "레오꼬",
                text = {
                    "플레이 핸드에 {C:attention}플러시{}가 포함되어 있으면 {C:chips}+#1#{} 칩",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화합니다)"
                } 
            },
            j_poke_pyroar = {
                name = "화염레오",
                text = {
                    "플레이 핸드에 {C:attention}플러시{}가 포함되어 있으면 {C:chips}+#1#{} 칩",
                    "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                    "{C:attention}K{} 또는 {C:attention}Q{}도 포함되어 있다면 {C:pink}에너지{} 카드를 생성합니다"
                } 
            },
            j_poke_sylveon = {
                name = '님피아',
                text = {
                    "{C:attention}첫 핸드{}가 정확히 {C:attention}1{}장의 강화되지 않은 카드라면,",
                    "해당 카드에 {C:dark_edition}포일{}, {C:dark_edition}홀로그램{},",
                    "또는 {C:dark_edition}폴리크롬{} 에디션을 부여합니다"
                } 
            },
            j_poke_pumpkaboo_small = {
                name = '호바귀 (작은 크기)',
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}연결끈{C:inactive,s:0.8}으로 진화합니다)"
                }
            },
            j_poke_pumpkaboo_average = {
                name = '호바귀 (보통 크기)',
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}연결끈{C:inactive,s:0.8}으로 진화합니다)"
                }
            },
            j_poke_pumpkaboo_large = {
                name = '호바귀 (큰 크기)',
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}연결끈{C:inactive,s:0.8}으로 진화합니다)"
                }
            },
            j_poke_pumpkaboo_super = {
                name = '호바귀 (특대 크기)',
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}연결끈{C:inactive,s:0.8}으로 진화합니다)"
                }
            },
            j_poke_gourgeist_small = {
                name = "펌킨인 (작은 크기)",
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                  "{C:spectral}스펙트럼{} 카드 사용 시 {C:money}$#3#{}를 벌고,",
                  "가장 왼쪽 {C:attention}조커{}에 {X:psychic,C:white}에스퍼{} 스티커를 부착합니다"
                }
            },
            j_poke_gourgeist_average = {
                name = "펌킨인 (보통 크기)",
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                  "{C:spectral}스펙트럼{} 카드 사용 시 {C:money}$#3#{}를 벌고,",
                  "가장 왼쪽 {C:attention}조커{}에 {X:psychic,C:white}에스퍼{} 스티커를 부착합니다"
                }
            },
            j_poke_gourgeist_large = {
                name = "펌킨인 (큰 크기)",
                text = {
                  "{C:attention}J{} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버리면,",
                  "{C:spectral}스펙트럼{} 카드를 생성합니다",
                  "{C:inactive}(빈 슬롯 필요)",
                  "{br:2}오류 - 제작자(STEAK)에게 문의하세요",
                  "{C:spectral}스펙트럼{} 카드 사용 시 {C:money}$#3#{}를 벌고,",
                  "가장 왼쪽 {C:attention}조커{}에 {X:psychic,C:white}에스퍼{} 스티커를 부착합니다"
                }
            },
			j_poke_gourgeist_super = {
                name = "펌킨인 (대형)",
                text = {
                  "{C:attention}잭(J){} 카드를 {C:attention}#1#{}장 {C:inactive}[#2#]{} 버린 후,",
                  "{C:spectral}스펙트럴{} 카드를 생성합니다",
                  "{C:inactive}(공간이 있어야 함)",
                  "{br:2}오류 - STEAK에게 문의바람",
                  "{C:spectral}스펙트럴{} 카드 사용 시 {C:money}$#3#{}를 획득하고",
                  "가장 왼쪽 {C:attention}조커{}에 {X:psychic,C:white}사이코{}",
                  "스티커를 부착합니다"
                }
            },
            j_poke_grubbin = {
                name = '턱지충이',
                text = {
                    "{C:mult}+#1#{} 배수",
                    "{X:lightning, C:black}전기{} 타입 조커 보유 시 {C:attention}3배{}가 됩니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)",
                }  
            },
            j_poke_charjabug = {
                name = '전지충이',
                text = {
                    "보유한 {X:lightning, C:black}전기{} 타입 조커",
                    "하나당 {C:mult}+#1#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#2#{C:inactive} 배수)",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}천둥의돌{C:inactive,s:0.8} 사용 시 진화)"
                }  
            },
            j_poke_vikavolt = {
                name = '투구뿌논',
                text = {
                    "{C:mult}+#3#{} 배수",
                    "다른 {X:lightning, C:black}전기{} 타입 조커 하나당",
                    "{X:mult,C:white} X#1# {} 배수",
                    "{C:inactive}(현재 {X:mult,C:white} X#2# {C:inactive} 배수)",
                }
            },
            j_poke_rockruff = {
              name = "암멍이",
              text = {
                "득점 시 플레이한 각 {C:attention}숫자{} 카드가",
                "{C:mult}+#1#{} 배수를 부여합니다",
                "{C:inactive,s:0.8}({C:attention,s:0.8}짝수{} 카드 #2#장 득점 시 진화)",
                "{C:inactive,s:0.8}({C:attention,s:0.8}홀수{} 카드 #3#장 득점 시 진화)"
              }
            },
            j_poke_lycanroc_day = {
              name = "루가루암 (한낮의 모습)",
              text = {
                "득점 시 플레이한 각 {C:attention}짝수{} 카드가",
                "{C:mult}+#1#{} 배수를 부여합니다",
                "{br:3}오류 - STEAK에게 문의바람",
                "라운드의 첫 핸드가 정확히 {C:attention}1{}장일 경우,",
                "득점 시 {C:chips}+#2#{} 칩과 이번 라운드에", 
                "{C:blue}+1{} 핸드 횟수를 부여합니다"
              }
            },
            j_poke_lycanroc_night= {
              name = "루가루암 (한밤중의 모습)",
              text = {
                "득점 시 플레이한 각 {C:attention}홀수{} 카드가",
                "{C:mult}+#1#{} 배수를 부여합니다",
                "{br:3}오류 - STEAK에게 문의바람",
                "{C:attention}보스 블라인드{} 선택 시 이번 라운드 동안",
                "{C:chips}+#2#{} 핸드, {C:mult}+#3#{} 버리기 횟수,", 
                "그리고 {C:attention}+#2#{} 핸드 크기를 얻습니다",
              }
            },
            j_poke_lycanroc_dusk = {
              name = "루가루암 (황혼의 모습)",
              text = {
                "득점 시 플레이한 각 {C:attention}숫자{} 카드가",
                "{C:mult}+#1#{} 배수를 부여합니다",
                "{br:3}오류 - STEAK에게 문의바람",
                "포커 핸드에서 {C:attention}첫 번째 짝수{} 카드와",
                "{C:attention}첫 번째 홀수{} 카드를",
                "다시 발동합니다"
              }
            },
            j_poke_mimikyu = {
                name = "따라큐",
                text = {
                  "플레이한 핸드에 득점되는 {C:hearts}#2#{}가 없다면",
                  "{C:chips}+#1#{} 칩을 부여합니다",
                  "{br:3}오류 - STEAK에게 문의바람",
                  "득점한 칩이 목표치의 {C:attention}50%{} 이상일 경우",
                  "패배를 방지합니다",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_nickit = {
                name = "훔처우",
                text = {
                    "라운드 종료 시 {C:money}$#1#{}를 획득합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_thievul = {
                name = "폭슬라이",
                text = {
                    "라운드 종료 시 가장 왼쪽 {C:attention}조커{}의",
                    "판매 가치의 {C:attention}두 배{}만큼 돈을 획득합니다",
                    "{C:inactive,s:0.8}(자기 자신 제외)",
                    "{C:inactive}(현재 {C:money}$#1#{C:inactive}, 최대 {C:money}$15{C:inactive})",
                } 
            },
            j_poke_yamper = {
                name = '멍파치',
                text = {
                    "플레이한 핸드가 {C:attention}스트레이트{}를 포함하면",
                    "{C:mult}+#1#{} 배수 및 {C:money}$#2#{}를 획득합니다",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#3#{C:inactive,s:0.8} 라운드 후 진화)",
                } 
            },
            j_poke_boltund = {
                name = '펄스멍',
                text = {
                    "플레이한 핸드가 {C:attention}스트레이트{}를 포함하면",
                    "{X:mult,C:white}X#1#{} 배수 및 {C:money}$#2#{}를 획득합니다",
                } 
            },
            j_poke_dreepy = {
                name = "드라꼰",
                text = {
                  "판매 시 모든 {C:attention}조커{}의 판매 가치에 {C:money}$#1#{}를 추가하고",
                  "손에 든 모든 카드를 가장 왼쪽 카드의",
                  "{C:attention}수트(문양){}로 변환합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}스트레이트 플러시{C:inactive,s:0.8} 플레이 시 진화)",
                }
            },
            j_poke_drakloak = {
                name = "드래런치",
                text = {
                  "보유한 모든 {C:attention}조커{}의 판매 가치 {C:money}$1{}당",
                  "{X:mult,C:white} X#4# {} 배수를 부여합니다",
                  "{br:4}오류 - STEAK에게 문의바람",
                  "플레이한 핸드가 {C:attention}스트레이트 플러시{}인 경우",
                  "모든 조커의 판매 가치에 {C:money}$#1#{}를 추가합니다",
                  "{C:inactive}(현재 {X:mult,C:white} X#5# {C:inactive} 배수){}",
                  "{C:inactive,s:0.8}(조커 총 판매 가치 {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3# 달성 시 진화)",
                }
            },
            j_poke_dragapult = {
                name = "드래펄트",
                text = {
                  "보유한 모든 {C:attention}조커{}의 판매 가치 {C:money}$1{}당",
                  "{X:mult,C:white} X#2# {} 배수를 부여합니다",
                  "{br:4}오류 - STEAK에게 문의바람",
                  "플레이한 핸드가 {C:attention}스트레이트 플러시{}이고",
                  "{C:attention}드라꼰 다트{}이 없다면 {C:dark_edition}네거티브{}",
                  "{C:attention}드라꼰 다트 2개{}를 생성합니다",
                  "{C:inactive}(현재 {X:mult,C:white} X#3# {C:inactive} 배수){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "드라꼰 다트",
                text = {
                    "판매 시 모든 {C:attention}조커{}의 판매 가치에 {C:money}$#1#{}를 추가하고",
                    "손에 든 모든 카드를 가장 왼쪽 카드의",
                    "{C:attention}수트(문양){}로 변환합니다",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "침바루 (히스이의 모습)",
                text = {
                    "{C:purple}+#1# 해저드 {C:inactive}(카드 #2#장당 1개)",
                    "{C:attention}해저드 카드{}를 뽑을 때마다",
                    "{C:chips}+#3#{} 칩을 획득합니다",
                    "{C:inactive}(진화까지 {C:chips}+#4#{C:inactive} / +#5# 칩)",
                }
            },
            j_poke_overqwil = {
                name = "장침바루",
                text = {
                    "{C:purple}+#1# 해저드 {C:inactive}(카드 #2#장당 1개)",
                    "{C:attention}해저드 카드{}를 뽑을 때마다",
                    "{C:chips}+#3#{} 칩을 획득합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "핸드 플레이 후 칩이 {C:attention}절반{}으로 감소합니다",
                    "{C:inactive}(현재 {C:chips}+#4#{C:inactive} 칩)",
                }
            },
            j_poke_wyrdeer = {
                name = "신비록",
                text = {
                    "{C:purple}+#1# 꿰뚫어보기",
                    "{C:attention}예견된{} 카드 중 가장 높은 숫자의",
                    "랭크의 {C:attention}두 배{}를 배수에 추가합니다",
                    "{br:3}오류 - STEAK에게 문의바람",
                    "핸드 플레이 시 {C:purple}+#2# 꿰뚫어보기{}를 획득합니다",
                    "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
                }
            },
            j_poke_kleavor = {
                name = '사마자르',      
                text = {
                    "{C:attention}블라인드{} 선택 시 오른쪽 조커를 파괴하고",
                    "{C:mult}+#2#{} 배수를 얻습니다. 파괴한 조커가",
                    "{C:green}희귀(Uncommon){} 등급 이상이면 {C:dark_edition}포일{}, {C:dark_edition}홀로그램{},",
                    "또는 {C:dark_edition}폴리크롬{} 중 하나가 부여된 {C:attention}스톤 카드{}를 추가합니다",
                    "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
                } 
            },
            j_poke_ursaluna = {
              name = "다투곰",
              text = {
                "{C:attention}부스터 팩{}을 건너뛸 때마다 {C:mult}+#2#{} 배수를 얻고",
                "{C:dark_edition}포일{}, {C:dark_edition}홀로그램{}, 또는 {C:dark_edition}폴리크롬{} 효과가",
                "부여된 무작위 {C:item}아이템{}을 생성합니다",
                "{C:inactive}(공간이 있어야 하며, 현재 {C:mult}+#1#{C:inactive} 배수)",
              }
            },
            j_poke_tarountula = {
                name = "타랜툴라",
                text = {
                    "{C:hazard}+#1#{} 해저드 레이어, {C:attention}+#3#{} 핸드 크기",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)",
                }
            },
            j_poke_spidops = {
                name = "트래피더",
                text = {
                    "{C:hazard}+#1#{} 해저드 레이어, {C:attention}+#2#{} 핸드 크기",
                    "덱에 추가되는 매 {C:attention}#3#번째 {C:inactive}[#4#]{}",
                    "{C:attention}플레잉 카드{}에 무작위 {C:attention}인장{}을 부여합니다"
                }
            },
            j_poke_fidough = {
                name = "쫀도기",
                text = {
                  "포커 핸드에 {C:attention}#3#{} 랭크가 포함되면 {C:chips}+#2#{} 칩을 얻습니다",
                  "발동할 때마다 요구되는 {C:attention}랭크{}가 상승합니다",
                  "{C:inactive,s:0.8}(가장 높은 랭크일 경우 다시 가장 낮게 돌아감)",
                  "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                  "{C:inactive,s:0.8}({X:fire,C:white,s:0.8}불꽃{C:inactive,s:0.8} 타입 조커 보유 시 진화)",
                }
            },
            j_poke_dachsbun = {
                name = "바우첼",
                text = {
                  "포커 핸드에 {C:attention}#3#{} 랭크가 포함되면 {C:chips}+#2#{} 칩을 얻습니다",
                  "발동할 때마다 요구되는 {C:attention}랭크{}가 상승합니다",
                  "{br:4}오류 - STEAK에게 문의바람",
                  "보유한 {X:fire,C:white}불꽃{} 타입 조커 하나당 칩 상승량이",
                  "{C:chips}+2{}만큼 증가합니다",
                  "{C:inactive,s:0.8}(가장 높은 랭크일 경우 다시 가장 낮게 돌아감)",
                  "{C:inactive}(현재 {C:chips}+#1#{C:inactive} 칩)",
                }
            },
            j_poke_charcadet = {
              name = "카르본",
              text = {
                "플레이한 핸드 득점 후 {C:mult}+#2#{} 배수를 얻습니다",
                "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
                "{C:inactive,s:0.8}(각성의돌 또는 어둠의돌로 진화){}",
                "{C:inactive}(현재 {C:mult}+#1#{C:inactive} 배수)",
              }
            },
            j_poke_armarouge = {
              name = "카디나르마",
              text = {
                "{X:mult,C:white} X#1# {} 배수",
                "플레이한 핸드 득점 후 {X:mult,C:white} X#2# {} 배수만큼 감소합니다",
                "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
              }
            },
            j_poke_ceruledge = {
              name = "카라볼래",
              text = {
                "플레이한 핸드 득점 후 {X:mult,C:white} X#2# {} 배수를 얻고",
                "다른 무작위 조커로부터 {C:money}$#3#{}를 흡수합니다",
                "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
                "{C:inactive}(현재 {X:mult,C:white} X#1# {C:inactive} 배수)",
              }
            },
            j_poke_bramblin = {
              name = "그푸리",
              text = {
                "라운드의 {C:attention}두 번째로{} 득점되는 {C:attention}#1#{} 카드가",
                "{C:attention}씨앗{} 카드가 됩니다",
                "{C:inactive,s:0.8}(랭크는 매 라운드 변경됨){}",
                "{C:inactive,s:0.7}(블라인드 진행 중 카드 #2#장 드로우 시 진화){}",
              }
            },
            j_poke_brambleghast = {
              name = "공푸리",
              text = {
                "보유한 {C:money}$1{}당 {C:chips}+#1#{} 칩",
                "{C:inactive}(현재 {C:chips}+#2#{C:inactive} 칩)",
                "{br:2}능력 미구현 - 개발자에게 문의",
                "라운드 중 {C:attention}두 번째{}로 득점하는 {C:attention}#3#{}는",
                "{C:attention}2회의 성장{}을 가진",
                "{C:attention}씨앗{} 카드가 됩니다",
                "{C:inactive,s:0.8}(랭크는 매 라운드 변경됨){}",
              }
            },
            j_poke_tinkatink = {
                name = "어리짱",
                text = {
                  "플레이한 카드가 {C:mult}+#1#{} 배수 부여",
                  "{br:3}능력 미구현 - 개발자에게 문의",
                  "{C:attention}블라인드{} 선택 시, 내 덱의",
                  "{C:attention}강철이 아닌{} 카드 {C:attention}#3#{}장을 디버프합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)",
                }
            },
            j_poke_tinkatuff = {
                name = "벼리짱",
                text = {
                  "플레이한 카드가 {C:mult}+#1#{} 배수 부여",
                  "{br:3}능력 미구현 - 개발자에게 문의",
                  "{C:attention}블라인드{} 선택 시, 내 덱의",
                  "{C:attention}강철이 아닌{} 카드 {C:attention}#3#{}장을 디버프합니다",
                  "{C:inactive,s:0.8}({C:attention,s:0.8}#2#{C:inactive,s:0.8} 라운드 후 진화)",
                }
            },
            j_poke_tinkaton = {
                name = "두드리짱",
                text = {
                  "플레이한 카드가 {C:mult}+#1#{} 배수 부여",
                  "{br:3}능력 미구현 - 개발자에게 문의",
                  "{C:attention}블라인드{} 선택 시, 내 덱의",
                  "{C:attention}강철이 아닌{} 카드 {C:attention}#3#{}장을 디버프합니다",
                  "{br:4}능력 미구현 - 개발자에게 문의",
                  "{C:attention}강철{} 카드는 {C:attention}유리{} 카드의 효과도 가집니다"
                }
            },
            j_poke_wiglett = {
                name = "바다그다",
                text = {
                    "플레이한 핸드에 {C:attention}트리플{}이",
                    "포함된 경우 {C:mult}+#3#{} 배수",
                    "{br:2}능력 미구현 - 개발자에게 문의",
                    "플레이한 핸드에 {C:attention}5, 6, 7{} 중 하나가",
                    "득점에 포함된 경우 {C:chips}+#2#{} 칩",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#1#{C:inactive,s:0.8} 라운드 후 진화)"
                } 
            },
            j_poke_wugtrio = {
                name = "바다닥트리오",
                text = {
                    "플레이한 핸드에 {C:attention}트리플{}이",
                    "포함된 경우 {X:mult,C:white} X#1# {} 배수",
                    "{br:2}능력 미구현 - 개발자에게 문의",
                    "플레이한 핸드에 {C:attention}5, 6, 7{} 중 하나가",
                    "득점에 포함된 경우 {C:chips}+#2#{} 칩",
                } 
            },
            j_poke_annihilape = {
                name = '저승갓숭',
                text = {
                    "득점 시 {C:attention}2, 3, 5, 7{} 카드는 이번 라운드에",
                    "플레이한 핸드 횟수당 {C:mult}+#1#{} 배수와",
                    "{C:chips}+#2#{} 칩을 부여합니다",
                    "{C:inactive}(현재 {C:mult}+#3#{} {C:inactive}배수 {C:chips}+#4#{C:inactive} 칩)",
                } 
            },

            j_poke_dudunsparce = {
                name = '노고고치',
                text = {
                  "상점의 카드 슬롯 {C:attention}+#1#{}개",
                  "상점의 부스터 팩 슬롯 {C:attention}+#1#{}개",				  
                  "상점의 바우처 슬롯 {C:attention}+#1#{}개",
                }
            },
            j_poke_dudunsparce2 = {
                name = '노고고치',
                text = {
                  "{C:attention}쿠폰 태그 보유 중{}",
                  "상점의 카드 슬롯 {C:attention}+#1#{}개",
                  "상점의 부스터 팩 슬롯 {C:attention}+#1#{}개",
                  "상점의 바우처 슬롯 {C:attention}+#1#{}개",
                }

            },
            j_poke_kingambit = {
                name = "대도각참",
                text = {
                  "{X:red,C:white}X#1#{} 배수",
                  "플레이한 핸드에 내 {C:attention}전체 덱{} 중 유일한",
                  "{C:attention}킹{}이 포함된 경우, 득점 시 플레이한 모든",
                  "{C:attention}숫자 카드{}는 이 조커 배수의 절반을 부여합니다",
                }
            },
            j_poke_farigiraf = {
              name = "키키링",
              text = {
                "{C:spectral}신비{}를 {C:attention}소지{} 시",
                "플레이한 핸드에 {C:attention}투 페어{}가 포함되면",
                "처음과 마지막 {C:attention}그림{} 카드가",
                "득점 시 {X:mult,C:white}X#1#{} 배수를 제공합니다",

              }
            },
			            j_poke_gimmighoul = {
                name = "모으령 (상자폼)",
                text = {
                  "플레이한 {C:attention}골드{} 카드는 득점 시 {C:money}$#1#{}를 획득합니다",
                  "{br:3}오류 - STEAK에게 문의바람",
                  "{C:attention}부스터 팩{}을 스킵하여...?",
                  "{C:inactive,s:0.8}({C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3# 획득 또는 소비 시 진화)"
                }
            },
            j_poke_gimmighoulr = {
                name = "모으령 (도보폼)",
                text = {
                  "약간의 {C:money}${}를 획득합니다",
                  "{S:1.1,C:red,E:2}자폭합니다{}",
                }
            },

            j_poke_gholdengo = {
                name = "타부자고",
                text = {
                  "득점 시 {C:attention}황금{} 카드는 {C:money}$#2#{}를 {C:red}소모{}하며",
                  "이 조커의 {X:mult,C:white}X{} 배수를 {X:mult,C:white}X#3#{}만큼 증가시킵니다",
                  "{br:3}능력 미구현 - 개발자에게 문의",
                  "이 조커는 디버프되지 않습니다",
                  "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수)",
                  "{C:inactive,s:0.8}(라운드 종료 시 초기화)",
                }
            },
			            j_poke_missingno = {
                name = '미싱노',
                text = {
                    "획득 시... {C:attention}소비 아이템{} 생성?",
                    "정상 데이터가 아ㄴㅣㅁ...",
                    "{C:attention}#1#{}개의... {C:attention}태그{} 생성?",
                } 
            },
            j_poke_pokedex = {
                name = '도감',
                text = {
                    "같은 진화 라인의", 
                    "{C:attention}포켓몬{}이 등장할 수 있습니다",
                } 
            },

            j_poke_rotomdex = {
                name = '로토무도감',
                text = {
                    "보유한 조커의 서로 다른 {C:pink}타입{}",
                    "하나당 {C:attention}부스터 팩{} 비용 {C:money}$1{} 감소",
                    "{C:inactive}(현재 {C:money}$#1#{C:inactive} 할인)"
                } 
            },
            j_poke_everstone = {
                name = '변함없는돌',
                text = {
                    "포켓몬이 {C:attention}진화{}하거나 변형될 수 없습니다",
                    "{br:3.5}능력 미구현 - 개발자에게 문의",
                    "{C:attention}기본{} 포켓몬은 각각 {X:mult,C:white} X#2# {} 배수 부여",
                    "{C:attention}베이비{} 포켓몬은 각각 {X:mult,C:white} X#1# {} 배수 부여",
                } 
            },
            j_poke_tall_grass = {
                name = '키큰풀',
                text = {
                    "핸드 플레이 시 {C:green}#1#/#2#{} 확률로 무작위",
                    "{C:chips}일반{} 포켓몬 {C:attention}조커{} 생성",
                    "{C:attention}야생{} 카드로 득점 시 확정 생성",
                    "{C:inactive}(빈 슬롯 필요){}",
                } 
            },
			j_poke_jelly_donut = {
                name = "젤리 도넛",
                text = {
                  "{C:attention}블라인드{} 선택 시",
                  "{X:colorless,C:white}노말{C:pink} 에너지{} 생성",
                  "{C:inactive}({C:attention}#1#{C:inactive} 라운드 남음){}"
                }
            },
            j_poke_ruins_of_alph = {
                name = "알프의 유적",
                text = {
                  "{C:attention}블라인드{} 선택 시, {C:dark_edition}네거티브{}",
                  "{C:attention}안농{}을 {C:attention}3{}마리 생성합니다",
                  "{br:2}능력 미구현 - 개발자에게 문의",
                  "{C:attention}안농{} 발동 후, 안농을 합체시키고",
                  "{C:mult}+#1#{} 배수를 획득합니다",
                  "{br:2}능력 미구현 - 개발자에게 문의",
                  "합체된 안농 수에 따른 {C:attention}보상{}을",
                  "얻기 위해 이 카드를 판매하세요",
                  "{C:inactive}(현재 {C:mult}+#3#{C:inactive} 배수 및 {C:attention}#2#{C:inactive}마리 합체)",
                }
            },
			j_poke_unown_swarm = {
                name = "안농 무리",
                text = {
                  "보유한 각 {C:purple}전설{} 조커 하나당",
                  "{C:mult}+#1#{} 배수 및 {X:mult,C:white}X#2#{} 배수 부여"
                }
            },
            j_poke_treasure_eatery = {
                name = "보물 식당",
                text = {
                  "{C:attention}타입 체인저{}",
                  "가장 왼쪽에 있는 조커의 {C:pink}타입{}을",
                  "가장 오른쪽에 있는 조커의 {C:pink}타입{}으로 변경",
                  "{C:attention}블라인드{} 선택 시 발동",
                  "{C:inactive}({C:attention}#1#{C:inactive} 라운드 남음){}"
                }
            },
            j_poke_rival = {
                name = "라이벌",
                text = {
                  "블라인드 건너뛰기 시 보상 {C:money}$#2#{} 증가",
                  "{C:attention}보스 블라인드{} 처치 시,",
                  "{S:1.1,C:red,E:2}자가 파괴{}되며 {C:money}$#1#{} 획득"
                }
            },
            j_poke_bitter_rival = {
                name = "숙적 라이벌",
                text = {
                  "블라인드 건너뛰기 시 보상 {C:money}$#2#{} 증가",
                  "{C:attention}보스 블라인드{} 처치 시,",
                  "{S:1.1,C:red,E:2}자가 파괴{}되며 {C:money}$#1#{} 획득"
                }
            },
            j_poke_champion = {
                name = "챔피언",
                text = {
                    "{C:attention}보스 블라인드{} 처치 시,",
                    "{C:attention}스피드 태그{} 생성",
                    "이번 판에서 건너뛴 {C:attention}블라인드{}",
                    "하나당 {X:mult,C:white}X#3#{} 배수",
                    "{C:inactive}(현재 {X:mult,C:white}X#4#{C:inactive} 배수){}"
                }
            },
            j_poke_professor = {
                name = "박사",
                text = {
                    "{C:attention}#1#{} 라운드 후, 이 카드를 판매하여",
                    "{C:attention}스타터 태그{} 생성",
                    "{C:inactive}(현재 {C:attention}#2#{C:inactive}/#1#){}"
                }
            },
            j_poke_oologist = {
                name = "난생학자",
                text = {
                    "상점 리롤 시 {C:green}#1#/#2#{} 확률로",
                    "상점에 {C:dark_edition}네거티브{} {C:attention}이상한 알{} 추가",
                    "상점당 한 번 발동 {C:inactive}#3#"
                }
            },
            j_poke_mystery_egg = {
                name = "이상한 알",
                text = {
                  "{C:attention}#1#{} 라운드 후 {C:attention}기본{} 또는",
                  "{C:attention}아기{} 포켓몬 조커로 변신",
                  "변신 시 가능한 경우 {C:pink}에너자이징{} 상태가 됨"
                }
            },
            j_poke_daycare = {
              name = "키우미집",
              text = {
                "이 카드를 판매하여 인접한 포켓몬",
                "조커를 기반으로 한 {C:attention}이상한 알{} 생성",
                "{C:inactive,s:0.8}(아기 및 전설 조커 제외){}"
              }
            },
            j_poke_billion_lions = {
                name = '10억 마리의 사자',
                text = {
                    "{C:attention}블라인드{} 선택 시 보유한 모든",
                    "{C:pink}타입{} 조커를 파괴하고 마리당 {X:mult,C:white}X#2#{} 배수 획득",
                    "사자가 모두 소진되면 {S:1.1,C:red,E:2}자폭{}합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#1#{C:inactive} 배수, {C:attention}#3#{C:inactive}마리 남음)"
                } 
            },

			j_poke_bidoof = {
                name = "비버니",
                text = {
                    "{C:attention}1회 무료{} {C:green}상점 리롤{}",
                    "{C:inactive}(진화까지 {C:attention}#2#{}회 리롤){}"
                } 
            },
			j_poke_bibarel = {
				name = "비버통",
				text = {
					"상점마다 {C:attention}무료 리롤{} {C:attention}1{}회",
					"{C:attention}보스 블라인드{}를 격파할 때마다",
					"{C:attention}무료 리롤{} 횟수가 {C:attention}+1{} 증가합니다"
				}
			},
			j_poke_repel = {
            name = "리플",
            text = {
                "{C:attention}이 카드를 판매하면{},",
                "현재 {C:attention}보스 블라인드{}를",
                "{C:red}무효화{}하고",
                "{C:attention}D6 태그{}를 생성합니다"
            }
        },

        },

        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "트레이너 슬리브",
                text = {
                    "{C:tarot,T:v_poke_goodrod}#1#{} 바우처와",
                    "{C:tarot,T:c_poke_pokeball}#2#{} 카드를 가지고 시작합니다",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "매장 슬리브",
                text = {
                    "모든 카드가 {C:dark_edition}#1#{} 에디션을 가집니다",
                },
            },
			            sleeve_poke_obituarysleeve_alt = {
                name = "부고 슬리브",
                text = {
                    "{C:pink}핑크 인장{}은 발동 후 {C:green}#1# / #2#{} 확률로",
                    "제거됩니다",
                    "조커가 판매되거나 파괴될 때 해당 타입의",
                    "{C:dark_edition}네거티브 {C:pink}에너지{}를 생성합니다",
                },
            },
            sleeve_poke_revenantsleeve = {
                name = "망령 슬리브",
                text = {
                    "모든 카드에 {C:dark_edition}#1#{}가 부여됩니다",
                },
            },
            sleeve_poke_revenantsleeve_alt = {
              name = "망령 슬리브",
              text = {
                  "{C:blue}+#1#{} 소모품 슬롯",
                  "{C:pink}포켓 팩{}이 상점에",
                  "등장하지 않습니다",
              },
            },

            sleeve_poke_luminoussleeve = {
                name = "루미너스 슬리브",
                text = {
                    "모든 조커가 무작위 {C:pink}타입{} 스티커를",
                    "가지고 생성되며,",
                    "한 번 {C:pink}에너지화{}됩니다",
                },
            },
            sleeve_poke_luminoussleeve_alt = {
                name = "루미너스 슬리브",
                text = {
                    "리롤 시 {C:green}#1# / #2#{} 확률로",
                    "{C:item}테라오브{}를 생성합니다",

                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "염동력 슬리브",
                text = {
                    "{C:tarot,T:v_crystal_ball}#1#{} 바우처와",
                                        "{C:item,T:c_poke_twisted_spoon}#2#{} 카드를",
                    "{C:attention}2{}장 보유하고 시작합니다"
                } 
            },
            sleeve_poke_telekineticsleeve_alt = {
                name = "염동력 슬리브",
                text = {
                    "{C:attention}소모품{} 슬롯에 있는",
                    "{C:item,T:c_poke_twisted_spoon}#2#{}마다",
                    "{C:blue}+1{} 소모품 슬롯을 얻습니다",
                }
            },
            sleeve_poke_ampedsleeve = {
                name = "증폭 슬리브",
                text = {
                    "{C:tarot,T:v_poke_energysearch}#1#{} 바우처와",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#{} 카드를",
                    "보유하고 시작합니다"
                } 
            },
            sleeve_poke_ampedsleeve_alt = {
                name = "증폭 슬리브",
                text = {
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#{} 대신",
                    "{C:dark_edition}네거티브 {C:attention,T:j_poke_jelly_donut}#1#{}를 보유하고 시작합니다",
                    "{C:pink,T:c_poke_colorless_energy}#3#{}가 더 이상 {X:colorless,C:white}노말{}이 아닌",
                    "조커에게 효과가 절반이 되지 않습니다",

                } 
            },
            sleeve_poke_futuresleeve = {
                name = "미래 슬리브",
                text = {
                                        "{C:purple}+#1# 꿰뚫어보기{}",
                } 
            },
            sleeve_poke_futuresleeve_alt = {
                name = "미래 슬리브",
                text = {
                  "핸드를 플레이할 때 {C:purple}+#2# 꿰뚫어보기{}를 얻습니다",
                  "{C:inactive,s:0.8}(라운드 종료 시 초기화)",

                } 
            },
            sleeve_poke_stadiumsleeve = {
                name = "스타디움 슬리브",
                text = {
                    "덱에 {C:attention}보너스, 배수,",
                    "{C:attention}와일드, 글래스, 스틸, 석재,",
                    "{C:attention}골드,{} {C:attention}럭키{} 카드를",
                    "가지고 시작합니다"
                } 
            },
            sleeve_poke_stadiumsleeve_alt = {
                name = "스타디움 슬리브",
                text = {
                    "{C:attention}보스 블라인드{} 격파 시,",
                    "무작위 {C:dark_edition}네거티브{} {C:attention}강화{} {C:tarot}타로{} 카드를",
                    "생성합니다"

                } 
            },
            sleeve_poke_megasleeve = {
                name = "메가 슬리브",
                text = {
                    "{C:tarot,T:v_reroll_surplus}#2#{}, {C:tarot,T:v_reroll_glut}#3#{},",
                    "{C:tarot,T:v_crystal_ball}#5#{} 바우처와",
                    "{C:spectral,T:c_poke_megastone}#1#{} 카드를 보유하고 시작합니다",
                    "상점 슬롯 {C:red}-#4#{}칸"

                } 
            },
			            sleeve_poke_megasleeve_alt = {
                name = "메가 슬리브",
                text = {
                    "{C:attention}메가진화{}가 더 이상",
                    "보유한 {C:spectral,T:c_poke_megastone}#1#{}당 1개의 조커로",
                    "제한되지 않습니다",
                } 
            },
            sleeve_poke_vendingsleeve = {
                name = "자판기 슬리브",
                text = {
                    "각 {C:attention}홀수 앤티 보스 블라인드{}를",
                    "격파할 때마다,",
                    "{C:attention,T:tag_vremade_double}#1#{}를 획득합니다",
                } 
            },
            sleeve_poke_vendingsleeve_alt = {
                name = "자판기 슬리브",
                text = {
                    "대신 모든 {C:attention}보스 블라인드{}를",
                    "격파할 때마다",
                    "{C:attention,T:tag_vremade_double}#1#{}를 획득합니다"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "하이퍼볼",
                text = {
                    "{C:attention}2진화 조커{} 카드를",
                    "생성합니다",
                    "{C:inactive}(빈 슬롯 필요)"
                },
            },
            c_poke_masterball = {
                name = "마스터볼",
                text = {
                    "{C:legendary,E:1}전설의{C:attention} 포켓몬 {}조커를",
                    "생성합니다",
                    "{C:inactive}(빈 슬롯 필요)"
                },
            },
            c_poke_transformation = {
                name = "변신",
                text = {
                    "가장 왼쪽 또는 선택한 포켓몬을",
                    "가장 높은 {C:attention}단계{}로 진화시키고 {C:pink}에너지화{}합니다", 

                },
            },
            c_poke_megastone = {
                name = "메가스톤",
                text = {
                    "{C:attention}재사용 가능{}",
                    "포켓몬을 {C:attention}메가진화{}시키거나", 
                    "메가 포켓몬을 {C:attention}퇴화{}시킵니다",
                    "판매 시 메가 포켓몬을 {C:attention}퇴화{}시킵니다",

                    "{C:inactive}(라운드당 1회 사용 가능)",
                },
            },
            c_poke_obituary = {
                name = "부고",
                text = {
                    "선택한 카드 {C:attention}1{}장에",
                    "{C:pink}분홍색 인장{}을 추가합니다",
                }
            },
            c_poke_nightmare = {
                name = "악몽",
                text = {
                    "가장 왼쪽 또는 선택한 조커를 파괴하고",
                    "해당 조커의 {C:pink}타입{}에 맞는 {C:attention}2{}장의 {C:dark_edition}네거티브{}",
                    "{C:pink}에너지{} 카드를 생성합니다",
                    "{C:inactive}(타입이 없는 조커는 {X:colorless,C:white}노말{C:inactive} 에너지를 생성합니다)"

                },
            },
            c_poke_revenant = {
                name = "망령",
                text = {
                    "선택한 카드 {C:attention}1{}장에",
                    "{C:item}실버 인장{}을 추가합니다",
                }
            },
            c_poke_double_rainbow_energy = {
                name = "더블 레인보우 에너지",
                text = {
                    "가장 왼쪽 또는 선택한 아무 {C:pink}타입{}의",
                    "조커를 {C:red}2{C:attention}회{C:green} {C:blue}연{C:purple}속 {C:pink}에너지화{}합니다",
                    "이번 라운드에 이자를 획득하지 못합니다",
                    "{C:inactive}(조커당 최대 {C:attention}#1#{C:inactive}회 증가)",

                },
            },



            -- 지라치의 소원 시스템 (Wishes)
            c_poke_fake_banker = { name = '돈의 소원', text = { "{C:dark_edition}돈을 원해!", } },
            c_poke_fake_booster = { name = '선택의 소원', text = { "{C:dark_edition}선택지를 원해!", } },
            c_poke_fake_power = { name = '힘의 소원', text = { "{C:dark_edition}강력한 힘을 원해!", } },
            c_poke_fake_negging = { name = '우정의 소원', text = { "{C:dark_edition}친구를 원해!", } },
            c_poke_fake_copy = { name = '도움의 소원', text = { "{C:dark_edition}도와줄 손길을 원해!", } },
            c_poke_fake_fixer = { name = '정화의 소원', text = { "{C:dark_edition}더 나은 덱을 원해!", } },
            c_poke_fake_masterball = { name = '소환의 소원', text = { "{C:dark_edition}전설의 포켓몬을 소환하고 싶어!", } },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "포켓 태그",
                text = {
                    "무료 {C:pink}메가 포켓 팩{}을 지급합니다",
                    "{C:attention}앤티 5{} 이상에서 팩에 {C:attention}메가스톤{}이",
                    "포함될 확률 {C:green}#1#%{}",
                    "{C:inactive,s:0.8}(확률을 높일 수 없음){}",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "이로치 태그",
                text = {
                    "다음 상점의 기본 에디션 조커가",
                    "무료가 되며 {C:colorless}이로치(Shiny){}가 됩니다",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "1진화 태그",
                text = {
                    "상점에 무료 {C:attention}1진화{} 조커가 나타납니다",
                }, 
            },
            tag_poke_safari_tag = {
                name = "사파리 태그",
                text = {
                    "상점에 무료 {C:safari}사파리{} 조커가 나타납니다",
                }, 
            },
            tag_poke_starter_tag = {
                name = "스타팅 태그",
                text = {
                    "무료 {C:attention}스타터 팩{}을 지급합니다",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "몬스터볼",
                text = {
                    "무작위 {C:attention}기본 조커{} 카드를 생성합니다",
                    "{C:inactive}(빈 슬롯 필요)"
                },
            },
            c_poke_greatball = {
                name = "슈퍼볼",
                text = {
                    "무작위 {C:attention}1진화 조커{} 카드를 생성합니다",
                    "{C:inactive}(빈 슬롯 필요)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "에너지 서치",
                text = { "{C:pink}에너지 한도 +2{}" },
            },
            v_poke_energyresearch = {
                name = "에너지 리서치",
                text = { "{C:pink}에너지 한도 +3{}" },
            },
            v_poke_goodrod = {
                name = "좋은 낚시대",
                text = { "{C:attention}부스터 팩{}의 선택지가 {C:attention}1{}개 늘어납니다" },
            },
            v_poke_superrod = {
                name = "대단한 낚시대",
                text = { "모든 {C:attention}소모품 팩{}에서 카드를 {C:pink}보관{}할 수 있습니다" },
            },
        },
        Other = {
            -- 타입 설명 (Type)
            Grass = { name = "타입", text = { "{X:grass,C:white}풀{}" } },
            Fire = { name = "타입", text = { "{X:fire,C:white}불꽃{}" } },
            Water = { name = "타입", text = { "{X:water,C:white}물{}" } },
            Lightning = { name = "타입", text = { "{X:lightning,C:black}번개{}" } },
            Psychic = { name = "타입", text = { "{X:psychic,C:white}초능력{}" } },
            Fighting = { name = "타입", text = { "{X:fighting,C:white}격투{}" } },
            Colorless = { name = "타입", text = { "{X:colorless,C:white}노말{}" } },
            Dark = { name = "타입", text = { "{X:dark,C:white}악{}" } },
            Metal = { name = "타입", text = { "{X:metal,C:white}강철{}" } },
            Fairy = { name = "타입", text = { "{X:fairy,C:white}페어리{}" } },
            Dragon = { name = "타입", text = { "{X:dragon,C:white}드래곤{}" } },
            Earth = { name = "타입", text = { "{X:earth,C:white}땅{}" } },
            Bird = { name = "타입", text = { "{X:bird,C:white}비행{}" } },

            ancient = {
                name = "고대",
                text = {
                    "포커 핸드에 포함된 {C:attention}#1#{}의",
                    "개수에 따라 효과가 발동합니다",
                    "{C:inactive}(효과는 {C:attention}중첩{C:inactive}됩니다)"
                }
            },
            breed = {
                name = "교배",
                text = {
                    "{C:attention}부모{} 중 하나의 가장 낮은 {C:attention}진화 단계{}로",
                    "부화하는 {C:attention}수수께끼 알{}을 생성합니다",
                    "{C:inactive}(부화까지 항상 {C:attention}3{C:inactive}라운드 소요){}"
                }
            },
            energize = {
                name = "에너지화",
                text = {
                  "조커의 {C:mult}배수{}, {C:chips}칩{}, {C:money}골드{}, {X:mult,C:white}X배수{} 수치를",
                  "{C:attention}영구적으로{} 증가시킵니다"
                }
            },
            eitem = {
                name = "진화 카드",
                text = {
                    "사용 시, 다음 라운드 종료 시점에 가장 왼쪽 또는",
                    "선택된 {C:attention}진화 가능{} 조커를 진화시킵니다",
                }
            },
            hitem = {
                name = "소지품",
                text = { "{C:attention}#1#{}에 의해 사용됨" }
            },
            typechanger = {
                name = "타입 체인저",
                text = {
                    "가장 왼쪽 또는 선택된 조커에",
                    "{V:1}#1#{} 스티커를 부착합니다"
                }
            },
            typechangerpoke = {
                name = "타입 체인저",
                text = {
                    "생성 시 자신에게 {V:1}#1#{} 스티커를 부착합니다"
                }
            },
            basic = {
                name = "기본",
                text = {
                    "{C:attention}진화{}하지 않은",
                    "포켓몬 조커",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}아기 포켓몬{C:inactive,s:0.8} 및 {C:purple,s:0.8}전설{C:inactive,s:0.8} 포켓몬 제외)"

                }
            },
			stage1 = {
                name = "1진화",
                text = {
                    "한 번 {C:attention}진화{}한",
                    "포켓몬 조커"
                }
            },
            stage2 = {
                name = "2진화",
                text = {
                    "두 번 {C:attention}진화{}한",
                    "포켓몬 조커"
                }
            },
            energy = {
                name = "에너지 개수",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "골드 획득 확률",
                text = {
                    "{C:attention}#1#%{} 확률로",
                    "추가로 {C:money}$1{}를 획득합니다"
                }
            },
            mult_progress = {
                name = "배수 증가 수치",
                text = {
                    "{C:attention}#1#%{} 확률로",
                    "{C:mult}배수{} 증가량이",
                    "{C:mult}+1{}만큼 상승합니다"
                }
            },
            chip_progress = {
                name = "칩 증가 수치",
                text = {
                    "{C:attention}#1#%{} 확률로",
                    "{C:chips}칩{} 증가량이",
                    "{C:chips}+1{}만큼 상승합니다"
                }
            },
            money_progress = {
                name = "골드 증가 수치",
                text = {
                    "{C:attention}#1#%{} 확률로",
                    "{C:money}골드{} 증가량이",
                    "{C:money}$1{}만큼 상승합니다"
                }
            },
            availability = {
                name = "활성화 조건",
                text = {
                    "{C:attention}#1#{}인 경우",
                    "사용할 수 없습니다",
                }
            },
            baby = {
                name = "베이비",
                text = {
                    "핸드 점수 계산 시",
                    "이 조커의 오른쪽에 {C:attention}베이비가 아닌{}",
                    "조커가 있다면, 이 조커는 {C:attention}디버프{}됩니다"
                }
            },
            nature = {
                name = "성격",
                text = {
                    "이 조커를 발동시키는 고유한 {C:attention}#1#{} 또는 {C:attention}#1#{} 세트입니다",
                    "조커가 생성될 때 한 번 결정됩니다",
                }
            },
            hazard_level = {
              name = "해저드 레이어",
              text = {
                  "{C:attention}첫 번째{} 핸드를 뽑을 때, 내 {C:attention}해저드 레이어{} 수만큼",
                  "핸드에 {C:attention}해저드{} 카드를 추가합니다",
                  "{C:inactive}(현재 해저드 레이어 {C:attention}#1#{C:inactive}/#2#){}"
              }
            },
            hazard_level_extra = {
              name = "해저드 레이어",
              text = {
                  "{C:attention}첫 번째{} 핸드를 뽑을 때, 내 {C:attention}해저드 레이어{} 수만큼",
                  "핸드에 {C:attention}해저드{} 카드를 추가합니다",
                  "{C:inactive}(현재 해저드 레이어 {C:attention}#1#{C:inactive}/#2#){}",
                  "{C:inactive}(추가 해저드 레이어는 한도를 높여줍니다){}"
              }
            },
            merge = {
                name = "합체",
                text = {
                  "카드를 제거하고 이 조커에 추가합니다.",
                  "우클릭하여 합체된 카드들을",
                  "확인할 수 있습니다",
                  "{C:inactive}(합체된 조커는 복사할 수 없습니다){}"
                }
            },
            rewards_ruins_of_alph = {
                name = "보상",
                text = {
                  "{C:attention}#1#{} - {C:attention}사파리{} 조커",
                  "{C:attention}#2#{} - 무작위 조커 {C:attention}복사{}",
                  "{C:inactive}(에디션은 제거됨)",
                  "{C:attention}#3#{} - {C:attention}브레인스토름{}",
                  "{C:attention}#4#{} - {C:attention}안농 무리와 더 소울(The Soul)",
                  "{C:inactive}(보상은 중첩되지 않습니다){}"
                }
            },
            scry_cards = {
                name = "꿰뚫어보기",
                text = {
                    "덱 맨 위의 카드를",
                    "확인합니다"
                }
            },
            mega_rule = {
                name = "제한",
                text = {
                    "보유한 {C:attention}메가스톤{} 하나당",
                    "단 1개의 조커만 {C:attention}메가진화{}할 수 있습니다"
                }
            },
            mega_poke = {
                name = "메가진화",
                text = {
                    "{C:attention}메가스톤{}을 사용하여",
                    "{C:attention}메가진화{}할 수 있습니다"
                }
            },
            mega_used_on = {
                name = "적용 대상",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "XY 메가진화",
                text = {
                  "위치에 따라 {C:attention}메가진화{} 형태가 바뀝니다",
                  "왼쪽 끝 - {C:attention}#1#{}",
                  "오른쪽 끝 - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "조건",
                text = {
                    "진화시키려면 {C:attention}플레잉 카드{}에",
                    "사용해야 합니다"
                }
            },
            deli_gift = {
                name = "선물",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}아이템{} 카드",
                    "{C:green}20%{} - {C:attention}쿠폰 태그",
                    "{C:green}15%{} - {C:dark_edition}폴리크롬{} {C:attention}기프트 카드",
                }
            },
            dril_treasure = {
                name = "보물",
                text = {
                    "{C:green}30%{} - {C:attention}진화의 돌   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}진화의 돌 2개",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}5%{} - {C:money}$20{}             ",
                }
            },
            exdril_treasure = {
                name = "보물",
                text = {
                    "{C:green}30%{} - {C:attention}진화의 돌   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}진화의 돌 2개",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}4%{} - {C:money}$20{}             ",
                    "{C:green}1%{} - {C:attention}메가스톤     ",
                }
            },
            pickup = {
              name = "픽업",
              text = {
                "{C:green}34%{} - {C:item}아이템{}",
                "{C:green}25%{} - {C:item}진화 아이템",
                "{C:green}20%{} - {C:item}먹다남은음식",
                "{C:green}20%{} - {C:item}휘어진스푼",
                "{C:green}1%{} - {C:spectral}변화",
              }
            },
            poke_artist = {
              name = "아티스트",
              text = {
                "{V:1}#1#"
              }
            },
            pokeballs_group = {
              name = "몬스터볼",
              text = {
                "특정 조건을 가진",
                "무작위 조커를 생성합니다",
              }
            },
            holding = {
                name = "소지 중",
                text = {
                  "이 조커를 획득할 때",
                  "{C:attention}#1#{} 카드를 함께 얻습니다",
                  "{C:inactive}(빈 슬롯 필요){}"
                }
            },
            holding_an = {
                name = "소지 중",
                text = {
                  "이 조커를 획득할 때",
                  "{C:attention}#1#{} 카드를 함께 얻습니다",
                  "{C:inactive}(빈 슬롯 필요){}"
                }
            },
            holding_other = {
                name = "소지 중",
                text = {
                  "이 조커를 획득할 때",
                  "{C:attention}#1#{}을(를) 함께 얻습니다",
                  "{C:inactive}(빈 슬롯 필요){}"
                }
            },
            eeveelution = {
                name = "진화",
                text = {
                    "{C:attention}물의돌{} - {X:water,C:white}샤미드{}",
                    "{C:attention}천둥의돌{} - {X:lightning,C:black}쥬피썬더{}",
                    "{C:attention}불꽃의돌{} - {X:fire,C:white}부스터{}",
                    "{C:attention}태양의돌{} - {X:psychic,C:white}에브이{}",
                    "{C:attention}달의돌{} - {X:dark,C:white}블래키{}",
                    "{C:attention}리프의돌{} - {X:grass,C:white}리피아{}",
                    "{C:attention}얼음의돌{} - {X:water,C:white}글레이시아{}",
                    "{C:attention}빛의돌{} - {X:fairy,C:white}님피아{}"
                }
            },
            poke_egg_tip = {
              name = "수수께끼 알",
              text = {
                "차갑고 외로워 보입니다."
              }
            },
            poke_top_cards = {
              name = "맨 위 카드",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "흡수",
              text = {
                "다른 조커의 판매 가격을 제거하고",
                "그 수치를 자신의 능력치에 추가합니다",
                "{C:inactive}(대상의 판매 가격이 {C:money}$1{C:inactive} 초과여야 함)"
              }
            },
            poke_drain_item = {
              name = "흡수",
              text = {
                "조커의 판매 가격이 {C:money}$1{}보다 높으면",
                "그 조커의 판매 가격을 제거합니다",
              }
            },
            poke_volatile_left = {
              name = "왼쪽 불안정",
              text = {
                "이 능력은 이 조커가 가장 왼쪽에",
                "있을 때만 발동합니다",
                "{C:inactive}({C:attention}불안정{C:inactive} 포켓몬 무시)"
              }
            },
            poke_volatile_right = {
              name = "오른쪽 불안정",
              text = {
                "이 능력은 이 조커가 가장 오른쪽에",
                "있을 때만 발동합니다",
                "{C:inactive}({C:attention}불안정{C:inactive} 포켓몬 무시)"
              }
            },
            sketch = {
              name = "스케치",
              text = {
                "조커가 판매, 파괴되거나 다른 능력을",
                "복사하기 전까지 해당 능력을 복사합니다",
                "복사된 능력은 툴팁과 도감 메뉴에 나타나며,",
                "조커가 복사될 때 스케치 상태가 초기화됩니다"
              }},
            unlimited_energy_tooltip = {
              name = "무한 에너지",
              text = {
                "조커에게 {C:pink}에너지{}를",
                "횟수 제한 없이 사용할 수 있습니다"
              }
            },
            precise_energy_tooltip = {
                name = "정밀 에너지 스케일링",
                text = {
                    "{s:0.8}{C:pink,s:0.8}에너지{}{s:0.8} 보너스 적용 시 모든 값에 {C:attention,s:0.8}소수점{}을 사용합니다{}",
                    "{s:0.8}이 옵션이 {C:attention,s:0.8}꺼져 있으면{}{s:0.8} 보너스에 다음이 적용됩니다:{}",

                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}배수 - 소수점 사용",
                    "{C:attenion}2. {s:0.8}고정 {C:mult,s:0.8}배수{}{s:0.8} 및 {C:chips,s:0.8}칩{}{s:0.8} - 가장 가까운 정수로 올림",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}배수 증가{}{s:0.8} 및 {C:chips,s:0.8}칩 증가{}{s:0.8} - 소수점 부분이 백분율로 표시되며,", 
                    "{s:0.8}기본 {C:mult,s:0.8}배수{}{s:0.8} 및 {C:chips,s:0.8}칩{}{s:0.8}에 보너스를 적용하는 데 사용됨",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - 소수점 부분이 백분율로 표시되며,",
                    "{s:0.8}추가 {C:money,s:0.8}${}{s:0.8}를 획득할 확률로 사용됨{}",
                    "{C:inactive,s:0.8}(포켓몬이 아닌 조커는 항상 정밀 스케일링을 사용합니다){}"
                }
            },
            discovery_tooltip = {
              name = "발견",
              text = {
                "포켓몬 모드 오브젝트는 기본적으로 미발견 상태입니다.",
                "이 설정을 끄면 모든 모드 오브젝트가 발견된 상태가 됩니다.",
                "{C:red}모든 오브젝트 발견은 되돌릴 수 없습니다{}"
              }
            }, 
            pokemononly_tooltip = {
              name = "포켓몬 전용",
              text = {
                "{C:attention}포켓몬{} 조커만 등장합니다",
              }
            },
            gen1_tooltip = {
              name = "1세대 허용",
              text = {
                "{C:attention}1세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen2_tooltip = {
              name = "2세대 허용",
              text = {
                "{C:attention}2세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen3_tooltip = {
              name = "3세대 허용",
              text = {
                "{C:attention}3세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen4_tooltip = {
              name = "4세대 허용",
              text = {
                "{C:attention}4세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen5_tooltip = {
              name = "5세대 허용",
              text = {
                "{C:attention}5세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen6_tooltip = {
              name = "6세대 허용",
              text = {
                "{C:attention}6세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen7_tooltip = {
              name = "7세대 허용",
              text = {
                "{C:attention}7세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen8_tooltip = {
              name = "8세대 허용",
              text = {
                "{C:attention}8세대{} 포켓몬 조커가 등장합니다"
              }
            },
            gen9_tooltip = {
              name = "9세대 허용",
              text = {
                "{C:attention}9세대{} 포켓몬 조커가 등장합니다"
              }
            },
            hazards_on_tooltip = {
              name = "해저드 허용",
              text = {
                "{C:purple}해저드{} 능력을 가진 {C:attention}포켓몬{} 조커가",
                "등장합니다"
              }
            },
            shinyplayingcard_tooltip = {
              name = "플레이 카드 이로치",
              text = {
                "{C:attention}플레이 카드{}가 {C:dark_edition}이로치(Shiny){} 에디션을",
                "가질 수 있게 합니다"
              }
            },
            detailed_tooltips_tooltip = {
              name = "상세 툴팁",
              text = {
                "모든 툴팁을 상세히 표시합니다.",
                "이 설정을 끄면 포켓몬 조커의",
                "툴팁 대부분이 생략됩니다.",
              }
            },
            previous_evo_stickers_tooltip = {
              name = "이전 진화형 스티커",
              text = {
                "승리한 조커의 {C:attention}이전 진화 단계{}들도",
                "현재 게임에서 승리한 것으로 간주합니다.",
              }
            },
            order_jokers_tooltip = {
              name = "도감 번호순 정렬",
              text = {
                "수집품 창에서 포켓몬 조커가",
                "{C:attention}포켓몬 도감 번호{} 순서대로 나타납니다.",
              }
            },
            stake_skins_tooltip = {
              name = "커스텀 스테이크 스킨",
              text = {
                "스테이크와 스테이크 스티커에",
                "커스텀 스프라이트를 사용합니다.",
              }
            },
            pokemon_only_collection_tooltip = {
              name = "수집품에 포켓몬만 표시",
              text = {
                "수집품 화면에",
                "{C:attention}포켓몬 조커{}만 표시됩니다.",
              }
            },
            legacycontent_tooltip = {
              name = "레거시 콘텐츠",
              text = {
                "삭제되었던 콘텐츠들을",
                "활성화합니다."
              }
            },
            jokecontent_tooltip = {
              name = "농담 콘텐츠",
              text = {
                "유머를 위해 제작된",
                "콘텐츠들을 활성화합니다."
              }
            },
            splashcard_tooltip = {
              name = "포켓몬 스플래시 카드",
              text = {
                "게임 시작 시 스플래시 이미지를",
                "랜덤 포켓몬 조커로 교체합니다.",
              }
            },
            title_tooltip = {
              name = "포켓몬 타이틀 화면",
              text = {
                "기본 타이틀 화면을",
                "포켓몬 버전으로 교체합니다.",
              }
            },
            altart_tooltip = {
              name = "얼터너티브 아트",
              text = {
                "일부 포켓몬 조커에",
                "다른 스프라이트를 사용합니다.",
              }
            },
            animation_tooltip = {
              name = "애니메이션 활성화",
              text = {
                "일부 포켓몬 조커에",
                "애니메이션 스프라이트를 적용합니다.",
              }
            },
            allowpokeballs_tooltip = {
              name = "몬스터볼 허용",
              text = {
                "몬스터볼 {C:item}아이템{}이 등장하도록 합니다.",
              }
            },
            pokemaster_tooltip = {
              name = "포켓몬 마스터 모드",
              text = {
                "'포켓몬 전용' 설정이 적용되며,",
                "추가 스테이크를 사용할 수 있습니다."
              }
            },
            designed_by = {
              name = "디자인:",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "재사용 가능",
              text = {
                "사용해도 소모되지 않음",
                "{C:inactive,s:0.8}({C:attention,s:0.8}구부러진스푼{C:inactive,s:0.8} 효과 제외){}"
              }
            },
            sylveon_tag_pool = {
              name = "태그 풀",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "태그 풀",
              text = {
                "{C:money}#1#",
                "{C:money}#2#",
                "{C:money}#3#",
                "{C:money}#4#",
                "{C:money}#5#",
              }
            },
            safaridesc = {
                name = "사파리",
                text = {
                    "{C:attention}진화{} 또는 특정 {C:attention}몬스터볼 아이템{}을",
                    "통해서만 획득할 수 있습니다."
                } 
            },

            poke_pink_seal_seal = {
                name = "핑크 실",
                text = {
                    "라운드의 {C:attention}첫 번째 핸드{}로 득점 시,",
                    "소유한 조커의 {C:pink}타입{}과 일치하는 {C:pink}에너지{} 카드 생성",
                    "{C:inactive}(공간이 있어야 함){}"
                },
            },
            
            poke_silver_seal = {
                name = "실버 실",
                text = {
                  "카드가 득점할 때 손에 {C:attention}들고 있다면{}",
                  "{C:item}아이템{} 카드를 생성하고 {C:attention}버려집니다{}"
                }
            },

            undiscovered_energy = {
                name = "미발견",
                text = {
                    "시드가 없는 런에서",
                    "이 카드를 구매하거나 사용하여",
                    "능력을 알아내세요"
                }
            },
				p_poke_pokepack_normal_1 = {
                name = "포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "점보 포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "메가 포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "점보 포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "메가 포켓 팩",
                text = {
                    "{C:attention}#2#{}장의 {C:item}아이템{} 카드와",
                    "{C:attention}#3#{}장의 {C:pink}에너지{} 카드 중",
                    "{C:attention}#1#{}장을 선택하세요",
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "소원 팩",
                text = {
                    "{C:dark_edition}소원을 비세요!{}",
                },
            },
			p_poke_pokepack_starter_pack = {
                name = "스타터 팩",
                text = {
                    "{C:attention}#2#{}장의 카드 중에서",
                    "{C:attention}#1#{}마리의 스타터 포켓몬을 선택하세요"
                }
            }, -- 여기에 쉼표가 반드시 있어야 합니다.

            poke_hazards = {
                name = "해저드",
                text = {
                    "{C:attention}블라인드{} 선택 시,",
                    "덱에 있는 {C:attention}#1#{}장의 강화되지 않은 카드가",
                    "{C:attention}해저드 카드{}가 됩니다",
                }
            } 
        },   
    }, 


    misc = {

        achievement_names = {

   

        },

        achievement_descriptions = {

              
        },
        challenge_names = {
            c_poke_poke_master = "포켓몬 마스터",
            c_poke_nuzlocke = "너즐록",
            c_poke_goodasgold = "황금의 몸",
            c_poke_parenthood = "부모의 마음",
            c_poke_littlecup = "리틀컵",
            c_poke_hammertime = "해머 타임",
            c_poke_lonesome = "외톨이",
            c_poke_randomizer = "랜더마이저"
        },
        dictionary = {
            k_energy = "에너지",
            k_item = "아이템",
            k_poke_pocket_pack = "포켓 팩",
            k_poke_wish_pack = "소원 팩",
            k_poke_starter_pack = "스타터 팩",
            k_poke_gives = "제공",
            k_poke_ignores = "무시",
            k_poke_limit = "제한",
            k_poke_pp = "포인트업",
            
            k_poke_baby = "아기 포켓몬",
            k_poke_safari = "사파리",
            k_poke_mega = "메가",

            b_save = "저장",
            b_energy_cards = "에너지 카드",
            b_item_cards = "아이템 카드",
            
            --Mod Menu stuff
            poke_settings_header_required = "재시작 필요:",
            poke_settings_header_norequired = "재시작 필요 없음:",
            poke_settings_pokemon_only = "포켓몬만 등장?",
            poke_settings_unlimited_energy = "무한 에너지?",
            poke_settings_shiny_playing_cards = "플레잉 카드 이로치?",
            poke_settings_pokemon_detailed_tooltips = "상세 툴팁?",
            poke_settings_previous_evo_stickers = "이전 진화 스티커?",
            poke_settings_order_jokers = "도감 번호순 정렬?",
            poke_settings_pokemon_only_collection = "수집품에 포켓몬만 표시?",
            poke_settings_jokers_only = "조커만?",
            poke_settings_no_evolutions = "진화 없음?",
            poke_settings_pokeballs = "몬스터볼 허용?",
            poke_settings_pokedex_number = "도감 번호?",
            poke_settings_pokemon_splash = "포켓몬 스플래시 카드?",
            poke_settings_pokemon_title = "포켓몬 타이틀?",
            poke_settings_pokemon_gen_one = "1세대 허용?",
            poke_settings_pokemon_gen_two = "2세대 허용?",
            poke_settings_pokemon_gen_three = "3세대 허용?",
            poke_settings_pokemon_gen_four = "4세대 허용?",
            poke_settings_pokemon_gen_five = "5세대 허용?",
            poke_settings_pokemon_gen_six = "6세대 허용?",
            poke_settings_pokemon_gen_seven = "7세대 허용?",
            poke_settings_pokemon_gen_eight = "8세대 허용?",
            poke_settings_pokemon_gen_nine = "9세대 허용?",
            poke_settings_pokemon_hazards_on = "해저드 허용?",
            poke_settings_pokemon_precise_energy = "정밀 에너지 스케일링 사용?",
            poke_settings_pokemon_discovery = "! 발견 상태?",
            poke_settings_pokemon_altart = "대체 아트?",
            poke_settings_pokemon_aprilfools = "농담 콘텐츠?",
            poke_settings_pokemon_legacy = "레거시 콘텐츠?",
            poke_settings_enable_animations = "애니메이션 활성화?",
            poke_settings_pokemon_master = "포켓몬 마스터 모드?",
            poke_settings_pokemon_spritesheet = "기본 스프라이트 시트 (개별 설정 초기화)",
            poke_settings_pokemon_sprites_right_click_to_change = "우클릭하여 변경",
            poke_settings_pokemon_spritesheet_classic = "클래식",
            poke_settings_pokemon_spritesheet_seriesa = "시리즈 A",
            poke_settings_pokemon_spritesheet_seriesb = "시리즈 B",
            
            poke_credits_actualcredits = "크레딧",
            poke_credits_thanks = "감사한 분들",
            poke_credits_lead = "리드 개발자: ",
            poke_credits_graphics = "그래픽 디자인: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "개발자: ",
            poke_credits_designer = "디자인 보조: ",
            poke_credits_community_manager = "커뮤니티 매니저: ",
            poke_credits_special_thanks = "특별히 감사한 분들: ",
            poke_credits_localization = "현지화: ",
            poke_credits_sound = "오디오 엔지니어: ",
            poke_credits_artist = "아티스트: ",
            poke_credits_designer = "디자이너: ",

            poke_artist_credits_art_credits = "아트 크레딧",
            poke_artist_credits_artists = "아티스트:",
            poke_artist_credits_basic_sprites_by = "기본 포켓몬 스프라이트 제공:",
            poke_artist_credits_sprite_resource = "64x64 포켓몬 스프라이트 리소스",
            poke_artist_credits_artist_info = "아티스트 정보",
            poke_artist_credits_art_collection = "아트 컬렉션",
            poke_artist_credits_toggle_shiny = "우클릭으로 색이 다른 토글",
            poke_artist_credits_cycle_draw_layers = "더블 클릭으로 레이어 순환",
            poke_artist_credits_toggle_center_layer = "더블 클릭으로 배경 숨기기",
            poke_artist_credits_toggle_soul_layer = "더블 클릭으로 영혼 레이어 숨기기",

            poke_artist_credits_sprite_resource_content = {
                "기본 스프라이트 아트 스타일은 64x64 포켓몬 스프라이트 리소스와",
                "그 후속작들의 스프라이트를 사용합니다.",
                "결국 시리즈 A를 새로운 표준으로 사용할 계획이지만,",
                "이 스프라이트를 사용할 기회를 주신 모든 기여자분들께",
                "감사의 말씀을 전합니다.",
                "각 버튼을 클릭하여 해당 리소스에 대한",
                "Pokecommunity 스레드를 찾을 수 있습니다:"
            },

            poke_plus_pokeitem = "+1 아이템",
            poke_plus_energy = "+1 에너지",
            poke_plus_consumable = "+1 소모품",
            poke_plus_shop = "+1 상점 카드",
            poke_destroyed_ex = "파괴됨!",
            poke_evolve_success = "진화함!",
            poke_transform_success = "변신함!",
            poke_evolve_level = "레벨 업!",
            poke_tera = "테라",
            poke_tera_ex = "테라!",
            poke_metal_ex = "강철!",
            poke_dragon_ex = "드래곤!",
            poke_energized_ex = "에너지화!",
            poke_round_plus_ex = "라운드 통과!",
            poke_unlimited_energy = "무한",
            poke_reroll_plural = "리롤",
            poke_reroll_singular = "리롤",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "파오리",
            cubone_marowak_infoqueue = "탕구리와 텅구리",
            snorlax_infoqueue = "잠만보",
            pokeball_variable = "몬스터볼",
            greatball_variable = "수퍼볼",
            goodrod_variable = "좋은낚싯대",
            pinkseal_variable = "핑크 인장",
            silverseal_variable = "실버 인장",
            twisted_spoon_variable = "휘어진스푼",
            double_rainbow_energy_variable = "더블 레인보우 에너지",
            megastone_variable = "메가스톤",

            --From Gastly Line
            poke_lick_ex = "핥기!",
            poke_lick = "핥기",
            --From Kingler
            poke_surf_ex = "파도타기!",
            --From Voltorb Line
            poke_explosion_ex = "폭발!",
            poke_boo_ex = "까꿍!",
            --From Exeggutor
            poke_solar_ex = "솔라!",
            poke_solar = "솔라",
            --From Pinsir
            poke_pinsir_pin = "고정됨!",
            poke_pinsir_remove_pin = "고정 해제!",
            --From Tangela line
            poke_tangela_bonus = "전부!",
            --Golbat And Crobat thingy
            poke_screech_ex = "싫은소리!",
            --Hoppip Line
            poke_hop_ex = "홉!",
            poke_skip_ex = "스킵!",
            poke_jump_ex = "점프!",
            --From Bellossom
            poke_petal_dance_ex = "꽃잎!",
            poke_petal_dance = "꽃잎",
            --From Scizor
            poke_x_scissor_ex = "시저크로스!",
            poke_x_scissor = "시저크로스",
            --From Kingdra
            poke_twister_ex = "회오리!",
            --From Mime Jr.
            poke_mime_ex = "흉내내기!",
            --From Magmortar
            poke_fire_blast_ex = "불대문자!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "번개!",
            poke_gift_ex = "선물!",
            poke_drill_ex = "드릴라이너!",
            poke_faint_ex = "기절!",
            poke_reveal_ex = "발각!",
            poke_nido_ex = "니도!",
            poke_disguise_intact = "탈 유지! 사망 방지!",
            poke_disguise_broken = "탈 깨짐! 사망 방지 실패!",
            poke_dig_ex = "구멍파기!",
            poke_blazekick_ex = "브레이즈킥!",
            poke_darts_ex = "다트!",
            poke_none = "없음",
            poke_dawn_info1 = "(다음 플레이 핸드가 핸드 타입을 설정)",
            poke_dawn_info2 = "(핸드 타입 설정됨!)",
            poke_make_it_rain = "골드러시!",
            poke_val_down = "가치 하락!",
            poke_powder_ex = "눈싸라기!",
            poke_future_sight = "미래예지!",
            poke_smell_ya = "나중에 보자!",
            poke_wowthree = "와우! 3!",
            poke_illusion = "...?",
            poke_crack_ex = "깨짐!",
            poke_shake_ex = "흔들기!",
            poke_closed_ex = "닫힘!",
            poke_reload_ex = "재장전!",
            poke_shadow_tag_ex = "그림자밟기!",
            poke_flees_ex = "도망침!",
            poke_hidden_power_ex = "잠재파워!",
            poke_nasty_plot_ex = "나쁜음모!",
            poke_iron_tail_ex = "아이언테일!",
            poke_autotomize_ex = "바디퍼지!",
            poke_highjumpkick_ex = "무릎차기!",
            poke_water_gun_ex = "물대포!",
            poke_sky_attack_ex = "불새!",
            
            poke_grass_badge = "풀",
            poke_fire_badge = "불꽃",
            poke_water_badge = "물",
            poke_lightning_badge = "전기",
            poke_psychic_badge = "에스퍼",
            poke_fighting_badge = "격투",
            poke_colorless_badge = "노말",
            poke_dark_badge = "악",
            poke_metal_badge = "강철",
            poke_fairy_badge = "페어리",
            poke_dragon_badge = "드래곤",
            poke_earth_badge = "땅",
            poke_bird_badge = "비행",
            
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "핑크 인장",
            poke_silver_seal = "실버 인장",

            poke_shiny = "이로치",

            grass_sticker = "풀 테라",
            fire_sticker = "불 테라",
            water_sticker = "물 테라",
            lightning_sticker = "전기 테라",
            psychic_sticker = "에스퍼 테라",
            fighting_sticker = "격투 테라",
            colorless_sticker = "노말 테라",
            dark_sticker = "악 테라",
            metal_sticker = "강철 테라",
            fairy_sticker = "페어리 테라",
            dragon_sticker = "드래곤 테라",
            earth_sticker = "땅 테라",

            k_poke_safari = "사파리",
            k_poke_mega = "메가",
        },
        quips = {
          poke_lose_quip1 = {"포켓몬 콘테스트가", "네 적성에 더 맞을지도...",},
          poke_lose_quip2 = {"물 밖으로 나온", "잉어킹 같았어!",},
          poke_lose_quip3 = {"타입 상성", "공부하는 걸 깜빡했니?",},
          poke_lose_quip4 = {"이런, 또 다시", "날아가 버렸다!",},
          poke_lose_quip5 = {"그 블라인드는", "효과가 굉장했어!",},
          poke_lose_quip6 = {"재가 되어버렸군...",},
          poke_lose_quip7 = {"받지 못한 카드를", "불평하는 것보다", "가지고 있는 카드를", "숙달하는 게 더 중요해!",},
          poke_lose_quip8 = {"포켓몬 센터로", "서두르는 게 좋겠어!",},
          poke_lose_quip9 = {"기력의조각 필요해?",},
          poke_lose_quip10 = {"네 상금의 절반은", "내가 가져간다!",},
          poke_win_quip1 = {"진정한 포켓몬 마스터!",},
          poke_win_quip2 = {"진정으로 뛰어난 트레이너는", "자기가 좋아하는", "포켓몬으로 이기는 법!",},
          poke_win_quip3 = {"다음은 뭐지, 트레이너?",},
          poke_win_quip4 = {"경기장에서 너랑은", "마주치고 싶지 않네!",},
          poke_win_quip5 = {"그 행운이라면,", "다음 목적지는", "무지개시티 게임코너야!",},
          poke_win_quip6 = {"네 실력이 진화했어!",},
          poke_win_quip7 = {"전당등록을", "축하합니다!",},
          poke_win_quip8 = {"챔피언의 시간을", "보냈군요!",},
          poke_win_quip9 = {"정말 전설적인 활약이야!",},
          poke_win_quip10 = {"환상의 런이었어!",},
        },
        tutorial = {
          poke_intro_1 = {
          "안녕, 난 {C:attention}짐보 박사{}란다!",
          "{C:attention}포켓몬{}의 세계에 온 걸 환영한다!",
          },
        },
        v_dictionary = {
          poke_discards = "+#1# 버리기",
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"보스 블라인드 격파 시 {C:attention}+1{} 조커 슬롯 {C:inactive}(최대 5)"},
           ch_c_poke_nuzlocke = {"각 앤티의 첫 상점에 {C:attention}광대 팩{}이 포함됨"},
           ch_c_apply_randomizer = {"포켓몬 조커가 무작위 포켓몬 조커로 진화함"},
        },
    },
}