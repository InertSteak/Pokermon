-- Wugtrio 961
local wugtrio={
  name = "wugtrio", 
  pos = {x = 4, y = 4},
  config = {extra = {chips = 120, Xmult = 1.5}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.Xmult, center.ability.extra.chips}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  atlas = "Pokedex9",
  gen = 9,
  ptype = "Water",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main then
        local score_chips = false
        local score_mult = false
        if next(context.poker_hands['Three of a Kind']) then score_mult = true end
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 5 or v:get_id() == 6 or v:get_id() == 7 then
            score_chips = true
            break
          end
        end
        if score_mult and score_chips then
          return {
            message = localize('poke_dig_ex'), 
            colour = G.C.MULT,
            chip_mod = card.ability.extra.chips,
            Xmult_mod = card.ability.extra.Xmult,
            card = card
          }
        elseif score_chips then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips,
            card = card
          }
        elseif score_mult then
          return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult}}, 
            colour = G.C.MULT,
            Xmult_mod = card.ability.extra.Xmult,
            card = card
          }
        end
      end
    end
  end
}
-- Bombirdier 962
-- Finizen 963
-- Palafin 964
-- Varoom 965
-- Revavroom 966
-- Cyclizar 967
-- Orthworm 968
-- Glimmet 969
-- Glimmora 970
-- Greavard 971
-- Houndstone 972
-- Flamigo 973
-- Cetoddle 974
-- Cetitan 975
-- Veluza 976
-- Dondozo 977
-- Tatsugiri 978
-- Annihilape 979
local annihilape={
  name = "annihilape", 
  pos = {x = 2, y = 6}, 
  config = {extra = {mult = 5, chips = 7}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, center.ability.extra.chips, center.ability.extra.mult * (1 + G.GAME.current_round.hands_played), 
                    center.ability.extra.chips * (1 + G.GAME.current_round.hands_played)}}
  end,
  rarity = "poke_safari", 
  cost = 11, 
  stage = "Two", 
  ptype = "Fighting",
  atlas = "Pokedex9",
  gen = 9,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.individual and context.cardarea == G.play and not context.other_card.debuff then
      if context.other_card:get_id() == 2 or 
         context.other_card:get_id() == 3 or 
         context.other_card:get_id() == 5 or 
         context.other_card:get_id() == 7 then
        return {
            chips = card.ability.extra.chips * (1 + G.GAME.current_round.hands_played),
            mult = card.ability.extra.mult * (1 + G.GAME.current_round.hands_played),
            card = card
        }
      end
    end
  end
}
-- Clodsire 980
-- Farigiraf 981
local farigiraf={
  name = "farigiraf",
  pos = {x = 4, y = 6},
  config = {extra = {Xmult_multi = 2.2, score = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Cryptid"}}
      info_queue[#info_queue+1] = { set = 'Spectral', key = 'c_cryptid', vars = {2}}
    end
    return {vars = {center.ability.extra.Xmult_multi}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "One",
  ptype = "Psychic",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and next(context.poker_hands['Two Pair']) and not context.blueprint then
        card.ability.extra.score = true
      end
      if context.after then
        card.ability.extra.score = false
      end
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and card.ability.extra.score then
      local first_face = nil
      local last_face = nil
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:is_face() then
          first_face = context.scoring_hand[i];
          break
        end
      end
      for i = #context.scoring_hand, 1, -1 do
        if context.scoring_hand[i]:is_face() and context.scoring_hand[i] ~= first_face then
          last_face = context.scoring_hand[i];
          break
        end
      end
      if context.other_card == first_face or context.other_card == last_face then
        return {
            x_mult = card.ability.extra.Xmult_multi,
            colour = G.C.RED,
            card = card
        }
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_cryptid')
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
      end
    end
  end,
}
-- Dudunsparce 982
local dudunsparce={
  name = "dudunsparce",
  pos = {x = 5, y = 6},
  config = {extra = {card_slots = 1, pack_slots = 1, voucher_slots = 1, form = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    local alt_key = nil
    if center.ability.extra.form == 1 then
      alt_key = "j_poke_dudunsparce2"
      if pokermon_config.detailed_tooltips then
        info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
        info_queue[#info_queue+1] = {set = 'Other', key = 'holding', vars = {"Coupon Tag"}}
      end
    end
    return {vars = {center.ability.extra.card_slots, center.ability.extra.pack_slots, center.ability.extra.voucher_slots}, key = alt_key}
  end,
  rarity = "poke_safari",
  cost = 9,
  stage = "One",
  ptype = "Colorless",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = true,
  set_ability = function(self, card, initial, delay_sprites)
    if initial then
      if pseudorandom('dudunsparce') < (1/6) then
        card.ability.extra.form = 1
        self:set_sprites(card)
      end
    end
  end,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.form == 1 then
      card.children.center:set_sprite_pos({x = 8, y = 3})
    else
      card.children.center:set_sprite_pos({x = 6, y = 3})
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    change_shop_size(card.ability.extra.card_slots)
    SMODS.change_booster_limit(card.ability.extra.pack_slots)
    SMODS.change_voucher_limit(card.ability.extra.voucher_slots)
    if card.ability.extra.form == 1 then
      self:set_sprites(card)
      if not from_debuff then
        G.E_MANAGER:add_event(Event({
          func = (function()
              add_tag(Tag('tag_coupon'))
              play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
              play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
              return true
          end)
        }))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_wowthree')})
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    change_shop_size(-card.ability.extra.card_slots)
    SMODS.change_booster_limit(-card.ability.extra.card_slots)
    SMODS.change_voucher_limit(-card.ability.extra.card_slots)
  end,
}
-- Kingambit 983
local kingambit={
  name = "kingambit",
  pos = {x = 0, y = 0},
  config = {extra = {Xmult = 2,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.Xmult, }}
  end,
  rarity = "poke_safari",
  cost = 11,
  gen = 9,
  stage = "Two",
  ptype = "Metal",
  atlas = "Pokedex9",
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
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play then
      local king_count = 0
      for _, playing_card in ipairs(G.playing_cards) do
        if playing_card:get_id() == 13 then king_count = king_count + 1 end
      end
      if king_count == 1 then
        local has_king = nil
        for k, v in pairs(context.full_hand) do
          if v:get_id() == 13 then 
            has_king = true
            break
          end
        end
        if has_king and not context.other_card:is_face() then
          local Xmult = card.ability.extra.Xmult/2
          if Xmult > 1 then
            return {
              x_mult = Xmult,
              card = card
            }
          end
        end
      end
    end
  end,
}
-- Great Tusk 984
-- Scream Tail 985
-- Brute Bonnet 986
-- Flutter Mane 987
-- Slither Wing 988
-- Sandy Shocks 989
-- Iron Treads 990
return {name = "Pokemon Jokers 961-990", 
        list = {wugtrio, annihilape, farigiraf, dudunsparce, kingambit},
}
