-- Iron Bundle 991
-- Iron Hands 992
-- Iron Jugulis 993
-- Iron Moth 994
-- Iron Thorns 995
-- Frigibax 996
-- Arctibax 997
-- Baxcalibur 998
-- Gimmighoul 999
local gimmighoul={
  name = "gimmighoul",
  pos = {x = 12, y = 6},
  config = {extra = {money = 3, money_goal = 999, money_seen = 0}},
  loc_vars = function(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_gold
    end
    return {vars = {center.ability.extra.money, center.ability.extra.money_seen, center.ability.extra.money_goal}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex9",
  gen = 9,
  enhancement_gate = 'm_gold',
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
      local earned = pokermon.ease_poke_dollars(card, "gimmi", card.ability.extra.money, true)
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + earned
      return {
        dollars = earned,
        func = function()
          G.E_MANAGER:add_event(Event({
            func = function()
              G.GAME.dollar_buffer = 0
              return true
            end
          }))
        end
      }
    end
    if context.skipping_booster and G.shop_jokers and G.shop_jokers.cards then
      local new_card = SMODS.create_card({set = "Joker", key = "j_poke_gimmighoulr", edition = 'e_negative'})
      pokermon.add_shop_card(new_card, card, true)
    end
    if context.money_altered then
      card.ability.extra.money_seen = card.ability.extra.money_seen + math.abs(context.amount)
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_gholdengo", card.ability.extra.money_seen, card.ability.extra.money_goal)
  end,
  attributes = {"enhancements", "economy", "condition_evo"},
}
local gimmighoulr={
  name = "gimmighoulr",
  pos = {x = 11, y = 6},
  config = {extra = {}},
  no_collection = true,
  loc_vars = function(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari",
  cost = 0,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex9",
  gen = 9,
  aux_poke = true,
  auto_sticker = true,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = false,
  add_to_deck = function(self, card, from_debuff)
    local amount_earned = nil
    local money_chance = pseudorandom('gimmir')
    if money_chance < .50 then amount_earned = 1
    elseif money_chance < .70 then amount_earned = 3
    elseif money_chance < .90 then amount_earned = 5
    elseif money_chance < .97 then amount_earned = 10
    elseif money_chance < .99 then amount_earned = 30
    elseif money_chance < .999 then amount_earned = 50
    elseif money_chance < .9999 then amount_earned = 100
    else amount_earned = 200 end
  
    pokermon.ease_poke_dollars(card, "gimmir", amount_earned)
    SMODS.destroy_cards(card)
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local edition = {negative = true}
      card:set_edition(edition, true, true)
    end
  end,
  in_pool = function(self)
    return false
  end,
  attributes = {"economy"},
}
-- Gholdengo 1000
local gholdengo={
  name = "gholdengo",
  pos = {x = 13, y = 6},
  config = {extra = {Xmult = 1, money_minus = 3, Xmult1 = 1, Xmult_multi = 1.5}},
  loc_vars = function(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex9",
  gen = 9,
  enhancement_gate = 'm_gold',
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main and card.ability.extra.Xmult > 1 then
      return {
        message = localize('poke_make_it_rain'),
        Xmult_mod = card.ability.extra.Xmult
      }
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
      local to_big = to_big or function(x) return x end

      local dollars = to_big(G.GAME.dollars or 0)
      local buffer = to_big(G.GAME.dollar_buffer or 0)
      local money_minus = to_big(card.ability.extra.money_minus)

      if dollars + buffer - money_minus >= to_big(0) then
        SMODS.scale_card(card, {
          ref_value = 'Xmult',
          scalar_value = 'Xmult_multi',
          operation = function(ref_table, ref_value, initial, scalar_value)
            SMODS.multiplicative_scaling(ref_table, ref_value, to_big(initial), to_big(scalar_value))
          end,
          no_message = true,
        })

        G.GAME.dollar_buffer = buffer - money_minus

        G.E_MANAGER:add_event(Event({
          func = function()
              G.GAME.dollar_buffer = to_big(0)
              return true
          end
        }))

        return {
          dollars = -money_minus,
          card = card
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.Xmult = card.ability.extra.Xmult1
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end,
  attributes = {"enhancements", "economy", "xmult"},
}
-- Wo-Chien 1001
-- Chien-Pao 1002
-- Ting-Lu 1003
-- Chi-Yu 1004
-- Roaring Moon 1005
-- Iron Valiant 1006
-- Koraidon 1007
-- Miraidon 1008
-- Walking Wake 1009
-- Iron Leaves 1010
-- Dipplin 1011
-- Poltchageist 1012
-- Sinistcha 1013
-- Okidogi 1014
-- Munkidori 1015
-- Fezandipiti 1016
-- Ogerpon 1017
-- Archaludon 1018
-- Hydrapple 1019
-- Gouging Fire 1020
return {name = "Pokemon Jokers 991-1020", 
        list = {gimmighoul, gimmighoulr, gholdengo},
}
