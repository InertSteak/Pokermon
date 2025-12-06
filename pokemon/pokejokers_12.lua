-- Cacnea 331
-- Cacturne 332
-- Swablu 333
-- Altaria 334
-- Zangoose 335
-- Seviper 336
-- Lunatone 337
-- Solrock 338
-- Barboach 339
-- Whiscash 340
-- Corphish 341
-- Crawdaunt 342
-- Baltoy 343
-- Claydol 344
-- Lileep 345
local lileep={
  name = "lileep",
  pos = {x = 0, y = 0},
  config = {extra = {rank = "8", chip_mod = 10, money_mod = 1, h_size = 1, money_minus = 2, third_times = 0}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
    local third_left = math.max(0, self.config.evo_rqmt - center.ability.extra.third_times)
    return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chip_mod, center.ability.extra.money_mod, center.ability.extra.h_size, 
                    center.ability.extra.money_minus, third_left}}
  end,
  rarity = 2,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 8, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
        
        if card.ability.extra.ancient_count > 1 then
          card.ability.extra_value = (card.ability.extra_value or 0) + card.ability.extra.money_mod
          card:set_cost()
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')})
          for k, v in ipairs(G.consumeables.cards) do
            v.ability.extra_value = (v.ability.extra_value or 0) + card.ability.extra.money_mod
            v:set_cost()
            card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize('k_val_up')})
          end
        end
        
        if card.ability.extra.ancient_count > 2 then
          if not context.blueprint then
            card.ability.extra.third_times = card.ability.extra.third_times + 1
          end
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if context.individual and context.cardarea == G.hand and card.ability.extra.ancient_count > 2 then
      if not context.end_of_round and not context.before and not context.after then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            h_chips = card.ability.extra.chip_mod,
            card = card,
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_cradily", card.ability.extra.third_times, self.config.evo_rqmt)
  end,
  generate_ui = fossil_generate_ui,
}
-- Cradily 346
local cradily={
  name = "cradily",
  pos = {x = 0, y = 0},
  config = {extra = {rank = "8", chip_mod = 20, money_mod = 2, h_size = 1, money_minus = 4, money_minus2 = 26}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
    return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.chip_mod, center.ability.extra.money_mod, center.ability.extra.h_size, 
                    center.ability.extra.money_minus, center.ability.extra.money_minus2}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 8, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_handsize',vars={card.ability.extra.h_size}}})
        G.hand:change_size(card.ability.extra.h_size)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + card.ability.extra.h_size
        
        if card.ability.extra.ancient_count > 1 then
          card.ability.extra_value = (card.ability.extra_value or 0) + card.ability.extra.money_mod
          card:set_cost()
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')})
          for k, v in ipairs(G.consumeables.cards) do
            v.ability.extra_value = (v.ability.extra_value or 0) + card.ability.extra.money_mod
            v:set_cost()
            card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize('k_val_up')})
          end
        end
        
        if card.ability.extra.ancient_count > 3 then
          local highest = 0
          for k, v in ipairs(G.consumeables.cards) do
            if v.sell_cost > highest then highest = v.sell_cost end
          end
          
          if highest > 0 then
            card:juice_up()
            ease_poke_dollars(card, "cradily", highest)
          end
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    if context.individual and context.cardarea == G.hand and card.ability.extra.ancient_count > 2 then
      if not context.end_of_round and not context.before and not context.after then
        if context.other_card.debuff then
          return {
            message = localize("k_debuffed"),
            colour = G.C.RED,
            card = card,
          }
        else
          return {
            h_chips = card.ability.extra.chip_mod,
            card = card,
          }
        end
      end
    end
  end,
  generate_ui = fossil_generate_ui,
}
-- Anorith 347
local anorith={
  name = "anorith",
  pos = {x = 0, y = 0},
  config = {extra = {rank = "7", mult = 7, num = 1, dem = 4, third_times = 0}, evo_rqmt = 5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'anorith')
    local third_left = math.max(0, self.config.evo_rqmt - center.ability.extra.third_times)
    return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.mult, num, dem, third_left}}
  end,
  rarity = 2,
  cost = 5,
  gen = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 7, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        local scoring_mult = card.ability.extra.mult
        
        if card.ability.extra.ancient_count > 2 and #G.deck.cards > 0 then
          local targets = {}
          local target = nil
          for k, v in ipairs(G.deck.cards) do
            if v:get_id() > 7 then
              targets[#targets + 1] = v
            end
          end
          
          if #targets > 0 then
            target = pseudorandom_element(targets, pseudoseed('anorith'))
            poke_remove_card(target, card)
          end
          
          if not context.blueprint then
            card.ability.extra.third_times = card.ability.extra.third_times + 1
          end
        end
        
        if card.ability.extra.ancient_count > 1 then
          if SMODS.pseudorandom_probability(card, 'anorith', card.ability.extra.num, card.ability.extra.dem, 'anorith') then
            SMODS.add_card{set = 'Base', rank = card.ability.extra.rank, area = G.deck}
          end
        end
        
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {scoring_mult}}, 
          colour = G.C.MULT,
          mult_mod = scoring_mult
        }
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
    return scaling_evo(self, card, context, "j_poke_armaldo", card.ability.extra.third_times, self.config.evo_rqmt)
  end,
  generate_ui = fossil_generate_ui,
}
-- Armaldo 348
local armaldo={
  name = "armaldo",
  pos = {x = 0, y = 0},
  config = {extra = {rank = "7", mult = 11, num = 1, dem = 4, Xmult_multi = 0.1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'ancient', vars = {localize(center.ability.extra.rank, 'ranks')}}
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'armaldo')
    local total_xmult = 1
    local enhanced_sevens = 0
    if G.playing_cards then
      for k, v in pairs(G.playing_cards) do
        if v:get_id() == 7 then
          if v.config.center ~= G.P_CENTERS.c_base then
            enhanced_sevens = enhanced_sevens + 1
          end
        end
      end
    end
    total_xmult = 1 + (enhanced_sevens * center.ability.extra.Xmult_multi)
    return {vars = {localize(center.ability.extra.rank, 'ranks'), center.ability.extra.mult, num, dem, center.ability.extra.Xmult_multi, total_xmult}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        get_ancient_amount(context.scoring_hand, 7, card)
      end
      if context.joker_main and card.ability.extra.ancient_count > 0 then
        local scoring_mult = card.ability.extra.mult
        
        if card.ability.extra.ancient_count > 2 then
          local targets = {}
          local target = nil
          for k, v in ipairs(G.deck.cards) do
            if v:get_id() > 7 then
              targets[#targets + 1] = v
            end
          end
          
          if #targets > 0 then
            target = pseudorandom_element(targets, pseudoseed('anorith'))
            poke_remove_card(target, card)
          end
        end
        
        if card.ability.extra.ancient_count > 1 then
          if SMODS.pseudorandom_probability(card, 'armaldo', card.ability.extra.num, card.ability.extra.dem, 'armaldo') then
            SMODS.add_card{set = 'Enhanced', rank = card.ability.extra.rank, area = G.deck}
          end
        end
        
        if card.ability.extra.ancient_count > 3 then
          local total_xmult = 1
          local enhanced_sevens = 0
          if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
              if v:get_id() == 7 then
                if v.config.center ~= G.P_CENTERS.c_base then
                  enhanced_sevens = enhanced_sevens + 1
                end
              end
            end
          end
          total_xmult = 1 + (enhanced_sevens * card.ability.extra.Xmult_multi)
          return {
            message = localize("poke_x_scissor_ex"), 
            colour = G.C.MULT,
            mult_mod = scoring_mult,
            Xmult_mod = total_xmult
          }
        else
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {scoring_mult}}, 
            colour = G.C.MULT,
            mult_mod = scoring_mult
          }
        end
      end
      if context.after then
        card.ability.extra.ancient_count = 0
      end
    end
  end,
  generate_ui = fossil_generate_ui,
}
-- Feebas 349
local feebas={
  name = "feebas",
  pos = {x = 7, y = 9},
  config = {extra = {mult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = { set = 'Joker', key = 'j_splash', config={}}
    end
    return {vars = {center.ability.extra.mult}}
  end,
  rarity = 3, 
  cost = 3, 
  item_req = "prismscale",
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
          colour = G.C.MULT,
          mult_mod = card.ability.extra.mult
        }
      end
    end
    return item_evo(self, card, context, "j_poke_milotic")
  end
}
-- Milotic 350
local milotic={
  name = "milotic",
  pos = {x = 8, y = 9},
  config = {extra = {retriggers = 1, active = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and poke_same_suit(context.scoring_hand) then
        card.ability.extra.active = true
      end
      if context.after and card.ability.extra.active then
        card.ability.extra.active = false
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play and card.ability.extra.active then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end
}
-- Castform 351
-- Kecleon 352
-- Shuppet 353
-- Banette 354
-- Duskull 355
local duskull={
  name = "duskull",
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 1,rounds = 5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.rounds, }}
  end,
  rarity = 2,
  cost = 6,
  gen = 3,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_left == 0 then
      if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) 
      or (context.other_card == context.scoring_hand[3]) or (context.other_card == context.scoring_hand[4]) then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
    return level_evo(self, card, context, "j_poke_dusclops")
  end,
}
-- Dusclops 356
local dusclops={
  name = "dusclops",
  pos = {x = 0, y = 0},
  config = {extra = {retriggers = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, }}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 3,
  item_req = "linkcable",
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play and G.GAME.current_round.hands_left == 0 then
      if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) 
      or (context.other_card == context.scoring_hand[3]) or (context.other_card == context.scoring_hand[4]) then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.after and G.GAME.current_round.hands_left == 0 and (#context.full_hand - #context.scoring_hand) == 1 and not context.blueprint then
        for k, v in pairs(context.full_hand) do
          if not SMODS.in_scoring(v, context.scoring_hand) then
            poke_remove_card(v, card)
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
              G.E_MANAGER:add_event(Event({
                func = function()
                  local _card = SMODS.add_card {set = 'Spectral'}
                  card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end
            break
          end
        end
      end
    end
    return item_evo(self, card, context, "j_poke_dusknoir")
  end,
}
-- Tropius 357
-- Chimecho 358
-- Absol 359
local absol={
  name = "absol",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.scry}}
  end,
  rarity = 3,
  cost = 8,
  gen = 3,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex3",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.fix_probability and not context.blueprint then
      return {
        numerator = 0,
      }
    end
  end,
}
-- Wynaut 360
local wynaut={
  name = "wynaut",
  pos = {x = 1, y = 11},
  config = {extra = {Xmult_minus = 0.75,rounds = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'baby'}
      info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
      info_queue[#info_queue+1] = G.P_CENTERS.c_fool
    end
    return {vars = {center.ability.extra.Xmult_minus, center.ability.extra.rounds, }}
  end,
  rarity = 3,
  cost = 4,
  stage = "Baby",
  ptype = "Psychic",
  atlas = "Pokedex3",
  gen = 3,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        faint_baby_poke(self, card, context)
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_minus}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult_minus
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not card.debuff then
      local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_fool')
      local edition = {negative = true}
      _card:set_edition(edition, true)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
    end
    return level_evo(self, card, context, "j_poke_wobbuffet")
  end,
}
return {name = "Pokemon Jokers 331-360", 
        list = {lileep, cradily, anorith, armaldo, feebas, milotic, duskull, dusclops, absol, wynaut},
}
