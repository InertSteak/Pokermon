local mirror = {
  key = "mirror",
  dollars = 5,
  mult = 2,
  boss = { min = 3, max = 80 },
  pos = { x = 0, y = 1 },
  atlas = "AtlasBossblinds",
  artist = "InertSteak",
  boss_colour = HEX("C57BE6"),
  debuff = {},
  config = {trans_key = "j_joker", reset_eternal = false},
  discovered = true,
  calculate = function(self, blind, context)
    if context.setting_blind and not blind.disabled then
      if #G.jokers.cards > 0 then
        local target = G.jokers.cards[#G.jokers.cards]
        if not target.getting_sliced then
          if target.ability.eternal then
            blind.effect.reset_eternal = true
            target:set_eternal(false)
          end
          target.ability.from_mirror = true
          blind.effect.trans_key = target.config.center_key
          poke_evolve(target, 'j_poke_ditto', nil, localize("poke_transform_success"), true)
        end
      end
    end
    if context.blind_disabled then
      local target = nil
      for i = 1, #G.jokers.cards do
        if G.jokers.cards[i].ability.from_mirror then
          target = G.jokers.cards[i]
        end
      end
      if target then
        poke_evolve(target, blind.effect.trans_key, nil, localize("poke_transform_success"), true)
        if blind.effect.reset_eternal then
          target.ability.eternal = true
        end
      end
    end
    if context.end_of_round and not context.repetition and not context.individual then
      for i = 1, #G.jokers.cards do
        G.jokers.cards[i].ability.from_mirror = nil
      end
    end
  end,
}

local rocket = {
  key = "rocket",
  dollars = 5,
  mult = 2,
  boss = { min = 2, max = 80 },
  pos = { x = 0, y = 2 },
  atlas = "AtlasBossblinds",
  artist = "Catzzadilla",
  boss_colour = HEX("C90000"),
  debuff = {},
  config = {},
  discovered = true,
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.stay_flipped and context.to_area == G.hand then
        local dollars = G.GAME.dollars
        if (SMODS.Mods["Talisman"] or {}).can_load then
          dollars = to_number(dollars)
        end
        if dollars >= 25 then
          return {
            stay_flipped = true
          }
        end
      end
    end
  end,
}

local magma = {
  key = "magma",
  dollars = 5,
  mult = 2,
  boss = { min = 2, max = 80 },
  pos = { x = 0, y = 5 },
  atlas = "AtlasBossblinds",
  artist = "Catzzadilla",
  boss_colour = HEX("EB2D31"),
  debuff = {},
  config = {},
  discovered = true,
  calculate = function(self, blind, context)
    if not blind.disabled then
        if context.modify_hand then
          blind.triggered = true
          hand_chips = mod_chips(math.max(math.floor(hand_chips * 0.25 + 0.75), 0))
          update_hand_text({ sound = 'chips2', modded = true }, { chips = hand_chips, mult = mult })
        end
    end
  end
}

local aqua = {
  key = "aqua",
  dollars = 5,
  mult = 2,
  boss = { min = 2, max = 80 },
  pos = { x = 0, y = 7 },
  atlas = "AtlasBossblinds",
  artist = "Catzzadilla",
  boss_colour = HEX("38B8F8"),
  debuff = {},
  config = {},
  discovered = true,
  calculate = function(self, blind, context)
    if not blind.disabled then
        if context.modify_hand then
          blind.triggered = true
          mult = mod_mult(math.max(math.floor(mult * 0.25 + 0.75), 1))
          update_hand_text({ sound = 'chips2', modded = true }, { chips = hand_chips, mult = mult })
        end
    end
  end
}

local pick_random_types = function(amount)
  local ptype_list = copy_table(POKE_TYPES)
  pseudoshuffle(ptype_list, 'chart')

  local ptypes = {}
  for i = 1, amount do
    ptypes[#ptypes+1] = ptype_list[i]
  end
  return ptypes
end

local star={
  key = "star",
  dollars = 5,
  mult = 2,
  boss = { showdown = false, min = 3, max = 80 },
  boss_colour = HEX("D9B673"),
  pos = { x = 0, y = 24 },
  atlas = "AtlasBossblinds",
  artist = "Catzzadilla",
  discovered = true,
  config = {ptype = nil},
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.debuff_card and context.debuff_card.area == G.jokers
          and blind.effect.ptype and is_type(context.debuff_card, blind.effect.ptype) then
        return {
          debuff = true
        }
      end
      if context.press_play or context.setting_blind then
        blind.effect.ptype = pick_random_types(1)[1]
        blind.triggered = true
        blind.prepped = true
      end
      if context.drawing_cards and blind.prepped then
        for _, v in ipairs(G.jokers.cards) do
          if v.debuff then
            SMODS.recalc_debuff(v)
          elseif blind.effect.ptype and is_type(v, blind.effect.ptype) then
            SMODS.recalc_debuff(v)
            v:juice_up()
          end
        end
        blind:wiggle()
      end
    end
    if context.drawing_cards then
      blind.prepped = nil
    end
  end,
}

gray_godfather_remove = function(difference)
    local in_debt = nil
    local dollars = nil
    local buffer = nil
    if (SMODS.Mods["Talisman"] or {}).can_load then
      dollars = to_number(G.GAME.dollars or 0)
      buffer = to_number(G.GAME.dollar_buffer or 0)
    else
      dollars = (G.GAME.dollars or 0)
      buffer = (G.GAME.dollar_buffer or 0)
    end
    in_debt = dollars + buffer - difference < 0
    if in_debt then
      local destructable_jokers = {}
      for i = 1, #G.jokers.cards do
        if not SMODS.is_eternal(G.jokers.cards[i]) and not G.jokers.cards[i].getting_sliced then
          destructable_jokers[#destructable_jokers + 1] = G.jokers.cards[i]
        end
      end
      local joker_to_destroy = pseudorandom_element(destructable_jokers, 'gray_godfather')

      if joker_to_destroy then
        joker_to_destroy.getting_sliced = true
        G.E_MANAGER:add_event(Event({
          func = function()
            joker_to_destroy:start_dissolve({ G.C.RED }, nil, 1.6)
            return true
          end
        }))
      end
    end
end

local gray_godfather = {
  key = "gray_godfather",
  dollars = 8,
  mult = 2,
  boss = { showdown = true, min = 8, max = 80 },
  pos = { x = 0, y = 3 },
  atlas = "AtlasBossblinds",
  boss_colour = HEX("B3B3B3"),
  debuff = {},
  config = {dollars = 5},
  discovered = true,
  loc_vars = function(self)
    return {vars = {self.config.dollars}}
  end,
  collection_loc_vars = function(self)
    return {vars = {self.config.dollars}}
  end,
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.before then
        ease_dollars(-self.config.dollars)
        gray_godfather_remove(self.config.dollars)
      end
      if context.pre_discard then
        ease_dollars(-self.config.dollars)
        gray_godfather_remove(self.config.dollars)
      end
    end
  end,
}

white_executive_total = function()
  local total = 0
  for _, area in ipairs({ G.jokers, G.consumeables }) do
    for _, other_card in ipairs(area.cards) do
      total = total + other_card.sell_cost
    end
  end
  total = math.floor(total)
  return total
end

local white_executive = {
  key = "white_executive",
  dollars = 8,
  mult = 2,
  boss = { showdown = true, min = 8, max = 80 },
  pos = { x = 0, y = 4 },
  atlas = "AtlasBossblinds",
  boss_colour = HEX("E8E8F8"),
  debuff = {},
  config = {},
  discovered = true,
  loc_vars = function(self)
    return {vars = {white_executive_total()}}
  end,
  collection_loc_vars = function(self)
    return {vars = {white_executive_total()}}
  end,
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.setting_blind then
        local modify = function(v) SMODS.debuff_card(v, true, 'white_executive'); end
        local args = {array = G.playing_cards, amt = white_executive_total(), seed = 'whiteexec', mod_func = modify}
        pseudorandom_multi(args)
      end
      if context.end_of_round and not context.individual and not context.repetition then
        for k, v in pairs(G.playing_cards) do
          SMODS.debuff_card(v,false, 'white_executive')
        end
      end
    end
  end,
  disable = function(self)
    for k, v in pairs(G.playing_cards) do
      SMODS.debuff_card(v,false,'white_executive')
    end
  end
}

local ptype_matches = function(card, types)
  for _, v in ipairs(types) do
    if is_type(card, v) then return true end
  end
  return false
end

local iridescent_hacker={
  key = "iridescent_hacker",
  dollars = 8,
  mult = 2,
  boss = { showdown = true, min = 8, max = 80 },
  boss_colour = HEX("505860"),
  pos = { x = 0, y = 25 },
  atlas = "AtlasBossblinds",
  artist = "Catzzadilla",
  discovered = true,
  debuff = {},
  config = {ptypes = {}},
  calculate = function(self, blind, context)
    if not blind.disabled then
      if context.debuff_card and context.debuff_card.area == G.jokers
          and ptype_matches(context.debuff_card, blind.effect.ptypes) then
        return {
          debuff = true
        }
      end
      if context.press_play or context.setting_blind then
        local type_count = 1
        local chance_to_increase = pseudorandom('increasetypes')

        if chance_to_increase > .66 then type_count = type_count + 1 end
        if chance_to_increase > .33 then type_count = type_count + 1 end

        blind.effect.ptypes = pick_random_types(type_count)
        blind.triggered = true
        blind.prepped = true
      end
      if context.drawing_cards and blind.prepped then
        for _, v in ipairs(G.jokers.cards) do
          if v.debuff then
            SMODS.recalc_debuff(v)
          elseif ptype_matches(v, blind.effect.ptypes) then
            SMODS.recalc_debuff(v)
            v:juice_up()
          end
        end
        blind:wiggle()
      end
    end
    if context.drawing_cards then
      blind.prepped = nil
    end
  end,
}

return {name = "Blinds",
        list = {mirror, rocket, star, gray_godfather, white_executive, iridescent_hacker}
}