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
  end
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
  end
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
-- Barbaracle 689
-- Skrelp 690
return {name = "Pokemon Jokers 661-690", 
        list = {litleo, pyroar},
}
