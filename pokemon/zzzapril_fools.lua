local billion_lions = {
  name = "billion_lions",
  pos = {x = 5, y = 12},
  soul_pos = {x = 6, y = 12},
  config = {extra= {Xmult = 1, Xmult_mod = 1, lions = 1000000000}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod, center.ability.extra.lions}}
  end,
  rarity = 4,
  cost = 6,
  stage = "Legendary",
  atlas = "others",
  artist = "Catzzadilla",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced then
      local destroyed = 0
      for k, v in pairs(G.jokers.cards) do
        if v ~= card and get_type(v) and not v.ability.eternal then
          destroyed = destroyed + 1
          v.getting_sliced = true
          G.E_MANAGER:add_event(Event({func = function()
              (context.blueprint_card or card):juice_up(0.8, 0.8)
              v:start_dissolve({G.C.RED}, nil, 1.6)
          return true end }))
        end
      end
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod * destroyed
      card.ability.extra.lions = card.ability.extra.lions - destroyed
      if card.ability.extra.lions <= 0 then 
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "They lose!", colour = G.C.RED})
        card:start_dissolve({G.C.RED}, nil, 1.6) 
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
  end
}

local miror_budicolo = {
  name = "miror_budicolo",
  gen = 3,
  pos = {x = 0, y = 0},
  config = {extra = {}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 1,
  cost = 1,
  stage = "Basic",
  ptype = "Water",
  atlas = "poke_miror_budicolo",
  perishable_compat = false,
  blueprint_compat = false,
  eternal_compat = false,
  rental_compat = false,
  calculate = function(self, card, context)
  end,
  add_to_deck = function(self, card, from_debuff)
    local _card = SMODS.create_card { set = "Base", enhancement = "m_poke_ludicolo", area = card.area }
    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
    _card.playing_card = G.playing_card
    table.insert(G.playing_cards, _card)
    SMODS.destroy_cards(card,true,true,true)

    G.E_MANAGER:add_event(Event({
      func = function()
        G.deck:emplace(_card)
        _card:start_materialize()
        if G.GAME.blind then G.GAME.blind:debuff_card(_card) end
        SMODS.calculate_context({ playing_card_added = true, cards = { _card } })
        save_run()
        return true
      end
    }))
  end,
}

local spiclops = {
  name = "spiclops",
  config = {extra = {hazard_level = 1, h_size = 4, card_goal = 8, cards_added = 0, planet_goal = 2, hazards_drawn = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local vars = {
      card.ability.extra.hazard_level,
      card.ability.extra.h_size,
      card.ability.extra.card_goal,
      card.ability.extra.cards_added,
      card.ability.extra.planet_goal,
      card.ability.extra.hazards_drawn
    }
    return {vars = vars}
  end,
  rarity = 2,
  cost = 10,
  stage = "Legendary",
  blueprint_compat = true,
  eternal_compat = true,
  set_card_type_badge = function(self, card, badges)
              badges[#badges + 1] =
                create_badge('Legendary', G.C.PURPLE, G.C.WHITE, 1)
            end,
  calculate = function(self, card, context)

    -- Apply a random seal to every 8th card playing added to the deck
    if context.playing_card_added and not card.getting_sliced and context.cards and not context.blueprint then
      if context.cards and type(context.cards) == "table" and #context.cards > 0 then
        local cards_added = {}
        for k, v in ipairs(context.cards) do
          card.ability.extra.cards_added = card.ability.extra.cards_added + 1
          if card.ability.extra.cards_added == card.ability.extra.card_goal then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_sticky_web_ex")})
            local args = {guaranteed = true}
            local seal_type = SMODS.poll_seal(args)
            v:set_seal(seal_type, true)
            card.ability.extra.cards_added = 0
          end
        end
      end
    end

    -- Increase hand size by the current hazard level, and lose a discard
    if context.setting_blind then
      ease_discard(-1)
      local level = math.min(G.GAME.hazard_max or 3, G.GAME.round_resets.hazard_level)
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={level}}})
      G.hand:change_size(level)
      G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + level
    end

    -- Increase hand size by 1 for each hazard in the scoring hand at the start of the round.
    if context.joker_main and context.cardarea == G.jokers and G.GAME.current_round.hands_played == 0 and not context.blueprint then
      local all_hazards = true
      for k, v in pairs(context.full_hand) do
        if not SMODS.has_enhancement(v, "m_poke_hazard") then
          all_hazards = false
        end
      end
      if all_hazards then
        local size_up = #context.scoring_hand
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={size_up}}})
        G.hand:change_size(size_up)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + size_up
      end
    end

    -- Blue seal on every 3rd hazard in hand.
    if context.end_of_round and not context.individual and not context.repetition then
      local hazard_count = 0
      if G.hand and G.hand.cards and #G.hand.cards > 0 then
        for i=1, #G.hand.cards do
          if SMODS.has_enhancement(G.hand.cards[i], "m_poke_hazard") then
            hazard_count = hazard_count + 1
            if hazard_count % 3 == 0 then
              G.hand.cards[i]:set_seal("Blue", nil, true)
            end
          end
        end
      end
    end

    -- For every 2 hazards drawn, add a planet card
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(G.hand.cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        if not context.blueprint then
          card.ability.extra.hazards_drawn = card.ability.extra.hazards_drawn + count
        end
        if card.ability.extra.hazards_drawn >= card.ability.extra.planet_goal and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          count = math.floor(card.ability.extra.hazards_drawn/card.ability.extra.planet_goal )
          card.ability.extra.hazards_drawn = card.ability.extra.hazards_drawn % card.ability.extra.planet_goal 
          local _planet, _hand, _tally = nil, nil, 0
          for k, v in ipairs(G.handlist) do
              if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
                  _hand = v
                  _tally = G.GAME.hands[v].played
              end
          end
          if _hand then
              for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                  if v.config.hand_type == _hand then
                      _planet = v.key
                  end
              end
          end
          for i = 1, count do
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              local _card = create_card('Planet', G.consumeables, nil, nil, nil, nil, _planet)
              _card:add_to_deck()
              G.consumeables:emplace(_card)
              card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet })
            end
          end
        end
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
    poke_change_hazard_level(card.ability.extra.hazard_level)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
    poke_change_hazard_level(-card.ability.extra.hazard_level)
  end
}

