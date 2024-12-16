-- Welcome to ru.lua

--Progress report:
--Update this as you go! Or don't, I know Cryptid doesn't (lmfao)

--[[
Decks: No
Jokers: No
Settings/Mod: No
Items: No
Energy: No
Deck Sleeves (requires Decksleeves Mod): No
Boss Blinds: No
Challenges: No
Spectrals: No
Tarots: Yes (there aren't any lmao)
Stickers: No
Planets: Yes (there aren't any lmao)
Dictonary: No
Editions: No
Vouchers: No
Tags: No
Misc Infoqueues (ancient, baby, eitem, Type, etc): No
Other (packs, stickers, etc): No
Misc: No
]]--


return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Тренерская колода",
                text = {
                    "Начните забег с",
                    "ваучером {C:tarot,T:v_poke_goodrod}#1#{}",
                    "и картой {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_obituarydeck = {
                name = "Ритуальная колода",
                text = {
                    "У ВСЕХ карт есть {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Самоцветная колода",
                text = {
                    "ВСЕ Покемоны создаются",
                    "со случайным {C:pink}типом{}",
                    "и {C:attention}+1{} {C:pink}энергией{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Камера Шартрез",
                text = {
                    "Случайный стихийный тип ослаблен",
                    "с каждой рукой",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Покеболл",
                text = {
                    "Создаёт случайную",
                    "карту {C:attention}Базового Джокера{}",
                    "{C:inactive}(Должно быть место)"
                },
            },
            c_poke_greatball = {
                name = "Большой Покеболл",
                text = {
                    "Создаёт случайную",
                    "карту {C:attention}Джокера 1 стадии{}",
                    "{C:inactive}(Должно быть место)"
                },
            },
            c_poke_moonstone = {
                name = "Камень Луны",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Луна{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_sunstone = {
                name = "Камень Солнца",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Солнце{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_waterstone = {
                name = "Камень Воды",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Иерофант{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_thunderstone = {
                name = "Камень Молнии",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Дьявол{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_firestone = {
                name = "Камень Огня",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Влюблённые{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_leafstone = {
                name = "Камень Листа",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Мир{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_linkcable = {
                name = "Шнур Связи",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Смерть{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_leftovers = {
                name = "Объедки",
                text = {
                    "{C:attention}Удерживаемая карта{}",
                    "Создаёт карту {C:attention}Висельник{}",
                    "{C:inactive}(Должно быть место){}"
                }
            },
            c_poke_leek = {
                name = "Лук",
                text = {
                    "{C:attention}Удерживаемая карта{}",
                    "создаёт карту {C:attention}Колесо Фортуны{}",
                    "{C:inactive}(Должно быть место){}"
                }
            },
            c_poke_thickclub = {
                name = "Увесистая Дубинка",
                text = {
                    "{C:attention}Удерживаемая карта{}",
                    "Создаёт карту {C:attention}Сила{}",
                    "{C:inactive}(Должно быть место){}"
                }
            },
            c_poke_teraorb = {
                name = "Tera Orb",
                text = {
                    "Даёт случайный",
                    "стикер {C:pink}типа{}",
                    "самому левому Джокеру{}", 
                    "и {C:attention}+1{} {C:pink}Энергию{}"
                },
            },
            c_poke_metalcoat = {
                name = "Металлический плащ",
                text = {
                    "Даёт {C:metal}Металлический{} стикер",
                    "Самому левому Джокеру",
                    "Создаёт карту {C:attention}Колесница{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_dragonscale = {
                name = "Чешуя Дракона",
                text = {
                    "Даёт {C:dragon}Драконий{} стикер",
                    "самому левому Джокеру",
                    "Создаёт карту {C:attention}Император{}",
                    "{C:inactive}(Должно быть место){}"
                },
            },
            c_poke_kingsrock = {
                name = "Камень Короля",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Превращает {C:attention}#1#{} выбранную карту",
                    "в карту {C:attention}Короля{}",
                },
            },
            c_poke_upgrade = {
                name = "Улучшение",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Добавляет {C:attention}#1#{} выбранным картам",
                    "случайные {C:attention}Улучшения{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Скучный диск",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Перемешивает или удаляет {C:attention}улучшения{}",
                    "всех карт в руке",
                    "{C:inactive}(Включая карты без улучшений){}"
                }
            },

            c_poke_icestone = {
                name = "Камень Льда",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Правосудие{}",
                    "{C:inactive}(Должно быть место){}"
                }
            },
            c_poke_shinystone = {
                name = "Блестящий Камень",
                text = {
                    "{C:attention}Карта Эволюции{}",
                    "Создаёт карту {C:attention}Звезда{}",
                    "{C:inactive}(Должно быть место){}"
                }
            },
            c_poke_twisted_spoon = {
                name = "Согнутая Ложка",
                text = {
                    "Создаёт последнюю",
                    "использованную вами карту",
                    "{C:item}Предмета{} или {C:pink}Энергии{}",
                    "Кроме {s:0.8,C:item}Согнутой Ложки{s:0.8}"
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Энергия Травы",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Траявного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_fire_energy = {
                name = "Энергия Огня",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Огненного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_water_energy = {
                name = "Энергия Воды",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Водного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_lightning_energy = {
                name = "Энергия Молнии",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Электрического{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_psychic_energy = {
                name = "Психическая Энергия",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Психического{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_fighting_energy = {
                name = "Боевая Энергия",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Боевого{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_colorless_energy = {
                name = "Бесцветная Энергия",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера, если это возможно",
                    "Вполовину эффективно для",
                    "не-{C:attention}Бесцветных{} Джокеров",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)"
                },
            },
            c_poke_darkness_energy = {
                name = "Энергия Тьмы",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Тёмного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_metal_energy = {
                name = "Энергия Металла",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Металлического{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_fairy_energy = {
                name = "Энергия Волшебства",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Волшебного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Энергия Дракона",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Драконьего{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                },
            },
            c_poke_earth_energy = {
                name = "Энергия Земли",
                text = {
                    "Увеличивает значения {C:attention}подсчёта{} и {C:money}${}",
                    "выбранного или самого левого Джокера {C:attention}Земляного{} типа",
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличения за Джокера)",
                    "{C:inactive}(И скорее всего силу земли)",
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
                name = "Блестящий",
                label = "Блестящий",
                text = {
                    "{C:attention}+1{} дополнительный набор",
                    "в магазине",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Бульбазавр",
                text = {
                    "{C:attention}+#4#{} размер руки",
                    "Получите {C:money}$#1#{} за каждую {C:attention}#3#{}",
                    "в вашей руке, значение",
                    "меняется каждый раунд",
                    "{C:inactive}(Сейчас: {C:money}$#2#{C:inactive} получено)",
                    "{C:inactive}(Эволюционирует, когда получено {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_ivysaur = {
                name = "Ивизавр",
                text = {
                    "{C:attention}+#3#{} размер руки",
                    "Получите {C:money}$#1#{} или {C:money}$#5#{} за каждую {C:attention}#4#{}",
                    "в руке, значение",
                    "меняется каждый раунд",
                    "{C:inactive}(Сейчас: {C:money}$#2#{C:inactive} получено)",
                    "{C:inactive}(Эволюционирует, когда получено {C:money}$16{}{C:inactive})"
                } 
            },
            j_poke_venusaur = {
                name = "Венузавр",
                text = {
                    "{C:attention}+#3#{} размер руки",
                    "Получите {C:money}$#1#{} за каждую {C:attention}#4#{}",
                    "в руке, значение",
                    "меняется каждый раунд",
                    "{C:inactive}(Сейчас: {C:money}$#2#{C:inactive} получено)",
                }
            },
            j_poke_charmander = {
                name = "Чармандер",
                text = {
                    "{C:red}+#4#{} сброс",
                    "Получает {C:mult}+#2#{} к множ. за сыгранную руку",
                    "при {C:attention}#3#{} оставшихся сбросов",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+16{}{C:inactive} множ.)"
                } 
            },
            j_poke_charmeleon = {
                name = "Чармелеон",
                text = {
                    "{C:red}+#4#{} сброс",
                    "Получает {C:mult}+#2#{} к множ. за сыгранную руку",
                    "при {C:attention}#3#{} оставшихся сбросов",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+36{}{C:inactive} множ.)"
                } 
            },
            j_poke_charizard = {
                name = "Чаризард",
                text = {
                    "{C:red}+#4#{} сброс, {C:mult}+#1#{} множ.",
                    "{X:mult,C:white} X#2# {} множ. при {C:attention}#3#{} оставшихся сбросов",
                } 
            },
            j_poke_squirtle = {
                name = "Сквиртл",
                text = {
                    "{C:chips}+#3#{} рука",
                    "Получает {C:chips}+#2#{} шт. фишек за каждую оставшуюся",
                    "руку в конце раунда",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                    "{C:inactive}(Эволюционирует, накопив {C:chips}+16{} {C:inactive} шт. фишек)"
                } 
            },
            j_poke_wartortle = {
                name = "Вартортл",
                text = {
                    "{C:chips}+#3#{} рука",
                    "Получает {C:chips}+#2#{} шт. фишек за каждую оставшуюся",
                    "руку в конце раунда",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                    "{C:inactive}(Эволюционирует, накопив {C:chips}+36{} {C:inactive}шт. фишек)"
                } 
            },
            j_poke_blastoise = {
                name = "Бластойз",
                text = {
                    "{C:chips}+#3#{} руки, {C:chips}+#1#{} шт. фишек",
                    "{C:chips}+#2#{} шт. фишек за каждую",
                    "оставшуюся руку",
                } 
            },
            j_poke_caterpie = {
                name = "Катерпи",
                text = {
                    "{C:mult}+#1#{} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_metapod = {
                name = "Метапод",
                text = {
                    "{C:mult}+#1#{} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_butterfree = {
                name = "Баттерфри",
                text = {
                    "{C:mult}+#1#{} множ.",
                } 
            },
            j_poke_weedle = {
                name = "Видл",
                text = {
                    "{C:chips}+#1#{} шт. фишек",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_kakuna = {
                name = "Какуна",
                text = {
                    "{C:chips}+#1#{} шт. фишек",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_beedrill = {
                name = "Бидрилл",
                text = {
                    "{C:chips}+#1#{} шт. фишек",
                } 
            },
            j_poke_pidgey = {
                name = "Пиджи",
                text = {
                    "Все карты {C:planet}Планет{} и",
                    "{C:planet}Небесные наборы{} в",
                    "магазине стоят на {C:money}$2{} дешевле",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Пиджеотто",
                text = {
                    "Все карты {C:planet}Планет{} и",
                    "{C:planet}Небесные наборы{} в",
                    "магазине стоят на {C:money}$3{} дешевле",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_pidgeot = {
                name = "Пиджеот",
                text = {
                    "Все карты {C:planet}Планет{} и",
                    "{C:planet}Небесные наборы{} в",
                    "магазине {C:attention}бесплатны{}, используя",
                    "карты {C:planet}Планет{} вы получаете {C:money}$#1#{}"
                } 
            },
            j_poke_rattata = {
                name = "Раттата",
                text = {
                    "Повторите {C:attention}первую{} сыгранную",
                    "при подсчете карту",
                    "ещё {C:attention}#1#{} раз",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_raticate = {
                name = "Ратикэйт",
                text = {
                    "Повторите {C:attention}первую{} и {C:attention}вторую{}",
                    "сыгранные при подсчете карты",
                    "ещё {C:attention}#1#{} раз",
                } 
            },
            j_poke_spearow = {
                name = "Спироу",
                text = {
                    "После подсчитывания {C:attention}#2#{} карт,",
                    "улучшает уровень следующей разыгранной {C:attention}покерной руки{}",
                    "{C:inactive}(Сейчас: {C:attention}#3#{}{C:inactive}/#2#) {C:inactive}#4#{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_fearow = {
                name = "Фироу",
                text = {
                    "После подсчитывания {C:attention}#1#{} карт,",
                    "улучшает уровень следующей разыгранной {C:attention}покерной руки{}",
                    "{C:inactive}(Сейчас: {C:attention}#2#{}{C:inactive}/#1#) {C:inactive}#3#{}",
                } 
            },
            j_poke_ekans = {
                name = "Эканс",
                text = {
                    "{C:mult}+#1#{} множ. если",
                    "сыгранная рука содержит",
                    "{C:attention}Стрит{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_arbok = {
                name = "Арбок",
                text = {
                    "{C:mult}+#1#{} множ. если сыгранная рука",
                    "содержит {C:attention}Стрит{}",
                    "Создаёт карту Таро, если в ней",
                    "также есть {C:attention}Туз{}"
                } 
            },
            j_poke_pikachu = {
                name = "Пикачу",
                text = {
                    "Получайте {C:money}$#1#{} в",
                    "конце каждого раунда",
                    "за каждого Джокера у вас",
                    "{C:inactive}(Макс. {C:money}$10{C:inactive})",
                    "{C:inactive}(Эволюционирует с {C:inactive}картой {C:attention}Камня Молнии{})"
                } 
            },
            j_poke_raichu = {
                name = "Райчу",
                text = {
                    "Становится {C:dark_edition}Негативным{}",
                    "в конце раунда, если у вас",
                    "есть хотя бы {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Увеличивается за каждого Райчу){}",
                    "Получайте {C:money}$#1#{} в конце",
                    "раунда за каждого Джокера у вас",
                    "{C:inactive}(Макс. {C:money}$10{C:inactive})"
                } 
            },
            j_poke_sandshrew = {
                name = "Сэндшрю",
                text = {
                    "{C:chips}+#2#{} шт. фишек за каждую {C:attention}стеклянную{}",
                    "карту в вашей полной колоде",
                    "Первая разбившаяся {C:attention}стеклянная{} карта каждый",
                    "раунд создаёт свою копию в руке",
                    "{C:inactive}(Cейчас: {C:chips}+#3#{}{C:inactive} шт. фишек){C:inactive}#4#{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_sandslash = {
                name = "Сэндслэш",
                text = {
                    "{C:chips}+#1#{} шт. фишек за каждую {C:attention}стеклянную{}",
                    "карту в вашей полной колоде",
                    "Первая разбившаяся {C:attention}стеклянная{} карта каждый",
                    "раунд создаёт свою копию в руке",
                    "{C:inactive}(Сейчас: {C:chips}+#2#{}{C:inactive} шт. фишек){C:inactive}#3#{}",
                } 
            },
            j_poke_nidoranf = {
                name = "Нидоран Ж",
                text = {
                    "Каждая {C:attention}Королева{}",
                    "в руке",
                    "даёт {C:chips}+#1#{} шт. фишек",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_nidorina = {
                name = "НеДарина",
                text = {
                    "Каждая {C:attention}Королева{}",
                    "в руке",
                    "даёт {C:chips}+#1#{} шт. фишек",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Камень Луны{}{C:inactive})"
                } 
            },
            j_poke_nidoqueen = {
                name = "Нидоквин",
                text = {
                    "{C:attention}+#2#{} размер руки",
                    "Каждая {C:attention}Королева{}",
                    "в руке",
                    "даёт {C:chips}+#1#{} шт. фишек",
                } 
            },
            j_poke_nidoranm = {
                name = "Нидоран М",
                text = {
                    "Каждый {C:attention}Король{}",
                    "в руке",
                    "даёт {C:mult}+#1#{} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_nidorino = {
                name = "Нидорино",
                text = {
                    "Каждый {C:attention}Король{}",
                    "в руке",
                    "даёт {C:mult}+#1#{} множ.",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Луны{}{C:inactive})"
                } 
            },
            j_poke_nidoking = {
                name = "Нидокинг",
                text = {
                    "{C:attention}+#2#{} размер руки",
                    "Каждый {C:attention}Король{}",
                    "в руке",
                    "даёт {C:mult}+#1#{} множ.",
                } 
            },
            j_poke_clefairy = {
                name = "Клефэйри",
                text = {
                    "Сыгранные карты с",
                    "мастью {C:clubs}#2#{} дают",
                    "{C:mult}+#1#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Луны{}{C:inactive})"
                } 
            },
            j_poke_clefable = {
                name = "Клефэйбл",
                text = {
                    "Сыгранные карты с мастью {C:clubs}#2#{} дают",
                    "",
                    "{C:mult}+#1#{} множ. за каждую карту {C:clubs}#2#{}",
                    "уже подсчитанную в этом раунде",
                    "{C:inactive,s:0.8}(Если было сыграно 5 трефовых карт, это  {C:mult,s:0.8}+5{} {C:inactive,s:0.8}множ.){}",
                    "{C:inactive}(Сейчас: {C:mult}#3#{}{C:inactive} множ.){}"
                } 
            },
            j_poke_vulpix = {
                name = "Вульпикс",
                text = {
                    "{C:green}#1# из #2#{} для каждой",
                    "сыгранной {C:attention}9{} создать",
                    "карту {C:attention}Таро{} при подсчёте",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Огня{}{C:inactive})"
                } 
            },
            j_poke_ninetales = {
                name = "Найнтэйлс",
                text = {
                    "{C:attention}Держит карту Медиум{}",
                    "{C:green}#1# из #2#{} шанс для каждой",
                    "сыгранной {C:attention}9{} создать",
                    "карту {C:attention}Таро{} или {C:planet}Планеты{} при подсчёте",
                    "{C:inactive}(Должно быть место)"
                } 
            },
            j_poke_jigglypuff = {
                name = "Джигглипафф",
                text = {
                    "Сыгранные карты с",
                    "мастью {C:spades}#2#{} дают",
                    "{C:mult}+#1#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Луны{}{C:inactive})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Вигглитафф",
                text = {
                    "Сыгранные карты с мастью",
                    "{C:spades}#3#{} дают",
                    "{C:mult}+#1#{} множ. и",
                    "{C:chips}+#2#{} шт. фишек, а также",
                    "общее число фишек этой карты при подсчёте",
                } 
            },
            j_poke_zubat = {
                name = "Зубат",
                text = {
                    "{C:mult}+#1#{} множ. за каждую {C:attention}улучшенную{}",
                    "карту в вашей полной колоде",
                    "{C:inactive}(Сейчас: {C:mult}+#2#{}{C:inactive} множ., {C:attention}#4#{}{C:inactive} улучшений)",
                    "{C:inactive}(Эволюционирует при {C:mult}#3#{C:inactive} улучшениях)"
                } 
            },
            j_poke_golbat = {
                name = "Голбат",
                text = {
                    "Лишает улучшений карты при подсчёте",
                    "Получает {C:mult}+#2#{} за карты {C:attention}множ.{} и {C:attention}дикие{} карты",
                    "{C:chips}+#4#{} за {C:attention}бонусные{} и {C:attention}каменные{} карты,",
                    "{X:red,C:white}X#6#{} за {C:attention}стальные{} и {C:attention}стеклянные{} карты,",
                    "{C:money}$#8#{} за {C:attention}золотые{} и {C:attention}счастливые{} карты",
                    "{C:inactive}(Эволюционирует, поглотив {C:attention}#9#{}{C:inactive}/20 улучшений)",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} в конце раунда)"
                } 
            },
            j_poke_oddish = {
                name = "Оддиш",
                text = {
                    "Сыгранные {C:attention}нечётные{} карты",
                    "дают {C:mult}+#1#{} или {C:mult}+#2#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_gloom = {
                name = "Глум",
                text = {
                    "Сыгранные {C:attention}нечётные{} карты",
                    "дают {C:mult}+#1#{} или {C:mult}+#2#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует с картами {} {C:attention}Камень Листа/Солнца{}{C:inactive})"
                } 
            },
            j_poke_vileplume = {
                name = "Вайлплум",
                text = {
                    "Сыгранные {C:attention}нечётные{} карты",
                    "дают {C:mult}+#2#{} множ. или",
                    "{X:mult,C:white} X#1# {} множ. при подсчёте"
                } 
            },
            j_poke_paras = {
                name = "Парас",
                text = {
                    "{C:mult}+#2#{} к множ. за каждую руку,",
                    "содержащую {C:attention}Две пары{}", 
                    "{C:inactive}(Сейчас: {C:mult}+#1#{} {C:inactive}множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+8{}{C:inactive} множ.)"
                }  
            },
            j_poke_parasect = {
                name = "Парасект",
                text = {
                    "{C:mult}+#2#{} к множ. за каждую сыгранную руку,",
                    "содержащую {C:attention}Две Пары{}",
                    "{C:mult}-#3#{} к множ. за каждую руку,",
                    "в которой их нет",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{} {C:inactive}множ.)",
                } 
            },
            j_poke_venonat = {
                name = "Венонат",
                text = {
                    "Добавляет {C:attention}#1#{} ко всем {C:attention}указанным",
                    "{C:green,E:1,S:1.1}вероятностям",
                    "{C:inactive}(Например: {C:green}1 из 6{C:inactive} -> {C:green}2 из 6{C:inactive})",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_venomoth = {
                name = "Веномот",
                text = {
                    "Добавляет {C:attention}#1#{} ко всем {C:attention}указанным",
                    "{C:green,E:1,S:1.1}вероятностям",
                    "{C:inactive}(Например: {C:green}1 из 6{C:inactive} -> {C:green}3 из 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:chips}+#2#{} шт. фишек, если сыгранная рука",
                    "содержит {C:attention}Сет{}",
                    "{C:mult}+#3#{} множ., если сыгранная рука",
                    "содержит {C:attention}2{}, {C:attention}3{}, или {C:attention}4{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_dugtrio = {
                name = "Дагтрио",
                text = {
                    "{C:chips}+#2#{} шт. фишек, если сыгранная рука",
                    "содержит {C:attention}Сет{}",
                    "{X:red,C:white} X#1# {} множ. если сыгранная рука",
                    "содержит {C:attention}2{}, {C:attention}3{}, или {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Мяут",
                text = {
                    "Получайте {C:money}$#1#{} в",
                    "конце раунда",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_persian = {
                name = "Персиан",
                text = {
                    "Получите {C:money}${} в конце раунда,",
                    "равное {C:attention}удвоенной{} стоимости", 
                    "продажи самого левого {C:attention}Джокера{}",
                    "{C:inactive}(Кроме самого себя){}",
                    "{C:inactive}(Сейчас: {C:money}$#1#{C:inactive}, макс. {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Псайдак",
                text = {
                    "Если разыгранная рука это",
                    "единственная {C:attention}карта с лицом{}, получите {C:money}$#1#{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_golduck = {
                name = "Голдак",
                text = {
                    "Если разыгранная рука это",
                    "единственная {C:attention}карта с лицом{}, получите {C:money}$#1#{}",
                    "и она становится {C:attention}золотой{} при подсчёте"
                } 
            },
            j_poke_mankey = {
                name = "Манки",
                text = {
                    "Каждая сыгранная {C:attention}2{},",
                    "{C:attention}3{}, {C:attention}5{} даёт",
                    "{C:mult}+#1#{} множ. и {C:chips}+#2#{} шт. фишек",
                    "при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_primeape = {
                name = "Праймейп",
                text = {
                    "Каждая сыгранная {C:attention}2{},",
                    "{C:attention}3{}, {C:attention}5{} даёт",
                    "{C:mult}+#1#{} множ. и {C:chips}+#2#{} шт. фишек",
                    "при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive}/25 срабатываний){}"
                } 
            },
            j_poke_growlithe = {
                name = "Гроулит",
                text = {
                    "{C:mult}+#1#{} множ. если сыгранная",
                    "рука содержит {C:attention}Флэш{}",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Огня{}{C:inactive})"
                } 
            },
            j_poke_arcanine = {
                name = "Арканайн",
                text = {
                    "{X:red,C:white} X#1# {} множ. если сыгранная",
                    "рука содержит {C:attention}Флэш{}.",
                    "Создаёт карту {C:attention}Влюблённые{}",
                    "когда выбирается {C:attention}Блайнд{}"
                } 
            },
            j_poke_poliwag = {
                name = "Поливаг",
                text = {
                    "Сыгранные карты с мастью {V:1}#3#{}",
                    "дают {C:mult}+#1#{} множ. при подсчете",
                    "Масть меняется после каждой",
                    "сыгранной руки в строгом порядке",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_poliwhirl = {
                name = "Поливирл",
                text = {
                    "Сыгранные карты с мастью {V:1}#2#{}",
                    "дают {C:mult}+#1#{} множ. при подсчете,",
                    "Масть меняется после каждой",
                    "сыгранной руки в строгом порядке",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Эволюционирует с картами{} {C:attention,s:0.8}Камня Воды{}{C:inactive,s:0.8} или {C:attention,s:0.8}Камнем Короля{}{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Поливрат",
                text = {
                    "Сыгранные карты с мастью {V:1}#2#{}",
                    "дают {C:mult}+#7#{} множ.",
                    "и {X:mult,C:white} X#1# {} множ. при подсчёте,",
                    "Масть меняется после каждой",
                    "сыгранной руки в строгом порядке",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}"
                } 
            },
            j_poke_abra = {
                name = "Абра",
                text = {
                    "{C:green}#1# из #2#{} шанс",
                    "создать карту {C:attention}Дурак{},",
                    "если сыгранная {C:attention}покерная рука{}",
                    "уже игралась в этом раунде",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_kadabra = {
                name = "Кадабра",
                text = {
                    "{C:green}#1# из #2#{} шанс",
                    "создать карту {C:attention}Дурак{} или {C:item}Согнутая Ложка{},",
                    "если сыгранная {C:attention}покерная рука{}",
                    "уже игралась в этом раунде",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_alakazam = {
                name = "Алаказам",
                text = {
                    "{C:attention}+#3#{} слот расходуемого",
                    "{C:green}#1# из #2#{} шанс",
                    "создать карту {C:attention}Дурак{} или {C:item}Согнутая Ложка{},",
                    "если сыгранная {C:attention}покерная рука {}",
                    "уже игралась в этом раунде",
                } 
            },
            j_poke_machop = {
                name = "Мачоп",
                text = {
                    "{C:chips}+#1#{} рука",
                    "{C:mult}-#2# сброса{}",
                    "{C:mult}+#4#{} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_machoke = {
                name = "Мачок",
                text = {
                    "{C:chips}+#1#{} руки",
                    "{C:mult}-#2# сброса{}",
                    "{C:mult}+#3#{} множ.",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_machamp = {
                name = "Мачамп",
                text = {
                    "{C:chips}+#1#{} руки",
                    "{C:mult}-#2# сброса{}",
                    "{C:mult}+#3#{} множ."
                } 
            },
            j_poke_bellsprout = {
                name = "Беллспраут",
                text = {
                    "Сыгранные {C:attention}чётные{} карты",
                    "дают {C:chips}+#1#{} шт. фишек при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_weepinbell = {
                name = "Випинбелл",
                text = {
                    "Сыгранные {C:attention}чётные{} карты",
                    "дают {C:chips}+#1#{} шт. фишек при подсчёте",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Камень Листа{}{C:inactive})"
                } 
            },
            j_poke_victreebel = {
                name = "Виктрибел",
                text = {
                    "Сыгранные {C:attention}чётные{} карты",
                    "дают {C:chips}+#1#{} шт. фишек при подсчёте",
                    "и подсчитываются {C:attention}ещё раз{}"
                } 
            },
            j_poke_tentacool = {
                name = "Тентакул",
                text = {
                    "Если сыгранная рука содержит",
                    "только {C:attention}10{}, каждая из них",
                    "даёт {C:mult}+#1#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_tentacruel = {
                name = "Тентакруэль",
                text = {
                    "Каждая сыгранная {C:attention}10{}",
                    "даёт {C:mult}+#1#{} множ. при подсчёте",
                    "{C:attention}10 не могут{} быть ослаблены"
                } 
            },
            j_poke_geodude = {
                name = "Геодуд",
                text = {
                    "{C:chips}+#1#{} шт. фишек,",
                    "{C:attention}-#2#{} размер руки",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_graveler = {
                name = "Гравелер",
                text = {
                    "{C:chips}+#1#{} шт. фишек,",
                    "{C:attention}-#2#{} размер руки",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_golem = {
                name = "Голем",
                text = {
                    "{C:chips}+#1#{} шт. фишек,",
                    "{C:attention}-#2#{} размер руки",
                } 
            },
            j_poke_ponyta = {
                name = "Понита",
                text = {
                    "Получает {C:chips}#2#{} шт. фишек если сыгранная", 
                    "рука содержит {C:attention}Стрит{}",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                    "{C:inactive}(Эволюционирует, накопив {C:chips}+60{} {C:inactive}шт. фишек)"
                } 
            }, 
            j_poke_rapidash = {
                name = "Рапидаш",
                text = {
                    "Получает {C:chips}#2#{} шт. фишек если", 
                    "сыгранная рука содержит {C:attention}Стрит{}",
                    "Даёт {C:attention}Короткий путь{} для первой руки раунда",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                } 
            },
            j_poke_slowpoke = {
                name = "Слоупок",
                text = {
                    "{X:red,C:white} X#1# {} множ. на {C:attention}последней {C:attention}руке{} раунда",
                    "{C:inactive}(Эволюционирует после того, как сработал {C:attention}#2#{}{C:inactive}/#3# раза)",
                    "{C:inactive}(Эволюционирует с картой {C:attention}Камень Короля{} {C:inactive})"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Слоупок",
                text = {
                    "{X:red,C:white} X#1# {} множ. на {C:attention}последней {C:attention}руке{} раунда",
                    "{C:green}#3# из #4#{} шанс создать",
                    "карту {C:attention}Камень Короля{} в",
                    "конце раунда {C:inactive,s:0.8}(Должно быть место){}",
                    "{C:inactive,s:0.8}(Эволюционирует после {C:attention,s:0.8}#2#{}{C:inactive,s:0.8} раундов или с картой {C:attention,s:0.8}Камень Короля{}{C:inactive,s:0.8})"
                } 
            },
            j_poke_slowbro = {
                name = "Слоубро",
                text = {
                    "Получает {X:red,C:white} X#1# {} к множ.",
                    "за каждую сыгранную руку.",
                    "Сбрасывается в конце раунда",
                    "{C:inactive}(Сейчас: {X:red,C:white} X#2# {}{C:inactive} множ.)"
                } 
            },
            j_poke_magnemite = {
                name = "Магнемайт",
                text = {
                    "Сыгранные {C:attention}стальные{} карты",
                    "дают {X:red,C:white}X#1#{} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_magneton = {
                name = "Магнетон",
                text = {
                    "Сыгранные {C:attention}стальные{} карты дают {X:red,C:white}X#1#{} множ.",
                    "и {X:red,C:white}X#2#{} множ. за каждого",
                    "{X:metal,C:white}Металлического{} Джокера рядом с этим Джокером",
                    "{C:inactive}(Сейчас: {X:red,C:white}X#3#{}{C:inactive} множ.){}",
                    "{C:inactive}(Эволюционирует с картой {C:attention}Камень Молнии{}{C:inactive})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Фарфетч\'д',      
                text = {
                    "{C:attention}Держит Лук{}",
                    "{C:green}#2# из #3#{} шанс для {X:red,C:white}X#1#{} множ.",
                    "Шанс удваивается за",
                    "каждую карту {C:attention}Лук{} у вас",
                } 
            },
            j_poke_doduo = {
                name = 'Додуо',      
                text = {
                    "{C:mult}+#1#{} множ. если сыгранная рука",
                    "содержит хотя бы {C:attention}2{} карты с лицом",
                    "{C:mult}+#1#{} множ. если сыгранная рука",
                    "содержит {C:attention}Фулл Хаус{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_dodrio = {
                name = 'Додрио',      
                text = {
                    "{C:mult}+#1#{} множ., если сыгранная рука",
                    "содержит хотя бы {C:attention}3{} карты с лицом",
                    "{C:mult}+#1#{} множ., если сыгранная рука",
                    "содержит {C:attention}Фулл Хаус{}",
                } 
            },
            j_poke_seel = {
                name = 'Сил',      
                text = {
                    "{C:green}#1# из #2#{} шанс",
                    "дать случайную {C:attention}печать{} самой",
                    "левой подсчитанной карте",
                    "в {C:attention}первой руке{} раунда",
                    "{C:inactive,s:0.75}(Эволюционирует, когда в вашей полной колоде есть хотя бы {C:attention,s:0.75}#3#{}{C:inactive,s:0.75} {C:attention,s:0.75}печатей{C:inactive,s:0.75})"
                } 
            },
            j_poke_dewgong = {
                name = 'Дьюгонг',      
                text = {
                    "Добавляет случайную {C:attention}печать{} самой",
                    "левой подсчитанной карте",
                    "в {C:attention}первой руке{} раунда",
                } 
            },
            j_poke_grimer = {
                name = 'Гример',      
                text = {
                    "{C:mult}+#1#{} множ.",
                    "если размер колоды > {C:attention}#3#{}",
                    "Добавляет случайную игральную карту",
                    "в вашу колоду в конце раунда",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_muk = {
                name = 'Мак',      
                text = {
                    "{C:mult}+#1#{} к множ. за каждую карту",
                    "больше {C:attention}#3#{} в вашей полной колоде",
                    "{X:mult,C:white} X#2# {} множ. если размер колоды > {C:attention}#4#{}",
                    "{C:inactive,s:0.8}(Сейчас: {C:mult,s:0.8}+#5#{} {C:inactive,s:0.8}множ.){}",
                    "Добавляет две случайные и удаляет одну",
                    "игральные карты в вашей колоде",
                    "в конце раунда"
                } 
            },
            j_poke_shellder = {
                name = 'Шеллдер',      
                text = {
                    "Если в сыгранной руке есть подсчитанные {C:attention}5{},",
                    "у каждой из них {C:green}#1# из #2#{}",
                    "шанс повториться",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Камень Воды{}{C:inactive})"
                } 
            },
            j_poke_cloyster = {
                name = 'Клойстер',      
                text = {
                    "Если в сыгранной руке есть подсчитанные {C:attention}5{},",
                    "у каждой из них {C:green}#1# из #2#{}",
                    "шанс повториться",
                } 
            },
            j_poke_gastly = {
                name = 'Гастли',      
                text = {
                    "{C:green}#1# из #2#{} шанс",
                    "{C:attention}заменить{} выпуск",
                    "случайного {C:attention}Джокера{} на {C:dark_edition}Негативный{}",
                    "{S:1.1,C:red,E:2}Самоуничтожается{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_haunter = {
                name = 'Хонтер',      
                text = {
                    "{C:green}#1# из #2#{} шанс",
                    "{C:attention}заменить{} выпуск",
                    "случайного {C:attention}Джокера{} на {C:dark_edition}Негативный{}",
                    "{S:1.1,C:red,E:2}Самоуничтожается{}",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_gengar = {
                name = 'Генгар',      
                text = {
                    "{C:green}Процентный шанс{}",
                    "Иногда {C:attention}заменяет{} выпуск",
                    "случайного {C:attention}Джокера{} на",
                    "{C:dark_edition}негативный{} в конце раунда",
                    "{C:inactive,s:0.8}(Кроме Генгаров){}"
                } 
            },
            j_poke_onix = {
                name = 'Оникс',      
                text = {
                    "Самая левая карта в",
                    "{C:attention}первой руке{} раунда",
                    "становится {C:attention}каменной{} при подсчёте",
                    "{C:inactive}(Эволюционирует, получив {C:metal}Металлический{} {C:inactive}стикер){}"
                } 
            },
            j_poke_drowzee = {
                name = 'Дроузи',      
                text = {
                    "{C:mult}+#2#{} к множ. за каждую",
                    "уникальную карту {C:planet}Планеты{}",
                    "использованную в этом забеге",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+28{C:inactive} множ.)"
                } 
            },
            j_poke_hypno = {
                name = 'Гипно',      
                text = {
                    "{C:attention}Держит карту Транс{}",
                    "{C:mult}+#2#{} к множ. за каждую уникальную",
                    "карту {C:planet}Планеты{} использованную в этом забеге",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                } 
            },
            j_poke_krabby = {
                name = 'Крабби',      
                text = {
                    "Сыгранные карты {C:attention}с лицом{}",
                    "дают {C:chips}+#1#{} шт. фишек",
                    "при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_kingler = {
                name = 'Кинглер',      
                text = {
                    "Все сыгранные карты {C:attention}с лицом{}",
                    "становятся {C:attention}бонусными{}",
                    "и дают {C:chips}+#1#{} шт. фишек",
                    "при подсчёте",
                } 
            },
            j_poke_voltorb = {
                name = 'Вольторб',      
                text = {
                    "Если это {C:attention}самый левый{}",
                    "Джокер, получите {C:mult}+#1#{} множ.",
                    "и ослабьте его",
                    "до конца раунда",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_electrode = {
                name = 'Электрод',      
                text = {
                    "Если это {C:attention}самый левый{}",
                    "Джокер, получите {C:mult}+#1#{} множ. и {C:money}$#2#{}",
                    "и ослабьте его",
                    "до конца раунда"
                } 
            },
            j_poke_exeggcute = {
                name = 'Эксегкьют',      
                text = {
                    "Сыгранные карты с",
                    "мастью {C:hearts}#2#{} дают",
                    "{C:mult}+#1#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Листа{}{C:inactive})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Экзеггутор',      
                text = {
                    "{C:green}#4# из #5#{} шанс",
                    "сыгранные карты с мастью",
                    "{C:hearts}#3#{} дадут",
                    "{C:mult}+#1#{} множ. и {X:mult,C:white}X#2#{} множ.",
                    "при подсчёте", 
                } 
            },
            j_poke_cubone = {
                name = 'Кубон',      
                text = {
                    "{C:attention}Держит Увесистую Дубинку{}",
                    "Даёт {C:mult}+#1#{} множ. за каждый",
                    "заполненный слот расходуемого",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Увесистые Дубинки{}{C:inactive,s:0.75} считаются как 2 слота){}",
                    "{C:inactive}(Сейчас: {C:mult}+#3#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует после использования {C:attention}#4#{}{C:inactive}/#5# расходуемых карт)"
                } 
            },
            j_poke_marowak = {
                name = 'Маровак',      
                text = {
                    "{C:attention}+#2#{} слот расходуемого",
                    "Даёт {X:mult,C:white} X#1# {} множ. за каждый",
                    "заполненный слот расходуемого",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Увесистые Дубинки{}{C:inactive,s:0.75} считаются как 2 слота){}",
                    "{C:inactive}(Сейчас: {X:mult,C:white} X#3# {}{C:inactive} множ.)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Хитмонли',      
                text = {
                    "{X:red,C:white}X#1#{} множ. за каждую карту",
                    "ниже {C:attention}#2#{} в вашей полной колоде",
                    "{C:inactive}(Сейчас: {X:red,C:white}X#3#{C:inactive} множ.)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Хитмончан',      
                text = {
                    "{X:red,C:white}X#1#{} множ. за каждую карту",
                    "выше {C:attention}#2#{} в вашей полной колоде",
                    "{C:inactive}(Сейчас: {X:red,C:white}X#3#{C:inactive} множ.)",
                } 
            },
            j_poke_lickitung = {
                name = 'Ликитунг',      
                text = {
                    "Первый и второй сыгранные",
                    "{C:attention}Валеты{} дают {X:mult,C:white} X#1# {} множ.",
                    "каждый при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive}/20 срабатываний){}"
                } 
            },
            j_poke_koffing = {
                name = 'Коффинг',      
                text = {
                    "Продайте эту карту, чтобы снизить",
                    "количество необходимых для победы фишек",
                    "текущего {C:attention}Босс Блайнда{} в {C:attention}2 раза{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_weezing = {
                name = 'Визинг',      
                text = {
                    "Продайте эту карту, чтобы снизить",
                    "количество необходимых для победы фишек",
                    "текущего {C:attention}Босс Блайнда{} в {C:attention}2 раза{}",
                    "и отключить его",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Райхорн',      
                text = {
                    "Каждая сыгранная {C:attention}каменная{} карта",
                    "навсегда получает",
                    "{C:chips}+#1#{} шт. фишек при подсчёте",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_rhydon = {
                name = 'Райдон',      
                text = {
                    "Каждая сыгранная {C:attention}каменная{} карта",
                    "навсегда получает",
                    "{C:chips}+#1#{} шт. фишек при подсчёте",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_chansey = {
                name = 'Ченси',      
                text = {
                    "Когда первые {C:attention}#1#{} раза",
                    "{C:attention}счастливые{} карты срабатывают каждый раунд,",
                    "добавьте их постоянные копии в",
                    "колоду и возьмите их в {C:attention}руку",
                    "{C:inactive}(Сейчас: {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})",
                    "{C:inactive}(Эволюционирует, когда колода состоит на >= 25% из {C:attention}счастливых{C:inactive} карт)"
                } 
            },
            j_poke_tangela = {
                name = 'Тангела',      
                text = {
                    "Сыгранные {C:attention}дикие{} карты дают",
                    "{C:mult}+#1#{} множ., {C:chips}+#2#{} шт. фишек, или {C:money}$#3#{}",
                    "{C:green}#4# из #5#{} шанс для {C:attention}всех трёх{}",
                    "{C:inactive}(Эволюционирует, когда колода состоит на >= 20% из {C:attention}диких{C:inactive} карт)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Кангасхан',      
                text = {
                    "{C:attention}+#1#{} слот расходуемого",
                    "{C:chips}-#2#{} рука",
                } 
            },
            j_poke_horsea = {
                name = 'Хорси',      
                text = {
                    "Получает {C:mult}+#2#{} множ.",
                    "за каждую подсчитанную",
                    "{C:attention}6{}",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, получив {C:mult}+12{} {C:inactive}множ.)"
                } 
            },
            j_poke_seadra = {
                name = 'Сидра',      
                text = {
                    "Получает {C:mult}+#2#{} к множ.",
                    "когда одсчитывается {C:attention}6{}",
                    "Это значение удваивается, если в руке",
                    "есть {C:attention}Король{}",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, получив {C:dragon}Драконий{} {C:inactive}стикер){}"
                } 
            },
            j_poke_goldeen = {
                name = 'Голдин',      
                text = {
                    "Повторите каждую {C:attention}золотую{}",
                    "карту в руке ещё {C:attention}#1#{} раз",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                } 
            },
            j_poke_seaking = {
                name = 'Сикинг',      
                text = {
                    "Повторите каждую {C:attention}золотую{}",
                    "карту в руке {C:attention}#1#{} раза",
                } 
            },
            j_poke_staryu = {
                name = 'Старью',      
                text = {
                    "Сыгранные карты с",
                    "мастью {C:diamonds}#2#{} дают",
                    "{C:mult}+#1#{} множ. при подсчёте",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Камень Воды{}{C:inactive})"
                } 
            },
            j_poke_starmie = {
                name = 'Старми',      
                text = {
                    "Сыгранные карты с",
                    "мастью {C:diamonds}#3#{} дают",
                    "{C:mult}+#1#{} множ. и",
                    "{C:money}$#2#{} при подсчёте",
                } 
            },
            j_poke_mrmime = {
                name = 'Мистер Майм',      
                text = {
                    "Повторите эффект самой левой карты",
                    "в руке {C:attention}#1#{} раза"
                } 
            },
            j_poke_scyther = {
                name = 'Сайтер',      
                text = {
                    "При выборе блайнда, уничтожает",
                    "джокера справа и получает {C:mult}+#2#{} к множ.",
                    "Получает {C:attention}Фольговый{}, {C:attention}Голографический{}, или {C:attention}Полихромный{}",
                    "выпуск, если Джокер был {C:red}Редким{} или выше",
                    "{C:inactive}(Эволюционирует, получив {C:metal}Металлический{} {C:inactive}стикер){}",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)"
                } 
            },
            j_poke_jynx = {
                name = 'Джинкс',      
                text = {
                    "{C:attention}Игральные карты{}, добавленные в вашу",
                    "колоду из {C:attention}магазина{}, {C:attention}стандартных{} наборов,",
                    "{C:spectral}Криптида{} и от некоторых Джокеров,",
                    "{C:attention}дублируются{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Электабазз',      
                text = {
                    "Когда карта {C:attention}продаётся{}",
                    "или в конце раунда,",
                    "получает {C:money}$#1#{} к {C:attention}стоимости продажи{}",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_magmar = {
                name = 'Магмар',      
                text = {
                    "Если в {C:attention}первом{} сбросе",
                    "раунда только одна {C:attention}1{} карта,",
                    "уничтожает её и получает {C:mult}+#2#{} к множ.",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует с картой {} {C:attention}Шнур Связи{}{C:inactive})"
                } 
            },
            j_poke_pinsir = {
                name = 'Пинсир',
                text = {
                    "{X:mult,C:white} X#1# {} множ., если {C:attention}самая левая{}",
                    "карта в сыгранной руке",
                    "sтого же {C:attention}значения{}, что и {C:attention}самая правая{}",
                    "карта в руке"
                } 
            },
            j_poke_tauros = {
                name = 'Таурос (Лидер)',
                text = {
                    "Джокеры {C:attention}Тароус{} дают {X:mult,C:white} X#1# {} множ. каждый",
                    "Каждый переброс имеет",
                    "{C:green}#2# из #3#{} шанс добавить карту",
                    "{C:attention}Таурос (Табун){} в магазин",
                } 
            },
            j_poke_taurosh = {
                name = 'Таурос (Табун)',
                text = {
                    "{C:mult}+#1#{} множ.",
                } 
            },
            j_poke_magikarp = {
                name = 'Магикарп',
                text = {
                    "{C:chips}+#2#{} шт. фишек",
                    "Накладывает {C:attention}Всплеск{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#1#{}{C:inactive} раундов)"
                } 
            },
            j_poke_gyarados = {
                name = 'Гаяродос',
                text = {
                    "{X:red,C:white} X#1# {} множ.",
                } 
            },
            j_poke_lapras = {
                name = 'Лапрас',
                text = {
                    "{C:chips}+#2#{} шт. фишек за каждый",
                    "{C:attention}Блайнд{}, пропущенный в этом забеге",
                    "{C:inactive}(Сейчас: {C:chips}+#1# {C:inactive}шт. фишек)"
                } 
            },
            j_poke_ditto = {
                name = 'Дитто',
                text = {
                    "Продайте этого Джокера чтобы скопировать",
                    "самого левого Джокера",
                    "с {C:attention}Портящимся{} стикером",
                    "и {C:attention}Бесцветным{} типом",
                    "{C:inactive}(Кроме других Дитто, удаляет Вечный стикер){}",
                } 
            },
            j_poke_eevee = {
                name = 'Иви',
                text = {
                    "Получите {C:money}$#1#{} за",
                    "первые {C:attention}5{} {C:green}перебросов{}",
                    "{C:inactive}(Эволюционирует с... кучей всего){}",
                    "{C:inactive}Сейчас: {C:attention}#2#{C:inactive}/#3#"
                } 
            },
            j_poke_vaporeon = {
                name = 'Вапореон',
                text = {
                    "Получает {C:chips}+#2#{} шт. фишек",
                    "за каждые {C:attention}3{} {C:green}переброса{}",
                    "{C:inactive}(Сейчас: {C:attention}#3#{}{C:inactive}/3 перебросов)",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                } 
            },
            j_poke_jolteon = {
                name = 'Джолтеон',
                text = {
                    "Получите {C:money}$#1#{}",
                    "за каждые {C:attention}3{} {C:green}переброса{}",
                    "{C:inactive}(Сейчас: {C:attention}#2#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_flareon = {
                name = 'Флареон',
                text = {
                    "Получает {X:red,C:white} X#2# {} к множ.",
                    "за каждые {C:attention}3{} {C:green}переброса{}",
                    "{C:inactive}(Сейчас: {C:attention}#3#{}{C:inactive}/3 перебросов)",
                    "{C:inactive}(Сейчас: {X:red,C:white} X#1# {}{C:inactive} множ.)"
                } 
            },
            j_poke_porygon = {
                name = 'Поригон',
                text = {
                    "{C:pink}+1{} к лимиту Энергии",
                    "Создаёт карту {C:pink}Энергии{}",
                    "когда открывается любой",
                    "{C:attention}Набор{}",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Улучшение{}{C:inactive})"
                } 
            },
            j_poke_omanyte = {
                name = 'Оманайт',
                text = {
                    "{C:attention}Древние #1#{}",
                    "{X:attention,C:white}1{} : Получает {C:money}$#2#{} к стоимости продажи",
                    "{X:attention,C:white}2{} : Получите {C:money}$#3#{}",
                    "{X:attention,C:white}3+{} : Создаёт случайную карту {C:attention}Таро{}",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Эволюционирует после {C:attention}#4#{}{C:inactive}/#5# срабатываний третьего уровня)"
                } 
            },
            j_poke_omastar = {
                name = 'Омастар',
                text = {
                    "{C:attention}Древние #1#{}",
                    "{X:attention,C:white}1{} : Получает {C:money}$#2#{} к стоимости продажи",
                    "{X:attention,C:white}2{} : Получите {C:money}$#3#{}",
                    "{X:attention,C:white}3{} : Создаёт случайную карту {C:attention}Таро{}",
                    "{X:attention,C:white}4+{} : Создаёт случайную карту {C:item}Предмета{}",
                    "{C:inactive}(Должно быть место){}"
                } 
            },
            j_poke_kabuto = {
                name = 'Кабуто',
                text = {
                    "{C:attention}Древние #1#{}",
                    "{X:attention,C:white}1{} : {C:chips}+#2#{} шт. фишек",
                    "{X:attention,C:white}2{} : Подсчитанные {C:attention}#1#s{} навсегда получают {C:chips}+#3#{} шт. фишек",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} шт. фишек",
                    "{C:inactive}(Эволюционирует после {C:attention}#5#{}{C:inactive}/#6# срабатываний третьего уровня)"
                } 
            },
            j_poke_kabutops = {
                name = 'Кабутопс',
                text = {
                    "{C:attention}Древние #1#{}",
                    "{X:attention,C:white}1{} : {C:chips}+#2#{} шт. фишек",
                    "{X:attention,C:white}2{} : Подсчитанные {C:attention}#1#{} навсегда получают {C:chips}+#3#{} шт. фишек",
                    "{X:attention,C:white}3{} : {C:chips}+#4#{} шт.фишек",
                    "{X:attention,C:white}4+{} : {C:attention}Первая{} и {C:attention}вторая{}",
                    "сыгранные карты повторяются ещё {C:attention}#5#{} раз"
                } 
            },
            j_poke_aerodactyl = {
                name = 'Аэродактиль',
                text = {
                    "{C:attention}Древние #1#ы{}",
                    "{X:attention,C:white}1{} : {C:mult}+#2#{} множ.",
                    "{X:attention,C:white}2{} : {C:mult}+#3#{} множ. и {C:chips}+#4#{} шт. фишек",
                    "{X:attention,C:white}3{} : {X:red,C:white}X#5#{} множ.",
                    "{X:attention,C:white}4+{} : Этот Джокер {C:attention}удваивает{} свои значения подсчёта"
                } 
            },
            j_poke_snorlax = {
                name = 'Снорлакс',
                text = {
                    "{C:attention}Держит Объедки{}",
                    "В конце раунда получите {X:red,C:white}X#1#{} множ. ",
                    "за каждую карту {C:attention}Объедки{} у вас",
                    "{C:inactive}(Сейчас: {X:red,C:white} X#2# {}{C:inactive} множ.)"
                } 
            },
            j_poke_articuno = {
                name = 'Артикуно',
                text = {
                    "Добавляет {C:attention}фольговый{},",
                    "случайное {C:attention}улучшение{}, и",
                    "случайную {C:attention}печать{} неподсчитанным картам",
                    "в {C:attention}первой{} руке раунда"
                } 
            },
            j_poke_zapdos = {
                name = 'Запдос',
                text = {
                    "{X:mult,C:white} X#1# {} множ. за",
                    "каждые {C:money}$#2#{} у вас",
                    "{C:inactive}(Сейчас: {X:red,C:white}X#3#{}{C:inactive} множ.)",
                } 
            },
            j_poke_moltres = {
                name = 'Молтрес',
                text = {
                    "Повышает уровень",
                    "первых {C:attention}3 сброшенных{}",
                    "покерных рук в каждом раунде"
                } 
            },
            j_poke_dratini = {
                name = 'Дратини',
                text = {
                    "Получает {C:mult}+#2#{} к множ.,",
                    "если сыгранная рука содержит",
                    "{C:attention}#3#{} или менее карт",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+10{}{C:inactive} множ.)"
                } 
            },
            j_poke_dragonair = {
                name = 'Драгонэйр',
                text = {
                    "Получает {C:mult}+#2#{} к множ.,",
                    "если сыгранная рука содержит",
                    "{C:attention}#3#{} или менее карт",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+30{}{C:inactive} множ.)"
                } 
            },
            j_poke_dragonite = {
                name = 'Драгонайт',
                text = {
                    "{C:mult}+#1#{} множ.",
                    "Если сыгранная рука содержит",
                    "только {C:attention}1{} карту",
                    "повторите её ещё {C:attention}#2#{} раз"
                } 
            },
            j_poke_mewtwo = {
                name = 'Мьюту',
                text = {
                    "В конце магазина создайте",
                    "{C:dark_edition}полихромную{} {C:attention}копию{}",
                    "самого левого {C:attention}Джокера{} с {C:attention}+1{} {C:pink}энергией{},",
                    "а затем уничтожьте самого левого {C:attention}Джокера{}",
                    "{C:dark_edition}Полихромные{} Джокеры дают {X:mult,C:white} X#1# {} множ.",
                    "{C:inactive}(Не может уничтожить себя)",
                } 
            },
            j_poke_mew = {
                name = 'Мью',
                text = {
                    "В конце магазина создаёт",
                    "случайную {C:dark_edition}негативную{} карту {C:attention}Таро{},",
                    "{C:spectral}спектральную{} карту или карту {C:item}предмета{}",
                    "Иногда создаёт случайного",
                    "{C:dark_edition}негативного{} Джокера {C:attention}вместо этого{}",
                } 
            },
            j_poke_sentret = {
                name = 'Сентрет',
                text = {
                    "{C:mult}+#2#{} к множ. за каждую {C:attention}последовательную{}",
                    "покерную руку, не повторяющую предыдущую",
                    "{C:inactive}(Последняя рука: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{} {C:inactive}множ.)",
                    "{C:inactive}(Эволюционирует, накопив {C:mult}+10{} {C:inactive}множ.)"
                }  
            },
            j_poke_furret = {
                name = 'Фуррет',
                text = {
                    "Получает {C:mult}+#2#{} к множ. если сыгранная рука",
                    "это не последняя сыгранная рука",
                    "{C:inactive}(Последняя рука: {C:attention}#3#{}{C:inactive})",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{} {C:inactive}множ.)",
                }  
            },
            j_poke_crobat = {
                name = 'Кробат',
                text = {
                    "{C:attention}Перемешивает{} текущие улучшения карт при подсчёте",
                    "Получает {C:mult}+#2#{} за {C:attention}карты множ.{} и {C:attention}дикие{} карты",
                    "{C:chips}+#4#{} за {C:attention}бонусные{} и {C:attention}каменные{} карты,",
                    "{X:red,C:white}X#6#{} за {C:attention}стальные{} и {C:attention}стеклянные{} карты,",
                    "{C:money}$#8#{} за {C:attention}золотые{} и {C:attention}счастливые{} карты",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{}, {C:chips}+#3#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{}{C:inactive} в конце раунда)"
                } 
            },
            j_poke_pichu = {
                name = 'Пичу',
                text = {
                    "{C:attention}Малыш{}",
                    "Получайте {C:money}$#1#{} в",
                    "конце раунда",
                    "{X:red,C:white} X#2# {} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_cleffa = {
                name = 'Клеффа',
                text = {
                    "{C:attention}Малыш{}",
                    "Создаёт {C:dark_edition}негативную{} карту",
                    "{C:attention}Луна{} в конце раунда",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_igglybuff = {
                name = 'Игглибафф',
                text = {
                    "{C:attention}Малыш{}",
                    "Создаёт {C:dark_edition}негативную{} карту",
                    "{C:attention}Мир{} в конце раунда",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_bellossom = {
                name = 'Беллоссом',
                text = {
                    "Сыгранные {C:attention}нечетные{} карты",
                    "дают {C:mult}+#1#{} множ., либо становятся",
                    "{C:attention}дикими{} при подсчёте",
                    "Если они уже {C:attention}дикие{}, то становятся {C:dark_edition}полихромными"
                } 
            },
            j_poke_politoed = {
                name = 'Политод',
                text = {
                    "Сыгранные карты с мастью {V:1}#2#{} дают",
                    "{C:mult}+#1#{} множ. при подсчёте",
                    "Эти карты повторяются ещё раз за каждого",
                    "{X:water,C:white}Водного{} Джокера у вас",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{}{C:inactive,s:0.8} повторов разделяются поровну между сыгранными картами){}",
                    "Масть меняется в строгом порядке {C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                } 
            },
            j_poke_espeon = {
                name = 'Эспеон',
                text = {
                    "Создаёт карту {C:attention}Солнце{}",
                    "каждые {C:attention}3{} {C:green}переброса{}",
                    "Повторите все сыгранные карты с",
                    "мастью {C:hearts}Черви{} в {C:attention}первой руке{} раунда",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Сейчас: {C:attention}#1#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_umbreon = {
                name = 'Амбреон',
                text = {
                    "Создаёт карту {C:attention}Луна{} каждые",
                    "{C:attention}3{} {C:green}переброса{}, повторяет",
                    "все способности карт с мастью {C:clubs}#2#{}",
                    "{C:attention}в руке{} на {C:attention}финальной руке{} раунда",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Сейчас: {C:attention}#1#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_slowking = {
                name = 'Слоукинг',
                text = {
                    "Сыгранные {C:attention}Короли{} дают {X:red,C:white}X#1#{} множ.",
                    "при подсчёте, увеличиваясь на {X:red,C:white}X#2#{} множ.",
                    "за каждую сыгранную руку после первой",
                    "Сбрасывается в конце раунда",      
                }
            },
            j_poke_steelix = {
                name = 'Стиликс',
                text = {
                    "Самая левая подсчитанная карта в",
                    "{C:attention}первой руке{} раунда",
                    "становится {C:attention}стальной{}",
                    "{C:attention}Каменные{} карты {C:attention}в руке{}",
                    "становятся {C:attention}стальными{}"
                } 
            },
            j_poke_scizor = {
                name = 'Сизор',
                text = {
                    "При выборе блайнда, уничтожает Джокера справа",
                    "и получает {C:mult}+#4#{} множ. Получает {C:attention}фольговый{}, {C:attention}голографический{},",
                    "или {C:attention}полихромный{} выпуски, если уничтоженный Джокер не был {C:attention}Обычной{} редкости",
                    "Эти выпуски могут {C:attention}накапливаться{} на этом Джокере",
                    "{C:inactive,s:0.75}(Соответствует выпуску уничтоженного Джокера, если это возможно){}",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{} {C:inactive}множ., {C:chips}+#2#{} {C:inactive}шт. фишек, {X:red,C:white}X#3#{} {C:inactive}множ.)"
                } 
            },
            j_poke_delibird = {
                name = "Делибёрд",
                text = {
                  "В конце раунда",
                  "получите {S:1.1,C:green,E:2}Подарок{}",
                  "{C:inactive}(Должно быть место)"
                }
            },
            j_poke_mantine = {
                name = "Мантайн",
                text = {
                  "Получает {C:chips}+#2#{} шт. фишек когда",
                  "в руке есть{C:attention}золотая{} карта",
                  "или когда {C:attention}золотая{} карта подсчитывается",
                  "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                }
            },
            j_poke_kingdra = {
                name = 'Кингдра',
                text = {
                    "Получает {C:mult}+#2#{} к множ.",
                    "когда подсчитывается {C:attention}6{}",
                    "Получает {C:attention}вместо этого{} {X:red,C:white}X#4#{} к множ., если",
                    "в руке есть {C:attention}Король{}",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ., {X:red,C:white}X#3#{} множ.{C:inactive})",
                } 
            },
            j_poke_porygon2 = {
                name = 'Поригон2',
                text = {
                    "{C:pink}+2{} к лимиту Энергии",
                    "Создайте карту {C:pink}Энергии{}",
                    "соответствующей {C:pink}Типу{}",
                    "самого левого Джокера, когда",
                    "открывается любой {C:attention}Набор{}",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Улучшение{}{C:inactive})"
                } 
            },
            j_poke_stantler = {
                name = "Стэнтлер",
                text = {
                  "Если сыгранная рука содержит {C:attention}пару{},",
                  "даёт {C:chips}+#1#{} шт. фишек, умножен. на количество",
                  "{C:attention}базовых{} фишек первой подсчитанной карты",
                  "Фишки {C:attention}удваиваются{} на {C:attention}последней руке{} раунда",
                }
            },
            j_poke_tyrogue = {
                name = 'Тайрог',
                text = {
                    "{C:attention}Малыш{}, {X:red,C:white} X#1# {} множ.",
                    "Если {C:attention}первые рука или сброс{} раунда",
                    "это ровно {C:attention}5{} карт, одна из них,",
                    "выбранная случайно,",
                    "копируется, если сыграна, и уничтожается, если сброшена",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }  
            },
            j_poke_hitmontop = {
                name = 'Хитмонтоп',
                text = {
                    "{X:red,C:white} X#1# {} множ.",
                    "При выборе Блайнда,",
                    "получает {X:red,C:white} X#3# {} к множ., если",
                    "размер колоды ровно {C:attention}#2#{}",
                } 
            },
            j_poke_smoochum = {
                name = 'Смучам',
                text = {
                    "{C:attention}Малыш{}",
                    "Получите {C:attention}Стандартный{} тэг,",
                    "когда этот Джокер эволюционирует",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Да, она {C:attention}уменьшает{C:inactive} ваш множ.)",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_elekid = {
                name = 'Элекид',
                text = {
                    "{C:attention}Малыш{}",
                    "Получите тег {C:attention}Купона{},",
                    "когда этот Джокер эволюционирует",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Да, он {C:attention}уменьшает{C:inactive} ваш множ.)",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_magby = {
                name = 'Магби',
                text = {
                    "{C:attention}Малыш{}",
                    "{C:red}+#2#{} сброс",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Да, он {C:attention}уменьшает{C:inactive} ваш множ.)",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                }
            },
            j_poke_blissey = {
                name = 'Блисси',
                text = {
                    "Когда первые {C:attention}#1#{} раза {C:attention}счастливая{}",
                    "карта срабатывает каждый раунд, добавьте",
                    "её {C:dark_edition}полихромную{} копию в вашу",
                    "колоду и возьмите её в {C:attention}руку",
                    "{C:inactive}(Сейчас: {C:attention}#2#{C:inactive}/{C:attention}#1#{}{C:inactive})"
                } 
            },
            j_poke_treecko = {
                name = "Трикко",
                text = {
                    "{C:attention}+#3#{} размер руки, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#6#, #7# или #8#{} с шансом",
                    "{C:green}#4# из #5#{} дают {C:money}$#1#{}",
                    "Шанс гарантирован, если у вас есть другие {X:grass,C:white}Травяные{} карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Эволюционирует, накопив {C:money}$#2#/16{})"
                } 
            },
            j_poke_grovyle = {
                name = "Гровайл",
                text = {
                    "{C:attention}+#3#{} размер руки, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#6#, #7# or #8#{} с шансом",
                    "{C:green}#4# из #5#{} дают {C:money}$#1#{}",
                    "Шанс гарантирован, если у вас есть другие {X:grass,C:white}Травяные{} карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Эволюционирует, накопив {C:money}$#2#/32{})"
                } 
            },
            j_poke_sceptile = {
                name = "Септайл",
                text = {
                    "{C:attention}+#3#{} размер руки, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#5#, #6# или #7#{} дают {C:money}$#1#{}",
                    "Получайте {C:money}$#1#{} в конце раунда за",
                    "каждую другую {X:grass,C:white}Травяную{} карту у вас",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Сейчас: {C:money}$#4#{}, макс. {C:money}$14{}{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Торчик",
                text = {
                    "{C:mult}+#3#{} сброс, {C:attention}Природа{}",
                    "{C:mult}+#1#{} множ. за каждые {C:attention}#5#, #6# или #7#{} сброшенные в этом раунде",
                    "Множ. удваивается, если у вас есть другие {X:fire,C:white}Огненные{} или {X:earth,C:white}Боевые{} карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Сейчас: {C:mult}#4#{}{C:inactive} множ.){}",
                    "{C:inactive}(Эволюционирует, подсчитав {C:mult}#2#/60{} {C:inactive}множ.)"
                } 
            },
            j_poke_combusken = {
                name = "Комбаскен",
                text = {
                    "{C:mult}+#3#{} сброс, {C:attention}Природа{}",
                    "{C:mult}+#1#{} множ. за каждые {C:attention}#5#, #6# или #7#{} сброшенные в этом раунде",
                    "Множ. удваивается, если у вас есть другие {X:fire,C:white}Огненные{} или {X:earth,C:white}Боевые{} карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Сейчас: {C:mult}#4#{}{C:inactive} множ.){}",
                    "{C:inactive}(Эволюционирует, подсчитав {C:mult}#2#/150{} {C:inactive}множ.)"
                } 
            },
            j_poke_blaziken = {
                name = "Блэйзикен",
                text = {
                    "{C:mult}+#2#{} сброс, {C:attention}Природа{}",
                    "{C:mult}+#4#{} множ., {X:red,C:white} X#1# {} множ. за каждую {C:attention}#6#, #7# or #8#{}",
                    "сброшенную в этом раунде. {X:red,C:white} X {} Множ. удваивается,",
                    "если у вас есть другие {X:fire,C:white}Огненные{} или {X:earth,C:white}Боевые{} карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Сейчас: {C:mult}+#5#{}{C:inactive} множ., {X:red,C:white} X#3# {}{C:inactive} множ.){}",
                } 
            },
            j_poke_mudkip = {
                name = "Мадкип",
                text = {
                    "{C:chips}+#3#{} рука, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#4#, #5# или #6#{} дают {C:chips}+#1#{} шт. фишек",
                    "Значение фишек удваивается, если у вас есть",
                    "другие {X:water,C:white}Водные{} или {X:earth,C:white}Земляные{}карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Эволюционирует, подсчитав {C:chips}#2#/400{} {C:inactive}шт. фишек)"
                } 
            },
            j_poke_marshtomp = {
                name = "Марштомп",
                text = {
                    "{C:chips}+#3#{} рука, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#4#, #5# или #6#{} дают {C:chips}+#1#{} шт. фишек",
                    "Значение фишек удваивается, если у вас есть",
                    "другие {X:water,C:white}Водные{} или {X:earth,C:white}Земляные{}карты",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Эволюционирует, подсчитав {C:chips}#2#/960{} {C:inactive}шт. фишек)"
                } 
            },
            j_poke_swampert = {
                name = "Свамперт",
                text = {
                    "{C:chips}+#3#{} рука, {C:attention}Природа{}",
                    "Сыгранные {C:attention}#5#, #6# или #7#{} дают {C:chips}+#1#{} шт. фишек",
                    "Дают ещё {C:chips}+#5#{} шт. фишек за каждую",
                    "другую {X:water,C:white}Водную{} или {X:earth,C:white}Земляную{} карту",
                    "{C:inactive,s:0.8}(Включая карты Джокеров и Энергии){}",
                    "{C:inactive}(Сейчас: {C:chips}+#4#{}{C:inactive} в общем)"
                } 
            },
            j_poke_beldum = {
                name = 'Белдум',
                text = {
                    "Получает {C:chips}+#2#{} шт. фишек",
                    "если сыгранная рука содержит хотя бы",
                    "один подсчитанный {C:attention}Туз{}, значение удваивается,",
                    "если эта рука {C:attention}Каре{}",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{}{C:inactive} шт. фишек)",
                    "{C:inactive}(Эволюционирует, накопив {C:chips}+64{}{C:inactive} шт. фишек)"
                } 
            },
            j_poke_metang = {
                name = 'Метанг',
                text = {
                    "Получает {C:chips}+#2#{} шт. фишек",
                    "если сыгранная рука содержит хотя бы",
                    "два подсчитанных {C:attention}Туза{}, значение растёт",
                    "в 4 раза, если эта рука {C:attention}Каре{}",
                    "{C:inactive}(Сейчас: {C:chips}+#1#{}{C:inactive} шт. фишек)",
                    "{C:inactive}(Эволюционирует, накопив {C:chips}+256{}{C:inactive} шт. фишек)"
                } 
            },
            j_poke_metagross = {
                name = 'Метагросс',
                text = {
                    "{C:chips}+#1#{} шт. фишек",
                    "Если сыгранная рука это {C:attention}Каре{},",
                    "каждая карта даёт {X:mult,C:white}X{} множ.,",
                    "равный {C:attention}квадратному корню{} ",
                    "общему числу фишек этой карты",
                } 
            },
            j_poke_buizel = {
                name = 'Буизель',
                text = {
                    "{C:chips}+#1#{} шт. фишек за",
                    "каждую {C:attention}неподсчитанную{} карту",
                    "в сыгранной руке",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)",
                }  
            },
            j_poke_floatzel = {
                name = 'Флоатзель',
                text = {
                    "{C:chips}+#1#{} шт. фишек",
                    "за каждую {C:attention}неподсчитанную{} карту",
                    "в сыгранной руке",
                }  
            },
            j_poke_mimejr = {
                name = 'Майм Джуниор',
                text = {
                    "{C:attention}Малыш{}",
                    "Добавляет {C:attention}красную{} или {C:attention}синюю{} печать",
                    "случайной карте в колоде",
                    "в конце раунда",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_happiny = {
                name = 'Хэппини',
                text = {
                    "{C:attention}Малыш{}",
                    "Подсчитанные карты в",
                    "{C:attention}последней руке{} раунда становятся {C:attention}счастливыми{}",
                    "если это самый правый Джокер",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_munchlax = {
                name = 'Манчлакс',
                text = {
                    "{C:attention}Малыш{}",
                    "Создайте случайную {C:dark_edition}негативную{}",
                    "карту {C:item}Предмета{} в конце раунда",
                    "{X:red,C:white} X#1# {} множ.",
                    "{C:inactive}(Да, он {C:attention}уменьшает{C:inactive} ваш множ.)",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }
            },
            j_poke_mantyke = {
                name = "Мэнтайк",
                text = {
                  "{C:attention}Малыш{}, {X:red,C:white}X#2#{} множ.",
                  "В конце раунда, случайная",
                  "карта в {C:attention}колоде{} становится {C:attention}золотой{}.",
                  "{C:attention}Золотые{} карты в {C:attention}руке{}",
                  "дают {C:chips}+#1#{} шт. фишек",
                  "{C:inactive}(Эволюционирует после {C:attention}#3#{C:inactive} раундов)",
                }
            },
            j_poke_magnezone = {
                name = 'Магнезон',
                text = {
                    "Сыгранные {C:attention}стальные{} карты дают {X:red,C:white}X#1#{} множ.",
                    "и {X:red,C:white}X#2#{} множ. за каждого",
                    "{X:metal,C:white}Металлического{} Джокера у вас",
                    "{C:inactive}(Сейчас: {X:red,C:white}X#3#{}{C:inactive} множ.){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Ликилики',
                text = {
                    "Первые два сыгранных",
                    "{C:attention}Валета{} дают {X:mult,C:white} X#1# {} множ.",
                    "при подсчёте и все остальные {C:attention}Валеты{}",
                    "дают {X:mult,C:white} X#2# {} множ. при подсчёте"
                } 
            },
            j_poke_rhyperior = {
                name = 'Райпериор',
                text = {
                    "Каждая сыгранная {C:attention}каменная{} карта",
                    "навсегда получает",
                    "{C:chips}+#1#{} шт. фишек при подсчёте",
                    "{C:attention}Каменные{} карты повторяются ещё раз за каждого",
                    "{X:earth,C:white}Земляного{} Джокера у вас",
                    "{C:inactive}(Сейчас #2# повторений)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Тангроуф',
                text = {
                    "Сыгранные {C:attention}дикие{} карты дают",
                    "{C:mult}+#1#{} множ., {C:chips}+#2#{} шт. фишек или {C:money}$#3#{}",
                    "{C:green}#4# из #5#{} шанс для {C:attention}всех трёх{}",
                    "Дикие карты {C:attention}не могут{} быть ослаблены"
                } 
            },
            j_poke_electivire = {
                name = 'Элективайр',
                text = {
                    "Когда {C:attention}продаётся{} карта",
                    "и в конце раунда",
                    "получает {C:money}$#1#{} к {C:attention}стоимости продажи{}",
                    "Получает {X:mult,C:white}X#2#{} множ. за каждый",
                    "доллар стоимости продажи у этого Джокера",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                } 
            },
            j_poke_magmortar = {
                name = 'Магмортар',
                text = {
                    "Если в {C:attention}первом{} сбросе",
                    "раунда только {C:attention}1{} карта,",
                    "уничтожает её и получает {C:mult}+#2#{} к множ.",
                    "Получает {X:mult,C:white}X#4#{} к множ. за каждую",
                    "сброшенную карту",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ., {X:mult,C:white}X#3#{}{C:inactive} множ.)",
                } 
            },
            j_poke_leafeon = {
                name = 'Лифеон',
                text = {
                    "Создаёт карту {C:attention}Мир{}",
                    "каждые {C:attention}3{} {C:green}переброса{}",
                    "Каждая сыгранная карта с мастью {C:spades}#2#{}",
                    "навсегда получает {C:chips}+#3#{} шт. фишек",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Сейчас: {C:attention}#1#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_glaceon = {
                name = 'Гласеон',
                text = {
                    "Создаёт случайную карту {C:attention}Таро{}",
                    "каждые {C:attention}3{} {C:green}переброса{}",
                    "{C:green}#2#{} из {C:green}#3#{} шанс для {C:attention}двух карт{}",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Сейчас: {C:attention}#1#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_porygonz = {
                name = 'Поригон-Z',
                text = {
                    "{C:pink}+3{} к Лимиту Энергии",
                    "Этот Джокер получает",
                    "{X:red,C:white} X#2# {} к множ. за каждую использованную",
                    "карту {C:pink}Энергии{} в этом {C:attention}забеге{}",
                    "{C:inactive}(Сейчас: {X:red,C:white} X#1# {}{C:inactive} множ.)"
                } 
            },
            j_poke_sylveon = {
                name = 'Сильвеон',
                text = {
                    "Создаёт карту {C:attention}Звезда{}",
                    "каждые {C:attention}3{} {C:green}переброса{}",
                    "Каждая карта с мастью {C:diamonds}#2#{}",
                    "в руке даёт {X:mult,C:white} X#3# {} множ.",
                    "{C:inactive}(Должно быть место)",
                    "{C:inactive}(Сейчас: {C:attention}#1#{}{C:inactive}/3 перебросов)"
                } 
            },
            j_poke_elgyem = {
                name = "Элгием",
                text = {
                  "Создаёт {C:dark_edition}негативную{} карту {C:planet}Планеты{}",
                  "одной из {C:attention}#1#{} ваших {}покерных рук{}",
                  "наиболее высокого уровня",
                  "когда выбирается {C:attention}Блайнд{}",
                  "{C:inactive,s:0.8}(Эволюционирует, если вы держите {C:planet,s:0.8}#2#{C:inactive,s:0.8}/#3# разных карт Планет){}"
                }
              },
              j_poke_beheeyem = {
                  name = "Бихием",
                  text = {
                    "Создайте {C:dark_edition}негативную{} карту {C:planet}Планеты{}",
                    "одной из {C:attention}#1#{} ваших {}покерных рук{}",
                    "наиболее высокого уровня когда выбирается {C:attention}Блайнд{}",
                    "Когда открываетсяя любой {C:attention}Набор{}, создайте",
                    "{C:attention}Телескоп{} или {C:attention}Обсерваторию{}, если возможно"
                  }
              },
            j_poke_grubbin = {
                name = 'Граббин',
                text = {
                    "{C:mult}+#1#{} множ.",
                    "Это значение вырастает в {C:attention} 3 раза{},",
                    "если у вас есть",
                    "{X:lightning, C:black}Электрический{} Джокер",
                    "{C:inactive}(Эволюционирует после {C:attention}#2#{}{C:inactive} раундов)"
                }  
            },
            j_poke_charjabug = {
                name = 'Чарджабаг',
                text = {
                    "{C:mult}+#1#{} множ.",
                    "за каждого {X:lightning, C:black}Электрического{} Джокера",
                    "у вас {C:inactive}(включая себя){}",
                     "{C:inactive}(Сейчас: {C:mult}#2#{C:inactive} множ.)",
                    "{C:inactive}(Эволюционирует с картой{} {C:attention}Камень Молнии{}{C:inactive})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Викавольт',
                text = {
                    "{C:mult}+#3#{} множ.",
                    "{X:red,C:white} X#1# {} множ. за каждого",
                    "другого {X:lightning, C:black}Электрического{} Джокера",
                    "у вас{}",
                     "{C:inactive}(Сейчас: {X:red,C:white} X#2# {}{C:inactive} множ.)",
                }  
            },
            j_poke_mimikyu = {
                name = "Мимикью",
                text = {
                  "{C:chips}+#1#{} шт. фишек, если подсчитанная",
                  "рука не имеет масти {C:hearts}#2#{}",
                  "Предотвращает смерть, если фишки с очками составляют",
                  "минимум {C:attention}50%{} от необходимых фишек",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Ямпер',
                text = {
                    "{C:mult}+#1#{} множ. и получите {C:money}$#2#{},",
                    "если сыгранная рука содержит",
                    "{C:attention}Стрит{}",
                    "{C:inactive}(Эволюционирует после {C:attention}#3#{}{C:inactive} раундов)"
                } 
            },
            j_poke_boltund = {
                name = 'Болтанд',
                text = {
                    "{X:red,C:white}X#1#{} множ. и получите {C:money}$#2#{},",
                    "если сыгранная рука содержит",
                    "{C:attention}Стрит{}",
                } 
            },
            j_poke_dreepy = {
                name = "Дрипи",
                text = {
                  "Когда этот Джокер продаётся, добавьте {C:money}$#1#{} стоимости продажи",
                  "к каждой карте Джокера и",
                  "превратите все карты {C:attention}в руке",
                  "в {C:spades}#2#{}",
                  "{C:inactive}(Эволюционирует когда разыгрывается Стрит-флэш){}",
                }
            },
            j_poke_drakloak = {
                name = "Драклоак",
                text = {
                  "Добавляет стоимость продажи всех ваших",
                  "{C:attention}Джокеров{} к множ. {C:inactive}({C:mult}+#2#{C:inactive})",
                  "Если сыгранная рука это {C:attention}Стрит-флэш{},",
                  "добавляет {C:money}$#1#{} к стоимости продажи каждого Джокера у вас",
                  "{C:inactive}(Эволюционирует при {C:money}$#2#{}{C:inactive}/#3# общей стоимости всех Джокеров)",
                }
            },
            j_poke_dragapult = {
                name = "Драгапульт",
                text = {
                  "{X:red,C:white} X#2# {} множ. за каждый {C:money}${}",
                  "стоимости продажи всех ваших {C:attention}Джокеров{}",
                  "Если сыгранная рука это {C:attention}Стрит-флэш{}",
                  "и у вас нет {C:attention}Дрипи Дротиков{},",
                  "создаёт 2 {C:dark_edition}негативных{} {C:attention}Дрипи Дротика{}",
                  "{C:inactive}(Сейчас: {X:red,C:white} X#3# {C:inactive} множ.){}"
                }
            },
            j_poke_fidough = {
                name = "Файдо",
                text = {
                  "Получает {C:chips}+#2#{} шт. фишек, если сыгранная рука содержит {C:attention}#3#{}",
                  "Требуемое {C:attention}значение{} повышается с каждым срабатыванием",
                  "{C:inactive,s:0.8}(Если значение было наивысшим, оно становится самым низким)",
                  "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт. фишек)",
                  "{C:inactive}(Эволюционирует, если у вас есть {X:fire,C:white}Огненный{}{C:inactive} Джокер)",
                }
            },
            j_poke_dachsbun = {
                name = "Даксбан",
                text = {
                  "Получает {C:chips}+#2#{} шт. фишек, если сыгранная рука содержит {C:attention}#3#{}",
                  "Требуемое {C:attention}значение{} повышается с каждым срабатыванием",
                  "Получаемые фишки увеличиваются на {C:chips}+1{} за",
                  "каждого {X:fire,C:white}Огненного{} Джокера у вас",
                  "{C:inactive,s:0.8}(Если значение было наивысшим, оно становится самым низким)",
                  "{C:inactive}(Сейчас: {C:chips}+#1#{C:inactive} шт.фишек)",
                }
            },
            j_poke_tinkatink = {
                name = "Тинкатинк",
                text = {
                  "Сыгранные карты дают {C:mult}+#1#{} множ.",
                  "При выборе блайнда,",
                  "ослабляет {C:attention}#3#{} карт в вашей колоде,",
                  "не являющихся {C:attention}стальными{}",
                  "{C:inactive}(Эволюционирует после {C:attention}#2#{C:inactive} раундов)",
                }
            },
            j_poke_tinkatuff = {
                name = "Тинкатафф",
                text = {
                  "Сыгранные карты дают {C:mult}+#1#{} множ.",
                  "При выборе блайнда,",
                  "ослабляет {C:attention}#3#{} карт в вашей колоде,",
                  "не являющихся {C:attention}стальными{}",
                  "{C:inactive}(Эволюционирует после {C:attention}#2#{C:inactive} раундов)",
                }
            },
            j_poke_tinkaton = {
                name = "Тинкатон",
                text = {
                  "Сыгранные карты дают {C:mult}+#1#{} множ.",
                  "При выборе блайнда",
                  "ослабляет {C:attention}#3#{} карт в вашей колоде,",
                  "не являющихся {C:attention}стальными{}",
                  "Сыгранные {C:attention}стальные{} карты",
                  "ведут себя как {C:attention}стеклянные{} карты"
                }
            },
            j_poke_annihilape = {
                name = 'Аннигилейп',
                text = {
                    "Каждая сыгранная {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, или {C:attention}7{} даёт",
                    "{C:mult}+#1#{} множ. и {C:chips}+#2#{} шт. фишек при подсчёте",
                    "за каждую сыгранную в этом раунде руку",
                    "{C:inactive}(Сейчас: {C:mult}+#3#{} {C:inactive}множ. и {C:chips}+#4#{C:inactive} шт. фишек)",
                } 
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Создает расходуемые карты",
                    "при получении?",
                    "Создаёт {C:attention}#1#{}? {C:attention}Тэга{}?",
                } 
            },
            j_poke_pokedex = {
                name = 'Покедекс',
                text = {
                    "{C:mult}+#2#{} множ. за каждого",
                    "Джокера с {C:pink}Типом{}",
                    "{C:attention}Покемоны{} могут появляться",
                    "многократно",
                    "{C:inactive}(Сейчас: {C:mult}+#1#{C:inactive} множ.)"
                } 
            },
            j_poke_everstone = {
                name = 'Эверстоун',
                text = {
                    "Покемоны {C:attention}не могут{} эволюционировать",
                    "{C:attention}Базовые{} Покемоны и {C:attention}Малыши{} дают {X:mult,C:white} X#1# {} множ. каждый",
                } 
            },
            j_poke_tall_grass = {
                name = 'Высокая Трава',
                text = {
                    "{C:green}#1# из #2#{} шанс создать",
                    "{C:chips}Базового{} Джокера {C:attention}Покемона{}",
                    "когда разыгрывается рука",
                    "Шанс гарантирован, если сыгранная рука",
                    "содержит {C:attention}дикую{} карту",
                } 
            },
            j_poke_jelly_donut = {
                name = "Мармеладный Пончик",
                text = {
                  "Создайте карту {C:colorless}Бесцветной",
                  "{C:pink}Энергии{}, когда выбирается",
                  "блайнд",
                  "{C:inactive}({C:attention}#1#{}{C:inactive} раунда){}"
                }
            },

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
            sleeve_poke_obituarysleeve = {
                name = "Obituary Sleeve",
                text = {
                    "All cards have a {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Luminous Sleeve",
                text = {
                    "All Jokers are created",
                    "with random {C:pink}Type{} stickers",
                },
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ультраболл",
                text = {
                    "Создаёт карту",
                    "случайного {C:attention}Джокера 2 Стадии{}",
                    "{C:inactive}(Должно быть место)"
                },
            },
            c_poke_masterball = {
                name = "Мастерболл",
                text = {
                    "Создаёт случайную карту",
                    "{C:attention}Легендарного Джокера Покемона{}",
                    "{C:inactive}(Должно быть место)"
                },
            },
            c_poke_transformation = {
                name = "Трансформация",
                text = {
                    "Эволюционирует выбранного или самого левого",
                    "Джокера до высшей {C:attention}стадии{}",
                    "и увеличивает его значения {C:attention}подсчёта{} и {C:money}${}", 
                    "навсегда, если это возможно",
                    "{C:inactive}(Макс. {C:attention}#1#{}{C:inactive} увеличений за Джокера)"
                },
            },
            c_poke_obituary = {
                name = "Обряд",
                text = {
                    "Добавляет {C:pink}розовую{} печать",
                    "{C:attention}1{} выбранной карте",
                }
            },
            c_poke_nightmare = {
                name = "Кошмар",
                text = {
                    "Уничтожает случайного Джокера",
                    "Покемона и создаёт {C:attention}3{}",
                    "случайные {C:dark_edition}Негативные{} карты {C:pink}Энергии{}"
                },
            },
            c_poke_revenant = {
                name = "Ревенант",
                text = {
                    "Добавляет {C:item}серебряную{} печать",
                    "к {C:attention}1{} выбранной карте",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Поке тэг",
                text = {
                    "Даёт бесплатный",
                    "{C:pink}Мега Поке набор",
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Блестящий тэг",
                text = {
                    "Следующий Джокер базового выпуска",
                    "из магазина бесплатен",
                    "и становится {C:colorless}Блестящим{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Тэг 1 стадии",
                text = {
                    "В магазине есть бесплатный",
                    "Джокер {C:attention}1 Стадии{}",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Тэг Сафари",
                text = {
                    "В магазине есть бесплатный",
                    "{C:safari}Сафари{} Джокер",

                }, 
            },
        },
        Tarot = {
           
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Поиск Энергии",
                text = {
                    "{C:pink}+2{} к лимиту энергии"
                },
            },
            v_poke_energyresearch = {
                name = "Технология Энергии",
                text = {
                    "{C:pink}+3{} к лимиту энергии"
                },
            },
            v_poke_goodrod = {
                name = "Надежная удочка",
                text = {
                    "{C:attention}Поке{} наборы получают",
                    "ещё {C:attention}1{} дополнительную карту на выбор",
                },
            },
            v_poke_superrod = {
                name = "Супер удочка",
                text = {
                    "{C:attention}Поке{} наборы получают",
                    "ещё {C:attention}1{} дополнительную карту на выбор",
                },
            },
        },
        Other = {

            Grass = {
                name = "Тип",
                text = {
                  "{X:grass,C:white}Травяной{}",
                }
            },
            Fire = {
                name = "Тип",
                text = {
                  "{X:fire,C:white}Огненный{}",
                }
            },
            Water = {
                name = "Тип",
                text = {
                  "{X:water,C:white}Водный{}",
                }
            },
            Lightning = {
                name = "Тип",
                text = {
                  "{X:lightning,C:black}Электрический{}",
                }
            },
            Psychic = {
                name = "Тип",
                text = {
                  "{X:psychic,C:white}Психический{}",
                }
            },
            Fighting = {
                name = "Тип",
                text = {
                  "{X:fighting,C:white}Боевой{}",
                }
            },
            Colorless = {
                name = "Тип",
                text = {
                  "{X:colorless,C:white}Бесцветный{}",
                }
            },
            Dark = {
                name = "Тип",
                text = {
                  "{X:dark,C:white}Тёмный{}",
                }
            },
            Metal = {
                name = "Тип",
                text = {
                  "{X:metal,C:white}Металлический{}",
                }
            },
            Fairy = {
                name = "Тип",
                text = {
                  "{X:fairy,C:white}Волшебный{}",
                }
            },
            Dragon = {
                name = "Тип",
                text = {
                  "{X:dragon,C:white}Драконий{}",
                }
            },
            Earth = {
                name = "Тип",
                text = {
                  "{X:earth,C:white}Земляной{}",
                }
            },
            Bird = {
                name = "Тип",
                text = {
                  "{X:bird,C:white}Летающий{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Древний",
                text = {
                    "Эффект, зависящий от",
                    "количества {C:attention}#1#{}",
                    "в сыгранной руке",
                    "{C:inactive}(Эффекты {C:attention}кумулятивны{}{C:inactive})"
                }
            },
            eitem = {
                name = "Карта Эволюции",
                text = {
                    "Эволюционирует самого левого",
                    "{C:attention}возможного{} Джокера",
                    "в конце следующего раунда"
                }
            },
            --Infoqueue used by some Consumables
            holding = {
                name = "Держит",
                text = {
                  "Этот Джокер появляется",
                  "с картой {C:attention}#1#{}",
                  "{C:inactive}(Должно быть место){}"
                }
            },
            basic = {
                name = "Базовый",
                text = {
                    "Джокер Покемон",
                    "который не {C:attention}эволюционировал{}"
                }
            },
            stage1 = {
                name = "Стадия 1",
                text = {
                    "Джокер Покемон",
                    "который {C:attention}эволюционировал{} единыжды"
                }
            },
            stage2 = {
                name = "Стадия 2",
                text = {
                    "Джокер Покемон",
                    "который {C:attention}эволюционировал{} дважды"
                }
            },
            energy = {
                name = "Использованная Энергия",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Денежный шанс",
                text = {
                    "{C:attention}#1#%{} шанс",
                    "получения дополнительных {C:money}$1{}"
                }
            },
            mult_progress = {
                name = "Прогресс получаемого множ.",
                text = {
                    "{C:attention}#1#%{} прогресс",
                    "к получаемому {C:mult}множ.{}",
                    "увеличивается на {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Прогресс получаемых фишек",
                text = {
                    "{C:attention}#1#%{} прогресс",
                    "к получаемым {C:chips}фишкам{}",
                    "увеличивается на {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Прогресс получаемых денег",
                text = {
                    "{C:attention}#1#%{} прогресс",
                    "к получаемым {C:money}${}",
                    "увеличивается на {C:money}1${}"
                }
            },
            availability = {
                name = "Доступность",
                text = {
                    "Не доступно если",
                    "{C:attention}#1#{}",
                }
            },
            nature = {
                name = "Природа",
                text = {
                    "Нужные {C:attention}карты{}",
                    "выбираются случайно",
                    "при создании Джокера"
                }
            },
            deli_gift = {
                name = "Подарки",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:attention}карта {C:item}Предмета{}",
                    "{C:green}20%{} - {C:attention}Тэг купона",
                    "{C:green}15%{} - {C:dark_edition}полихромная{} {C:attention}Подарочная Карта",
                }
            },
            percent_chance = {
                name = "Процентный шанс",
                text = {
                  "{C:green}#1#%{} шанс",
                  "срабатывания {C:attention}эффекта{}",
                  "{C:inactive}(Шанс не может быть увеличен){}"
                }
            },
            eeveelution = {
                name = "Эволюции",
                text = {
                    "{C:attention}Камень Воды{} - {X:water,C:white}Вапореон{}",
                    "{C:attention}Камень Молнии{} - {X:lightning,C:black}Джолтеон{}",
                    "{C:attention}Камень Огня{} - {X:fire,C:white}Флареон{}",
                    "{C:attention}Камень Солнца{} - {X:psychic,C:white}Эспеон{}",
                    "{C:attention}Камень Луны{} - {X:dark,C:white}Амбреон{}",
                    "{C:attention}Камень Листа{} - {X:grass,C:white}Лифион{}",
                    "{C:attention}Камень Льда{} - {X:water,C:white}Гласеон{}",
                    "{C:attention}Блестящий Камень{} - {X:fairy,C:white}Сильвеон{}"
                }
            },
            precise_energy_tooltip = {
                name = "Точные значения Энергии",
                text = {
                    "{s:0.8}Использует {C:attention,s:0.8}дробные{} для всех значений, изменяемых {C:pink,s:0.8}Энергией{}",
                    "{s:0.8}Если галочка будет {C:attention,s:0.8}снята{}{s:0.8}, бонусы Энергии изменятся следующим образом:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Mult - использует дробные",
                    "{C:attenion}2. {s:0.8}Прямые значения {C:mult,s:0.8}множ.{}{s:0.8} и {C:chips,s:0.8}фишек{}{s:0.8} - округляются до ближайшего полного значения",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Получаемый множ.{}{s:0.8} и {C:chips,s:0.8}Получаемые фишки{}{s:0.8} - Дробный компонент отображается", 
                    "{s:0.8}как процент, используемый как бонус для базовых  {C:mult,s:0.8}множ.{}{s:0.8} и {C:chips,s:0.8}фишек{}",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Дробный компонент отображается как процент,",
                    "{s:0.8}используемый как шанс для получения дополнительных {C:money,s:0.8}${}{s:0.8}{}",
                    "{C:inactive,s:0.8}(Не Джокеры-Покемоны всегда используют точные значения){}"
                }
            },
            baby = {
                name = "Малыш",
                text = {
                    "Когда разыгрывается рука:",
                    "если этот Джокер",
                    "слева от любого Джокера,",
                    "не являющегося {C:attention}Малышом{}",
                    "{C:attention}ослабьте{} его"
                }
            },
            designed_by = {
                name = "Автор идеи:",
                text = {
                  "{C:dark_edition}#1#{}"
                }
              },
            safaridesc = {
                name = "Сафари",
                text = {
                    "Может быть получен только",
                    "через {C:attention}Эволюцию{}",
                    "либо некоторые {C:attention}Покеболлы{}"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Розовая печать",
                text = {
                    "Создаёт карту {C:pink}Энергии{}",
                    "если засчитывается в",
                    "{C:attention}первой руке{} раунда"
                },
            },
            poke_silver_seal = {
                name = "Серебряная печать",
                text = {
                  "Создаёт карту {C:item}Предмета{},",
                  "но{C:attention}сбрасывается{}, если осталась {C:attention}в руке{},",
                  "когда подсчитываются карты"
                }
            },
            grass_sticker = {
                name = "Тип",
                text = {
                    "{X:grass,C:white}Травяной{}"
                } 
            },
            fire_sticker = {
                name = "Тип",
                text = {
                    "{X:fire,C:white}Огненный{}"
                } 
            },
            water_sticker = {
                name = "Тип",
                text = {
                    "{X:water,C:white}Водный{}"
                } 
            },
            lightning_sticker = {
                name = "Тип",
                text = {
                    "{X:lightning,C:white}Электрический{}"
                } 
            },
            psychic_sticker = {
                name = "Тип",
                text = {
                    "{X:psychic,C:white}Психический{}"
                } 
            },
            fighting_sticker = {
                name = "Тип",
                text = {
                    "{X:fighting,C:white}Боевой{}"
                } 
            },
            colorless_sticker = {
                name = "Тип",
                text = {
                    "{X:colorless,C:white}Бесцветный{}"
                } 
            },
            dark_sticker = {
                name = "Тип",
                text = {
                    "{X:dark,C:white}Тёмный{}"
                } 
            },
            metal_sticker = {
                name = "Тип",
                text = {
                    "{X:metal,C:white}Металлический{}"
                } 
            },
            fairy_sticker = {
                name = "Тип",
                text = {
                    "{X:fairy,C:white}Волшебный{}"
                } 
            },
            dragon_sticker = {
                name = "Тип",
                text = {
                    "{X:dragon,C:white}Драконий{}"
                } 
            },
            earth_sticker = {
                name = "Тип",
                text = {
                    "{X:earth,C:white}Земляной{}"
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
                name = "Не открыто",
                text = {
                    "Purchase or use",
                    "this card in an",
                    "unseeded run to",
                    "learn what it does"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Поке набор Джамбо",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Мега Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Поке набор Джамбо",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Мега Поке набор",
                text = {
                    "Выберите {C:attention}#1#{}",
                    "из {C:attention}#2# карт",
                    "{C:pink}Энергии{} или {C:item}Предмета{}",
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
            c_poke_poke_master = "Мастер Покемонов",
            c_poke_nuzlocke = "Испытание Назлока",
        },
        dictionary = {
            k_energy = "Энергия",
            k_item = "Предмет",
            k_poke_pocket_pack = "Поке набор",

            k_poke_safari = "Сафари",

            b_save = "Приберечь",
            b_energy_cards = "Карты Энергии",
            b_item_cards = "Карты Предметов",
            
            --Mod Menu stuff
            poke_settings_header_required = "Требуется перезапуск:",
            poke_settings_header_norequired = "Не требуется перезапуск:",
            poke_settings_pokemon_only = "Только Покемоны?",
            poke_settings_unlimited_energy = "Неограниченная Энергия?",
            poke_settings_shiny_playing_cards = "Блестящий на играемых картах?",
            poke_settings_jokers_only = "Только Джокеры?",
            poke_settings_no_evolutions = "Без эволюций?",
            poke_settings_pokeballs = " Покеболлы?",
            poke_settings_pokedex_number = "Номера Покедекса?",
            poke_settings_pokemon_splash = "Карта Покемона при загрузке",
            poke_settings_pokemon_gen_one = "Только первое поколение?",
            poke_settings_pokemon_precise_energy = "Использовать точные значения Энергии?",
            poke_credits_actualcredits = "Титры",
            poke_credits_thanks = "Спасибо:",
            poke_credits_lead = "Главный разработчик: ",
            poke_credits_graphics = "Графический дизайн: ",
            poke_credits_quality_assurance_main = "QA Лид: ",
            poke_credits_developer = "Разработчики: ",
            poke_credits_designer = "Помощники в дизайне: ",
            poke_credits_community_manager = "Менеджеры сообщества: ",
            poke_credits_promotion_producer = "Промоушен продюсер: ",
            poke_credits_localization = "Локализация: ",

            poke_plus_pokeitem = "+1 Предмет",
            poke_plus_energy = "+1 Энергия",
            poke_destroyed_ex = "Уничтожен!",
            poke_evolve_success = "Эволюция!",
            poke_evolve_level = "Повышение!",
            poke_tera_ex = "Тера!",
            poke_metal_ex = "Металл!",
            poke_dragon_ex = "Дракон!",
            poke_energized_ex = "Усилен!",
            poke_unlimited_energy = "Бесконечность",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Фарфетч'дом",
            cubone_marowak_infoqueue = "Кубоном и Мароваком",
            snorlax_infoqueue = "Снорлаксом",
            pokeball_variable = "Покеболл",
            goodrod_variable = "Надежная удочка",
            pinkseal_variable = "Розовая печать",

            --From Gastly Line
            poke_lick_ex = "Лизь!",
            poke_lick = "Лизь",
            --From Kingler
            poke_surf_ex = "Surf!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            --From Exeggutor
            poke_solar_ex = "Солнечно!",
            poke_solar = "Солнечно!",
            --From Pinsir
            poke_pinsir_pin = "Закреплен!",
            poke_pinsir_remove_pin = "Откреплен!",
            --From Tangela line
            poke_tangela_bonus = "Все!",
            --Golbat And Crobat thingy
            poke_screech_ex = "Скрии!",
            --From Bellossom
            poke_petal_dance_ex = "Petal!",
            poke_petal_dance = "Petal",
            --From Scizor
            poke_x_scissor_ex = "X Scissor!",
            poke_x_scissor = "X Scissor",
            --From Kingdra
            poke_twister_ex = "Твистер!",
            --From Mime Jr.
            poke_mime_ex = "Майм!",
            --From Magmortar
            poke_fire_blast_ex = "Fire Blast!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Молния!",
            poke_gift_ex = "Подарок!",
            poke_faint_ex = "Fainted!",
            poke_nido_ex = "Нидо!",
            poke_disguise_intact = "Маскировка сработала! Смерть предотвращена!",
            poke_disguise_broken = "Маскировака подвела! Смерть не предотвращена!",
            poke_dig_ex = "Копать!",
            poke_blazekick_ex = "Blaze Kick!",
            poke_darts_ex = "Дротики!"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Розовая печать",
            poke_silver_seal = "Серебряная печать",

            poke_shiny = "Блестящий",

            grass_sticker = "Тера",
            fire_sticker = "Тера",
            water_sticker = "Тера",
            lightning_sticker = "Тера",
            psychic_sticker = "Тера",
            fighting_sticker = "Тера",
            colorless_sticker = "Тера",
            dark_sticker = "Тера",
            metal_sticker = "Тера",
            fairy_sticker = "Тера",
            dragon_sticker = "Тера",
            earth_sticker = "Тера",

            k_poke_safari = "Сафари",
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} Слот Джокера после победы над Босс-Блайндом {C:inactive}(До 5)"},
           ch_c_poke_nuzlocke = {"Первый магазин каждого анте имеет {C:attention}Набор Шута"}
        },
    }
}