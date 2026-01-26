local all_cards_enhanced = function(enhancement)
end

local nuzlocke = {
    object_type = "Challenge",
    key = "nuzlocke",
    rules = {
        custom = {
            {id = 'no_shop_jokers'},
			{id = 'all_eternal'},
            {id = 'poke_add_joker_slots'},
            {id = 'poke_nuzlocke'}
        },
        modifiers = {
            {id = 'joker_slots', value = 1},
        }
    },
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
            {id = 'c_poke_pokeball'},
            {id = 'c_poke_greatball'},
            {id = 'c_poke_ultraball'},
            {id = 'c_poke_masterball'},
            {id = 'v_antimatter'},
            {id = 'p_buffoon_normal_1', ids = {
                'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
            }},
            {id = 'j_gros_michel'},
            {id = 'j_ice_cream'},
            {id = 'j_cavendish'},
            {id = 'j_luchador'},
            {id = 'j_turtle_bean'},
            {id = 'j_diet_cola'},
            {id = 'j_popcorn'},
            {id = 'j_ramen'},
            {id = 'j_selzer'},
            {id = 'j_mr_bones'},
            {id = 'j_invisible'},
            {id = 'j_poke_gastly'},
            {id = 'j_poke_haunter'},
            {id = 'j_poke_gengar'},
            {id = 'j_poke_koffing'},
            {id = 'j_poke_weezing'},
            {id = 'j_poke_ditto'},
            {id = 'j_poke_mewtwo'},
            {id = 'j_poke_scyther'},
            {id = 'j_poke_scizor'},
            {id = 'j_poke_jelly_donut'},
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},
            {id = 'tag_poke_shiny_tag'},
            {id = 'tag_poke_stage_one_tag'},
            {id = 'tag_poke_safari_tag'},
            {id = 'tag_poke_starter_tag'},
        },
        banned_other = {
            {id = 'bl_final_leaf', type = 'blind'},
            {id = 'bl_poke_mirror', type = 'blind'}
        },
        deck = {
            type = 'Challenge Deck'
        },
    },
    button_colour = HEX('947362'),
    text_colour = G.C.GREEN,
}

-- add joker slots when ante increases with Nuzlocke
-- todo: insert this in a better spot for mod compat
local ea = ease_ante
function ease_ante(m)
    ea(m)
    if m > 0 then
        if G.GAME.modifiers.poke_add_joker_slots then
            G.GAME.poke_slots_added = G.GAME.poke_slots_added or 0
            G.GAME.poke_slots_added = G.GAME.poke_slots_added + 1
            if G.GAME.poke_slots_added <= 5 then
                G.jokers.config.card_limit = G.jokers.config.card_limit + 1
            end
        end
        if G.GAME.modifiers.poke_nuzlocke then
            G.GAME.first_shop_buffoon = false
        end
    end
end

local gp = get_pack
function get_pack(_key, _type)
    if G.GAME.modifiers.poke_nuzlocke and not G.GAME.first_shop_buffoon then
        G.GAME.first_shop_buffoon = true
        return G.P_CENTERS['p_buffoon_normal_'..(math.random(1, 2))]
    end
    return gp(_key, _type)
end

local goodasgold = {
    object_type = "Challenge",
    key = "goodasgold",
    rules = {
        modifiers = {
            {id = 'hand_size', value = 6},
            {id = 'dollars', value = 6}
        }
    },
    jokers = {
      {id = "j_poke_gholdengo", eternal = true},
    },
    restrictions = {
        banned_cards = {
            {id = 'j_poke_goldeen'},
            {id = 'j_poke_seaking'},
        },
        banned_tags = {
        },
        banned_other = {
            {id = 'bl_final_leaf', type = 'blind'},
            {id = 'bl_poke_mirror', type = 'blind'}
        },
    },
    deck = {
      type = 'Challenge Deck',
      enhancement = 'm_gold',
    },
    button_colour = HEX('af843e'),
    text_colour = G.C.GOLD,
}

