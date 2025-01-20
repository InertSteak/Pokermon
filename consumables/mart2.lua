local item_list = {}

local moonstone = {
  name = "moonstone",
  key = "moonstone",
  set = "Item",
  config = {max_highlighted = 5, min_highlighted = 1, odds = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    local handtext = localize('poke_none')
    if G.hand and G.hand.highlighted and #G.hand.highlighted > 0 then
      local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      handtext = text
    end
    return {vars = {handtext, ''..(G.GAME and G.GAME.probabilities.normal or 1), self.config.odds}}
  end,
  pos = { x = 8, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    if pseudorandom('moonstone') < G.GAME.probabilities.normal/self.config.odds then
      local text,disp_text,poker_hands,scoring_hand,non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)

      level_up_hand(card, text)
      if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
         or G.STATE == G.STATES.STANDARD_PACK then
        update_hand_text({nopulse = true, delay = 0.3}, {mult = 0, chips = 0, level = '', handname = ''})
      else
        update_hand_text({nopulse = nil, delay = 0.3}, {handname=disp_text, level=G.GAME.hands[text].level, mult = G.GAME.hands[text].mult, chips = G.GAME.hands[text].chips})
      end
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
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local sunstone = {
  name = "sunstone",
  key = "sunstone",
  set = "Item",
  config = {max_highlighted = 2,},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 9, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_wild, nil, true)
      poke_vary_rank(G.hand.highlighted[i], nil, "sunstone")
    end
    juice_flip(card, true)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local waterstone = {
  name = "waterstone",
  key = "waterstone",
  set = "Item",
  config = {max_highlighted = 1, max_chips = 50},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
    return {vars = {self.config.max_highlighted, self.config.max_chips}}
  end,
  pos = { x = 5, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    juice_flip(card)
    if conv_card.ability.name == 'Bonus' then
      local bonus = math.min(self.config.max_chips, poke_total_chips(conv_card))
      conv_card.ability.perma_bonus = conv_card.ability.perma_bonus or 0
      conv_card.ability.perma_bonus = conv_card.ability.perma_bonus + bonus
    else
      conv_card:set_ability(G.P_CENTERS.m_bonus, nil, true)
    end
    juice_flip(card, true)
    delay(0.5)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local thunderstone = {
  name = "thunderstone",
  key = "thunderstone",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local suits = {'S','H','D','C'}
    local selected = G.hand.highlighted[1]
    local rank = (selected.base.value == 'Ace' and 'A') or
    (selected.base.value == 'King' and 'K') or
    (selected.base.value == 'Queen' and 'Q') or
    (selected.base.value == 'Jack' and 'J') or
    (selected.base.value == '10' and 'T') or 
    (selected.base.value)
    for i = 1, 2 do
      local _card = create_playing_card({
            front = pseudorandom_element(G.P_CARDS, pseudoseed('thunderstone')), 
            center = G.P_CENTERS.c_base}, G.hand, nil, nil, {G.C.SECONDARY_SET.Enhanced})
      _card:set_base(G.P_CARDS[('%s_%s'):format(pseudorandom_element(suits, pseudoseed('thunderstone')), rank)])
      _card:set_ability(G.P_CENTERS.m_gold, nil, true)
    end
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local firestone = {
  name = "firestone",
  key = "firestone",
  set = "Item",
  config = {max_highlighted = 4, min_highlighted = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 4, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_mult, nil, true)
    end
    juice_flip(card, true)
    
    local target = pseudorandom_element(G.hand.highlighted, pseudoseed('firestone'))
    poke_remove_card(target, card)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leafstone = {
  name = "leafstone",
  key = "leafstone",
  set = "Item",
  config = {odds = 3},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), self.config.odds,}}
  end,
  pos = { x = 7, y = 3 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    juice_flip_hand(card)
    for i = 1, #G.hand.cards do
      if pseudorandom('leafstone') < G.GAME.probabilities.normal/self.config.odds then
        G.hand.cards[i]:set_ability(G.P_CENTERS.m_lucky, nil, true)
      end
    end
    juice_flip_hand(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local linkcable = {
  name = "linkcable",
  key = "linkcable",
  set = "Item",
  config = {max_highlighted = 2, min_highlighted = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local rightmost = G.hand.highlighted[1]
    for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end end
    juice_flip(card)
    for i=1, #G.hand.highlighted do
      if G.hand.highlighted[i] ~= rightmost then
        poke_vary_rank(G.hand.highlighted[i])
      else
        poke_vary_rank(G.hand.highlighted[i], true)
      end
    end
    juice_flip(card, true)
    delay(0.5)
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local leftovers = {
  name = "leftovers",
  key = "leftovers",
  set = "Item",
  config = {extra = {joker_highlighted = 1, previous_round = 0, money_mod = 2}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("snorlax_infoqueue")}}
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    return {vars = {self.config.extra.joker_highlighted, self.config.extra.money_mod}}
  end,
  pos = { x = 7, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then return false end
    if card.area == G.shop_jokers then return false end
    if not (G.jokers and G.jokers.cards) then return false end
    if #G.jokers.cards == 0 then return false end
    return G.GAME.round > card.ability.extra.previous_round
  end,
  use = function(self, card, area, copier)
    local target = nil
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      target = G.jokers.cards[1]
    else
      target = G.jokers.highlighted[1]
    end
    target.ability.extra_value = target.ability.extra_value + card.ability.extra.money_mod
    target:set_cost()
    G.E_MANAGER:add_event(Event({
      func = function() card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('k_val_up')}); return true
    end}))
    card.ability.extra.previous_round = G.GAME.round
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local leek = {
  name = "leek",
  key = "leek",
  set = "Item",
  config = {extra = {odds = 3, odds2 = 8, previous_round = 0}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'endless'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("farfetchd_infoqueue")}}
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
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability and card.ability.extra.odds or card.config.extra.odds, 
            card.ability and card.ability.extra.odds2 or card.config.extra.odds2}}
  end,
  pos = { x = 8, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then return false end
    if card.area == G.shop_jokers then return false end
    return G.GAME.round > card.ability.extra.previous_round
  end,
  use = function(self, card, area, copier)
    local item_chance = pseudorandom('leek')
    local removed = nil
    if item_chance < G.GAME.probabilities.normal/card.ability.extra.odds2 then
      removed = true
      remove(self, card, {})
    elseif item_chance < G.GAME.probabilities.normal/card.ability.extra.odds then
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
    if not removed then
      card.ability.extra.previous_round = G.GAME.round
    end
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local thickclub = {
  name = "thickclub",
  key = "thickclub",
  set = "Item",
  config = {max_highlighted = 1, bonus = 5, extra = {previous_round = 0}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'hitem', vars = {localize("cubone_marowak_infoqueue")}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    return {vars = {self.config.max_highlighted, self.config.bonus}}
  end,
  pos = { x = 9, y = 4 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if G.STATE == G.STATES.SMODS_BOOSTER_OPENED or G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK or G.STATE == G.STATES.PLANET_PACK
       or G.STATE == G.STATES.STANDARD_PACK then return false end
    if card.area == G.shop_jokers then return false end
    if G.hand.highlighted and #G.hand.highlighted ~= 1 then return false end
    return G.GAME.round > card.ability.extra.previous_round
  end,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    local current_bonus = conv_card.ability.perma_bonus or 0
    juice_flip(card)
    conv_card.ability.perma_bonus = current_bonus + self.config.bonus
    if current_bonus > 0 then
      conv_card:set_ability(G.P_CENTERS.m_stone, nil, true)
    end
    juice_flip(card, true)
    delay(0.5)
    card.ability.extra.previous_round = G.GAME.round
  end,
  keep_on_use = function(self, card)
    return true
  end,
  in_pool = function(self)
    return true
  end
}

local teraorb = {
  name = "teraorb",
  key = "teraorb",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {"Random Type", colours = {G.ARGS.LOC_COLOURS.pink}}}
  end,
  pos = { x = 9, y = 2 },
  atlas = "Mart",
  cost = 3,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    else
      return
    end
    apply_type_sticker(choice)
    energy_increase(choice, type_sticker_applied(choice))
    card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
  end,
  in_pool = function(self)
    return true
  end
}

local metalcoat = {
  name = "metalcoat",
  key = "metalcoat",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {"Metal", colours = {G.ARGS.LOC_COLOURS.metal}}}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 6, y = 2 },
  atlas = "Mart",
  cost = 4,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    elseif G.jokers and G.jokers.cards and #G.jokers.cards > 0 then
      choice = G.jokers.cards[1]
    end
    
    if choice then
      apply_type_sticker(choice, "Metal")
      card_eval_status_text(choice, 'extra', nil, nil, nil, {message = localize("poke_metal_ex"), colour = G.ARGS.LOC_COLOURS["metal"]})
    end
    
    local copy = copy_card(G.hand.highlighted[1], nil, nil, G.playing_card)
    copy:set_ability(G.P_CENTERS.m_steel, nil, true)
    poke_add_card(copy, card)
  end,
  in_pool = function(self)
    return true
  end
}

local dragonscale = {
  name = "dragonscale",
  key = "dragonscale",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechanger', vars = {"Dragon", colours = {G.ARGS.LOC_COLOURS.dragon}}}
  end,
  pos = { x = 7, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return #G.jokers.cards > 0
  end,
  use = function(self, card, area, copier)
    local choice = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      choice = G.jokers.highlighted[1]
    else
      choice = G.jokers.cards[1]
    end
    
    apply_type_sticker(choice, "Dragon")
    card_eval_status_text(choice, 'extra', nil, nil, nil, {localize("poke_dragon_ex"), colour = G.ARGS.LOC_COLOURS["dragon"]})
    
    for i = 1, 3 do
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local card_type = nil
        if pseudorandom(pseudoseed('dragonscale')) > .50 then
          card_type = "Item"
        else
          card_type = "Energy"
        end
        
        local _card = create_card(card_type, G.consumeables, nil, nil, nil, nil, nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
      end
    end
  end,
  in_pool = function(self)
    return true
  end
}

local kingsrock = {
  name = "kingsrock",
  key = "kingsrock",
  set = "Item",
  config = {max_highlighted = 1},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 5, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local conv_card = G.hand.highlighted[1]
    juice_flip(card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            SMODS.change_base(conv_card, nil, "King"); return true
        end
    }))
    delay(0.5)
    juice_flip(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}

local upgrade = {
  name = "upgrade",
  key = "upgrade",
  set = "Item",
  config = {max_highlighted = 2},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'playing_card_to_evolve'}
    return {vars = {self.config.max_highlighted}}
  end,
  pos = { x = 8, y = 2 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    local enhancement_type = pseudorandom(pseudoseed('upgrade'))
    local enhancement = nil
    if enhancement_type > .875 then enhancement = G.P_CENTERS.m_bonus
    elseif enhancement_type > .75 then enhancement = G.P_CENTERS.m_mult
    elseif enhancement_type > .625 then enhancement = G.P_CENTERS.m_wild
    elseif enhancement_type > .50 then enhancement = G.P_CENTERS.m_glass
    elseif enhancement_type > .375 then enhancement = G.P_CENTERS.m_steel
    elseif enhancement_type > .25 then enhancement = G.P_CENTERS.m_stone
    elseif enhancement_type > .125 then enhancement = G.P_CENTERS.m_gold
    else enhancement = G.P_CENTERS.m_lucky
    end
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(enhancement, nil, true)
    end
    juice_flip(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return not next(find_joker("porygon2"))
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
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    juice_flip_hand(card)
    for i = 1, #G.hand.cards do
      local enhancement_type = pseudorandom(pseudoseed('dubious'))
      local enhancement = nil
      if enhancement_type > .89 then enhancement = G.P_CENTERS.m_bonus
      elseif enhancement_type > .78 then enhancement = G.P_CENTERS.m_mult
      elseif enhancement_type > .67 then enhancement = G.P_CENTERS.m_wild
      elseif enhancement_type > .56 then enhancement = G.P_CENTERS.m_glass
      elseif enhancement_type > .45 then enhancement = G.P_CENTERS.m_steel
      elseif enhancement_type > .34 then enhancement = G.P_CENTERS.m_stone
      elseif enhancement_type > .23 then enhancement = G.P_CENTERS.m_gold
      elseif enhancement_type > .12 then enhancement = G.P_CENTERS.m_lucky
      else enhancement = G.P_CENTERS.c_base end
      G.hand.cards[i]:set_ability(enhancement, nil, true)
    end
    juice_flip_hand(card, true)
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return next(find_joker("porygon2"))
  end
}

local icestone = {
  name = "icestone",
  key = "icestone",
  set = "Item",
  config = {max_highlighted = 2, odds = 4},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
    info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    return {vars = {self.config.max_highlighted, ''..(G.GAME and G.GAME.probabilities.normal or 1), self.config.odds}}
  end,
  pos = { x = 5, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  use = function(self, card, area, copier)
    juice_flip(card)
    for i = 1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_glass, nil, true)
    end
    juice_flip(card, true)
    for i = 1, #G.hand.highlighted do
      if pseudorandom(pseudoseed('icestone')) <  G.GAME.probabilities.normal/self.config.odds then
        poke_remove_card(G.hand.highlighted[i], card)
      end
    end
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local shinystone = {
  name = "shinystone",
  key = "shinystone",
  set = "Item",
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.e_foil
    info_queue[#info_queue+1] = G.P_CENTERS.e_holo
    info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
    info_queue[#info_queue+1] = {set = 'Other', key = 'eitem'}
  end,
  pos = { x = 2, y = 4 },
  atlas = "Mart",
  cost = 4,
  evo_item = true,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return G.hand and G.hand.cards and #G.hand.cards > 0
  end,
  use = function(self, card, area, copier)
    local editionless = {}
    for i = 1, #G.hand.cards do
      if not G.hand.cards[i].edition then
        table.insert(editionless, G.hand.cards[i])
      end
    end
    
    if #editionless > 0 then
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
          local over = false
          local edition = poll_edition('shiny', nil, true, true)
          local shiny_card = pseudorandom_element(editionless, pseudoseed('shiny'))
          shiny_card:set_edition(edition, true)
          card:juice_up(0.3, 0.5)
      return true end }))
    end
    
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then
      return evo_item_use(self, card, area, copier)
    else
      return highlighted_evo_item(self, card, area, copier)
    end
  end,
  in_pool = function(self)
    return true
  end
}
local twisted_spoon = {
  name = "twisted_spoon",
  key = "twisted_spoon",
  set = "Item",
  pos = { x = 1, y = 5 },
  atlas = "Mart",
  cost = 4,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    if (#G.consumeables.cards < G.consumeables.config.card_limit or card.area == G.consumeables) and G.GAME.last_poke_item and G.GAME.last_poke_item ~= 'c_poke_twisted_spoon' then 
      return true 
    end
    return false
  end,
  use = function(self, card, area, copier)
    local used_item = copier or card
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
        if G.consumeables.config.card_limit > #G.consumeables.cards then
            play_sound('timpani')
            local _card = create_card('Item', G.consumeables, nil, nil, nil, nil, G.GAME.last_poke_item, 'spoon')
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            used_item:juice_up(0.3, 0.5)
        end
        return true end }))
    delay(0.6)
  end,
  in_pool = function(self)
    return true
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or self
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end
    local spoon_c = G.GAME.last_poke_item and G.P_CENTERS[G.GAME.last_poke_item] or nil
    local last_poke_item = spoon_c and localize{type = 'name_text', key = spoon_c.key, set = spoon_c.set} or localize('k_none')
    local colour = (not spoon_c or spoon_c.name == 'twisted_spoon') and G.C.RED or G.C.GREEN
    local main_end = {
        {n=G.UIT.C, config={align = "bm", padding = 0.02}, nodes={
            {n=G.UIT.C, config={align = "m", colour = colour, r = 0.05, padding = 0.05}, nodes={
                {n=G.UIT.T, config={text = ' '..last_poke_item ..' ', colour = G.C.UI.TEXT_LIGHT, scale = 0.3, shadow = true}},
            }}
        }}
    }
   local loc_vars = {last_poke_item}
   if not (not spoon_c or spoon_c.name == 'twisted_spoon') then
      info_queue[#info_queue+1] = spoon_c
   end
   
   localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = loc_vars}
   desc_nodes[#desc_nodes+1] = main_end 
  end
}

return {name = "Items",
        list = {moonstone, sunstone, waterstone, leafstone, firestone, thunderstone, linkcable, leftovers, leek, thickclub, teraorb, metalcoat, dragonscale, kingsrock, upgrade, dubious_disc, icestone,                shinystone, twisted_spoon}
}
