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
  pos = {x = 4, y = 0},
  config = {extra = {key = nil, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = 1,
  cost = 1,
  stage = "Other",
  atlas = "others",
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local adjacent = 0
      local adjacent_jokers = poke_get_adjacent_jokers(card)
      for i = 1, #adjacent_jokers do
        if is_egg_helper(adjacent_jokers[i]) then adjacent = adjacent + 1 end
      end
      card.ability.extra.rounds = card.ability.extra.rounds - 1
      card.ability.extra.rounds = card.ability.extra.rounds - adjacent/4
      if card.ability.extra.rounds <= 0 then
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
      end
    elseif context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
      if card.ability.extra.rounds <= 0 then
        card.ability.extra.rounds = 99
        G.E_MANAGER:add_event(Event({trigger = 'immediate',
          func = function()
            local _card = SMODS.create_card({set = "Joker", area = G.jokers, key = card.ability.extra.key})
            -- give it two chances to get an edition (to make it wortwhile)
            if not _card.edition then
              _card:set_edition(poll_edition('edi'..G.GAME.round_resets.ante))
            end
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
            message = "CRACK!"
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    local chance = pseudorandom(pseudoseed('egg'))
    local pokerarity = 1 -- not legendary
    if chance <= 0.01 then
      -- yes legendary
      pokerarity = 4
    end

    local poke_keys = {}
    for k, v in pairs(G.P_CENTERS) do
      if string.sub(v.key,1,7) == "j_poke_" and get_gen_allowed(v.atlas) and get_poke_allowed(v.key) and pokemon_in_pool(v) and v.stage and type(v.rarity) == "number" then
        if ((v.stage == "Baby" or v.stage == "Basic") and pokerarity ~= 4) or (v.stage == "Legendary" and pokerarity == 4) then
          table.insert(poke_keys, {key = v.key, rarity = v.rarity})
        end
      end
    end

    local poke_key = {key = "j_poke_rhyhorn", rarity = 2}
    if #poke_keys > 0 then
      poke_key = pseudorandom_element(poke_keys, pseudoseed('egg'))
    end
    -- common hatches in 2 turns
    -- uncommon hatches in 2.5 turns
    -- rare hatches in 3 turns
    -- Legendary hatches in 3.5 turns

    -- w/o fire = 2/3/3/4
    -- w/1 fire = 2/2/3/3
    -- w/2 fire = 2/2/2/3
    card.ability.extra.rounds = 1.5 + poke_key.rarity / 2
    card.ability.extra.key = poke_key.key
  end,
}

return {name = "Other Jokers",
        list = {pokedex, everstone, tall_grass, jelly_donut, mystery_egg}
}