-- Describe all the logic for debuffing or undebuffing

-- return values: true, false, or 'prevent_debuff'
SMODS.current_mod.set_debuff = function(card)
   if card and card.ability and card.ability.fainted == G.GAME.round then
      return G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.HAND_PLAYED or G.STATE == G.STATES.DRAW_TO_HAND
   end
   return false
end


local previous_set_debuff = Card.set_debuff
Card.set_debuff = function(card, should_debuff)
   if card.ability.name == "gholdengo" then
      if card.debuff then
         card.debuff = false
         if card.area == G.jokers then card:add_to_deck(true) end
      end
      card.debuffed_by_blind = false
   end
   previous_set_debuff(card, should_debuff)

   -- if Gliscor, then cancel debuff
end
