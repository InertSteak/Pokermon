--intialize template for TMs
local tm_template = {
  set = "poke_tm",
  pos = { x = 0, y = 0 },
  atlas = "placeholder_item",
  cost = 8,
  unlocked = true,
  discovered = true,
  can_use = pokermon.tm.can_use_tm,
  use = pokermon.tm.apply_tm,
}

--Earthquake
local earthquake = SMODS.merge_defaults({
  key = "earthquake_tm",
  tm_name = "earthquake",
  etypes = {"Earth", "Fighting", "Metal"},
  config = {extra = {retriggers = 1}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.retriggers}}
  end,
  enhancement_gate = 'm_stone',
}, tm_template)

--Psychic
local psychic = SMODS.merge_defaults({
  key = "psychic_tm",
  tm_name = "psychic",
  etypes = {"Psychic", "Dark", "Fairy"},
  config = {extra = {scry = 3}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.scry}}
  end,
}, tm_template)

--Surf
local surf = SMODS.merge_defaults({
  key = "surf_tm",
  tm_name = "surf",
  etypes = {"Water", "Colorless", "Dragon"},
  config = {extra = {chip_mod = 15}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.chip_mod}}
  end,
  enhancement_gate = 'm_bonus',
}, tm_template)

local flamethrower = SMODS.merge_defaults({
  key = "flamethrower_tm",
  tm_name = "flamethrower",
  etypes = {"Fire", "Dark", "Dragon"},
  config = {extra = {mult_mod = 2}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.mult_mod}}
  end,
  enhancement_gate = 'm_mult',
}, tm_template)

local thunderbolt = SMODS.merge_defaults({
  key = "thunderbolt_tm",
  tm_name = "thunderbolt",
  etypes = {"Lightning", "Psychic", "Colorless"},
  config = {extra = {money_mod = 1}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.money_mod}}
  end,
  enhancement_gate = 'm_gold',
}, tm_template)

local seedbomb = SMODS.merge_defaults({
  key = "seedbomb_tm",
  tm_name = "seedbomb",
  etypes = {"Grass", "Fighting", "Colorless"},
  config = {extra = {Xmult_multi = 1.3}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    return {vars = {self.config.extra.Xmult_multi}}
  end,
  enhancement_gate = 'm_poke_seed',
}, tm_template)

--Metronome
local metronome = SMODS.merge_defaults({
  key = "metronome_tm",
  tm_name = "metronome",
  etypes = {"Colorless", "Fairy", "Psychic"},
  config = {extra = {num = 1, dem = 10}},
  loc_vars = function(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'teach_tm'}
    
    local num, dem = SMODS.get_probability_vars(self, self.config.extra.num, self.config.extra.dem, 'metronome')
    
    return {vars = {num, dem}}
  end,
  enhancement_gate = 'm_lucky',
}, tm_template)

return {name = "Mart TMs",
        list = {earthquake, psychic, surf, flamethrower, thunderbolt, seedbomb, metronome}
}