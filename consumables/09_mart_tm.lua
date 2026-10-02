--intialize template for TMs
local tm_template = {
  set = "poke_tm",
  config = {},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = self.tm_vars}
  end,
  tm_vars = {},
  pos = { x = 0, y = 0 },
  atlas = "placeholder_item",
  cost = 8,
  unlocked = true,
  discovered = true,
  can_use = function(self, card)
    return pokermon.tm.can_use_tm(self, card)
  end,
  use = function(self, card, area, copier)
    return pokermon.tm.apply_tm(self, card, area, copier)
  end
}

--Earthquake
local earthquake = copy_table(tm_template)
earthquake.key = "earthquake_tm"
earthquake.tm_name = "earthquake"
earthquake.etypes = {"Earth", "Fighting", "Metal"}
earthquake.config = {extra = {retriggers = 1}}
earthquake.tm_vars = {earthquake.config.extra.retriggers}
earthquake.in_pool = function(self, args) 
  for _, playing_card in ipairs(G.playing_cards or {}) do
      if SMODS.has_enhancement(playing_card, 'm_stone') then
          return true
      end
  end
  return false
end

--Psychic
local psychic = copy_table(tm_template)
psychic.key = "psychic_tm"
psychic.tm_name = "psychic"
psychic.etypes = {"Psychic", "Dark", "Fairy"}
psychic.config = {extra = {scry = 3}}
psychic.tm_vars = {psychic.config.extra.scry}

--Surf
local surf = copy_table(tm_template)
surf.key = "surf_tm"
surf.tm_name = "surf"
surf.etypes = {"Water", "Colorless", "Dragon"}
surf.config = {extra = {chip_mod = 15}}
surf.tm_vars = {surf.config.extra.chip_mod}
surf.in_pool = function(self, args) 
  for _, playing_card in ipairs(G.playing_cards or {}) do
      if SMODS.has_enhancement(playing_card, 'm_bonus') then
          return true
      end
  end
  return false
end

--Flamethrower
local flamethrower = copy_table(tm_template)
flamethrower.key = "flamethrower_tm"
flamethrower.tm_name = "flamethrower"
flamethrower.etypes = {"Fire", "Dark", "Dragon"}
flamethrower.config = {extra = {mult_mod = 2}}
flamethrower.tm_vars = {flamethrower.config.extra.mult_mod}
flamethrower.in_pool = function(self, args) 
  for _, playing_card in ipairs(G.playing_cards or {}) do
      if SMODS.has_enhancement(playing_card, 'm_mult') then
          return true
      end
  end
  return false
end

--Thunderbolt
local thunderbolt = copy_table(tm_template)
thunderbolt.key = "thunderbolt_tm"
thunderbolt.tm_name = "thunderbolt"
thunderbolt.etypes = {"Lightning", "Psychic", "Colorless"}
thunderbolt.config = {extra = {money_mod = 1}}
thunderbolt.tm_vars = {thunderbolt.config.extra.money_mod}
thunderbolt.in_pool = function(self, args) 
  for _, playing_card in ipairs(G.playing_cards or {}) do
      if SMODS.has_enhancement(playing_card, 'm_gold') then
          return true
      end
  end
  return false
end

--Seed Bomb
local seedbomb = copy_table(tm_template)
seedbomb.key = "seedbomb_tm"
seedbomb.tm_name = "seedbomb"
seedbomb.etypes = {"Grass", "Fighting", "Colorless"}
seedbomb.config = {extra = {Xmult_multi = 1.3}}
seedbomb.tm_vars = {seedbomb.config.extra.Xmult_multi}

--Metronome
local metronome = copy_table(tm_template)
metronome.key = "metronome_tm"
metronome.tm_name = "metronome"
metronome.etypes = {"Colorless", "Fairy", "Psychic"}
metronome.config = {extra = {num = 1, dem = 10}}
metronome.loc_vars = function(self, info_queue, center)
  info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
  
  local num, dem = SMODS.get_probability_vars(metronome, metronome.config.extra.num, metronome.config.extra.dem, 'metronome')
  
  return {vars = {num, dem}}
end

return {name = "Mart TMs",
        list = {earthquake, psychic, surf, flamethrower, thunderbolt, seedbomb, metronome}
}