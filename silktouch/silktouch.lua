SilkTouch.DragTarget{
    key = "Pokermon_save_consumable",
    moveable_t = "S_buy",  -- Standard buy area (overlayed on G.jokers plus G.consumeables).
    text = function(card)
        return { "SAVE" }
    end,
    colour = pokermon.colours.pink,
    drag_condition = function(card)
        -- Show only for consumables in boosters if Pokermon save conditions apply ("Pocket" booster, Super Rod, etc.).
        return card.area and card.area == G.pack_cards and card.ability.consumeable and pokermon.can_save_consumable(card) 
    end,
    active_check = function(card)
        return #G.consumeables.cards < G.consumeables.config.card_limit
    end,
    release_func = function(card)
        G.FUNCS.poke_reserve_card({config = {ref_table = card}})
        play_sound('button', 1, 0.4)
    end
    }
    