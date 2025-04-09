-- Describe all the logic for debuffing or undebuffing

-- return values: true, false, or 'prevent_debuff'
SMODS.current_mod.set_debuff = function(card)
   if card and card.ability and card.ability.fainted == G.GAME.round then
      return G.STATE == G.STATES.SELECTING_HAND or G.STATE == G.STATES.HAND_PLAYED or G.STATE == G.STATES.DRAW_TO_HAND
   end

   -- prevent debuffs
   if card.ability.name == "gholdengo" then return 'prevent_debuff' end
   if card.ability.name == "Wild Card" and next(find_joker("tangrowth")) then return 'prevent_debuff' end
   if card:get_id() == 10 and next(find_joker("tentacruel")) then return 'prevent_debuff' end

   if card.ability.played_this_ante_gligar then return true end
   return false
end

-- reset any values after a round or at run start
function SMODS.current_mod.reset_game_globals(run_start)
   if run_start then
   else
      -- killed the boss
      if G.GAME.round_resets.blind ~= G.P_BLINDS.bl_small and G.GAME.round_resets.blind ~= G.P_BLINDS.bl_big then
         for k, v in ipairs(G.playing_cards) do
            v.ability.played_this_ante_gligar = nil
         end
      end
   end
end

local previous_set_debuff = Card.set_debuff
Card.set_debuff = function(card, should_debuff)

   --[[
   -- if Gliscor, then cancel debuff
   if card.ability.name == "gliscor" then
      -- if attempted to debuff (or was debuffed by another effect), then gain 1 energy
      if should_debuff or card.debuff then
         energy_increase(card, "Trans")
      end
      -- if it was debuffed by another effect, undebuff it
      if card.debuff then
         card.debuff = false
         if card.area == G.jokers then card:add_to_deck(true) end
         card.debuffed_by_blind = false
      end
      return
   end
   --]]

   previous_set_debuff(card, should_debuff)
end
