-- Ampharos 181
local ampharos={
  name = "ampharos",
  pos = {x = 9, y = 2},
  config = {extra = {Xmult = 1,Xmult_mod = 0.3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari",
  cost = 9,
  stage = "Two",
  ptype = "Lightning",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  poke_custom_values_to_keep = {"Xmult"},
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.Xmult > 0 and card.ability.extra.Xmult ~= 1  then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    if context.playing_card_added and not context.blueprint then
      card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
    end
  end,
  megas = { "mega_ampharos" },
}
local mega_ampharos={
  name = "mega_ampharos",
  pos = {x = 0, y = 2},
  soul_pos = {x = 1, y = 2},
  config = {extra = {Xmult = 1, Xmult_mod = 0.3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, G.deck and math.ceil(#G.deck.cards/2) or 0}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Dragon",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  poke_custom_values_to_keep = {"Xmult"},
  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
      if G.hand.config.card_limit < math.ceil(#G.deck.cards/2) then
        local increase = math.ceil(#G.deck.cards/2) - G.hand.config.card_limit
        G.hand:change_size(increase)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + increase
      end
      ease_discard(-G.GAME.current_round.discards_left, nil, true)
      if G.GAME.blind.name ~= "The Needle" then
        ease_hands_played(-G.GAME.current_round.hands_left + 1)
      end
    end
    if context.joker_main and card.ability.extra.Xmult > 0 and card.ability.extra.Xmult ~= 1  then
      return {
        message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
        colour = G.C.XMULT,
        Xmult_mod = card.ability.extra.Xmult
      }
    end
  end,
}
-- Bellossom 182
local bellossom={
  name = "bellossom",
  config = {extra = {mult = 7}},
  pos = {x = 0, y = 3},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      if not center.edition or (center.edition and not center.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
      end
      if not center.edition or (center.edition and not center.edition.foil) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_foil
      end
      if not center.edition or (center.edition and not center.edition.holo) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
      end
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
		return {vars = {center.ability.extra.mult}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local odds = {}
      for k, v in ipairs(context.scoring_hand) do
          local upgrade = pseudorandom(pseudoseed('bellossom'))
          if poke_is_odd(v) and upgrade > .50 and not v.edition then
              odds[#odds+1] = v
              if v.ability.name == 'Wild Card' and not v.edition then
                local edition = poll_edition('aura', nil, true, true)
                v:set_edition(edition, true, true)
              end
              v:set_ability(G.P_CENTERS.m_wild, nil, true)
              G.E_MANAGER:add_event(Event({
                  func = function()
                      v:juice_up()
                      return true
                  end
              })) 
          else
            v.bellossom_score = true
          end
      end
      if #odds > 0 then 
          return {
            message = localize("poke_petal_dance_ex"),
              colour = G.C.MULT,
              card = card
          }
      end
    end
    if context.after and context.cardarea == G.jokers and not context.blueprint then
      for k, v in ipairs(context.scoring_hand) do
        if v.bellossom_score then v.bellossom_score = nil end
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if poke_is_odd(context.other_card) then
          if context.other_card.bellossom_score then
            return {
              mult = card.ability.extra.mult,
              card = card
            }
          end
      end
    end
  end
}
-- Marill 183
local marill={
  name = "marill",
  pos = {x = 1, y = 3},
  config = {extra = {bonus_scored = 0, Xmult = 2}, evo_rqmt = 15},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
    end
    local bonus_left = math.max(0, self.config.evo_rqmt - card.ability.extra.bonus_scored)
		return {vars = {bonus_left, card.ability.extra.Xmult}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      if SMODS.has_enhancement(context.other_card, 'm_bonus') then
        card.ability.extra.bonus_scored = card.ability.extra.bonus_scored + 1
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local enhanced = nil
        local unenhanced = nil
        for k, v in pairs(context.scoring_hand) do
          if v.config.center == G.P_CENTERS.c_base then
            unenhanced = true
          else
            enhanced = true
          end
        end
        if enhanced and unenhanced then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = card.ability.extra.Xmult
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_azumarill", card.ability.extra.bonus_scored, self.config.evo_rqmt)
  end,
}
-- Azumarill 184
local azumarill={
  name = "azumarill",
  pos = {x = 2, y = 3},
  config = {extra = {Xmult = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_bonus
    end
		return {vars = {card.ability.extra.Xmult}}
  end,
  rarity = 'poke_safari',
  cost = 7,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = card.ability.extra.Xmult
        local bonus = nil
        local unbonus = nil
        for k, v in pairs(context.scoring_hand) do
          if SMODS.has_enhancement(v, 'm_bonus') then
            bonus = true
          else
            unbonus = true
          end
        end
        if bonus and unbonus then
          Xmult = Xmult * 2
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = Xmult
        }
      end
    end
  end,
}
-- Sudowoodo 185
local sudowoodo={
  name = "sudowoodo",
  pos = {x = 3, y = 3},
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      if context.other_card:is_face() then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and context.other_card:is_face() then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
}

local weird_tree={
  name = "weird_tree",
  pos = {x = 6, y = 10},
  config = {extra = {}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'typechangerpoke', vars = {"Grass Type", colours = {G.ARGS.LOC_COLOURS.grass}}}
    end
    return {vars = {}}
  end,
  rarity = 3,
  cost = 6,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  aux_poke = true,
  auto_sticker = true,
  no_collection = true,
  custom_pool_func = true,
  calculate = function(self, card, context)
    return scaling_evo(self, card, context, "j_poke_sudowoodo", 
                      ((not is_type(card, "Grass")) or find_other_poke_or_energy_type(card, "Water", true) > 0) and 1 or 0, 1, localize("poke_transform_success"))
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      apply_type_sticker(card, "Grass")
    end
  end,
  in_pool = function(self)
    return not (next(SMODS.find_card('j_poke_sudowoodo')) or next(SMODS.find_card('j_poke_bonsly')))
  end
}
-- Politoed 186
local politoed={
  name = "politoed", 
  pos = {x = 4, y = 3}, 
  config = {extra = {mult = 7, suits = {"Spades", "Hearts", "Clubs", "Diamonds"}, indice = 1,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, localize(G.GAME.poke_poli_suit or "Spades",'suits_singular'),  
                    colours = {G.C.SUITS[G.GAME.poke_poli_suit or "Spades"]}, localize("Spades", 'suits_plural'), localize("Hearts", 'suits_plural'), 
                    localize("Clubs", 'suits_plural'), localize("Diamonds", 'suits_plural'), #find_pokemon_type("Water")}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if not context.blueprint then
          poke_change_poli_suit()
          G.GAME.poke_poli_suit_change_triggered = true
        end
      end
      if context.after and G.GAME.poke_poli_suit_change_triggered then
        G.GAME.poke_poli_suit_change_triggered = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local scoring_suit = G.GAME.poke_poli_suit or "Spades"
      if context.other_card:is_suit(scoring_suit) then
        return {
          colour = G.C.MULT,
          mult = card.ability.extra.mult,
          card = card
        }
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      local scoring_suit = G.GAME.poke_poli_suit or "Spades"
      if context.other_card:is_suit(scoring_suit) then
        local total = #find_pokemon_type("Water")
        local cards = #context.scoring_hand
        local pos = 0
        local remainder = 0
        local retriggers = 0
        for i=1, #context.scoring_hand do
          if context.scoring_hand[i] == context.other_card then
            pos = i
            break
          end
        end
        retriggers = math.floor(total/cards)
        remainder = total % cards
        if pos <= remainder then retriggers = retriggers + 1 end
        if retriggers > 0 then
          return {
            message = localize('k_again_ex'),
            repetitions = retriggers,
            card = card
          }
        end
      end
    end
  end,
}
-- Hoppip 187
local hoppip={
  name = "hoppip",
  pos = {x = 5, y = 3},
  config = {extra = {h_size = 1, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
    return {vars = {center.ability.extra.h_size, center.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook then
      local target = {context.full_hand[1],context.full_hand[2]}
      poke_convert_cards_to(target, {mod_conv = 'm_wild'})
      G.E_MANAGER:add_event(Event({
        func = function()
          remove(self, card, context, true)
          return true
        end
      }))
      return {
        message = localize("poke_hop_ex"),
      }
    end
    return level_evo(self, card, context, "j_poke_skiploom")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Skiploom 188
local skiploom={
  name = "skiploom",
  pos = {x = 6, y = 3},
  config = {extra = {h_size = 2, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
    return {vars = {center.ability.extra.h_size, center.ability.extra.rounds}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook then
      local target = {context.full_hand[1],context.full_hand[2], context.full_hand[3]}
      poke_convert_cards_to(target, {mod_conv = 'm_wild'})
      G.E_MANAGER:add_event(Event({
        func = function()
          remove(self, card, context, true)
          return true
        end
      }))
      return {
        message = localize("poke_skip_ex"),
      }
    end
    return level_evo(self, card, context, "j_poke_jumpluff")
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Jumpluff 189
local jumpluff={
  name = "jumpluff",
  pos = {x = 7, y = 3},
  config = {extra = {h_size = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
    end
    return {vars = {center.ability.extra.h_size}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.pre_discard and context.full_hand and #context.full_hand > 0 and not context.hook then
      local target = {}
      for k, v in pairs(context.full_hand) do
        if v then table.insert(target, v) end
      end
      poke_convert_cards_to(target, {mod_conv = 'm_wild'})
      G.E_MANAGER:add_event(Event({
        func = function()
          remove(self, card, context, true)
          return true
        end
      }))
      return {
        message = localize("poke_jump_ex"),
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(card.ability.extra.h_size)
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-card.ability.extra.h_size)
  end
}
-- Aipom 190
local aipom={
  name = "aipom",
  pos = {x = 8, y = 3},
  config = {extra = {straights_played = 0, flushes_played = 0, limit = 2}, straight_rqmt = 5, flush_rqmt = 5},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local straights_remaining = math.max(0, self.config.straight_rqmt - center.ability.extra.straights_played)
    local flushes_remaining = math.max(0, self.config.flush_rqmt - center.ability.extra.flushes_played)
    return {vars = {straights_remaining, flushes_remaining, center.ability.extra.limit}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        if next(context.poker_hands['Straight']) then
          card.ability.extra.straights_played = card.ability.extra.straights_played + 1
        end
        if next(context.poker_hands['Flush']) then
          card.ability.extra.flushes_played = card.ability.extra.flushes_played + 1
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_ambipom", math.min(self.config.straight_rqmt, card.ability.extra.straights_played) + 
                       math.min(self.config.straight_rqmt, card.ability.extra.flushes_played), self.config.straight_rqmt + self.config.flush_rqmt)
  end,
  add_to_deck = function(self, card, from_debuff)
		SMODS.change_play_limit(-card.ability.extra.limit)
		SMODS.change_discard_limit(-card.ability.extra.limit)
  end,
  remove_from_deck = function(self, card, from_debuff)
		SMODS.change_play_limit(card.ability.extra.limit)
		SMODS.change_discard_limit(card.ability.extra.limit)
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
  end, 
}
-- Sunkern 191
local sunkern={
  name = "sunkern",
  pos = {x = 9, y = 3},
  config = {extra = {money = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.c_poke_sunstone
    end
    return {vars = {card.ability.extra.money}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  item_req = "sunstone",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind or context.joker_main then
      local earned = ease_poke_dollars(card, "sunkern", card.ability.extra.money, true)
      return {
        dollars = earned,
        card = card
      }
    end
    return item_evo(self, card, context, "j_poke_sunflora")
  end,
}
-- Sunflora 192
local sunflora={
  name = "sunflora",
  pos = {x = 0, y = 4},
  config = {extra = {money = 1}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.money}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind or context.joker_main or context.pre_discard or context.using_consumeable then
      local earned = ease_poke_dollars(card, "sunflora", card.ability.extra.money, true)
      return {
        dollars = earned,
        card = card
      }
    end
  end,
  calc_dollar_bonus = function(self, card)
    return ease_poke_dollars(card, "sunflora", card.ability.extra.money, true)
	end
}
-- Yanma 193
local yanma={
  name = "yanma",
  pos = {x = 1, y = 4},
  config = {extra = {mult = 3,chips = 6, mult2 = 6, chips2 = 12, num = 1, dem = 3, scored = 0}, evo_rqmt = 36},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local num, dem = SMODS.get_probability_vars(center, center.ability.extra.num, center.ability.extra.dem, 'yanma')
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.mult2, center.ability.extra.chips2, 
                    num, dem, math.max(0, self.config.evo_rqmt - center.ability.extra.scored)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      if context.other_card:get_id() == 3 or context.other_card:get_id() == 6 then
        if not context.blueprint then
          card.ability.extra.scored = card.ability.extra.scored + 1
        end
        local Mult = card.ability.extra.mult
        local Chips = card.ability.extra.chips
        if SMODS.pseudorandom_probability(card, 'yanma', card.ability.extra.num, card.ability.extra.dem, 'yanma') then
          Mult = card.ability.extra.mult2
          Chips = card.ability.extra.chips2
        end
        return {
          mult = Mult,
          chips = Chips,
          card = card
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_yanmega", card.ability.extra.scored, self.config.evo_rqmt)
  end,
}
-- Wooper 194
local wooper={
  name = "wooper",
  pos = {x = 2, y = 4},
  config = {extra = {mult = 15,mult_mod = 1, rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local mult_total = center.ability.extra.mult
    if G.deck and G.deck.cards then
      for k, v in pairs(G.deck.cards) do
        if v:is_face() then mult_total = mult_total - center.ability.extra.mult_mod end
      end
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.mult_mod, math.max(0, mult_total)}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Mult = card.ability.extra.mult
        for k, v in pairs(G.deck.cards) do
          if v:is_face() then Mult = Mult - card.ability.extra.mult_mod end
        end
        if Mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
            colour = G.C.MULT,
            mult_mod = Mult
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_quagsire")
  end,
}
-- Quagsire 195
local quagsire={
  name = "quagsire",
  pos = {x = 3, y = 4},
  config = {extra = {mult = 25, mult_mod = 1, rerolls = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local mult_total = center.ability.extra.mult
    if G.deck and G.deck.cards then
      for k, v in pairs(G.deck.cards) do
        if v:is_face() then mult_total = mult_total - center.ability.extra.mult_mod end
      end
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, math.max(0, mult_total), center.ability.extra.rerolls}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Mult = card.ability.extra.mult
        for k, v in pairs(G.deck.cards) do
          if v:is_face() then Mult = Mult - card.ability.extra.mult_mod end
        end
        if Mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {Mult}}, 
            colour = G.C.MULT,
            mult_mod = Mult
          }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_quagsire")
  end,
}
-- Espeon 196
local espeon={
  name = "espeon", 
  pos = {x = 4, y = 4},
  config = {extra = {retriggers = 1, Xmult_multi = 1.2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.retriggers, center.ability.extra.Xmult_multi, localize(G.GAME.current_round.espeon_rank or "Ace", 'ranks'),
                    localize(G.GAME.current_round.espeon_suit or "Spades", 'suits_singular'), colours = {G.C.SUITS[G.GAME.current_round.espeon_suit or "Spades"]}}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.end_of_round and context.other_card:is_suit(G.GAME.current_round.espeon_suit) then
      return {
        x_mult = card.ability.extra.Xmult_multi,
        card = card
      }
    end
    if context.repetition and context.cardarea == G.play and not context.end_of_round and context.other_card:get_id() == G.GAME.current_round.espeon_id then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
}
-- Umbreon 197
local umbreon={
  name = "umbreon", 
  pos = {x = 5, y = 4},
  config = {extra = {hand_played = "High Card"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.hand_played and localize(center.ability.extra.hand_played, 'poker_hands') or localize('poke_none'),}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  calculate = function(self, card, context)
     if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      --cycle hand_name
      local hands = {"High Card", "Pair", "Two Pair", "Three of a Kind", "Straight", "Flush", "Full House", "Four of a Kind", "Straight Flush", "Five of a Kind", "Flush House", "Flush Five"}
      local visible_hands = {}
      for i = 1, #hands do
        if G.GAME.hands[hands[i]].visible then
          table.insert(visible_hands, hands[i])
        end
      end
      
      for j = 1, #visible_hands do
        if visible_hands[j] == card.ability.extra.hand_played then
          if j == #visible_hands then
            card.ability.extra.hand_played = visible_hands[1]
          else
            card.ability.extra.hand_played = visible_hands[j+1]
          end
          break
        end
      end
    end
    if context.pre_discard and not context.blueprint and not context.hook then
      local text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
      local can_level = nil
      if (SMODS.Mods["Talisman"] or {}).can_load then
        can_level = to_big(G.GAME.hands[card.ability.extra.hand_played].level) > to_big(1)
      else
        can_level = G.GAME.hands[card.ability.extra.hand_played].level > 1
      end
      if can_level and G.GAME.hands[card.ability.extra.hand_played] == G.GAME.hands[text] then
        level_up_hand(card, card.ability.extra.hand_played, nil, -1)
        local highest_played = 0
        local highest_hands = {}
        for handname, values in pairs(G.GAME.hands) do
          if SMODS.is_poker_hand_visible(handname) then
            if values.played > highest_played then
              highest_hands = {}
              highest_hands[#highest_hands + 1] = handname
              highest_played = values.played
            elseif values.played == highest_played then
              highest_hands[#highest_hands + 1] = handname
            end
          end
        end
        local text =  pseudorandom_element(highest_hands, pseudoseed('umbreon'))
        return {
          level_up = true,
          level_up_hand = text
        }
      end
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local hands = {"High Card", "Pair", "Two Pair", "Three of a Kind", "Straight", "Flush", "Full House", "Four of a Kind", "Straight Flush", "Five of a Kind", "Flush House", "Flush Five"}
      local visible_hands = {}
      for i = 1, #hands do
        if G.GAME.hands[hands[i]].visible then
          table.insert(visible_hands, hands[i])
        end
      end
      card.ability.extra.hand_played = pseudorandom_element(visible_hands, pseudoseed('umbreon'))
    end
  end
}
-- Murkrow 198
local murkrow={
  name = "murkrow",
  pos = {x = 6, y = 4},
  config = {extra = {Xmult = 0.5,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, math.max(1, 1 + center.ability.extra.Xmult * #find_pokemon_type("Dark"))}}
  end,
  rarity = 2,
  cost = 6,
  item_req = "duskstone",
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local Xmult = math.max(1, 1 + card.ability.extra.Xmult * #find_pokemon_type("Dark"))
        if Xmult > 1 then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {Xmult}}, 
            colour = G.C.XMULT,
            Xmult_mod = Xmult
          }
        end
      end
    end
    return item_evo(self, card, context, "j_poke_honchkrow")
  end
}
-- Slowking 199
local slowking={
  name = "slowking",
  pos = {x = 7, y = 4},
  config = {extra = {Xmult_multi = 1, Xmult_multi2 = 0.2, oXmult = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.Xmult_multi2, }}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn then
      card.ability.extra.oXmult = card.ability.extra.Xmult_multi
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint then
        card.ability.extra.Xmult_multi = card.ability.extra.Xmult_multi + card.ability.extra.Xmult_multi2
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.XMULT
        }
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.other_card:get_id() == 13 then
      return {
          x_mult = card.ability.extra.Xmult_multi,
          colour = G.C.RED,
          card = card
      }
    end
    if not context.repetition and not context.individual and context.end_of_round and not context.blueprint then
      card.ability.extra.Xmult_multi = card.ability.extra.oXmult
      return {
        message = localize('k_reset'),
        colour = G.C.RED
      }
    end
  end
}
-- Misdreavus 200
local misdreavus = {
  name = "misdreavus",
  pos = {x = 8, y = 4},
  config = {extra = {chip_mod = 5, chips = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.chip_mod, card.ability.extra.chips, }}
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  item_req = "duskstone",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and context.other_card then
      if not context.other_card.debuff and context.other_card:is_face() then
        context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain or 0
        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
        local drained_vals = math.min(card.ability.extra.chip_mod, context.other_card.base.nominal - context.other_card.ability.nominal_drain - 1)
        if drained_vals > 0 then
          context.other_card.ability.nominal_drain = context.other_card.ability.nominal_drain + drained_vals
        end
        local drain_bonus = math.min(context.other_card.ability.bonus + context.other_card.ability.perma_bonus, card.ability.extra.chip_mod - drained_vals)
        if drain_bonus > 0 then
          context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus - drain_bonus
          drained_vals = drained_vals + drain_bonus
        end
        if drained_vals > 0 then
          card.ability.extra.chips = card.ability.extra.chips + drained_vals
          return {
            message = localize('k_eroded_ex'),
            colour = G.C.CHIPS,
            card = context.other_card,
            extra = { func = function() card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex')}) end },
          }
        end
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}},
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips,
        }
      end
    end
    return item_evo(self, card, context, "j_poke_mismagius")
  end,
}
-- Unown 201
local unown={
  name = "unown",
  pos = {x = 9, y = 4},
  soul_pos = {x = 0, y = 0},
  config = {extra = {mult = 6, form = "A", targets = {{value = "Ace", id = "14"}}}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'nature', vars = {"rank"}}
    end
    local card_vars = {center.ability.extra.mult}
    add_target_cards_to_vars(card_vars, center.ability.extra.targets)
    return {vars = card_vars}
  end,
  rarity = "poke_safari",
  cost = 5,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  aux_poke = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local score = nil
        for k, v in pairs(context.scoring_hand) do
          if v:get_id() == card.ability.extra.targets[1].id then
            score = true
          end
        end
        if score then
          card.ability.extra.triggered = true
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
      if context.after and card.ability.extra.triggered and next(SMODS.find_card("j_poke_ruins_of_alph")) and not context.blueprint then
        G.E_MANAGER:add_event(Event({
          func = function()
            remove(self, card, context)
            return true
          end
        }))
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      G.E_MANAGER:add_event(Event({
        func = function()
          remove(self, card, context)
          return true
        end
      }))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_flees_ex")})
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      local form = "A"
      local forms = { "A", "B", "C", "D", "E", "F", "G",
                      "H", "I", "J", "K", "L", "M", "N",
                      "O", "P", "Q", "R", "S", "T", "U",
                      "V", "W", "X", "Y", "Z", "ZEx", "ZQu"
                    }
      if G.jokers and G.jokers.cards then
        for k, v in pairs(G.jokers.cards) do
          if v.config.center.name == "unown" then
            for i = 1, #forms do
              if forms[i] == v.ability.extra.form then
                table.remove(forms, i)
                break
              end
            end
          end
          if v.config.center.name == "ruins_of_alph" then
            for i = #forms, 1, -1 do
              for x, y in pairs(v.ability.extra.forms) do
                if forms[i] == y then
                  table.remove(forms, i)
                  break
                end
              end
            end
          end
        end
      end
      if #forms > 0 then
        form = pseudorandom_element(forms, pseudoseed("unown"))
      end
      card.ability.extra.form = form
      self:set_sprites(card)
      
      card.ability.extra.targets = get_poke_target_card_ranks("unown", 1, card.ability.extra.targets)
    end
  end,
  set_sprites = function(self, card, front)
    card.children.center:set_sprite_pos({x = 0, y = 0})
    if card.ability and card.ability.extra and card.ability.extra.form then
      local forms = {A = {x = 1, y = 0}, B = {x = 2, y = 0}, C = {x = 3, y = 0}, D = {x = 4, y = 0}, E = {x = 5, y = 0}, F = {x = 6, y = 0}, G = {x = 7, y = 0},
                     H = {x = 8, y = 0}, I = {x = 9, y = 0}, J = {x = 0, y = 1}, K = {x = 1, y = 1}, L = {x = 2, y = 1}, M = {x = 3, y = 1}, N = {x = 4, y = 1},
                     O = {x = 5, y = 1}, P = {x = 6, y = 1}, Q = {x = 7, y = 1}, R = {x = 8, y = 1}, S = {x = 9, y = 1}, T = {x = 0, y = 2}, U = {x = 1, y = 2},
                     V = {x = 2, y = 2}, W = {x = 3, y = 2}, X = {x = 4, y = 2}, Y = {x = 5, y = 2}, Z = {x = 6, y = 2}, ZEx = {x = 7, y = 2}, ZQu = {x = 8, y = 2}
                    }
      card.children.floating_sprite:set_sprite_pos(forms[card.ability.extra.form])
    end
  end,
}
-- Wobbuffet 202
local wobbuffet={
  name = "wobbuffet",
  pos = {x = 0, y = 5},
  config = {extra = {retriggers = 1, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
      info_queue[#info_queue+1] = {key = 'eternal', set = 'Other'}
    end
    return {vars = {center.ability.extra.retriggers, }}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint and volatile_active(self, card, card.ability.extra.volatile) then
      local target = G.jokers.cards[#G.jokers.cards]
      if target ~= card and not (target.ability.eternal or target.ability.perishable) and target.config.center.eternal_compat then
        target:set_eternal(true)
        card:juice_up()
        card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('poke_shadow_tag_ex'), COLOUR = G.C.DARK_EDITION})
      end
    end
    if context.repetition and not context.end_of_round and context.cardarea == G.play then
      if context.other_card:get_id() == 6 or 
         context.other_card:get_id() == 7 or 
         context.other_card:get_id() == 8 or 
         context.other_card:get_id() == 9 or 
         context.other_card:get_id() == 10 then
        return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
        }
      end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers then
      local right_joker = G.jokers.cards[#G.jokers.cards]
      card.ability.blueprint_compat = ( right_joker and right_joker ~= card and not right_joker.debuff and right_joker.config.center.eternal_compat and 'compatible') or 'incompatible'
    end
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..card.ability.extra.volatile}
      info_queue[#info_queue+1] = {key = 'eternal', set = 'Other'}
      type_tooltip(self, info_queue, card)
    local _c = card and card.config.center or card
    if not full_UI_table.name then
      full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
    end
    card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ''
    card.ability.blueprint_compat_check = nil
    local main_end = (card.area and card.area == G.jokers) and {
      {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
        {n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
          {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
        }}
      }}
    } or nil
    localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {card.ability.extra.retriggers}}
    desc_nodes[#desc_nodes+1] = main_end
  end,
}
-- Girafarig 203
local girafarig={
  name = "girafarig",
  pos = {x = 1, y = 5},
  config = {extra = {Xmult_multi = 2, score = false, death_used = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and next(context.poker_hands['Two Pair']) and not context.blueprint then
        card.ability.extra.score = true
      end
      if context.after then
        card.ability.extra.score = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and card.ability.extra.score then
      local first_face = nil
      local last_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          first_face = context.scoring_hand[i];
          break
        end
      end
      for i = #context.scoring_hand, 1, -1 do
        if context.scoring_hand[i]:is_face() and context.scoring_hand[i] ~= first_face then
          last_face = context.scoring_hand[i];
          break
        end
      end
      if context.other_card == first_face or context.other_card == last_face then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      end
    end
    if context.using_consumeable and context.consumeable.label == "Death" then
      if G.hand and G.hand.highlighted and #G.hand.highlighted > 1 then
        if G.hand.highlighted[1]:is_face() and G.hand.highlighted[2]:is_face() then
          card.ability.extra.death_used = card.ability.extra.death_used + 1
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_farigiraf", card.ability.extra.death_used, 1)
  end,
}
-- Pineco 204
local pineco={
  name = "pineco",
  pos = {x = 2, y = 5},
  config = {extra = {chips = 120,rounds = 3, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 3,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  volatile = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
        G.E_MANAGER:add_event(Event({
          func = function()
              card.ability.fainted = G.GAME.round
              card:set_debuff()
              return true
          end
        })) 
        return {
          message = localize("poke_explosion_ex"),
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_forretress")
  end,
}
-- Forretress 205
local forretress={
  name = "forretress",
  pos = {x = 3, y = 5},
  config = {extra = {chips = 150, chip_mod = 5, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, }}
  end,
  rarity = 3,
  cost = 6,
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  volatile = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
        local multiplier = 1
        for k, v in pairs(G.hand.cards) do
          if SMODS.has_enhancement(v, 'm_steel') then
            multiplier = 2
            break
          end
        end
        G.E_MANAGER:add_event(Event({
          func = function()
              card.ability.fainted = G.GAME.round
              card:set_debuff()
              return true
          end
        })) 
        return {
          message = localize("poke_explosion_ex"),
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips * multiplier
        }
      end
    end
  end,
}
-- Dunsparce 206
local dunsparce={
  name = "dunsparce",
  pos = {x = 4, y = 5},
  config = {extra = {rounds = 5, rerolled = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.rounds, }}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex2",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      card.ability.extra.rerolled = true
      local eval = function(card) return not card.REMOVED end
      juice_card_until(card, eval, true)
    end
    if context.ending_shop and not context.blueprint and card.ability.extra.rerolled then
      G.E_MANAGER:add_event(Event({
        func = function()
          remove(self, card, context, true)
          return true
        end
      }))
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("poke_screech_ex")})
    end
    return level_evo(self, card, context, "j_poke_dudunsparce")
  end
}
-- Gligar 207
local gligar = {
  name = "gligar",
  pos = {x = 5, y = 5},
  config = {extra = {Xmult_multi = 0.15}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local played_Xmult = 1
    if G.hand then
        local suit_count = 0
        for i=1, #G.hand.cards do
        if G.hand.cards[i]:is_suit(G.GAME.current_round.gligar_suit) and not G.hand.cards[i].highlighted then
          suit_count = suit_count + 1
        end
      end
      played_Xmult = 1 + (card.ability.extra.Xmult_multi * suit_count)
    end
    return {vars = {card.ability.extra.Xmult_multi, localize(G.GAME.current_round.gligar_suit or "Clubs", 'suits_singular'), played_Xmult,
                    colours = {G.C.SUITS[G.GAME.current_round.gligar_suit or "Clubs"]}}}
  end,
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex2",
  gen = 2,
  item_req = "duskstone",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      local suit_count = 0
      for i=1, #G.hand.cards do
        if G.hand.cards[i]:is_suit(G.GAME.current_round.gligar_suit) then
          suit_count = suit_count + 1
        end
      end
      if suit_count > 0 then
        local Xmult = 1 + (card.ability.extra.Xmult_multi * suit_count)
        return {
          x_mult = Xmult,
          card = card
        }
      end
    end
    return item_evo(self, card, context, "j_poke_gliscor")
  end
}
-- Steelix 208
local steelix={
  name = "steelix", 
  pos = {x = 6, y = 5},  
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_stone
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue + 1] = {set = 'Other', key = 'mega_poke'}
    end
  end,
  rarity = "poke_safari", 
  cost = 8, 
  stage = "One",
  ptype = "Metal",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[1]
        card:set_ability(G.P_CENTERS.m_steel, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    if context.individual and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, "m_stone") and not context.blueprint then
      context.other_card:set_ability(G.P_CENTERS.m_steel, nil, true)
      return
      {
        message = localize('poke_iron_tail_ex'),
        colour = G.ARGS.LOC_COLOURS.metal,
        card = card
      }
    end
  end,
  megas = { "mega_steelix" },
}
local mega_steelix={
  name = "mega_steelix",
  pos = {x = 2, y = 2},
  soul_pos = {x = 3, y = 2},
  config = {extra = {money = 1, suit = "Diamonds"}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.money, localize(center.ability.extra.suit, 'suits_singular'), localize(center.ability.extra.suit, 'suits_plural')}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Metal",
  atlas = "Megas",
  gen = 2,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, "m_steel") 
       and not context.other_card:is_suit(card.ability.extra.suit) and not context.blueprint then
      context.other_card:change_suit(card.ability.extra.suit)
      context.other_card:set_ability(G.P_CENTERS.c_base, nil, true)
      return
        {
          message = localize('poke_autotomize_ex'),
          colour = G.ARGS.LOC_COLOURS.metal,
          card = card
        }
    end
  end,
  calc_dollar_bonus = function(self, card)
      local diamond_tally = 0
      for _, playing_card in ipairs(G.playing_cards) do
          if playing_card:is_suit(card.ability.extra.suit) then diamond_tally = diamond_tally + 1 end
      end
      return diamond_tally > 0 and card.ability.extra.money * diamond_tally or nil
  end
}
-- Snubbull 209
local snubbull = {
  name = "snubbull",
  pos = {x = 7, y = 5},
  config = {extra = {Xmult_multi = 1.75, rounds = 4,}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_multi, card.ability.extra.rounds}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      local first_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          first_face = context.scoring_hand[i]
          break
        end
      end
      if context.other_card == first_face then
        local Xmult = card.ability.extra.Xmult_multi
        return {
            x_mult = Xmult,
            colour = G.C.RED,
        }
      end
    end
    return level_evo(self, card, context, "j_poke_granbull")
  end
}
-- Granbull 210
local granbull = {
  name = "granbull",
  pos = {x = 8, y = 5},
  config = {extra = {Xmult_multi = 2.25, Xmult_multi2 = 2.5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_multi, card.ability.extra.Xmult_multi2}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex2",
  gen = 2,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play then
      local first_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          first_face = context.scoring_hand[i]
          break
        end
      end
      if context.other_card == first_face then
        local Xmult = nil
        if context.other_card:get_id() == 12 then
          Xmult = card.ability.extra.Xmult_multi2
        else
          Xmult = card.ability.extra.Xmult_multi
        end
        return {
            x_mult = Xmult,
            colour = G.C.RED,
        }
      end
    end
  end

}

return {name = "Pokemon Jokers 181-210",
        list = {ampharos, mega_ampharos, bellossom, marill, azumarill, sudowoodo, weird_tree, politoed, hoppip, skiploom, jumpluff, aipom, sunkern, sunflora, yanma, wooper, quagsire, espeon, umbreon, murkrow, slowking, misdreavus, unown, wobbuffet, girafarig, pineco, forretress, dunsparce, gligar, steelix, mega_steelix, snubbull, granbull},
}
