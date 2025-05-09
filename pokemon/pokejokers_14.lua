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
local shinx={
  name = "shinx",
  pos = {x = 2, y = 1},
  config = {extra = {flip_num = 1, flip_in = 8, money = 1, known_flipped = {}, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {
      center.ability.extra.flip_num * G.GAME.probabilities.normal,
      center.ability.extra.flip_in,
      center.ability.extra.money,
      center.ability.extra.rounds
    }}
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  atlas = "Pokedex4",
  ptype = "Lightning",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.hand_drawn and context.cardarea == G.jokers then
      for _, drawn in pairs(context.hand_drawn) do
        if drawn.ability.wheel_flipped then
          card.ability.extra.known_flipped[drawn.ID] = true
        end
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if card.ability.extra.known_flipped[context.other_card.ID] then
        return {dollars = card.ability.extra.money}
      end
    end
    if context.end_of_round and context.cardarea == G.jokers then
      card.ability.extra.known_flipped = {}
    end
    return level_evo(self, card, context, "j_poke_luxio")
  end
}
-- Luxio 404
local luxio={
  name = "luxio",
  pos = {x = 3, y = 1},
  config = {extra = {flip_num = 1, flip_in = 6, money = 1, mult = 2, known_flipped = {}, rounds = 3}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {
      center.ability.extra.flip_num * G.GAME.probabilities.normal,
      center.ability.extra.flip_in,
      center.ability.extra.money,
      center.ability.extra.mult,
      center.ability.extra.rounds
    }}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  atlas = "Pokedex4",
  ptype = "Lightning",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.hand_drawn and context.cardarea == G.jokers then
      for _, drawn in pairs(context.hand_drawn) do
        if drawn.ability.wheel_flipped then
          card.ability.extra.known_flipped[drawn.ID] = true
        end
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if card.ability.extra.known_flipped[context.other_card.ID] then
        return {
          dollars = card.ability.extra.money,
          mult = card.ability.extra.mult
        }
      end
    end
    if context.end_of_round and context.cardarea == G.jokers then
      card.ability.extra.known_flipped = {}
    end
    return level_evo(self, card, context, "j_poke_luxray")
  end
}
-- Luxray 405
local luxray={
  name = "luxray",
  pos = {x = 4, y = 1},
  config = {extra = {flip_num = 1, flip_in = 2, money = 1, Xmult = 1.1, known_flipped = {}}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {
      center.ability.extra.flip_num * G.GAME.probabilities.normal,
      center.ability.extra.flip_in,
      center.ability.extra.money,
      center.ability.extra.Xmult
    }}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Basic",
  atlas = "Pokedex4",
  ptype = "Lightning",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.hand_drawn and context.cardarea == G.jokers then
      for _, drawn in pairs(context.hand_drawn) do
        if drawn.ability.wheel_flipped then
          card.ability.extra.known_flipped[drawn.ID] = true
        end
      end
    end
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if card.ability.extra.known_flipped[context.other_card.ID] then
        return {
          dollars = card.ability.extra.money,
          xmult = card.ability.extra.Xmult
        }
      end
    end
    if context.end_of_round and context.cardarea == G.jokers then
      card.ability.extra.known_flipped = {}
    end
  end
}
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
  config = {extra = {chips = 20, rounds = 4}},
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
  config = {extra = {chips = 40}},
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
        list = {shinx, luxio, luxray, buizel, floatzel},
}