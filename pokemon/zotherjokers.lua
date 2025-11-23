local pokedex={ 
  name = "pokedex",
  pos = {x = 0, y = 0},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {}}
  end,
  rarity = 2, 
  cost = 5, 
  stage = "Other",
  atlas = "others",
  blueprint_compat = true,
}

local rotomdex={ 
  name = "rotomdex",
  pos = {x = 0, y = 4},
  artist = {"InertSteak", "Catzzadilla"},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {G.GAME.rotom_discount or 0}}
  end,
  rarity = 1, 
  cost = 6, 
  stage = "Other",
  atlas = "others",
  blueprint_compat = false,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      local type_amount = 0
      local poketype = nil
      local poketype_list = {}
      for k, v in pairs(G.jokers.cards) do
        if (v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype) or type_sticker_applied(v) then
          poketype = get_type(v)
          if not poketype_list[poketype] then
            poketype_list[poketype] = true
            type_amount = type_amount + 1
          end
        end
      end
      if type_amount ~= (G.GAME.rotom_discount or 0) then
        G.GAME.rotom_discount = type_amount
        for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
        end
      end
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
  config = {extra = {num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'tall_grass')
    return {vars = {num, dem }}
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
      if context.before and (#G.jokers.cards + G.GAME.joker_buffer) < G.jokers.config.card_limit then
        local has_wild = false
        for k, v in ipairs(context.scoring_hand) do
          if v.ability.name == 'Wild Card' then
            has_wild = true
            break
          end
        end
        
        if has_wild or SMODS.pseudorandom_probability(card, 'tall_grass', card.ability.extra.num, card.ability.extra.dem, 'tall_grass') then
          G.GAME.joker_buffer = G.GAME.joker_buffer + 1
          G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            G.GAME.joker_buffer = 0
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
                remove(self, card, context)
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
  artist = "PrincessRoxie",
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
                remove(self, card, context)
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
    info_queue[#info_queue+1] = {set = 'Other', key = 'energize'}
    return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 1,
  stage = "Other",
  atlas = "others",
  blueprint_compat = false,
  eternal_compat = false,
  perishable_compat = false,
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
            if card.edition and card.edition.poke_shiny then
              SMODS.change_booster_limit(-1)
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
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local prefix_config = "j_"..(card.config.center.poke_custom_prefix and card.config.center.poke_custom_prefix or "poke").."_"
      local poke_keys = {}
      for k, v in pairs(G.P_CENTERS) do
        if string.sub(v.key,1,string.len(prefix_config)) == prefix_config and get_gen_allowed(v) and not v.aux_poke and pokemon_in_pool(v) and v.stage and type(v.rarity) == "number" then
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
    end
  end
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
  artist = "MyDude_YT",
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
            remove(self, card, context, true)
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
    if initial then
      G.GAME.rival_losses = G.GAME.rival_losses or 0
      card.ability.extra.form = G.GAME.rival_losses
      self:set_sprites(card)
    end
  end,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.form and card.ability.extra.form > 1 then
      card.children.center:set_sprite_pos({x = 4, y = 2})
    elseif card.ability and card.ability.extra and card.ability.extra.form and card.ability.extra.form == 1 then
      card.children.center:set_sprite_pos({x = 2, y = 2})
    else
      card.children.center:set_sprite_pos({x = 0, y = 2})
    end
  end
}

local ruins_of_alph={
  name = "ruins_of_alph",
  pos = {x = 1, y = 2},
  artist = "MyDude_YT",
  config = {extra = {mult = 0, mult_mod = 2, merged = 0, forms = {}, quest1 = 5, quest2 = 10, quest3 = 20, quest4 = 28}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local info = center.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'merge'}
    info_queue[#info_queue+1] = {set = 'Other', key = 'rewards_ruins_of_alph', vars = {info.quest1, info.quest2, info.quest3, info.quest4}}
    return {vars = {info.mult_mod, info.merged, info.mult}}
  end,
  rarity = 3,
  cost = 8,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
      if context.after then
        local unowns = SMODS.find_card("j_poke_unown")
        local added = nil
        for k, v in pairs(unowns) do
          if v.ability.extra.triggered and not v.ability.extra.merged then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
            card.ability.extra.merged = card.ability.extra.merged + 1
            v.ability.extra.merged = true
            table.insert(card.ability.extra.forms, v.ability.extra.form)
            added = true
          end
        end
        if added then table.sort(card.ability.extra.forms) end
      end
    end
    if context.setting_blind and not context.blueprint then
      for i = 1, 3 do
        G.E_MANAGER:add_event(Event({func = function()
          local temp_card = {set = "Joker", area = G.jokers, key = "j_poke_unown"}
          local new_card = SMODS.create_card(temp_card)
          local edition = {negative = true}
          new_card:set_edition(edition, true)
          new_card.cost = 0
          new_card.sell_cost = 0
          new_card:add_to_deck()
          G.jokers:emplace(new_card)
          new_card:start_materialize()
        return true end }))
      end
    end
    if context.selling_self and not context.blueprint then
      local temp_card = nil
      local reward_card = nil
      if card.ability.extra.merged >= 28 then
        temp_card = {set = "Joker", area = G.jokers, key = "j_poke_unown_swarm"}
        reward_card = SMODS.create_card(temp_card)
        local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_soul')
              _card:add_to_deck()
              G.consumeables:emplace(_card)
              card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
      elseif card.ability.extra.merged >= 20 then
        temp_card = {set = "Joker", area = G.jokers, key = "j_brainstorm"}
        reward_card = SMODS.create_card(temp_card)
      elseif card.ability.extra.merged >= 10 then
        local jokers = {}
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] ~= card then
                jokers[#jokers + 1] = G.jokers.cards[i]
            end
        end
        if #jokers > 0 then
          local chosen_joker = pseudorandom_element(jokers, 'alph')
          reward_card = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
        else
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_no_other_jokers')})
        end
      elseif card.ability.extra.merged >= 5 then
        reward_card = create_random_poke_joker("alph", nil, "poke_safari", G.jokers)
      end
      if reward_card then
        reward_card:add_to_deck()
        G.jokers:emplace(reward_card)
        reward_card:start_materialize()
      end
    end
  end,
}

local unown_swarm={
  name = "unown_swarm",
  pos = {x = 0, y = 0},
  soul_pos = {x = 0, y = 0,     
    draw = function(card, scale_mod, rotate_mod)
      -- AAAAA
      card.children.center.VT.w = card.T.w
      card.children.floating_sprite:draw_shader('dissolve', 0, nil, nil, card.children.center, scale_mod, rotate_mod, nil, 0.1 + 0.03*math.sin(1.8*G.TIMERS.REAL), nil, 0.6)
      card.children.floating_sprite:draw_shader('dissolve', nil, nil, nil, card.children.center, scale_mod, rotate_mod)
      card.children.center.VT.w = card.T.w * 1.174
    end},
  config = {extra = {mult = 28,Xmult_multi = 2.8,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.Xmult_multi, }}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Other",
  ptype = "Psychic",
  atlas = "j_poke_unown_swarm",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  no_collection = true,
  calculate = function(self, card, context)
    if context.other_joker and (context.other_joker.config.center.rarity == 4 or context.other_joker.config.center.rarity == "Legendary")then
      G.E_MANAGER:add_event(Event({
        func = function()
            context.other_joker:juice_up(0.5, 0.5)
            return true
        end
      })) 
      return {
        message = localize('poke_hidden_power_ex'), 
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult_multi,
        mult_mod = card.ability.extra.mult
      }
    end
  end,
  set_sprites = function(self, card, front)
    if self.discovered or card.bypass_discovery_center then
      card.children.center:reset()
      if card.children.floating_sprite then
        card.children.floating_sprite.atlas = G.ASSET_ATLAS[card.children.center.atlas.name .. "_soul"]
        card.children.floating_sprite:reset()
      end
    end
  end,
  update = function(self, card, dt)
    card.children.center.VT.x = card.T.x - (G.CARD_H - G.CARD_W) / 2
    card.children.floating_sprite.VT.x = card.children.center.VT.x
    card.children.center.VT.w = card.T.w * 1.174
  end,
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
  gen = 9,
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

local professor={
  name = "professor",
  pos = {x = 0, y = 1},
  config = {extra = {rounds_total = 2, rounds_current = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds_total, center.ability.extra.rounds_current}}
  end,
  rarity = 1,
  cost = 6,
  stage = "Other",
  atlas = "others",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.selling_self and (card.ability.extra.rounds_current >= card.ability.extra.rounds_total) and not context.blueprint then
      G.E_MANAGER:add_event(Event({
          func = (function()
              add_tag(Tag('tag_poke_starter_tag'))
              play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
              play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
              return true
          end)
      }))
    end
    if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
      card.ability.extra.rounds_current = card.ability.extra.rounds_current + 1
      if card.ability.extra.rounds_current == card.ability.extra.rounds_total then
          local eval = function(card) return not card.REMOVED end
          juice_card_until(card, eval, true)
      end
      return {
          message = (card.ability.extra.rounds_current < card.ability.extra.rounds_total) and
              (card.ability.extra.rounds_current .. '/' .. card.ability.extra.rounds_total) or
              localize('k_active_ex'),
          colour = G.C.FILTER
      }
    end
  end,
  in_pool = function(self)
    local grass_starters = {}
    local fire_starters = {}
    local water_starters = {}
    local pseudo_starters = {}
    local pika_eevee = {}
    local pack_key = nil
    for k, v in ipairs(G.P_CENTER_POOLS["Joker"]) do
      if not poke_family_present(v) then
        if v.starter and v.ptype == "Grass" then
          grass_starters[#grass_starters + 1] = v.key
        end
        if v.starter and v.ptype == "Fire" then
          fire_starters[#fire_starters + 1] = v.key
        end
        if v.starter and v.ptype == "Water" then
          water_starters[#water_starters + 1] = v.key
        end
        if v.pseudol then
          pseudo_starters[#pseudo_starters + 1] = v.key
        end
        if v.name == "pikachu" or v.name == "eevee" then
          pika_eevee[#pika_eevee + 1] = v.key
        end
      end
    end
    if #grass_starters == 0 or #fire_starters == 0 or #water_starters == 0 or #pseudo_starters == 0 or #pika_eevee == 0 then
      return false
    end
  end
}

if pokermon_config.pokemon_aprilfools then
  return {name = "Other Jokers",
        list = {pokedex, rotomdex, everstone, tall_grass, jelly_donut, treasure_eatery, mystery_egg, rival, ruins_of_alph, unown_swarm, professor, billion_lions}
  }
else
  return {name = "Other Jokers",
        list = {pokedex, rotomdex, everstone, tall_grass, jelly_donut, treasure_eatery, mystery_egg, rival, ruins_of_alph, unown_swarm, professor}
  }
end
