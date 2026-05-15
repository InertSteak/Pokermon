-- Fletchling 661
-- Fletchinder 662
-- Talonflame 663
-- Scatterbug 664
-- Spewpa 665
-- Vivillon 666
-- Litleo 667
local litleo={
  name = "litleo",
  pos = {x = 3, y = 1},
  config = {extra = {chips = 70,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex6",
  gen = 6,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_pyroar")
  end,
  attributes = {"chips", "hand_type", "round_evo"},
}
-- Pyroar 668
local pyroar={
  name = "pyroar",
  pos = {x = 4, y = 1},
  config = {extra = {chips = 90}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex6",
  gen = 6,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        local kingqueens = 0
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 13 or context.scoring_hand[i]:get_id() == 12 then kingqueens = kingqueens + 1 end
          end
        end
        if kingqueens > 0 then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            extra = {focus = card, message = localize('poke_plus_energy'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Energy'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
            chip_mod = card.ability.extra.chips
          }
        else
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips
          }
        end
      end
    end
  end,
  attributes = {"chips", "hand_type", "round_evo", "energy", "generation", "rank", "king", "queen"},
}
-- Flabébé 669
-- Floette 670
-- Florges 671
-- Skiddo 672
-- Gogoat 673
-- Pancham 674
-- Pangoro 675
-- Furfrou 676
-- Espurr 677
-- Meowstic 678
-- Honedge 679
-- Doublade 680
-- Aegislash 681
-- Spritzee 682
-- Aromatisse 683
-- Swirlix 684
-- Slurpuff 685
-- Inkay 686
local inkay={
  name = "inkay",
  gen = 6,
  pos = {x = 20, y = 45},
  config = {extra = {mult = 8, num = 1, dem = 2, flipped_triggered = 0}, evo_rqmt = 20},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local abbr = card.ability.extra
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'inkay')
    return {vars = {num, dem, abbr.mult, math.max(0, self.config.evo_rqmt - abbr.flipped_triggered)}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Dark",
  atlas = "AtlasJokersBasicNatdex",
  blueprint_compat = true,
  calculate = function(self, card, context)

    -- 1 in 2 is flipped
    if context.stay_flipped and context.to_area == G.hand and SMODS.pseudorandom_probability(card, 'inkay', card.ability.extra.num, card.ability.extra.dem, 'inkay') then
      return {
          stay_flipped = true
      }
    end

    -- flag all face down cards
    if G.hand then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i].poke_flipped = true
        end
      end
    end

    -- give mult per scored face down card
    if context.individual and context.cardarea == G.play and context.other_card.poke_flipped then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        if not context.blueprint then
          G.E_MANAGER:add_event(Event({
            func = function() 
              card.ability.extra.flipped_triggered = card.ability.extra.flipped_triggered + 1
          return true end }))
        end
        return {
          mult = card.ability.extra.mult ,
          card = card
        }
      end
    end

    -- remove flag and flip back cards
    if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i]:flip()
        end
      end
      for _, v in pairs(G.playing_cards) do
        if v.poke_flipped then
          v.poke_flipped = nil
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_malamar", card.ability.extra.flipped_triggered, self.config.evo_rqmt)
  end,
  remove_from_deck = function(self, card, from_debuff)
    if #SMODS.find_card("j_poke_inkay") + #SMODS.find_card("j_poke_malamar") == 0 then
      if G.hand and G.hand.cards then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i]:flip()
        end
      end
      end
      for _, v in pairs(G.playing_cards) do
        if v.poke_flipped then
          v.poke_flipped = nil
        end
      end
    end
  end,
}

-- Credits to emmadenslemma for the idea and the code
SMODS.DrawStep({
  key = 'inkay_rotate',
  order = -1001,
  layers = { shadow = true, both = true },
  func = function(self)
    if not G.SETTINGS.paused and self.config.center.key == 'j_poke_inkay' then
      -- Handle reloading Inkay
      if self.flipped_registered == nil then self.flipped_registered = self.ability.extra.flipped_triggered end
      -- Only rotate once when the card jiggles
      -- -- Known issue: this also rotates once if you mouse over it while it's scoring
      -- -- this should be done in Inkay's scoring code instead of here
      if self.juice and not self.flip_juice_spent then
        self.flipped_registered = math.min(self.flipped_registered + 1, self.ability.extra.flipped_triggered)
        self.flip_juice_spent = true
      end
      if not self.juice and self.flip_juice_spent then
        self.flip_juice_spent = false
      end
      -- Actual rotation part
      local add_rot_amt = math.pi * math.min(self.flipped_registered / self.config.center.config.evo_rqmt, 1)
      self.VT.r = self.VT.r + add_rot_amt
      for _, v in pairs(self.children) do
        v.VT.r = self.VT.r
      end
    end
  end
})

