-- Zoroark 571
local zoroark = {
  name = "zoroark", 
  pos = { x = 7, y = 5 },
  soul_pos = { x = 8, y = 12 },
  config = {extra = {hidden_key = nil}},
  rarity = "poke_safari",
  cost = 12,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  blueprint_compat = true,
  calculate = function(self, card, context)
    local other_joker = G.jokers.cards[#G.jokers.cards]
    if other_joker and other_joker ~= card and not context.no_blueprint then
      context.blueprint = (context.blueprint or 0) + 1
      context.blueprint_card = context.blueprint_card or card
      if context.blueprint > #G.jokers.cards + 1 then return end

      local other_joker_ret = Card.calculate_joker(other_joker, context)

      context.blueprint = nil
      local eff_card = context.blueprint_card or card
      context.blueprint_card = nil
      if other_joker_ret then 
        other_joker_ret.card = eff_card
        other_joker_ret.colour = G.C.BLACK
        return other_joker_ret
      end
    end
  end,
  set_card_type_badge = function(self, card, badges)
    local card_type = SMODS.Rarity:get_rarity_badge(card.config.center.rarity)
    local card_type_colour = get_type_colour(card.config.center or card.config, card)
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      local _o = G.P_CENTERS[card.ability.extra.hidden_key]
      card_type = SMODS.Rarity:get_rarity_badge(_o.rarity)
      card_type_colour = get_type_colour(_o, card)
    end
    badges[#badges + 1] = create_badge(card_type, card_type_colour, nil, 1.2)
  end,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.hidden_key then
      self:set_ability(card)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if card.area ~= G.jokers and not poke_is_in_collection(card) and not G.SETTINGS.paused then
      card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zoroark', nil, 'poke_safari', nil, nil, {j_poke_zoroark = true})
      local _o = G.P_CENTERS[card.ability.extra.hidden_key]
      card.children.center.atlas = G.ASSET_ATLAS[_o.atlas]
      card.children.center:set_sprite_pos(_o.pos)
    else
      card.children.center.atlas = G.ASSET_ATLAS[self.atlas]
      card.children.center:set_sprite_pos(self.pos)
    end
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or card
    card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zoroark', nil, 'poke_safari', nil, nil, {j_poke_zoroark = true})
    local _o = G.P_CENTERS[card.ability.extra.hidden_key]
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      local temp_ability = card.ability
      card.ability = _o.config
      _o:generate_ui(info_queue, card, desc_nodes, specific_vars, full_UI_table)
      card.ability = temp_ability
      if full_UI_table.name then
        local textDyna = full_UI_table.name[1].nodes[1].config.object
        textDyna.string = textDyna.string .. localize("poke_illusion")
        textDyna.config.string = {textDyna.string}
        textDyna.strings = {}
        textDyna:update_text(true)
      end
      card.children.center.atlas = G.ASSET_ATLAS[_o.atlas]
      card.children.center:set_sprite_pos(_o.pos)
    else
      if not full_UI_table.name then
        full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
      end
      card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ''
      card.ability.blueprint_compat_check = nil
      local main_end = (card.area and card.area == G.jokers) and {
        {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
          {n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
            {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
          }}
        }}
      } or nil
      localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {}}
      desc_nodes[#desc_nodes+1] = main_end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      card.ability.blueprint_compat = ( other_joker and other_joker ~= card and not other_joker.debuff and other_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
      if card.ability.blueprint_compat == 'compatible' and not card.debuff then
        card.children.center.atlas = other_joker.children.center.atlas
        card.children.center:set_sprite_pos(other_joker.children.center.sprite_pos)
        if other_joker.children.floating_sprite then
          card.children.floating_sprite.atlas = other_joker.children.floating_sprite.atlas
          card.children.floating_sprite:set_sprite_pos(other_joker.children.floating_sprite.sprite_pos)
        else
          card.children.floating_sprite.atlas = G.ASSET_ATLAS[self.atlas]
          card.children.floating_sprite:set_sprite_pos(self.soul_pos)
        end
      else
        card.children.center.atlas = G.ASSET_ATLAS[self.atlas]
        card.children.center:set_sprite_pos(self.pos)
        card.children.floating_sprite.atlas = G.ASSET_ATLAS[self.atlas]
        card.children.floating_sprite:set_sprite_pos(self.soul_pos)
      end
    end
  end,
}
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
  config = {extra = {chips = 60, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
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
    if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
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
    return level_evo(self, card, context, "j_poke_vanillish")
  end
}
-- Vanillish 583
local vanillish={
  name = "vanillish", 
  pos = {x = 5, y = 6}, 
  config = {extra = {chips = 100, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
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
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
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
    return level_evo(self, card, context, "j_poke_vanilluxe")
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
        list = {zoroark, gothita, gothorita, gothitelle, vanillite, vanillish, vanilluxe},
}