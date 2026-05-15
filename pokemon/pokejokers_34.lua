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
  config = {extra = {money = 3, money_goal = 999, money_seen = 0, previous_money = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
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
      G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.dollar_buffer = 0
                return true
            end
        }))
      local earned = ease_poke_dollars(card, "gimmi", card.ability.extra.money, true)
      return {
        dollars = earned,
        card = card
      }
    end
    if context.skipping_booster and G.shop_jokers and G.shop_jokers.cards then
        local temp_card = {set = "Joker", area = G.shop_jokers, key = "j_poke_gimmighoulr"}
        local new_card = SMODS.create_card(temp_card)
        local edition = {negative = true}
        new_card:set_edition(edition, true)
        poke_add_shop_card(new_card, card)
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
      if (SMODS.Mods["Talisman"] or {}).can_load then
        local money_diff = math.abs(to_number(G.GAME.dollars) - to_number(card.ability.extra.previous_money))
        if to_big(money_diff) > to_big(0) then
          card.ability.extra.money_seen = card.ability.extra.money_seen + money_diff
          card.ability.extra.previous_money = G.GAME.dollars
        end
        if to_big(card.ability.extra.money_seen) >= to_big(card.ability.extra.money_goal) and not card.ability.extra.juiced then
          card.ability.extra.juiced = true
          local eval = function(card) return not card.REMOVED and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      else
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
  end,
  attributes = {"enhancements", "economy", "condition_evo"},
}
local gimmighoulr={
  name = "gimmighoulr",
  pos = {x = 11, y = 6},
  config = {extra = {}},
  no_collection = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
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
  
    ease_poke_dollars(card, "gimmir", amount_earned)
    remove(self, card, {})
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
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        message = localize('poke_make_it_rain'),
        colour = G.C.MONEY,
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
local wo_chien={
  name = "wo_chien",
  pos = {x = pokermon_config.pokemon_altart and 0, y = pokermon_config.pokemon_altart and 9},
  soul_pos = {x = 1, y = 9},
  config = {extra = {chips = 50, mult = 8, Xmult = 1.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.mult, center.ability.extra.Xmult}}
  end,
  rarity = "Legendary",
  cost = 8,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	if context.individual and not context.other_card.debuff and context.cardarea == G.play then
      if context.other_card.config.center == G.P_CENTERS.m_wild then
	    local option = math.random(1, 3)
		if option == 1 then
			return {
				mult = card.ability.extra.mult,
				colour = G.C.MULT,
				card = card
			}
		elseif option == 2 then
			return {
				x_mult = card.ability.extra.Xmult,
				colour = G.C.XMULT,
				card = card
			}
		elseif option == 3 then
			return {
				chips = card.ability.extra.chips,
				colour = G.C.CHIPS,
				card = card
			}
		end
      end
    end
     if context.cardarea == G.jokers and context.scoring_hand and not context_blueprint and context.before then
		if not card.ability.eternal then
			card.ability.eternal = true
		end
        local target = {}
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_wo_chien_ex")})
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            v:set_ability(G.P_CENTERS.m_wild, nil, true)
		  elseif v.config.center == G.P_CENTERS.m_wild then
			v.ruined_card = true
		  end
        end
	 elseif context.destroying_card then
		  local ruin = context.destroying_card.config.center == G.P_CENTERS.m_wild
		  return not context.blueprint and ruin and context.destroying_card.ruined_card
    end
  end,
}
-- Chien-Pao 1002
local chien_pao={
  name = "chien_pao",
  pos = {x = pokermon_config.pokemon_altart and 2, y = pokermon_config.pokemon_altart and 9},
  soul_pos = {x = 3, y = 9},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "Legendary",
  cost = 8,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
     if context.cardarea == G.jokers and context.scoring_hand and not context_blueprint and context.before then
		if not card.ability.eternal then
			card.ability.eternal = true
		end
        local target = {}
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_chien_pao_ex")})
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            v:set_ability(G.P_CENTERS.m_glass, nil, true)
		  elseif v.config.center == G.P_CENTERS.m_glass then
			v.ruined_card = true
		  end
        end
	 elseif context.destroying_card then
		  local ruin = context.destroying_card.config.center == G.P_CENTERS.m_glass
		  return not context.blueprint and ruin and context.destroying_card.ruined_card
    end
  end,
}
-- Ting-Lu 1003
local ting_lu={
  name = "ting_lu",
  pos = {x = pokermon_config.pokemon_altart and 4, y = pokermon_config.pokemon_altart and 9},
  soul_pos = {x = 5, y = 9},
  config = {extra = {chips = 50}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	info_queue[#info_queue+1] = G.P_CENTERS.m_stone
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = "Legendary",
  cost = 8,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	if context.individual and not context.other_card.debuff and context.cardarea == G.play then
	if not card.ability.eternal then
			card.ability.eternal = true
		end
      if context.other_card.config.center == G.P_CENTERS.m_stone then
        return {
            chips = card.ability.extra.chips,
            colour = G.C.CHIPS,
            card = card
        }
      end
    end
     if context.cardarea == G.jokers and context.scoring_hand and not context_blueprint and context.before then
	 if not card.ability.eternal then
			card.ability.eternal = true
	 end
        local target = {}
		  card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_ting_lu_ex")})
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            v:set_ability(G.P_CENTERS.m_stone, nil, true)
		  elseif v.config.center == G.P_CENTERS.m_stone then
			v.ruined_card = true
		  end
        end
	 elseif context.destroying_card then
		  local ruin = context.destroying_card.config.center == G.P_CENTERS.m_stone
		  return not context.blueprint and ruin and context.destroying_card.ruined_card
    end
  end,
}

local gholdengo={
  name = "gholdengo",
  pos = {x = 13, y = 6},
  config = {extra = {Xmult = 1, money_minus = 3, oXmult = 1, Xmult_multi = 1.5, future_dollars = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.money_minus, center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
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
      if (SMODS.Mods["Talisman"] or {}).can_load then
        card.ability.extra.future_dollars = to_big(card.ability.extra.future_dollars) - to_big(card.ability.extra.money_minus)
        if to_big(card.ability.extra.future_dollars) >= to_big(0) then
          card.ability.extra.Xmult = to_big(card.ability.extra.Xmult) * to_big(card.ability.extra.Xmult_multi)
          return {
            dollars = -card.ability.extra.money_minus,
            card = card
          }
        end
      else
        card.ability.extra.future_dollars = card.ability.extra.future_dollars - card.ability.extra.money_minus
        if card.ability.extra.future_dollars >= 0 then
          card.ability.extra.Xmult = card.ability.extra.Xmult * card.ability.extra.Xmult_multi
          return {
            dollars = -card.ability.extra.money_minus,
            card = card
          }
        end
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
-- Chi-Yu 1004
local chi_yu={
  name = "chi_yu",
  pos = {x = pokermon_config.pokemon_altart and 6, y = pokermon_config.pokemon_altart and 9},
  soul_pos = {x = 7, y = 9},
  config = {extra = {mult_multi = 8}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	info_queue[#info_queue+1] = G.P_CENTERS.m_mult
    return {vars = {center.ability.extra.mult_multi}}
  end,
  rarity = "Legendary",
  cost = 8,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	if context.individual and not context.other_card.debuff and context.cardarea == G.play then
		if not card.ability.eternal then
			card.ability.eternal = true
		end
      if context.other_card.config.center == G.P_CENTERS.m_mult then
        return {
            mult = card.ability.extra.mult_multi,
            colour = G.C.MULT,
            card = card
        }
      end
    end
     if context.cardarea == G.jokers and context.scoring_hand and not context_blueprint and context.before then
        local target = {}
		  card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_chi_yu_ex")})
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            v:set_ability(G.P_CENTERS.m_mult, nil, true)
		  elseif v.config.center == G.P_CENTERS.m_mult then
			v.ruined_card = true
		  end
        end
	 elseif context.destroying_card then
		  local ruin = context.destroying_card.config.center == G.P_CENTERS.m_mult
		  return not context.blueprint and ruin and context.destroying_card.ruined_card
    end
  end,
}
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
	   list = {gimmighoul, gimmighoulr, gholdengo, wo_chien, chien_pao, ting_lu, chi_yu},
}