-- Malamar 687
local malamar={
  name = "malamar",
  gen = 6,
  pos = {x = 22, y = 45},
  config = {extra = {Xmult_multi = 1.5}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local abbr = card.ability.extra
    return {vars = {abbr.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Dark",
  atlas = "AtlasJokersBasicNatdex",
  blueprint_compat = true,
  calculate = function(self, card, context)

    -- all are flipped
    if context.stay_flipped and context.to_area == G.hand then
      return {
          stay_flipped = true
      }
    end

    -- flag all face down cards
    if G.hand then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i].poke_flipped = true
        end
      end
    end

    -- give mult per scored face down card
    if context.individual and context.cardarea == G.play and context.other_card.poke_flipped then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          Xmult = card.ability.extra.Xmult_multi ,
          card = card
        }
      end
    end

    -- remove flag and flip back cards
    if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i]:flip()
        end
      end
      for _, v in pairs(G.playing_cards) do
        if v.poke_flipped then
          v.poke_flipped = nil
        end
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if #SMODS.find_card("j_poke_inkay") + #SMODS.find_card("j_poke_malamar") == 0 then
      if G.hand and G.hand.cards then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i]:flip()
        end
      end
      end
      for _, v in pairs(G.playing_cards) do
        if v.poke_flipped then
          v.poke_flipped = nil
        end
      end
    end
  end,
  megas = {"mega_malamar"}
}

