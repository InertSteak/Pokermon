local tm_sticker_template = 
{
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  no_collection = true,
}

local earthquake = SMODS.merge_defaults({
  key = "earthquake_sticker",
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, center)    
    return {vars = {self.config.extra.retriggers}}
  end,
  badge_colour = pokermon.colours.earth,
  calculate = function(self, card, context)
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
  end,
}, tm_sticker_template)

--Psychic
local psychic = SMODS.merge_defaults({
key = "psychic_sticker",
config = {extra = {scry = 3}},
loc_vars = function(self, info_queue, center)    
  return {vars = {self.config.extra.scry}}
end,
badge_colour = pokermon.colours.psychic,
apply = function(self, card, val)
  SMODS.Sticker.apply(self, card, val)
  
  if card and not card.ability.poke_has_tm then
    card.ability.poke_has_tm = self.key
    G.GAME.poke_scry_amount = (G.GAME.poke_scry_amount or 0) + self.config.extra.scry
  else
    if card then card.ability.poke_has_tm = nil end
    G.GAME.poke_scry_amount = math.max(0,(G.GAME.poke_scry_amount or 0) - self.config.extra.scry)
  end
end
}, tm_sticker_template)


--Surf
local surf = SMODS.merge_defaults({
  key = "surf_sticker",
  config = {extra = {chip_mod = 15}},
  loc_vars = function(self, info_queue, center)    
    return {vars = {self.config.extra.chip_mod}}
  end,
  badge_colour = pokermon.colours.water,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_bonus') then
        return {
            chips = self.config.extra.chip_mod
        }
    end
  end,
}, tm_sticker_template)


--Flamethrower
local flamethrower = SMODS.merge_defaults({
  key = "flamethrower_sticker",
  config = {extra = {mult_mod = 2}},
  loc_vars = function(self, info_queue, center)    
    return {vars = {self.config.extra.mult_mod}}
  end,
  badge_colour = pokermon.colours.fire,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_mult') then
        return {
            mult = self.config.extra.mult_mod
        }
    end
  end,
}, tm_sticker_template)

--Thunderbolt
local thunderbolt = SMODS.merge_defaults({
  key = "thunderbolt_sticker",
  config = {extra = {money_mod = 1}},
  loc_vars = function(self, info_queue, center)    
    return {vars = {self.config.extra.money_mod}}
  end,
  badge_colour = pokermon.colours.lightning,
  text_colour = G.C.BLACK,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.hand and SMODS.has_enhancement(context.other_card, 'm_gold') and context.end_of_round then
        return {
            dollars = self.config.extra.money_mod
        }
    end
  end,
}, tm_sticker_template)

--Seed Bomb
local seedbomb = SMODS.merge_defaults({
  key = "seedbomb_sticker",
  config = {extra = {Xmult_multi = 1.3}},
  loc_vars = function(self, info_queue, center)    
    return {vars = {self.config.extra.Xmult_multi}}
  end,
  badge_colour = pokermon.colours.grass,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_poke_seed') then
        return {
            xmult = self.config.extra.Xmult_multi
        }
    end
  end,
}, tm_sticker_template)

--Metronome
local metronome = SMODS.merge_defaults({
  key = "metronome_sticker",
  badge_colour = pokermon.colours.colorless,
  config = {extra = {num = 1, dem = 10}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    local num, dem = SMODS.get_probability_vars(self, self.config.extra.num, self.config.extra.dem, 'metronome')
    
    return {vars = {num, dem}}
  end,
  calculate = function(self, card, context)
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
  end,
}, tm_sticker_template)

return
{
  name = "TM Stickers",
  list = {earthquake, psychic, surf, flamethrower, thunderbolt, seedbomb, metronome}
}