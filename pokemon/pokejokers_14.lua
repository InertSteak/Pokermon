-- Monferno 391
-- Infernape 392
-- Piplup 393
-- Prinplup 394
-- Empoleon 395
-- Starly 396
-- Staravia 397
-- Staraptor 398
-- Bidoof 399
-- Bibarel 400
-- Kricketot 401
-- Kricketune 402
-- Shinx 403
-- Luxio 404
-- Luxray 405
-- Budew 406
-- Roserade 407
-- Cranidos 408
-- Rampardos 409
-- Shieldon 410
-- Bastiodon 411
-- Burmy 412
-- Wormadam 413
-- Mothim 414
-- Combee 415
-- Vespiquen 416
-- Pachirisu 417
-- Buizel 418
local buizel={
  name = "buizel", 
  pos = {x = 3, y = 2}, 
  config = {extra = {chips = 30, rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips, center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 4, 
  stage = "Basic", 
  atlas = "Pokedex4",
  ptype = "Water",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips * math.abs(#context.scoring_hand - #context.full_hand)
        if chips > 0 then
          return {
              message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
              colour = G.C.CHIPS,
              chip_mod = chips
            }
        end
      end
    end
    return level_evo(self, card, context, "j_poke_floatzel")
  end,
}
-- Floatzel 419
local floatzel={
  name = "floatzel", 
  pos = {x = 4, y = 2}, 
  config = {extra = {chips = 45}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex4",
  ptype = "Water",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.full_hand then
      if context.joker_main then
        local chips = card.ability.extra.chips * math.abs(#context.scoring_hand - #context.full_hand)
        if chips > 0 then
          return {
              message = localize{type = 'variable', key = 'a_chips', vars = {chips}}, 
              colour = G.C.CHIPS,
              chip_mod = chips
            }
        end
      end
    end
  end,
}
-- Cherubi 420
return {name = "Pokemon Jokers 391-420", 
        list = {buizel, floatzel},
}
