local pokedex={ 
  name = "pokedex",
  pos = {x = 0, y = 0},
  config = {extra = {mult = 0, mult_mod = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Other",
  atlas = "others",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.mult > 0 then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local pokemon_amount = 0
      for k, v in pairs(G.jokers.cards) do
        if (v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype) or type_sticker_applied(v) then
          pokemon_amount = pokemon_amount + 1
        end
      end
      card.ability.extra.mult = pokemon_amount * card.ability.extra.mult_mod
    end
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

local treasure_eatery={
  name = "treasure_eatery",
  pos = {x = 6, y = 1},
  config = {extra = {rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'typechangerother', vars = {"Type", colours = {G.ARGS.LOC_COLOURS.pink}}}
    return {vars = {center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 5,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.setting_blind then
      card.ability.extra.rounds = card.ability.extra.rounds - 1
      if G.jokers and G.jokers.cards and #G.jokers.cards > 1 then
        if has_type(G.jokers.cards[#G.jokers.cards]) then
          apply_type_sticker(G.jokers.cards[1], get_type(G.jokers.cards[#G.jokers.cards]))
          card:juice_up()
          card_eval_status_text(G.jokers.cards[1], 'extra', nil, nil, nil, {message = localize("poke_tera_ex"), colour = G.C.SECONDARY_SET.Spectral})
        end
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
            message = localize('poke_closed_ex'),
            colour = G.C.RED
        }
      end
    end
  end
}

function is_egg_helper(card)
  local name = ''
  if not card.name and card.ability.name then
    name = card.ability.name
  end
  if name == "rolycoly" or name == "carkol" or name == "coalossal" then
    --print("STEAM ENGINE")
    return true
  elseif name == "slugma" or name == "magcargo" or name == "camerupt" then
    --print("MAGMA ARMOR")
    return true
  elseif name == "magby" or name == "magmar" or name == "magmortar" then
    --print("FLAME BODY")
    return true
  elseif name == "litwick" or name == "lampent" or name == "chandelure" then
    --print("FLAME BODY")
    return true
  elseif name == "larvesta" or name == "volcarona" then
    --print("FLAME BODY")
    return true
  elseif name == "fletchinder" or name == "talonflame" then
    --print("FLAME BODY")
    return true
  elseif name == "sizzlipede" or name == "centiskorch" then
    --print("FLAME BODY")
    return true
  elseif name == "moltres" then
    --print("FLAME BODY")
    return true
  elseif name == "heatran" then
    --print("FLAME BODY")
    return true
  elseif name == "charcadet" then
    --print("FLAME BODY")
    return true
  end
end

local mystery_egg = {
  name = "mystery_egg",
  pos = {x = 5, y = 0},
  config = {extra = {key = nil, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_egg_tip'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'basic'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 1,
  stage = "Other",
  atlas = "others",
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
      local adjacent = 0
      local adjacent_jokers = poke_get_adjacent_jokers(card)
      for i = 1, #adjacent_jokers do
        if is_egg_helper(adjacent_jokers[i]) then adjacent = adjacent + 1 end
      end
      card.ability.extra.rounds = card.ability.extra.rounds - 1
      if (adjacent + #SMODS.find_card('c_poke_fire_energy')) > 0 and pseudorandom('egg') < (adjacent + #SMODS.find_card('c_poke_fire_energy'))/4 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
      end
      card.ability.extra.rounds = card.ability.extra.rounds - adjacent/4
      if card.ability.extra.rounds <= 1 then
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
      end
      if card.ability.extra.rounds <= 0 then
        card.ability.extra.rounds = 99
        G.E_MANAGER:add_event(Event({trigger = 'immediate',
          func = function()
            -- if edition is nil, it'll try again for an edition
            local _card = SMODS.create_card({set = "Joker", area = G.jokers, key = card.ability.extra.key, edition = card.edition})
            energy_increase(_card, 'Trans')
            _card:add_to_deck()
            local loc = 1
            for i,jkr in ipairs(G.jokers.cards) do
              if jkr == card then
                loc = i
              end
            end
            remove(self, card, context)
            G.jokers:emplace(_card, loc)
            return true
          end}))
        return {
            message = localize('poke_crack_ex')
        }
      else
        return {
            message = localize('poke_shake_ex')
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if from_debuff then return end
    if not card.ability or not card.ability.extra or not card.ability.extra.key then return end

    local poke_keys = {}
    for k, v in pairs(G.P_CENTERS) do
      if string.sub(v.key,1,7) == "j_poke_" and get_gen_allowed(v.atlas) and not v.aux_poke and pokemon_in_pool(v) and v.stage and type(v.rarity) == "number" then
        if ((v.stage == "Baby" or v.stage == "Basic") and v.rarity ~= 4) then
          table.insert(poke_keys, {key = v.key, rarity = v.rarity})
        end
      end
    end

    local poke_key = {key = "j_poke_rhyhorn", rarity = 2}
    if #poke_keys > 0 then
      poke_key = pseudorandom_element(poke_keys, pseudoseed('egg'))
    end
    -- common hatches in 2 turns
    -- uncommon hatches in 2 or 3 turns
    -- rare hatches in 3 turns

    -- w/o fire = 2/3/3
    -- w/1 fire = 2/2/3
    -- w/2 fire = 2/2/2
    if poke_key.rarity == 1 then
      card.ability.extra.rounds = 2
    elseif poke_key.rarity == 2 then
      card.ability.extra.rounds = 2
      if pseudorandom('regg') > .50 then
        card.ability.extra.rounds = card.ability.extra.rounds + 1 
      end
    elseif poke_key.rarity == 3 then
       card.ability.extra.rounds = 3
    end
    card.ability.extra.key = poke_key.key
  end,
  --[[ Function for dynatext, needs to be changed to put it as a tooltip
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)

    local _c = card and card.config.center or self
    if not full_UI_table.name then
			full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
		end
    local egg_messages = localize({ type = "raw_descriptions", set = _c.set, key = _c.key })
    local first_message = table.remove(egg_messages, math.random(#egg_messages))
    table.insert(egg_messages, 1, first_message)
    local main_start = {
      {n=G.UIT.O, config={object = DynaText({string = egg_messages,
      colours = {G.C.DARK_EDITION},pop_in_rate = 9999999, silent = true, random_element = true, pop_delay = 2.5, scale = 0.32, min_cycle_time = 0})}},
    }
    info_queue[#info_queue+1] = main_start
    --desc_nodes[#desc_nodes+1] = main_start
  end,--]]
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
      card.children.center:set_sprite_pos({x = 5, y = 1})
    elseif card.ability and card.ability.extra and card.ability.extra.form == 1 then
      card.children.center:set_sprite_pos({x = 4, y = 1})
    else
      card.children.center:set_sprite_pos({x = 3, y = 1})
    end
  end
}
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
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  no_collection = true,
  calculate = function(self, card, context)
    if context.setting_blind and not card.getting_sliced then
      local destroyed = 0
      for k, v in pairs(G.jokers.cards) do
        if v ~= card and has_type(v) and not v.ability.eternal then
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

if pokermon_config.pokemon_aprilfools then
  return {name = "Other Jokers",
        list = {pokedex, everstone, tall_grass, jelly_donut, treasure_eatery, mystery_egg, rival, billion_lions}
  }
else
  return {name = "Other Jokers",
        list = {pokedex, everstone, tall_grass, jelly_donut, treasure_eatery, mystery_egg, rival}
  }
end
