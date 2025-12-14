determine_type = function()
local ptype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
pseudoshuffle(ptype_list, pseudoseed('chart'))
local count = 1

local increase = pseudorandom('increasetypes')

if increase > .66 then
  count = count + 2
elseif increase > .33 then
  count = count + 1
end

local ptypes = {}
for i = 1, count do
  ptypes[#ptypes+1] = ptype_list[i]
end

return ptypes
end

goose_disable = function(disabled, card, btypes)
  if disabled then return false end
  if (card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype) then
    local match = false
    for k, v in pairs(btypes) do
      if v == card.ability.extra.ptype then
        match = true
        break
      end
    end
    return match
  elseif btypes then
    local match = false
    for k, v in pairs(btypes) do
      if card.ability[string.lower(v).."_sticker"] then
        match = true
        break
      end
    end
    return match
  end
  return false
end

local cgoose={
  key = "cgoose",
  dollars = 8,
  mult = 2,
  boss = { showdown = true, min = 8, max = 80 },
  boss_colour = HEX("7A9616"),
  pos = { x = 0, y = 0 },
  atlas = "AtlasBossblinds",
  discovered = true,
  debuff = {},
  config = {disabled = false},
  set_blind = function(self)
    self.config.ptypes = determine_type()
  end,
  recalc_debuff = function(self, card, from_blind)
    --return goose_disable(self.config.disabled, card, self.config.ptypes)
  end,
  press_play = function(self)
    G.GAME.blind.triggered = true
    G.GAME.blind.prepped = true
    self.config.ptypes = determine_type()
  end,
  drawn_to_hand = function(self)
    if G.GAME.blind.prepped then
      for x,y in pairs(G.jokers.cards) do
        y:set_debuff(false)
      end
      for l,v in pairs(G.jokers.cards) do
        if goose_disable(self.config.disabled, v, self.config.ptypes) then
          v:set_debuff(true)
					v:juice_up()
					G.GAME.blind:wiggle()
        end
      end
    end
  end,
  disable = function(self)
    self.config.disabled = true
  end
}

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
          self.config.reset_eternal = true
          target:set_eternal(false)
        end
        self.config.trans_key = target.config.center_key
        poke_evolve(target, 'j_poke_ditto', nil, localize("poke_transform_success"), true)
      end
    end
    end
  end,
  disable = function(self)
    local target = G.jokers.cards[#G.jokers.cards]
    if not target.getting_sliced then
      poke_evolve(target, self.config.trans_key, nil, localize("poke_transform_success"), true)
      if self.config.reset_eternal then
        target.ability.eternal = true
      end
    end
  end
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
  artist = "Catzzadilla",
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
  artist = "Catzzadilla",
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

return {name = "Blinds",
        list = {mirror, rocket, cgoose, gray_godfather, white_executive}
}