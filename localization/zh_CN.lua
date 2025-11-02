-- Welcome to zh_CN.lua!
-- 友情提醒，在美国我们说 "color" 而不是 "colour"
-- 这也是默认文件，如果其他语言文件缺少条目，游戏将使用此文件作为后备

-- 进度报告: (这是英文文件，所以其实不重要，但为了保持一致性)

--[[
牌组: 是
小丑牌: 是
设置/模组: 是
道具: 是
能量: 是
牌套 (需要Decksleeves Mod): 是
Boss盲注: 是
挑战: 是
幻灵牌: 是
塔罗牌: 是 (虽然并没有哈哈)
贴纸: 是
星球牌: 是 (虽然并没有哈哈)
字典: 是
版本: 是
优惠券: 是
标签: 是
杂项信息队列 (原始, 幼年, 进化牌, 属性等): 是
其他 (补充包, 贴纸等): 是
杂项: 是
]]--


return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "训练家牌组",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}优惠券及",
                    "一张 {C:tarot,T:c_poke_pokeball}#2#{}牌",
                }
            },
            b_poke_telekineticdeck = {
                name = "念动力牌组",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_crystal_ball}#1#{} 优惠券",
                    "和{C:attention}2{}张",
                    "{C:item,T:c_poke_twisted_spoon}#2#{}",
                }
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            -- 有趣的是：这个牌组和发亮牌组的描述搞混了
            b_poke_obituarydeck = {
                name = "讣闻牌组",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                }
            },
            b_poke_revenantdeck = {
                name = "亡魂牌组",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                }
            },
            b_poke_luminousdeck = {
                name = "发亮牌组",
                text = {
                    "所有小丑牌生成时",
                    "{C:pink}能量注入{}并附有",
                    "随机的{C:pink}属性{}贴纸",
                }
            },
            b_poke_ampeddeck = {
                name = "增幅牌组",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_poke_energysearch}#1#{}优惠券",
                    "和一张",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#{}",
                }
            },
            b_poke_futuredeck = {
                name = "未来牌组",
                text = {
                    "{C:purple}+#1# 预见{}",
                }
            },
            b_poke_stadiumdeck = {
                name = "竞技场牌组",
                text = {
                    "开局时额外获得一张",
                    "{C:attention}奖励, 倍率, 百搭, 玻璃,",
                    "{C:attention}钢铁, 石头, 黄金{}, 和{C:attention}幸运{}牌",
                }
            },
            b_poke_megadeck = {
                name = "超级牌组",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_reroll_surplus}#2#{} 和 {C:tarot,T:v_reroll_glut}#3#{} 优惠券",
                    "以及一张 {C:spectral,T:c_poke_megastone}#1#{} 牌",
                    "{C:red}-#4#{} 商店栏位",
                }
            },
            b_poke_vendingdeck = {
                name = "贩卖机牌组",
                text = {
                    "每击败一个",
                    "{C:attention}奇数 Boss 盲注{}, 获得一个",
                    "{C:attention,T:tag_vremade_double}#1#",
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "夏翠丝密室",
                text = {
                    "每次出牌时",
                    "对随机一个属性施加减益",
                },
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "精灵球",
                text = {
                    "产生一张随机",
                    "{C:attention}基础宝可梦小丑{}牌",
                    "{C:inactive}（必须有空位）",
                },
            },
            c_poke_greatball = {
                name = "超级球",
                text = {
                    "产生一张随机",
                    "{C:attention}一次进化{}宝可梦小丑牌",
                    "{C:inactive}（必须有空位）",
                },
            },
            c_poke_moonstone = {
                name = "月之石",
                text = {
                    "{C:attention}进化牌{}",
                    "{C:green}#2# / #3#{} 概率",
                    "提升选定的 {C:attention}扑克牌型{} 等级",
                    "{C:inactive}(牌型: {C:attention}#1#{C:inactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "日之石",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}#1#{} 张选定牌增强为 {C:attention}百搭牌{}",
                    "并 {C:attention}随机化{} 其点数",
                },
            },
            c_poke_waterstone = {
                name = "水之石",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}#1#{} 张选定牌增强为 {C:attention}奖励牌{}",
                    "若已是 {C:attention}奖励牌{}，",
                    "{C:attention}翻倍{} 其总筹码",
                    "{C:inactive}(每次强化最多增加 {C:chips}+#2#{C:inactive} 筹码)",
                },
            },
            c_poke_thunderstone = {
                name = "雷之石",
                text = {
                    "{C:attention}进化牌{}",
                    "摧毁 {C:attention}1{} 张选定牌,",
                    "将 {C:attention}2{} 张同点数的{C:attention}黄金牌{}",
                    "加入牌组并抽 {C:attention}1{} 张上手",
                },
            },
            c_poke_firestone = {
                name = "火之石",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}#1#{} 张选定牌增强为 {C:attention}倍率牌{}",
                    "然后随机销毁其中 {C:attention}1{} 张",
                },
            },
            c_poke_leafstone = {
                name = "叶之石",
                text = {
                    "{C:attention}进化牌{}",
                    "{C:green}#1# / #2#{} 概率",
                    "将手中每张牌增强为 {C:attention}幸运牌{}",
                },
            },
            c_poke_linkcable = {
                name = "连接之绳",
                text = {
                    "{C:attention}进化牌{}",
                    "选择 {C:attention}#1#{} 张牌，",
                    "将 {C:attention}左侧{} 牌的点数 {C:attention}增加{}",
                    "将 {C:attention}右侧{} 牌的点数 {C:attention}减少{}",
                },
            },
            c_poke_leftovers = {
                name = "吃剩的东西",
                text = {
                    "{C:attention}可重复使用{}",
                    "为最左边或选定的小丑牌",
                    "增加 {C:money}$#2#{} 的出售价值",
                    "{C:inactive}（每回合可使用一次）",
                }
            },
            c_poke_leek = {
                name = "大葱",
                text = {
                    "{C:attention}可重复使用{}",
                    "{C:green}#1# / #2#{} 概率为自身添加",
                    "{C:dark_edition}闪箔{}、{C:dark_edition}全息{} 或",
                    "{C:dark_edition}多彩{} 效果",
                    "回合结束时移除 {C:attention}版本{}",
                    "{C:inactive}（每回合可使用一次）",
                }
            },
            c_poke_thickclub = {
                name = "粗骨头",
                text = {
                    "{C:attention}可重复使用{}",
                    "永久为 {C:attention}#1#{} 张选定牌",
                    "增加 {C:chips}+#2#{} 筹码",
                    "{C:inactive}（每回合可使用一次）",
                }
            },
            c_poke_teraorb = {
                name = "太晶珠",
                text = {
                    "{C:attention}属性变换:{} {B:1,V:2}#1#{}",
                    "{C:inactive,s:0.8}({C:pink,s:0.8}属性{C:inactive,s:0.8}每次出牌后改变){}",
                    "如果最左边或选定的小丑牌",
                    "已是 {B:1,V:2}#1#{} {C:pink}属性{}，",
                    "则为其{C:pink}注入能量{}",
                },
            },
            c_poke_metalcoat = {
                name = "金属膜",
                text = {
                    "{C:attention}属性变换:{} {X:metal,C:white}钢{}",
                    "为 {C:attention}1{} 张选定牌创造一张",
                    "附带{C:attention}钢铁{}强化的复制品",
                },
            },
            c_poke_dragonscale = {
                name = "龙之鳞片",
                text = {
                    "{C:attention}属性变换:{} {X:dragon,C:white}龙{}",
                    "随机生成最多 {C:attention}3{} 张",
                    "{C:item}道具{}或{C:pink}能量{}牌",
                    "{C:inactive}（必须有空位）{}",
                },
            },
            c_poke_kingsrock = {
                name = "王者之证",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}#1#{} 张选定牌",
                    "转换为 {C:attention}K{}",
                },
            },
            c_poke_upgrade = {
                name = "升级",
                text = {
                    "{C:attention}进化牌{}",
                    "为 {C:attention}#1#{} 张选定牌赋予",
                    "随机的{C:attention}非石头加强效果{}",
                }
            },
            c_poke_dubious_disc = {
                name = "可疑修正档",
                text = {
                    "{C:attention}进化牌{}",
                    "随机{C:attention}强化{}",
                    "你{C:attention}手中{}的所有牌",
                }
            },
            c_poke_icestone = {
                name = "冰之石",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}#1#{} 张选定牌增强为 {C:attention}玻璃牌{}",
                    "{C:green}#2# / #3#{} 概率每张选定牌 {C:attention}碎裂{}",
                }
            },
            c_poke_shinystone = {
                name = "光之石",
                text = {
                    "{C:attention}进化牌{}",
                    "为 {C:attention}1{} 张选定手牌添加",
                    "{C:dark_edition}闪箔{}、{C:dark_edition}全息{} 或",
                    "{C:dark_edition}多彩{} 效果，并移除牌的",
                    "{C:attention}加强效果{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "弯曲的汤匙",
                text = {
                    "创造本局游戏中最近使用的",
                    "{C:item}道具{}牌或{C:pink}能量{}牌",
                    "{s:0.8,C:item}弯曲的汤匙{s:0.8}、{C:item}可重复使用道具",
                    "{s:0.8,C:item}及树果汁除外",
                }
            },
            c_poke_prismscale = {
                name = "美丽鳞片",
                text = {
                    "{C:attention}进化牌{}",
                    "将{C:attention}#2#{}张随机持有的手牌",
                    "变为所选牌的{C:attention}花色{}",
                }
            },
            c_poke_duskstone = {
                name = "暗之石",
                text = {
                    "{C:attention}进化牌{}",
                    "每拥有一张{C:attention}可汲取{}的小丑牌，",
                    "获得 {C:money}$#1#{}，并从其售价中{C:attention}汲取 {C:money}$1{}",
                    "{C:attention}#2#{} {C:inactive}[#3#]{} 回合后，改为",
                    "每张小丑牌获得 {C:money}$#1#{}",
                    "{C:inactive}(当前 {C:money}$#4#{C:inactive}/上限 $#5#)",
                }
            },
            c_poke_dawnstone = {
                name = "觉醒之石",
                text = {
                    "{C:attention}进化牌{}",
                    "获得 {C:money}${} 等于{c:attention}两倍{}于",
                    "{C:attention}#1#{} {C:inactive}#4#{} 的{C:mult}倍率{}",
                    "{C:inactive}(当前 {C:money}$#2#{C:inactive}/上限 $40)",
                }
            },
            c_poke_hardstone = {
                name = "硬石头",
                text = {
                    "{C:attention}进化牌{}",
                    "将 {C:attention}1{} 张选定牌强化为{C:attention}石头牌{},",
                    "每拥有一张{X:earth,C:white}地面{}属性小丑牌，",
                    "额外增加 {C:chips}+#2#{} 筹码",
                }
            },
            c_poke_heartscale = {
                name = "心之鳞片",
                text = {
                    "选择 {C:attention}#1#{} 张牌，",
                    "将 {C:attention}左侧{} 牌",
                    "转换为 {C:attention}右侧{} 牌的样式，",
                    "并将两张牌都变为 {C:hearts}#2#{}",
                    "{C:inactive}(可拖动重排)",
                }
            },
            c_poke_berry_juice = {
                name = "树果汁",
                text = {
                    "效果取决于",
                    "被摧毁的{C:attention}消耗品{}",
                }
            },
            c_poke_berry_juice_energy = {
                name = "能量树果汁",
                text = {
                    "为最左边或选定的任意{C:pink}属性{}小丑牌",
                    "{C:pink}注入能量{}",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{C:inactive}次)",
                },
            },
            c_poke_berry_juice_spectral = {
                name = "幻灵树果汁",
                text = {
                    "为你手中的 {C:attention}1{} 张选定牌添加",
                    "一个随机{C:attention}蜡封{}和{C:dark_edition}闪箔{},",
                    "{C:dark_edition}全息{}或{C:dark_edition}多彩{}效果",
                },
            },
            c_poke_berry_juice_planet = {
                name = "星辰树果汁",
                text = {
                    "将等级最高的",
                    "{C:attention}扑克牌型{}提升1级",
                },
            },
            c_poke_berry_juice_item = {
                name = "道具树果汁",
                text = {
                    "产生一张{C:item}弯曲的汤匙{}",
                    "有 {C:green}#1# / #2#{} 的概率",
                    "改为产生 {C:attention}2{} 张",
                    "{C:inactive}（必须有空位）{}",
                },
            },
            c_poke_berry_juice_tarot = {
                name = "神秘树果汁",
                text = {
                    "产生一张{C:tarot}愚者{}牌",
                    "并获得 {C:money}$#1#{}",
                },
            },
            c_poke_berry_juice_mystery = {
                name = "谜之树果汁",
                text = {
                    "随机产生一张",
                    "{C:item}树果汁{}",
                }
            },
            c_poke_oven = {
                name = "微波炉",
                text = {
                  "若在{C:attention}盲注{}期间使用，",
                  "本回合{C:attention}+#1#{}弃牌次数",
                  "变形最左边",
                  "或选中的{C:attention}洛托姆{}",
                }
            },
            c_poke_washing_machine = {
                name = "洗衣机",
                text = {
                  "若在{C:attention}盲注{}期间使用，",
                  "本回合{C:attention}+#1#{}出牌次数",
                  "变形最左边",
                  "或选中的{C:attention}洛托姆{}",
                }
            },
            c_poke_fridge = {
                name = "冰箱",
                text = {
                  "生成{C:attention}2{}个随机{C:attention}消耗品{}",
                  "{C:inactive}(必须有空位)",
                  "变形最左边",
                  "或选中的{C:attention}洛托姆{}",
                }
            },
            c_poke_fan = {
                name = "电风扇",
                text = {
                  "生成最多{C:attention}2{}个",
                  "{C:blue}普通{}小丑牌",
                  "{C:inactive}(必须有空位)",
                  "变形最左边",
                  "或选中的{C:attention}洛托姆{}",
                }
            },
            c_poke_lawn_mower = {
                name = "除草机",
                text = {
                  "若在{C:attention}盲注{}期间使用，",
                  "本回合{C:attention}+#1#{}手牌上限",
                  "变形最左边",
                  "或选中的{C:attention}洛托姆{}",
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "草能量",
                text = {
                    "为最左边或选定的{X:grass,C:white}草{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fire_energy = {
                name = "火能量",
                text = {
                    "为最左边或选定的{X:fire,C:white}火{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_water_energy = {
                name = "水能量",
                text = {
                    "为最左边或选定的{X:water,C:white}水{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_lightning_energy = {
                name = "电能量",
                text = {
                    "为最左边或选定的{X:lightning,C:black}电{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_psychic_energy = {
                name = "超能力能量",
                text = {
                    "为最左边或选定的{X:psychic,C:white}超能力{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fighting_energy = {
                name = "斗能量",
                text = {
                    "为最左边或选定的{X:fighting,C:white}格斗{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_colorless_energy = {
                name = "无色能量",
                text = {
                    "为最左边或选定的{X:colorless,C:white}一般{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "对非{X:colorless,C:white}一般{}属性小丑牌的增强效果减半",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_darkness_energy = {
                name = "恶能量",
                text = {
                    "为最左边或选定的{X:dark,C:white}恶{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_metal_energy = {
                name = "钢能量",
                text = {
                    "为最左边或选定的{X:Metal,C:white}钢{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_fairy_energy = {
                name = "妖能量",
                text = {
                    "为最左边或选定的{X:fairy,C:white}妖精{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            --Dragon deez
            -- 龙……你懂的
            c_poke_dragon_energy = {
                name = "龙能量",
                text = {
                    "为最左边或选定的{X:dragon,C:white}龙{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_earth_energy = {
                name = "地能量",
                text = {
                    "为最左边或选定的{X:earth,C:white}地面{}属性小丑牌",
                    "{C:pink}注入能量{}（若可）",
                    "{C:inactive}(每张小丑牌可增强{C:attention}#1#{}{C:inactive}次)",
                },
            },
            c_poke_bird_energy = {
                name = "鸟能量",
                text = {
                  ""
                },
            },
            c_poke_emergy = {
                name = "M能量",
                text = {
                    "每张{C:attention}开心小丑{}牌或{C:legendary}M 小丑牌{}会",
                    "产生{C:attention}一张{}随机带有{C:dark_edition}负片{}的{C:green}能量牌{}",
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                label = "异色",
                name = "异色",
                text = {
                    "店内的补充包数量{C:attention}+1{}",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
            -- 没有强化牌？有点出人意料
            -- HA HA! Not anymore!
            -- 哈！现在有了！
            m_poke_hazard = {
                name = "陷阱牌",
                text = {
                    "无点数无花色",
                    "回合结束时移除{C:attention}强化{}",
                    "{C:green}#1# / #2#{} 概率",
                    "在回合结束时若在{C:attention}手中{}则被摧毁",
                },
            },
            m_poke_flower = {
                name = "花朵牌",
                text = {
                    "若牌型包含{C:attention}4种以上花色{}",
                    "则{X:mult,C:white} X#1# {} 倍率",
                },
            }
        },
        Stake = {
            stake_poke_diamond = {
                name = "钻石赌注",
                colour = "Diamond",
                text = {
                    "{C:attention}非幼年{}宝可梦进化所需",
                    "回合数 {C:attention}+1{}",
                    "{s:0.8}先前所有赌注效果依然生效",
                }
            },
            stake_poke_pearl = {
                name = "珍珠赌注",
                colour = "Pearl",
                text = {
                    "{C:attention}-1{} 能量上限",
                    "{s:0.8}先前所有赌注效果依然生效",
                }
            },
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "妙蛙种子",
                text = {
                    "{C:attention}+#4#{}手牌上限",
                    "手牌中，每一张{C:attention}#3#{}会给予{C:money}$#1#{}",
                    "{C:inactive,s:0.8}(点数每回合变更){}",
                    "{C:inactive,s:0.8}(获得{C:money,s:0.8}$#2#{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_ivysaur = {
                name = "妙蛙草",
                text = {
                    "{C:attention}+#3#{}手牌上限",
                    "手牌中，每一张{C:attention}#4#{}会给予{C:money}$#1#{}或{C:money}$#5#{}",
                    "{C:inactive,s:0.8}(点数每回合变更){}",
                    "{C:inactive,s:0.8}(获得{C:money,s:0.8}$#2#{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_venusaur = {
                name = "妙蛙花",
                text = {
                    "{C:attention}+#3#{}手牌上限",
                    "手牌中，每一张{C:attention}#4#{}会给予{C:money}$#1#{}",
                    "{C:inactive,s:0.8}(点数每回合变更){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "超级妙蛙花",
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                }
            },
            j_poke_charmander = {
                name = "小火龙",
                text = {
                    "{C:red}+#4#{}次弃牌",
                    "当剩下{C:attention}#3#{}次弃牌数时",
                    "每次出牌会给此牌{C:mult}+#2#{}倍率",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +16倍率时进化）",
                }
            },
            j_poke_charmeleon = {
                name = "火恐龙",
                text = {
                    "{C:red}+#4#{}次弃牌",
                    "当剩下{C:attention}#3#{}次弃牌数时",
                    "每次出牌会给此牌{C:mult}+#2#{}倍率",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +36倍率时进化）",
                }
            },
            j_poke_charizard = {
                name = "喷火龙",
                text = {
                    "{C:red}+#4#{}次弃牌, {C:mult}+#1#{}倍率",
                    "当剩下{C:attention}#3#{}次弃牌数时，倍率{X:mult,C:white} X#2# {}",
                }
            },
            j_poke_mega_charizard_x = {
                name = "超级喷火龙X",
                text = {
                    "当剩余{C:attention}#2#{}次弃牌时，获得{X:mult,C:white} X#1# {} 倍率",
                }
            },
            j_poke_mega_charizard_y = {
                name = "超级喷火龙Y",
                text = {
                    "{C:red}+#1#{} 次弃牌",
                }
            },
            j_poke_squirtle = {
                name = "杰尼龟",
                text = {
                    "{C:chips}+#2#{}出牌次数",
                    "出牌时，每一个剩余的",
                    "{C:attention}出牌次数{}会给此牌{C:chips}+#4#{}筹码",
                    "{C:inactive}（在拥有{C:chips}+#1#{C:inactive} / +#3#筹码时进化）",
                }
            },
            j_poke_wartortle = {
                name = "卡咪龟",
                text = {
                    "{C:chips}+#2#{}出牌次数",
                    "出牌时，每一个剩余的",
                    "{C:attention}出牌次数{}会给此牌{C:chips}+#4#{}筹码",
                    "{C:inactive}（在拥有{C:chips}+#1#{C:inactive} / +#3#筹码时进化）",
                }
            },
            j_poke_blastoise = {
                name = "水箭龟",
                text = {
                    "{C:chips}+#3#{}出牌次数，{C:chips}+#1#{}筹码",
                    "每个剩余的出牌次数给予{C:chips}+#2#{}筹码",
                }
            },
            j_poke_mega_blastoise = {
                name = "超级水箭龟",
                text = {
                    "{C:chips}+#2#{} 出牌次数",
                }
            },
            j_poke_caterpie = {
                name = "绿毛虫",
                text = {
                    "{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_metapod = {
                name = "铁甲蛹",
                text = {
                    "{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_butterfree = {
                name = "巴大蝶",
                text = {
                    "{C:mult}+#1#{}倍率",
                }
            },
            j_poke_weedle = {
                name = "独角虫",
                text = {
                    "{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_kakuna = {
                name = "铁壳蛹",
                text = {
                    "{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_beedrill = {
                name = "大针蜂",
                text = {
                    "{C:chips}+#1#{}筹码",
                }
            },
            j_poke_mega_beedrill = {
                name = "超级大针蜂",
                text = {
                    "{C:chips}+#1#{}筹码",
                }
            },
            j_poke_pidgey = {
                name = "波波",
                text = {
                    "计分手牌中每有一种",
                    "不同的{C:attention}点数{}和{C:attention}花色{}",
                    "给予{C:mult}+#2#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_pidgeotto = {
                name = "比比鸟",
                text = {
                    "计分手牌中每有一种",
                    "不同的{C:attention}点数{}和{C:attention}花色{}",
                    "给予{C:mult}+#2#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_pidgeot = {
                name = "大比鸟",
                text = {
                    "计分手牌中每有一种",
                    "不同的{C:attention}点数{}和{C:attention}花色{}",
                    "给予{C:mult}+#1#{}倍率",
                }
            },
            j_poke_mega_pidgeot = {
                name = "超级大比鸟",
                text = {
                    "计分手牌中每有一种",
                    "不同的{C:attention}点数{}和{C:attention}花色{}",
                    "给予{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_rattata = {
                name = "小拉达",
                text = {
                    "重新触发计分中",
                    "{C:attention}头两张{}打出的牌",
                    "额外{C:attention}#1#{}次",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_raticate = {
                name = "拉达",
                text = {
                    "重新触发计分中",
                    "{C:attention}头三张{}打出的牌",
                    "额外{C:attention}#1#{}次",
                }
            },
            j_poke_spearow = {
                name = "烈雀",
                text = {
                    "打出{C:attention}#2#{} {C:inactive}[#3#]{}张计分手牌后",
                    "升级下一个打出的{C:attention}牌型{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_fearow = {
                name = "大嘴雀",
                text = {
                    "打出{C:attention}#1#{} {C:inactive}[#2#]{}张计分手牌后",
                    "升级下一个打出的{C:attention}牌型{}{C:inactive}#3#{}",
                }
            },
            j_poke_ekans = {
                name = "阿柏蛇",
                text = {
                    "如果打出的牌包含",
                    "{C:attention}顺子{}，{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_arbok = {
                name = "阿柏怪",
                text = {
                    "如果打出的牌包含",
                    "{C:attention}顺子{}，{C:mult}+#1#{}倍率",
                    "如果也包含{C:attention}A{}",
                    "产生一张{C:tarot}塔罗牌{}",
                }
            },
            j_poke_pikachu = {
                name = "皮卡丘",
                text = {
                    "当回合结束时，每一张小丑牌",
                    "获得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（最多{C:money,s:0.8}$10{C:inactive,s:0.8}）",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}雷之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_raichu = {
                name = "雷丘",
                text = {
                    "如果拥有至少{C:money}$#2#{}，在回合结束时",
                    "此牌会新增{C:dark_edition}负片{}效果",
                    "{C:inactive,s:0.8}（需要的金钱会依雷丘的数量而增加）{}",
                    "当回合结束时，每一张小丑牌",
                    "获得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（最多{C:money,s:0.8}$#3#{C:inactive,s:0.8}）",
                }
            },
            j_poke_sandshrew = {
                name = "穿山鼠",
                text = {
                    "牌组中每有一张{C:attention}玻璃牌{}",
                    "给予{C:chips}+#2#{}筹码",
                    "{V:1}每轮将被摧毁的",
                    "{V:1}第一张{C:attention,V:1}玻璃牌{V:1}的复制品加入手牌",
                    "{C:inactive}(当前 {C:chips}+#3#{C:inactive} 筹码)",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_sandslash = {
                name = "穿山王",
                text = {
                    "牌组中每有一张{C:attention}玻璃牌{}",
                    "给予{C:chips}+#1#{}筹码",
                    "{V:1}每轮将被摧毁的",
                    "{V:1}前 {C:attention,V:1}#3#{} {C:inactive}[#4#]{} 张{C:attention,V:1}玻璃牌{V:1}的",
                    "{V:1}复制品加入手牌",
                    "{C:inactive}(当前 {C:chips}+#2#{C:inactive} 筹码)",
                }
            },
            j_poke_nidoranf = {
                name = "尼多兰♀",
                text = {
                    "手牌中，每张{C:attention}Q{}",
                    "都给予{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_nidorina = {
                name = "尼多娜",
                text = {
                    "手牌中，每张{C:attention}Q{}",
                    "都给予{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}月之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_nidoqueen = {
                name = "尼多后",
                text = {
                    "{C:attention}+#2#{}手牌上限",
                    "手牌中，每张{C:attention}Q{}",
                    "都给予{C:chips}+#1#{}筹码",
                }
            },
            j_poke_nidoranm = {
                name = "尼多朗♂",
                text = {
                    "手牌中，每张{C:attention}K{}",
                    "都给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_nidorino = {
                name = "尼多力诺",
                text = {
                    "手牌中，每张{C:attention}K{}",
                    "都给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}月之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_nidoking = {
                name = "尼多王",
                text = {
                    "{C:attention}+#2#{}手牌上限",
                    "手牌中，每张{C:attention}K{}",
                    "都给予{C:mult}+#1#{}倍率",
                }
            },
            j_poke_clefairy = {
                name = "皮皮",
                text = {
                    "每张计分的",
                    "{C:clubs}#2#{}花色的牌",
                    "都给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}月之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_clefable = {
                name = "皮可西",
                text = {
                    "计分时，每张{C:clubs}#2#{}牌",
                    "根据本轮打出的{C:clubs}#2#{}牌数量",
                    "给予 {C:mult}+#1#{} 倍率",
                    "{C:inactive,s:0.8}（如果打出了五张梅花牌，每张牌会给予{C:mult,s:0.8}+#4#{C:inactive,s:0.8}倍率）{}",
                    "{C:inactive}(当前 {C:mult}+#3#{C:inactive} 倍率)",
                }
            },
            j_poke_vulpix = {
                name = "六尾",
                text = {
                    "每张计分的{C:attention}9{}",
                    "有{C:green}#1#/#2#{}的几率",
                    "产生一张{C:attention}塔罗{}牌",
                    "{C:inactive,s:0.8}（必须有空位）",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}火之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_ninetales = {
                name = "九尾",
                text = {
                    "此牌附带{C:spectral}灵媒{}和{C:dark_edition}负片{}版本",
                    "每张计分的{C:attention}9{}",
                    "有{C:green}#1#/#2#{}的几率",
                    "产生一张{C:attention}塔罗{}牌",
                    "{C:inactive,s:0.8}（必须有空位）",
                }
            },
            j_poke_jigglypuff = {
                name = "胖丁",
                text = {
                    "每张计分的{C:spades}#2#{}花色牌",
                    "都给予{C:mult}+#1#{}倍率及{C:chips}+#3#{}筹码",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}月之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_wigglytuff = {
                name = "胖可丁",
                text = {
                    "每张计分的{C:spades}#3#{}花色牌",
                    "都给予{C:mult}+#1#{}倍率，{C:chips}+#2#{}筹码",
                    "及卡牌给予的筹码",
                }
            },
            j_poke_zubat = {
                name = "超音蝠",
                text = {
                    "计分手牌中每有一张{C:attention}强化{}牌，",
                    "给予{C:mult}+#2#{}倍率",
                    "{C:inactive}（目前为{C:mult}+#1#{}{C:inactive}倍率）",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive}/+#3#倍率时进化）",
                }
            },
            j_poke_golbat = {
                name = "大嘴蝠",
                text = {
                    "{C:attention}奖励{} / {C:attention}石头{}牌获得{C:chips}+#4#{}筹码",
                    "{C:attention}倍率{} / {C:attention}百搭{}牌获得{C:mult}+#2#{}倍率",
                    "{C:attention}钢铁{} / {C:attention}玻璃{}牌获得{X:mult,C:white}X#6#{}倍率",
                    "{C:attention}黄金{} / {C:attention}幸运{}牌获得{C:money}$#8#{}",
                    "然后移除它们的{C:dark_edition}加强效果{}",
                    "{C:inactive}（目前为{C:chips}+#3#{C:inactive}，{C:mult}+#1#{}，{X:mult,C:white}X#5#{}，{C:money}$#7#{C:inactive}，回合结束时）",
                    "{C:inactive,s:0.8}（在移除{C:attention,s:0.8}#9#{C:inactive,s:0.8}个加强效果后进化）",
                }
            },
            j_poke_oddish = {
                name = "走路草",
                text = {
                    "每张计分的{C:attention}奇数{}点的牌",
                    "都给予{C:mult}+#1#{}或{C:mult}+#2#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_gloom = {
                name = "臭臭花",
                text = {
                    "每张计分的{C:attention}奇数{}点的牌",
                    "都给予{C:mult}+#1#{}或{C:mult}+#2#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}叶之石{}{C:inactive,s:0.8}或{C:attention,s:0.8}日之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_vileplume = {
                name = "霸王花",
                text = {
                    "每张计分的{C:attention}奇数{}点的牌",
                    "都给予{C:mult}+#2#{}倍率或{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_paras = {
                name = "派拉斯",
                text = {
                    "如果打出的牌包含{C:attention}两对{}",
                    "此小丑牌获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +8倍率时进化)",
                }
            },
            j_poke_parasect = {
                name = "派拉斯特",
                text = {
                    "如果打出的牌包含{C:attention}两对{}",
                    "此小丑牌获得{C:mult}+#2#{}倍率",
                    "否则{C:mult}-#3#{}倍率",
                    "{C:inactive}（目前为{C:mult}+#1#{}{C:inactive}倍率）",
                }
            },
            j_poke_venonat = {
                name = "毛球",
                text = {
                    "对所有{C:attention}指定的",
                    "{C:green,E:1,S:1.1}概率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}2/6{C:inactive}）",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_venomoth = {
                name = "摩鲁蛾",
                text = {
                    "对所有{C:attention}指定的",
                    "{C:green,E:1,S:1.1}概率{}加{C:attention}#1#{}",
                    "{C:inactive}（例：{C:green}1/6{C:inactive} -> {C:green}3/6{C:inactive}）",
                }
            },
            j_poke_diglett = {
                name = "地鼠",
                text = {
                    "如果打出的牌包含{C:attention}三条{}",
                    "给予{C:chips}+#2#{}筹码",
                    "如果打出的牌包含计分的{C:attention}2{}，{C:attention}3{}或{C:attention}4{}",
                    "给予{C:mult}+#3#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_dugtrio = {
                name = "三地鼠",
                text = {
                    "如果打出的牌包含{C:attention}三条{}",
                    "给予{C:chips}+#2#{}筹码",
                    "如果打出的牌包含计分的{C:attention}2{}，{C:attention}3{}或{C:attention}4{}",
                    "给予{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_meowth = {
                name = "喵喵",
                text = {
                    "每回合结束时获得{C:money}$#1#{}",
                    "每轮首次{C:green}成功{}触发的{C:attention}幸运牌{}",
                    "会使此收益增加 {C:money}$#2#{}",
                    "{C:inactive,s:0.8}（在收益达到{C:money,s:0.8}$#1#{C:inactive,s:0.8} / $#3# 时进化）",
                }
            },
            j_poke_persian = {
                name = "猫老大",
                text = {
                    "每回合结束时获得{C:money}$#1#{}",
                    "有 {C:green}#3#/#4#{} 的概率获得{C:attention}双倍{}",
                    "每轮首次{C:green}成功{}触发的{C:attention}幸运牌{}",
                    "会使此收益增加 {C:money}$#2#{}",
                }
            },
            j_poke_psyduck = {
                name = "可达鸭",
                text = {
                    "如果打出的牌为",
                    "单张{C:attention}人头牌{}，获得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_golduck = {
                name = "哥达鸭",
                text = {
                    "如果打出的牌为单张",
                    "{C:attention}人头牌{}，获得{C:money}$#1#{}并且",
                    "计分时变为{C:attention}黄金牌{}",
                }
            },
            j_poke_mankey = {
                name = "猴怪",
                text = {
                    "每张计分的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}给予",
                    "{C:mult}+#1#{}倍率及{C:chips}+#2#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            --anyways, how's your day been? i'm doing fine myself
            -- 你今天过得怎么样？我自己过得还不错
            --I'm doing pretty well. We had a snow day yesterday.
            -- 我也挺好的。昨天我们这下雪放假了。
            j_poke_primeape = {
                name = "火爆猴",
                text = {
                    "每张计分的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}给予",
                    "{C:mult}+#1#{}倍率及{C:chips}+#2#{}筹码",
                    "{C:inactive,s:0.8}（在触发{C:attention,s:0.8}#3#{C:inactive,s:0.8} 次后进化）",
                }
            },
            j_poke_growlithe = {
                name = "卡蒂狗",
                text = {
                    "如果打出的牌包含{C:attention}同花{}",
                    "给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}火之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_arcanine = {
                name = "风速狗",
                text = {
                    "如果打出的牌包含{C:attention}同花{}",
                    "{X:mult,C:white} X#1# {}倍率",
                    "首张在该{C:attention}同花{}中且未强化的牌",
                    "计分时成为{C:attention}倍率牌{}",
                }
            },
            j_poke_poliwag = {
                name = "蚊香蝌蚪",
                text = {
                    "每张计分的{V:1}#3#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率",
                    "花色在出牌后按次序地变更",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_poliwhirl = {
                name = "蚊香君",
                text = {
                    "每张计分的{V:1}#2#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率",
                    "花色在出牌后按次序地变更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}水之石{}{C:inactive,s:0.8}或{C:attention,s:0.8}王者之证{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_poliwrath = {
                name = "蚊香泳士",
                text = {
                    "每张计分的{V:1}#2#{}花色的牌",
                    "给予{C:mult}+#7#{}倍率及{X:mult,C:white} X#1# {}倍率",
                    "花色在出牌后按次序地变更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                }
            },
            j_poke_abra = {
                name = "凯西",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已经在此局出过时",
                    "{C:green}#1#/#2#{}几率生成一张{C:item}道具牌{}或{C:tarot}塔罗牌{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_kadabra = {
                name = "勇基拉",
                text = {
                    "如果打出的{C:attention}牌型{}",
                    "已经在此局出过时",
                    "{C:green}#1#/#2#{}几率生成一张{C:item}弯曲的汤匙{}或{C:tarot}塔罗牌{}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_alakazam = {
                name = "胡地",
                text = {
                    "{C:attention}+#3#{}消耗牌上限",
                    "如果打出的{C:attention}牌型{}",
                    "已经在此局出过时",
                    "{C:green}#1#/#2#{}几率生成一张{C:attention}愚者{}牌或{C:item}弯曲的汤匙{}",
                }
            },
            j_poke_mega_alakazam = {
                name = "超级胡地",
                text = {
                    "{C:attention}+#3#{} 消耗品栏位",
                    "每张持有的{C:attention}消耗品{}给予{X:mult,C:white}X#1#{} 倍率",
                    "{C:item}弯曲的汤匙{}给予{X:mult,C:white}X#2#{} 倍率",
                }
            },
            j_poke_machop = {
                name = "腕力",
                text = {
                    "{C:chips}+#1#{}出牌次数",
                    "{C:mult}-#2#{}弃牌次数",
                    "{C:mult}+#4#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_machoke = {
                name = "豪力",
                text = {
                    "{C:chips}+#1#{}出牌次数",
                    "{C:mult}-#2#{}弃牌次数",
                    "{C:mult}+#3#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_machamp = {
                name = "怪力",
                text = {
                    "{C:chips}+#1#{}出牌次数",
                    "{C:mult}-#2#{}弃牌次数",
                    "{C:mult}+#3#{}倍率",
                }
            },
            j_poke_bellsprout = {
                name = "喇叭芽",
                text = {
                    "每张计分的{C:attention}偶数{}点的牌",
                    "给予{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_weepinbell = {
                name = "口呆花",
                text = {
                    "每张计分的{C:attention}偶数{}点的牌",
                    "给予{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}叶之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_victreebel = {
                name = "大食花",
                text = {
                    "每张计分的{C:attention}偶数{}点的牌",
                    "给予{C:chips}+#1#{}筹码",
                    "并{C:attention}重新触发{}",
                }
            },
            j_poke_tentacool = {
                name = "玛瑙水母",
                text = {
                    "每张计分的{C:attention}10{}",
                    "给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_tentacruel = {
                name = "毒刺水母",
                text = {
                    "每张计分的{C:attention}10{}",
                    "给予{C:mult}+#1#{}倍率",
                    "{C:attention}10点牌不能{}被削弱",
                }
            },
            j_poke_geodude = {
                name = "小拳石",
                text = {
                    "{C:chips}+#1#{}筹码",
                    "{C:attention}-#2#{}手牌上限",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_graveler = {
                name = "隆隆石",
                text = {
                    "{C:chips}+#1#{}筹码",
                    "{C:attention}-#2#{}手牌上限",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_golem = {
                name = "隆隆岩",
                text = {
                    "{C:chips}+#1#{}筹码",
                    "{C:attention}-#2#{}手牌上限",
                }
            },
            j_poke_ponyta = {
                name = "小火马",
                text = {
                    "如果打出的牌包含{C:attention}顺子{}",
                    "此小丑牌会获得{C:chips}+#2#{}筹码",
                    "{C:inactive}（在拥有{C:chips}+#1#{C:inactive} / +60筹码时进化）",
                }
            },
            j_poke_rapidash = {
                name = "烈焰马",
                text = {
                    "如果打出的牌包含{C:attention}顺子{}",
                    "此小丑牌会获得{C:chips}+#2#{}筹码",
                    "获得的筹码每次{C:chips}+1{}",
                    "{C:inactive}（目前为{C:chips}+#1#{C:inactive}筹码）",
                }
            },
            --This was my first shiny :O
            -- 这是我的第一只异色宝可梦 :O
            j_poke_slowpoke = {
                name = "呆呆兽",
                text = {
                    "每回合的{C:attention}最后一次出牌{}",
                    "可得到{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive,s:0.8}（在触发{C:attention,s:0.8}#2#{C:inactive,s:0.8} 次后进化）",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}王者之证{}{C:inactive,s:0.8}牌进化）",
                }
            },
            -- not used currently
            -- 当前未使用
            j_poke_slowpoke2 = {
                name = "呆呆兽",
                text = {
                    "每回合的{C:attention}最后一次出牌{}可得到{X:mult,C:white} X#1# {}倍率",
                    "每回合结束后，有{C:green}#3#/#4#{}几率",
                    "产生一张{C:attention}王者之证{}牌{C:inactive,s:0.8}（必须有空位）{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{}{C:inactive,s:0.8}个回合后或使用{C:attention,s:0.8}王者之证{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_slowbro = {
                name = "呆壳兽",
                text = {
                    "每次出牌获得{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive,s:0.8}（回合结束时重置）",
                    "{C:inactive}（目前为{X:mult,C:white}X#2#{C:inactive}倍率）",
                }
            },
            j_poke_mega_slowbro = {
                name = "超级呆壳兽",
                text = {
                    "每出牌一次，获得{X:mult,C:white} X#1# {} 倍率",
                    "{C:inactive,s:0.8}(击败{C:attention,s:0.8}Boss盲注{C:inactive,s:0.8}后重置)",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive} 倍率)",
                }
            },
            j_poke_shell = {
                name = "大舌贝…？",
                text = {
                  "进化最左边的{C:attention}呆呆兽{}",
                  "{S:1.1,C:red,E:2}然后自我毁灭{}",
                }
            },
            j_poke_magnemite = {
                name = "小磁怪",
                text = {
                    "每张计分的{C:attention}钢铁{}牌",
                    "给予{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_magneton = {
                name = "三合一磁怪",
                text = {
                    "每张计分的{C:attention}钢铁牌{}给予{X:mult,C:white}X#1#{}倍率",
                    "每张相邻的{X:metal,C:white}钢{}属性小丑牌",
                    "会额外给予{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    "{C:inactive,s:0.8}（使用{C:attention,s:0.8}雷之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_farfetchd = {
                name = '大葱鸭',
                text = {
                    "此牌附带{C:item}大葱{}",
                    "使用{C:attention}消耗品{}时，有",
                    "{C:green}#2#/#3#{}的几率获得 {C:money}$#1#",
                    "使用{C:attention}大葱{}时必定获得金钱",
                }
            },
            j_poke_doduo = {
                name = '嘟嘟',
                text = {
                    "计分时，前 {C:attention}2{} 张打出的{C:attention}人头牌{}",
                    "给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_dodrio = {
                name = '嘟嘟利',
                text = {
                    "计分时，前 {C:attention}3{} 张打出的{C:attention}人头牌{}",
                    "给予{C:mult}+#1#{}倍率",
                    "若打出的牌{C:attention}恰好是",
                    "{C:attention}3 张人头牌{}，本轮手牌上限 {C:attention}+#2#{}",
                }
            },
            j_poke_seel = {
                name = '小海狮',
                text = {
                    "有 {C:green}#1#/#2#{} 的概率为本轮",
                    "{C:attention}第一次出牌{}中的第一张计分牌",
                    "添加一个随机{C:attention}蜡封{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_dewgong = {
                name = '白海狮',
                text = {
                    "为本轮{C:attention}第一次出牌{}中",
                    "最左侧的计分牌",
                    "添加一个随机{C:attention}蜡封{}",
                }
            },
            j_poke_grimer = {
                name = '臭泥',
                text = {
                    "如果你的牌组有多于{C:attention}#3#{}张牌",
                    "给予{C:mult}+#1#{}倍率",
                    "每回合结束时",
                    "增加一张随机的游戏牌到牌组",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_muk = {
                name = '臭臭泥',
                text = {
                    "在你的牌组中",
                    "每张多于{C:attention}#2#{}张的牌都获得{C:mult}+#1#{}倍率",
                    "每回合结束时从牌组中移除一张随机牌",
                    "并增加两张随机牌到牌组",
                    "{C:inactive}（目前为{C:mult}+#3#{}{C:inactive}倍率）{}",
                }
            },
            j_poke_shellder = {
                name = '大舌贝',
                text = {
                    "如果打出的牌有计分的{C:attention}5{}",
                    "每一张有{C:green}#1#/#2#{}的几率重新触发",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}水之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_cloyster = {
                name = '刺甲贝',
                text = {
                    "如果打出的牌有计分的{C:attention}5{}",
                    "每一张有{C:green}#1#/#2#{}的几率重新触发",
                }
            },
            j_poke_gastly = {
                name = '鬼斯',
                text = {
                    "有{C:green}#1#/#2#{}的几率",
                    "对随机的{C:attention}小丑牌{}",
                    "更换至{C:dark_edition}负片{}效果",
                    "{S:1.1,C:red,E:2}触发后自我毁灭{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_haunter = {
                name = '鬼斯通',
                text = {
                    "有{C:green}#1#/#2#{}的几率",
                    "对随机的{C:attention}小丑牌{}",
                    "更换至{C:dark_edition}负片{}效果",
                    "{S:1.1,C:red,E:2}触发后自我毁灭{}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_gengar = {
                name = '耿鬼',
                text = {
                    "{C:attention}#1#{} 回合后，将一张随机",
                    "{C:attention}小丑牌{}的版本{C:attention}替换{}为",
                    "{C:dark_edition}负片{}",
                    "{C:inactive,s:0.8}（耿鬼会选择一个新的倒计时！){}",
                    "{C:inactive,s:0.8}（自身除外）{}",
                }
            },
            j_poke_mega_gengar = {
                name = '超级耿鬼',
                text = {
                    "当选择{C:attention}小盲注{}或{C:attention}大盲注{}时",
                    "生成一个{C:dark_edition}负片{}版本的{C:attention}标签{}",
                }
            },
            j_poke_onix = {
                name = '大岩蛇',
                text = {
                    "本轮{C:attention}第一次出牌{}时，最左边的计分牌",
                    "会变成{C:attention}石头牌{}",
                    "{C:inactive,s:0.8}(附上{C:metal,s:0.8}钢{}{C:inactive,s:0.8}贴纸后进化)",
                }
            },
            j_poke_drowzee = {
                name = '催眠貘',
                text = {
                    "在此局中，每一张已使用并不重复的",
                    "{C:planet}星球牌{}给予{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#1#{C:inactive}倍率）",
                    "{C:inactive,s:0.8}（在使用 {C:planet,s:0.8}#3#{C:inactive,s:0.8} 张",
                    "{C:inactive,s:0.8}不同的星球牌后进化）",
                }
            },
            j_poke_hypno = {
                name = '引梦貘人',
                text = {
                    "此牌附带{C:spectral}入迷{}版本",
                    "在此局中，每一张已使用并不重复的",
                    "{C:planet}星球牌{}给予{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#1#{C:inactive}倍率）",
                }
            },
            j_poke_krabby = {
                name = '大钳蟹',
                text = {
                    "每张计分的{C:attention}人头牌{}",
                    "给予{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_kingler = {
                name = '巨钳蟹',
                text = {
                    "每张计分的{C:attention}人头牌{}",
                    "给予{C:chips}+#1#{}筹码并强化为",
                    "{C:attention}奖励牌{}（若无强化）",
                }
            },
            j_poke_voltorb = {
                name = '霹雳电球',
                text = {
                    "{C:attention}右不稳定{}",
                    "{X:mult,C:white} X#1# {}倍率并削弱自身",
                    "直到回合结束",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_electrode = {
                name = '顽皮雷弹',
                text = {
                    "{C:attention}右不稳定{}",
                    "{X:mult,C:white} X#1# {}倍率，获得{C:money}$#2#{}并",
                    "削弱自身直到回合结束",
                }
            },
            j_poke_exeggcute = {
                name = '蛋蛋',
                text = {
                    "每张计分的{C:hearts}#2#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率",
                    "有{C:green}#4#/#5#{}的几率",
                    "改为给予{C:mult}+#3#{}倍率",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}叶之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_exeggutor = {
                name = '椰蛋树',
                text = {
                    "每张计分的{C:hearts}#3#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率",
                    "有{C:green}#4#/#5#{}的几率",
                    "改为给予{X:mult,C:white}X#2#{}倍率",
                }
            },
            j_poke_cubone = {
                name = '卡拉卡拉',
                text = {
                    "此牌附带{C:item}粗骨头{}",
                    "每张持有的消耗牌",
                    "给予{C:mult}+#1#{}倍率",
                    "{C:inactive,s:0.8}（{C:attention,s:0.8}粗骨头{}{C:inactive,s:0.8}牌当作双倍）{}",
                    "{C:inactive}（目前为{C:mult}+#2#{C:inactive}倍率）",
                    "{C:inactive,s:0.8}（在使用{C:attention,s:0.8}#3#{C:inactive,s:0.8}张消耗品后进化）",
                }
            },
            j_poke_marowak = {
                name = '嘎啦嘎啦',
                text = {
                    "{C:attention}+#2#{}消耗牌上限",
                    "每张持有的消耗牌",
                    "给予{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive,s:0.8}（{C:attention,s:0.8}粗骨头{}{C:inactive,s:0.8}牌当作双倍）{}",
                    "{C:inactive}（目前为{X:mult,C:white} X#3# {}{C:inactive}倍率）",
                }
            },
            j_poke_hitmonlee = {
                name = '飞腿郎',
                text = {
                    "在你的牌组中，每张点数低于",
                    "{C:attention}#2#{}的牌都给予{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#3#{C:inactive}倍率）",
                }
            },
            j_poke_hitmonchan = {
                name = '快拳郎',
                text = {
                    "在你的牌组中，每张点数高于",
                    "{C:attention}#2#{}的牌都给予{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#3#{C:inactive}倍率）",
                }
            },
            j_poke_lickitung = {
                name = '大舌头',
                text = {
                    "头两张计分的{C:attention}J{}",
                    "给予{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive,s:0.8}（在触发{C:attention,s:0.8}#2#{C:inactive,s:0.8} 次后进化）{}",
                }
            },
            j_poke_koffing = {
                name = '瓦斯弹',
                text = {
                    "卖出这张牌来减低",
                    "目前{C:attention}Boss盲注{}所需的一半分数",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_weezing = {
                name = '双弹瓦斯',
                text = {
                    "卖出这张牌来{C:attention}禁用{}",
                    "目前{C:attention}Boss盲注{}的效果并减低其",
                    "所需的一半分数",
                }
            },
            j_poke_rhyhorn = {
                name = '独角犀牛',
                text = {
                    "每张计分的{C:attention}石头牌{}",
                    "可永久获得",
                    "{C:chips}+#1#{}筹码",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_rhydon = {
                name = '钻角犀兽',
                text = {
                    "每张计分的{C:attention}石头牌{}永久",
                    "获得{C:chips}+#1#{}筹码",
                    "重新触发首张{C:attention}计分{}的{C:attention}石头牌{}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_chansey = {
                name = '吉利蛋',
                text = {
                    "每个回合中头{C:attention}#1#{C:inactive} [#2#]{}张被触发的{C:attention}幸运牌{}",
                    "会增加一张复制的那张牌到牌组并抽到{C:attention}手牌{}中",
                    "{C:inactive,s:0.8}（在牌组有",
                    "{C:inactive,s:0.8}>= 25% #3#{C:attention,s:0.8}幸运牌{C:inactive,s:0.8}时进化）",
                }
            },
            j_poke_tangela = {
                name = '蔓藤怪',
                text = {
                    "每张计分的{C:attention}百搭牌{}",
                    "给予{C:mult}+#1#{}倍率，{C:chips}+#2#{}筹码或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的几率给予{C:attention}以上三个的加成{}",
                    "{C:inactive,s:0.8}（在打出{C:attention,s:0.8}#6#张百搭牌后进化）",
                }
            },
            j_poke_kangaskhan = {
                name = '袋兽',
                text = {
                    "{C:attention}+#1#{}消耗牌上限",
                    "{C:mult}-$#2#{}利息上限",
                }
            },
            j_poke_mega_kangaskhan = {
                name = '超级袋兽',
                text = {
                    "{C:attention}重新触发{}所有打出的牌",
                    "若本轮至少使用{C:attention}#1#个消耗品{}，",
                    "在回合结束时生成一个{C:attention}双倍标签{}",
                    "{C:inactive}(当前已使用{C:attention}#2#{C:inactive}个消耗品)",
                }
            },
            j_poke_horsea = {
                name = '墨海马',
                text = {
                    "每张计分的{C:attention}6{}",
                    "会给此牌{C:mult}+#2#{}倍率",
                    "{C:inactive}（在拥有{C:mult}+#1#{C:inactive} / +12倍率时进化）",
                }
            },
            j_poke_seadra = {
                name = '海刺龙',
                text = {
                    "每张计分的{C:attention}6{}会给此牌{C:mult}+#2#{}倍率",
                    "如果手牌中有{C:attention}K{}，效果翻倍",
                    "{C:inactive}（目前为{C:mult}+#1#{C:inactive}倍率）",
                    "{C:inactive,s:0.8}（附上{C:dragon,s:0.8}龙{}{C:inactive,s:0.8}贴纸后进化）{}",
                }
            },
            j_poke_goldeen = {
                name = '角金鱼',
                text = {
                    "重新触发在手牌中所有的",
                    "{C:attention}黄金牌{} {C:attention}#1#{} 次",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_seaking = {
                name = '金鱼王',
                text = {
                    "重新触发在手牌中所有的",
                    "{C:attention}黄金牌{} {C:attention}#1#{} 次",
                }
            },
            j_poke_staryu = {
                name = '海星星',
                text = {
                    "每张计分的{C:diamonds}#2#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率及{C:money}$#3#{}",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}水之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_starmie = {
                name = '宝石海星',
                text = {
                    "每张计分的{C:diamonds}#3#{}花色的牌",
                    "给予{C:mult}+#1#{}倍率及{C:money}$#2#{}",
                }
            },
            j_poke_mrmime = {
                name = '魔墙人偶',
                text = {
                    "重新触发在手牌中",
                    "最左边的牌额外{C:attention}#1#{}次",
                }
            },
            j_poke_scyther = {
                name = '飞天螳螂',
                text = {
                    "选择盲注后，摧毁右边的小丑牌并获得{C:mult}+#2#{}倍率",
                    "如果被摧毁的小丑牌是{C:red}稀有{}或以上",
                    "新增{C:attention}闪箔{}，{C:attention}全息{}或{C:attention}多彩{}版本",
                    "{C:inactive}（目前为{C:mult}+#1#{C:inactive} 倍率）",
                    "{C:inactive,s:0.8}（附上{C:metal,s:0.8}钢{}{C:inactive,s:0.8}贴纸或使用{C:attention,s:0.8}硬石头{C:inactive,s:0.8}后进化）",
                }
            },
            j_poke_jynx = {
                name = '迷唇姐',
                text = {
                    "选择{C:attention}盲注{}时，如果卡组数量在{C:attention}#2#{}张以上",
                    "获得{C:attention}+#1#{}手牌上限",
                    "加入到牌组的{C:attention}游戏牌{}会被{C:attention}复制{}",
                }
            },
            j_poke_electabuzz = {
                name = '电击兽',
                text = {
                    "每次{C:attention}卖出{}一张牌或回合结束时",
                    "会把此牌的{C:attention}出售价值{}提升{C:money}$#1#{}",
                    "每回合结束时，获得此牌出售价值{C:attention}#2#%{}的金钱{C:inactive}(向上取整){}",
                    "{C:inactive}（目前已获取{C:money}$#3#{C:inactive}/$#4#）",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_magmar = {
                name = '鸭嘴火兽',
                text = {
                    "如果回合中的{C:attention}第一次{}弃牌只有{C:attention}一{}张牌",
                    "摧毁它并获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（目前为{C:mult}+#1#{C:inactive}倍率）",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}连接之绳{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_pinsir = {
                name = '凯罗斯',
                text = {
                    "如果打出的计分牌",
                    "和留在手中的牌{C:attention}点数{}有相同的",
                    "{X:mult,C:white}X#1#{}倍率",
                }
            },
            j_poke_mega_pinsir = {
                name = '超级凯罗斯',
                text = {
                    "打出的{C:attention}未强化{}卡牌",
                    "在计分时给予{X:mult,C:white} X#1# {} 倍率",
                }
            },
            j_poke_tauros = {
                name = '肯泰罗（首领）',
                text = {
                    "每一张{C:attention}肯泰罗{}和{C:attention}大奶罐{}小丑牌给予{X:mult,C:white} X#1#{}倍率",
                    "每次在商店中重掷会有{C:green}#2#/#3#{}的几率",
                    "新增一张{C:attention}肯泰罗（牛群）{}到商店中",
                }
            },
            j_poke_taurosh = {
                name = '肯泰罗（牛群）',
                text = {
                    "{C:mult}+#1#{}倍率",
                }
            },
            j_poke_magikarp = {
                name = '鲤鱼王',
                text = {
                    "{C:chips}+#2#{}筹码",
                    "附上{C:attention}跃起{}效果",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#1#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_gyarados = {
                name = '暴鲤龙',
                text = {
                    "{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_mega_gyarados = {
                name = '超级暴鲤龙',
                text = {
                    "{X:mult,C:white} X#1# {}倍率",
                    "禁用所有{C:attention}Boss盲注{}的效果",
                }
            },
            j_poke_lapras = {
                name = '拉普拉斯',
                text = {
                    "本比赛中每个已跳过的{C:attention}盲注{}",
                    "会给此牌{C:chips}+#2#{}筹码",
                    "跳过盲注后",
                    "依然可以进入{C:attention}商店{}",
                    "{C:inactive}（目前为{C:chips}+#1# {C:inactive}筹码）",
                }
            },
            j_poke_ditto = {
                name = '百变怪',
                text = {
                    "{C:attention}右不稳定{}",
                    "商店结束时，{C:attention}变为{}最左侧的小丑牌",
                    "并附带{C:attention}易腐{}和{X:colorless,C:white}一般{}属性贴纸",
                    "{C:inactive,s:0.8}（自身除外）",
                }
            },
            j_poke_eevee = {
                name = '伊布',
                text = {
                    "{X:mult,C:white} X#1# {} 倍率",
                    "{C:inactive,s:0.8}（能用很多石头进化…）",
                }
            },
            j_poke_vaporeon = {
                name = '水伊布',
                text = {
                    "每张{C:attention}打出的牌{}计分时",
                    "永久获得{C:chips}+#1#{}筹码",
                    "对{C:attention}奖励牌{}效果{C:attention}翻倍{}",
                }
            },
            j_poke_jolteon = {
                name = '雷伊布',
                text = {
                    "每弃掉一张{C:attention}黄金牌{}",
                    "获得{C:money}$#1#{}",
                }
            },
            j_poke_flareon = {
                name = '火伊布',
                text = {
                    "{C:attention}手中{}第一张{C:attention}倍率牌{}",
                    "给予{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_porygon = {
                name = '多边兽',
                text = {
                    "{C:pink}+1{}能量上限",
                    "每次打开{C:attention}补充包{}时",
                    "产生一张{C:pink}能量{}牌",
                    "{C:inactive,s:0.8}（使用{} {C:attention,s:0.8}升级{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_omanyte = {
                name = '菊石兽',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{X:attention,C:white}1+{} : 产生一张{C:tarot}塔罗牌{}",
                    "{X:attention,C:white}2+{} : 获得 {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : 产生一张{C:item}道具{}牌 {C:inactive,s:0.7}(触发 {C:attention,s:0.7}#3#{C:inactive,s:0.7} 次后进化)",
                    "{C:inactive,s:0.8}（必须有空位）",
                }
            },
            j_poke_omastar = {
                name = '多刺菊石兽',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{X:attention,C:white}1+{} : 产生一张{C:tarot}塔罗牌{}",
                    "{X:attention,C:white}2+{} : 获得 {C:money}$#2#{}",
                    "{X:attention,C:white}3+{} : 产生一张{C:item}道具{}牌",
                    "{X:attention,C:white}4+{} : 产生一个{C:attention}标签{} {C:inactive,s:0.8}(每轮一次) {C:inactive}#3#{}",
                    "{C:inactive,s:0.8}（必须有空位）",
                }
            },
            j_poke_kabuto = {
                name = '化石盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{}筹码",
                    "{X:attention,C:white}2+{} : 计分的{C:attention}#1#{}牌永久获得{C:chips}+#3#{}筹码",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{}筹码 {C:inactive,s:0.8}(触发 {C:attention,s:0.8}#5#{C:inactive,s:0.8} 次后进化)",
                }
            },
            j_poke_kabutops = {
                name = '镰刀盔',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{}筹码",
                    "{X:attention,C:white}2+{} : 计分的{C:attention}#1#{}牌永久获得{C:chips}+#3#{}筹码",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{}筹码",
                    "{X:attention,C:white}4+{} : 重新触发所有打出的{C:attention}#1#{}牌",
                }
            },
            j_poke_aerodactyl = {
                name = '化石翼龙',
                text = {
                    "{C:attention}原始的#1#{}",
                    "{X:attention,C:white}1+{} : {X:mult,C:white}X#2#{}倍率",
                    "{X:attention,C:white}2+{} : 获得 {X:mult,C:white}X#3#{}倍率",
                    "{X:attention,C:white}3+{} : 第一张计分的未强化{C:attention}#1#{}牌",
                    "强化为{C:attention}玻璃牌{}",
                    "{X:attention,C:white}4+{} : {C:attention}双倍{}其 {X:mult,C:white}X{}倍率",
                    "{C:inactive}(回合结束后重置){}",
                }
            },
            j_poke_mega_aerodactyl = {
                name = '超级化石翼龙',
                text = {
                    "计分时，打出的{C:attention}#1#{}牌，",
                    "每张都根据手牌中{C:attention}#1#{}的数量",
                    "提供 {X:mult,C:white} X#2# {} 倍率",
                    "每张打出的{C:attention}#1#{}牌有",
                    "{C:green}#3#/#4#{} 的概率被摧毁",
                }
            },
            j_poke_snorlax = {
                name = '卡比兽',
                text = {
                    "此牌附带{C:item}吃剩的东西{}",
                    "回合结束时，每张你拥有的{C:attention}吃剩的东西{}",
                    "会给此牌{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（目前为{X:mult,C:white} X#2# {}{C:inactive}倍率）",
                }
            },
            j_poke_articuno = {
                name = '急冻鸟',
                text = {
                    "为计分牌中最左侧的牌",
                    "添加{C:attention}闪箔{}效果和一个{C:attention}蜡封{}",
                }
            },
            j_poke_zapdos = {
                name = '闪电鸟',
                text = {
                    "你拥有的每 {C:money}$#2#{}",
                    "提供 {X:mult,C:white} X#1# {} 倍率",
                    "{C:inactive}（目前为{X:mult,C:white}X#3#{}{C:inactive}倍率）",
                }
            },
            j_poke_moltres = {
                name = '火焰鸟',
                text = {
                    "升级每回合中",
                    "{C:attention}第一次弃牌{}",
                    "的牌型等级{C:attention}3{}级",
                }
            },
            j_poke_dratini = {
                name = '迷你龙',
                text = {
                    "如果打出的牌不超过{C:attention}#3#{}张",
                    "这张牌会获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（在拥有{C:mult}+#1#{C:inactive} / +#4#倍率时进化）",
                }
            },
            j_poke_dragonair = {
                name = '哈克龙',
                text = {
                    "如果打出的牌不超过{C:attention}#3#{}张",
                    "这张牌会获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（在拥有{C:mult}+#1#{C:inactive} / +#4#倍率时进化）",
                }
            },
            j_poke_dragonite = {
                name = '快龙',
                text = {
                    "{C:mult}+#1#{}倍率",
                    "如果只打出一张牌",
                    "重新触发那张牌额外{C:attention}#2#{}次",
                }
            },
            j_poke_mewtwo = {
                name = '超梦',
                text = {
                    "击败{C:attention}Boss盲注{}后，生成一张",
                    "最左侧{C:attention}小丑牌{}的{C:dark_edition}多彩{}{C:attention}复制品{}",
                    "并为{C:attention}复制品{}{C:pink}注入能量{}",
                    "然后摧毁最左侧的{C:attention}小丑牌{}",
                    "每张{C:dark_edition}多彩{}版本的小丑牌给予{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive}（不能摧毁自身）",
                }
            },
            j_poke_mega_mewtwo_x = {
                name = "超级超梦X",
                text = {
                    "所有小丑牌给予{X:mult,C:white} X#1# {} 倍率",
                }
            },
            j_poke_mega_mewtwo_y = {
                name = "超级超梦Y",
                text = {
                    "在商店结束时，为最左侧的",
                    "小丑牌提供{C:attention}两次{} {C:pink}能量注入{}",
                    "击败{C:attention}Boss盲注{}时，",
                    "{C:pink}+1{} 能量上限",
                    "{C:inactive}（不能为自身{C:pink}注入能量{C:inactive}）",
                }
            },
            j_poke_mew = {
                name = '梦幻',
                text = {
                    "离开商店后，产生一张随机的",
                    "{C:dark_edition}负片{}{C:tarot}塔罗{}，{C:spectral}幻灵{}或{C:item}道具{}牌",
                    "有{C:green}#1#%{}的几率产生一张随机的{C:dark_edition}负片{}小丑牌{C:attention}作为替代{}",
                    "{C:inactive,s:0.8}（几率不能提升）{}",
                }
            },
            j_poke_chikorita = {
                name = '菊草叶',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "回合结束时，手牌中",
                    "超过 {C:attention}第四{} 张的每张牌",
                    "为你带来 {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_bayleef = {
                name = '月桂叶',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "回合结束时，手牌中",
                    "超过 {C:attention}第二{} 张的每张牌",
                    "为你带来 {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_meganium = {
                name = '大竺葵',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "回合结束时，手牌中的",
                    "每张牌为你带来 {C:money}$#2#{}",
                }
            },
            j_poke_cyndaquil = {
                name = '火球鼠',
                text = {
                    "{C:red}+#1#{} 次弃牌",
                    "每剩余一次{C:attention}弃牌{}，获得{C:mult}+#2#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#4#{C:inactive} 倍率)",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_quilava = {
                name = '火岩鼠',
                text = {
                    "{C:red}+#1#{} 次弃牌",
                    "每剩余一次{C:attention}弃牌{}，获得{C:mult}+#2#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#4#{C:inactive} 倍率)",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_typhlosion = {
                name = '火暴兽',
                text = {
                    "{C:red}+#1#{} 次弃牌",
                    "每剩余一次{C:attention}弃牌{}，获得{C:mult}+#2#{} 倍率和{X:mult,C:white} X#3# {} 倍率",
                    "{C:inactive}(当前{C:mult}+#4#{C:inactive} 倍率和{X:mult,C:white} X#5# {C:inactive} 倍率)",
                }
            },
            j_poke_totodile = {
                name = '小锯鳄',
                text = {
                    "{C:blue}+#1#{} 出牌次数",
                    "本轮每张出牌获得{C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#3#{C:inactive} 筹码)",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#4#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_croconaw = {
                name = '蓝鳄',
                text = {
                    "{C:blue}+#1#{} 出牌次数",
                    "本轮每张出牌获得{C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#3#{C:inactive} 筹码)",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#4#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_feraligatr = {
                name = '大力鳄',
                text = {
                    "{C:blue}+#1#{} 出牌次数",
                    "本轮每张出牌获得{C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#3#{C:inactive} 筹码)",
                }
            },
            j_poke_sentret = {
                name = '尾立',
                text = {
                    "如果打出的牌型{C:attention}连续{}不是上一个的牌型",
                    "这张牌会获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（上一个牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（在{C:mult}+#1#{C:inactive} / +15倍率时进化）",
                }
            },
            j_poke_furret = {
                name = '大尾立',
                text = {
                    "如果打出的牌型不是上一个的牌型",
                    "这张牌会获得{C:mult}+#2#{}倍率",
                    "{C:inactive}（上一个牌型：{C:attention}#3#{}{C:inactive}）",
                    "{C:inactive}（目前为{C:mult}+#1#{} {C:inactive}倍率）",
                }
            },
            j_poke_hoothoot = {
                name = '咕咕',
                text = {
                    "{C:purple}+#1# 预见",
                    "每张{C:attention}预见{}卡牌",
                    "提供其总筹码",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_noctowl = {
                name = '猫头夜鹰',
                text = {
                    "{C:purple}+#1# 预见",
                    "每张{C:attention}预见{}卡牌",
                    "提供其总筹码",
                }
            },
            j_poke_ledyba = {
                name = "芭瓢虫",
                text = {
                    "牌组中每剩余{C:attention}5{}张牌，获得{C:mult}+#1#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#3#{C:inactive} 倍率)",
                    "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
                }
            },
            j_poke_ledian = {
                name = "安瓢虫",
                text = {
                    "牌组中每剩余{C:attention}3{}张牌，获得{C:mult}+#1#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive} 倍率)",
                }
            },
            j_poke_spinarak = {
                name = "圆丝蛛",
                text = {
                    "{C:chips}+#1#{} 筹码",
                    "有{C:green}#2#/#3#{}的几率改为{C:chips}+#5#{} 筹码",
                    "{C:inactive,s:0.8}(经过{C:attention}#4#{C:inactive}回合后进化)",
                }
            },
            j_poke_ariados = {
              name = "阿利多斯",
              text = {
                "{C:chips}+#1#{} 筹码",
                "有{C:green}#2#/#3#{}的几率改为{C:chips}+#4#{} 筹码",
              }
            },
            j_poke_crobat = {
                name = '叉字蝠',
                text = {
                    "{C:attention}奖励{} / {C:attention}石头{}牌获得{C:chips}+#4#{}筹码",
                    "{C:attention}倍率{} / {C:attention}百搭{}牌获得{C:mult}+#2#{}倍率",
                    "{C:attention}钢铁{} / {C:attention}玻璃{}牌获得{X:mult,C:white}X#6#{}倍率",
                    "{C:attention}黄金{} / {C:attention}幸运{}牌获得{C:money}$#8#{}",
                    "然后{C:attention}随机化{}所有计分牌现有的强化效果",
                    "{C:inactive}（目前为{C:chips}+#3#{}，{C:mult}+#1#{}，{X:mult,C:white}X#5#{}，{C:money}$#7#{C:inactive}，回合结束时）",
                }
            },
            j_poke_chinchou = {
                name = "灯笼鱼",
                text = {
                    "若打出的牌包含{C:attention}对子{}",
                    "给予{C:chips}+#1#{}筹码和{C:money}$#2#{}",
                    "{C:inactive}(经过{C:attention}#3#{C:inactive}回合后进化)",
                }
            },
            j_poke_lanturn = {
                name = "电灯怪",
                text = {
                    "若打出的牌包含{C:attention}对子{}",
                    "给予{C:chips}+#1#{}筹码和{C:money}$#2#{}",
                    "每张{X:water,C:white}水{}属性小丑牌会增加{C:chips}+#3#{}到获得的筹码",
                    "每张{X:lightning,C:black}电{}属性小丑牌会增加{C:money}$#4#{}到获得的金钱",
                    "{C:inactive}(当前{C:chips}+#6#{C:inactive}筹码及{C:money}$#5#{C:inactive})",
                }
            },
            j_poke_pichu = {
                name = '皮丘',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#2# {} 倍率",
                    "回合结束时",
                    "获得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_cleffa = {
                name = '皮宝宝',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时",
                    "产生一张带有{C:dark_edition}负片{}的{C:attention}月亮{}牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_igglybuff = {
                name = '宝宝丁',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时",
                    "产生一张带有{C:dark_edition}负片{}的{C:attention}世界{}牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_togepi = {
                name = '波克比',
                text = {
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_togetic = {
                name = '波克基古',
                text = {
                    "{C:attention}幸运卡{}有",
                    "有{C:green}#1#/#2#{}的几率提供{C:chips}+#4#{} 筹码",
                    "以及{C:green}#1#/#3#{}的几率提供{X:mult,C:white}X#5#{} 倍率",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}光之石{C:inactive,s:0.8}卡牌后进化)",
                }
            },
            j_poke_natu = {
                name = '天然雀',
                text = {
                    "{C:planet}星球{}卡牌提供额外的等级",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_xatu = {
                name = '天然鸟',
                text = {
                    "{C:planet}星球{}卡牌提供额外的等级",
                    "{C:planet}星空包{}包含所有{C:planet}星球{}卡牌",
                }
            },
            j_poke_mareep = {
                name = "咩利羊",
                text = {
                    "每{C:attention}添加{}一张{C:attention}游戏牌{}",
                    "到你的牌组，获得 {X:mult,C:white}X#2#{} 倍率",
                    "每{C:attention}摧毁{}一张{C:attention}游戏牌{}",
                    "失去 {X:mult,C:white}X#3#{} 倍率",
                    "{C:inactive}(在拥有 {X:mult,C:white}X#1#{C:inactive} / X#4# 倍率时进化)",
                }
            },
            j_poke_flaaffy = {
                name = "茸茸羊",
                text = {
                    "每{C:attention}添加{}一张{C:attention}游戏牌{}",
                    "到你的牌组，获得 {X:mult,C:white}X#2#{} 倍率",
                    "每{C:attention}摧毁{}一张{C:attention}游戏牌{}",
                    "失去 {X:mult,C:white}X#3#{} 倍率",
                    "{C:inactive}(在拥有 {X:mult,C:white}X#1#{C:inactive} / X#4# 倍率时进化)",
                }
            },
            j_poke_ampharos = {
                name = "电龙",
                text = {
                    "每{C:attention}添加{}一张{C:attention}游戏牌{}",
                    "到你的牌组，获得 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前 {X:mult,C:white}X#1#{C:inactive} 倍率)",
                }
            },
            j_poke_mega_ampharos = {
                name = "超级电龙",
                text = {
                    "{X:mult,C:white} X#1# {} 倍率",
                    "选择盲注时，手牌上限变为",
                    "牌组数量的{C:attention}一半{}，失去所有",
                    "弃牌次数，且只能出 {C:attention}1{} 次牌",
                    "{C:inactive}(向上取整，当前为 {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_marill = {
                name = '玛力露',
                text = {
                    "若计分牌同时包含{C:attention}未强化{}",
                    "和{C:attention}已强化{}的卡牌，",
                    "获得 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive,s:0.8}(在打出{C:attention,s:0.8}#1#张奖励牌后进化)",
                }
            },
            j_poke_azumarill = {
                name = '玛力露丽',
                text = {
                    "{X:mult,C:white}X#1#{}倍率",
                    "若计分牌同时包含{C:attention}非奖励牌{}",
                    "和{C:attention}奖励牌{}，则X倍率翻倍",
                }
            },
            j_poke_sudowoodo = {
                name = "树才怪",
                text = {
                    "重新触发所有{C:attention}打出{}",
                    "和{C:attention}手中{}的{C:attention}人头牌{}",
                }
            },
            j_poke_weird_tree = {
                name = "奇怪的树",
                text = {
                    "{C:attention}属性变换: {X:grass,C:white}草{}",
                    "回合结束时，若此小丑牌不是",
                    "{X:grass,C:white}草{}属性或你拥有{X:water,C:white}水{}属性",
                    "小丑牌，则{C:}变形{}",
                }
            },
            j_poke_bellossom = {
                name = '美丽花',
                text = {
                    "每张计分的{C:attention}奇数{}点的牌",
                    "会给予{C:mult}+#1#{}倍率或变成{C:attention}百搭牌{}",
                    "如果已经是{C:attention}百搭牌{}，",
                    "新增{C:dark_edition}闪箔{}、{C:dark_edition}全息{}或{C:dark_edition}多彩{}版本",
                }
            },
            j_poke_politoed = {
                name = '蚊香蛙皇',
                text = {
                    "每张计分的{V:1}#2#{}花色的牌",
                    "会给予{C:mult}+#1#{}倍率",
                    "那些牌会依{X:water,C:white}水属性{}",
                    "的小丑牌的数量而重新触发",
                    "{C:inactive,s:0.8}（{C:attention,s:0.8}#7#{}{C:inactive,s:0.8}次的重新触发数量会平均分配到每张的计分牌）{}",
                    "{s:0.8}花色在出牌后按次序地变更",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                }
            },
            j_poke_hoppip = {
                name = '毽子草',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "前两张{C:attention}弃牌{}变为{C:dark_edition}百搭{}",
                    "{S:1.1,C:red,E:2}弃牌时自毁{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_skiploom = {
                name = '毽子花',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "前三张{C:attention}弃牌{}变为{C:dark_edition}百搭{}",
                    "{S:1.1,C:red,E:2}弃牌时自毁{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_jumpluff = {
                name = '毽子棉',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "所有{C:attention}弃牌{}变为{C:dark_edition}百搭{}",
                    "{S:1.1,C:red,E:2}弃牌时自毁{}",
                }
            },
            j_poke_aipom = {
              name = "长尾怪手",
              text = {
                "{C:attention}-#3#{} 选牌上限",
                "{C:inactive}(可以出牌/弃牌的数量)",
                "{C:attention}同花{}和{C:attention}顺子{}",
                "可以用 {C:attention}3{} 张牌组成",
                "{C:inactive,s:0.8}(在打出 {C:attention,s:0.8}#1#{C:inactive,s:0.8} 次顺子和 {C:attention,s:0.8}#2#{C:inactive,s:0.8} 次同花后进化){}",
              }
            },
            j_poke_sunkern = {
                name = '向日种子',
                text = {
                    "选择{C:attention}盲注{}和",
                    "打出{C:attention}手牌{}时获得 {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}日之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_sunflora = {
                name = '向日花怪',
                text = {
                    "选择{C:attention}盲注{}, 打出或{C:attention}弃掉{}手牌,",
                    "使用{C:attention}消耗品{}以及回合结束时，",
                    "均获得 {C:money}$#1#{}",
                }
            },
            j_poke_wooper = {
                name = "乌波",
                text = {
                    "{C:mult}+#1#{} 倍率",
                    "牌组中每剩余一张{C:attention}人头牌{}",
                    "{C:mult}-#3#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#4#{C:inactive} 倍率)",
                    "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
                }
            },
            j_poke_quagsire = {
                name = "沼王",
                text = {
                    "{C:mult}+#1#{} 倍率",
                    "牌组中每剩余一张{C:attention}人头牌{}",
                    "{C:mult}-#2#{} 倍率",
                    "{C:inactive}(当前{C:mult}+#3#{C:inactive} 倍率)",
                }
            },
            j_poke_yanma = {
              name = "蜻蜻蜓",
              text = {
                "每张计分的{C:attention}3{}或{C:attention}6{}",
                "给予{C:chips}+#2#{}筹码及{C:mult}+#1#{}倍率",
                "有{C:green}#5#/#6#{}的几率改为",
                "给予{C:chips}+#4#{}筹码及{C:mult}+#3#{}倍率",
                "{C:inactive,s:0.8}(在打出{C:attention,s:0.8}#7#{C:inactive,s:0.8}张3或6后进化)",
              }
            },
            j_poke_espeon = {
                name = '太阳伊布',
                text = {
                    "重新触发所有计分的{C:attention}#3#{}",
                    "每张计分的{V:1}#4#{}花色的牌",
                    "给予{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive,s:0.7}点数和花色每回合变更{}",
                }
            },
            j_poke_umbreon = {
                name = '月亮伊布',
                text = {
                    "降低弃牌中{C:attention}#1#{}的等级",
                    "并将其加入你最常用的",
                    "{C:attention}扑克牌型{}",
                    "{C:inactive,s:0.7}牌型每回合变更{}",
                }
            },
            j_poke_murkrow = {
              name = "黑暗鸦",
              text = {
                "每持有{X:dark,C:white}恶{}属性小丑牌，获得{X:mult,C:white} X#1# {} 倍率",
                "{C:inactive}(当前{X:mult,C:white} X#2#{C:inactive} 倍率)",
                "{C:inactive,s:0.8}(使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
              }
            },
            j_poke_slowking = {
                name = '呆呆王',
                text = {
                    "每张计分的{C:attention}K{}会给予{X:mult,C:white}X#1#{}倍率",
                    "每次出牌后增加{X:mult,C:white}X#2#{}倍率",
                    "{C:inactive,s:0.8}(回合结束后重置)",
                }
            },
            j_poke_misdreavus = {
                name = '梦妖',
                text = {
                    "打出的{C:attention}人头牌{}在计分时",
                    "永久失去最多{C:chips}#1#{} 筹码",
                    "获得失去的筹码",
                    "{C:inactive}(当前{C:chips}+#2#{C:inactive} 筹码)",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_unown = {
                name = "未知图腾",
                text = {
                    "{C:attention}性格:{} {C:inactive}({C:attention}#2#{C:inactive})",
                    "若打出的牌包含{C:attention}性格{}牌，",
                    "获得 {C:mult}+#1#{} 倍率",
                    "{S:1.1,C:red,E:2}回合结束时自毁{}",
                }
            },
            j_poke_wobbuffet = {
              name = "果然翁",
              text = {
                "重新触发每张打出的",
                "{C:attention}6{}、{C:attention}7{}、{C:attention}8{}、{C:attention}9{}或{C:attention}10{}",
                "{C:attention}左不稳定{}",
                "当选择盲注时，",
                "为最右侧小丑牌添加{C:attention}永恒{}",
              }
            },
            j_poke_girafarig = {
              name = "麒麟奇",
              text = {
                "若出牌包含{C:attention}两对{}，",
                "首张和末张{C:attention}人头牌{}在计分时提供{X:mult,C:white}X#1#{} 倍率",
                "{C:inactive,s:0.8}(在{C:attention,s:0.8}2张{C:inactive,s:0.8}人头牌上使用{C:attention,s:0.8}死神{C:inactive,s:0.8}后进化){}",
              }
            },
            j_poke_pineco = {
              name = "榛果球",
              text = {
                "{C:attention}左不稳定{}",
                "{C:chips}+#1#{} 筹码并削弱自身",
                "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
              }
            },
            j_poke_forretress = {
              name = "佛烈托斯",
              text = {
                "{C:attention}左不稳定{}",
                "{C:chips}+#1#{} 筹码并削弱自身",
                "若{C:attention}手牌中{}有",
                "{C:attention}钢铁牌{}，则筹码翻倍",
              }
            },
            j_poke_dunsparce = {
                name = '土龙弟弟',
                text = {
                    "{C:inactive}什么都不做...？",
                    "{S:1.1,C:red,E:2}在{C:green}商店重掷{}时自毁{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_gligar = {
                name = '天蝎',
                text = {
                    "手牌中每有一张{V:1}#2#{}或",
                    "被削弱的牌，打出的牌获得 {X:mult,C:white}X#1#{} 倍率",
                    "{C:inactive, s:0.8}(花色每回合变更)",
                    "{C:inactive}(当前 {X:mult,C:white}X#3#{C:inactive} 倍率)",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_steelix = {
                name = '大钢蛇',
                text = {
                    "本轮{C:attention}第一次出牌{}时，最左边的计分牌",
                    "会变成{C:attention}钢铁牌{}",
                    "在{C:attention}手中{}的{C:attention}石头牌{}会变成{C:attention}钢铁{}",
                }
            },
            j_poke_mega_steelix = {
                name = "超级大钢蛇",
                text = {
                    "回合结束时，牌组中每有一张",
                    "{C:diamonds}#2#{}花色牌，获得 {C:money}$#1#{}",
                    "手牌中非{C:diamonds}#2#{}的{C:attention}钢铁牌{}",
                    "会变为{C:diamonds}#3#{}并失去{C:attention}加强效果{}",
                }
            },
            j_poke_snubbull = {
                name = '布鲁',
                text = {
                    "第一张打出的{C:attention}人头牌{}",
                    "在计分时获得 {X:mult,C:white}X#1#{} 倍率",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_granbull = {
                name = '布鲁皇',
                text = {
                    "第一张打出的{C:attention}人头牌{}在计分时，",
                    "若是{C:attention}Q{}则获得 {X:mult,C:white}X#2#{} 倍率，",
                    "否则获得 {X:mult,C:white}X#1#{} 倍率",
                }
            },
            j_poke_qwilfish = {
                name = '千针鱼',
                text = {
                    "{C:purple}+#1# 陷阱牌",
                    "当一张{C:attention}强化{}牌",
                    "被摧毁时，获得 {C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#3#{C:inactive} 筹码)",
                }
            },
            j_poke_scizor = {
                name = '巨钳螳螂',
                text = {
                    "选择盲注后，摧毁右边的小丑牌",
                    "并获得 {C:mult}+#4#{}倍率",
                    "如果摧毁的小丑牌是{C:red}稀有{}或以上",
                    "这张牌会获得{C:dark_edition}闪箔{}，{C:dark_edition}全息{}或{C:dark_edition}多彩{}",
                    "那些版本会在此牌{C:attention}叠加{}",
                    "{C:inactive,s:0.8}（会优先选择被摧毁的小丑牌含有的版本）{}",
                    "{C:inactive}（目前为{C:mult}+#1#{}{C:inactive}倍率，{C:chips}+#2#{}{C:inactive}筹码，{X:mult,C:white}X#3#{} {C:inactive}倍率)",
                }
            },
            j_poke_mega_scizor = {
                name = "超级巨钳螳螂",
                text = {
                    "{C:blue}普通{}品质的小丑牌",
                    "获得 {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时，摧毁所有",
                    "{C:blue}普通{}品质的小丑牌",
                }
            },
            j_poke_shuckle = {
                name = "壶壶",
                text = {
                    "选择{C:attention}盲注{}时，",
                    "摧毁最左侧的{C:attention}消耗品{}",
                    "并生成一张{C:item}树果汁{}",
                    "{C:inactive}(不能摧毁{C:item}树果汁{C:inactive})",
                }
            },
            j_poke_sneasel = {
                name = '狃拉',
                text = {
                    "若打出的牌仅为一张{C:attention}#1#{},",
                    "则摧毁它并获得 {C:money}$#2#",
                    "{C:inactive,s:0.8}(点数每回合变更){}",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_teddiursa = {
              name = "熊宝宝",
              text = {
                "每跳过一个{C:attention}补充包{}",
                "获得 {C:mult}+#2#{} 倍率",
                "{C:inactive}(在拥有 {C:mult}+#1#{C:inactive} / #3# 倍率时进化)",
              }
            },
            j_poke_ursaring = {
              name = "圈圈熊",
              text = {
                "每跳过一个{C:attention}补充包{}",
                "获得 {C:mult}+#2#{} 倍率并生成一张{C:item}道具{}牌",
                "{C:inactive,s:0.8}(必须有空位)",
                "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
                "{C:inactive,s:0.8}(使用{C:attention,s:0.8}月之石{C:inactive,s:0.8}后进化)",
              }
            },
            j_poke_slugma = {
              name = "熔岩虫",
              text = {
                "每打出 {C:attention}4{} {C:inactive}[#4#]{} 次牌后，摧毁",
                "计分后你手中的第一张牌，",
                "此小丑牌获得 {C:chips}+#2#{} 筹码",
                "{C:inactive}(在拥有 {C:chips}+#1#{C:inactive} / #3# 筹码时进化)",
              }
            },
            j_poke_magcargo = {
                name = "熔岩蜗牛",
                text = {
                    "每打出 {C:attention}3{} {C:inactive}[#3#]{} 次牌后，摧毁",
                    "计分后你手中的第一张牌，",
                    "此小丑牌获得 {C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前 {C:chips}+#1#{C:inactive} 筹码)",
                }
            },
            j_poke_swinub = {
                name = "小山猪",
                text = {
                    "第一张计分牌获得 {C:mult}+#1#{} 倍率，",
                    "数值为你计分牌中每张{C:attention}石头牌{}",
                    "和{C:attention}玻璃牌{}的总和",
                    "回合结束时，有 {C:green}#3#/#4#{} 的概率",
                    "获得 {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#5#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_piloswine = {
              name = "长毛猪",
              text = {
                "第一张计分牌获得 {C:mult}+#1#{} 倍率，",
                "数值为你计分牌中每张{C:attention}石头牌{}",
                "和{C:attention}玻璃牌{}的总和",
                "回合结束时，有 {C:green}#3#/#4#{} 的概率",
                "获得 {C:money}$#2#{}",
                "{C:inactive,s:0.8}(在打出{C:attention,s:0.8}#5#{C:inactive,s:0.8}张石头或玻璃牌后进化)",
              }
            },
            j_poke_heracross = {
                name = '赫拉克罗斯',
                text = {
                    "若计分牌与你{C:attention}手中{}的牌",
                    "没有任何{C:attention}相同的点数{},",
                    "获得 {X:mult,C:white} X#1# {} 倍率",
                }
            },
            j_poke_mega_heracross = {
                name = "超级赫拉克罗斯",
                text = {
                  "重新触发所有打出的牌 {C:attention}两次{}",
                  "如果你出牌或弃牌",
                  "少于 {C:attention}5{} 张，本轮自身会被减益",
                  "{C:inactive}(在计分前减益)",
                }
            },
            j_poke_corsola = {
              name = '太阳珊瑚',
              text = {
                "牌组中每有一张{C:attention}强化牌{}",
                "提供 {C:mult}+#1#{} 倍率",
                "若计分牌包含{C:attention}5张强化牌{}，",
                "生成一只{C:attention}基础{} {X:water,C:white}水{}属性宝可梦",
                "{C:inactive,s:0.8}(必须有空间)",
                "{C:inactive}(当前 {C:mult}+#2#{C:inactive} 倍率)",
              }
            },
            j_poke_remoraid = {
              name = "铁炮鱼",
              text = {
                "重新触发第一手牌中的",
                "所有卡牌",
                "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
              }
            },
            j_poke_octillery = {
              name = "章鱼桶",
              text = {
                "重新触发所有打出的牌",
                "若打出的牌不包含{C:attention}8{},",
                "出牌后削弱自身一轮",
              }
            },
            j_poke_delibird = {
                name = "信使鸟",
                text = {
                    "回合结束时，",
                    "收到一个{S:1.1,C:green,E:2}礼物{}",
                    "{C:inactive,s:0.8}(必须有空位)",
                }
            },
            j_poke_mantine = {
                name = "巨翅飞鱼",
                text = {
                    "当一张{C:attention}黄金牌{}计分",
                    "或{C:attention}在手中{}时，获得 {C:chips}+#2#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#1#{C:inactive} 筹码)",
                }
            },
            j_poke_skarmory = {
                name = '盔甲鸟',
                text = {
                    "{C:purple}+#1# 陷阱牌",
                    "手牌中每有一张{C:attention}陷阱牌{}或{C:attention}钢铁牌{}",
                    "提供 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#3#{C:inactive} 倍率)",
                }
            },
            j_poke_kingdra = {
                name = '刺龙王',
                text = {
                    "每张计分的{C:attention}6{}",
                    "会给此牌{C:mult}+#2#{}倍率",
                    "如果手牌中有{C:attention}K{}，",
                    "每张计分的{C:attention}6{}改为",
                    "获得 {X:mult,C:white}X#4#{}倍率",
                    "{C:inactive}（目前为{C:mult}+#1#{C:inactive}倍率，{X:mult,C:white}X#3#{C:inactive}倍率）",
                }
            },
            j_poke_phanpy = {
                name = "小小象",
                text = {
                    "每连续打出包含{C:attention}5{}张",
                    "计分牌的手牌，获得 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive} 倍率)",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_donphan = {
                name = "顿甲",
                text = {
                    "每连续打出包含{C:attention}5{}张",
                    "计分牌的手牌，获得 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive} 倍率)",
                }
            },
            j_poke_porygon2 = {
                name = '多边兽Ⅱ',
                text = {
                    "{C:pink}+2{}能量上限",
                    "每次打开{C:attention}补充包{}时",
                    "产生一张与最左边的小丑牌的{C:pink}属性{}",
                    "相同的{C:pink}能量{}牌",
                    "{C:inactive,s:0.8}（使用{}{C:attention,s:0.8}可疑修正档{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_stantler = {
                name = "惊角鹿",
                text = {
                    "{C:purple}+#1# 预见",
                    "将{C:attention}被预见的{}最高点数牌的",
                    "点数加入倍率",
                    "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#2#{C:inactive,s:0.8}次后进化)",
                }
            },
            j_poke_smeargle = {
                name = "图图犬",
                text = {
                    "当选择盲注时，{C:attention}复制{}右侧{C:attention}小丑牌{}的能力",
                    "应用{C:attention}涂抹小丑牌{}",
                }
            },
            j_poke_tyrogue = {
                name = '无畏小子',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "在回合的{C:attention}第一次出牌或弃牌{}中",
                    "如果选择了{C:attention}五{}张牌，有随机一张牌",
                    "会复制(如果是出牌)，或摧毁(如果是弃牌)",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_hitmontop = {
                name = '战舞郎',
                text = {
                    "{X:mult,C:white} X#1# {} 倍率",
                    "选择盲注时",
                    "如果你的牌组正好有{C:attention}#2#{}张牌",
                    "这张牌会获得{X:mult,C:white} X#3# {}倍率",
                }
            },
            j_poke_smoochum = {
                name = '迷唇娃',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "当这个小丑牌进化时",
                    "产生一个{C:attention}标准{}标签",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_elekid = {
                name = '电击怪',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "当这个小丑牌进化时",
                    "产生一个{C:attention}优惠券{}标签",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_magby = {
                name = '鸭嘴宝宝',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "{C:red}+#2#{}弃牌次数",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_houndour = {
              name = "戴鲁比",
              text = {
                "弃牌超过 {C:attention}3{} 张时，",
                "也会从你{C:attention}手中{}随机弃掉 {C:attention}#3#{} 张牌",
                "被弃掉的牌",
                "永久获得 {C:mult}+#1#{} 倍率",
                "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
              }
            },
            j_poke_houndoom = {
              name = "黑鲁加",
              text = {
                "弃牌超过 {C:attention}3{} 张时，",
                "也会弃掉你{C:attention}手中{}的{C:attention}所有{}牌",
                "被弃掉的牌",
                "永久获得 {C:mult}+#1#{} 倍率",
              }
            },
            j_poke_mega_houndoom = {
                name = "超级黑鲁加",
                text = {
                  "弃牌时也会弃掉",
                  "你{C:attention}手中{}的{C:attention}所有{}牌",
                  "每当有牌被弃掉时",
                  "获得{X:mult,C:white} X#2# {}倍率",
                  "回合结束时重置",
                  "{C:inactive}(当前{X:mult,C:white} X#1# {C:inactive}倍率)",
                }
            },
            j_poke_miltank = {
                name = "大奶罐",
                text = {
                    "每持有{X:colorless,C:white}一般{}属性小丑牌，",
                    "在回合结束时获得{C:money}$#1#{}",
                    "{C:inactive}(当前{C:money}$#2#{C:inactive}){}"
                }
            },
            j_poke_blissey = {
                name = '幸福蛋',
                text = {
                    "每个回合中头{C:attention}#1#{C:inactive} [#2#]{}张被触发的{C:attention}幸运牌{}",
                    "会增加一张带有{C:dark_edition}多彩{}的复制品到牌组并抽到{C:attention}手牌{}中",
                }
            },
            j_poke_raikou = {
                name = "雷公",
                text = {
                    "若首次出牌只有 {C:attention}1{} 张，",
                    "则将手中 {C:attention}3{} 张牌变为与其",
                    "{C:attention}相同的点数{}并获得 {C:money}$#1#{}",
                }
            },
            j_poke_entei = {
                name = "炎帝",
                text = {
                    "若{C:attention}首次{}弃牌恰好为 {C:attention}4{} 张，",
                    "摧毁其中一张并获得 {X:red,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前 {X:red,C:white}X#1#{C:inactive} 倍率)",
                }
            },
            j_poke_suicune = {
                name = "水君",
                text = {
                    "永久{C:attention}双倍{}打出的每张牌",
                    "的筹码总数",
                    "{C:inactive}(每次强化最多增加 {C:chips}+#1#{C:inactive} 筹码)",
                }
            },
            j_poke_larvitar = {
                name = "幼基拉斯",
                text = {
                    "若打出的牌是{C:attention}葫芦{},",
                    "所有计分牌永久",
                    "获得 {C:chips}+#1#{} 筹码",
                    "{C:inactive,s:0.8}(在打出{C:attention,s:0.8}#2#{C:inactive,s:0.8}次葫芦后进化)",
                }
            },
            j_poke_pupitar = {
                name = "沙基拉斯",
                text = {
                    "若打出的牌是{C:attention}葫芦{},",
                    "所有计分牌永久",
                    "获得 {C:chips}+#1#{} 筹码",
                    "{C:inactive,s:0.8}(在打出{C:attention,s:0.8}#2#{C:inactive,s:0.8}次葫芦后进化)",
                }
            },
            j_poke_tyranitar = {
                name = "班基拉斯",
                text = {
                    "若打出的牌是{C:attention}葫芦{},",
                    "计分时，所有打出的牌永久失去最多",
                    "{C:chips}#1#{}筹码，若筹码被失去",
                    "则永久获得{X:mult,C:white}X#2#{}倍率",
                }
            },
            j_poke_mega_tyranitar = {
                name = "超级班基拉斯",
                text = {
                    "若打出的牌是{C:attention}葫芦{},",
                    "提升其等级，计分牌永久",
                    "获得筹码，数值等于你的",
                    "{C:attention}葫芦{}等级",
                }
            },
            j_poke_lugia = {
              name = "洛奇亚",
              text = {
                "在{C:attention}盲注{}期间，每抽",
                "{C:attention}#3#{} {C:inactive}[#4#]{} 张牌，",
                "获得 {X:mult,C:white} X#2# {} 倍率",
                "{C:inactive}(当前 {X:mult,C:white} X#1# {C:inactive} 倍率){}",
              }
            },
            j_poke_ho_oh = {
                name = "凤王",
                text = {
                    "每轮首次使用的{C:attention}消耗品{}，",
                    "生成一张其{C:dark_edition}多彩{}版本的复制品",
                    "{C:inactive}(必须有空位)",
                }
            },
            j_poke_celebi = {
                name = "时拉比",
                text = {
                    "跳过{C:attention}#1#{} {C:inactive}[#3#]{} {C:attention}盲注{}后，{C:attention}-#2#{} 赌注",
                    "{C:inactive}(每次所需跳过次数增加)",
                }
            },
            j_poke_treecko = {
                name = "木守宫",
                text = {
                    "{C:attention}+#3#{}手牌上限, {C:attention}性格: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "打出的{C:attention}性格{}牌",
                    "会有{C:green}#4#/#5#{}的几率获得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}属性牌，效果确保触发",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在赚取{C:money,s:0.8}$#2#{C:inactive,s:0.8}后进化）",
                }
            },
            j_poke_grovyle = {
                name = "森林蜥蜴",
                text = {
                    "{C:attention}+#3#{}手牌上限, {C:attention}性格: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "打出的{C:attention}性格{}牌",
                    "会有{C:green}#4#/#5#{}的几率获得{C:money}$#1#{}",
                    "如果你有其他的{X:grass,C:white}草{}属性牌，效果确保触发",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在赚取{C:money,s:0.8}$#2#{C:inactive,s:0.8}后进化）",
                }
            },
            j_poke_sceptile = {
                name = "蜥蜴王",
                text = {
                    "{C:attention}+#3#{}手牌上限, {C:attention}性格: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "每张打出的{C:attention}性格{}牌获得{C:money}$#1#{}",
                    "出牌时，每一张{X:grass,C:white}草{}属性牌会给予{C:money}$#5#{}",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前为{C:money}$#4#{C:inactive}）{}",
                }
            },
            j_poke_torchic = {
                name = "火稚鸡",
                text = {
                    "{C:mult}+#3#{}弃牌次数, {C:attention}性格: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "这回合中，每张弃掉的{C:attention}性格{}牌会给予{C:mult}+#1#{}倍率",
                    "如果你有其他的{X:fire,C:white}火{}属性或{X:fighting,C:white}斗{}属性的牌，给予的倍率翻倍",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前为{C:mult}+#4#{}{C:inactive}倍率）{}",
                    "{C:inactive,s:0.8}（在给予{C:mult,s:0.8}#2#{C:inactive,s:0.8}倍率后进化）",
                }
            },
            j_poke_combusken = {
                name = "力壮鸡",
                text = {
                    "{C:mult}+#3#{}弃牌次数, {C:attention}性格: {C:inactive}({C:attention}#5#, #6#, #7#{C:inactive}){}",
                    "这回合中，每张弃掉的{C:attention}性格{}牌会给予{C:mult}+#1#{}倍率",
                    "如果你有其他的{X:fire,C:white}火{}属性或{X:fighting,C:white}斗{}属性的牌，给予的倍率翻倍",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前为{C:mult}+#4#{}{C:inactive}倍率）{}",
                    "{C:inactive,s:0.8}（在给予{C:mult,s:0.8}#2#{C:inactive,s:0.8}倍率后进化）",
                }
            },
            j_poke_blaziken = {
                name = "火焰鸡",
                text = {
                    "{C:mult}+#2#{}弃牌次数, {C:attention}性格: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "每张弃掉的{C:attention}性格{}牌",
                    "给予{C:mult}+#4#{}倍率，且你拥有的每张{X:fire,C:white}火{}或{X:fighting,C:white}斗{}属性牌",
                    "提供 {X:mult,C:white}X#1#{} 倍率",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前为{C:mult}+#5#{C:inactive}倍率, {X:mult,C:white}X#3#{C:inactive}倍率）{}",
                }
            },
            j_poke_mudkip = {
                name = "水跃鱼",
                text = {
                    "{C:chips}+#3#{}出牌次数, {C:attention}性格: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "打出的{C:attention}性格{}牌会给予{C:chips}+#1#{}筹码",
                    "如果你有其他的{X:water,C:white}水{}属性或{X:earth,C:white}地{}属性的牌，给予的筹码翻倍",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在给予{C:chips,s:0.8}#2#{C:inactive,s:0.8}筹码后进化）",
                }
            },
            j_poke_marshtomp = {
                name = "沼跃鱼",
                text = {
                    "{C:chips}+#3#{}出牌次数, {C:attention}性格: {C:inactive}({C:attention}#4#, #5#, #6#{C:inactive}){}",
                    "打出的{C:attention}性格{}牌会给予{C:chips}+#1#{}筹码",
                    "如果你有其他的{X:water,C:white}水{}属性或{X:earth,C:white}地{}属性的牌，给予的筹码翻倍",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive,s:0.8}（在给予{C:chips,s:0.8}#2#{C:inactive,s:0.8}筹码后进化）",
                }
            },
            j_poke_swampert = {
                name = "巨沼怪",
                text = {
                    "{C:chips}+#3#{}出牌次数, {C:attention}性格: {C:inactive}({C:attention}#6#, #7#, #8#{C:inactive}){}",
                    "打出的{C:attention}性格{}牌会给予{C:chips}+#1#{}筹码",
                    "如果你有其他的{X:water,C:white}水{}属性或{X:earth,C:white}地{}属性的牌，每张额外给予{C:chips}+#5#{}筹码",
                    "{C:inactive,s:0.8}（这包括小丑牌及能量牌）{}",
                    "{C:inactive}（目前给予了{C:chips}+#4#{}{C:inactive}筹码）",
                }
            },
            j_poke_poochyena = {
              name = "土狼犬",
              text = {
                "每当一张{C:attention}游戏牌{}被摧毁时",
                "获得 {C:mult}+#2#{} 倍率",
                "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
                "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
              }
            },
            j_poke_mightyena = {
              name = "大狼犬",
              text = {
                "每当一张{C:attention}游戏牌{}被摧毁时",
                "获得 {C:mult}+#2#{} 倍率",
                "每拥有一张{X:dark,C:white}恶{}属性小丑牌，",
                "额外增加 {C:mult}+#3#{} 倍率",
                "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
              }
            },
            j_poke_zigzagoon = {
              name = "蛇纹熊",
              text = {
                "出牌时，有 {C:green}#1#/#2#{} 的概率",
                "生成一张{C:attention}捡拾{}类{C:item}道具{}牌",
                "{C:inactive}(必须有空位)",
                "{C:inactive,s:0.8}(在{C:attention}#3#{C:inactive,s:0.8}回合后进化)",
              }
            },
            j_poke_linoone = {
              name = "直冲熊",
              text = {
                "出牌时，有 {C:green}#1#/#2#{} 的概率",
                "生成一张{C:attention}捡拾{}类{C:item}道具{}牌",
                "若打出的牌包含",
                "{C:attention}顺子{}，则必定生成",
                "{C:inactive}(必须有空位)",
              }
            },
            j_poke_shroomish = {
                name = "蘑蘑菇",
                text = {
                    "当选择{C:attention}盲注{}时，获得",
                    "{C:chips}+#1#{} 出牌次数、{C:mult}+#2#{} 弃牌次数或",
                    "{C:attention}+#3#{} 手牌上限",
                    "{C:inactive,s:0.8}(击败{C:attention,s:0.8}#4#{C:inactive,s:0.8}个Boss盲注后进化){}",
                }
            },
            j_poke_breloom = {
                name = "斗笠菇",
                text = {
                    "当选择{C:attention}盲注{}时，获得",
                    "{C:chips}+#1#{} 出牌次数、{C:mult}+#2#{} 弃牌次数或",
                    "{C:attention}+#3#{} 手牌上限",
                }
            },
            j_poke_azurill = {
                name = '露力丽',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white}X#1#{} 倍率",
                    "回合结束时，生成一张带有",
                    "{C:dark_edition}负片{}的{C:attention}教皇{}牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_nosepass = {
                name = '朝北鼻',
                text = {
                    "首张打出的{C:attention}人头牌{}",
                    "变为{C:attention}石头{}卡牌，并在计分时提供{X:mult,C:white} X#1# {} 倍率",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}雷之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_aron = {
                name = '可可多拉',
                text = {
                    "每有一张{C:attention}钢铁{}牌计分，",
                    "获得{X:mult,C:white}X#2#{} 倍率，然后将其摧毁",
                    "{C:inactive}(在{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{C:inactive} 倍率时进化)",
                }
            },
            j_poke_lairon = {
                name = '可多拉',
                text = {
                    "每有一张{C:attention}钢铁{}或{C:attention}石头{}牌计分，",
                    "获得{X:mult,C:white}X#2#{} 倍率，然后将其摧毁",
                    "{C:inactive}(在{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{C:inactive} 倍率时进化)",
                }
            },
            j_poke_aggron = {
                name = '波士可多拉',
                text = {
                    "每有一张{C:attention}钢铁{}、{C:attention}石头{}或{C:attention}黄金{}牌计分，",
                    "获得{X:mult,C:white}X#2#{} 倍率，然后将其摧毁",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive} 倍率)",
                }
            },
            j_poke_numel = {
                name = "呆火驼",
                text = {
                  "每计分{C:attention}#3#{}张牌，",
                  "获得{X:red,C:white}X#1#{}倍率",
                  "{C:inactive}剩余#4#张{}",
                  "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
                }
            },
            j_poke_camerupt = {
              name = "喷火驼",
              text = {
                "每计分{C:attention}#2#{}张牌，",
                "获得{X:red,C:white}X#1#{}倍率，",
                "{C:attention}倍率牌{}算作两张",
                "{C:inactive}剩余#3#张{}",
              }
            },
            j_poke_mega_camerupt = {
              name = "超级喷火驼",
              text = {
                "每当一张{C:attention}倍率牌{}计分时，",
                "获得 {X:mult,C:white} X#2# {}倍率",
                "回合结束时重置",
                "{C:inactive}(当前{X:mult,C:white} X#1# {C:inactive}倍率)",
              }
            },
            j_poke_feebas = {
                name = '丑丑鱼',
                text = {
                    "{C:mult}+#1#{} 倍率",
                    "附上 {C:attention}跃起{}效果",
                    "{C:inactive,s:0.8}(使用 {C:attention,s:0.8}美丽鳞片{}进化{C:inactive})",
                }
            },
            j_poke_milotic = {
                name = "美纳斯",
                text = {
                    "如果所有打出的牌都是一样的{C:attention}花色{}",
                    "则重新触发",
                }
            },
            j_poke_duskull = {
              name = "夜巡灵",
              text = {
                "重新触发{C:attention}本回合最后一次出牌{}中",
                "前{C:attention}4{}张计分牌",
                "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
              }
            },
            j_poke_dusclops = {
              name = "彷徨夜灵",
              text = {
                "重新触发{C:attention}本回合最后一次出牌{}中",
                "前{C:attention}4{}张计分牌",
                "若最后一次出牌有{C:attention}1{}张未计分牌，",
                "则摧毁它并生成一张{C:spectral}幻灵牌{}",
                "{C:inactive}(必须有空位){}",
                "{C:inactive}(使用{C:attention}连接之绳{C:inactive}后进化)",
              }
            },
            j_poke_absol = {
                name = "阿勃梭鲁",
                text = {
                  "{X:red,C:white}X#1#{} 倍率",
                  "所有{C:attention}指定的{} {C:green,E:1,S:1.1}概率{}",
                  "始终为{C:attention}0{}",
                  "{C:inactive}(例: {C:green}1 / 6{C:inactive} -> {C:green}0 / 6{C:inactive})",
                }
            },
            j_poke_wynaut = {
                name = '小果然',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "在回合结束时生成一张带有",
                    "{C:dark_edition}负片{}的{C:attention}愚者{}卡牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_snorunt = {
                name = "雪童子",
                text = {
                    "最多可欠债{C:mult}-$#1#{}",
                    "{C:inactive,s:0.8}(欠债{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}觉醒之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_glalie = {
                name = "冰鬼护",
                text = {
                    "最多可欠债{C:mult}-$#1#{}",
                    "在回合结束时，",
                    "将金钱设置为{C:money}$0{}",
                }
            },
            j_poke_luvdisc = {
              name = "爱心鱼",
              text = {
                "{C:attention}持有{C:hearts}心之鳞片{}",
                "附上{C:attention}跃起{}效果",
              }
            },
            j_poke_beldum = {
                name = '铁哑铃',
                text = {
                    "如果打出的牌型是{C:attention}四条{}",
                    "给予{C:chips}+#2#{}筹码",
                    "如果计分的牌包含一张{C:attention}A{}",
                    "给予{C:chips}+#2#{}筹码",
                    "{C:inactive}（在拥有{C:chips}+#1#{C:inactive} / +#4#筹码时进化）",
                }
            },
            j_poke_metang = {
                name = '金属怪',
                text = {
                    "如果打出的牌型是{C:attention}四条{}",
                    "给予{C:chips}+#2#{}筹码",
                    "如果计分的牌包含至少两张{C:attention}A{}",
                    "给予{C:chips}+#2#{}筹码",
                    "{C:inactive}（在拥有{C:chips}+#1#{C:inactive} / +#4#筹码时进化）",
                }
            },
            j_poke_metagross = {
                name = '巨金怪',
                text = {
                    "{C:chips}+#1#{}筹码",
                    "如果打出的牌型是{C:attention}四条{}",
                    "每张打出的牌会给予等同那张牌的",
                    "总筹码的{C:attention}四次方根{}的{X:mult,C:white}X{}倍率",
                }
            },
            j_poke_jirachi = {
                name = '基拉祈',
                text = {
                    "在商店结束时，",
                    "{C:dark_edition}许个愿吧！",
                }
            },
            j_poke_jirachi_banker = {
                name = '基拉祈',
                text = {
                    "{C:attention}双倍{}回合结束时的收益",
                }
            },
            j_poke_jirachi_booster = {
                name = '基拉祈',
                text = {
                    "+1 {C:attention}补充包栏位",
                    "{C:attention}补充包{}包含{C:attention}1{}张额外的卡牌",
                }
            },
            j_poke_jirachi_power = {
                name = '基拉祈',
                text = {
                    "每{C:attention}#2# {C:inactive}[#3#]{}次出牌，打出的卡牌",
                    "在计分时提供{X:mult,C:white}X#1#{} 倍率",
                }
            },
            j_poke_jirachi_negging = {
                name = '基拉祈',
                text = {
                    "{C:blue}+2{} 小丑牌栏位",
                    "{C:dark_edition}负片{}卡牌出现几率{C:attention}2倍{}",
                }
            },
            j_poke_jirachi_invis = {
                name = '基拉祈',
                text = {
                    "当选择{C:attention}盲注{}时",
                    "产生一张右侧{C:attention}小丑牌{}的",
                    "{C:attention}复制品{}",
                    "然后 {S:1.1,C:red,E:2}自我毁灭{}",
                    "{C:inactive}(复制品会移除负片版本)",
                }
            },
            j_poke_jirachi_copy = {
                name = '基拉祈',
                text = {
                    "复制右侧{C:attention}小丑牌{}的能力",
                    "如同其拥有额外的{C:pink}能量注入{}",
                }
            },
            j_poke_jirachi_fixer = {
                name = '基拉祈',
                text = {
                    "若{C:attention}首手牌{}仅包含{C:attention}1{}张卡牌，",
                    "为其添加{C:dark_edition}闪箔{}、{C:dark_edition}全息{}或{C:dark_edition}多彩{}",
                    "若{C:attention}首次弃牌{}仅包含{C:attention}1{}张卡牌，",
                    "{C:attention}销毁{}该卡牌",
                }
            },
            j_poke_kricketot = {
              name = "圆法师",
              text = {
                "若出牌恰好为{C:attention}4{}张且",
                "至少有{C:attention}4{}种不同{C:attention}花色{}，",
                "则获得{C:money}$#1#{}",
                "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
              }
            },
            j_poke_kricketune = {
              name = "音箱蟀",
              text = {
                "若出牌恰好为{C:attention}4{}张且",
                "至少有{C:attention}4{}种不同{C:attention}花色{}，",
                "则获得{C:money}$#1#{}",
                "有{C:green}#2#/#3#{}的概率",
                "同时生成一张{C:tarot}塔罗牌{}",
              }
            },
            j_poke_buizel = {
                name = '泳圈鼬',
                text = {
                    "计分牌中每有一张",
                    "{C:attention}未计分{}的牌，",
                    "获得 {C:chips}+#1#{} 筹码",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_floatzel = {
                name = '浮潜鼬',
                text = {
                    "计分牌中每有一张",
                    "{C:attention}未计分{}的牌，",
                    "获得 {C:chips}+#1#{} 筹码",
                }
            },
            j_poke_ambipom = {
              name = "双尾怪手",
              text = {
                "所有{C:attention}同花{}和",
                "所有{C:attention}顺子{}都可以用",
                "{C:attention}恰好3{}张牌组成",
              }
            },
            j_poke_buneary = {
              name = "卷卷耳",
              text = {
                "计分牌中每有一张",
                "未计分的牌，",
                "获得 {C:mult}+#1#{} 倍率",
                "{C:inactive}(经过{C:attention}#2#{C:inactive}回合后进化)",
              }
            },
            j_poke_lopunny = {
                name = "长耳兔",
                text = {
                  "{C:purple}+#3# 预见",
                  "计分牌中每有一张",
                  "未计分的牌，",
                  "获得 {C:mult}+#1#{} 倍率",
                  "若一张未计分牌与",
                  "一张{C:attention}预见{}牌{C:attention}点数相同{}",
                  "则获得{X:mult,C:white} X#2# {}倍率",
                }
            },
            j_poke_mega_lopunny = {
                name = "超级长耳兔",
                text = {
                  "{C:purple}+#1# 预见",
                  "获得{X:mult,C:white}X{}倍率，数值等同于",
                  "{C:attention}预见牌型{}的{C:attention}等级{}",
                  "{C:inactive}(预见牌型: {C:attention}#2#{C:inactive})",
                }
            },
            j_poke_mismagius = {
                name = '梦妖魔',
                text = {
                    "打出的{C:attention}人头牌{}在计分时",
                    "永久失去最多{C:chips}#1#{} 筹码",
                    "获得失去的筹码",
                    "有{C:green}#3#/#4#{}的几率改为",
                    "永久获得{C:chips}#5#{} 筹码",
                    "{C:inactive}(当前{C:chips}+#2#{C:inactive} 筹码)",
                }
            },
            j_poke_honchkrow = {
                name = "乌鸦头头",
                text = {
                    "每张{X:dark,C:white}恶{}属性小丑牌提供{X:mult,C:white}X#1#{} 倍率",
                }
            },
            j_poke_bonsly = {
                name = "盆才怪",
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white}X#1#{} 倍率",
                    "在回合结束时，向牌组添加一张随机的",
                    "{C:attention}强化人头牌{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_mimejr = {
                name = '魔尼尼',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时，为牌组中一张随机牌",
                    "添加{C:red}红色蜡封{}或{C:blue}蓝色蜡封{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_happiny = {
                name = '小福蛋',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时，生成一张带有",
                    "{C:dark_edition}负片{}的{C:attention}魔术师{}牌",
                    "有 {C:green}#3#/#4#{} 的概率生成 {C:attention}2{} 张",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_munchlax = {
                name = '小卡比兽',
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white} X#1# {} 倍率",
                    "回合结束时，生成一张",
                    "{C:dark_edition}负片{}{C:item}道具牌{}",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_mantyke = {
                name = "小球飞鱼",
                text = {
                    "{C:attention}幼年{}, {X:mult,C:white}X#2#{} 倍率",
                    "回合结束时，生成一张带有",
                    "{C:dark_edition}负片{}的{C:attention}恶魔{}牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_weavile = {
                name = '玛狃拉',
                text = {
                    "若打出的牌仅为一张{C:attention}#3#{}, 则摧毁它，",
                    "获得 {C:money}$#4#{} 并获得 {X:mult,C:white}X#1#{} 倍率",
                    "击败{C:attention}Boss盲注{}后重置",
                    "{C:inactive,s:0.8}(点数每回合变更){}",
                    "{C:inactive}(当前 {X:mult,C:white}X#2#{C:inactive} 倍率){}",
                }
            },
            j_poke_magnezone = {
                name = '自爆磁怪',
                text = {
                    "打出的{C:attention}钢铁牌{}获得 {X:mult,C:white}X#1#{} 倍率",
                    "每拥有一张{X:metal,C:white}钢{}属性小丑牌",
                    "额外提供 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前 {X:mult,C:white}X#3#{C:inactive} 倍率){}",
                }
            },
            j_poke_lickilicky = {
                name = '大舌舔',
                text = {
                    "头两张计分的{C:attention}J{}",
                    "给予{X:mult,C:white}X#1#{} 倍率",
                    "之后每张计分的{C:attention}J{}会给予",
                    "{X:mult,C:white} X#2# {} 倍率",
                }
            },
            j_poke_rhyperior = {
                name = '超甲狂犀',
                text = {
                    "每张计分的{C:attention}石头牌{} ",
                    "可永久获得{C:chips}+#1#{}筹码",
                    "并重新触发",
                    "每拥有 {C:attention}3{} 张{X:earth,C:white}地面{}属性小丑牌，",
                    "{C:attention}石头牌{}额外重新触发一次",
                    "{C:inactive}(当前重新触发 #2# 次)",
                }
            },
            j_poke_tangrowth = {
                name = '巨蔓藤',
                text = {
                    "百搭牌{C:attention}不能{}被削弱",
                    "打出的{C:attention}百搭牌{}给予",
                    "{C:mult}+#1#{}倍率，{C:chips}+#2#{}筹码或{C:money}$#3#{}",
                    "有{C:green}#4#/#5#{}的几率给予{C:attention}以上三个的加成{}",
                }
            },
            j_poke_electivire = {
                name = '电击魔兽',
                text = {
                    "每次{C:attention}卖出{}一张牌或回合结束时",
                    "会把此牌的{C:attention}出售价值{}提升{C:money}$#1#{}",
                    "此牌的出售价值每一美元",
                    "提供 {X:mult,C:white}X#2#{} 倍率",
                    "{C:inactive}(当前 {X:mult,C:white}X#3#{C:inactive} 倍率)",
                }
            },
            j_poke_magmortar = {
                name = '鸭嘴炎兽',
                text = {
                    "如果回合中的{C:attention}第一次{}弃牌只有{C:attention}一{}张牌",
                    "摧毁它并获得{C:mult}+#2#{}倍率",
                    "当你使用弃牌时",
                    "获得{X:mult,C:white}X#4#{}倍率",
                    "{C:inactive}(当前为{C:mult}+#1#{C:inactive}倍率, {X:mult,C:white}X#3#{C:inactive}倍率)",
                }
            },
            j_poke_togekiss = {
                name = '波克基斯',
                text = {
                    "对所有{C:attention}指定的{} {C:green,E:1,S:1.1}概率{}加{C:attention}#6#{}",
                    "{C:attention}幸运卡{}有",
                    "有{C:green}#1#/#2#{}的几率提供{C:chips}+#4#{} 筹码",
                    "以及{C:green}#1#/#3#{}的几率提供{X:mult,C:white}X#5#{} 倍率",
                }
            },
            j_poke_yanmega = {
              name = "远古巨蜓",
              text = {
                "每张计分的{C:attention}3{}或{C:attention}6{}",
                "给予{C:chips}+#2#{}筹码及{C:mult}+#1#{}倍率",
                "有{C:green}#3#/#4#{}的几率",
                "重新触发每张打出的{C:attention}3{}或{C:attention}6{}",
              }
            },
            j_poke_leafeon = {
                name = '叶伊布',
                text = {
                    "{C:attention}+#1#{} 手牌上限",
                    "每次出牌后减少{C:red}#2#{}",
                    "当一张{C:attention}幸运牌{}",
                    "{C:green}成功{}触发时",
                    "手牌上限{C:attention}+#2#{}",
                    "{C:inactive}(手牌上限最多 {C:attention}+#3#{C:inactive}){}",
                }
            },
            j_poke_glaceon = {
                name = '冰伊布',
                text = {
                    "每次商店重掷都有",
                    "{C:green}#1#/#2#{} 的概率，",
                    "从你的牌组中随机复制一张牌",
                    "并将其{C:attention}玻璃{}版本加入商店",
                }
            },
            j_poke_gliscor = {
                name = '天蝎王',
                text = {
                    "手牌中每有一张{V:1}#2#{}或",
                    "被削弱的牌，打出的牌获得 {X:mult,C:white}X#1#{} 倍率",
                    "{C:inactive, s:0.8}(花色每回合变更)",
                    "{C:inactive}(当前 {X:mult,C:white}X#3#{C:inactive} 倍率)",
                }
            },
            j_poke_mamoswine = {
              name = "象牙猪",
              text = {
                "第一张计分牌获得 {C:mult}+#1#{} 倍率，",
                "数值为你计分牌中每张{C:attention}石头牌{}",
                "和{C:attention}玻璃牌{}的总和",
                "打出的{C:attention}石头{}和{C:attention}玻璃{}牌有",
                "{C:green}#3#/#4#{} 的概率在计分时获得 {C:money}$#2#{}",
              }
            },
            j_poke_porygonz = {
                name = '多边兽Ｚ',
                text = {
                    "{C:pink}+3{}能量上限",
                    "每张在此{C:attention}比赛{}中使用的{C:pink}能量{}牌会给予{X:mult,C:white} X#2# {}倍率",
                    "当你使用{C:pink}能量{}牌时",
                    "产生一张{C:pink}能量{}牌",
                    "{C:inactive}（必须有空位）",
                    "{C:inactive}（目前为{X:mult,C:white} X#1# {}{C:inactive}倍率）",
                }
            },
            j_poke_probopass = {
                name = '大朝北鼻',
                text = {
                    "{C:attention}石头{}卡牌视为人头牌",
                    "打出的{C:attention}石头{}卡牌",
                    "在计分时提供{X:mult,C:white} X#1# {} 倍率",
                }
            },
            j_poke_dusknoir = {
                name = "黑夜魔灵",
                text = {
                  "重新触发{C:attention}本回合最后一次出牌{}中",
                  "所有计分牌",
                  "{C:spectral}幻灵牌{}可能",
                  "会出现在商店中",
                  "{C:inactive,s:0.8}(如果已经出现，则增加出现率){}",
                }
            },
            j_poke_froslass = {
                name = "雪妖女",
                text = {
                    "最多可欠债{C:mult}-$#1#{}",
                    "若出牌时处于欠债状态，",
                    "生成一张{C:item}道具{}卡牌",
                    "{C:inactive,s:0.8}(必须有空间)",
                }
            },
            j_poke_rotom = {
                name = "洛托姆",
                text = {
                  "打开任意{C:attention}补充包{}时，",
                  "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                  "{C:inactive}(必须有空位){}",
                  "{C:attention}补充包{}价格降低 {C:money}$1{}",
                  "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
                }
            },
            j_poke_rotomh = {
                name = "洛托姆 (加热)",
                text = {
                  "打开任意{C:attention}补充包{}时，",
                  "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                  "{C:inactive}(必须有空位){}",
                  "若首次弃牌",
                  "恰好为{C:attention}2{}张，则将两张牌",
                  "都强化为{C:attention}倍率牌{}",
                  "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
                }
            },
            j_poke_rotomw = {
                name = "洛托姆 (清洗)",
                text = {
                  "打开任意{C:attention}补充包{}时，",
                  "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                  "{C:inactive}(必须有空位){}",
                  "每打出一张计分的{C:attention}强化牌{}，",
                  "获得 {C:money}$#3#{}并移除其{C:attention}强化效果{}",
                  "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
                }
            },
            j_poke_rotomf = {
              name = "洛托姆 (结霜)",
              text = {
                "打开任意{C:attention}补充包{}时，",
                "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                "{C:inactive}(必须有空位){}",
                "选择盲注时，生成一张",
                "随机{C:attention}消耗品{}，并附带",
                "{C:dark_edition}闪箔{}、{C:dark_edition}全息{}或{C:dark_edition}多彩{}版本",
                "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
              }
            },
            j_poke_rotomfan = {
                name = "洛托姆 (旋转)",
                text = {
                  "打开任意{C:attention}补充包{}时，",
                  "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                  "{C:inactive}(必须有空位){}",
                  "选择盲注时，",
                  "摧毁右侧的小丑牌",
                  "并生成一个{C:attention}标签{}",
                  "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
                }
            },
            j_poke_rotomm = {
                name = "洛托姆 (割草)",
                text = {
                  "打开任意{C:attention}补充包{}时，",
                  "有{C:green}#1#/#2#{}的几率生成一张{C:item}道具{}牌",
                  "{C:inactive}(必须有空位){}",
                  "回合结束时，{C:attention}降低{}",
                  "手中前{C:attention}2{}张牌的",
                  "点数",
                  "{C:inactive}(使用{C:attention}家电{C:inactive}时变形){}",
                }
            },
            j_poke_shaymin = {
              name = "谢米",
              text = {
                "本轮{C:attention}第一次出牌{}时，最右边的计分牌",
                "会变成{C:attention}花朵牌{}",
                "{C:inactive,s:0.8}(打出{C:attention,s:0.8}#1#{C:inactive,s:0.8}张花朵牌后变形)",
              }
            },
            j_poke_shaymin_sky = {
              name = "谢米 (天空形态)",
              text = {
                "{C:attention}花朵牌{}同时也是",
                "{C:attention}百搭牌{}",
                "{C:inactive,s:0.8}(使用{C:attention,s:0.8}死神{C:inactive,s:0.8}牌后变形)",
              }
            },
            j_poke_pansage = {
                name = "花椰猴",
                text = {
                    "应用{C:attention}捷径",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}叶之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_simisage = {
                name = "花椰猿",
                text = {
                    "应用{C:attention}捷径",
                    "所有打出的未强化卡牌有",
                    "{C:green}#1#/#2#{}的几率变为{C:attention}幸运{}",
                }
            },
            j_poke_pansear = {
                name = "爆香猴",
                text = {
                    "应用{C:attention}四指",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}火之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_simisear = {
                name = "爆香猿",
                text = {
                    "应用{C:attention}四指",
                    "若首手牌包含{C:attention}顺子",
                    "或{C:attention}同花{}，生成一张{C:attention}皇后{}卡牌",
                    "每张未计分卡牌被销毁{C:inactive}#1#{}",
                }
            },
            j_poke_panpour = {
                name = "冷水猴",
                text = {
                    "应用{C:attention}幻视",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}水之石{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_simipour = {
                name = "冷水猿",
                text = {
                    "应用{C:attention}幻视",
                    "出牌中基础筹码最低的",
                    "最左侧未强化卡牌变为{C:attention}奖励{}卡牌",
                }
            },
            j_poke_roggenrola = {
                name = "石丸子",
                text = {
                    "{C:purple}+#1# 陷阱牌",
                    "手牌中每有一张{C:attention}无点数{}的牌",
                    "提供 {C:mult}+#2#{} 倍率",
                    "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#3#{C:inactive,s:0.8}次后进化)",
                }
            },
            j_poke_boldore = {
                name = "地幔岩",
                text = {
                    "{C:purple}+#1# 陷阱牌",
                    "手牌中每有一张{C:attention}无点数{}的牌",
                    "提供 {C:mult}+#2#{} 倍率",
                    "{C:inactive,s:0.8}(使用{C:attention,s:0.8}连接之绳{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_gigalith = {
                name = "庞岩怪",
                text = {
                    "{C:purple}+#1# 陷阱牌",
                    "手牌中每有一张{C:attention}无点数{}的牌",
                    "提供 {C:mult}+#2#{} 倍率并重新触发",
                }
            },
            j_poke_drilbur = {
                name = "螺钉地鼠",
                text = {
                  "每轮第一张打出的{C:attention}石头牌{}",
                  "会被摧毁并生成{C:money}宝物{}",
                  "{C:inactive}(必须有空位)",
                  "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#1#{C:inactive,s:0.8}次后进化)",
                }
            },
            j_poke_excadrill = {
              name = "龙头地鼠",
              text = {
                "打出的{C:attention}石头牌{}会被",
                "摧毁并生成{C:money}宝物{}",
                "{C:inactive}(必须有空位)",
                "{C:mult}+#1#{} 倍率，数值为你牌组中",
                "点数低于{C:attention}#2#{}的牌数",
                "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率)",
              }
            },
            j_poke_trubbish = {
              name = "破破袋",
              text = {
                "若回合结束时没有",
                "使用任何弃牌次数，则每次弃牌",
                "获得 {C:chips}+#2#{} 筹码和{C:money}$#3#{}",
                "{C:inactive}(当前{C:chips}+#1#{C:inactive} 筹码)",
                "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#4#{C:inactive,s:0.8}次后进化)",
              }
            },
            j_poke_garbodor = {
                name = "灰尘山",
                text = {
                  "若回合结束时没有使用任何弃牌次数，",
                  "则每次弃牌获得 {C:chips}+#2#{} 筹码",
                  "若赌注结束时没有使用任何弃牌次数，",
                  "生成一个{C:attention}垃圾标签{}",
                  "{C:inactive}(当前{C:chips}+#1#{C:inactive} 筹码)",
                }
            },
            j_poke_zorua = {
                name = "索罗亚",
                text = {
                    "{V:1}复制右侧最{C:attention}小丑牌{}的能力",
                    "在计分出牌后，移除复制效果",
                    "直到回合结束",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_zoroark = {
                name = "索罗亚克",
                text = {
                    "复制右侧最{C:attention}小丑牌{}的能力",
                }
            },
            j_poke_gothita = {
                name = "哥德宝宝",
                text = {
                    "商店中的所有{C:planet}星球{}卡牌和{C:planet}星空包{}",
                    "价格降低{C:money}$2{}",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_gothorita = {
                name = "哥德小童",
                text = {
                    "商店中的所有{C:planet}星球{}卡牌和{C:planet}星空包{}",
                    "价格降低{C:money}$3{}",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_gothitelle = {
                name = "哥德小姐",
                text = {
                    "商店中的所有{C:planet}星球{}卡牌和{C:planet}星空包{}",
                    "均为{C:attention}免费{}",
                    "使用{C:planet}星球{}卡牌时获得{C:money}$#1#{}"
                }
            },
            j_poke_vanillite = {
                name = "迷你冰",
                text = {
                  "{C:attention}左不稳定",
                  "{C:chips}+#1#{} 筹码",
                  "每出牌一次，{C:chips}-#3#{} 筹码",
                  "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_vanillish = {
                name = "多多冰",
                text = {
                  "{C:attention}左不稳定",
                  "{C:chips}+#1#{} 筹码",
                  "每出牌一次，{C:chips}-#3#{} 筹码",
                  "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_vanilluxe = {
                name = "双倍多多冰",
                text = {
                  "{C:chips}+#1#{} 筹码",
                  "每出牌一次，{C:chips}-#2#{} 筹码",
                  "当完全融化时，",
                  "生成{C:attention}#3#个双倍标签{} ",
                }
            },
            j_poke_frillish = {
                name = "轻飘飘",
                text = {
                    "每弃掉一张{C:attention}人头牌{}，",
                    "获得{C:chips}+#2#{}筹码",
                    "{C:inactive}(在拥有{C:chips}+#1#{C:inactive} / +#3#筹码时进化)",
                }
            },
            j_poke_jellicent = {
                name = "胖嘟嘟",
                text = {
                  "每弃掉一张{C:attention}人头牌{}，",
                  "获得{C:chips}+#2#{}筹码",
                  "若是{C:attention}K{}或{C:attention}Q{}，",
                  "则筹码{C:attention}翻倍{}",
                  "{C:inactive}(当前{C:chips}+#1#{C:inactive}筹码)",
                }
            },
            j_poke_ferroseed = {
                name = "种子铁球",
                text = {
                  "{C:attention}百搭牌{}和{C:attention}陷阱牌{}",
                  "同时也是{C:attention}钢铁牌{}",
                  "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_ferrothorn = {
              name = "坚果哑铃",
              text = {
                "{C:attention}百搭牌{}和{C:attention}陷阱牌{}",
                "同时也是{C:attention}钢铁牌{}",
                "若打出的牌包含",
                "{C:attention}同花{}，重新触发所有",
                "{C:attention}手中{}的{C:attention}钢铁牌{}",
              }
            },
            j_poke_elgyem = {
                name = "小灰怪",
                text = {
                    "选择{C:attention}盲注{}时，生成一张{C:dark_edition}负片{}版本的",
                    "{C:planet}星球{}牌，其牌组为你等级",
                    "最高的 {C:attention}#1#{} 个牌组之一",
                    "{C:inactive,s:0.8}(当你拥有 #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} 种不同星球牌时进化){}",
                }
            },
            j_poke_beheeyem = {
                name = "大宇怪",
                text = {
                    "选择{C:attention}盲注{}时，生成一张{C:dark_edition}负片{}版本的",
                    "{C:planet}星球{}牌，其牌组为你等级",
                    "最高的 {C:attention}#1#{} 个牌组之一",
                    "打开 {C:attention}#2# 个补充包后，若商店有空位，",
                    "则生成一张{C:attention}望远镜{}或{C:attention}天文台{}优惠券",
                }
            },
            j_poke_litwick = {
                name = "烛光灵",
                text = {
                    "{C:mult}+#4#{} 倍率",
                    "若此小丑牌售价达到或超过 {C:money}$#5#{},",
                    "则倍率效果{C:attention}三倍{}",
                    "回合结束时，从相邻的小丑牌",
                    "{C:attention}汲取 {C:money}$#1#{} 的售价",
                    "{C:inactive,s:0.8}(在售价达到 {C:money,s:0.8}$#3#{C:inactive,s:0.8} / $#2# 时进化)",
                }
            },
            j_poke_lampent = {
              name = "灯火幽灵",
              text = {
                "将此小丑牌的售价",
                "加入倍率",
                "回合结束时，从所有其他",
                "小丑牌{C:attention}汲取 {C:money}$#1#{} 的售价",
                "{C:inactive}(当前 {C:mult}+#2#{C:inactive} 倍率){}",
                "{C:inactive,s:0.8}(使用{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
              }
            },
            j_poke_chandelure = {
                name = "水晶灯火灵",
                text = {
                    "将此小丑牌的售价",
                    "加入倍率",
                    "每张售价为 {C:money}1${} 的小丑牌",
                    "提供 {X:mult,C:white} X#1# {} 倍率",
                    "{C:inactive}(当前 {C:mult}+#2#{C:inactive} 倍率){}",
                }
            },
            j_poke_golett = {
                name = "泥偶小人",
                text = {
                  "{C:purple}+#1# 陷阱牌",
                  "手牌{C:attention}中{}有{C:green}#4#/#5#{}的概率",
                  "提供{X:mult,C:white}X#2#{}倍率",
                  "{C:attention}陷阱牌{}必定触发",
                  "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#3#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_golurk = {
                name = "泥偶巨人",
                text = {
                  "{C:purple}+#1# 陷阱牌",
                  "手牌{C:attention}中{}有{C:green}#3#/#4#{}的概率",
                  "提供{X:mult,C:white}X#2#{}倍率",
                  "{C:attention}陷阱牌{}必定触发",
                }
            },
            j_poke_pawniard = {
                name = "驹刀小兵",
                text = {
                  "每摧毁一张{C:attention}人头牌{}，",
                  "获得{X:red,C:white}X#2#{}倍率",
                  "{C:inactive}(在{X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X#3#{C:inactive}倍率时进化)",
                }
            },
            j_poke_bisharp = {
              name = "劈斩司令",
              text = {
                "每摧毁一张{C:attention}人头牌{}，",
                "获得{X:red,C:white}X#2#{}倍率",
                "若首次出牌为",
                "单张{C:attention}人头牌{}，则摧毁之",
                "{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive}倍率)",
                "{C:inactive,s:0.8}(摧毁{C:attention,s:0.8}#3#{C:inactive,s:0.8}张K后进化)",
              }
            },
            j_poke_zweilous = {
                name = "双首暴龙",
                text = {
                  "若出牌为{C:attention}三条{}，获得{X:mult,C:white} X#1# {} 倍率",
                  "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#2#{C:inactive,s:0.8}次后进化){}",
                }
            },
            j_poke_hydreigon = {
                name = "三首恶龙",
                text = {
                  "若出牌为{C:attention}三条{}，",
                  "每张未计分卡牌被销毁",
                  "每销毁一张卡牌，获得{X:mult,C:white} X#2# {} 倍率",
                  "{C:inactive}(当前{X:mult,C:white} X#1# {C:inactive} 倍率){}",
                }
            },
            j_poke_deino = {
                name = "单首龙",
                text = {
                  "若出牌为{C:attention}三条{}，获得{X:mult,C:white} X#1# {} 倍率",
                  "{C:inactive,s:0.8}(触发{C:attention,s:0.8}#2#{C:inactive,s:0.8}次后进化){}",
                }
            },
            j_poke_litleo = {
                name = "小狮狮",
                text = {
                    "若出牌包含{C:attention}同花{}，获得{C:chips}+#1#{} 筹码",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_pyroar = {
                name = "火炎狮",
                text = {
                    "若出牌包含{C:attention}同花{}，获得{C:chips}+#1#{} 筹码",
                    "若还包含{C:attention}国王{}或{C:attention}皇后{}，",
                    "生成一张{C:pink}能量{}卡牌",
                }
            },
            j_poke_sylveon = {
                name = '仙子伊布',
                text = {
                    "若{C:attention}首次出牌{}为",
                    "一张{C:attention}未强化{}的牌，",
                    "为其添加{C:dark_edition}闪箔{}、{C:dark_edition}全息{}或",
                    "{C:dark_edition}多彩{}版本",
                }
            },
            j_poke_pumpkaboo_small = {
                name = '南瓜精 (小)',
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "{C:inactive,s:0.8}(使用{C:attention,s:0.8}连接之绳{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_pumpkaboo_average = {
                name = '南瓜精 (中)',
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "{C:inactive,s:0.8}(使用{C:attention,s:0.8}连接之绳{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_pumpkaboo_large = {
                name = '南瓜精 (大)',
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "{C:inactive,s:0.8}(使用{C:attention,s:0.8}连接之绳{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_pumpkaboo_super = {
                name = '南瓜精 (特大)',
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "{C:inactive,s:0.8}(使用{C:attention,s:0.8}连接之绳{C:inactive,s:0.8}后进化)",
                }
            },
            j_poke_gourgeist_small = {
                name = "南瓜怪人 (小)",
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "每使用一张{C:spectral}幻灵牌{}，",
                  "获得{C:money}$#3#{}，并为{C:attention}最左侧{}的小丑牌",
                  "贴上{X:psychic,C:white}超能力{}属性贴纸",
                }
            },
            j_poke_gourgeist_average = {
                name = "南瓜怪人 (中)",
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "每使用一张{C:spectral}幻灵牌{}，",
                  "获得{C:money}$#3#{}，并为{C:attention}最左侧{}的小丑牌",
                  "贴上{X:psychic,C:white}超能力{}属性贴纸",
                }
            },
            j_poke_gourgeist_large = {
                name = "南瓜怪人 (大)",
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "每使用一张{C:spectral}幻灵牌{}，",
                  "获得{C:money}$#3#{}，并为{C:attention}最左侧{}的小丑牌",
                  "贴上{X:psychic,C:white}超能力{}属性贴纸",
                }
            },
            j_poke_gourgeist_super = {
                name = "南瓜怪人 (特大)",
                text = {
                  "每弃掉{C:attention}#1#{} {C:inactive}[#2#]{}张{C:attention}J, ",
                  "生成一张{C:spectral}幻灵牌{}",
                  "{C:inactive}(必须有空位)",
                  "每使用一张{C:spectral}幻灵牌{}，",
                  "获得{C:money}$#3#{}，并为{C:attention}最左侧{}的小丑牌",
                  "贴上{X:psychic,C:white}超能力{}属性贴纸",
                }
            },
            j_poke_grubbin = {
                name = '强颚鸡母虫',
                text = {
                    "{C:mult}+#1#{}倍率",
                    "如果你有{X:lightning, C:black}电{}属性的小丑牌",
                    "此牌给予的倍率会增加{C:attention}三倍{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_charjabug = {
                name = '虫电宝',
                text = {
                    "每张你拥有的{X:lightning, C:black}电{}属性小丑牌",
                    "会给予{C:mult}+#1#{}倍率",
                    "{C:inactive}（目前为{C:mult}+#2#{C:inactive}倍率）",
                    "{C:inactive,s:0.8}（使用{} {C:attention,s:0.8}雷之石{}{C:inactive,s:0.8}牌进化）",
                }
            },
            j_poke_vikavolt = {
                name = '锹农炮虫',
                text = {
                    "{C:mult}+#3#{}倍率",
                    "每张其他你拥有的{X:lightning, C:black}电{}属性小丑牌",
                    "会给予{X:mult,C:white} X#1# {}倍率",
                    "{C:inactive}（目前为{X:mult,C:white} X#2# {}{C:inactive}倍率）",
                }
            },
            j_poke_rockruff = {
              name = "岩狗狗",
              text = {
                "每张打出的{C:attention}非人头牌{}",
                "计分时获得{C:mult}+#1#{}倍率",
                "{C:inactive,s:0.8}(打出{C:attention,s:0.8}#2#{C:inactive,s:0.8}张偶数牌后进化)",
                "{C:inactive,s:0.8}(打出{C:attention,s:0.8}#3#{C:inactive,s:0.8}张奇数牌后进化)",
              }
            },
            j_poke_lycanroc_day = {
              name = "鬃岩狼人 (白昼)",
              text = {
                "每张点数为{C:attention}偶数{}的牌",
                "计分时获得{C:mult}+#1#{}倍率",
                "若首次出牌恰好为",
                "{C:attention}1{}张，则计分时获得",
                "{C:chips}+#2#{}筹码和{C:attention}+1{}本轮出牌次数",
              }
            },
            j_poke_lycanroc_night= {
              name = "鬃岩狼人 (黑夜)",
              text = {
                "每张点数为{C:attention}奇数{}的牌",
                "计分时获得{C:mult}+#1#{}倍率",
                "选择Boss盲注时，",
                "本轮获得{C:chips}+#2#{}出牌次数、{C:mult}+#3#{}弃牌次数",
                "和{C:attention}+#2#{}手牌上限",
              }
            },
            j_poke_lycanroc_dusk = {
              name = "鬃岩狼人 (黄昏)",
              text = {
                "每张打出的{C:attention}非人头牌{}",
                "计分时获得{C:mult}+#1#{}倍率",
                "每轮重新触发第一张计分的",
                "{C:attention}偶数{}牌和",
                "第一张计分的{C:attention}奇数{}牌",
              }
            },
            j_poke_mimikyu = {
                name = "谜拟丘",
                text = {
                    "如果打出的牌没有计分的{C:hearts}#2#{}牌",
                    "给予{C:chips}+#1#{}筹码",
                    "如果你得到最少{C:attention}50%{}的所需筹码",
                    "此牌会防止死亡",
                    "{C:inactive}(#3#){}",
                }
            },
            j_poke_nickit = {
                name = "狡小狐",
                text = {
                    "回合结束时",
                    "获得{C:money}$#1#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_thievul = {
                name = "猾大狐",
                text = {
                    "回合结束时，获得金钱，",
                    "数额等于最左侧{C:attention}小丑牌{}售价",
                    "的{C:attention}两倍{}",
                    "{C:inactive,s:0.8}（自身除外）",
                    "{C:inactive}(当前 {C:money}$#1#{C:inactive}, 上限 {C:money}$15{C:inactive})",
                }
            },
            j_poke_yamper = {
                name = '来电汪',
                text = {
                    "如果打出的牌包含{C:attention}顺子{}",
                    "给予{C:mult}+#1#{}倍率及获得{C:money}$#2#{}",
                    "{C:inactive,s:0.8}（在{C:attention,s:0.8}#3#{C:inactive,s:0.8}个回合后进化）",
                }
            },
            j_poke_boltund = {
                name = '逐电犬',
                text = {
                    "如果打出的牌包含{C:attention}顺子{}",
                    "给予{X:mult,C:white}X#1#{}倍率及获得{C:money}$#2#{}",
                }
            },
            j_poke_dreepy = {
                name = "多龙梅西亚",
                text = {
                    "卖掉时，为你所有的小丑牌",
                    "增加 {C:money}$#1#{} 售价，并将你手中",
                    "的所有牌变为 {C:spades}#2#{}",
                    "{C:inactive,s:0.8}(打出同花顺后进化)",
                }
            },
            j_poke_drakloak = {
                name = "多龙奇",
                text = {
                    "你所有{C:attention}小丑牌{}的每 {C:money}${} 售价",
                    "提供 {X:mult,C:white} X#4# {} 倍率",
                    "若打出的牌是{C:attention}同花顺{},",
                    "为你所有的小丑牌增加 {C:money}$#1#{} 售价",
                    "{C:inactive}(当前 {X:mult,C:white} X#5# {C:inactive} 倍率){}",
                    "{C:inactive,s:0.8}(当你所有小丑牌的总售价",
                    "{C:inactive,s:0.8}达到 $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8} 时进化)",
                }
            },
            j_poke_dragapult = {
                name = "多龙巴鲁托",
                text = {
                    "你所有{C:attention}小丑牌{}的每 {C:money}${} 售价",
                    "提供 {X:mult,C:white} X#2# {} 倍率",
                    "若打出的牌是{C:attention}同花顺{},",
                    "且你没有{C:attention}多龙飞箭{},",
                    "则生成 {C:attention}2{} 张{C:dark_edition}负片{}版本的{C:attention}多龙飞箭{}",
                    "{C:inactive}(当前 {X:mult,C:white} X#3# {C:inactive} 倍率){}",
                }
            },
            j_poke_dreepy_dart = {
                name = "多龙飞箭",
                text = {
                    "卖掉时，为你所有的小丑牌",
                    "增加 {C:money}$#1#{} 售价，并将你手中",
                    "的所有牌变为 {C:spades}#2#{}",
                }
            },
            j_poke_hisuian_qwilfish = {
                name = "千针鱼 (洗翠的样子)",
                text = {
                    "{C:purple}+#1# 陷阱牌 {C:inactive}(每#2#张牌 +1)",
                    "抽到{C:attention}陷阱牌{}时",
                    "获得 {C:chips}+#3#{} 筹码",
                    "{C:inactive}(在拥有 {C:chips}+#4#{C:inactive} / +#5# 筹码时进化)",
                }
            },
            j_poke_overqwil = {
                name = "万针鱼",
                text = {
                    "{C:purple}+#1# 陷阱牌 {C:inactive}(每#2#张牌 +1)",
                    "抽到{C:attention}陷阱牌{}时",
                    "获得 {C:chips}+#3#{} 筹码",
                    "出牌后筹码{C:attention}减半{}",
                    "{C:inactive}(当前 {C:chips}+#4#{C:inactive} 筹码)",
                }
            },
            j_poke_wyrdeer = {
                name = "诡角鹿",
                text = {
                    "{C:purple}+#1# 预见",
                    "将{C:attention}被预见的{}最高点数牌的",
                    "点数的{C:attention}两倍{}加入倍率",
                    "出牌时获得",
                    "{C:purple}+#2# 预见{}",
                    "{C:inactive,s:0.8}(回合结束时重置)",
                }
            },
            j_poke_kleavor = {
                name = '劈斧螳螂',
                text = {
                    "选择盲注后，摧毁右边的小丑牌",
                    "并获得 {C:mult}+#2#{}倍率",
                    "如果被摧毁的小丑牌是{C:green}罕见{}或以上",
                    "则向牌组中添加一张附带{C:dark_edition}闪箔{}, {C:dark_edition}全息{},",
                    "或 {C:dark_edition}多彩{}版本的{C:attention}石头牌{}",
                    "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
                }
            },
            j_poke_ursaluna = {
              name = "月月熊",
              text = {
                "每跳过一个{C:attention}补充包{}，",
                "获得 {C:mult}+#2#{} 倍率并生成一张",
                "{C:dark_edition}多彩{}版本的{C:item}道具{}牌",
                "{C:inactive,s:0.8}(必须有空位)",
                "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
              }
            },
            j_poke_tarountula = {
                name = "团珠蛛",
                text = {
                    "{C:purple}+#1# 陷阱牌{}, {C:attention}+#3#{} 手牌上限",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_spidops = {
                name = "操陷蛛",
                text = {
                    "{C:purple}+#1# 陷阱牌, {C:attention}+#2#{} 手牌上限",
                    "若首次出牌",
                    "全是{C:attention}陷阱牌{}，则本轮",
                    "手牌上限增加，数值等于该手牌的牌数",
                }
            },
            j_poke_fidough = {
                name = "偶叫獒",
                text = {
                    "若打出的牌包含{C:attention}#3#{},",
                    "获得 {C:chips}+#2#{} 筹码",
                    "每次触发后，所需的{C:attention}点数{}增加",
                    "{C:inactive,s:0.8}(达到最高点数后会循环回最低点数)",
                    "{C:inactive}(当前 {C:chips}+#1#{C:inactive} 筹码)",
                    "{C:inactive,s:0.8}(当你拥有{X:fire,C:white,s:0.8}火{}属性小丑牌时进化)",
                }
            },
            j_poke_dachsbun = {
                name = "麻花犬",
                text = {
                    "如果打出的牌包含{C:attention}#3#{}，此牌获得{C:chips}+#2#{}筹码",
                    "所需的{C:attention}卡牌点数{}会在每次触发时提升一点",
                    "每张{X:fire,C:white}火{}属性小丑牌会增加{C:chips}+2{}到获得的筹码",
                    "{C:inactive,s:0.8}（如果是A，那就会变回2）",
                    "{C:inactive}（目前有{C:chips}+#1#{C:inactive}筹码）",
                }
            },
            j_poke_charcadet = {
              name = "炭小侍",
              text = {
                "计分后获得{C:mult}+#2#{}倍率",
                "{C:inactive,s:0.8}(回合结束时重置)",
                "{C:inactive,s:0.8}(使用{C:attention,s:0.8}觉醒之石{C:inactive,s:0.8}或{C:attention,s:0.8}暗之石{C:inactive,s:0.8}后进化)",
                "{C:inactive}(当前 {C:mult}+#1#{C:inactive} 倍率)",
              }
            },
            j_poke_armarouge = {
              name = "红莲铠骑",
              text = {
                "{X:mult,C:white} X#1# {} 倍率",
                "计分后失去{X:mult,C:white} X#2# {}倍率",
                "{C:inactive,s:0.8}(回合结束时重置)",
              }
            },
            j_poke_ceruledge = {
              name = "苍炎刃鬼",
              text = {
                "计分后获得{X:mult,C:white} X#2# {}倍率",
                "并从另一张随机小丑牌汲取{C:money}$#3#{}",
                "{C:inactive,s:0.8}(回合结束时重置)",
                "{C:inactive}(当前{X:mult,C:white} X#1# {C:inactive}倍率)",
              }
            },
            j_poke_tinkatink = {
                name = "小锻匠",
                text = {
                    "每张打出的牌给予{C:mult}+#1#{}倍率",
                    "选择盲注后，减益{C:attention}#3#{}张在牌组里",
                    "不是{C:attention}钢铁牌{}的牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化)",
                }
            },
            j_poke_tinkatuff = {
                name = "巧锻匠",
                text = {
                    "每张打出的牌给予{C:mult}+#1#{}倍率",
                    "选择盲注后，减益{C:attention}#3#{}张在牌组里",
                    "不是{C:attention}钢铁牌{}的牌",
                    "{C:inactive,s:0.8}(在{C:attention,s:0.8}#2#{C:inactive,s:0.8}个回合后进化)",
                }
            },
            j_poke_tinkaton = {
                name = "巨锻匠",
                text = {
                    "每张打出的牌给予{C:mult}+#1#{}倍率",
                    "选择盲注后，减益{C:attention}#3#{}张在牌组里",
                    "不是{C:attention}钢铁牌{}的牌",
                    "打出的{C:attention}钢铁牌{}会有{C:attention}玻璃牌{}的效果",
                }
            },
            j_poke_wiglett = {
                name = "海地鼠",
                text = {
                    "若出牌包含{C:attention}三条{}，获得{C:mult}+#3#{} 倍率",
                    "若出牌包含计分{C:attention}5{}、{C:attention}6{}或{C:attention}7{}，",
                    "获得{C:chips}+#2#{} 筹码",
                    "{C:inactive,s:0.8}(经过{C:attention,s:0.8}#1#{C:inactive,s:0.8}回合后进化)",
                }
            },
            j_poke_wugtrio = {
                name = "三海地鼠",
                text = {
                    "若出牌包含{C:attention}三条{}，获得{X:red,C:white} X#1# {} 倍率",
                    "若出牌包含计分{C:attention}5{}、{C:attention}6{}或{C:attention}7{}，",
                    "获得{C:chips}+#2#{} 筹码",
                }
            },
            j_poke_annihilape = {
                name = '弃世猴',
                text = {
                    "每张计分的{C:attention}2{}，{C:attention}3{}，{C:attention}5{}或{C:attention}7{}",
                    "给予{C:mult}+#1#{}倍率及{C:chips}+#2#{}筹码",
                    "加成会在每次出牌叠加，回合结束后重置",
                    "{C:inactive}（目前为{C:mult}+#3#{}{C:inactive}倍率 {C:chips}+#4#{C:inactive}筹码）",
                }
            },
            j_poke_dudunsparce = {
                name = '土龙节节',
                text = {
                    "{C:attention}+#1#{} 商店卡牌栏位",
                    "{C:attention}+#1#{} 商店补充包栏位",
                    "{C:attention}+#1#{} 商店优惠券栏位",
                }
            },
            j_poke_dudunsparce2 = {
                name = '土龙节节',
                text = {
                    "{C:attention}持有优惠券标签{}",
                    "{C:attention}+#1#{} 商店卡牌栏位",
                    "{C:attention}+#1#{} 商店补充包栏位",
                    "{C:attention}+#1#{} 商店优惠券栏位",
                }
            },
            j_poke_kingambit = {
                name = "仆斩将军",
                text = {
                  "{X:red,C:white}X#1#{} 倍率",
                  "若打出的牌中包含你牌组里",
                  "唯一的{C:attention}K{}，每张打出的",
                  "{C:attention}非人头牌{}在计分时给予此小丑牌",
                  "一半的{X:mult,C:white}X{}倍率",
                }
            },
            j_poke_farigiraf = {
              name = "奇麒麟",
              text = {
                "{C:attention}持有{} {C:spectral}神秘{}",
                "若出牌包含{C:attention}两对{}，",
                "首张和末张{C:attention}人头牌{}在计分时提供{X:mult,C:white}X#1#{} 倍率",
              }
            },
            j_poke_gimmighoul = {
                name = "索财灵 (宝箱形态)",
                text = {
                  "打出的 {C:attention}黄金牌{} ",
                  "计分时赚 {C:money}$#1#{} ",
                  "跳过{C:attention}补充包时{} ...?",
                  "{C:inactive,s:0.8}(在赚了或花费了 {C:money,s:0.8}$#2#{C:inactive,s:0.8}/$#3# 钱后进化){}",
                }
            },
            j_poke_gimmighoulr = {
                name = "索财灵 (徒步形态)",
                text = {
                    "赚一些{C:money}${}",
                    "{S:1.1,C:red,E:2}自毁{}",
                }
            },
            j_poke_gholdengo = {
                name = "赛富豪",
                text = {
                  "打出的 {C:attention}黄金牌{}  {C:red}花费{} {C:money}$#2#{}",
                  "计分时，这张牌的{X:mult,C:white}X{} 倍率乘以 {X:mult,C:white}X#3#",
                  "这张牌不会被削弱",
                  "{C:inactive}(当前 {X:mult,C:white}X#1#{C:inactive} 倍率)",
                  "{C:inactive,s:0.8}(回合结束后重置)",
                }
            },
            j_poke_missingno = {
                name = 'MissingNo.',
                text = {
                    "得到这张牌时，产生消耗牌?",
                    "产生{C:attention}#1#{}个{C:attention}标签{}?",
                }
            },
            j_poke_pokedex = {
                name = '宝可梦图鉴',
                text = {
                    "可能会出现同一进化链上的",
                    "{C:attention}宝可梦{}小丑牌",
                }
            },
            j_poke_rotomdex = {
                name = '洛托姆图鉴',
                text = {
                    "{C:attention}补充包{}价格降低，数值等于",
                    "你拥有的小丑牌中不同{C:pink}属性{}的数量",
                    "{C:inactive}(当前降低 {C:money}$#1#{C:inactive})",
                }
            },
            j_poke_everstone = {
                name = '不变之石',
                text = {
                    "宝可梦{C:attention}不能{}进化或变形",
                    "每张{C:attention}基础{}和{C:attention}幼年{}宝可梦会给予{X:mult,C:white} X#1# {}倍率",
                }
            },
            j_poke_tall_grass = {
                name = '草丛',
                text = {
                    "出牌时，有{C:green}#1#/#2#{}的几率",
                    "产生一张{C:chips}普通{}的宝可梦{C:attention}小丑牌{}",
                    "如果计分牌中包含{C:attention}百搭牌{}，必定触发",
                    "{C:inactive}（必须有空位）{}",
                }
            },
            j_poke_jelly_donut = {
                name = "饭团",
                text = {
                    "选择盲注后",
                    "产生一张{X:colorless,C:white}无色{}{C:pink}能量{}牌",
                    "{C:inactive}（剩余{C:attention}#1#{}{C:inactive}个回合）{}",
                }
            },
            j_poke_ruins_of_alph = {
                name = "阿露福遗迹",
                text = {
                    "当选择{C:attention}盲注{}时，",
                    "生成 {C:attention}3{} 只{C:dark_edition}负片{}版本的{C:attention}未知图腾{}",
                    "一个{C:attention}未知图腾{}触发后，会",
                    "与此小丑牌融合并提供 {C:mult}+#1#{} 倍率",
                    "卖掉此牌可获得{C:attention}奖励{}，",
                    "奖励取决于{C:attention}融合{}的未知图腾数量",
                    "{C:inactive}(当前 {C:mult}+#3#{C:inactive} 倍率和 {C:attention}#2#{C:inactive} 只未知图腾)",
                }
            },
            j_poke_unown_swarm = {
                name = "未知图腾群",
                text = {
                    "每张{C:purple}传说{}小丑牌提供",
                    "{C:mult}+#1#{} 倍率和 {X:mult,C:white}X#2#{} 倍率",
                }
            },
            j_poke_treasure_eatery = {
                name = "宝食堂",
                text = {
                    "{C:attention}属性变换{}",
                    "当选择盲注时，",
                    "将最左侧小丑牌的{C:pink}类型{}转换为最右侧小丑牌的{C:pink}类型{}",
                    "{C:inactive}({C:attention}#1#{C:inactive} 回合剩余){}",
                }
            },
            j_poke_rival = {
                name = "劲敌",
                text = {
                    "{C:mult}+#1#{} 倍率",
                    "若分数{C:attention}>#3#倍{}盲注要求，",
                    "{S:1.1,C:red,E:2}自毁{}并获得{C:money}$#2#{}",
                }
            },
            j_poke_bitter_rival = {
                name = "宿敌",
                text = {
                    "{C:mult}+#1#{} 倍率",
                    "若分数{C:attention}>#3#倍{}盲注要求，",
                    "{S:1.1,C:red,E:2}自毁{}并获得{C:money}$#2#{}",
                }
            },
            j_poke_champion = {
                name = "冠军",
                text = {
                    "{X:mult,C:white}X#1#{} 倍率",
                    "若分数{C:attention}>#3#倍{}盲注要求，",
                    "{S:1.1,C:red,E:2}自毁{}并获得{C:money}$#2#{}",
                }
            },
            j_poke_professor = {
                name = "博士",
                text = {
                    "{C:attention}#1#{}回合后，卖掉此牌",
                    "可生成一个{C:attention}初始{}标签",
                    "{C:inactive}(当前 {C:attention}#2#{C:inactive}/#1#){}",
                }
            },
            j_poke_mystery_egg = {
                name = "神秘蛋",
                text = {
                    "在{C:attention}#1#{}回合后孵化为",
                    "一只{C:attention}基础{}或{C:attention}幼年{}小丑牌，",
                    "若适用，附带{C:pink}能量注入{}",
                }
            },
            j_poke_billion_lions = {
                name = '十亿头狮子',
                text = {
                    "当选择盲注时，",
                    "销毁每张持有的{C:pink}类型{}小丑牌，",
                    "然后每张销毁的小丑牌提供{X:mult,C:white}X#2#{} 倍率",
                    "{S:1.1,C:red,E:2}狮子耗尽时自毁{}",
                    "{C:inactive}(当前{X:mult,C:white}X#1#{C:inactive} 倍率，{C:attention}#3#{C:inactive}头狮子)",
                }
            },
            --[[ Egg dynatext, not used right now
            -- 蛋的动态文本，当前未使用
            j_poke_mystery_egg = {
                name = "神秘蛋",
                text = {
                    "这个蛋还需要更多时间来孵化。",
                    "保守秘密。注意安全。",
                    "它看起来又冷又孤单。",
                    "跟着那只蛋！",
                    "它应该会发光吗？",
                    "我很好奇里面是什么？",
                    "它有时会在里面动。",
                    "这是大家的秘密。",
                    "不能放在三明治里。",
                }
            },--]]
        },
        Planet = {
           -- I wonder what a Pokémon planet would do?
           -- 我想知道宝可梦星球会做什么？
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "训练家牌套",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_poke_goodrod}#1#{}优惠券及",
                    "一张 {C:tarot,T:c_poke_pokeball}#2#{}牌",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "讣闻牌套",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_revenantsleeve = {
                name = "亡魂牌套",
                text = {
                    "所有卡牌有{C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "发亮牌套",
                text = {
                    "所有小丑牌生成时附有",
                    "随机的{C:pink}属性{}贴纸",
                    "并经过一次{C:pink}能量注入{}",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "念动力牌套",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_crystal_ball}#1#{}优惠券",
                    "和{C:attention}2{}张",
                    "{C:item,T:c_poke_twisted_spoon}#2#{}",
                }
            },
            sleeve_poke_ampedsleeve = {
                name = "增幅牌套",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_poke_energysearch}#1#{}优惠券",
                    "和一张",
                    "{C:pink,T:c_poke_double_rainbow_energy}#2#{}",
                }
            },
            sleeve_poke_futuresleeve = {
                name = "未来牌套",
                text = {
                    "{C:purple}+#1# 预见{}",
                }
            },
            sleeve_poke_stadiumsleeve = {
                name = "竞技场牌套",
                text = {
                    "开局时额外获得一张",
                    "{C:attention}奖励, 倍率, 百搭, 玻璃,",
                    "{C:attention}钢铁, 石头, 黄金{}, 和{C:attention}幸运{}牌",
                }
            },
            sleeve_poke_megasleeve = {
                name = "超级牌套",
                text = {
                    "开局时获得",
                    "{C:tarot,T:v_reroll_surplus}#2#{} 和 {C:tarot,T:v_reroll_glut}#3#{} 优惠券",
                    "以及一张 {C:spectral,T:c_poke_megastone}#1#{} 牌",
                    "{C:red}-#4#{} 商店栏位",
                }
            },
            sleeve_poke_vendingsleeve = {
                name = "贩卖机牌套",
                text = {
                    "每击败一个",
                    "{C:attention}奇数 Boss 盲注{}, 获得一个",
                    "{C:attention,T:tag_vremade_double}#1#",
                }
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "高级球",
                text = {
                    "产生一张随机",
                    "{C:attention}二次进化的宝可梦小丑{}牌",
                    "{C:inactive}（必须有空位）",
                },
            },
            c_poke_masterball = {
                name = "大师球",
                text = {
                    "产生一只",
                    "{C:legendary,E:1}传说中的{C:attention}宝可梦{}小丑牌",
                    "{C:inactive}（必须有空位）",
                },
            },
            c_poke_transformation = {
                name = "蜕变",
                text = {
                    "把选择的或最左边的",
                    "宝可梦进化到最高{C:attention}阶段{}",
                    "并为其{C:pink}注入能量{}",
                },
            },
            c_poke_megastone = {
                name = "超级石",
                text = {
                    "{C:attention}可重复使用{}",
                    "使宝可梦{C:attention}超级进化{}",
                    "或{C:attention}取消超级进化{}",
                    "卖出时{C:attention}取消超级进化{}",
                    "{C:inactive}（每回合可使用一次）",
                },
            },
            c_poke_obituary = {
                name = "讣告",
                text = {
                    "新增{C:pink}粉红{}蜡封",
                    "到选择的{C:attention}1{}张手牌中",
                }
            },
            c_poke_nightmare = {
                name = "梦魇",
                text = {
                    "摧毁一只选定的带{C:pink}属性{}的小丑牌，",
                    "并生成 {C:attention}2{} 张该小丑牌属性的",
                    "{C:dark_edition}负片{}版本{C:pink}能量{}牌",
                },
            },
            c_poke_revenant = {
                name = "亡魂",
                text = {
                    "新增 {C:item}白银{} 蜡封",
                    "到选择的 {C:attention}1{} 张手牌中",
                }
            },
            c_poke_double_rainbow_energy = {
                name = "双彩虹能量",
                text = {
                    "为最左边或选定的任意",
                    "属性{}的小丑牌{C:pink}注{C:red}入{C:attention}两{C:green}次{C:red}能{C:attention}量{}",
                    "本轮无法获得利息",
                    "{C:inactive}(每张小丑牌最多强化 {C:attention}#1#{C:inactive} 次)",
                },
            },
            c_poke_fake_banker = {
                name = '财富之愿',
                text = {
                    "{C:dark_edition}祈愿财富！",
                }
            },
            c_poke_fake_booster = {
                name = '选择之愿',
                text = {
                    "{C:dark_edition}祈愿更多选择！",
                }
            },
            c_poke_fake_power = {
                name = '力量之愿',
                text = {
                    "{C:dark_edition}祈愿力量！",
                }
            },
            c_poke_fake_negging = {
                name = '伙伴之愿',
                text = {
                    "{C:dark_edition}祈愿伙伴！",
                }
            },
            c_poke_fake_copy = {
                name = '增援之愿',
                text = {
                    "{C:dark_edition}祈愿增援！",
                }
            },
            c_poke_fake_fixer = {
                name = '净化之愿',
                text = {
                    "{C:dark_edition}祈愿更好的牌组！",
                }
            },
            c_poke_fake_masterball = {
                name = '召唤之愿',
                text = {
                    "{C:dark_edition}祈愿召唤传说中的宝可梦！",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "口袋标签",
                text = {
                    "获得一个免费的{C:pink}超级口袋包{}",
                    "{C:attention}第5赌注{}以上有{C:green}#1#%{}几率",
                    "含有{C:attention}超级石{}",
                    "{C:inactive,s:0.8}(几率不能提升){}",
                },
            },
            tag_poke_shiny_tag = {
                name = "异色标签",
                text = {
                    "下个在商店中的基础版本",
                    "小丑牌是免费的",
                    "并变为{C:colorless}异色{}",
                },
            },
            tag_poke_stage_one_tag = {
                name = "一次进化标签",
                text = {
                    "商店中有一个免费的",
                    "{C:attention}一次进化{}宝可梦小丑牌",
                },
            },
            tag_poke_safari_tag = {
                name = "狩猎标签",
                text = {
                    "商店中有一个免费的",
                    "{C:safari}狩猎{}宝可梦小丑牌",
                },
            },
            tag_poke_starter_tag = {
                name = "初始标签",
                text = {
                    "获得一个免费的{C:attention}初始包{}",
                },
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "精灵球",
                text = {
                    "产生一张随机",
                    "{C:attention}基础宝可梦小丑{}牌",
                    "{C:inactive}（必须有空位）",
                },
            },
            c_poke_greatball = {
                name = "超级球",
                text = {
                    "产生一张随机",
                    "{C:attention}一次进化{}宝可梦小丑牌",
                    "{C:inactive}（必须有空位）",
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "能量搜索",
                text = {
                    "{C:pink}+2{}能量上限",
                },
            },
            v_poke_energyresearch = {
                name = "能量研究",
                text = {
                    "{C:pink}+3{}能量上限",
                },
            },
            v_poke_goodrod = {
                name = "好钓竿",
                text = {
                    "{C:attention}补充包{}",
                    "有额外{C:attention}一{}张牌在里面",
                },
            },
            v_poke_superrod = {
                name = "厉害钓竿",
                text = {
                    "你可以{C:pink}保留{}",
                    "所有{C:attention}消耗品{}包里的牌",
                },
            },
        },
        Other = {

            Grass = {
                name = "属性",
                text = {
                  "{X:grass,C:white}草{}",
                }
            },
            Fire = {
                name = "属性",
                text = {
                  "{X:fire,C:white}火{}",
                }
            },
            Water = {
                name = "属性",
                text = {
                  "{X:water,C:white}水{}",
                }
            },
            Lightning = {
                name = "属性",
                text = {
                  "{X:lightning,C:black}电{}",
                }
            },
            Psychic = {
                name = "属性",
                text = {
                  "{X:psychic,C:white}超能力{}",
                }
            },
            Fighting = {
                name = "属性",
                text = {
                  "{X:fighting,C:white}格斗{}",
                }
            },
            Colorless = {
                name = "属性",
                text = {
                  "{X:colorless,C:white}一般{}",
                }
            },
            Dark = {
                name = "属性",
                text = {
                  "{X:dark,C:white}恶{}",
                }
            },
            Metal = {
                name = "属性",
                text = {
                  "{X:metal,C:white}钢{}",
                }
            },
            Fairy = {
                name = "属性",
                text = {
                  "{X:fairy,C:white}妖精{}",
                }
            },
            Dragon = {
                name = "属性",
                text = {
                  "{X:dragon,C:white}龙{}",
                }
            },
            Earth = {
                name = "属性",
                text = {
                  "{X:earth,C:white}地面{}",
                }
            },
            --Have you Heard? Bird is the wordddd
            -- 你听说了吗？鸟这个词……
            Bird = {
                name = "属性",
                text = {
                  "{X:bird,C:white}鸟{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            -- 用于像化石盔和菊石兽这类东西的信息队列
            ancient = {
                name = "原始之力",
                text = {
                    "效果取决于",
                    "牌型中{C:attention}#1#{}的数量",
                    "{C:inactive}（效果可{C:attention}累加{C:inactive}）",
                }
            },
            energize = {
                name = "能量注入",
                text = {
                    "永久提升小丑牌的",
                    "{C:mult}倍率{}, {C:chips}筹码{}, {C:money}${} 和 {X:mult,C:white}X{}倍率",
                    "数值",
                }
            },
            eitem = {
                name = "进化牌",
                text = {
                    "使用后，在下回合结束时",
                    "进化最左边或选中的",
                    "{C:attention}符合条件{}的小丑牌",
                }
            },
            --Infoqueue used by some Consumables
            -- 一些消耗品使用的信息队列
            hitem = {
                name = "持有牌",
                text = {
                    "由{C:attention}#1#{}使用",
                }
            },
            typechanger = {
                name = "属性变换",
                text = {
                    "给最左边或所选的小丑牌",
                    "贴上 {V:1}#1#{} 属性贴纸",
                }
            },
            typechangerother = {
                name = "属性变换",
                text = {
                    "贴上 {V:1}#1#{} 属性贴纸",
                }
            },
            typechangerpoke = {
                name = "属性变换",
                text = {
                    "生成时为自身",
                    "贴上 {V:1}#1#{} 属性贴纸",
                }
            },
            basic = {
                name = "基础",
                text = {
                    "未曾{C:attention}进化{}的",
                    "宝可梦小丑牌",
                    "{C:inactive,s:0.8}（不包含{C:attention,s:0.8}幼年{C:inactive,s:0.8}宝可梦",
                    "{C:inactive,s:0.8}和{C:purple,s:0.8}传说{C:inactive,s:0.8}宝可梦）",
                }
            },
            stage1 = {
                name = "一次进化",
                text = {
                    "已{C:attention}进化{}一次的",
                    "宝可梦小丑牌",
                }
            },
            stage2 = {
                name = "二次进化",
                text = {
                    "已{C:attention}进化{}两次的",
                    "宝可梦小丑牌",
                }
            },
            energy = {
                name = "已用能量",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "给予金钱的几率",
                text = {
                    "有{C:attention}#1#%{}的几率",
                    "获得额外{C:money}$1{}",
                }
            },
            mult_progress = {
                name = "获得的倍率进度",
                text = {
                    "{C:attention}#1#%{} 进度",
                    "使{C:mult}倍率{}增益",
                    "提升 {C:mult}+1{}",
                }
            },
            chip_progress = {
                name = "获得的筹码进度",
                text = {
                    "{C:attention}#1#%{} 进度",
                    "使{C:chips}筹码{}增益",
                    "提升 {C:chips}+1{}",
                }
            },
            money_progress = {
                name = "获得的金钱进度",
                text = {
                    "{C:attention}#1#%{} 进度",
                    "使{C:money}${}增益",
                    "提升 {C:money}1${}",
                }
            },
            availability = {
                name = "现身条件",
                text = {
                    "如果你有{C:attention}#1#{}，",
                    "这张牌就不会出现",
                }
            },
            baby = {
                name = "幼年",
                text = {
                    "出牌时，如果有{C:attention}非幼年{}",
                    "小丑牌在这张牌的右边",
                    "这张牌会被{C:attention}减益{}",
                }
            },
            nature = {
                name = "性格",
                text = {
                    "触发此小丑牌的",
                    "一个或一组独特的{C:attention}#1#{}点数",
                    "在小丑牌生成时确定",
                }
            },
            merge = {
                name = "融合",
                text = {
                    "移除该牌并将其",
                    "添加到此小丑牌中",
                    "右键查看已融合的牌",
                    "{C:inactive}(已融合的小丑牌无法被复制){}",
                }
            },
            rewards_ruins_of_alph = {
                name = "奖励",
                text = {
                    "{C:attention}#1#{} - {C:attention}狩猎地带{}宝可梦小丑牌",
                    "{C:attention}#2#{} - {C:attention}复制{}一张随机小丑牌",
                    "{C:attention}#3#{} - {C:attention}头脑风暴{}",
                    "{C:attention}#4#{} - {C:attention}未知图腾群和灵魂牌{}",
                    "{C:inactive}(奖励不累积){}",
                }
            },
            scry_cards = {
                name = "预见",
                text = {
                    "查看你牌库顶上的牌",
                }
            },
            mega_rule = {
                name = "限制",
                text = {
                    "每拥有一块{C:attention}超级石{}，",
                    "只能有一只宝可梦",
                    "{C:attention}超级进化{}",
                }
            },
            mega_poke = {
                name = "超级进化",
                text = {
                    "可以用{C:attention}超级石{}",
                    "来进行{C:attention}超级进化{}",
                }
            },
            mega_used_on = {
                name = "使用于",
                text = {
                    "{C:attention}#1#{}",
                }
            },
            split_mega = {
                name = "XY超级进化",
                text = {
                    "{C:attention}超级进化{}的结果和位置有关",
                    "最左边 - {C:attention}#1#{}",
                    "最右边 - {C:attention}#2#{}",
                }
            },
            playing_card_to_evolve = {
                name = "需求",
                text = {
                    "必须对{C:attention}游戏牌{}使用",
                    "才能进化",
                }
            },
            deli_gift = {
                name = "礼物",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:item}道具{} {C:attention}牌",
                    "{C:green}20%{} - {C:attention}优惠券标签",
                    "{C:green}15%{} - {C:dark_edition}多彩{} {C:attention}礼品卡",
                }
            },
            dril_treasure = {
                name = "宝物",
                text = {
                    "{C:green}30%{} - {C:attention}进化{C:item}之石   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}2颗进化{C:item}之石",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}5%{} - {C:money}$20{}             ",
                }
            },
            exdril_treasure = {
                name = "宝物",
                text = {
                    "{C:green}30%{} - {C:attention}进化{C:item}之石   ",
                    "{C:green}30%{} - {C:money}$5{}               ",
                    "{C:green}20%{} - {C:attention}2颗进化{C:item}之石",
                    "{C:green}15%{} - {C:money}$10{}              ",
                    "{C:green}4%{} - {C:money}$20{}             ",
                    "{C:green}1%{} - {C:attention}超级石     ",
                }
            },
            pickup = {
              name = "捡拾",
              text = {
                "{C:green}34%{} - {C:item}道具{}",
                "{C:green}25%{} - {C:item}进化道具",
                "{C:green}20%{} - {C:item}吃剩的东西",
                "{C:green}20%{} - {C:item}弯曲的汤匙",
                "{C:green}1%{} - {C:spectral}蜕变",
              }
            },
            poke_artist = {
              name = "画师",
              text = {
                "{V:1}#1#",
              }
            },
            pokeballs_group = {
              name = "精灵球",
              text = {
                "生成一只对应品质的",
                "宝可梦小丑牌",
              }
            },
            holding = {
                name = "携带道具",
                text = {
                    "这张牌附带",
                    "一张{C:attention}#1#{}牌",
                    "{C:inactive}（必须有空位）{}",
                }
            },
            holding_an = {
                name = "携带道具",
                text = {
                    "这张牌附带",
                    "一张{C:attention}#1#{}牌",
                    "{C:inactive}（必须有空位）{}",
                }
            },
            eeveelution = {
                name = "进化形态",
                text = {
                    "{C:attention}水之石{} - {X:water,C:white}水伊布{}",
                    "{C:attention}雷之石{} - {X:lightning,C:black}雷伊布{}",
                    "{C:attention}火之石{} - {X:fire,C:white}火伊布{}",
                    "{C:attention}日之石{} - {X:psychic,C:white}太阳伊布{}",
                    "{C:attention}月之石{} - {X:dark,C:white}月亮伊布{}",
                    "{C:attention}叶之石{} - {X:grass,C:white}叶伊布{}",
                    "{C:attention}冰之石{} - {X:water,C:white}冰伊布{}",
                    "{C:attention}光之石{} - {X:fairy,C:white}仙子伊布{}",
                }
            },
            poke_egg_tip = {
              name = "神秘蛋",
              text = {
                "它看起来冰冷又孤单。",
              }
            },
            poke_top_cards = {
              name = "顶部的牌",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "吸取",
              text = {
                "从小丑牌中移除出售价值",
                "并添加到自身，如果该小丑牌",
                "的出售价值大于{C:money}$1{}",
              }
            },
            poke_drain_item = {
              name = "吸取",
              text = {
                "从小丑牌中移除出售价值，",
                "如果该小丑牌的出售价值",
                "大于{C:money}$1{}",
              }
            },
            poke_volatile_left = {
              name = "左不稳定",
              text = {
                "以下能力只有当此牌是",
                "最左侧的小丑牌时才会触发",
                "{C:inactive}（无视其他{C:attention}不稳定{C:inactive}宝可梦的位置）",
              }
            },
            poke_volatile_right = {
              name = "右不稳定",
              text = {
                "以下能力只有当此牌是",
                "最右侧的小丑牌时才会触发",
                "{C:inactive}（无视其他{C:attention}不稳定{C:inactive}宝可梦的位置）",
              }
            },
            sketch = {
              name = "写生",
              text = {
                "复制小丑牌效果，直到被出售、销毁或复制其他能力为止",
                "复制的效果显示为提示信息",
                "并出现在宝可梦图鉴菜单中",
                "写生在复制小丑牌后重置",
              }
            },
            unlimited_energy_tooltip = {
              name = "无限能量",
              text = {
                "你可以对小丑牌使用",
                "任意次数的{C:pink}能量{}牌",
              }
            },
            precise_energy_tooltip = {
                name = "精准能量计量",
                text = {
                    "{s:0.8}在应用{C:pink,s:0.8}能量{}加成时，对所有数值使用{C:attention,s:0.8}小数{}",
                    "{s:0.8}{C:attention,s:0.8}关闭{}此选项时，将发生以下情况:{}",
                    "{C:attention}1. {X:mult,C:white,s:0.8}X{} {s:0.8}倍率 - 使用小数",
                    "{C:attention}2. {s:0.8}+ {C:mult,s:0.8}倍率{}和{C:chips,s:0.8}筹码{} - 四舍五入到最近的整数",
                    "{C:attention}3. {s:0.8}{C:mult,s:0.8}倍率增长{}和{C:chips,s:0.8}筹码增长{} - 小数部分显示为",
                    "{s:0.8}百分比，用于增加基础{C:mult,s:0.8}倍率{}和{C:chips,s:0.8}筹码{}",
                    "{C:attention}4. {C:money,s:0.8}${}{s:0.8} - 小数部分显示为百分比，",
                    "{s:0.8}作为获得额外{C:money,s:0.8}${}{s:0.8}的概率{}",
                    "{C:inactive,s:0.8}(非宝可梦小丑牌将始终使用精准计量){}",
                }
            },
            discovery_tooltip = {
              name = "探索内容",
              text = {
                "默认情况下，宝可梦模组的内容是未发现的。",
                "关闭此选项将发现所有模组内容。",
                "{C:red}发现所有内容后将无法撤销{}",
              }
            },
            pokemononly_tooltip = {
              name = "仅宝可梦",
              text = {
                "只会出现{C:attention}宝可梦{}小丑牌",
              }
            },
            gen1_tooltip = {
              name = "允许第一世代",
              text = {
                "第一世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen2_tooltip = {
              name = "允许第二世代",
              text = {
                "第二世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen3_tooltip = {
              name = "允许第三世代",
              text = {
                "第三世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen4_tooltip = {
              name = "允许第四世代",
              text = {
                "第四世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen5_tooltip = {
              name = "允许第五世代",
              text = {
                "第五世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen6_tooltip = {
              name = "允许第六世代",
              text = {
                "第六世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen7_tooltip = {
              name = "允许第七世代",
              text = {
                "第七世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen8_tooltip = {
              name = "允许第八世代",
              text = {
                "第八世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            gen9_tooltip = {
              name = "允许第九世代",
              text = {
                "第九世代的{C:attention}宝可梦{}小丑牌",
                "将会出现",
              }
            },
            hazards_on_tooltip = {
              name = "允许陷阱牌",
              text = {
                "会添加{C:purple}陷阱牌{}的",
                "{C:attention}宝可梦{}小丑牌将会出现",
              }
            },
            shinyplayingcard_tooltip = {
              name = "异色游戏牌",
              text = {
                "允许{C:attention}游戏牌{}",
                "拥有{C:dark_edition}异色{}版本",
              }
            },
            detailed_tooltips_tooltip = {
              name = "详细提示",
              text = {
                "所有宝可梦小丑牌的提示信息都将显示",
                "禁用此选项将移除大部分",
                "宝可梦小丑牌的额外信息提示框",
              }
            },
            previous_evo_stickers_tooltip = {
              name = "先前进化形态贴纸",
              text = {
                "获胜小丑牌的先前进化形态",
                "也会赢得当前局",
              }
            },
            legacycontent_tooltip = {
              name = "旧版内容",
              text = {
                "启用已被移除的",
                "旧版内容",
              }
            },
            jokecontent_tooltip = {
              name = "玩笑内容",
              text = {
                "启用作为玩笑而",
                "添加的内容",
              }
            },
            splashcard_tooltip = {
              name = "启动画面宝可梦牌",
              text = {
                "用一张随机的宝可梦小丑牌",
                "替换游戏启动时的卡牌",
              }
            },
            title_tooltip = {
              name = "宝可梦主题标题画面",
              text = {
                "用宝可梦主题版本",
                "替换常规的标题画面",
              }
            },
            altart_tooltip = {
              name = "替换美术",
              text = {
                "为特定的宝可梦小丑牌",
                "使用替换的美术素材",
              }
            },
            animation_tooltip = {
              name = "启用动画",
              text = {
                "为特定的宝可梦小丑牌",
                "启用动画形象",
              }
            },
            allowpokeballs_tooltip = {
              name = "允许精灵球",
              text = {
                "允许精灵球{C:item}道具{}出现",
              }
            },
            pokemaster_tooltip = {
              name = "宝可梦大师模式",
              text = {
                "已启用“仅宝可梦”模式",
                "额外的赌注等级已解锁",
              }
            },
            designed_by = {
              name = "设计者",
              text = {
                "{C:dark_edition}#1#{}",
              }
            },
            endless = {
              name = "可重复使用",
              text = {
                "使用时不消耗",
                "{C:inactive,s:0.8}（不能被",
                "{C:attention,s:0.8}弯曲的汤匙{C:inactive,s:0.8}生成）",
              }
            },
            sylveon_tag_pool = {
              name = "标签池",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            omastar_tag_pool = {
              name = "标签池",
              text = {
                "{C:money}#1#",
                "{C:money}#2#",
                "{C:money}#3#",
                "{C:money}#4#",
                "{C:money}#5#",
              }
            },
            safaridesc = {
                name = "狩猎地带",
                text = {
                    "只可以通过",
                    "{C:attention}进化{}或特定的{C:attention}精灵球道具{}",
                    "来获得此牌",
                }
            },

            --this key is extremely cursed xd
            --这个键值真是太邪门了 xd
            poke_pink_seal_seal = {
                name = "粉红蜡封",
                text = {
                    "如果此牌在{C:attention}第一次出牌{}时计分，",
                    "产生一张与你拥有的某个小丑牌",
                    "{C:attention}属性{}相同的{C:pink}能量{}牌",
                    "{C:inactive}（必须有空位）{}",
                },
            },
            
            --less cursed
            --不那么邪门了
            poke_silver_seal = {
                name = "白银蜡封",
                text = {
                    "生成一张{C:item}道具牌{}，",
                    "如果在计分时仍{C:attention}在手中{}，则被{C:attention}弃掉{}",
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
            -- 因为这些通常是默认发现的，所以可能没什么关系
            --But they COULD matter? Right? Right??????
            -- 但它们也可能有关系？对吧？对吧？？？？？
            undiscovered_energy = {
                name = "未发现",
                text = {
                    "在无种子比赛中",
                    "购买或使用此牌",
                    "来了解功用",
                }
            },
            undiscovered_item = {
                name = "未发现",
                text = {
                    "在无种子比赛中",
                    "购买或使用此牌",
                    "来了解功用",
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "特大口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "超级口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "特大口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "超级口袋包",
                text = {
                    "从{C:attention}#2#{}张{C:item}道具{}牌",
                    "和{C:attention}#3#{}张{C:pink}能量{}牌中选择{C:attention}#1#{}张",
                },
            },
            p_poke_pokepack_wish_pack = {
                name = "许愿包",
                text = {
                    "{C:dark_edition}许个愿吧！{}",
                },
            },
            p_poke_pokepack_starter_pack = {
                name = "初始包",
                text = {
                    "从{C:attention}#2#{}张牌中选择{C:attention}#1#只初始宝可梦{}",
                },
            },
            poke_hazards = {
                name = "陷阱",
                text = {
                    "当选择{C:attention}盲注{}时，",
                    "牌组中{C:attention}#1#{}张未强化的牌",
                    "将变为{C:attention}陷阱牌{}",
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
            c_poke_poke_master = "宝可梦大师",
            c_poke_nuzlocke = "Nuzlocke挑战",
            c_poke_goodasgold = "像金子一样好",
            c_poke_parenthood = "为人父母",
            c_poke_littlecup = "小小杯",
            c_poke_hammertime = "锤子时间",
            c_poke_lonesome = "孤独",
            c_poke_randomizer = "随机化挑战",
        },
        dictionary = {
            k_energy = "能量",
            k_item = "道具",
            k_poke_pocket_pack = "口袋包",
            k_poke_wish_pack = "许愿包",
            k_poke_starter_pack = "初始包",
            k_poke_gives = "给予",
            k_poke_ignores = "无视",
            k_poke_limit = "上限",
            k_poke_pp = "PP提升剂",

            k_poke_baby = "幼年",
            k_poke_safari = "狩猎地带",
            k_poke_mega = "超级",

            b_save = "保留",
            b_energy_cards = "能量牌",
            b_item_cards = "道具牌",

            --Mod Menu stuff
            -- 模组菜单相关
            poke_settings_header_required = "需要重启:",
            poke_settings_header_norequired = "无需重启:",
            poke_settings_pokemon_only = "仅宝可梦？",
            poke_settings_unlimited_energy = "无限能量？",
            poke_settings_shiny_playing_cards = "扑克牌可有异色版本？",
            poke_settings_pokemon_detailed_tooltips = "详细提示信息？",
            poke_settings_previous_evo_stickers = "先前进化形态贴纸？",
            poke_settings_jokers_only = "只用非宝可梦小丑牌？",
            poke_settings_no_evolutions = "禁止进化？",
            poke_settings_pokeballs = "允许精灵球？",
            poke_settings_pokedex_number = "显示图鉴号码？",
            poke_settings_pokemon_splash = "片头中显示随机的宝可梦牌？",
            poke_settings_pokemon_title = "宝可梦主题标题？",
            poke_settings_pokemon_gen_one = "允许第一世代？",
            poke_settings_pokemon_gen_two = "允许第二世代？",
            poke_settings_pokemon_gen_three = "允许第三世代？",
            poke_settings_pokemon_gen_four = "允许第四世代？",
            poke_settings_pokemon_gen_five = "允许第五世代？",
            poke_settings_pokemon_gen_six = "允许第六世代？",
            poke_settings_pokemon_gen_seven = "允许第七世代？",
            poke_settings_pokemon_gen_eight = "允许第八世代？",
            poke_settings_pokemon_gen_nine = "允许第九世代？",
            poke_settings_pokemon_hazards_on = "允许陷阱牌？",
            poke_settings_pokemon_precise_energy = "使用精准的能量刻度？",
            poke_settings_pokemon_discovery = "! 探索模式？",
            poke_settings_pokemon_altart = "异画牌？",
            poke_settings_pokemon_aprilfools = "玩笑内容？",
            poke_settings_pokemon_legacy = "旧版内容？",
            poke_settings_enable_animations = "启用动画？",
            poke_settings_pokemon_master = "宝可梦大师模式？",
            poke_settings_pokemon_spritesheet = "默认形象图纸 (重置单个)",
            poke_settings_pokemon_spritesheet_classic = "经典",
            poke_settings_pokemon_spritesheet_seriesa = "系列 A",

            poke_credits_actualcredits = "制作人员名单",
            poke_credits_thanks = "鸣谢",
            poke_credits_lead = "主导开发：",
            poke_credits_graphics = "图形设计：",
            poke_credits_quality_assurance_main = "品质保证：",
            poke_credits_developer = "开发者：",
            poke_credits_designer = "设计助理：",
            poke_credits_community_manager = "社群经理：",
            poke_credits_special_thanks = "特别鸣谢：",
            poke_credits_localization = "本地化：",
            poke_credits_sound = "音效工程师：",
            poke_credits_artist = "画师：",
            poke_credits_designer = "设计师：",

            poke_plus_pokeitem = "+1 道具",
            poke_plus_energy = "+1 能量",
            poke_plus_consumable = "+1 消耗品",
            poke_plus_shop = "+1 商店卡牌",
            poke_destroyed_ex = "摧毁！",
            poke_evolve_success = "进化了！",
            poke_transform_success = "变形了！",
            poke_evolve_level = "升级！",
            poke_tera = "太晶",
            poke_tera_ex = "太晶化！",
            poke_metal_ex = "钢化！",
            poke_dragon_ex = "龙化！",
            poke_energized_ex = "能量全满！",
            poke_round_plus_ex = "回合通过！",
            poke_unlimited_energy = "无限",
            poke_reroll_plural = "重置",
            poke_reroll_singular = "重置",

            --Some infoqueue/variable stuff
            -- 一些信息队列/变量
            farfetchd_infoqueue = "大葱鸭",
            cubone_marowak_infoqueue = "卡拉卡拉和嘎啦嘎啦",
            snorlax_infoqueue = "卡比兽",
            pokeball_variable = "精灵球",
            goodrod_variable = "好钓竿",
            pinkseal_variable = "粉红蜡封",
            silverseal_variable = "白银蜡封",
            twisted_spoon_variable = "弯曲的汤匙",
            double_rainbow_energy_variable = "双彩虹能量",
            megastone_variable = "超级石",

            --From Gastly Line
            -- 鬼斯家族
            poke_lick_ex = "舌舔！",
            poke_lick = "舌舔",
            --From Kingler
            -- 巨钳蟹
            poke_surf_ex = "冲浪！",
            --From Voltorb Line
            -- 霹雳电球家族
            poke_explosion_ex = "爆炸！",
            poke_boo_ex = "Boo！",
            --From Exeggutor
            -- 椰蛋树
            poke_solar_ex = "日光束！",
            poke_solar = "日光束",
            --From Pinsir
            -- 凯罗斯
            poke_pinsir_pin = "钉住！",
            poke_pinsir_remove_pin = "解钉！",
            --From Tangela line
            -- 蔓藤怪家族
            poke_tangela_bonus = "全部！",
            --Golbat And Crobat thingy
            -- 大嘴蝠和叉字蝠
            poke_screech_ex = "尖啸！",
            --Hoppip Line
            -- 毽子草家族
            poke_hop_ex = "跳！",
            poke_skip_ex = "蹦！",
            poke_jump_ex = "跃！",
            --From Bellossom
            -- 美丽花
            poke_petal_dance_ex = "花瓣舞！",
            poke_petal_dance = "花瓣舞",
            --From Scizor
            -- 巨钳螳螂
            poke_x_scissor_ex = "十字剪！",
            poke_x_scissor = "十字剪",
            --From Kingdra
            -- 刺龙王
            poke_twister_ex = "龙卷风！",
            --From Mime Jr.
            -- 魔尼尼
            poke_mime_ex = "模仿！",
            --From Magmortar
            -- 鸭嘴炎兽
            poke_fire_blast_ex = "大字爆炎！",
            --From Vikavolt
            -- 锹农炮虫
            --If it's not 100% accurate...
            -- 如果不是100%准确的话……
            poke_thunder_ex = "打雷！",
            poke_gift_ex = "礼物！",
            poke_drill_ex = "直冲钻！",
            poke_faint_ex = "倒下了！",
            poke_reveal_ex = "揭示！",
            poke_nido_ex = "尼多！",
            poke_disguise_intact = "画皮完好！已抵挡致命攻击！",
            poke_disguise_broken = "画皮已破！无法抵挡致命攻击！",
            poke_dig_ex = "挖洞！",
            poke_blazekick_ex = "火焰踢！",
            poke_darts_ex = "龙箭！",
            poke_none = "无",
            poke_dawn_info1 = "（下一手牌设置牌型）",
            poke_dawn_info2 = "（牌型已设置！）",
            poke_make_it_rain = "淘金潮！",
            poke_val_down = "价值下降！",
            poke_powder_ex = "细雪！",
            poke_future_sight = "预知未来！",
            poke_smell_ya = "回头再见！",
            poke_wowthree = "哇！三个！",
            poke_illusion = "…？",
            poke_crack_ex = "裂！",
            poke_shake_ex = "摇晃！",
            poke_closed_ex = "关闭！",
            poke_reload_ex = "装填！",
            poke_shadow_tag_ex = "踩影！",
            poke_flees_ex = "逃跑了！",
            poke_hidden_power_ex = "觉醒力量！",
            poke_nasty_plot_ex = "诡计！",
            poke_iron_tail_ex = "铁尾！",
            poke_autotomize_ex = "身体轻量化！",
            poke_highjumpkick_ex = "飞膝踢！",
            poke_water_gun_ex = "水枪！",
            poke_sky_attack_ex = "神鸟猛击！",

            poke_grass_badge = "草",
            poke_fire_badge = "火",
            poke_water_badge = "水",
            poke_lightning_badge = "电",
            poke_psychic_badge = "超能力",
            poke_fighting_badge = "格斗",
            poke_colorless_badge = "一般",
            poke_dark_badge = "恶",
            poke_metal_badge = "钢",
            poke_fairy_badge = "妖精",
            poke_dragon_badge = "龙",
            poke_earth_badge = "地面",
            poke_bird_badge = "鸟",

        },
        --These are the Labels
        -- 这些是标签
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        -- 就是像蜡封和版本在底部会有的那种徽章，就是这个了！
        labels = {
            poke_pink_seal_seal = "粉红蜡封",
            poke_silver_seal = "白银蜡封",

            poke_shiny = "异色",

            grass_sticker = "太晶",
            fire_sticker = "太晶",
            water_sticker = "太晶",
            lightning_sticker = "太晶",
            psychic_sticker = "太晶",
            fighting_sticker = "太晶",
            colorless_sticker = "太晶",
            dark_sticker = "太晶",
            metal_sticker = "太晶",
            fairy_sticker = "太晶",
            dragon_sticker = "太晶",
            earth_sticker = "太晶",

            k_poke_safari = "狩猎地带",
            k_poke_mega = "超级进化",
        },
        quips = {
          poke_lose_quip1 = {"也许宝可梦华丽大赛", "更适合你...",},
          poke_lose_quip2 = {"你看起来就像", "离了水的鲤鱼王！",},
          poke_lose_quip3 = {"你是不是忘了", "研究你的", "属性克制了？",},
          poke_lose_quip4 = {"好讨厌的感觉，", "我们又飞走了！",},
          poke_lose_quip5 = {"看来那个盲注", "效果拔群！",},
          poke_lose_quip6 = {"这局游戏化为灰烬了...",},
          poke_lose_quip7 = {"掌握手中的牌", "比抱怨没拿到的牌", "更重要！",},
          poke_lose_quip8 = {"最好快点去", "宝可梦中心！",},
          poke_lose_quip9 = {"需要复活药吗？",},
          poke_lose_quip10 = {"你的宝可币，","我分一半！",},
          poke_win_quip1 = {"真正的宝可牌大师！",},
          poke_win_quip2 = {"真正熟练的训练家", "会用他们最爱的宝可梦", "赢得胜利！",},
          poke_win_quip3 = {"下一步去哪儿，训练家？",},
          poke_win_quip4 = {"我可不想", "在竞技场上", "面对你！",},
          poke_win_quip5 = {"凭你的运气，", "我们的下一站", "应该是", "游戏城！",},
          poke_win_quip6 = {"你的技术已经进化了！",},
          poke_win_quip7 = {"欢迎来到", "名人堂！",},
          poke_win_quip8 = {"我们度过了一段", "冠军般的时光！",},
          poke_win_quip9 = {"真是一场传说的表现！",},
          poke_win_quip10 = {"这局游戏堪称神话！",},
        },
        tutorial = {
          poke_intro_1 = {
          "你好，我是 {C:attention}Jimbo 教授{}！",
          "欢迎来到{C:attention}宝可牌{}的世界！",
          },
        },
        v_dictionary = {
          poke_discards = "+#1# 弃牌次数",
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"打败Boss盲注后，{C:attention}+1{}小丑牌数量{C:inactive}（最多5个）"},
           ch_c_poke_nuzlocke = {"每个赌注的第一个商店必定有{C:attention}小丑包"},
           ch_c_apply_randomizer = {"宝可梦小丑牌会进化成随机的其他宝可梦"},
        },
    }
}
