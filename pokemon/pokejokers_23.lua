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
    pokermon.type_tooltip(self, info_queue, center)
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
    return pokermon.level_evo(self, card, context, "j_poke_pyroar")
  end,
  attributes = {"chips", "hand_type", "round_evo"},
}
-- Pyroar 668
local pyroar={
  name = "pyroar",
  pos = {x = 4, y = 1},
  config = {extra = {chips = 90}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
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
                  local card_type = 'poke_energy'
                  local _card = create_card(card_type, G.consumeables, nil, nil, nil, nil, nil, 'sup')
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
-- Malamar 687

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
    binacle, barbaracle,
  },
}
