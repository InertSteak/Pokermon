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