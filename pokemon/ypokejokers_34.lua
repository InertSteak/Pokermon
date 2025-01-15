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
  pos = {x = 1, y = 12},
  config = {extra = {money = 3, money_goal = 999, money_seen = 0, previous_money = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, center.ability.extra.money_seen, center.ability.extra.money_goal}}
  end,
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card.ability.name == 'Gold Card' then
      local earned = ease_poke_dollars(card, "gimmi", card.ability.extra.money, true)
      return {
        message = localize('$')..earned,
        colour = G.C.MONEY,
        dollars = earned,
        card = card
      }
    end
    if context.skipping_booster then
        local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_poke_gimmighoulr"}
        local new_card = SMODS.create_card(temp_card)
        local edition = {negative = true}
        new_card:set_edition(edition, true)
        create_shop_card_ui(new_card)
        new_card.states.visible = false
        G.shop_jokers:emplace(new_card)
        new_card:start_materialize()
        new_card.cost = 0
    end
    return scaling_evo(self, card, context, "j_poke_gholdengo", card.ability.extra.money_seen, card.ability.extra.money_goal)
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial and G.STAGE == G.STAGES.RUN then
      card.ability.extra.previous_money = G.GAME.dollars
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN then
      if not card.ability.extra.previous_money then card.ability.extra.previous_money = 0 end
      local money_diff = math.abs(G.GAME.dollars - card.ability.extra.previous_money)
      if money_diff > 0 then
        card.ability.extra.money_seen = card.ability.extra.money_seen + money_diff
        card.ability.extra.previous_money = G.GAME.dollars
      end
      if card.ability.extra.money_seen >= card.ability.extra.money_goal and not card.ability.extra.juiced then
        card.ability.extra.juiced = true
        local eval = function(card) return not card.REMOVED and not G.RESET_JIGGLES end
        juice_card_until(card, eval, true)
      end
    end
  end
}
local gimmighoulr={
  name = "gimmighoulr",
  pos = {x = 0, y = 12},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari",
  cost = 0,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
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
  
    ease_poke_dollars(card, "gimmir", amount_earned)
    remove(self, card, {})
  end,
}
-- Gholdengo 1000
local gholdengo={
  name = "gholdengo",
  pos = {x = 2, y = 12},
  config = {extra = {Xmult = 1, money_minus = 3, oXmult = 1, Xmult_multi = 1.5, future_dollars = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Basic",
  ptype = "Metal",
  atlas = "Pokedex9",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before then
        card.ability.extra.future_dollars = G.GAME.dollars
      end
      if context.joker_main then
        return {
          message = localize('poke_make_it_rain'), 
          colour = G.C.MONEY,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card.ability.name == 'Gold Card' then
      card.ability.extra.future_dollars = card.ability.extra.future_dollars - card.ability.extra.money_minus
      if card.ability.extra.future_dollars >= 0 then
        card.ability.extra.Xmult = card.ability.extra.Xmult * card.ability.extra.Xmult_multi
        return {
          message = '-'..localize('$')..card.ability.extra.money_minus,
          colour = G.C.MONEY,
          dollars = -card.ability.extra.money_minus,
          card = card
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.Xmult = card.ability.extra.oXmult
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
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
