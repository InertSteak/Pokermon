-- Heatmor 631
-- Durant 632
-- Deino 633
local deino={
  name = "deino",
  pos = {x = 13, y = 9},
  config = {extra = {Xmult = 1.5, hand_played = 0}, evo_rqmt = 8},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, math.max(0, self.config.evo_rqmt - center.ability.extra.hand_played)}}
  end,
  rarity = 2,
  cost = 6,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.scoring_name == "Three of a Kind" then
      if context.joker_main then
        if not context.blueprint then
          card.ability.extra.hand_played = card.ability.extra.hand_played + 1
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_zweilous", card.ability.extra.hand_played, self.config.evo_rqmt)
  end
}
-- Zweilous 634
local zweilous={
  name = "zweilous",
  pos = {x = 0, y = 10},
  config = {extra = {Xmult = 2, hand_played = 0}, evo_rqmt = 10},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, math.max(0, self.config.evo_rqmt - center.ability.extra.hand_played)}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand and context.scoring_name == "Three of a Kind" then
      if context.joker_main then
        if not context.blueprint then
          card.ability.extra.hand_played = card.ability.extra.hand_played + 1
        end
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.mult,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
    end
    return scaling_evo(self, card, context, "j_poke_hydreigon", card.ability.extra.hand_played, self.config.evo_rqmt)
  end
}
-- Hydreigon 635
local hydreigon={
  name = "hydreigon",
  pos = {x = 1, y = 10},
  config = {extra = {Xmult = 3.33, Xmult_mod = 0.33}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_mod}}
  end,
  rarity = "poke_safari",
  cost = 10,
  stage = "Two",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        return {
          message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
          colour = G.C.XMULT,
          Xmult_mod = card.ability.extra.Xmult
        }
      end
      if context.after and context.scoring_name == "Three of a Kind" and not context.blueprint then
        for k, v in pairs(context.full_hand) do
          if not SMODS.in_scoring(v, context.scoring_hand) then
            poke_remove_card(v, card)
          end
        end
      end
    end
    --[[
    if context.individual and not context.end_of_round and context.cardarea == G.play and context.scoring_hand and context.scoring_name == "Three of a Kind" then
        return {
          x_mult = card.ability.extra.Xmult_multi,
          card = card
        }
    end]]--
    if context.remove_playing_cards and not context.blueprint then
      for _, removed_card in ipairs(context.removed) do
        card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
      end
    end
  end
}
-- Larvesta 636
-- Volcarona 637
-- Cobalion 638
-- Terrakion 639
-- Virizion 640
-- Tornadus 641
-- Thundurus 642
-- Reshiram 643
-- Zekrom 644
-- Landorus 645
-- Kyurem 646
-- Keldeo 647
-- Meloetta 648
-- Genesect 649
-- Chespin 650
-- Quilladin 651
-- Chesnaught 652
-- Fennekin 653
-- Braixen 654
-- Delphox 655
-- Froakie 656
-- Frogadier 657
-- Greninja 658
-- Bunnelby 659
-- Diggersby 660
return {name = "Pokemon Jokers 631-660", 
        list = {deino, zweilous, hydreigon},
}
