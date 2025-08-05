-- Raging Bolt 1021
-- Iron Boulder 1022
-- Iron Crown 1023
-- Terapagos 1024
local terapagos={
  name = "terapagos",
  pos = {x = 11, y = 10},
  soul_pos = {x = 12, y = 10},
  config = {extra = {Xmult = 1, money_minus = 3, oXmult = 1, Xmult_multi = 1.5, future_dollars = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Pretzal"}}
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Colorless",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      G.E_MANAGER:add_event(Event({
        func = (function()
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, 'c_poke_teraorb')
            local edition = {negative = true}
            _card:set_edition(edition, true)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
    return type_evo(self, card, context, "j_poke_terapagost", "stellar")
  end
}
local terapagost={
  name = "terapagost",
  pos = {x = 11, y = 10},
  soul_pos = {x = 13, y = 10},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'designed_by', vars = {"Pretzal"}}
    return {vars = {}}
  end,
  rarity = "poke_safari",
  cost = 20,
  stage = "Legendary",
  ptype = "Stellar",
  atlas = "Pokedex9",
  gen = 9,
  aux_poke = true,
  no_collection = true,
  perishable_compat = false,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      G.E_MANAGER:add_event(Event({
        func = (function()
            local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_poke_double_rainbow_energy')
            local edition = {negative = true}
            _card:set_edition(edition, true)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
        end)
      }))
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if not type_sticker_applied(card) then
      apply_type_sticker(card, "Stellar")
    end
  end,
}
-- Pecharunt 1025
return {name = "Pokemon Jokers 1021-1050", 
        list = {terapagos, terapagost},
}