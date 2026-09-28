local tm_sticker_template = 
{
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  no_collection = true,
  tm_vars = {},
  loc_vars = function(self, info_queue, center)    
    return {vars = self.tm_vars}
  end,
}

--Earthquake
local earthquake = copy_table(tm_sticker_template)
earthquake.key = "earthquake_sticker"
earthquake.config = {extra = {Xmult = 2}}
earthquake.tm_vars = {earthquake.config.extra.Xmult}
earthquake.badge_colour = pokermon.colours.earth
earthquake.calculate = function(self, card, context)
  if context.joker_main then
    local all_stone = true
    for _, playing_card in ipairs(G.hand.cards) do
        if not SMODS.has_enhancement(playing_card, 'm_stone') then
            all_stone = false
            break
        end
    end
    if all_stone then
      return {
        xmult = self.config.extra.Xmult, 
      }
    end
  end
end

--Psychic
local psychic = copy_table(tm_sticker_template)
psychic.key = "psychic_sticker"
psychic.config = {extra = {scry = 3}}
psychic.tm_vars = {psychic.config.extra.scry}
psychic.badge_colour = pokermon.colours.psychic
psychic.apply = function(self, card, val)
  SMODS.Sticker.apply(self, card, val)
  
  if card and not card.ability.poke_has_tm then
    card.ability.poke_has_tm = psychic.key
    G.GAME.poke_scry_amount = (G.GAME.poke_scry_amount or 0) + self.config.extra.scry
  else
    if card then card.ability.poke_has_tm = nil end
    G.GAME.poke_scry_amount = math.max(0,(G.GAME.poke_scry_amount or 0) - self.config.extra.scry)
  end
end

return
{
  name = "TM Stickers",
  list = {earthquake, psychic}
}