-- Mega Malamar 687-1
local mega_malamar={
  name = "mega_malamar",
  gen = 6,
  pos = {x = 6, y = 1}, -- I'll let you deal with the mega sprite atlas and stuff, I can provide the one I'm using
  soul_pos = {x = 7, y = 1},
  artist = "KingOfThe-X-Roads",
  config = {extra = {Xmult_multi = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local abbr = card.ability.extra
    return {vars = {abbr.Xmult_multi}}
  end,
  rarity = "poke_mega",
  cost = 12,
  stage = "Mega",
  ptype = "Dark",
  atlas = "poke_jokers",
  blueprint_compat = true,
  calculate = function(self, card, context)

    -- scoring
    if context.individual and context.cardarea == G.play then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        return {
          Xmult = card.ability.extra.Xmult_multi,
          card = card
        }
      end
    end
    
  end,
  add_to_deck = function(self, card, from_debuff)
    if #SMODS.find_card("j_poke_inkay") + #SMODS.find_card("j_poke_malamar") == 0 then
      if G.hand and G.hand.cards then
      for i = 1, #G.hand.cards do
        if G.hand.cards[i].facing == 'back' then
            G.hand.cards[i]:flip()
        end
      end
      end
      for _, v in pairs(G.playing_cards) do
        if v.poke_flipped then
          v.poke_flipped = nil
        end
      end
    end

    G.jokers:unhighlight_all()
    for _, v in ipairs(G.jokers.cards) do
      if v ~= card then v:flip() end
    end

    for _, v in ipairs(G.consumeables.cards) do
      if not (v.config.center.key == "c_poke_megastone" and v.ability.extra.used_on == card.unique_val) then
        v:flip()
      end
    end

    if G.shop then
      for _, v in ipairs(G.shop_vouchers.cards) do
        v:flip()
      end

      for _, v in ipairs(G.shop_booster.cards) do
        v:flip()
      end

      for _, v in ipairs(G.shop_jokers.cards) do
        v:flip()
      end
    end

  end,
  remove_from_deck = function(self, card, from_debuff)
    if not (G.GAME.blind and G.GAME.blind:get_type() == 'Boss' and G.GAME.blind.name == "Amber Acorn" and G.GAME.blind.disabled) then
      for _, v in ipairs(G.jokers.cards) do
        if v.facing == 'back' then v:flip() end
      end
    end

    for _, v in ipairs(G.consumeables.cards) do
      if v.facing == 'back' then v:flip() end
    end

    if G.shop then
      for _, v in ipairs(G.shop_vouchers.cards) do
        if v.facing == 'back' then v:flip() end
      end

      for _, v in ipairs(G.shop_booster.cards) do
        if v.facing == 'back' then v:flip() end
      end

      for _, v in ipairs(G.shop_jokers.cards) do
        if v.facing == 'back' then v:flip() end
      end
    end
  end,
}


-- Binacle 688
local binacle={
  name = "binacle",
  gen = 6,
  pos = {x = 24, y = 45},
  config = {extra = {value = 7, retriggers = 1, retrigger_hand = 2, retrigger_held = 2, retriggered_hand = 0, retriggered_held = 0, retriggered_held_end = 0, rounds = 4}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local abbr = card.ability.extra
    return {vars = {abbr.value, abbr.retrigger_hand, abbr.retrigger_held, abbr.retriggers, abbr.rounds}}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Earth",
  atlas = "AtlasJokersBasicNatdex",
  blueprint_compat = true,
  calculate = function(self, card, context)

    if context.setting_blind then
      card.ability.extra.retriggered_held_end = 0
    end
    if context.before then
      card.ability.extra.retriggered_hand = 0
      card.ability.extra.retriggered_held = 0
    end

    if context.repetition and context.cardarea == G.play and context.other_card:get_id() == card.ability.extra.value and card.ability.extra.retriggered_hand < card.ability.extra.retrigger_hand then
      if not context.blueprint then
        card.ability.extra.retriggered_hand = card.ability.extra.retriggered_hand + 1
      end
      return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
      }
    end

    if context.repetition and context.cardarea == G.hand and context.other_card:get_id() == card.ability.extra.value then
      if context.end_of_round then
        if card.ability.extra.retriggered_held_end < card.ability.extra.retrigger_held then
          if not context.blueprint then
            card.ability.extra.retriggered_held_end = card.ability.extra.retriggered_held_end + 1
          end
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end
        
      elseif card.ability.extra.retriggered_held < card.ability.extra.retrigger_held then
        if not context.blueprint then
          card.ability.extra.retriggered_held = card.ability.extra.retriggered_held + 1
        end
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end

    return level_evo(self, card, context, "j_poke_barbaracle")
  end,
}

-- Barbaracle 689
local barbaracle={
  name = "barbaracle",
  gen = 6,
  pos = {x = 26, y = 45},
  config = {extra = {value = 7, retriggers = 1, retrigger_hand = 7, retrigger_held = 7, retriggered_hand = 0, retriggered_held = 0, retriggered_held_end = 0}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    local abbr = card.ability.extra
    return {vars = {abbr.value, abbr.retrigger_hand, abbr.retrigger_held, abbr.retriggers}}
  end,
  rarity = "poke_safari",
  cost = 6,
  stage = "One",
  ptype = "Earth",
  atlas = "AtlasJokersBasicNatdex",
  blueprint_compat = true,
  calculate = function(self, card, context)

    if context.setting_blind then
      card.ability.extra.retriggered_held_end = 0
    end
    if context.before then
      card.ability.extra.retriggered_hand = 0
      card.ability.extra.retriggered_held = 0
    end

    if context.repetition and context.cardarea == G.play and card.ability.extra.retriggered_hand < card.ability.extra.retrigger_hand then
      if (context.other_card:get_id() == card.ability.extra.value) then
        if not context.blueprint then
          card.ability.extra.retriggered_hand = card.ability.extra.retriggered_hand + 1
        end
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end

    if context.repetition and context.cardarea == G.hand and context.other_card:get_id() == card.ability.extra.value then
      if context.end_of_round then
        if card.ability.extra.retriggered_held_end < card.ability.extra.retrigger_held then
          if not context.blueprint then
            card.ability.extra.retriggered_held_end = card.ability.extra.retriggered_held_end + 1
          end
          return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
          }
        end

      elseif card.ability.extra.retriggered_held < card.ability.extra.retrigger_held then
        if not context.blueprint then
          card.ability.extra.retriggered_held = card.ability.extra.retriggered_held + 1
        end
        return {
            message = localize('k_again_ex'),
            repetitions = card.ability.extra.retriggers,
            card = card
        }
      end
    end

  end,
  --megas = {"mega_barbaracle"}
}

-- Skrelp 690
return {name = "Pokemon Jokers 661-690", 
  list = {
    litleo, pyroar,
    inkay, malamar, mega_malamar,
    binacle, barbaracle,
  },
}
