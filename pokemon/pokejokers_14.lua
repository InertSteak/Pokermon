-- Monferno 391
-- Infernape 392
-- Piplup 393
-- Prinplup 394
-- Empoleon 395
-- Starly 396
-- Staravia 397
-- Staraptor 398
-- Bidoof 399
local bidoof={
  name = "bidoof",
  pos = {x = 0, y = 0},
  config = {extra = {rerolls = 1, rerolls_to_evolve = 7}, evo_rqmt = 7},
  loc_txt = {
    name = "Bidoof",
    text = {
      "{C:attention}#1#{} free {C:green}Reroll{} per shop",
      "{C:inactive,s:0.8}(Evolves after rerolling {C:attention,s:0.8}#2#{C:inactive,s:0.8} times){}"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rerolls, center.ability.extra.rerolls_to_evolve}}
  end,
  rarity = 1,
  cost = 5,
  gen = 4,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint and card.ability.extra.rerolls_to_evolve > 0 then
      card.ability.extra.rerolls_to_evolve = card.ability.extra.rerolls_to_evolve - 1
    end
    return scaling_evo(self, card, context, "j_poke_bibarel", self.config.evo_rqmt - card.ability.extra.rerolls_to_evolve, self.config.evo_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
    SMODS.change_free_rerolls(card.ability.extra.rerolls)
  end,
  remove_from_deck = function(self, card, from_debuff)
    SMODS.change_free_rerolls(-card.ability.extra.rerolls)
  end,
}
-- Bibarel 400
local bibarel={
  name = "bibarel",
  pos = {x = 0, y = 0},
  config = {extra = {rerolls = 1, increase = 1}},
  loc_txt = {
    name = "Bibarel",
    text = {
      "{C:attention}#1#{} free {C:green}#3#{} per shop",
      "{br:2}ERROR - CONTACT STEAK",
      "Free {C:green}Rerolls{} increase by {C:attention}#2#",
      "when {C:attention}Boss Blind{} is defeated"
    }
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rerolls, center.ability.extra.increase, center.ability.extra.rerolls > 1 and localize('poke_reroll_plural') or localize('poke_reroll_singular')}}
  end,
  rarity = "poke_safari",
  cost = 7,
  gen = 4,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss and not card.debuff then
        
        card.ability.extra.rerolls = card.ability.extra.rerolls + card.ability.extra.increase
        SMODS.change_free_rerolls(card.ability.extra.increase)
        return {
            message = localize('k_upgrade_ex'),
            colour = G.C.GREEN
        }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    SMODS.change_free_rerolls(card.ability.extra.rerolls)
  end,
  remove_from_deck = function(self, card, from_debuff)
    SMODS.change_free_rerolls(-card.ability.extra.rerolls)
  end,
}
-- Kricketot 401
local kricketot={
  name = "kricketot",
  pos = {x = 0, y = 0},
  config = {extra = {money = 5,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 4,
  gen = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #context.full_hand == 4 then
        if poke_suit_check(context.full_hand, 4) then
          local earned = ease_poke_dollars(card, "kriketot", card.ability.extra.money)
          return {
            message = '$'..earned,
            colour = G.C.MONEY
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_kricketune")
  end,
}
-- Kricketune 402
local kricketune={
  name = "kricketune",
  pos = {x = 0, y = 0},
  config = {extra = {money = 5,num = 1, dem = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'kricketune')
    return {vars = {center.ability.extra.money, num, dem}}
  end,
  rarity = "poke_safari",
  cost = 6,
  gen = 4,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and #context.full_hand == 4 then
        if poke_suit_check(context.full_hand, 4) then
          local earned = ease_poke_dollars(card, "kriketune", card.ability.extra.money)
          if SMODS.pseudorandom_probability(card, 'kriketune', card.ability.extra.num, card.ability.extra.dem, 'kriketune') then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
              return {
                message = '$'..earned,
                colour = G.C.MONEY,
                extra = {focus = card, message = localize('k_plus_tarot'), colour = G.C.PURPLE, func = function()
                  G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    delay = 0.0,
                    func = function()
                      local card_type = 'Tarot'
                      local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                      _card:add_to_deck()
                      G.consumeables:emplace(_card)
                      G.GAME.consumeable_buffer = 0
                      return true
                    end
                  }))
                end}
              }
            else
              return {
                message = '$'..earned,
                colour = G.C.MONEY
              }
            end
          else
            return {
              message = '$'..earned,
              colour = G.C.MONEY
            }
          end
        end
      end
    end
  end,
}
-- Shinx 403
-- Luxio 404
-- Luxray 405
-- Budew 406
-- Roserade 407
-- Cranidos 408
-- Rampardos 409
-- Shieldon 410
-- Bastiodon 411
-- Burmy 412
-- Wormadam 413
-- Mothim 414
-- Combee 415
-- Vespiquen 416
-- Pachirisu 417
-- Buizel 418
local buizel={
  name = "buizel", 
  pos = {x = 3, y = 2}, 
  config = {extra = {chips = 30, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex4",
  gen = 4,
  ptype = "Water",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips * math.abs(#context.scoring_hand - #context.full_hand)
        if chips > 0 then
          return {
              message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
              colour = G.C.CHIPS,
              chip_mod = chips
            }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_floatzel")
  end,
}
-- Floatzel 419
local floatzel={
  name = "floatzel", 
  pos = {x = 4, y = 2}, 
  config = {extra = {chips = 45}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex4",
  gen = 4,
  ptype = "Water",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips * math.abs(#context.scoring_hand - #context.full_hand)
        if chips > 0 then
          return {
              message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
              colour = G.C.CHIPS,
              chip_mod = chips
            }
        end
      end
    end
  end,
}
-- Cherubi 420
return {name = "Pokemon Jokers 391-420", 
        list = {bidoof, bibarel, kricketot, kricketune, buizel, floatzel},
}
