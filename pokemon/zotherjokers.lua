local pokedex={ 
  name = "pokedex",
  pos = {x = 0, y = 0},
  config = {extra = {mult_mod = 1, found = {pokedex = true}, found_count = 1, searching = false}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
		return {vars = {card.ability.extra.found_count * card.ability.extra.mult_mod, card.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Other",
  atlas = "others",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.delayed_cardarea_check then
      local list_to_check = context.delayed_cardarea_check.cards
      if list_to_check then
        for k,joker in pairs(list_to_check) do
          if joker.ability.set == "Joker" then
            if joker.ability and type(joker.ability.name) == "string" and not card.ability.extra.found[joker.ability.name] then
              print("FOUND: "..tostring(joker.ability.name))
              card.ability.extra.found[joker.ability.name] = true
              card.ability.extra.found_count = card.ability.extra.found_count + 1
              if not context.delayed_check_silent then
                card_eval_status_text(card, 'jokers', nil, nil, nil, {message = localize("poke_pokedex_entry"), colour = G.C.RED})
              end
            end
          end
        end
      end
    elseif context.buying_card then
      G.E_MANAGER:add_event(Event({ func = function() self:calculate(card, {starting_shop = true}); return true end }))
    elseif context.starting_shop or context.reroll_shop then
      G.E_MANAGER:add_event(Event({ func = function() self:calculate(card, {delayed_cardarea_check = G.shop_jokers}); return true end }))
    elseif context.open_booster then
      G.E_MANAGER:add_event(Event({
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              self:calculate(card, {delayed_cardarea_check = G.pack_cards})
              return true
            end
          }))
          return true
        end
      }))
    end

    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.found_count > 0 then
        local mult = card.ability.extra.found_count * card.ability.extra.mult_mod
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {mult}}, 
          colour = G.C.MULT,
          mult_mod = mult
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local update_jokers = false
      local found_self = false
      for k, v in pairs(G.jokers.cards) do
        if not card.ability.extra.found[v.ability.name] then
          update_jokers = true
        elseif v == card then
          found_self = true
        end
      end
      if update_jokers then
        self:calculate(card, {delayed_cardarea_check = G.jokers, delayed_check_silent = not found_self})
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    -- delay check to allow other cards to appear
    G.E_MANAGER:add_event(Event({
      func = function()
        self:calculate(card, {delayed_cardarea_check = G.jokers, delayed_check_silent = true})
        self:calculate(card, {delayed_cardarea_check = G.pack_cards, delayed_check_silent = true})
        self:calculate(card, {delayed_cardarea_check = G.shop_jokers, delayed_check_silent = true})
        return true
      end
    }))
  end
}

local everstone={ 
  name = "everstone",
  pos = {x = 1, y = 0},
  config = {extra = {Xmult_multi = 1.75}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
		return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = 3, 
  cost = 8, 
  stage = "Other",
  atlas = "others",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.other_joker and context.other_joker.config and (context.other_joker.config.center.stage == "Basic" or context.other_joker.config.center.stage == "Baby") then
        G.E_MANAGER:add_event(Event({
          func = function()
              context.other_joker:juice_up(0.5, 0.5)
              return true
          end
        })) 
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_multi}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_multi
        }
    end
  end,
}

local tall_grass={
  name = "tall_grass",
  pos = {x = 2, y = 0},
  config = {extra = {odds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds, }}
  end,
  rarity = 1,
  cost = 6,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and #G.jokers.cards < G.jokers.config.card_limit then
        local has_wild = false
        for k, v in ipairs(context.scoring_hand) do
          if v.ability.name == 'Wild Card' then
            has_wild = true
            break
          end
        end
        
        if has_wild or pseudorandom('tallgrass') < G.GAME.probabilities.normal/card.ability.extra.odds then
          G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('timpani')
            local _card = create_random_poke_joker("tallgrass", nil, "common")
            _card:add_to_deck()
            G.jokers:emplace(_card)
            return true end }))
          delay(0.6)
        end
      end
    end
  end
}

local jelly_donut={
  name = "jelly_donut",
  pos = {x = 3, y = 0},
  config = {extra = {rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 6,
  joblacklist = true,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind then
      card.ability.extra.rounds = card.ability.extra.rounds - 1
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card("Energy", G.pack_cards, nil, nil, true, true, "c_poke_colorless_energy", nil)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        G.GAME.consumeable_buffer = 0
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Energy!", colour = G.ARGS.LOC_COLOURS.pink})
      else
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "No Room!", colour = G.C.MULT})
      end

      if card.ability.extra.rounds <= 0 then 
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('tarot1')
                card.T.r = -0.2
                card:juice_up(0.3, 0.4)
                card.states.drag.is = true
                card.children.center.pinch.x = true
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                    func = function()
                            G.jokers:remove_card(card)
                            card:remove()
                            card = nil
                        return true; end})) 
                return true
            end
        })) 
        return {
            message = localize('k_eaten_ex'),
            colour = G.C.RED
        }
      end
    end
  end
}

local rival = {
  name = "rival",
  pos = {x = 3, y = 1},
  config = {extra = {mult = 10, Xmult = 3, form = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local mult = card.ability.extra.mult
    local money = 5
    local alt_key = nil
    if card.ability.extra.form == 1 then
      alt_key = "j_poke_bitter_rival"
      mult = card.ability.extra.mult * 2
      money = 10
    elseif card.ability.extra.form > 1 then
      alt_key = "j_poke_champion"
      mult = card.ability.extra.Xmult
      money = 25
    end

    local percent = (2 ^ card.ability.extra.form) + 1

    return {vars = {mult, money, percent}, key = alt_key}
  end,
  rarity = 1,
  cost = 6,
  joblacklist = true,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if card.ability.extra.form > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        else
          local mult = card.ability.extra.mult * (card.ability.extra.form == 0 and 1 or 2)
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {mult}},
            colour = G.C.MULT,
            mult_mod = mult
          }
        end
      end
    end

    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      local beaten = false
      if not G.GAME.chips or not G.GAME.blind.chips or not card.ability.extra.form then return end
      if (SMODS.Mods["Talisman"] or {}).can_load and to_big(G.GAME.chips)/G.GAME.blind.chips >= to_big((2 ^ card.ability.extra.form) + 1) then
        beaten = true
      elseif not (SMODS.Mods["Talisman"] or {}).can_load and G.GAME.chips/G.GAME.blind.chips >= (2 ^ card.ability.extra.form) + 1 then
        beaten = true
      end
      if beaten then
        G.GAME.rival_losses = G.GAME.rival_losses + 1

        local money = 5
        if card.ability.extra.form == 1 then
          money = 10
        elseif card.ability.extra.form > 1 then
          money = 25
        end
        ease_poke_dollars(card, 'rival', money)

        
        G.E_MANAGER:add_event(Event({
          func = function()
            remove(self, card, context)
            return true
          end
        }))

        return {
            message = localize("poke_smell_ya")
        }
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    G.GAME.rival_losses = G.GAME.rival_losses or 0
    card.ability.extra.form = G.GAME.rival_losses
    self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.form > 1 then
      card.children.center:set_sprite_pos({x = 4, y = 1})
    else
      card.children.center:set_sprite_pos({x = 3, y = 1})
    end
  end
}

return {name = "Other Jokers",
        list = {pokedex, everstone, tall_grass, jelly_donut, rival}
}