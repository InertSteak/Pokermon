-- Zoroark 571
-- Minccino 572
-- Cinccino 573
-- Gothita 574
local gothita={
  name = "gothita", 
  pos = {x = 10, y = 5},
  config = {extra = {rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gothorita")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}
-- Gothorita 575
local gothorita={
  name = "gothorita", 
  pos = {x = 11, y = 5},
  config = {extra = {rounds = 4}},
  blueprint_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex5",
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gothitelle")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end
}
-- Gothitelle 576
local gothitelle={
  name = "gothitelle", 
  pos = {x = 12, y = 5},
  config = {extra = {money = 2}}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  atlas = "Pokedex5",
  ptype = "Psychic",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
      ease_poke_dollars(card, "pidgeot", card.ability.extra.money)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
}
-- Solosis 577
-- Duosion 578
-- Reuniclus 579
-- Ducklett 580
-- Swanna 581
-- Vanillite 582
local vanillite={
  name = "vanillite", 
  pos = {x = 4, y = 6}, 
  config = {extra = {chips = 60, chips_minus = 5, rounds = 3, level_up = true, triggered = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_left'}
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      card.ability.extra.level_up = true
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main and volatile_active(self, card, 'left') then
        card.ability.extra.level_up = false
        card.ability.extra.triggered = true
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
      if card.ability.extra.triggered and context.after and not context.blueprint then
        card.ability.extra.triggered = false
        if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then 
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('tarot1')
                    card.T.r = -0.2
                    card:juice_up(0.3, 0.4)
                    card.states.drag.is = true
                    card.children.center.pinch.x = true
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                        func = function()
                                G.jokers:remove_card(self)
                                card:remove()
                                card = nil
                            return true; end})) 
                    return true
                end
            })) 
            return {
                message = localize('k_melted_ex'),
                colour = G.C.CHIPS
            }
        else
            card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_minus
            return {
                message = localize{type='variable',key='a_chips_minus',vars={card.ability.extra.chips_minus}},
                colour = G.C.CHIPS
            }
        end
      end
    end
    if card.ability.extra.level_up then
      return level_evo(self, card, context, "j_poke_vanillish")
    end
  end
}
-- Vanillish 583
local vanillish={
  name = "vanillish", 
  pos = {x = 5, y = 6}, 
  config = {extra = {chips = 100, chips_minus = 5, rounds = 3, level_up = true, triggered = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_left'}
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      card.ability.extra.level_up = true
    end
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main and volatile_active(self, card, 'left') then
        card.ability.extra.level_up = false
        card.ability.extra.triggered = true
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
      if card.ability.extra.triggered and context.after and not context.blueprint then
        card.ability.extra.triggered = false
        if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then 
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('tarot1')
                    card.T.r = -0.2
                    card:juice_up(0.3, 0.4)
                    card.states.drag.is = true
                    card.children.center.pinch.x = true
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                        func = function()
                                G.jokers:remove_card(self)
                                card:remove()
                                card = nil
                            return true; end})) 
                    return true
                end
            })) 
            return {
                message = localize('k_melted_ex'),
                colour = G.C.CHIPS
            }
        else
            card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_minus
            return {
                message = localize{type='variable',key='a_chips_minus',vars={card.ability.extra.chips_minus}},
                colour = G.C.CHIPS
            }
        end
      end
    end
    if card.ability.extra.level_up then
      return level_evo(self, card, context, "j_poke_vanilluxe")
    end
  end
}
-- Vanilluxe 584
local vanilluxe={
  name = "vanilluxe", 
  pos = {x = 6, y = 6}, 
  config = {extra = {chips = 140, chips_minus = 10, tags = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chips_minus, center.ability.extra.tags}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex5",
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
      if context.after and not context.blueprint then
        if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then 
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('tarot1')
                    card.T.r = -0.2
                    card:juice_up(0.3, 0.4)
                    card.states.drag.is = true
                    card.children.center.pinch.x = true
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                        func = function()
                                G.jokers:remove_card(self)
                                card:remove()
                                card = nil
                            return true; end})) 
                    return true
                end
            }))
            G.E_MANAGER:add_event(Event({
                func = (function()
                    play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                    return true
                end)
              }))
            for i = 1, card.ability.extra.tags do
              G.E_MANAGER:add_event(Event({
                func = (function()
                    add_tag(Tag('tag_double'))
                    return true
                end)
              }))
            end
            return {
                message = localize('k_melted_ex'),
                colour = G.C.CHIPS
            }
        else
            card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_minus
            return {
                message = localize{type='variable',key='a_chips_minus',vars={card.ability.extra.chips_minus}},
                colour = G.C.CHIPS
            }
        end
      end
    end
  end
}
-- Deerling 585
-- Sawsbuck 586
-- Emolga 587
-- Karrablast 588
-- Escavalier 589
-- Foongus 590
-- Amoonguss 591
-- Frillish 592
-- Jellicent 593
-- Alomomola 594
-- Joltik 595
-- Galvantula 596
-- Ferroseed 597
-- Ferrothorn 598
-- Klink 599
-- Klang 600
return {name = "Pokemon Jokers 570-600", 
        list = {gothita, gothorita, gothitelle, vanillite, vanillish, vanilluxe},
}