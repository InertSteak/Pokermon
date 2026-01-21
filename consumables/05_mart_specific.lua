local leek = {
  name = "leek",
  key = "leek",
  set = "Item",
  helditem = true,
  config = {extra = {num = 1, dem = 2, usable = true}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    local card = center or self
    if not card.edition or (card.edition and not card.edition.foil) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    end
    if not card.edition or (card.edition and not card.edition.holo) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    end
    if not card.edition or (card.edition and not card.edition.polychrome) then
      info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    end
    local num, dem = SMODS.get_probability_vars(center, card.ability.extra.num, card.ability.extra.dem, 'leek')
    return {vars = {num, dem}}
  end,
  pos = { x = 8, y = 4 },
  soul_pos = { x = 7, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then 
      if (#G.consumeables.cards + G.GAME.consumeable_buffer >= G.consumeables.config.card_limit) and card.area == G.pack_cards then return false end
    end
    if card.area == G.shop_jokers then return false end
    return card.ability.extra.usable
  end,
  use = function(self, card, area, copier)
    local removed = nil
    
    if SMODS.pseudorandom_probability(card, 'leek', card.ability.extra.num, card.ability.extra.dem, 'leek') then
      local edition = poll_edition('wheel_of_fortune', nil, true, true)
      card:set_edition(edition, true)
    else
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
          attention_text({
              text = localize('k_nope_ex'),
              scale = 1.3, 
              hold = 1.4,
              major = card,
              backdrop_colour = G.C.SECONDARY_SET.Tarot,
              align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
              offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
              silent = true
              })
              G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                  play_sound('tarot2', 0.76, 0.4);return true end}))
              play_sound('tarot2', 1, 0.4)
              card:juice_up(0.3, 0.5)
      return true end }))
    end
    card.ability.extra.usable = false
    card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
  end,
  calculate = function(self, card, context)
    if context.end_of_round and card.edition then
      card:set_edition(nil, true)
    end
    if context.end_of_round and not card.ability.extra.usable then
      card.ability.extra.usable = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
      card.children.floating_sprite:set_sprite_pos({ x = 7, y = 5 })
    end
  end,
  set_sprites = function(self, card, front)
    if card.no_load_reusable_sprite then
      card.children.floating_sprite:set_sprite_pos({ x = 99, y = 99 })
      card.no_load_reusable_sprite = nil
    end
  end,
  load = function(self, card, card_table, other_card)
    if not card_table.ability.extra.usable then
      card.no_load_reusable_sprite = true
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return false
  end
}

local dubious_disc = {
  name = "dubious_disc",
  key = "dubious_disc",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 0, y = 5 },
  atlas = "AtlasConsumablesBasic",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.jokers.highlighted and #G.jokers.highlighted == 1 and is_evo_item_for(self, G.jokers.highlighted[1]) then
      return true
    end
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    if G.hand.cards and #G.hand.cards > 0 then
      juice_flip_hand(card)
      for i = 1, #G.hand.cards do
        local enhancement = SMODS.poll_enhancement({guaranteed = true})
        G.hand.cards[i]:set_ability(enhancement, nil, true)
      end
      juice_flip_hand(card, true)
      evo_item_use_total(self, card, area, copier)
    else
      highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return next(find_joker("porygon2"))
  end
}

local heartscale = {
  name = "heartscale",
  key = "heartscale",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 2, suit = "Hearts"},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.max_highlighted, localize(self.config.suit, 'suits_plural')}}
  end,
  pos = { x = 9, y = 5 },
  atlas = "AtlasConsumablesBasic",
  artist = "MyDude_YT",
  cost = 2,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    set_spoon_item(card)
    juice_flip(card)
    local rightmost = G.hand.highlighted[1]
    for i = 1, #G.hand.highlighted do
      if G.hand.highlighted[i].T.x > rightmost.T.x then
          rightmost = G.hand.highlighted[i]
      end
    end
    for i = 1, #G.hand.highlighted do
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.1,
          func = function()
              if G.hand.highlighted[i] ~= rightmost then
                  copy_card(rightmost, G.hand.highlighted[i])
              end
              return true
          end
      }))
    end
    for i = 1, #G.hand.highlighted do
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.1,
          func = function()
            G.hand.highlighted[i]:change_suit(self.config.suit)
            return true
          end
      }))
    end
    juice_flip(card, true)
    delay(0.5)
    poke_unhighlight_cards()
  end,
  in_pool = function(self)
    return false
  end
}

local list = {leek, dubious_disc, heartscale}

return {name = "AtlasConsumablesBasic 5",
        list = list
}