-- Dragalge 691
-- Clauncher 692
-- Clawitzer 693
-- Helioptile 694
-- Heliolisk 695
-- Tyrunt 696
-- Tyrantrum 697
-- Amaura 698
-- Aurorus 699
-- Sylveon 700
local sylveon={
  name = "sylveon", 
  pos = {x = 7, y = 3},
  config = {extra = {Xmult_multi = 1.2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if G.STATE == G.STATES.SHOP and not G.SETTINGS.paused then
      local card1 = nil
      local card2 = nil
      if G.deck and G.deck.cards and #G.deck.cards > 0 then
        card1 = G.deck.cards[#G.deck.cards]
        if #G.deck.cards > 1 then
          card2 = G.deck.cards[#G.deck.cards - 1]
        end
      end
      local effect1 = (card1 and card1.ability.effect ~= "Base") and card1.ability.effect or ''
      local effect2 = (card2 and card2.ability.effect ~= "Base") and card2.ability.effect or ''
      local rank1 = (card1 and card1.ability.effect ~= "Stone Card") and localize(card1.base.value or "2", 'ranks') or ''
      local rank2 = (card2 and card2.ability.effect ~= "Stone Card") and localize(card2.base.value or "2", 'ranks') or ''
      local suit1 = (card1 and card1.ability.effect ~= "Stone Card") and localize(card1.base.suit, 'suits_plural') or ''
      local suit2 = (card2 and card2.ability.effect ~= "Stone Card") and localize(card2.base.suit, 'suits_plural') or ''
      
      local text1 = string.sub(effect1, 1, string.len(effect1) - 5)..' '..rank1..(rank1 ~= '' and ' of ' or '')..suit1
      local text2 = string.sub(effect2, 1, string.len(effect2) - 5)..' '..rank2..(rank2 ~= '' and ' of ' or '')..suit2
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_top_cards', specific_vars = {text1 or localize('poke_none'), text2 or localize('poke_none')}}
    end
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex6",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint then
      local card1 = nil
      local card2 = nil
      local enhancement1 = nil
      local enhancement2 = nil
      local enhancements = {}
      for k, v in pairs(G.P_CENTERS) do
        if v.set == "Enhanced" then
          table.insert(enhancements, v)
        end
      end
      if #G.deck.cards > 0 then
        card1 = G.deck.cards[#G.deck.cards]
      end
      if #G.deck.cards > 1 then
        card2 = G.deck.cards[#G.deck.cards - 1]
      end
      if card1 then
        enhancement1 = pseudorandom_element(enhancements, pseudoseed('sylveon1'))
        card1:set_ability(enhancement1, nil, true)
      end
      if card2 then
        enhancement2 = pseudorandom_element(enhancements, pseudoseed('sylveon2'))
        card2:set_ability(enhancement2, nil, true)
      end
      
      card_eval_status_text(card, 'extra', nil, nil, nil,
        {message = (enhancement1 and string.sub(enhancement1.effect, 1, string.len(enhancement1.effect) - 5) or '').." + "..(enhancement2 and string.sub(enhancement2.effect, 1, string.len(                    enhancement2.effect) - 5) or '')})
    end
    if context.individual and context.cardarea == G.hand and context.other_card.edition and not context.end_of_round then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              x_mult = card.ability.extra.Xmult_multi,
              card = card
          }
      end
    end
  end
}
-- Hawlucha 701
-- Dedenne 702
-- Carbink 703
-- Goomy 704
-- Sliggoo 705
-- Goodra 706
-- Klefki 707
-- Phantump 708
-- Trevenant 709
-- Pumpkaboo 710
-- Gourgeist 711
-- Bergmite 712
-- Avalugg 713
-- Noibat 714
-- Noivern 715
-- Xerneas 716
-- Yveltal 717
-- Zygarde 718
-- Diancie 719
-- Hoopa 720
return {name = "Pokemon Jokers 691-720", 
        list = {sylveon},
}