local parenthood = {
    object_type = "Challenge",
    key = "parenthood",
    name = "Parenthood",
    rules = {
        custom = {
            {id = 'no_shop_jokers'},
            {id = 'no_interest'}
        },
        modifiers = {
            {id = 'joker_slots', value = 2},
        }
    },
    jokers = {
      {id = 'j_poke_mystery_egg'},
      {id = 'j_poke_mystery_egg'},
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_poke_pokeball'},
            {id = 'c_poke_greatball'},
            {id = 'c_poke_ultraball'},
            {id = 'c_poke_masterball'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
            {id = 'v_blank'},
            {id = 'v_antimatter'},
            {id = 'p_buffoon_normal_1', ids = {
                'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
            }},
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},
            {id = 'tag_poke_shiny_tag'},
            {id = 'tag_poke_stage_one_tag'},
            {id = 'tag_poke_safari_tag'},
            {id = 'tag_poke_starter_tag'},
        },
        banned_other = {
            {id = 'bl_final_heart', type = 'blind'},
            {id = 'bl_final_leaf', type = 'blind'},
            {id = 'bl_poke_mirror', type = 'blind'}
        }
    },
    button_colour = HEX("e7deb5"),
    text_colour = HEX("84b56b"),
}

local littlecup = {
    object_type = "Challenge",
    key = "littlecup",
    rules = {
        custom = {
          {id = 'no_reward_specific', value = 'Small'},
          {id = 'no_reward_specific', value = 'Big'},
        },
        modifiers = {
            {id = 'joker_slots', value = 3},
        }
    },
    jokers = {
      {id = "j_poke_everstone", eternal = true, edition = 'negative'},
    },
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
          {id = 'bl_poke_mirror', type = 'blind'}
        },
    },
    deck = {
      type = 'Challenge Deck',
    },
    button_colour = HEX('deb0ad'),
    text_colour = HEX('e8d4bb')
}

local hammertime = {
    object_type = "Challenge",
    key = "hammertime",
    rules = {
        modifiers = {
            {id = 'hands', value = 2},
            {id = 'discards', value = 1},
        }
    },
    jokers = {
      {id = "j_poke_tinkaton", eternal = true},
    },
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
          {id = 'bl_poke_mirror', type = 'blind'}
        },
    },
    deck = {
      cards = {{s='D',r='2',},{s='D',r='3',},{s='D',r='4',},{s='D',r='5',},{s='D',r='A'},
                {s='H',r='2',},{s='H',r='3',},{s='H',r='4',},{s='H',r='5',},{s='H',r='A'},
                {s='C',r='2',},{s='C',r='3',},{s='C',r='4',},{s='C',r='5',},{s='C',r='A'},
                {s='S',r='2',},{s='S',r='3',},{s='S',r='4',},{s='S',r='5',},{s='S',r='A',e='m_steel'},
        },
      type = 'Challenge Deck',
    },
    button_colour = HEX('9AA4B7'),
    text_colour = HEX('fc96c1')
}

local lonesome = {
    object_type = "Challenge",
    key = 'lonesome',
    rules = {
        custom = {
            { id = 'no_shop_jokers' },
        },
        modifiers = {
            { id = 'joker_slots', value = 1 },
			{ id = 'consumable_slots', value = 10 },
        }
    },
    jokers = {
        { id = 'j_poke_cubone', eternal = true},
	},
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
            {id = 'c_poke_pokeball'},
            {id = 'c_poke_greatball'},
            {id = 'c_poke_ultraball'},
            {id = 'c_poke_masterball'},
			{id = 'v_blank'},
            {id = 'v_antimatter'},
            {id = 'p_buffoon_normal_1', ids = {'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',}},
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},
            {id = 'tag_poke_shiny_tag'},
            {id = 'tag_poke_stage_one_tag'},
            {id = 'tag_poke_safari_tag'},
            {id = 'tag_poke_starter_tag'},
        },
        banned_other = {
            { id = 'bl_final_heart', type = 'blind' },
            { id = 'bl_final_leaf',  type = 'blind' },
            { id = 'bl_final_acorn', type = 'blind' },
            {id = 'bl_poke_mirror', type = 'blind'}
        }
    },
    button_colour = HEX('c59c4a'),
}

local randomizer = {
    object_type = "Challenge",
    key = "randomizer",
    rules = {
        custom = {
            { id = 'apply_randomizer' },
        },
    },
    jokers = {
    },
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
        },
    },
    deck = {
      type = 'Challenge Deck',
    },
    button_colour = G.C.DARK_EDITION,
    text_colour = G.C.EDITION
}

