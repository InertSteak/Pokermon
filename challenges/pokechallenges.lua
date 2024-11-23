local poke_master = {
    object_type = "Challenge",
    key = "poke_master",
    rules = {
        custom = {
            {id = 'poke_master'} --this just explains the rule
        },
        modifiers = {}
    },
    restrictions = {
        banned_cards = {
            {id='j_joker'},
            {id='j_greedy_joker'},
            {id='j_lusty_joker'},
            {id='j_wrathful_joker'},
            {id='j_gluttenous_joker'},
            {id='j_jolly'},
            {id='j_zany'},
            {id='j_mad'},
            {id='j_crazy'},
            {id='j_droll'},
            {id='j_sly'},
            {id='j_wily'},
            {id='j_clever'},
            {id='j_devious'},
            {id='j_crafty'},
            {id='j_half'},
            {id='j_stencil'},
            {id='j_four_fingers'},
            {id='j_mime'},
            {id='j_credit_card'},
            {id='j_ceremonial'},
            {id='j_banner'},
            {id='j_mystic_summit'},
            {id='j_marble'},
            {id='j_loyalty_card'},
            {id='j_8_ball'},
            {id='j_misprint'},
            {id='j_dusk'},
            {id='j_raised_fist'},
            {id='j_chaos'},
            {id='j_fibonacci'},
            {id='j_steel_joker'},
            {id='j_scary_face'},
            {id='j_abstract'},
            {id='j_delayed_grat'},
            {id='j_hack'},
            {id='j_pareidolia'},
            {id='j_gros_michel'},
            {id='j_even_steven'},
            {id='j_odd_todd'},
            {id='j_scholar'},
            {id='j_business'},
            {id='j_supernova'},
            {id='j_ride_the_bus'},
            {id='j_space'},
            {id='j_egg'},
            {id='j_burglar'},
            {id='j_blackboard'},
            {id='j_runner'},
            {id='j_ice_cream'},
            {id='j_dna'},
            {id='j_splash'},
            {id='j_blue_joker'},
            {id='j_sixth_sense'},
            {id='j_constellation'},
            {id='j_hiker'},
            {id='j_faceless'},
            {id='j_green_joker'},
            {id='j_superposition'},
            {id='j_todo_list'},
            {id='j_cavendish'},
            {id='j_card_sharp'},
            {id='j_red_card'},
            {id='j_madness'},
            {id='j_square'},
            {id='j_seance'},
            {id='j_riff_raff'},
            {id='j_vampire'},
            {id='j_shortcut'},
            {id='j_hologram'},
            {id='j_vagabond'},
            {id='j_baron'},
            {id='j_cloud_9'},
            {id='j_rocket'},
            {id='j_obelisk'},
            {id='j_midas_mask'},
            {id='j_luchador'},
            {id='j_photograph'},
            {id='j_gift'},
            {id='j_turtle_bean'},
            {id='j_erosion'},
            {id='j_reserved_parking'},
            {id='j_mail'},
            {id='j_to_the_moon'},
            {id='j_hallucination'},
            {id='j_fortune_teller'},
            {id='j_juggler'},
            {id='j_drunkard'},
            {id='j_stone'},
            {id='j_golden'},
            {id='j_lucky_cat'},
            {id='j_baseball'},
            {id='j_bull'},
            {id='j_diet_cola'},
            {id='j_trading'},
            {id='j_flash'},
            {id='j_popcorn'},
            {id='j_trousers'},
            {id='j_ancient'},
            {id='j_ramen'},
            {id='j_walkie_talkie'},
            {id='j_selzer'},
            {id='j_castle'},
            {id='j_smiley'},
            {id='j_campfire'},
            {id='j_ticket'},
            {id='j_mr_bones'},
            {id='j_acrobat'},
            {id='j_sock_and_buskin'},
            {id='j_swashbuckler'},
            {id='j_troubadour'},
            {id='j_certificate'},
            {id='j_smeared'},
            {id='j_throwback'},
            {id='j_hanging_chad'},
            {id='j_rough_gem'},
            {id='j_bloodstone'},
            {id='j_arrowhead'},
            {id='j_onyx_agate'},
            {id='j_glass'},
            {id='j_ring_master'},
            {id='j_flower_pot'},
            {id='j_blueprint'},
            {id='j_wee'},
            {id='j_merry_andy'},
            {id='j_oops'},
            {id='j_idol'},
            {id='j_seeing_double'},
            {id='j_matador'},
            {id='j_hit_the_road'},
            {id='j_duo'},
            {id='j_trio'},
            {id='j_family'},
            {id='j_order'},
            {id='j_tribe'},
            {id='j_stuntman'},
            {id='j_invisible'},
            {id='j_brainstorm'},
            {id='j_satellite'},
            {id='j_shoot_the_moon'},
            {id='j_drivers_license'},
            {id='j_cartomancer'},
            {id='j_astronomer'},
            {id='j_burnt'},
            {id='j_bootstraps'},
            {id='j_caino'},
            {id='j_triboulet'},
            {id='j_yorick'},
            {id='j_chicot'},
            {id='j_perkeo'},
            {id = 'c_judgement'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
        },
        banned_other = {},
        deck = {
            type = 'Red Deck'
        },
    }
}

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
        },
        banned_other = {
            {id = 'bl_final_leaf', type = 'blind'}
        },
        deck = {
            type = 'Challenge Deck'
        },
    }
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

return {name = "Challenges", 
        list = {nuzlocke}
}