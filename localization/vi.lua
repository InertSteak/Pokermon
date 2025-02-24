-- Welcome to vi.lua!
-- Credit: Shinosan a.k.a HuyCorn, Huythekiller, Lếc, david dang.


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
Misc Infoqueues (ancient, baby, eitem, Hệ, etc): Yes
Other (packs, stickers, etc): Yes
Misc: Yes
]]--


return {
    descriptions = {
        Back = {
            b_poke_pokemondeck = {
                name = "Bộ bài Huấn Luyện Viên",
                text = {
                    "Bắt đầu trận với",
                    "phiếu {C:tarot,T:v_poke_goodrod}#1#{}",
                    "và lá {C:tarot,T:c_poke_pokeball}#2#{}",
                } 
            },
            b_poke_telekineticdeck = {
                name = "Bộ bài Ngoại Cảm",
                text = {
                    "Bắt đầu trận với",
                    "phiếu {C:tarot,T:v_crystal_ball}#1#{}",
                    "và {C:attention}2{} bản sao",
                    "của {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
            --Fun fact: this and luminious deck had their descriptions mixed up
            b_poke_obituarydeck = {
                name = "Bộ bài Cáo Phó",
                text = {
                    "Mọi lá bài có một {C:dark_edition}#1#{}",
                } 
            },
            b_poke_luminousdeck = {
                name = "Bộ bài Chói Lọi",
                text = {
                    "Mọi Joker được tạo ra cùng với",
                    "nhãn {C:pink}Hệ{} ngẫu nhiên",
                    "và có {C:attention}+1{} {C:pink}Năng Lượng{}"
                }
            },
        },
        Blind = {
            bl_poke_cgoose = {
                name = "Chartreuse Chamber",
                text = {
                    "Một vài Hệ ngẫu nhiên bị",
                    "vô hiệu hoá mỗi tay bài",
                }, 
            },
        },
        Item = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Tạo ra một {C:attention}Joker{}",
                    "{C:attention}Cơ Bản{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Tạo ra một {C:attention}Joker{}",
                    "{C:attention}Cấp 1{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
            c_poke_moonstone = {
                name = "Nguyệt Thạch",
                text = {
                    "Xác suất {C:green}#2# trên #3#{} để",
                    "nâng level một",
                    "{C:attention}tay poker{} đã chọn", 
                    "{C:attention}Lá Tiến Hoá{}",
                    "{C:inactive}(Tay bài: {C:attention}#1#{Cinactive}){}"
                },
            },
            c_poke_sunstone = {
                name = "Thái Dương Thạch",
                text = {
                    "Cường hoá {C:attention}#1#{} lá đã chọn",
                    "thành {C:attention}Lá Tuỳ Chất{} và",
                    "{C:attention}ngẫu nhiên hoá{} bậc của chúng",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_waterstone = {
                name = "Thủy Thạch",
                text = {
                    "Cường hoá {C:attention}#1#{} lá đã chọn",
                    "thành lá {C:attention}Thưởng{}",
                    "Nếu đã là lá {C:attention}Thưởng{}",
                    "{C:attention}Gấp đôi{} tổng lượng chip của nó",
                    "{C:inactive}(Tối đa {C:chips}+#2#{C:inactive} Chip)",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_thunderstone = {
                name = "Lôi Thạch",
                text = {
    
                    "Thêm {C:attention}2 lá Vàng{} cùng bậc",
                    "với {C:attention}1{} lá đã chọn vào",
                    "bộ bài và bốc {C:attention}1{} lá lên tay",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_firestone = {
                name = "Hỏa Thạch",
                text = {
                    "Cường hoá {C:attention}#1#{} lá đã chọn thành {C:attention}Lá Nhân{}",
                    "và phá huỷ {C:attention}1{} lá ngẫu nhiên",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_leafstone = {
                name = "Mộc Thạch",
                text = {
                    "Xác suất {C:green}#1# trên #2#{} để",
                    "cường hoá mỗi lá trên tay thành",
                    "một {C:attention}Lá May Mắn{}",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_linkcable = {
                name = "Dây Nối",
                text = {
                    "Chọn {C:attention}#1#{} lá,",
                    "{C:attention}Tăng{} bậc lá bên {C:attention}trái",
                    "{C:attention}Giảm{} bậc lá bên {C:attention}phải",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_leftovers = {
                name = "Thừa Phẩm",
                text = {
                    "{C:attention}Tái Phẩm{}",
                    "Thêm {C:money}$#2#{} giá bán cho",
                    "Joker ở tít bên trái hoặc đã chọn",
                    "{C:inactive}(dùng một lần mỗi ván)",
                }
            },
            c_poke_leek = {
                name = "Tỏi Tây",
                text = {
                    "{C:attention}Tái Phẩm{}",
                    "Xác suất {C:green}#1# trên #2#{} để nhận",
                    "Ấn bản {C:dark_edition}Ánh Kim{}, {C:dark_edition}Lấp Lánh{}",
                    "hoặc {C:dark_edition}Đa Sắc{} cho chính nó",
                    "Xác suất {C:green}#1# trên #3#{} {S:1.1,C:red,E:2}tự huỷ{}",
                    "{C:inactive}(Chỉ dùng một lần mỗi ván)",
                }
            },
            c_poke_thickclub = {
                name = "Chày Xương",
                text = {
                    "{C:attention}Tái Phẩm{}",
                    "Vĩnh viễn thêm {C:chips}+#2#{} Chip",
                    "cho {C:attention}#1#{} lá đã chọn và",
                    "cường hoá nó thành {C:attention}Đá{} nếu",
                    "nó đã cho thêm Chip",
                    "{C:inactive}(Chỉ dùng một lần mỗi ván)",
                }
            },
            c_poke_teraorb = {
                name = "Thái Tinh Châu",
                text = {
                    "Thêm {C:attention}+1{} {C:pink}Năng Lượng{}",
                    "cho Joker đã chọn hoặc ở tít bên trái{}",
                    "{C:attention}Hoán Hệ{}"
                },
            },
            c_poke_metalcoat = {
                name = "Kim Thuẫn",
                text = {
                    "Tạo một bản sao {C:attention}Thép{} của",
                    "{C:attention}1{} lá đã chọn",
                    "{C:attention}Hoán Hệ{}"
                },
            },
            c_poke_dragonscale = {
                name = "Long Lân",
                text = {
                    "Tạo tối đa {C:attention}3{} {C:item}Vật Phẩm{}",
                    "hoặc lá {C:pink}Năng Lượng{} ngẫu nhiên",
                    "{C:attention}Hoán Hệ{}",
                    "{C:inactive}(Phải có ô trống){}"
                },
            },
            c_poke_kingsrock = {
                name = "Thạch Vương",
                text = {
                    "Biến đổi {C:attention}#1#{} lá đã chọn",
                    "thành một lá {C:attention}Già{}",
                    "{C:attention}Lá Tiến Hoá{}",
                },
            },
            c_poke_upgrade = {
                name = "Thăng Cấp",
                text = {
                    "Cho {C:attention}#1#{} lá đã chọn",
                    "một {C:attention}cường hoá{} ngẫu nhiên",
                    "{C:attention}Lá Tiến Hoá{}",
                }
            },
            c_poke_dubious_disc = {
                name = "Đĩa Đáng Ngờ",
                text = {
                    "Ngẫu nhiên hoá hoặc loại bỏ {C:attention}cường hoá{}",
                    "khỏi tất cả lá bài giữ trên tay",
                    "{C:attention}Lá Tiến Hoá{}",
                    "{C:inactive}(Bao gồm lá chưa cường hoá){}",
                }
            },
            c_poke_icestone = {
                name = "Băng Thạch",
                text = {
                    "Cường hoá {C:attention}#1#{} lá đã chọn",
                    "thành {C:attention}Lá Kính{}",
                    "Xác suất {C:green}#2# trên #3#{} cho mỗi",
                    "lá đã chọn để {C:attention}vỡ vụn{}",
                    "{C:attention}Lá Tiến Hoá{}",
                }
            },
            c_poke_shinystone = {
                name = "Minh Thạch",
                text = {
                    "Thêm ấn bản {C:dark_edition}Ánh Kim{}, {C:dark_edition}Lấp Lánh{},",
                    "hoặc {C:dark_edition}Đa Sắc{} cho {C:attention}1{} lá đã",
                    "chọn trên tay và {C:attention}Suy Giảm{} {C:money}$#2#{}",
                    "từ mỗi Joker",
                    "{C:attention}Lá Tiến Hoá{}",
                }
            },
            c_poke_twisted_spoon = {
                name = "Thìa Xoắn",
                text = {
                    "Tạo ra lá {C:item}Vật Phẩm{} hoặc",
                    "lá {C:pink}Năng Lượng{} gần nhất",
                    "được dùng trong trận này",
                    "{s:0.8}Ngoại trừ {s:0.8,C:item}Thìa Xoắn và Tái Phẩm"
                }
            },
            c_poke_prismscale = {
                name = "Vảy Mỹ Lệ",
                text = {
                    "Chuyển đổi {C:attention}#2#{} lá ngẫu nhiên",
                    "{C:attention}giữ{} trên tay thành {C:attention}chất{}",
                    "của {C:attention}#1#{} lá đã chọn",
                    "{C:attention}Lá Tiến Hoá{}"
                }
            },
            c_poke_duskstone = {
                name = "Đá Hoàng Hôn", -- "Hoàng Hôn Thạch" dễ gây hiểu lầm
                text = {
                    "Nhận {C:money}$#1#{} nếu",
                    "được sử dụng trong {C:attention}#2#{} ván",
                    "sau khi bạn có lá này",
                    "{C:attention}Lá Tiến Hoá{}",
                    "{C:inactive}(Nhận {C:money}${C:inactive} bắt đầu từ Ván {C:attention}#3#{C:inactive})"
                }
            },
            c_poke_dawnstone = {
                name = "Đá Bình Minh", -- với lí do trên, không dịch là "Thạch" ở đây
                text = {
                    "Nhận {C:money}${} bằng {c:attention}hai{} lần",
                    "hệ số {C:mult}Nhân{} của {C:attention}#1#{}",
                    "{C:inactive}#4#{}",
                    "{C:attention}Lá Tiến Hoá{}",
                    "{C:inactive}(Hiện tại là {C:money}$#2#{C:inactive}/Tối đa $40)",
                }
            },
        },
        Energy = {
            c_poke_grass_energy = {
                name = "Mộc Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Cỏ{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_fire_energy = {
                name = "Hỏa Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Hỏa{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_water_energy = {
                name = "Thủy Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Thủy{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_lightning_energy = {
                name = "Lôi Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Lôi{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_psychic_energy = {
                name = "Tâm Linh Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Tâm Linh{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_fighting_energy = {
                name = "Giác Đấu Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Giác Đấu{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_colorless_energy = {
                name = "Vô Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "của lá Joker ở tít bên trái hoặc đã chọn nếu có thể",
                    "Tác dụng một nửa so với ",
                    "các lá Joker {C:attention}Có Màu{}",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)"
                },
            },
            c_poke_darkness_energy = {
                name = "Ám Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Bóng tối{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_metal_energy = {
                name = "Thiếc Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Thiếc{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_fairy_energy = {
                name = "Tiên Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Tiên{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            --Dragon deez
            c_poke_dragon_energy = {
                name = "Long Lực",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Rồng{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_earth_energy = {
                name = "Địa Năng",
                text = {
                    "Vĩnh viễn tăng giá trị {C:attention}ghi điểm{}",
                    "và {C:money}${} của Joker hệ {C:attention}Thổ{} ở tít",
                    "bên trái hoặc đã chọn nếu có thể",
                    "{C:inactive}(Tăng tối đa {C:attention}#1#{C:inactive} nấc mỗi Joker)",
                },
            },
            c_poke_emergy = {
                name = "Măng Lượng",
                text = {
                    "Tạo ra {C:attention}1{} lá {C:green}Năng Lượng",
                    "{C:dark_edition}Âm Bản{} ngẫu nhiên cho mỗi",
                    "{C:attention}Joker Vui Nhộn{} hoặc {C:legendary}Joker M{}"
                },
            },
        },
        Edition = {
            e_poke_shiny = {
                name = "Shiny",
                label = "Shiny",
                text = {
                    "{C:attention}+1{} ô Gói Bài",
                    "có sẵn trong shop",
                }
            },
        },
        Enhanced = {
            --No enchanced cards? kind of surprising ngl
        },
        Joker = {
            j_poke_bulbasaur = {
                name = "Bulbasaur",
                text = {
                    "{C:attention}+#4#{} lá giữ trong tay",
                    "Nhận {C:money}$#1#{} cho mỗi lá",
                    "{C:attention}#3#{} giữ trong tay",
                    "{C:inactive,s:0.8}(Bậc thay đổi mỗi ván){}",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức nhận được $#2#{C:inactive,s:0.8}/{C:money,s:0.8}$16{C:inactive,s:0.8})",
                } 
            },
            j_poke_ivysaur = {
                name = "Ivysaur",
                text = {
                    "{C:attention}+#3#{} lá giữ trong tay",
                    "Nhận {C:money}$#1#{} hoặc {C:money}$#5#{} cho mỗi",
                    "lá {C:attention}#4#{} giữ trong tay",
                    "{C:inactive,s:0.8}(Bậc thay đổi mỗi ván){}",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức nhận được $#2#{C:inactive,s:0.8}/{C:money,s:0.8}$16{C:inactive,s:0.8} earned)",
                } 
            },
            j_poke_venusaur = {
                name = "Venusaur",
                text = {
                    "{C:attention}+#3#{} lá giữ trong tay",
                    "Nhận {C:money}$#1#{} cho mỗi",
                    "lá {C:attention}#4#{} giữ trong tay",
                    "{C:inactive,s:0.8}(Bậc thay đổi mỗi ván){}",
                }
            },
            j_poke_mega_venusaur = {
                name = "Mega Venusaur",
                text = {
                    "{C:attention}+#1#{} lá giữ trong tay",
                }
            },
            j_poke_charmander = {
                name = "Charmander",
                text = {
                    "{C:red}+#4#{} lượt bỏ bài",
                    "Thêm {C:mult}+#2#{} Nhân mỗi tay đã chơi",
                    "khi còn {C:attention}#3#{} lượt bỏ bài",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+16{C:inactive,s:0.8} Nhân)",
                } 
            },
            j_poke_charmeleon = {
                name = "Charmeleon",
                text = {
                    "{C:red}+#4#{} lượt bỏ bài",
                    "Thêm {C:mult}+#2#{} Nhân mỗi tay đã chơi",
                    "khi còn {C:attention}#3#{} lượt bỏ bài",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+36{C:inactive,s:0.8} Nhân)",
                }
            },
            j_poke_charizard = {
                name = "Charizard",
                text = {
                    "{C:red}+#4#{} lượt bỏ bài, {C:mult}+#1#{} Nhân",
                    "{X:mult,C:white} X#2# {} Nhân khi còn {C:attention}#3#{} lượt bỏ bài",
                } 
            },
            j_poke_mega_charizard_x = {
                name = "Mega Charizard X",
                text = {
                    "{X:mult,C:white} X#1# {} Nhân khi còn {C:attention}#2#{} lượt bỏ bài",
                } 
            },
            j_poke_mega_charizard_y = {
                name = "Mega Charizard Y",
                text = {
                    "{C:red}+#1#{} lượt bỏ bài",
                } 
            },
            j_poke_squirtle = {
                name = "Squirtle",
                text = {
                    "{C:chips}+#3#{} tay bài",
                    "Thêm {C:chips}+#2#{} Chip cho mỗi tay bài",
                    "còn lại ở cuối ván",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:chips,s:0.8}+32{C:inactive,s:0.8} Chip)",
                } 
            },
            j_poke_wartortle = {
                name = "Wartortle",
                text = {
                    "{C:chips}+#3#{} tay bài",
                    "Thêm {C:chips}+#2#{} Chip cho mỗi tay bài",
                    "còn lại ở cuối ván",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:chips,s:0.8}+72{C:inactive,s:0.8} Chip)",
                } 
            },
            j_poke_blastoise = {
                name = "Blastoise",
                text = {
                    "{C:chips}+#3#{} tay bài, {C:chips}+#1#{} Chip",
                    "{C:chips}+#2#{} Chip cho mỗi tay còn lại",
                } 
            },
            j_poke_mega_blastoise = {
                name = "Mega Blastoise",
                text = {
                    "{C:chips}+#2#{} tay bài",
                } 
            },
            j_poke_caterpie = {
                name = "Caterpie",
                text = {
                    "{C:mult}+#1#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_metapod = {
                name = "Metapod",
                text = {
                    "{C:mult}+#1#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_butterfree = {
                name = "Butterfree",
                text = {
                    "{C:mult}+#1#{} Nhân",
                } 
            },
            j_poke_weedle = {
                name = "Weedle",
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_kakuna = {
                name = "Kakuna",
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_beedrill = {
                name = "Beedrill",
                text = {
                    "{C:chips}+#1#{} Chip"
                } 
            },
            j_poke_mega_beedrill = {
                name = "Mega Beedrill",
                text = {
                    "{C:chips}+#1#{} Chip",
                } 
            },
            j_poke_pidgey = {
                name = "Pidgey",
                text = {
                    "Mọi lá {C:planet}Hành Tinh{} và {C:planet}Gói Thiên Thể{}",
                    "trong shop tiết kiệm được {C:money}$2{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_pidgeotto = {
                name = "Pidgeotto",
                text = {
                    "Mọi lá {C:planet}Hành Tinh{} và {C:planet}Gói Thiên Thể{}",
                    "trong shop tiết kiệm được {C:money}$3{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_pidgeot = {
                name = "Pidgeot",
                text = {
                    "Mọi lá {C:planet}Hành Tinh{} và {C:planet}Gói Thiên Thể{}",
                    "trong shop đều {C:attention}miễn phí{}",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Nhận {C:money}$#1#{} khi một lá {C:planet}Hành Tinh{} được dùng"
                } 
            },
            j_poke_mega_pidgeot = {
                name = "Mega Pidgeot",
                text = {
                    "Lá {C:planet}Hành Tinh{} cho",
                    "thêm {C:attention}#1#{} level",
                } 
            },
            j_poke_rattata = {
                name = "Rattata",
                text = {
                    "Tái kích lá {C:attention}đầu tiên{} ghi điểm",
                    "thêm {C:attention}#1#{} lần",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_raticate = {
                name = "Raticate",
                text = {
                    "Tái kích lá ghi điểm {C:attention}đầu tiên{}",
                    "và {C:attention}thứ hai{} thêm {C:attention}#1#{} lần",
                }
            },
            j_poke_spearow = {
                name = "Spearow",
                text = {
                    "Sau khi chơi {C:attention}#2#{} {C:inactive}[#3#]{} lá ghi điểm",
                    "nâng level {C:attention}tay poker{} sẽ chơi kế tiếp",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_fearow = {
                name = "Fearow",
                text = {
                    "Sau khi chơi {C:attention}#1#{} {C:inactive}[#2#]{} lá ghi điểm",
                    "nâng level {C:attention}tay poker{} sẽ chơi kế tiếp",
                }
            },
            j_poke_ekans = {
                name = "Ekans",
                text = {
                    "{C:mult}+#1#{} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}Sảnh{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_arbok = {
                name = "Arbok",
                text = {
                    "{C:mult}+#1#{} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}Sảnh{}",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tạo ra lá {C:attention}Tarot{} nếu",
                    "Sảnh chứa {C:attention}Át{}"
                } 
            },
            j_poke_pikachu = {
                name = "Pikachu",
                text = {
                    "Nhận {C:money}$#1#{} cho mỗi lá Joker",
                    "đang sở hữu ở cuối ván",
                    "{C:inactive,s:0.8}(Tối đa {C:money,s:0.8}$10{C:inactive,s:0.8})",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Lôi Thạch {C:inactive,s:0.8})"
                }
            },
            j_poke_raichu = {
                name = "Raichu",
                text = {
                    "Thêm {C:dark_edition}Âm Bản{} ở cuối ván",
                    "nếu bạn có ít nhất {C:money}$#2#{}",
                    "{C:inactive,s:0.8}(Tăng lên với mỗi Raichu bạn có){}",
                    "Nhận {C:money}$#1#{} cho mỗi Joker",
                    "bạn có ở cuối ván",
                    "{C:inactive,s:0.8}(Tối đa {C:money,s:0.8}$#3#{C:inactive,s:0.8})"
                } 
            },
            j_poke_sandshrew = {
                name = "Sandshrew",
                text = {
                    "{C:chips}+#2#{} Chip cho mỗi lá {C:attention}Kính",
                    "trong cả bộ bài",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{V:1}Thêm một bản sao của lá {C:attention,V:1}Kính{V:1} đầu tiên",
                    "bị vỡ lên tay mỗi ván",
                    "{C:inactive}(Hiện tại là {C:chips}+#3#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_sandslash = {
                name = "Sandslash",
                text = {
                    "{C:chips}+#1#{} Chip cho mỗi lá {C:attention}Cỏ{}",
                    "trong cả bộ bài",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{V:1}Thêm một bản sao của lá {C:attention,V:1}Kính{V:1} đầu tiên",
                    "bị vỡ lên tay mỗi ván",
                    "{C:inactive}(Hiện tại là {C:chips}+#2#{C:inactive} Chip)",
                } 
            },
            j_poke_nidoranf = {
                name = "Nidoran F",
                text = {
                    "Mỗi lá {C:attention}Đầm{} giữ trong tay",
                    "cho {C:chips}+#1#{} Chip",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_nidorina = {
                name = "Nidorina",
                text = {
                    "Mỗi lá {C:attention}Đầm{} giữ trong tay",
                    "cho {C:chips}+#1#{} Chip",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Nguyệt Thạch{C:inactive,s:0.8} card)"
                } 
            },
            j_poke_nidoqueen = {
                name = "Nidoqueen",
                text = {
                    "{C:attention}+#2#{} lá giữ trong tay",
                    "Mỗi lá {C:attention}Đầm{} giữ trong tay",
                    "cho {C:chips}+#1#{} Chip",
                } 
            },
            j_poke_nidoranm = {
                name = "Nidoran M",
                text = {
                    "Mỗi lá {C:attention}Già{} giữ trong tay",
                    "cho {C:mult}+#1#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_nidorino = {
                name = "Nidorino",
                text = {
                    "Mỗi lá {C:attention}Già{} giữ trong tay",
                    "cho {C:mult}+#1#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Nguyệt Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_nidoking = {
                name = "Nidoking",
                text = {
                    "{C:attention}+#2#{} lá giữ trong tay",
                    "Mỗi lá {C:attention}Già{} giữ trong tay",
                    "cho {C:mult}+#1#{} Nhân",
                } 
            },
            j_poke_clefairy = {
                name = "Clefairy",
                text = {
                    "Lá {C:clubs}#2#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Nguyệt Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_clefable = {
                name = "Clefable",
                text = {
                    "Khi ghi điểm, lá {C:clubs}#2#{} đã chơi",
                    "ghi thêm {C:mult}+#1#{} Nhân cho mỗi lá {C:clubs}#2#{}",
                    "đã ghi điểm ván này",
                    "{C:inactive,s:0.8}(Nếu chơi 5 lá Tép, mỗi lá ghi thêm {C:mult,s:0.8}+5{C:inactive,s:0.8} Nhân)",
                    "{C:inactive}(Hiện tại là {C:mult}+#3#{C:inactive} Nhân)"
                } 
            },
            j_poke_vulpix = {
                name = "Vulpix",
                text = {
                    "Xác suất {C:green}#1# trên #2#{} cho mỗi",
                    "lá {C:attention}9{} đã chơi để tạo ra một",
                    "lá {C:attention}Tarot{} khi ghi điểm",
                    "{C:inactive,s:0.8}(Phải có ô trống)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Hỏa Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_ninetales = {
                name = "Ninetales",
                text = {
                    "{C:attention}Giữ{} Thầy Đồng {C:dark_edition}Âm Bản{}",
                    "Xác suất {C:green}#1# trên #2#{} cho mỗi lá 9",
                    "đã chơi để tạo ra một lá {C:attention}Tarot{}",
                    "hoặc {C:planet}Hành Tinh{} khi ghi điểm",
                    "{C:inactive,s:0.8}(Phải có ô trống)",
                } 
            },
            j_poke_jigglypuff = {
                name = "Jigglypuff",
                text = {
                    "Lá {C:spades}#2#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Nguyệt Thạnh{C:inactive,s:0.8})"
                } 
            },
            j_poke_wigglytuff = {
                name = "Wigglytuff",
                text = {
                    "Lá {C:spades}#3#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân, {C:chips}+#2#{} Chip",
                    "và tổng số chip của nó khi ghi điểm",
                } 
            },
            j_poke_zubat = {
                name = "Zubat",
                text = {
                    "{C:mult}+#1#{} Nhân cho mỗi lá Cường Hoá",
                    "trong cả bộ bài",
                    "{C:inactive}(Hiện tại là {C:mult}+#2#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức #4#/{C:attention,s:0.8}#3#{C:inactive,s:0.8} lá Cường Hoá)",
                }
            },
            j_poke_golbat = {
                name = "Golbat",
                text = {
                    "Thêm {C:chips}+#4#{} cho mỗi lá {C:attention}Thưởng{} / {C:attention}Đá{} ghi điểm",
                    "{C:mult}+#2#{} cho mỗi lá {C:attention}Nhân{} / {C:attention}Tuỳ Chất{} ghi điểm",
                    "{X:red,C:white}X#6#{} cho mỗi lá {C:attention}Thép{} / {C:attention}Cỏ{} ghi điểm",
                    "Nhận {C:money}$#8#{} cho mỗi lá {C:attention}Vàng{} / {C:attention}May Mắn{} ghi điểm",
                    "Sau đó loại bỏ {C:dark_edition}Cường Hoá{} khỏi lá ghi điểm",
                    "{C:inactive}(Hiện tại là {C:chips}+#3#{C:inactive}, {C:Nhân}+#1#{C:inactive}, {X:red,C:white}X#5#{C:inactive}, {C:money}$#7#{C:inactive} cuối ván)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức #9#/{C:attention,s:0.8}20{C:inactive,s:0.8} Cường Hoá đã ăn)",
                } 
            },
            j_poke_oddish = {
                name = "Oddish",
                text = {
                    "Lá bậc {C:attention}Lẻ{} đã chơi",
                    "cho {C:mult}+#1#{} hoặc {C:mult}+#2#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_gloom = {
                name = "Gloom",
                text = {
                    "Lá bậc {C:attention}Lẻ{} đã chơi",
                    "cho {C:mult}+#1#{} hoặc {C:mult}+#2#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Mộc/Thái Dương Thạch{C:inactive,s:0.8})",
                } 
            },
            j_poke_vileplume = {
                name = "Vileplume",
                text = {
                    "Lá bậc {C:attention}Lẻ{} đã chơi",
                    "cho {C:mult}+#2#{} Nhân hoặc {X:mult,C:white}X#1#{} Nhân",
                    "khi ghi điểm",
                } 
            },
            j_poke_paras = {
                name = "Paras",
                text = {
                    "{C:mult}+#2#{} Nhân mỗi tay bài",
                    "đã chơi chứa {C:attention}Thú{}",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+8{C:inactive,s:0.8} Nhân)",
                }  
            },
            j_poke_parasect = {
                name = "Parasect",
                text = {
                    "{C:mult}+#2#{} Nhân mỗi tay bài",
                    "đã chơi chứa {C:attention}Thú{}",
                    "{C:mult}-#3#{} Nhân mỗi tay bài",
                    "đã chơi không chứa nó",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                } 
            },
            j_poke_venonat = {
                name = "Venonat",
                text = {
                    "Thêm {C:attention}#1#{} cho mọi {C:green,E:1,S:1.1}xác suất",
                    "{C:attention}được liệt kệ",
                    "{C:inactive}(VD: {C:green}1 trên 6{C:inactive} -> {C:green}2 trên 6{C:inactive})",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_venomoth = {
                name = "Venomoth",
                text = {
                    "Thêm {C:attention}#1#{} cho mọi {C:green,E:1,S:1.1}xác suất",
                    "{C:attention}được liệt ",
                    "{C:inactive}(VD: {C:green}1 trên 6{C:inactive} -> {C:green}3 trên 6{C:inactive})"
                } 
            },
            j_poke_diglett = {
                name = "Diglett",
                text = {
                    "{C:chips}+#2#{} Chip nếu tay bài",
                    "đã chơi chứa {C:attention}Sám Chi{}",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{C:mult}+#3#{} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}2{}, {C:attention}3{}, or {C:attention}4{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_dugtrio = {
                name = "Dugtrio",
                text = {
                    "{C:chips}+#2#{} Chip nếu tay bài",
                    "đã chơi chứa {C:attention}Sám Chi{}",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{X:red,C:white} X#1# {} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}2{}, {C:attention}3{}, hoặc {C:attention}4{}",
                } 
            },
            j_poke_meowth = {
                name = "Meowth",
                text = {
                    "Nhận {C:money}$#1#{}",
                    "ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_persian = {
                name = "Persian",
                text = {
                    "Nhận {C:money}${} ở cuối ván",
                    "bằng {C:attention}hai lần{} giá bán", 
                    "của {C:attention}Joker{} ở tít bên trái",
                    "{C:inactive,s:0.8}(Ngoại trừ chính nó)",
                    "{C:inactive}(Hiện tại là {C:money}$#1#{C:inactive}, Tối đa {C:money}$15{C:inactive})",
                } 
            },
            j_poke_psyduck = {
                name = "Psyduck",
                text = {
                    "Nếu tay bài đã chơi chỉ chứa",
                    "một {C:attention}lá mặt{}, nhận {C:money}$#1#{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_golduck = {
                name = "Golduck",
                text = {
                    "Nếu tay bài đã chơi chỉ chứa",
                    "1 {C:attention}lá mặt{}, nhận {C:money}$#1#{} và biến",
                    "đổi nó thành lá {C:attention}Vàng{} khi ghi điểm"
                } 
            },
            j_poke_mankey = {
                name = "Mankey",
                text = {
                    "Lá {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, hoặc {C:attention}7{} đã chơi",
                    "ghi thêm {C:mult}+#1#{} Nhân và {C:chips}+#2#{} Chip khi tính điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            --anyways, how's your day been? i'm doing fine myself
            --I'm doing pretty well. We had a snow day yesterday.
            --Me too, but it is a cold day.
            j_poke_primeape = {
                name = "Primeape",
                text = {
                    "Lá {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, hoặc {C:attention}7{} đã chơi",
                    "ghi thêm {C:mult}+#1#{} Nhân và {C:chips}+#2#{} Chip khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau kích hoạt #3#/{C:attention,s:0.8}25{C:inactive,s:0.8} lần)"
                } 
            },
            j_poke_growlithe = {
                name = "Growlithe",
                text = {
                    "{C:mult}+#1#{} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}Thùng{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Hỏa Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_arcanine = {
                name = "Arcanine",
                text = {
                    "{X:red,C:white} X#1# {} Nhân nếu tay bài",
                    "đã chơi chứa {C:attention}Thùng{}",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tạo ra lá {C:attention}Tình Nhân{}",
                    "khi {C:attention}Blind{} được chọn"
                } 
            },
            j_poke_poliwag = {
                name = "Poliwag",
                text = {
                    "Các lá {V:1}#3#{} đã chơi cho",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "Chất thay đổi sau khi ghi điểm",
                    "{C:inactive,s:0.8}(#4#, #5#, #6#, #7#){}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_poliwhirl = {
                name = "Poliwhirl",
                text = {
                    "Các lá {V:1}#2#{} đã chơi cho",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "Chất thay đổi sau khi ghi điểm",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#){}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Thủy Thạch{C:inactive,s:0.8} hoặc {C:attention,s:0.8}Thạch Vương{C:inactive,s:0.8})"
                } 
            },
            j_poke_poliwrath = {
                name = "Poliwrath",
                text = {
                    "Lá {V:1}#2#{} đã chơi ghi thêm {C:mult}+#7#{} Nhân",
                    "và {X:mult,C:white}X#1#{} Nhân khi ghi điểm",
                    "Chất thay đổi sau khi ghi điểm",
                    "{C:inactive,s:0.8}(#3#, #4#, #5#, #6#)"
                } 
            },
            j_poke_abra = {
                name = "Abra",
                text = {
                    "Xác suất {C:green}#1# trên #2#{} tạo ra {C:attention}Kẻ Ngốc{}",
                    "nếu như {C:attention}tay poker{} đã chơi",
                    "đã được chơi trước đó",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_kadabra = {
                name = "Kadabra",
                text = {
                    "Xác suất {C:green}#1# trên #2#{} tạo ra {C:attention}Kẻ Ngốc{} hoặc",
                    "{C:item}Thìa Xoắn{} nếu {C:attention}tay poker{}",
                    "đã chơi đã được chơi trước đó",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_alakazam = {
                name = "Alakazam",
                text = {
                    "{C:attention}+#3#{} ô tiêu thụ",
                    "Xác suất {C:green}#1# trên #2#{} tạo ra {C:attention}Kẻ Ngốc{} hoặc",
                    "{C:item}Thìa Xoắn{} nếu {C:attention}tay poker{}",
                    "đã chơi đã được chơi trước đó",
                } 
            },
            j_poke_mega_alakazam = {
                name = "Mega Alakazam",
                text = {
                    "{C:attention}+#3#{} ô tiêu thụ",
                    "Mỗi {C:attention}Lá Tiêu Thụ{} đang sở hữu cho {X:mult,C:white}X#1#{} Nhân",
                    "{C:item}Thìa Xoắn{} cho {X:mult,C:white}X#2#{} Nhân",
                } 
            },
            j_poke_machop = {
                name = "Machop",
                text = {
                    "{C:chips}+#1#{} tay bài",
                    "{C:mult}-#2# lượt bỏ bài{}",
                    "{C:mult}+#4#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_machoke = {
                name = "Machoke",
                text = {
                    "{C:chips}+#1#{} tay bài",
                    "{C:mult}-#2# lượt bỏ bài{}",
                    "{C:mult}+#3#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_machamp = {
                name = "Machamp",
                text = {
                    "{C:chips}+#1#{} tay bài",
                    "{C:mult}-#2# lượt bỏ bài{}",
                    "{C:mult}+#3#{} Nhân"
                } 
            },
            j_poke_bellsprout = {
                name = "Bellsprout",
                text = {
                    "Lá bậc {C:attention}Chẵn{} đã chơi ghi thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_weepinbell = {
                name = "Weepinbell",
                text = {
                    "Lá bậc {C:attention}Chẵn{} đã chơi ghi thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Mộc Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_victreebel = {
                name = "Victreebell",
                text = {
                    "Lá bậc {C:attention}Chẵn{} đã chơi ghi thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                    "và {C:attention}tái kích{}"
                } 
            },
            j_poke_tentacool = {
                name = "Tentacool",
                text = {
                    "Lá {C:attention}10{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "nếu tay bài chỉ chứa lá {C:attention}10{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_tentacruel = {
                name = "Tentacruel",
                text = {
                    "Lá {C:attention}10{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Lá {C:attention}10 không thể{} bị vô hiệu hoá"
                } 
            },
            j_poke_geodude = {
                name = "Geodude",
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{C:attention}-#2#{} lá giữ trong tay",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_graveler = {
                name = "Graveler",
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{C:attention}-#2#{} lá giữ trong tay",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_golem = {
                name = "Golem",
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{C:attention}-#2#{} lá giữ trong tay",
                } 
            },
            j_poke_ponyta = {
                name = "Ponyta",
                text = {
                    "Thêm {C:chips}#2#{} Chip nếu tay bài", 
                    "đã chơi chứa {C:attention}Sảnh{}",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:chips,s:0.8}+60{C:inactive,s:0.8} Chip)"
                } 
            }, 
            j_poke_rapidash = {
                name = "Rapidash",
                text = {
                    "Thêm {C:chips}#2#{} Chip nếu tay bài", 
                    "đã chơi chứa {C:attention}Sảnh{}",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Áp dụng {C:attention}Đường Tắt{} cho tay bài đầu tiên",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                } 
            },
            --This was my first shiny :O
            j_poke_slowpoke = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Nhân ở {C:attention}tay bài cuối cùng{} của ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi kích hoạt #2#/{C:attention,s:0.8}#3#{C:inactive,s:0.8} lần)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Thạch Vương{C:inactive,s:0.8})"
                } 
            },
            j_poke_slowpoke2 = {
                name = "Slowpoke",
                text = {
                    "{X:red,C:white} X#1# {} Nhân ở {C:attention}tay bài cuối cùng{} của ván",
                    "Xác suất {C:green}#3# trên #4#{} để tạo ra",
                    "lá {C:attention}Thạch Vương{} ở cuối ván",
                    "{C:inactive,s:0.8}(Phải có ô trống){}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván hoặc với một lá {C:attention,s:0.8}Thạch Vương{} {C:inactive,s:0.8})"
                } 
            },
            j_poke_slowbro = {
                name = "Slowbro",
                text = {
                    "Thêm {X:red,C:white} X#1# {} Nhân cho mỗi lá đã chơi",
                    "{C:inactive,s:0.8}(Đặt lại ở cuối ván)",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#2#{C:inactive} Nhân)"
                } 
            },
            j_poke_mega_slowbro = {
                name = "Mega Slowbro",
                text = {
                    "Thêm {X:red,C:white} X#1# {} Nhân cho mỗi lá đã chơi",
                    "{C:inactive,s:0.8}(đặt lại khi {C:attention,s:0.8}Boss Blind{C:inactive,s:0.8} bị đánh bại)",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#2#{C:inactive} Nhân)"
                } 
            },
            j_poke_magnemite = {
                name = "Magnemite",
                text = {
                    "Các lá {C:attention}Thép{} đã chơi",
                    "cho {X:red,C:white}X#1#{} Nhân",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_magneton = {
                name = "Magneton",
                text = {
                    "Lá {C:attention}Thép{} đã chơi cho {X:red,C:white}X#1#{} Nhân",
                    "thêm {X:red,C:white}X#2#{} Nhân cho mỗi",
                    "Joker hệ {X:metal,C:white}Thiếc{} liền kề",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#3#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Lôi Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_farfetchd = {
                name = 'Farfetch\'d',      
                text = {
                    "{C:attention}Giữ Tỏi Tây{}",
                    "Xác suất {C:green}#2# trên #3#{} để nhận {C:money}$#1#",
                    "khi một lá {C:attention}Vật Phẩm{} được dùng",
                    "{C:money}${} đảm bảo nhận khi dùng {C:attention}Tỏi Tây{}",
                } 
            },
            j_poke_doduo = {
                name = 'Doduo',      
                text = {
                    "{C:mult}+#1#{} Nhân nếu tay bài ghi điểm",
                    "chứa ít nhất {C:attention}2{} lá mặt",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{C:mult}+#1#{} Nhân nếu tay bài ghi điểm",
                    "chứa {C:attention}Cù Lũ{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_dodrio = {
                name = 'Dodrio',      
                text = {
                    "{C:mult}+#1#{} Nhân nếu tay bài ghi điểm",
                    "chứa ít nhất {C:attention}3{} lá mặt",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{C:mult}+#1#{} Nhân nếu tay bài ghi điểm",
                    "chứa {C:attention}Cù Lũ{}",
                } 
            },
            j_poke_seel = {
                name = 'Seel',      
                text = {
                    "Xác suất {C:green}#1# trên #2#{} để thêm một {C:attention}con dấu{}",
                    "ngẫu nhiên vào lá ghi điểm ở tít bên trái",
                    "thuộc {C:attention}tay bài đầu tiên{} của ván",
                    "{C:inactive,s:0.75}(Tiến hoá khi bộ bài có ít nhất {C:attention,s:0.75}#3#{C:inactive,s:0.75} lá có {C:attention,s:0.75}con dấu{C:inactive,s:0.75})"
                } 
            },
            j_poke_dewgong = {
                name = 'Dewgong',      
                text = {
                    "Thêm một {C:attention}con dấu{} ngẫu nhiên",
                    "vào lá ghi điểm ở tít bên trái thuộc",
                    "{C:attention}tay bài đầu tiên{} của ván",
                } 
            },
            j_poke_grimer = {
                name = 'Grimer',      
                text = {
                    "{C:mult}+#1#{} Nhân nếu như bộ bài có > {C:attention}#3#{} lá",
                    "Thêm một lá bài thường ngẫu nhiên",
                    "vào bộ bài ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_muk = {
                name = 'Muk',      
                text = {
                    "{C:mult}+#1#{} Nhân mỗi lá thứ {C:attention}#3#{} trở đi trong bộ bài",
                    "{X:mult,C:white} X#2# {} Nhân nếu bộ bài có > {C:attention}#4#{} lá",
                    "{C:inactive}(Hiện tại là {C:mult}+#5#{} {C:inactive}Nhân){}",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Ở cuối ván, loại bỏ 1 lá ngẫu nhiên",
                    "khỏi bộ bài rồi thêm 2 lá ngẫu nhiêu",
                } 
            },
            j_poke_shellder = {
                name = 'Shellder',      
                text = {
                    "Nếu tay bài chứa {C:attention}5{} lá ghi điểm,",
                    "mỗi lá có xác suất {C:green}#1# trên #2#{}",
                    "sẽ {C:attention}tái kích{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Thủy Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_cloyster = {
                name = 'Cloyster',      
                text = {
                    "Nếu tay bài chứa {C:attention}5{} lá ghi điểm,",
                    "mỗi lá có xác suất {C:green}#1# trên #2#{}",
                    "sẽ {C:attention}tái kích{}",
                } 
            },
            j_poke_gastly = {
                name = 'Gastly',      
                text = {
                    "Xác suất {C:green}#1# trên #2#{} để {C:attention}thay thế{}",
                    "ấn bản của một {C:attention}Joker{} ngẫu nhiên bằng",
                    "{C:dark_edition}Âm bản{} ở cuối ván",
                    "{S:1.1,C:red,E:2}tự huỷ{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_haunter = {
                name = 'Haunter',      
                text = {
                    "Xác suất {C:green}#1# trên #2#{} để {C:attention}thay thế{}",
                    "ấn bản của một {C:attention}Joker{} ngẫu nhiên bằng",
                    "{C:dark_edition}Âm Bản{} ở cuối ván",
                    "{S:1.1,C:red,E:2}tự huỷ{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_gengar = {
                name = 'Gengar',      
                text = {
                    "{C:green}Xác suất Phần Trăm{}",
                    "Thỉnh thoảng {C:attention}thay thế{} ấn bản",
                    "của một {C:attention}Joker{} ngẫu nhiên bằng",
                    "{C:dark_edition}Âm Bản{} ở cuối ván",
                    "{C:inactive,s:0.8}(Ngoại trừ Gengar){}",
                } 
            },
            j_poke_mega_gengar = {
                name = 'Mega Gengar',      
                text = {
                    "Joker {C:dark_edition}Đa Sắc{} sẽ xuất hiện ở",
                    "trong {C:attention}Shop{} và {C:attention}Gói Bài{}",
                    "trở thành {C:dark_edition}Âm Bản{}",
                } 
            },
            j_poke_onix = {
                name = 'Onix',      
                text = {
                    "Lá ghi điểm ở tít bên trái thuộc",
                    "{C:attention}tay bài đầu tiên{} của ván",
                    "trở thành lá {C:attention}Đá{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:metal,s:0.8}Thiếc{C:inactive,s:0.8} sticker)"
                } 
            },
            j_poke_drowzee = {
                name = 'Drowzee',      
                text = {
                    "{C:mult}+#2#{} Nhân cho mỗi",
                    "lá {C:planet}Hành Tinh{} riêng biệt",
                    "đã dùng trong trận này",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+28{C:inactive,s:0.8} Nhân)"
                } 
            },
            j_poke_hypno = {
                name = 'Hypno',      
                text = {
                    "{C:attention}Giữ Lá Thôi Miên{}",
                    "{C:mult}+#2#{} Nhân cho mỗi lá {C:planet}Hành Tinh{} riêng biệt",
                    "đã dùng trong trận này",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                } 
            },
            j_poke_krabby = {
                name = 'Krabby',      
                text = {
                    "Các lá {C:attention}mặt{} đã chơi ghi thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)"
                } 
            },
            j_poke_kingler = {
                name = 'Kingler',      
                text = {
                    "Mọi lá {C:attention}mặt{} đã chơi trở thành",
                    "lá {C:attention}Thưởng{} và ghi thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                } 
            },
            j_poke_voltorb = {
                name = 'Voltorb',      
                text = {
                    "Nếu Joker này {C:attention}ở tít bên trái{},",
                    "thêm {C:mult}+#1#{} Nhân, rồi vô hiệu hoá",
                    "cho đến khi hết ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_electrode = {
                name = 'Electrode',      
                text = {
                    "Nếu Joker này {C:attention}ở tít bên trái{},",
                    "thêm {C:mult}+#1#{} Nhân và {C:money}$#2#{}, rồi vô hiệu hoá",
                    "cho đến khi hết ván",
                } 
            },
            j_poke_exeggcute = {
                name = 'Exeggcute',      
                text = {
                    "Lá {C:hearts}#2#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Mộc Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_exeggutor = {
                name = 'Exeggutor',      
                text = {
                    "Xác suất {C:green}#4# trên #5#{} lá {C:hearts}#3#{}",
                    "đã chơi ghi thêm {C:mult}+#1#{} Nhân",
                    "và {X:mult,C:white}X#2#{} Nhân khi ghi điểm", 
                } 
            },
            j_poke_cubone = {
                name = 'Cubone',      
                text = {
                    "{C:attention}Giữ Chày Xương{}",
                    "Thêm {C:mult}+#1#{} Nhân cho",
                    "mỗi lá tiêu thụ {C:attention}đang giữ{}",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Chày Xương{C:inactive,s:0.75} tính là hai lần){}",
                    "{C:inactive}(Hiện tại là {C:mult}+#3#{C:inactive} Nhân)",
                    "{C:inactive,s:0.75}(Tiến hoá ở mức {C:attention,s:0.75}#4#{C:inactive,s:0.75}/#5# lá tiêu thụ đã dùng)"
                } 
            },
            j_poke_marowak = {
                name = 'Marowak',      
                text = {
                    "{C:attention}+#2#{} ô tiêu thụ",
                    "{X:mult,C:white} X#1# {} Nhân cho mỗi",
                    "lá tiêu thụ {C:attention}đang giữ",
                    "{C:inactive,s:0.75}({C:attention,s:0.75}Chày Xương{C:inactive,s:0.75} tính là hai lần){}",
                    "{C:inactive}(Hiện tại là {X:mult,C:white} X#3# {C:inactive} Nhân)",
                } 
            },
            j_poke_hitmonlee = {
                name = 'Hitmonlee',      
                text = {
                    "{X:red,C:white}X#1#{} Nhân cho mỗi lá",
                    "dưới mức {C:attention}#2#{} trong cả bộ bài",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_hitmonchan = {
                name = 'Hitmonchan',      
                text = {
                    "{X:red,C:white}X#1#{} Nhân cho mỗi lá",
                    "trên mức {C:attention}#2#{} trong cả bộ bài",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_lickitung = {
                name = 'Lickitung',      
                text = {
                    "Lá {C:attention}Bồi{} thứ nhất và hai đã chơi",
                    "cho {X:mult,C:white} X#1# {} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi kích hoạt #2#/{C:attention,s:0.8}20{C:inactive,s:0.8} lần)"
                } 
            },
            j_poke_koffing = {
                name = 'Koffing',      
                text = {
                    "Bán lá này để giảm số điểm yêu cầu của",
                    "{C:attention}Boss Blind{} hiện tại đi {C:attention}một nửa{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_weezing = {
                name = 'Weezing',      
                text = {
                    "Bán lá này để {C:attention}vô hiệu hoá{} khả năng",
                    "của {C:attention}Boss Blind{} hiện tại và giảm",
                    "số điểm yêu cầu đi {C:attention}một nửa{}",
                } 
            },
            j_poke_rhyhorn = {
                name = 'Rhyhorn',      
                text = {
                    "Mọi lá {C:attention}Đá{} đã chơi",
                    "vĩnh viễn thêm",
                    "{C:chips}+#1#{} Chip khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_rhydon = {
                name = 'Rhydon',      
                text = {
                    "Mọi lá {C:attention}Đá{} đã chơi vĩnh viễn",
                    "thêm {C:chips}+#1#{} Chip khi ghi điểm",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tái kích lá {C:attention}Đá{} {C:attention}đầu tiên{} ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_chansey = {
                name = 'Chansey',      
                text = {
                    "Khi đạt {C:attention}#1#{C:inactive} [#2#]{} lần kích hoạt đầu tiên",
                    "của lá {C:attention}May Mắn{} mỗi ván, thêm một bản sao vào",
                    "bộ bài và bốc nó lên {C:attention}Tay",
                    "{C:inactive,s:0.8}(Tiến hoá khi bộ bài có >= 25% lá {C:attention,s:0.8}May Mắn{C:inactive,s:0.8})"
                } 
            },
            j_poke_tangela = {
                name = 'Tangela',      
                text = {
                    "Các lá {C:attention}Tuỳ Chất{} cho",
                    "{C:mult}+#1#{} Nhân, {C:chips}+#2#{} Chip, hoặc {C:money}$#3#{}",
                    "Xác suất {C:green}#4# trên #5#{} cho {C:attention}cả ba{}",
                    "{C:inactive,s:0.8}(Tiến hoá khi #6#/{C:attention,s:0.8}#7# Lá Tuỳ Chất{C:inactive,s:0.8} được ghi điểm)"
                } 
            },
            j_poke_kangaskhan = {
                name = 'Kangaskhan',      
                text = {
                    "{C:attention}+#1#{} ô tiêu thụ",
                    "{C:chips}-#2#{} tay bài",
                } 
            },
            j_poke_mega_kangaskhan = {
                name = 'Mega Kangaskhan',      
                text = {
                    "{C:attention}Tái kích{} mọi lá đã chơi",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tạo ra một {C:attention}Nhãn Kép{} ở",
                    "cuối ván nếu đã dùng ít nhất",
                    "{C:attention}#1# Lá Tiêu Thụ{} trong ván này",
                    "{C:inactive}(Hiện tại là {C:attention}#2#{C:inactive} Lá Tiêu Thụ)"
                } 
            },
            j_poke_horsea = {
                name = 'Horsea',      
                text = {
                    "Thêm {C:mult}+#2#{} Nhân cho",
                    "mỗi lá {C:attention}6{} ghi điểm",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá khi {C:mult,s:0.8}+12{C:inactive,s:0.8} Nhân)"
                } 
            },
            j_poke_seadra = {
                name = 'Seadra',      
                text = {
                    "Thêm {C:mult}+#2#{} Nhân cho mỗi lá {C:attention}6{} ghi điểm",
                    "Thêm gấp đôi nếu đang giữ lá {C:attention}Già{} trong tay",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với nhãn {C:dragon,s:0.8}Rồng{C:inactive,s:0.8})"
                } 
            },
            j_poke_goldeen = {
                name = 'Goldeen',      
                text = {
                    "Tái kích lá {C:attention}Vàng{} giữ",
                    "trong tay thêm {C:attention}#1#{} lần",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_seaking = {
                name = 'Seaking',      
                text = {
                    "Tái kích lá {C:attention}Vàng{} giữ",
                    "trong tay thêm {C:attention}#1#{} lần",
                } 
            },
            j_poke_staryu = {
                name = 'Staryu',      
                text = {
                    "Lá {C:diamonds}#2#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân khi ghi điểm",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Thủy Thạch{C:inactive,s:0.8})"
                } 
            },
            j_poke_starmie = {
                name = 'Starmie',      
                text = {
                    "Lá {C:diamonds}#3#{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân và nhận {C:money}$#2#{} khi ghi điểm",
                } 
            },
            j_poke_mrmime = {
                name = 'Mr. Mime',      
                text = {
                    "Tái kích lá ở tít bên trái",
                    "giữ trong tay {C:attention}#1#{} lần"
                } 
            },
            j_poke_scyther = {
                name = 'Scyther',      
                text = {
                    "Khi Blind được chọn, phá huỷ lá Joker",
                    "liền phải và thêm {C:mult}+#2#{} Nhân",
                    "Thêm {C:attention}Ánh Kim{}, {C:attention}Lấp Lánh{}, hoặc {C:attention}Đa Sắc{}",
                    "nếu nó là Joker {C:red}Hiếm{} hoặc cao hơn",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với nhãn {C:metal,s:0.8}Thiếc{C:inactive,s:0.8})",
                } 
            },
            j_poke_jynx = {
                name = 'Jynx',      
                text = {
                    "{C:attention}Lá bài thường{} được thêm vào",
                    "bộ bài từ {C:attention}Shop{}, gói {C:attention}Tiêu Chuẩn{},",
                    "{C:spectral}Dị Chủng{}, lá {C:item}Vật Phẩm{} và một số Joker nhất định",
                    "đều được {C:attention}nhân bản{}"
                } 
            },
            j_poke_electabuzz = {
                name = 'Electabuzz',      
                text = {
                    "Thêm {C:money}$#1#{} {C:attention}giá bán{} ở cuối ván",
                    "và khi một lá bài được {C:attention}bán{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_magmar = {
                name = 'Magmar',      
                text = {
                    "Nếu {C:attention}lượt bỏ đầu tiên{} của ván có đúng",
                    "{C:attention}1{} lá, phá huỷ nó và thêm {C:mult}+#2#{} Nhân",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Dây Nối{C:inactive,s:0.8})"
                } 
            },
            j_poke_pinsir = {
                name = 'Pinsir',
                text = {
                    "{X:mult,C:white} X#1# {} Nhân nếu lá ghi điểm",
                    "có {C:attention}cùng bậc{} với một lá",
                    "{C:attention}giữ trong tay{}"
                } 
            },
            j_poke_mega_pinsir = {
                name = 'Mega Pinsir',
                text = {
                    "Lá {C:attention}chưa cường hoá{} đã chơi",
                    "ghi thêm {X:mult,C:white} X#1# {} Nhân khi ghi điểm",
                } 
            },
            j_poke_tauros = {
                name = 'Tauros (Lãnh Đạo)',
                text = {
                    "Mỗi Joker {C:attention}Tauros{} cho {X:mult,C:white} X#1# {} Nhân",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Mỗi lượt gieo lại trong shop có",
                    "xác suất {C:green}#2# trên #3#{} sinh ra {C:attention}Tauros (Lính){}",
                } 
            },
            j_poke_taurosh = {
                name = 'Tauros (Lính)',
                text = {
                    "{C:mult}+#1#{} Nhân",
                } 
            },
            j_poke_magikarp = {
                name = 'Magikarp',
                text = {
                    "{C:chips}+#2#{} Chip",
                    "Áp dụng {C:attention}Bắn Toé{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#1#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_gyarados = {
                name = 'Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Nhân",
                } 
            },
            j_poke_mega_gyarados = {
                name = 'Mega Gyarados',
                text = {
                    "{X:red,C:white} X#1# {} Nhân",
                    "{br:1.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Vô hiệu hoá khả năng",
                    "của mọi {C:attention}Boss Blind{}"
                } 
            },
            j_poke_lapras = {
                name = 'Lapras',
                text = {
                    "{C:chips}+#2#{} Chip cho mỗi",
                    "{C:attention}Blind{} đã bỏ qua trận này",
                    "{C:inactive}(Hiện tại là {C:chips}+#1# {C:inactive}Chip)"
                } 
            },
            j_poke_ditto = {
                name = 'Ditto',
                text = {
                    "Bán lá này để nhân bản Joker ở tít bên trái",
                    "Thêm nhãn {C:attention}Ngắn Hạn{} và nhãn",
                    "{C:colorless}Vô Năng{} cho bản sao",
                    "{C:inactive,s:0.8}(loại bỏ Vĩnh Hằng, ngoại trừ Ditto)",
                } 
            },
            j_poke_eevee = {
                name = 'Eevee',
                text = {
                    "Nhận {C:money}$#1#{} sau mỗi",
                    "{C:attention}5{} lượt {C:green}gieo lại{}",
                    "{C:inactive}(Hiện tại là {C:attention}#2#{C:inactive}/#3#)",
                    "{C:inactive,s:0.8}(Tiến hoá với... rất nhiều)",
                } 
            },
            j_poke_vaporeon = {
                name = 'Vaporeon',
                text = {
                    "Thêm {C:chips}+#2#{} Chip sau mỗi",
                    "{C:attention}3{C:inactive} [#3#] lượt {C:green}gieo lại{}",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                } 
            },
            j_poke_jolteon = {
                name = 'Jolteon',
                text = {
                    "Nhận {C:money}$#1#{} sau mỗi",
                    "{C:attention}3{C:inactive} [#2#] lượt {C:green}gieo lại{}",
                } 
            },
            j_poke_flareon = {
                name = 'Flareon',
                text = {
                    "Thêm {X:red,C:white} X#2# {} Nhân sau mỗi",
                    "{C:attention}3{C:inactive} [#3#] lượt {C:green}gieo lại{}",
                    "{C:inactive}(Hiện tại là {X:red,C:white} X#1# {C:inactive} Nhân)"
                } 
            },
            j_poke_porygon = {
                name = 'Porygon',
                text = {
                    "{C:pink}+1{} Năng lượng Tối đa",
                    "Tạo ra một lá {C:pink}Năng lượng{} khi",
                    "mở một {C:attention}Gói Bài{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với lá {C:metal,s:0.8}Thăng Cấp{C:inactive,s:0.8})",
                } 
            },
            j_poke_omanyte = {
                name = 'Omanyte',
                text = {
                    "{C:attention}Lá #1# Cổ Đại{}",
                    "{X:attention,C:white}1+{} : Thêm {C:money}$#2#{} giá bán",
                    "{X:attention,C:white}2+{} : Nhận {C:money}$#3#{}",
                    "{X:attention,C:white}3+{} : Tạo ra một lá {C:attention}Tarot{} ngẫu nhiên",
                    "{C:inactive,s:0.8}(Phải có ô trống)",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi kích hoạt cấp ba {C:attention,s:0.8}#4#{C:inactive,s:0.8}/#5# lần)"
                } 
            },
            j_poke_omastar = {
                name = 'Omastar',
                text = {
                    "{C:attention}Lá #1# Cổ Đại{}",
                    "{X:attention,C:white}1+{} : {}Thêm {C:money}$#2#{} giá bán",
                    "{X:attention,C:white}2+{} : {}Nhận {C:money}$#3#{}",
                    "{X:attention,C:white}3+{} : {}Tạo ra một lá {C:attention}Tarot{} ngẫu nhiên",
                    "{X:attention,C:white}4+{} : {}Tạo ra một lá {C:item}Vật phẩm{} ngẫu nhiên",
                    "{C:inactive,s:0.8}(Phải có ô trống)",
                } 
            },
            j_poke_kabuto = {
                name = 'Kabuto',
                text = {
                    "{C:attention}Lá #1# Cổ Đại{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chip",
                    "{X:attention,C:white}2+{} : {}Lá {C:attention}#1#{} ghi điểm vĩnh viễn thêm {C:chips}+#3#{} Chip",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chip",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi kích hoạt cấp ba {C:attention,s:0.8}#5#{C:inactive,s:0.8}/#6# lần)"
                } 
            },
            j_poke_kabutops = {
                name = 'Kabutops',
                text = {
                    "{C:attention}Lá #1# Cổ Đại{}",
                    "{X:attention,C:white}1+{} : {C:chips}+#2#{} Chip",
                    "{X:attention,C:white}2+{} : {}Lá {C:attention}#1#{} ghi điểm vĩnh viễn thêm {C:chips}+#3#{} Chip",
                    "{X:attention,C:white}3+{} : {C:chips}+#4#{} Chip",
                    "{X:attention,C:white}4+{} : {}Tái kích lá đã chơi thứ",
                    "{C:attention}nhất{} và {C:attention}hai{} thêm {C:attention}#5#{} lần"
                } 
            },
            j_poke_aerodactyl = {
                name = 'Aerodactyl',
                text = {
                    "{C:attention}Lá #1# Cổ Đại{}",
                    "{X:attention,C:white}1+{} : {C:mult}+#2#{} Nhân",
                    "{X:attention,C:white}2+{} : {C:mult}+#3#{} Nhân và {C:chips}+#4#{} Chip",
                    "{X:attention,C:white}3+{} : {X:red,C:white}X#5#{} Nhân",
                    "{X:attention,C:white}4+{} : {}Joker này ghi {C:attention}gấp đôi{}",
                    "giá trị ghi điểm của nó",
                } 
            },
            j_poke_mega_aerodactyl = {
                name = 'Mega Aerodactyl',
                text = {
                    "Các lá {C:attention}#1#{} đã đánh cho {X:mult,C:white} X#2# {} Nhân cho mỗi",
                    "{C:attention}#1#{} trong tay bài đã chơi khi ghi điểm",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Xác suất {C:green}#3# trên #4#{} cho mỗi",
                    "lá {C:attention}#1#{} đã chơi to bị phá huỷ",
                } 
            },
            j_poke_snorlax = {
                name = 'Snorlax',
                text = {
                    "{C:attention}Giữ Lá Thừa Phẩm{}",
                    "Ở cuối ván, thêm {X:red,C:white}X#1#{} Nhân",
                    "cho mỗi lá {C:attention}Thừa Phẩm{} đang sở hữu",
                    "{C:inactive}(Hiện tại là {X:red,C:white} X#2# {C:inactive} Nhân)"
                } 
            },
            j_poke_articuno = {
                name = 'Articuno',
                text = {
                    "Thêm {C:attention}Lấp Lánh{}, một {C:attention}cường hoá{} ngẫu nhiên và",
                    "một {C:attention}con dấu{} ngẫu nhiên vào lá không ghi điểm",
                    "thuộc {C:attention}tay đầu tiên{} của ván"
                } 
            },
            j_poke_zapdos = {
                name = 'Zapdos',
                text = {
                    "{X:mult,C:white} X#1# {} Nhân cho",
                    "mỗi {C:money}$#2#{} bạn có",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_moltres = {
                name = 'Moltres',
                text = {
                    "Nâng level của",
                    "3 {C:attention}tay poker{} bị bỏ",
                    "đầu tiên mỗi ván"
                } 
            },
            j_poke_dratini = {
                name = 'Dratini',
                text = {
                    "Thêm {C:mult}+#2#{} Nhân",
                    "nếu tay bài đã chơi có",
                    "{C:attention}#3#{} lá hoặc ít hơn",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+10{C:inactive,s:0.8} Nhân)"
                } 
            },
            j_poke_dragonair = {
                name = 'Dragonair',
                text = {
                    "Thêm {C:mult}+#2#{} Nhân",
                    "nếu tay bài đã chơi chứa",
                    "{C:attention}#3#{} lá hoặc ít hơn",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+30{C:inactive,s:0.8} Nhân)"
                } 
            },
            j_poke_dragonite = {
                name = 'Dragonite',
                text = {
                    "{C:mult}+#1#{} Nhân",
                    "{br:1.6}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tái kích lá đã chơi {C:attention}#2#{} lần",
                    "nếu tay bài đã chơi",
                    "chỉ có {C:attention}1{} lá"
                } 
            },
            j_poke_mewtwo = {
                name = 'Mewtwo',
                text = {
                    "Ở cuối shop, tạo ra một {C:attention}bản sao{}",
                    "{C:dark_edition}Đa Sắc{} của {C:attention}Joker{}",
                    "ở tít bên trái với {C:attention}+1{} {C:pink}Năng Lượng{}",
                    "rồi phá huỷ {C:attention}Joker{} ở tít bên trái",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Các Joker {C:dark_edition}Đa Sắc{} cho {X:mult,C:white} X#1# {} Nhân",
                    "{C:inactive}(Không thể tự phá huỷ)",
                } 
            },
            j_poke_mega_mewtwo_x = {
                name = "Mega Mewtwo X",
                text = {
                    "Mọi Joker cho {X:mult,C:white} X#1# {} Nhân",
                } 
            },
            j_poke_mega_mewtwo_y = {
                name = "Mega Mewtwo Y",
                text = {
                    "Thêm {C:attention}+2{} {C:pink}Năng Lượng{} cho",
                    "Joker ở tít bên trái ở cuối shop",
                    "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "{C:pink}+1{} Năng Lượng Tối Đa khi",
                    "{C:attention}Boss Blind{} bị đánh bại"
                } 
            },
            j_poke_mew = {
                name = 'Mew',
                text = {
                    "Ở cuối shop, tạo ra một lá {C:attention}Tarot{}",
                    "{C:spectral}Siêu linh{} hoặc {C:item}Vật phẩm{}",
                    "{C:dark_edition}Âm Bản{} ngẫu nhiên",
                    "Thỉnh thoảng tạo ra một Joker",
                    "{C:dark_edition}Âm Bản{} {C:attention}thay thế{}",
                } 
            },
            j_poke_sentret = {
                name = 'Sentret',
                text = {
                    "Thêm {C:mult}+#2#{} Nhân cho mỗi",
                    "tay đã chơi {C:attention}liên tiếp{} mà",
                    "không phải là tay poker gần nhất",
                    "{C:inactive}(Tay gần nhất: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{} {C:inactive}Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:mult,s:0.8}+15{C:inactive,s:0.8} Nhân)"
                }
            },
            j_poke_furret = {
                name = 'Furret',
                text = {
                    "Thêm {C:mult}+#2#{} Nhân nếu tay poker đã chơi",
                    "không phải là tay poker gần nhất",
                    "{C:inactive}(Tay gần nhất: {C:attention}#3#{C:inactive})",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{} {C:inactive}Nhân)",
                }  
            },
            j_poke_crobat = {
                name = 'Crobat',
                text = {
                    "Thêm {C:chips}+#4#{} cho lá {C:attention}Thưởng{} / {C:attention}Đá{} ghi điểm",
                    "{C:mult}+#2#{} cho lá {C:attention}Nhân{} / {C:attention}Tuỳ Chất{} ghi điểm",
                    "{X:red,C:white}X#6#{} cho lá {C:attention}Thép{} / {C:attention}Kính{} ghi điểm",
                    "Nhận {C:money}$#8#{} cho lá {C:attention}Vàng{} / {C:attention}May Mắn{} ghi điểm",
                    "Sau đó {C:attention}Ngẫu nhiên hoá{} {C:dark_edition}Cường Hoá{} của lá ghi điểm",
                    "{C:inactive}(Hiện tại là {C:chips}+#3#{}, {C:mult}+#1#{}, {X:red,C:white}X#5#{}, {C:money}$#7#{C:inactive} cuối ván)"
                } 
            },
            j_poke_pichu = {
                name = 'Pichu',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#2# {} Nhân",
                    "Nhận {C:money}$#1#{}",
                    "ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_cleffa = {
                name = 'Cleffa',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra lá {C:attention}Ánh Nguyệt{} {C:dark_edition}Âm Bản{}",
                    "ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_igglybuff = {
                name = 'Igglybuff',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra lá {C:attention}Thế Giới{} {C:dark_edition}Âm bản{}",
                    "ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_bellossom = {
                name = 'Bellossom',
                text = {
                    "Lá bậc {C:attention}Lẻ{} đã chơi",
                    "cho {C:mult}+#1#{} Nhân hoặc trở thành",
                    "lá {C:attention}Tuỳ Chất{} khi ghi điểm",
                    "Nếu đã có {C:attention}Tuỳ Chất{}, thêm {C:dark_edition}Ánh Kim{},",
                    "{C:dark_edition}Lấp Lánh{} hoặc {C:dark_edition}Đa Sắc{}"
                } 
            },
            j_poke_politoed = {
                name = 'Politoed',
                text = {
                    "Lá {V:1}#2#{} đã chơi ghi thêm {C:mult}+#1#{} Nhân khi ghi điểm",
                    "{br:5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tái kích lá {V:1}#2#{} dựa trên",
                    "số lượng Joker hệ {X:water,C:white}Thủy{} đang sở hữu",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}#7#{C:inactive,s:0.8} Tái kích chia đều cho các lá ghi điểm){}",
                    "{s:0.8}Chất thay đổi sau khi tính điểm {C:inactive,s:0.8}(#3#, #4#, #5#, #6#)",
                } 
            },
            j_poke_espeon = {
                name = 'Espeon',
                text = {
                    "{C:attention}Tái kích{} mỗi lá {C:attention}#3#{} đã chơi",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Mỗi lá {V:1}#4#{} ghi điểm",
                    "cho {X:red,C:white}X#2#{} Nhân",
                    "{C:inactive,s:0.8}({C:attention,s:0.8}Ngẫu nhiên hoá Bậc{C:inactive,s:0.8}/{C:attention,s:0.8}Chất{C:inactive,s:0.8} mỗi lượt {C:green,s:0.8}Gieo Lại{C:inactive,s:0.8})"
                } 
            },
            j_poke_umbreon = {
                name = 'Umbreon',
                text = {
                    "Giảm level của {C:attention}#1#{} đã chơi",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Mỗi {C:attention}#2# {C:inactive}[#3#]{} lần suy giảm",
                    "tạo ra {C:attention}Nhãn Quỹ Đạo{} hoặc {C:dark_edition}Nhãn Âm Bản{}",
                    "{C:inactive,s:0.8}(Yêu cầu tay bài {C:attention,s:0.8}đổi lại{C:inactive,s:0.8} sau mỗi lần {C:green,s:0.8}Gieo lại{C:inactive,s:0.8})",
                } 
            },
            j_poke_slowking = {
                name = 'Slowking',
                text = {
                    "Lá {C:attention}Già{} ghi thêm {X:red,C:white}X#1#{} Nhân khi ghi điểm",
                    "Tăng thêm {X:red,C:white}X#2#{} Nhân",
                    "mỗi tay bài đã chơi sau tay đầu tiên",
                    "{C:inactive,s:0.8}(Đặt lại ở cuối ván)",
                }
            },
            j_poke_steelix = {
                name = 'Steelix',
                text = {
                    "Lá ghi điểm ở tít bên trái thuộc {C:attention}tay{}",
                    "{C:attention}đầu tiên{} của ván trở thành lá {C:attention}Thép{}",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Lá {C:attention}Đá{} {C:attention}giữ trong tay{} trở thành {C:attention}Thép{}"
                } 
            },
            j_poke_scizor = {
                name = 'Scizor',
                text = {
                    "Khi Blind được chọn, phá huỷ Joker",
                    "liền phải và thêm {C:mult}+#4#{} Nhân",
                    "Thêm {C:attention}Ánh Kim{}, {C:attention}Lấp Lánh{}, hoặc {C:attention}Đa Sắc{}",
                    "nếu nó không phải Joker {C:attention}Thường{}",
                    "Cho phép {C:attention}chồng{} ấn bản lên Joker này",
                    "{C:inactive,s:0.75}(Nếu có thể, lấy ấn bản Joker đã phá huỷ){}",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{} {C:inactive}Nhân, {C:chips}+#2#{} {C:inactive}Chip, {X:red,C:white}X#3#{} {C:inactive}Nhân)"
                } 
            },
            j_poke_delibird = {
                name = "Delibird",
                text = {
                  "Ở cuối ván, nhận",
                  "một phần {S:1.1,C:green,E:2}Quà Tặng{}",
                  "{C:inactive,s:0.8}(Phải có ô trống)",
                }
            },
            j_poke_mantine = {
                name = "Mantine",
                text = {
                  "Thêm {C:chips}+#2#{} Chip khi lá {C:attention}Vàng{}",
                  "ghi điểm hoặc {C:attention}giữ{} trong tay",
                  "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                }
            },
            j_poke_kingdra = {
                name = 'Kingdra',
                text = {
                    "Thêm {C:mult}+#2#{} Nhân cho mỗi lá {C:attention}6{} ghi điểm",
                    "Nếu đang giữ lá {C:attention}Già{} trong tay,",
                    "thêm {X:red,C:white}X#4#{} Nhân {C:attention}thay thế{} cho mỗi lá {C:attention}6{} ghi điểm",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân, {X:red,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_porygon2 = {
                name = 'Porygon2',
                text = {
                    "{C:pink}+2{} Năng lượng Tối Đa",
                    "Khi mở {C:attention}Gói Bài{}, tạo",
                    "ra lá {C:pink}Năng Lượng{} cùng",
                    "{C:pink}Hệ{} với Joker ở tít bên trái",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:metal,s:0.8}Đĩa Đáng Ngờ{C:inactive,s:0.8})",
                } 
            },
            j_poke_stantler = {
                name = "Stantler",
                text = {
                  "{C:chips}+#1#{} Chip nhân thêm số chip {C:attention}gốc{}",
                  "của lá ghi điểm đầu tiên nếu tay bài",
                  "đã chơi chứa {C:attention}Đôi{}",
                  "{C:attention}Gấp đôi{} ở {C:attention}tay bài cuối{} của ván",
                }
            },
            j_poke_tyrogue = {
                name = 'Tyrogue',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Nếu {C:attention}tay bài hoặc lượt bỏ bài đầu tiên{}",
                    "của ván có đúng {C:attention}5{} lá, sao chép {C:inactive}(nếu chơi){}",
                    " hoặc phá huỷ {C:inactive}(nếu bỏ){} một lá ngẫu nhiên",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }  
            },
            j_poke_hitmontop = {
                name = 'Hitmontop',
                text = {
                    "{X:red,C:white} X#1# {} Nhân",
                    "Khi Blind được chọn,",
                    "thêm {X:red,C:white} X#3# {} Nhân nếu",
                    "bộ bài có đúng {C:attention}#2#{} lá",
                } 
            },
            j_poke_smoochum = {
                name = 'Smoochum',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra nhãn {C:attention}Tiêu Chuẩn{}",
                    "khi Joker này tiến hoá",
                    "{C:inactive}(Vâng, nó sẽ {C:attention}giảm{C:inactive} điểm Nhân của bạn)",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_elekid = {
                name = 'Elekid',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra nhãn {C:attention}Phiếu Thưởng{}",
                    "khi Joker này tiến hoá",
                    "{C:inactive}(Vâng, nó sẽ {C:attention}giảm{C:inactive} điểm Nhân của bạn)",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_magby = {
                name = 'Magby',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "{C:red}+#2#{} lượt bỏ bài",
                    "{C:inactive}(Vâng, nó sẽ {C:attention}giảm{C:inactive} điểm Nhân của bạn)",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_blissey = {
                name = 'Blissey',
                text = {
                    "Khi đạt {C:attention}#1#{C:inactive} [#2#]{} lần kích hoạt đầu tiên",
                    "của lá {C:attention}May Mắn{} mỗi ván, thêm một bản sao {C:dark_edition}Đa Sắc{}",
                    "vào bộ bài và bốc nó lên {C:attention}Tay",
                } 
            },
            j_poke_treecko = {
                name = "Treecko",
                text = {
                    "{C:attention}+#3#{} lá giữ trong tay, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#6#, #7# hoặc #8#{} đã chơi có",
                    "xác suất {C:green}#4# trên #5#{} để nhận {C:money}$#1#{} khi ghi điểm",
                    "Chắc chắn nếu bạn có lá {X:grass,C:white}Cỏ{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi nhận $#2#/{C:money,s:0.8}$16{C:inactive,s:0.8})",
                } 
            },
            j_poke_grovyle = {
                name = "Grovyle",
                text = {
                    "{C:attention}+#3#{} lá giữ trong tay, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#6#, #7# hoặc #8#{} đã chơi có",
                    "xác suất {C:green}#4# trên #5#{} nhận {C:money}$#1#{} khi ghi điểm",
                    "Đảm bảo trúng nếu sở hữu lá {X:grass,C:white}Cỏ{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive,s:0.8}(Tiến hoá sau khi nhận $#2#/{C:money,s:0.8}$32{C:inactive,s:0.8})",
                } 
            },
            j_poke_sceptile = {
                name = "Sceptile",
                text = {
                    "{C:attention}+#3#{} lá giữ trong tay, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#5#, #6# hoặc #7#{} đã chơi cho {C:money}$#1#{} khi ghi điểm",
                    "{br:5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Nhận {C:money}$#1#{} ở cuối ván cho",
                    "mỗi lá {X:grass,C:white}Cỏ{} đang sở hữu",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Hiện tại là {C:money}$#4#{C:inactive}, Tối đa {C:money}$14{C:inactive}){}"
                } 
            },
            j_poke_torchic = {
                name = "Torchic",
                text = {
                    "{C:mult}+#3#{} lượt bỏ bài, {C:attention}Thiên Nhiên{}",
                    "Thêm {C:mult}+#1#{} Nhân cho mỗi {C:attention}#5#, #6# hoặc #7#{} đã bỏ ván này",
                    "Thêm gấp đôi với lá {X:fire,C:white}Hoả{} hoặc {X:earth,C:white}Giác Đấu{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Hiện tại là {C:mult}+#4#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức #2#/{C:mult,s:0.8}60{C:inactive,s:0.8} Nhân)",
                } 
            },
            j_poke_combusken = {
                name = "Combusken",
                text = {
                    "{C:mult}+#3#{} lượt bỏ bài, {C:attention}Thiên Nhiên{}",
                    "Thêm {C:mult}+#1#{} Nhân mỗi {C:attention}#5#, #6# hoặc #7#{} đã bỏ ván này",
                    "Thêm gấp đôi với lá {X:fire,C:white}Hoả{} hoặc {X:earth,C:white}Giác đấu{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Hiện tại là {C:mult}+#4#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức #2#/{C:mult,s:0.8}150{C:inactive,s:0.8} Nhân)",
                } 
            },
            j_poke_blaziken = {
                name = "Blaziken",
                text = {
                    "{C:mult}+#2#{} lượt bỏ bài, {C:attention}Thiên Nhiên{}",
                    "Mỗi lá {C:attention}#6#, #7# hoặc #8#{} đã bỏ ván này",
                    "thêm {C:mult}+#4#{} Nhân và {X:red,C:white}X#1#{} Nhân cho",
                    "mỗi lá {X:fire,C:white}Hoả{} hoặc {X:earth,C:white}Giác Đấu{} đang sở hữu",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Hiện tại là {C:mult}+#5#{C:inactive} Nhân, {X:red,C:white}X#3#{C:inactive} Nhân){}",
                } 
            },
            j_poke_mudkip = {
                name = "Mudkip",
                text = {
                    "{C:chips}+#3#{} tay bài, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#4#, #5# hoặc #6#{} cho {C:chips}+#1#{} Chip",
                    "Gấp đôi với lá {X:water,C:white}Thuỷ{} hoặc {X:earth,C:white}Thổ{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Tiến hoá sau khi nhận #2#/{C:chips}400{C:inactive} Chip)"
                } 
            },
            j_poke_marshtomp = {
                name = "Marshtomp",
                text = {
                    "{C:chips}+#3#{} tay bài, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#4#s, #5#s hoặc #6#s{} cho {C:chips}+#1#{} Chip",
                    "Gấp đôi với lá {X:water,C:white}Thuỷ{} hoặc {X:earth,C:white}Thổ{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Tiến hoá sau khi nhận #2#/{C:chips}960{C:inactive} Chip)"
                } 
            },
            j_poke_swampert = {
                name = "Swampert",
                text = {
                    "{C:chips}+#3#{} tay bài, {C:attention}Thiên Nhiên{}",
                    "Lá {C:attention}#6#, #7# hoặc #8#{} cho {C:chips}+#1#{} Chip",
                    "và {C:chips}+#5#{} Chip mỗi lá {X:water,C:white}Thuỷ{} hoặc {X:earth,C:white}Thổ{} khác",
                    "{C:inactive,s:0.8}(bao gồm Joker và lá Năng lượng){}",
                    "{C:inactive}(Hiện tại là tổng cộng {C:chips}+#4#{C:inactive})"
                } 
            },
            j_poke_aron = {
                name = 'Aron',
                text = {
                    "Tạo ra lá {C:attention}Chiến Xa",
                    "khi {C:attention}Small Blind{} được chọn",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Khi một lá Thép tính điểm,",
                    "thêm {X:mult,C:white}X#2#{} Nhân rồi phá huỷ nó",
                    "{C:inactive}(Tiến hoá ở mức {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X2{} {C:inactive}Nhân)",
                }
            },
            j_poke_lairon = {
                name = 'Lairon',
                text = {
                    "Tạo ra lá {C:attention}Chiến Xa{} khi",
                    "{C:attention}Small Blind{} hoặc {C:attention}Big Blind{} được chọn",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "khi một lá Thép tính điểm,",
                    "thêm {X:mult,C:white}X#2#{} Nhân rồi phá huỷ nó",
                    "{C:inactive}(Tiến hoá ở mức {X:mult,C:white}X#1#{C:inactive} / {X:inactive,C:white}X4{} {C:inactive}Nhân)"
                }
            },
            j_poke_aggron = {
                name = 'Aggron',
                text = {
                    "Tạo ra lá {C:attention}Chiến Xa{} khi",
                    "{C:attention}Blind{} được chọn",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Khi một Lá Thép tính điểm,",
                    "thêm {X:mult,C:white}X#2#{} Nhân rồi phá huỷ nó",
                    "{C:inactive}(Hiện tại là {X:mult,C:white}X#1#{C:inactive} Nhân)"
                }
            },
            j_poke_feebas = {
                name = 'Feebas',
                text = {
                    "{C:mult}+#1#{} Nhân",
                    "Áp dụng {C:attention}Bắn Toé{}",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Vảy Mỹ Lệ{C:inactive,s:0.8})",
                } 
            },
            j_poke_milotic = {
                name = "Milotic",
                text = {
                  "Tái kích mọi lá bài đã chơi nếu",
                  "chúng có cùng một {C:attention}chất{}",
                }
            },
            j_poke_snorunt = {
                name = "Snorunt",
                text = {
                  "Ghi nợ tối đa {C:mult-$#1#{}",
                  "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván chịu nợ)",
                  "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Đá Bình Minh{C:inactive,s:0.8})"
                }
            },
            j_poke_glalie = {
                name = "Glalie",
                text = {
                  "Ghi nợ tối đa {C:mult}$#1#{}",
                  "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Ở cuối ván,",
                  "đặt tiền về {C:money}$0"
                }
            },
            j_poke_beldum = {
                name = 'Beldum',
                text = {
                    "Nếu tay bài đã chơi chứa ít nhất",
                    "một lá {C:attention}Át{} ghi điểm, thêm {C:chips}+#2#{} Chip",
                    "{C:attention}Gấp đôi{} lượng nhận nếu tay bài là {C:attention}Tứ Quý{}",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá ở mức {C:chips,s:0.8}+64{C:inactive,s:0.8} Chip)"
                } 
            },
            j_poke_metang = {
                name = 'Metang',
                text = {
                    "Nếu tay bài đã chơi chứa ít nhất",
                    "hai lá {C:attention}Át{} ghi điểm, thêm {C:chips}+#2#{} Chip",
                    "{C:attention}Gấp bốn{} lượng nhận nếu tay bài là {C:attention}Tứ Quý{}",
                    "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                    "{C:inactive,s:0.8}(Tiến hoá tại {C:chips,s:0.8}+256{C:inactive,s:0.8} Chip)"
                } 
            },
            j_poke_metagross = {
                name = 'Metagross',
                text = {
                    "{C:chips}+#1#{} Chip",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Nếu tay bài đã chơi là {C:attention}Tứ Quý{}",
                    "mỗi lá đã chơi cho {X:mult,C:white}XNhân{}",
                    "bằng với {C:attention}căn bậc ba{}",
                    "tổng chip lá bài đó",
                } 
            },
            j_poke_buizel = {
                name = 'Buizel',
                text = {
                    "{C:chips}+#1#{} Chip cho",
                    "mỗi lá {C:attention}không ghi điểm{}",
                    "trong tay bài đã chơi",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }  
            },
            j_poke_floatzel = {
                name = 'Floatzel',
                text = {
                    "{C:chips}+#1#{} Chip cho",
                    "mỗi lá {C:attention}không ghi điểm{}",
                    "trong tay bài đã chơi",
                }  
            },
            j_poke_mimejr = {
                name = 'Mime Jr.',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Thêm con dấu {C:attention}Đỏ{} hoặc {C:attention}Xanh{}",
                    "cho một lá ngẫu nhiên trong",
                    "bộ bài ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_happiny = {
                name = 'Happiny',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra lá {C:attention}May Mắn{}",
                    "{C:dark_edition}Âm bản{} cuối ván",
                    "Xác suất {C:green}#3# trên #4#{} tạo ra {C:attention}2{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_munchlax = {
                name = 'Munchlax',
                text = {
                    "{C:attention}Baby{}, {X:red,C:white} X#1# {} Nhân",
                    "Tạo ra lá {C:item}Vật Phẩm{}",
                    "{C:dark_edition}Âm Bản{} ở cuối ván",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_mantyke = {
                name = "Mantyke",
                text = {
                  "{C:attention}Baby{}, {X:red,C:white}X#2#{} Nhân",
                  "Ở cuối ván, 1 lá ngẫu nhiên trong",
                  "{C:attention}bộ bài{} biến đổi thành {C:attention}Vàng{}",
                  "{br:2}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Lá {C:attention}Vàng{} {C:attention}giữ{} trong tay",
                  "cho {C:chips}+#1#{} Chip",
                  "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_magnezone = {
                name = 'Magnezone',
                text = {
                    "Lá {C:attention}Thép{} đã chơi thêm {X:red,C:white}X#1#{} Nhân",
                    "cộng {X:red,C:white}X#2#{} Nhân cho mỗi",
                    "Joker hệ {X:metal,C:white}Thiếc{} đang sở hữu",
                    "{C:inactive}(Hiện tại là {X:red,C:white}X#3#{C:inactive} Nhân){}",
                } 
            },
            j_poke_lickilicky = {
                name = 'Lickilicky',
                text = {
                    "Lá {C:attention}Bồi{} đầu tiên và thứ hai",
                    "ghi thêm {X:mult,C:white}X#1#{} Nhân khi ghi điểm",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Các lá {C:attention}Bồi{} tiếp theo",
                    "ghi thêm {X:mult,C:white} X#2# {} Nhân khi ghi điểm"
                } 
            },
            j_poke_rhyperior = {
                name = 'Rhyperior',
                text = {
                    "Mỗi lá {C:attention}Đá{} đã chơi vĩnh viễn",
                    "thêm {C:chips}+#1#{} Chip khi ghi điểm",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Tái kích lá {C:attention}Dá{} cho mỗi",
                    "Joker hệ {X:earth,C:white}Thổ{} đang sở hữu",
                    "{C:inactive}(Hiện tại là #2# lượt tái kích)"
                } 
            },
            j_poke_tangrowth = {
                name = 'Tangrowth',
                text = {
                    "Lá Tuỳ Chất {C:attention}không thể{} bị vô hiệu hoá",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Lá {C:attention}Tuỳ Chất{} đã chơi ghi thêm",
                    "{C:mult}+#1#{} Nhân, {C:chips}+#2#{} Chip, hoặc {C:money}$#3#{}",
                    "Xác suất {C:green}#4# trên #5#{} nhận {C:attention}cả ba{}",
                } 
            },
            j_poke_electivire = {
                name = 'Electivire',
                text = {
                    "Thêm {C:money}$#1#{} {C:attention}giá bán{} ở cuối ván",
                    "và khi một lá bài được {C:attention}bán{}",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "nhận {X:mult,C:white}X#2#{} Nhân cho mỗi",
                    "$1 giá bán Joker này có",
                    "{C:inactive}(Hiện tại là {X:mult,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_magmortar = {
                name = 'Magmortar',
                text = {
                    "Nếu {C:attention}lượt bỏ bài đầu tiên{} chỉ có",
                    "{C:attention}1{} lá, phá huý nó và thêm {C:mult}+#2#{} Nhân",
                    "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Nhận {X:mult,C:white}X#4#{} Nhân cho mỗi lá đã bỏ",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân, {X:mult,C:white}X#3#{C:inactive} Nhân)",
                } 
            },
            j_poke_leafeon = {
                name = 'Leafeon',
                text = {
                    "Khi lá {C:attention}May Mắn{} kích hoạt",
                    "vĩnh viễn thêm {C:chips}+#2#{} Chip",
                    "mỗi lượt {C:green}gieo lại{} trong shop trước đó",
                    "{C:inactive}(Hiện tại là #1# lượt {C:green}gieo lại{C:inactive})"
                } 
            },
            j_poke_glaceon = {
                name = 'Glaceon',
                text = {
                    "Mỗi lượt gieo lại trong shop",
                    "có xác suất {C:green}#1# trên #2#{} thêm",
                    "bản sao của một lá {C:attention}Kính{} ngẫu nhiên",
                    "trong bộ bài vào shop",
                } 
            },
            j_poke_porygonz = {
                name = 'Porygon-Z',
                text = {
                    "{C:pink}+3{} Năng Lượng Tối Đa",
                    "{X:red,C:white} X#2# {} Nhân cho mỗi lá {C:pink}Nâng Lượng{}",
                    "đã dùng trong {C:attention}trận{} này",
                    "{C:inactive}(Hiện tại là {X:red,C:white} X#1# {C:inactive} Nhân)"
                } 
            },
            j_poke_froslass = {
                name = "Froslass",
                text = {
                  "có thể nợ tới {C:mult}-$#1#{}",
                  "{br:2.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "tạo 1 lá {C:item}vật phẩm{} khi",
                  "tay bài choi trong khi nợ",
                  "{C:inactive,s:0.8}(Phải có ô trống)",
                }
            },
            j_poke_elgyem = {
                name = "Elgyem",
                text = {
                    "Khi {C:attention}Blind{} được chọn, tạo ra",
                    "lá {C:planet}Hành Tinh{} {C:dark_edition}Âm Bản{} của một",
                    "trong {C:attention}#1#{} tay poker có level cao nhất",
                    "{C:inactive,s:0.8}(Tiến hoá khi giữ #2#/{C:planet,s:0.8}#3#{C:inactive,s:0.8} lá hành tinh khác nhau){}"
                }
            },
            j_poke_beheeyem = {
                name = "Beheeyem",
                text = {
                    "Khi {C:attention}Blind{} được chọn, tạo ra",
                    "lá {C:planet}Hành Tinh{} {C:dark_edition}Âm Bản{} của một",
                    "trong {C:attention}#1#{} tay poker có level cao nhất",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Sau khi mở {C:attention}#2# Gói Bài{}, tạo ra {C:attention}Kính Thiên Văn{}",
                    "hoặc {C:attention}Đài Thiên Văn{} nếu có thể"
                }
            },
            j_poke_litwick = {
                name = "Litwick",
                text = {
                    "{C:attention}Suy Giảm {C:money}$#1#{} từ Joker",
                    "liền kề ở cuối ván",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Thêm giá bán Joker này vào Nhân",
                    "{C:inactive}(Hiện tại là {C:mult}+#3#{C:inactive} Nhân){}",
                    "{C:inactive,s:0.8}(tiến hoá khi đạt {C:money,s:0.8}$#2#{C:inactive,s:0.8} giá bán)"
                }
            },
            j_poke_lampent = {
              name = "Lampent",
              text = {
                "{C:attention}Suy Giảm{C:money}$#1#{} từ mọi Joker",
                "khác ở cuối ván",
                "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                "Thêm {C:attention}hai lần{} giá bán Joker này vào Nhân",
                "{C:inactive}(Hiện tại là {C:mult}+#3#{C:inactive} Nhân){}",
                "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Đá Hoàng Hôn{C:inactive,s:0.8})"
              }
            },
            j_poke_chandelure = {
                name = "Chandelure",
                text = {
                    "Mỗi Joker có {C:money}1${} giá bán",
                    "cho {X:mult,C:white} X#1# {} Nhân và {C:money}$#2#{}",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "thêm {C:attention}ba lần{} giá bán Joker này vào Nhân",
                    "{C:inactive}(Hiện tại là {C:mult}+#3#{C:inactive} Nhân){}",
                }
            },
            j_poke_sylveon = {
                name = 'Sylveon',
                text = {
                    "Tạo ra 1 {C:attention}nhãn{} mỗi {C:attention}#3# {C:inactive}[#2#]{} {C:green}lượt gieo lại{} ",
                    "nếu có {C:attention}ít hơn 2{} nhãn",
                    "{br:2.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                    "Mỗi lá {C:attention}ấn bản{} {C:attention}giữ{}",
                    "trong tay cho {X:mult,C:white} X#1# {} Nhân",
                } 
            },
            j_poke_grubbin = {
                name = 'Grubbin',
                text = {
                    "{C:mult}+#1#{} Nhân",
                    "cho {C:attention}gấp ba{} lần nếu",
                    "sở hữu Joker hệ {X:lightning, C:black}Lôi{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }  
            },
            j_poke_charjabug = {
                name = 'Charjabug',
                text = {
                    "{C:mult}+#1#{} Nhân cho mỗi Joker",
                    "{X:lightning, C:black}Lôi{} đang sở hữu",
                    "{C:inactive}(Hiện tại là {C:mult}+#2#{C:inactive} Nhân)",
                    "{C:inactive,s:0.8}(Tiến hoá cùng với {C:attention,s:0.8}Lôi Thạch{C:inactive,s:0.8})"
                }  
            },
            j_poke_vikavolt = {
                name = 'Vikavolt',
                text = {
                    "{C:mult}+#3#{} Nhân",
                    "{X:red,C:white} X#1# {} Nhân cho mỗi Joker",
                    "{X:lightning, C:black}Lôi{} khác đang sở hữu",
                    "{C:inactive}(Hiện tại là {X:red,C:white} X#2# {C:inactive} Nhân)",
                }
            },
            j_poke_mimikyu = {
                name = "Mimikyu",
                text = {
                  "{C:chips}+#1#{} Chip nếu tay bài",
                  "đã chơi không có lá {C:hearts}#2#{} ghi điểm",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Ngăn thua trận nếu đạt ít nhất",
                  "{C:attention}50%{} chip yêu cầu",
                  "{C:inactive}(#3#){}"
                }
            },
            j_poke_yamper = {
                name = 'Yamper',
                text = {
                    "{C:mult}+#1#{} Nhân và nhận {C:money}$#2#{}",
                    "nếu tay bài đã chơi chứa",
                    "{C:attention}Sảnh{}",
                    "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#3#{C:inactive,s:0.8} ván)",
                } 
            },
            j_poke_boltund = {
                name = 'Boltund',
                text = {
                    "{X:red,C:white}X#1#{} Nhân và nhận {C:money}$#2#{}",
                    "nếu tay bài đã chơi",
                    "chứa {C:attention}Sảnh{}",
                } 
            },
            j_poke_dreepy = {
                name = "Dreepy",
                text = {
                  "Khi bán, thêm {C:money}$#1#{} giá bán",
                  "cho mỗi Joker và {C:attention}biến đổi{}",
                  "tất cả lá trên tay thành {C:spades}#2#{}",
                  "{C:inactive,s:0.8}(Tiến hoá khi chơi thùng phá sảnh)",
                }
            },
            j_poke_drakloak = {
                name = "Drakloak",
                text = {
                  "{X:red,C:white} X#4# {} Nhân cho mỗi {C:money}${}",
                  "giá bán của {C:attention}Joker{} đang sở hữu",
                  "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "nếu tay bài là {C:attention}Thùng Phá Sảnh{}",
                  "thêm {C:money}$#1#{} giá bán cho mỗi Joker",
                  "{C:inactive}(Hiện tại là {X:red,C:white} X#5# {C:inactive} Nhân){}",
                  "{C:inactive,s:0.8}(tiến hoá khi tổng giá bán các Joker là $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8})",
                }
            },
            j_poke_dragapult = {
                name = "Dragapult",
                text = {
                  "{X:red,C:white} X#2# {} Nhân cho mỗi {C:money}${}",
                  "giá bán của {C:attention}Joker{} đang sở hữu",
                  "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "nếu tay bài là {C:attention}Thùng Phá Sảnh{}",
                  "và không sở hữu {C:attention}Dreepy Dart{}",
                  "tạo ra {C:attention}2 Dreepy Dart{} {C:dark_edition}Âm bản{}",
                  "{C:inactive}(Hiện tại là {X:red,C:white} X#3# {C:inactive} Nhân){}"
                }
            },
            j_poke_dreepy_dart = {
                name = "Dreepy Dart",
                text = {
                    "Khi bán, thêm {C:money}$#1#{} giá bán",
                    "cho mỗi Joker và {C:attention}biến đổi{}",
                    "tất cả lá trên tay thành {C:spades}#2#{}",
                }
            },
            j_poke_fidough = {
                name = "Fidough",
                text = {
                  "Thêm {C:chips}+#2#{} Chip nếu tay bài ghi điểm chứa {C:attention}#3#{}",
                  "{C:attention}bậc{} yêu cầu tăng mỗi lần kích hoạt",
                  "{C:inactive,s:0.8}(nếu là bậc cao nhất, trở thành thấp nhất)",
                  "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                  "{C:inactive,s:0.8}(Tiến hoá khi sở hữu Joker hệ {X:fire,C:white,s:0.8}Hoả{C:inactive,s:0.8})",
                }
            },
            j_poke_dachsbun = {
                name = "Dachsbun",
                text = {
                  "Thêm {C:chips}+#2#{} Chip nếu tay bài ghi điểm chứa {C:attention}#3#{}",
                  "R {C:attention}bậc{} yêu cầu tăng mỗi lần kích hoạt",
                  "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Tăng lượng Chip lên {C:chips}+2{} cho mỗi",
                  "Joke {X:fire,C:white}Hoả{} sở hữu",
                  "{C:inactive,s:0.8}(nếu là bậc cao nhất, trở thành thấp nhất)",
                  "{C:inactive}(Hiện tại là {C:chips}+#1#{C:inactive} Chip)",
                }
            },
            j_poke_tinkatink = {
                name = "Tinkatink",
                text = {
                  "Lá bài đã chơi ghi thêm {C:mult}+#1#{} Nhân",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Khi {C:attention}Blind{} được chọn, vô hiệu hoá",
                  "{C:attention}#3#{} lá không-phải-{C:attention}Thép{} trong bộ bài",
                  "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_tinkatuff = {
                name = "Tinkatuff",
                text = {
                  "Lá bài đã chơi ghi thêm {C:mult}+#1#{} Nhân",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Khi {C:attention}Blind{} được chọn, vô hiệu hoá",
                  "{C:attention}#3#{} lá không-phải-{C:attention}Thép{} trong bộ bài",
                  "{C:inactive,s:0.8}(Tiến hoá sau {C:attention,s:0.8}#2#{C:inactive,s:0.8} ván)",
                }
            },
            j_poke_tinkaton = {
                name = "Tinkaton",
                text = {
                  "Lá bài đã chơi ghi thêm {C:mult}+#1#{} Nhân",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Khi {C:attention}Blind{} được chọn, vô hiệu hoá",
                  "{C:attention}#3#{} lá không-phải-{C:attention}Thép{} trong bộ bài",
                  "{br:4}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Lá {C:attention}Thép{} được coi như lá {C:attention}Kính{}"
                }
            },
            j_poke_annihilape = {
                name = 'Annihilape',
                text = {
                    "Mỗi lá {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, hoặc {C:attention}7{} thêm",
                    "{C:mult}+#1#{} Nhân và {C:chips}+#2#{} Chip khi ghi điểm",
                    "cho mỗi tay bài đã chơi trong ván này",
                    "{C:inactive}(Hiện tại là {C:mult}+#3#{} {C:inactive}Nhân {C:chips}+#4#{C:inactive} Chip)",
                } 
            },
            j_poke_gimmighoul = {
                name = "Gimmighoul (Rương)",
                text = {
                  "Lá {C:attention}Vàng{} đã chơi nhận {C:money}$#1#{} khi ghi điểm",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Bỏ qua 1 {C:attention}Gói Bài{} để...?",
                  "{C:inactive,s:0.8}(Tiến hoá khi nhận hoặc dùng tổng cộng $#2#/{C:money,s:0.8}$#3#{C:inactive,s:0.8})"
                }
            },
            j_poke_gimmighoulr = {
                name = "Gimmighoul (Lang thang)",
                text = {
                  "Nhận được {C:money}${}",
                  "{S:1.1,C:red,E:2}tự huỷ{}",
                }
            },
            j_poke_gholdengo = {
                name = "Gholdengo",
                text = {
                  "Lá {C:attention}Vàng{} đã chơi {C:red}tiêu{} {C:money}$#3#{}",
                  "khi ghi điểm và tăng",
                  "{X:red,C:white}X{} Nhân lên {X:red,C:white}X#1.5#",
                  "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào
                  "Joker này không thể bị vô hiệu hoá",
                  "{C:inactive}(Hiện tại là {X:red,C:white}X#1#{C:inactive} Nhân)",
                  "{C:inactive,s:0.8}(Đặt lại ở cuối ván)",
                }
            },
            j_poke_missingno = {
                name = 'Missingno.',
                text = {
                    "Tạo ra lá tiêu thụ",
                    "khi nhận được?",
                    "Tạo ra {C:attention}#1#?{} {C:attention}Nhãn?{}",
                } 
            },
            j_poke_pokedex = {
                name = 'Pokedex',
                text = {
                    -- chưa dịch
                    "{C:mult}+#2#{} Nhân cho mỗi",
                    "Joker có {C:pink}Hệ{}",
                    "{br:3}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào, chưa hiểu
                    "{C:attention}Pokemon{} từ cùng", 
                    "dòng tiến hoá có thể xuất hiện",
                    "{C:inactive}(Hiện tại là {C:mult}+#1#{C:inactive} Nhân)"
                } 
            },
            j_poke_everstone = {
                name = 'Everstone',
                text = {
                    "Pokemon {C:attention}không thể{} tiến hoá",
                    "{br:3.5}phải chèn chữ ở đây mới chạy", -- chả hiểu code như nào, chưa hiểu
                    "Mỗi Pokemon {C:attention}Cơ bản{} và {C:attention}Baby{} cho {X:mult,C:white} X#1# {} Nhân",
                } 
            },
            j_poke_tall_grass = {
                name = 'Tall Grass',
                text = {
                    "Xác suất {C:green}#1# trên #2#{} tạo ra một",
                    "{C:attention}Joker{} Pokemon {C:chips}Thường{}",
                    "khi chơi tay bài",
                    "Đảm bảo trúng nếu tay bài",
                    "chứa lá {C:attention}Tuỳ Chất{} ghi điểm",
                } 
            },
            j_poke_jelly_donut = {
                name = "Jelly Donut",
                text = {
                  "Tạo ra lá {C:colorless}Vô {C:pink}Năng{}",
                  "khi blind được chọn",
                  "{C:inactive}(Còn lại {C:attention}#1#{C:inactive} ván){}"
                }
            },
        },
        Planet = {
           --I wonder what a Pokémon planet would do?
        },
        Sleeve = {
            sleeve_poke_pokemonsleeve = {
                name = "Bọc Huấn Luyện Viên",
                text = {
                    "Bắt đầu trận với",
                    "phiếu {C:tarot,T:v_poke_goodrod}#1#{}",
                    "và lá {C:tarot,T:c_poke_pokeball}#2#{}",
                },
            },
            sleeve_poke_obituarysleeve = {
                name = "Bọc Cáo Phó",
                text = {
                    "Mọi lá bài có một {C:dark_edition}#1#{}",
                },
            },
            sleeve_poke_luminoussleeve = {
                name = "Bọc Chói Lọi",
                text = {
                    "Mọi Joker được tạo ra cùng với",
                    "nhãn {C:pink}Hệ{} ngẫu nhiên",
                },
            },
            sleeve_poke_telekineticsleeve = {
                name = "Bọc Ngoại Cảm",
                text = {
                    "Bắt đầu trận với",
                    "phiếu {C:tarot,T:v_crystal_ball}#1#{}",
                    "và {C:attention}2{} bản sao",
                    "của {C:item,T:c_poke_twisted_spoon}#2#"
                } 
            },
        },
        Spectral = {
            c_poke_ultraball = {
                name = "Ultraball",
                text = {
                    "Tạo ra một {C:attention}Joker{}",
                    "{C:attention}Cấp 2{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
            c_poke_masterball = {
                name = "Masterball",
                text = {
                    "Tạo ra một {C:attention}Joker Pokemon{}",
                    "{C:attention}Huyền Thoại{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
            c_poke_transformation = {
                name = "Chuyển Hoá",
                text = {
                    "Tiến hoá Pokemon ở tít bên trái hoặc đã chọn lên",
                    "{C:attention}cấp{} cao nhất và thêm {}+1{} {C:pink}Năng Lượng{}", 
                },
            },
            c_poke_megastone = {
                name = "Cực Hạn Thạch",
                text = {
                    "{C:attention}Tái Phẩm{}",
                    "{C:attention}Siêu tiến hoá{} một Pokemon", 
                    "hoặc {C:attention}thoái hoá{} một Siêu Tiến Hoá",
                    "{C:attention}thoái hoá{} Siêu Tiến Hoá nếu bán lá này",
                    "{C:inactive}(Chỉ dùng một lần mỗi ván)",
                },
            },
            c_poke_obituary = {
                name = "Cáo Phó",
                text = {
                    "Thêm một con dấu {C:pink}Hồng{}",
                    "lên {C:attention}1{} lá đã chọn",
                }
            },
            c_poke_nightmare = {
                name = "Ác Mộng",
                text = {
                    "Phá huỷ Joker đã chọn với một {C:pink}Hệ{}",
                    "và tạo ra {C:attention}2{} lá {C:pink}Năng Lượng{} {C:dark_edition}Âm Bản{}",
                    "cùng {C:pink}hệ{} với Joker đó"
                },
            },
            c_poke_revenant = {
                name = "U Linh",
                text = {
                    "Thêm một con dấu {C:item}Bạc",
                    "lên {C:attention}1{} lá đã chọn",
                }
            },
        },
        Tag = {
            tag_poke_pocket_tag = {
                name = "Nhãn Bỏ Túi",
                text = {
                    "Nhận một {C:pink}Gói Bỏ Túi Đại{} miễn phí",
                    "Xác suất {C:green}25%{} để gói chứa",
                    "{C:attention}Cực Hạn Thạch{} ở {C:attention}Ante 5+{}"
                }, 
            },
            tag_poke_shiny_tag = {
                name = "Nhãn Shiny",
                text = {
                    "Joker tiêu chuẩn tiếp theo",
                    "trong shop thì miễn phí và",
                    "trở thành {C:colorless}Shiny{}",
                }, 
            },
            tag_poke_stage_one_tag = {
                name = "Nhãn Cấp 1",
                text = {
                    "Shop có một Joker",
                    "{C:attention}Cấp 1{} miễn phí",
                }, 
            },
            tag_poke_safari_tag = {
                name = "Nhãn Thám Hiểm",
                text = {
                    "Shop có một Joker",
                    "{C:safari}Thám Hiểm{} miễn phí",
                }, 
            },
        },
        Tarot = {
            c_poke_pokeball = {
                name = "Pokéball",
                text = {
                    "Tạo ra một {C:attention}Joker",
                    "{C:attention}Cơ Bản{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
            c_poke_greatball = {
                name = "Greatball",
                text = {
                    "Tạo ra một {C:attention}Joker",
                    "{C:attention}Cấp 1{} ngẫu nhiên",
                    "{C:inactive}(Phải có ô trống)"
                },
            },
        },
        Voucher = {
            v_poke_energysearch = {
                name = "Truy Năng",
                text = {
                    "{C:pink}+2{} Năng lượng Tối Đa"
                },
            },
            v_poke_energyresearch = {
                name = "Tái Truy Năng",
                text = {
                    "{C:pink}+3{} Năng lượng Tối Đa"
                },
            },
            v_poke_goodrod = {
                name = "Cần Câu",
                text = {
                    "{C:attention}Gói Bài{} chứa",
                    "thêm {C:attention}1{} lá bài",
                },
            },
            v_poke_superrod = {
                name = "Cần Xịn",
                text = {
                    "Bạn có thể {C:pink}Giữ lại{} lá bài",
                    "từ mọi gói {C:attention}tiêu thụ{}",
                },
            },
        },
        Other = {

            Grass = {
                name = "Hệ",
                text = {
                  "{X:grass,C:white}Cỏ{}",
                }
            },
            Fire = {
                name = "Hệ",
                text = {
                  "{X:fire,C:white}Hoả{}",
                }
            },
            Water = {
                name = "Hệ",
                text = {
                  "{X:water,C:white}Thuỷ{}",
                }
            },
            Lightning = {
                name = "Hệ",
                text = {
                  "{X:lightning,C:black}Lôi{}",
                }
            },
            Psychic = {
                name = "Hệ",
                text = {
                  "{X:psychic,C:white}Tâm_Linh{}",
                }
            },
            Fighting = {
                name = "Hệ",
                text = {
                  "{X:fighting,C:white}Giác_Đấu{}",
                }
            },
            Colorless = {
                name = "Hệ",
                text = {
                  "{X:colorless,C:white}Thường{}",
                }
            },
            Dark = {
                name = "Hệ",
                text = {
                  "{X:dark,C:white}Bóng_Tối{}",
                }
            },
            Metal = {
                name = "Hệ",
                text = {
                  "{X:metal,C:white}Thiếc{}",
                }
            },
            Fairy = {
                name = "Hệ",
                text = {
                  "{X:fairy,C:white}Tiên{}",
                }
            },
            Dragon = {
                name = "Hệ",
                text = {
                  "{X:dragon,C:white}Rồng{}",
                }
            },
            Earth = {
                name = "Hệ",
                text = {
                  "{X:earth,C:white}Thổ{}",
                }
            },
            --Have you Heard? Bird is the wordddd
            Bird = {
                name = "Hệ",
                text = {
                  "{X:bird,C:white}Chim{}",
                }
            },
            --infoqueue used for things like kabuto and omanyte
            ancient = {
                name = "Cổ Đại",
                text = {
                    "Hiệu ứng được dựa trên",
                    "số lá {C:attention}#1#{}",
                    "trong tay poker",
                    "{C:inactive}(Hiệu ứng {C:attention}tích luỹ{C:inactive})"
                }
            },
            eitem = {
                name = "Lá Tiến Hoá",
                text = {
                    "Khi tiêu thụ, tiến hoá Joker {C:attention}đạt chuẩn{}",
                    "ở tít bên trái hoặc đã chọn",
                    "ở cuối ván kế tiếp",
                }
            },
            --Infoqueue used by some Consumables
            hitem = {
                name = "Lá Giữ",
                text = {
                    "Được dùng bởi {C:attention}#1#{}"
                }
            },
            typechanger = {
                name = "Hoán Hệ",
                text = {
                    "Áp nhãn {V:1}#1#{} lên Joker",
                    "ở tít bên trái hoặc đã chọn"
                }
            },
            basic = {
                name = "Cơ Bản",
                text = {
                    "Một Joker Pokemon",
                    "không có {C:attention}Tiến Hoá{}",
                    "{C:inactive}(ngoại trừ {C:inactive}Pokemon {C:attention}Baby{})"
                }
            },
            stage1 = {
                name = "Cấp 1",
                text = {
                    "Một Joker Pokemon",
                    "được {C:attention}Tiến Hoá{} một lần"
                }
            },
            stage2 = {
                name = "Cấp 2",
                text = {
                    "Một Joker Pokemon",
                    "được {C:attention}Tiến Hoá{} hai lần"
                }
            },
            energy = {
                name = "Năng Lượng Đã Dùng",
                text = {
                    "{C:attention}#1#{}/#2#",
                }
            },
            money_chance = {
                name = "Tiền Xác Suất",
                text = {
                    "Xác suất {C:attention}#1#%{}",
                    "nhận thêm {C:money}$1{}"
                }
            },
            mult_progress = {
                name = "Tiến Trình Gia Nhân",
                text = {
                    "{C:attention}#1#%{} tiến trình",
                    "đối với {C:mult}Nhân{} Nhận Được",
                    "tăng thêm {C:mult}+1{}"
                }
            },
            chip_progress = {
                name = "Tiến Trình Gia Chip",
                text = {
                    "{C:attention}#1#%{} tiến triển",
                    "đối với {C:chips}Chip{} Nhận Được",
                    "tăng thêm {C:chips}+1{}"
                }
            },
            money_progress = {
                name = "Tiến Trình Gia Tài",
                text = {
                    "{C:attention}#1#%{} tiến triển",
                    "đối với {C:money}${} Nhận Được",
                    "tăng thêm {C:money}1${}"
                }
            },
            availability = {
                name = "Tính Khả Dụng",
                text = {
                    "Không có sẵn nếu",
                    "{C:attention}#1#{}",
                }
            },
            baby = {
                name = "Baby",
                text = {
                    "Khi tay bài được chơi",
                    "nếu có bất kỳ Joker {C:attention}không-phải-Baby{}",
                    "nào ở bên phải lá Joker",
                    "này, tự {C:attention}vô hiệu hoá{}"
                }
            },
            nature = {
                name = "Thiên Nhiên",
                text = {
                    "Giá trị {C:attention}#1#{} được",
                    "thiết lập ngẫu nhiên",
                    "khi lá Joker được tạo ra"
                }
            },
            mega_rule = {
                name = "Hạn Chế",
                text = {
                    "Chỉ 1 Joker có thể",
                    "{C:attention}Siêu Tiến Hoá{} với mỗi",
                    "{C:attention}Cực Hạn Thạch{} bạn có"
                }
            },
            mega_poke = {
                name = "Siêu Tiến Hoá",
                text = {
                    "Có thể {C:attention}Siêu Tiến Hoá{}",
                    "bằng {C:attention}Cực Hạn Thạch{}"
                }
            },
            mega_used_on = {
                name = "Được Dùng Lên",
                text = {
                    "{C:attention}#1#{}",
                }
            }, 
            split_mega = {
                name = "XY Mega",
                text = {
                  "{C:attention}Siêu Tiến Hoá{} dựa trên vị trí",
                  "Tít bên trái - {C:attention}#1#{}",
                  "Tít bên phải - {C:attention}#2#{}"
                }
            },
            playing_card_to_evolve = {
                name = "Yêu Cầu",
                text = {
                    "Cần dùng lên",
                    "{C:attention}lá bài thường{}",
                    "để tiến hoá"
                }
            },
            deli_gift = {
                name = "Quà Tặng",
                text = {
                    "{C:green}35%{} - {C:money}$8{}",
                    "{C:green}30%{} - {C:attention}Lá {C:item}Vật Phẩm{}",
                    "{C:green}20%{} - {C:attention}Nhãn Phiếu Thưởng",
                    "{C:green}15%{} - {C:attention}Thẻ Quà Tặng {C:dark_edition}Đa Sắc{}",
                }
            },
            percent_chance = {
                name = "Xác Suất Phần Trăm",
                text = {
                  "Xác suất {C:green}#1#%{}",
                  "để {C:attention}hiệu ứng{} xảy ra",
                  "{C:inactive}(Xác suất không thể tăng){}"
                }
            },
            holding = {
                name = "Giữ",
                text = {
                  "Joker này đi cùng với",
                  "lá {C:attention}#1#{}",
                  "{C:inactive}(Phải có ô trống){}"
                }
            },
            eeveelution = {
                name = "Tiến Hoá",
                text = {
                    "{C:attention}Thủy Thạch{} - {X:water,C:white}Vaporeon{}",
                    "{C:attention}Lôi Thạch{} - {X:lightning,C:black}Jolteon{}",
                    "{C:attention}Hỏa Thạch{} - {X:fire,C:white}Flareon{}",
                    "{C:attention}Thái Dương Thạch{} - {X:psychic,C:white}Espeon{}",
                    "{C:attention}Nguyệt Thạch{} - {X:dark,C:white}Umbreon{}",
                    "{C:attention}Mộc Thạch{} - {X:grass,C:white}Leafeon{}",
                    "{C:attention}Băng Thạch{} - {X:water,C:white}Glaceon{}",
                    "{C:attention}Minh Thạch{} - {X:fairy,C:white}Sylveon{}"
                }
            },
            poke_top_cards = {
              name = "Lá Hàng Đầu",
              text = {
                "{C:attention}#1#{}",
                "{C:attention}#2#{}",
              }
            },
            poke_drain = {
              name = "Suy Giảm",
              text = {
                "Loại bỏ giá bán khỏi",
                "một Joker và thêm vào",
                "chính nó nếu Joker có",
                "giá bán lớn hơn {C:money}$1{}"
              }
            },
            poke_drain_item = {
              name = "Suy Giảm",
              text = {
                "Loại bỏ giá bán khỏi",
                "một Joker nếu Joker có",
                "giá bán lớn hơn {C:money}$1{}",
              }
            },
            precise_energy_tooltip = {
                name = "Tăng Trưởng Chính Xác",
                text = {
                    "{s:0.8}Sử dụng {C:attention,s:0.8}số thập phân{} cho mỗi giá trị khi áp dụng {s:0.8}Thưởng{} {C:pink,s:0.8}Năng Lượng{}",
                    "{s:0.8}Khi tuỳ chọn này {C:attention,s:0.8}tắt{}{s:0.8} sẽ sảy ra những hệ quả sau:{}",
                    "{C:attenion}1. {X:mult,C:white,s:0.8}X{} {s:0.8}Nhân - Sử dụng số thập phân",
                    "{C:attenion}2. {s:0.8}+ {C:mult,s:0.8}Nhân{}{s:0.8} và {C:chips,s:0.8}Chip{}{s:0.8} - Làm tròn tới hàng đơn vị gần nhất",
                    "{C:attenion}3. {s:0.8}{C:mult,s:0.8}Nhân Thêm{}{s:0.8} và {C:chips,s:0.8}Chip Thêm{}{s:0.8} - Hiển thị phần thập phân", 
                    "{s:0.8}dưới dạng phần trăm, dùng để thưởng cho {C:mult,s:0.8}Nhân{}{s:0.8} and {C:chips,s:0.8}Chip{s:0.8} chuẩn",
                    "{C:attenion}4. {C:money,s:0.8}${}{s:0.8} - Các chữ số thập phân được hiển thị dưới dạng phần trăm,",
                    "{s:0.8}được sử dụng như xác suất nhận thêm {C:money,s:0.8}${}",
                    "{C:inactive,s:0.8}(Joker không-phải-Pokemon sẽ luôn sử dụng tăng trưởng chính xác){}"
                }
            },
            discovery_tooltip = {
              name = "Khám Phá",
              text = {
                "Vật từ Pokermon mod đều chưa được khám phá",
                "bởi mặc định. Tắt tuỳ chọn thiết lập này",
                "sẽ mở khoá toàn bộ vật phẩm mod",
                "{C:red}Khám phá tất cả các đối tượng không thể hoàn tác{}"
              }
            }, 
            designed_by = {
              name = "Được thiết kế bởi",
              text = {
                "{C:dark_edition}#1#{}"
              }
            },
            endless = {
              name = "Tái Phẩm",
              text = {
                "Không biến mất khi dùng",
                "{C:inactive,s:0.8}(Không tính {C:attention,s:0.8}Thìa Xoắn{C:inactive,s:0.8})"
              }
            },
            sylveon_tag_pool = {
              name = "Nhãn Gộp",
              text = {
                "{C:attention}#1#",
                "{C:tarot}#2#",
                "{C:attention}#3#",
              }
            },
            safaridesc = {
                name = "Thám Hiểm",
                text = {
                    "Chỉ có thể được thuẩn hoá",
                    "bằng {C:attention}Tiến Hoá{}",
                    "hoặc {C:attention}Vật Phẩm Pokeball{} nhất định"
                } 
            },

            --this key is extremely cursed xd
            poke_pink_seal_seal = {
                name = "Con Dấu Hồng",
                text = {
                    "Tạo một lá {C:pink}Năng Lượng",
                    "được kết nối với {C:attention}hệ{} của lá Joker có nó",
                    "nếu nó được ghi điểm tại",
                    "{C:attention}tay bài đầu{} của ván",
                    "{C:inactive}(Phải có ô trống){}"
                },
            },
            
            --less cursed
            poke_silver_seal = {
                name = "Con Dấu Bạc",
                text = {
                  "Tạo một lá {C:item}Vật Phẩm{}",
                  "và bị {C:attention}bỏ{} nếu {C:attention}cầm{}",
                  "trên tay khi các lá đã được ghi điểm"
                }
            },

            grass_sticker = {
                name = "Hệ",
                text = {
                    "{X:grass,C:white}Cỏ{}"
                } 
            },
            fire_sticker = {
                name = "Hệ",
                text = {
                    "{X:fire,C:white}Hoả{}"
                } 
            },
            water_sticker = {
                name = "Hệ",
                text = {
                    "{X:water,C:white}Thuỷ{}"
                } 
            },
            lightning_sticker = {
                name = "Hệ",
                text = {
                    "{X:lightning,C:white}Lôi{}"
                } 
            },
            psychic_sticker = {
                name = "Hệ",
                text = {
                    "{X:psychic,C:white}Tâm_Linh{}"
                } 
            },
            fighting_sticker = {
                name = "Hệ",
                text = {
                    "{X:fighting,C:white}Giác_Đấu{}"
                } 
            },
            colorless_sticker = {
                name = "Hệ",
                text = {
                    "{X:colorless,C:white}Không_Màu{}"
                } 
            },
            dark_sticker = {
                name = "Hệ",
                text = {
                    "{X:dark,C:white}Bóng_Tối{}"
                } 
            },
            metal_sticker = {
                name = "Hệ",
                text = {
                    "{X:metal,C:white}Thiếc{}"
                } 
            },
            fairy_sticker = {
                name = "Hệ",
                text = {
                    "{X:fairy,C:white}Tiên{}"
                } 
            },
            dragon_sticker = {
                name = "Hệ",
                text = {
                    "{X:dragon,C:white}Rồng{}"
                } 
            },
            earth_sticker = {
                name = "Hệ",
                text = {
                    "{X:earth,C:white}Thổ{}"
                } 
            },
            --Since these are normally discovered by default these will probably not matter
            --But they COULD matter? Right? Right??????
            undiscovered_energy = {
                name = "Chưa Khám Phá",
                text = {
                    "Mua hoặc sử dụng",
                    "lá bài này trong",
                    "một trận ngẫu nhiên",
                    "để biết tác dụng của nó"
                }
            },
            undiscovered_item = {
                name = "Chưa Khám Phá",
                text = {
                    "Mua hoặc sử dụng",
                    "lá bài này trong",
                    "một trận ngẫu nhiên",
                    "để biết tác dụng của nó"
                }
            },
            p_poke_pokepack_normal_1 = {
                name = "Gói Bỏ Túi",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_normal_2 = {
                name = "Gói Bỏ Túi",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_jumbo_1 = {
                name = "Gói Bỏ Túi Lớn",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_mega_1 = {
                name = "Gói Bỏ Túi Đại",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_normal_3 = {
                name = "Gói Bỏ Túi",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_normal_4 = {
                name = "Gói Bỏ Túi",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_jumbo_2 = {
                name = "Gói Bỏ Túi Lớn",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
                },
            },
            p_poke_pokepack_mega_2 = {
                name = "Gói Bỏ Túi Đại",
                text = {
                    "Chọn {C:attention}#1#{} trong giữa",
                    "{C:attention}#2#{} Lá {C:item}Vật Phẩm{} và",
                    "{C:attention}#3#{} Lá {C:pink}Năng Lượng{}",
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
            c_poke_nuzlocke = "Khoá Sinh Mệnh",
        },
        dictionary = {
            k_energy = "Năng Lượng",
            k_item = "Vật Phẩm",
            k_poke_pocket_pack = "Gói Bỏ Túi",

            k_poke_safari = "Thám Hiểm",
            k_poke_mega = "Siêu Cấp",

            b_save = "LƯU",
            b_energy_cards = "Lá Năng Lượng",
            b_item_cards = "Lá Vật Phẩm",
            
            --Mod Menu stuff
            poke_settings_header_required = "Restart Required:",
            poke_settings_header_norequired = "No Restart Required:",
            poke_settings_pokemon_only = "Pokemon only?",
            poke_settings_unlimited_energy = "Unlmited Energy?",
            poke_settings_shiny_playing_cards = "Shiny on playing cards?",
            poke_settings_jokers_only = "Jokers only?",
            poke_settings_no_evolutions = "No Evolutions?",
            poke_settings_pokeballs = "Pokéballs?",
            poke_settings_pokedex_number = "Pokedex Numbers?",
            poke_settings_pokemon_splash = "Pokémon Splash Card?",
            poke_settings_pokemon_gen_one = "Gen 1 Only?",
            poke_settings_pokemon_precise_energy = "Use Precise Energy Scaling?",
            poke_settings_pokemon_discovery = "! Discovery?",
            poke_credits_actualcredits = "Credits",
            poke_credits_thanks = "Thanks to",
            poke_credits_lead = "Lead Developer: ",
            poke_credits_graphics = "Graphic Design: ",
            poke_credits_quality_assurance_main = "QA: ",
            poke_credits_developer = "Developers: ",
            poke_credits_designer = "Design Assistants: ",
            poke_credits_community_manager = "Community Managers: ",
            poke_credits_promotion_producer = "Promotion Producer: ",
            poke_credits_localization = "Localization: ",
            poke_credits_sound = "Audio Engineer: ",

            poke_plus_pokeitem = "+1 vật phẩm",
            poke_plus_energy = "+1 Năng lượng",
            poke_plus_shop = "+1 lá Shop",
            poke_destroyed_ex = "Bị phá huỷ!",
            poke_evolve_success = "Tiến hoá!",
            poke_evolve_level = "Thăng cấp!",
            poke_tera_ex = "Tinh thể!",
            poke_metal_ex = "Thiếc!",
            poke_dragon_ex = "Rồng!",
            poke_energized_ex = "Tràn trề năng lượng!",
            poke_unlimited_energy = "Vô cực",

            --Some infoqueue/variable stuff
            farfetchd_infoqueue = "Farfetch\'d",
            cubone_marowak_infoqueue = "Cubone và Marowak",
            snorlax_infoqueue = "Snorlax",
            pokeball_variable = "Pokéball",
            goodrod_variable = "Cần Câu",
            pinkseal_variable = "Con Dấu Hồng",
            twisted_spoon_variable = "Thìa Xoắn",

            --From Gastly Line
            poke_lick_ex = "Liếm!",
            poke_lick = "Liếm",
            --From Kingler
            poke_surf_ex = "Lướt!",
            --From Voltorb Line
            poke_explosion_ex = "BOOM!",
            --From Exeggutor
            poke_solar_ex = "Mặt Trời!",
            poke_solar = "Mặt Trời",
            --From Pinsir
            poke_pinsir_pin = "Đã Ghim!",
            poke_pinsir_remove_pin = "Giải Ghim!",
            --From Tangela line
            poke_tangela_bonus = "Toàn Bộ!",
            --Golbat And Crobat thingy
            poke_screech_ex = "La hét!",
            --From Bellossom
            poke_petal_dance_ex = "Hoa Vũ!",
            poke_petal_dance = "Hoa Vũ",
            --From Scizor
            poke_x_scissor_ex = "Giao Trảm!",
            poke_x_scissor = "Giao Trảm",
            --From Kingdra
            poke_twister_ex = "Cuồng Phong!",
            --From Mime Jr.
            poke_mime_ex = "Tiểu Kịch!",
            --From Magmortar
            poke_fire_blast_ex = "Bạo Liệt!",
            --From Vikavolt
            --If it's not 100% accurate...
            poke_thunder_ex = "Lôi chấn!",
            poke_gift_ex = "Tặng Quà!",
            poke_faint_ex = "Suy Kiệt!",
            poke_nido_ex = "Tử Gai!",
            poke_disguise_intact = "Ngụy Trang Nguyên Vẹn! Thoát Khỏi Cái Chết!",
            poke_disguise_broken = "Cải Trang Tan Vỡ! Sinh Mệnh Nguy Kịch!",
            poke_dig_ex = "Đào!",
            poke_blazekick_ex = "Liệt Hỏa Cước!",
            poke_darts_ex = "Tiêu Kích!",
            poke_none = "Không",
            poke_dawn_info1 = "(Ván bài tiếp theo sẽ xác định loại bài trên tay.)",
            poke_dawn_info2 = "(thiết lập hệ tay!)",
            poke_make_it_rain = "Kim Tiền Trận!",
            poke_val_down = "Suy Giảm!",
            poke_powder_ex = "Hàn Tuyết!",
            poke_future_sight = "Tiên Tri!"
        },
        --These are the Labels
        --You know how things like seals and editions have those badges at the bottom? That's what this is for!
        labels = {
            poke_pink_seal_seal = "Con Dấu Hồng",
            poke_silver_seal = "Con Dấu Bạc",

            poke_shiny = "Shiny",

            grass_sticker = "Tinh Thể Hoá",
            fire_sticker = "Tinh Thể Hoá",
            water_sticker = "Tinh Thể Hoá",
            lightning_sticker = "Tinh Thể Hoá",
            psychic_sticker = "Tinh Thể Hoá",
            fighting_sticker = "Tinh Thể Hoá",
            colorless_sticker = "Tinh Thể Hoá",
            dark_sticker = "Tinh Thể Hoá",
            metal_sticker = "Tinh Thể Hoá",
            fairy_sticker = "Tinh Thể Hoá",
            dragon_sticker = "Tinh Thể Hoá",
            earth_sticker = "Tinh Thể Hoá",

            k_poke_safari = "Thám Hiểm",
            k_poke_mega = "Siêu Cấp",
        },
        v_dictionary = {
            
        },
        v_text = {
           ch_c_poke_add_joker_slots = {"{C:attention}+1{} ô Joker khi Boss Blind bị đánh bại {C:inactive}(lên tới 5)"},
           ch_c_poke_nuzlocke = {"Shop đầu tiên mỗi Ante chứa một {C:attention}Gói Hề"}
        },
    }
}