function capture_disc_load(self,card)
  local card_drag_orig = card.drag

  local shake_rqmt = 25

  card.drag = function(self, offset)
    card_drag_orig(self, offset)
    
    -- Set a starting point if we've just started dragging
    if not card.ability.extra.prev_drag_x or card.ability.extra.prev_drag_x == 0 then card.ability.extra.prev_drag_x = self.T.x end
    if not card.ability.extra.prev_drag_y or card.ability.extra.prev_drag_y == 0 then card.ability.extra.prev_drag_y = self.T.y end

    local x1, x2 = card.ability.extra.prev_drag_x, self.T.x
    local y1, y2 = card.ability.extra.prev_drag_y, self.T.y
    local distance = math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

    card.ability.extra.prev_drag_x = self.T.x
    card.ability.extra.prev_drag_y = self.T.y
    card.ability.extra.dist_dragged = distance + (card.ability.extra.dist_dragged or 0)
    if card.ability.extra.dist_dragged > shake_rqmt*card.ability.extra.mult then
      card.ability.extra.dist_dragged = 0
      SMODS.scale_card(card, {
        ref_value = 'mult',
        scalar_value = 'mult_mod',
      })
    end
  end

  local card_stop_drag_orig = card.stop_drag
  card.stop_drag = function(self)
    card_stop_drag_orig(self)
    card.ability.extra.prev_drag_x = 0
    card.ability.extra.prev_drag_y = 0
    card.ability.extra.dist_dragged = 0
  end
end

local capture_disc = {
  name = "capture_disc",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 1, mult = 0}},
  loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.mult_mod, card.ability.extra.mult}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Other",
  atlas = "poke_capture_disc",
  perishable_compat = false,
  eternal_compat = true,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        mult = card.ability.extra.mult
      }
    end

    if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint and card.ability.extra.mult > 0 then
      card.ability.extra.mult = 0
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end

  end,
  set_ability = function(self, card, initial, delay_sprites)
    capture_disc_load(self, card)
  end,
}

local jlist = {
  billion_lions,
  spiclops,
  miror_budicolo,
  capture_disc,
}

if pokermon_config.pokemon_aprilfools then
  return {name = "April Fool Jokers",
    list = jlist
  }
else
  return {name = "April Fool Jokers",
    list = {}
  }
end