-- Mesprit 481
-- Azelf 482
-- Dialga 483
-- Palkia 484
-- Heatran 485
-- Regigigas 486
-- Giratina 487
-- Cresselia 488
-- Phione 489
-- Manaphy 490
-- Darkrai 491
local darkrai = {
  name = "darkrai",
  config = {extra = {}},
  loc_vars = function(self, info_queue, card)
      type_tooltip(self, info_queue, card)
      info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_poke_nightmare'}

  end,
  designer = "Sonfive",
  rarity = 4,
  cost = 20,
  stage = "Legendary",
  ptype = "Dark",
  gen = 4,
  blueprint_compat = false,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_poke_nightmare')
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
    end
  end,
  calculate = function(self, card, context)
      if not context.blueprint then
          local darkrai_count = #SMODS.find_card("j_sonfive_darkrai")

          -- Initialize Darkrai's snapshot
          if not card.ability.extra.darkrai_applied_energy then
              card.ability.extra.darkrai_applied_energy = {}
          end

          -- Step 1: Calculate desired energy per type
          for _, ptype in pairs(POKE_TYPES) do
              local energy_key = 'c_poke_'..string.lower(ptype)..(ptype == 'Dark' and 'ness' or '')..'_energy'
              local energy_type_count = #SMODS.find_card(energy_key) * darkrai_count
              card.ability.extra.darkrai_applied_energy[ptype] = energy_type_count

              -- Step 2: Apply to jokers
              for _, joker in ipairs(G.jokers.cards) do
                local extra = joker.ability and joker.ability.extra
                if type(extra) == "table" then
                    joker.ability.extra = joker.ability.extra or {}
                    if not joker.ability.extra.darkrai_applied then
                        joker.ability.extra.darkrai_applied = {}
                    end
                    local to_apply = card.ability.extra.darkrai_applied_energy[ptype]
                    local last_applied = joker.ability.extra.darkrai_applied[ptype] or 0

                    if is_type(joker, ptype) then
                        -- Joker matches this type → sync energies
                        if to_apply ~= last_applied then
                            local diff = to_apply - last_applied
                            energize(joker, ptype, nil, true, diff)
                            joker.ability.extra.darkrai_applied[ptype] = to_apply
                        end
                    else
                        -- Joker no longer this type → remove old Darkrai-applied energy
                        if last_applied > 0 then
                            energize(joker, ptype, false, true, -last_applied)
                            joker.ability.extra.darkrai_applied[ptype] = 0
                        end
                    end
                end
            end
          end
      end
  end,

  remove_from_deck = function(self, card, from_debuff)
    for _, card in ipairs(G.jokers.cards) do
        local extra = card.ability and card.ability.extra
        if type(extra) == "table" then
            card.ability.extra = card.ability.extra or {}
            local applied = card.ability.extra.darkrai_applied or {}

            for _, ptype in pairs(POKE_TYPES) do
                local last_applied = applied[ptype] or 0
                if last_applied > 0 then
                    energize(card, ptype, false, true, -last_applied)
                    applied[ptype] = 0
                end
            end
        end
        -- Clear Darkrai's own stored snapshot
        card.ability.extra.darkrai_applied_energy = {}
    end
  end,
}
-- Shaymin 492
local shaymin={
  name = "shaymin",
  pos = {x = 0, y = 0},
  config = {extra = {flowers_scored = 0}, evo_rqmt = 10},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_flower
    end
    return {vars = {math.max(0, self.config.evo_rqmt - center.ability.extra.flowers_scored)}}
  end,
  rarity = 4,
  cost = 10,
  gen = 4,
  stage = "Legendary",
  ptype = "Grass",
  atlas = "Pokedex4",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.first_hand_drawn and not context.blueprint then
      local eval = function() return G.GAME.current_round.hands_played == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      if G.GAME.current_round.hands_played == 0 then
        local card = context.scoring_hand[#context.scoring_hand]
        card:set_ability(G.P_CENTERS.m_poke_flower, nil, true)
        G.E_MANAGER:add_event(Event({
            func = function()
                card:juice_up()
                return true
            end
        })) 
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff and not context.end_of_round 
       and SMODS.has_enhancement(context.other_card, 'm_poke_flower') and not context.blueprint then
      card.ability.extra.flowers_scored = card.ability.extra.flowers_scored + 1
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_shaymin_sky", card.ability.extra.flowers_scored, self.config.evo_rqmt, localize("poke_transform_success"))
  end,
  attributes = {"hands", "modify_card", "enhancements"},
}

local shaymin_sky={
  name = "shaymin_sky",
  pos = {x = 0, y = 0},
  config = {extra = {death_used = 0}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_flower
    end
    return {vars = {}}
  end,
  rarity = 4,
  cost = 10,
  gen = 4,
  stage = "Legendary",
  ptype = "Grass",
  atlas = "Pokedex4",
  custom_pool_func = true,
  aux_poke = true,
  no_collection = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_poke_flower') then
          return {m_wild = true}
      end
    end
    if context.using_consumeable and context.consumeable.label == "Death" then
      card.ability.extra.death_used = card.ability.extra.death_used + 1
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_shaymin", card.ability.extra.death_used, 1, localize("poke_transform_success"))
  end,
  in_pool = function(self)
    return false
  end,
  attributes = {"modify_card", "enhancements", "passive"},
}
-- Arceus 493
-- Victini 494
-- Snivy 495
-- Servine 496
-- Serperior 497
-- Tepig 498
-- Pignite 499
-- Emboar 500
-- Oshawott 501
-- Dewott 502
-- Samurott 503
-- Patrat 504
-- Watchog 505
-- Lillipup 506
-- Herdier 507
-- Stoutland 508
-- Purrloin 509
-- Liepard 510
return {name = "Pokemon Jokers 481-510", 
        list = {shaymin, shaymin_sky},
}
