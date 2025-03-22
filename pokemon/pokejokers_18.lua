-- Pansage 511
-- Simisage 512
-- Pansear 513
-- Simisear 514
-- Panpour 515
-- Simipour 516
-- Munna 517
-- Musharna 518
-- Pidove 519
-- Tranquill 520
-- Unfezant 521
-- Blitzle 522
-- Zebstrika 523
-- Roggenrola 524
local roggenrola = {
  name = "roggenrola", 
  pos = {x = 2, y = 2},
  config = {extra = {hazard_ratio = 25, chip_mod = 5, hazards_drawn = 0}, evo_rqmt = 3},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazard_ratio}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard

    local to_add = math.floor(52 / abbr.hazard_ratio)
    if G.playing_cards then
      local count = #G.playing_cards
      for _, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count - 1
        end
      end
      to_add = math.floor(count / abbr.hazard_ratio)
    end
    return {vars = {to_add, abbr.chip_mod, math.max(0, self.config.evo_rqmt - abbr.hazards_drawn)}}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Earth",
  atlas = "Pokedex5",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(G.hand.cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        for k, v in pairs(G.hand.cards) do
          if not SMODS.has_enhancement(v, "m_poke_hazard") then
            card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
            v.ability.perma_bonus = v.ability.perma_bonus + count * card.ability.extra.chip_mod
          end
        end
        card.ability.extra.hazards_drawn = card.ability.extra.hazards_drawn + count
      end
    end
    return scaling_evo(self, card, context, "j_poke_boldore", card.ability.extra.hazards_drawn, self.config.evo_rqmt)
  end,
}
-- Boldore 525
local boldore = {
  name = "boldore", 
  pos = {x = 3, y = 2},
  config = {extra = {hazard_ratio = 15, chip_mod = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazard_ratio}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
    info_queue[#info_queue+1] = G.P_CENTERS.c_poke_linkcable

    local to_add = math.floor(52 / abbr.hazard_ratio)
    if G.playing_cards then
      local count = #G.playing_cards
      for _, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count - 1
        end
      end
      to_add = math.floor(count / abbr.hazard_ratio)
    end
    return {vars = {to_add, abbr.chip_mod}}
  end,
  rarity = 2,
  cost = 6,
  stage = "One",
  ptype = "Earth",
  atlas = "Pokedex5",
  item_req = "linkcable",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(G.hand.cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        for k, v in pairs(G.hand.cards) do
          if not SMODS.has_enhancement(v, "m_poke_hazard") then
            card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
            v.ability.perma_bonus = v.ability.perma_bonus + count * card.ability.extra.chip_mod
          end
        end
      end
    end
    return item_evo(self, card, context, "j_poke_gigalith")
  end,
}
-- Gigalith 526
local gigalith = {
  name = "gigalith", 
  pos = {x = 4, y = 2},
  config = {extra = {hazard_ratio = 10, chip_mod = 5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    -- just to shorten function
    local abbr = card.ability.extra
    info_queue[#info_queue+1] = {set = 'Other', key = 'poke_hazards', vars = {abbr.hazard_ratio}}
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard

    local to_add = math.floor(52 / abbr.hazard_ratio)
    if G.playing_cards then
      local count = #G.playing_cards
      for _, v in pairs(G.playing_cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count - 1
        end
      end
      to_add = math.floor(count / abbr.hazard_ratio)
    end
    return {vars = {to_add, abbr.chip_mod}}
  end,
  rarity = 'poke_safari',
  cost = 10,
  stage = "Two",
  ptype = "Earth",
  atlas = "Pokedex5",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      poke_add_hazards(card.ability.extra.hazard_ratio)
    end
    if context.hand_drawn then
      local count = 0
      for k, v in pairs(G.hand.cards) do
        if SMODS.has_enhancement(v, "m_poke_hazard") then
          count = count + 1
        end
      end
      if count > 0 then
        for k, v in pairs(G.hand.cards) do
          if not SMODS.has_enhancement(v, "m_poke_hazard") then
            card_eval_status_text(v, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
            v.ability.perma_bonus = v.ability.perma_bonus + count * card.ability.extra.chip_mod
          end
        end
      end
    end
  end,
}
-- Woobat 527
-- Swoobat 528
-- Drilbur 529
-- Excadrill 530
-- Audino 531
-- Timburr 532
-- Gurdurr 533
-- Conkeldurr 534
-- Tympole 535
-- Palpitoad 536
-- Seismitoad 537
-- Throh 538
-- Sawk 539
-- Sewaddle 540
return {name = "Pokemon Jokers 511-540", 
        list = {roggenrola, boldore, gigalith},
}