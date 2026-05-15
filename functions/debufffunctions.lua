-- Describe all the logic for debuffing or undebuffing

-- return values: true, false, or 'prevent_debuff'
SMODS.current_mod.set_debuff = function(card)
   if card and card.ability and card.ability.fainted == G.GAME.round then
      return G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.HAND_PLAYED or G.STATE == G.STATES.DRAW_TO_HAND
   end

   -- prevent debuffs
   if card.ability.name == "gholdengo" then return 'prevent_debuff' end
   if SMODS.has_enhancement(card, 'm_wild') and next(find_joker("tangrowth")) then return 'prevent_debuff' end
   if card:get_id() == 10 and next(find_joker("tentacruel")) then return 'prevent_debuff' end

   return false
end