local delibird_delimma = {
    key = 'delibird_delimma',
    rules = {
        custom = {
            { id = 'no_reward' },
            { id = 'no_extra_hand_money' },
            { id = 'no_interest' },
        }
    },
    jokers = {
        { id = 'j_poke_delibird', eternal = true},
    },
    restrictions = {
        banned_cards = {
            { id = 'v_seed_money' },
            { id = 'v_money_tree' },
            { id = 'j_to_the_moon' },
            { id = 'j_rocket' },
            { id = 'j_satellite' },
        },
        banned_other = {
            {id = 'bl_poke_mirror', type = 'blind'}
        }
    },
    button_colour = HEX('de3131')
}

local safety_first = {
    key = 'safety_first',
    rules = {
        custom = {
            { id = 'no_shop_jokers' },
        },
        modifiers = {
            { id = 'joker_slots', value = 3 },
        }
    },
    jokers = {
        { id = 'j_poke_mudkip', eternal = true},
        { id = 'j_poke_roggenrola', eternal = true},
        { id = 'j_poke_espeon', eternal = true},
	},
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_soul'},
            {id = 'c_pluto'},
            {id = 'c_black_hole'},
            {id = 'c_poke_moonstone'},
            {id = 'c_poke_grass_energy'},
            {id = 'c_poke_fire_energy'},
            {id = 'c_poke_water_energy'},
            {id = 'c_poke_lightning_energy'},
            {id = 'c_poke_psychic_energy'},
            {id = 'c_poke_fighting_energy'},
            {id = 'c_poke_colorless_energy'},
            {id = 'c_poke_darkness_energy'},
            {id = 'c_poke_metal_energy'},
            {id = 'c_poke_fairy_energy'},
            {id = 'c_poke_dragon_energy'},
            {id = 'c_poke_earth_energy'},
            {id = 'c_poke_double_rainbow_energy'},
            {id = 'c_poke_transformation'},
            {id = 'c_poke_teraorb'},
            {id = 'c_poke_obituary'},
            {id = 'c_poke_nightmare'},
            {id = 'c_ankh'},
            {id = 'c_hex'},
            {id = 'c_wraith'},
            {id = 'c_wheel_of_fortune'},
            {id = 'c_poke_berry_juice_energy'},
            {id = 'c_poke_berry_juice_planet'},
            {id = 'c_poke_pokeball'},
            {id = 'c_poke_greatball'},
            {id = 'c_poke_ultraball'},
            {id = 'c_poke_masterball'},
            {id = 'c_poke_heavyboots'},
			{id = 'v_blank'},
            {id = 'v_antimatter'},
            {id = 'v_poke_energysearch'},
            {id = 'v_poke_energyresearch'},
            {id = 'p_buffoon_normal_1', ids = {'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',}},
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},
            {id = 'tag_orbital'},
            {id = 'tag_poke_shiny_tag'},
            {id = 'tag_poke_stage_one_tag'},
            {id = 'tag_poke_safari_tag'},
            {id = 'tag_poke_starter_tag'},
        },
        banned_other = {
            { id = 'bl_final_bell', type = 'blind' },
            { id = 'bl_final_leaf',  type = 'blind' },
            { id = 'bl_final_acorn', type = 'blind' },
            {id = 'bl_poke_mirror', type = 'blind'},
            {id = 'bl_arm', type = 'blind'},
            {id = 'bl_eye', type = 'blind'},
            {id = 'bl_club', type = 'blind'},
            {id = 'bl_window', type = 'blind'},
            {id = 'bl_head', type = 'blind'},
            {id = 'bl_goad', type = 'blind'},
            {id = 'bl_water', type = 'blind'},
            {id = 'bl_fish', type = 'blind'},
            {id = 'bl_house', type = 'blind'},
            {id = 'bl_mouth', type = 'blind'},
            {id = 'bl_plant', type = 'blind'},
            {id = 'bl_tooth', type = 'blind'},
            {id = 'bl_mark', type = 'blind'},
            {id = 'bl_poke_rocket', type = 'blind'},
            {id = 'bl_poke_gray_godfather', type = 'blind'},
            {id = 'bl_poke_iridescent_hacker', type = 'blind'}
        }
    },
    deck = {
      type = 'Challenge Deck',
      enhancement = 'm_poke_hazard'
    },
    button_colour = HEX('fde700'),
    text_colour = G.C.L_BLACK
}

return {name = "Challenges", 
        list = {nuzlocke, goodasgold, parenthood, littlecup, hammertime, lonesome, randomizer, delibird_delimma, safety_first}
}
