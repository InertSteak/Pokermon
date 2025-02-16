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

local professor_jimbo={
  name = "professor_jimbo",
  pos = {x = 4, y = 0},
  config = {extra = {sold = nil}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {}}
  end,
  rarity = 2,
  cost = 8,
  joblacklist = true,
  stage = "Other",
  atlas = "others",
  perishable_compat = false,
  blueprint_compat = false,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.selling_self and not context.blueprint then
      card.ability.extra.sold = true
      local starters = {'bulbasaur','charmander','squirtle',
                        'chikorita','cyndaquil','totodile',
                        'treecko','torchic','mudkip',
                        'turtwig','chimchar','piplup',
                        'snivy','tepig','oshawott',
                        'chespin','fennekin','froakie',
                        'rowlet','litten','popplio',
                        'grookey','scorbunny','sobble',
                        'sprigatito','fuecoco','quaxly',}
      local found_starters = {}
      for _,name in pairs(starters) do
        if G.P_CENTERS["j_poke_"..name] then
          table.insert(found_starters, "j_poke_"..name)
        end
      end
      local to_create = pseudorandom_element(found_starters, pseudoseed('professor_jimbo'))
      local new_starter = SMODS.create_card({set = "Joker", area = G.jokers, key = to_create, no_edition = true})
      local pokedex = SMODS.create_card({set = "Joker", area = G.jokers, key = 'j_poke_pokedex', no_edition = true})
      G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
          new_starter:add_to_deck()
          pokedex:add_to_deck()
          G.jokers:emplace(new_starter)
          G.jokers:emplace(pokedex)
          new_starter.states.visible = true
          pokedex.states.visible = true
      return true end }))
    end
  end,
}

return {name = "Other Jokers",
        list = {pokedex, everstone, tall_grass, jelly_donut, professor_jimbo}
}