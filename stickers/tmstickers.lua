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
earthquake.config = {extra = {retriggers = 1}}
earthquake.tm_vars = {earthquake.config.extra.retriggers}
earthquake.badge_colour = pokermon.colours.earth
earthquake.calculate = function(self, card, context)
  if context.repetition and not context.end_of_round and context.cardarea == G.play then
    local first = nil
    for i = 1, #context.scoring_hand do
      if SMODS.has_enhancement(context.scoring_hand[i], 'm_stone') then
        first = context.scoring_hand[i]
        break
      end
    end
    if context.other_card == first then
      return {
        message = localize('k_again_ex'),
        repetitions = self.config.extra.retriggers,
        card = card
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

--Surf
local surf = copy_table(tm_sticker_template)
surf.key = "surf_sticker"
surf.config = {extra = {chip_mod = 15}}
surf.tm_vars = {surf.config.extra.chip_mod}
surf.badge_colour = pokermon.colours.water
surf.calculate = function(self, card, context)
  if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_bonus') then
      return {
          chips = self.config.extra.chip_mod
      }
  end
end

--Flamethrower
local flamethrower = copy_table(tm_sticker_template)
flamethrower.key = "flamethrower_sticker"
flamethrower.config = {extra = {mult_mod = 2}}
flamethrower.tm_vars = {flamethrower.config.extra.mult_mod}
flamethrower.badge_colour = pokermon.colours.fire
flamethrower.calculate = function(self, card, context)
  if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_mult') then
      return {
          mult = self.config.extra.mult_mod
      }
  end
end

local thunderbolt = copy_table(tm_sticker_template)
thunderbolt.key = "thunderbolt_sticker"
thunderbolt.config = {extra = {money_mod = 1}}
thunderbolt.tm_vars = {thunderbolt.config.extra.money_mod}
thunderbolt.badge_colour = pokermon.colours.lightning
thunderbolt.text_colour = G.C.BLACK
thunderbolt.calculate = function(self, card, context)
  if context.individual and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, 'm_gold') and context.end_of_round then
      return {
          dollars = self.config.extra.money_mod
      }
  end
end

local seedbomb = copy_table(tm_sticker_template)
seedbomb.key = "seedbomb_sticker"
seedbomb.config = {extra = {Xmult_multi = 1.3}}
seedbomb.tm_vars = {seedbomb.config.extra.Xmult_multi}
seedbomb.badge_colour = pokermon.colours.grass
seedbomb.calculate = function(self, card, context)
  if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_poke_seed') then
      return {
          xmult = self.config.extra.Xmult_multi
      }
  end
end


local metronome = copy_table(tm_sticker_template)
metronome.key = "metronome_sticker"
metronome.badge_colour = pokermon.colours.colorless
metronome.config = {extra = {num = 1, dem = 10}}
metronome.loc_vars = function(self, info_queue, center)
  info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
  
  local num, dem = SMODS.get_probability_vars(metronome, metronome.config.extra.num, metronome.config.extra.dem, 'metronome')
  
  return {vars = {num, dem}}
end
metronome.calculate = function(self, card, context)
  if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_lucky') then
      if SMODS.pseudorandom_probability(self, 'metronome', self.config.extra.num, self.config.extra.dem, 'metronome') then
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            extra = {focus = card, message = localize('poke_plus_consumable'), colour = G.C.FILTER, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local set = pseudorandom_element(SMODS.ConsumableTypes, pseudoseed('metronome'))
                  local consum = SMODS.add_card{set = set.key, key_append = 'metronome'}
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
          }
        end
      end
  end
end


return
{
  name = "TM Stickers",
  list = {earthquake, psychic, surf, flamethrower, thunderbolt, seedbomb, metronome}
}