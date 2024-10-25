--Code for pokemon jokers 151-180
local mew ={
  name = "mew", 
  pos = {x = 12, y = 11},
  soul_pos = { x = 0, y = 12},
  config = {extra = {odds = 6}},
  loc_txt = {      
    name = 'Mew',      
    text = {
      "At end of shop, create",
      "a random {C:dark_edition}Negative{} {C:attention}Tarot{} card.",
      "{C:green}#1# in {C:green}#2#{} chance to create",
      "a random {C:dark_edition}Negative{} Joker {C:attention}instead{}"
    } 
  },
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
    info_queue[#info_queue+1] = G.P_CENTERS.e_negative
    return {vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), center.ability.extra.odds}}
  end,
  rarity = 4, 
  cost = 20, 
  stage = "Legendary",
  ptype = "Psychic",
  atlas = "Pokedex1",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.ending_shop then
      if pseudorandom('mew') < G.GAME.probabilities.normal/card.ability.extra.odds then
        --create random joker
        local _card = create_card('Joker', G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.jokers:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
      else
        --create random Tarot and apply negative
        local _card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil)
        local edition = {negative = true}
        _card:set_edition(edition, true)
        _card:add_to_deck()
        G.consumeables:emplace(_card)
        card_eval_status_text(_card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
      end
    end
  end,
}
-- Chikorita 152
-- Bayleef 153
-- Meganium 154
-- Cyndaquil 155
-- Quilava 156
-- Typhlosion 157
-- Totodile 158
-- Croconaw 159
-- Feraligatr 160
-- Sentret 161
local sentret={
  name = "sentret",
  config = {extra = {mult = 0, mult_mod = 1, last_hand = 'None'}},
  pos = {x = 0, y = 0}, 
  loc_txt = {      
    name = 'Sentret',      
    text = {
      "{C:mult}+#2#{} Mult when played hand",
      "isn't the last played hand",
      "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
      "{C:inactive}(Evolves at {C:mult}+6{} {C:inactive}Mult)"
    }  
  }, 
  rarity = 1, 
  cost = 4, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played or "None"}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
    return scaling_evo(self, card, context, "j_poke_furret", card.ability.extra.mult, 6)
  end,
}
-- Furret 162
local furret={
  name = "furret",
  config = {extra = {mult = 6, mult_mod = 2, last_hand = 'None'}},
  pos = {x = 0, y = 0}, 
  loc_txt = {      
    name = 'Furret',      
    text = {
      "{C:mult}+#2#{} Mult when played hand",
      "isn't the last played hand",
      "{C:inactive}(Last hand: {C:attention}#3#{}{C:inactive})",
      "{C:inactive}(Currently {C:mult}+#1#{} {C:inactive}Mult)",
    }  
  }, 
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Colorless",
  atlas = "Pokedex2",
  blueprint_compat = true,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod, G.GAME.last_hand_played or "None"}}
  end,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and not context.blueprint and card.ability.extra.last_hand ~= context.scoring_name then
        card.ability.extra.last_hand = G.GAME.last_hand_played
        card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
      if context.joker_main then
        if card.ability.extra.mult > 0 then
          return {
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult
          }
        end
      end
    end
  end,
}
-- Hoothoot 163
-- Noctowl 164
-- Ledyba 165
-- Ledian 166
-- Spinarak 167
-- Ariados 168
-- Crobat 169
-- Chinchou 170
-- Lanturn 171
-- Pichu 172
-- Cleffa 173
-- Igglybuff 174
-- Togepi 175
-- Togetic 176
-- Natu 177
-- Xatu 178
-- Mareep 179
-- Flaaffy 180

return {name = "Pokemon Jokers 151-180", 
        list = { mew, sentret, furret},
}
