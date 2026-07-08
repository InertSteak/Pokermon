local mseed = "missingno"

local missingno ={
  name = "missingno",
  pos = { x = 1, y = 12},
  soul_pos = { x = 2, y = 12},
  config = {extra = {tags_created = 2}},
  loc_vars = function(self, info_queue, center)
    return {vars = {center.ability.extra.tags_created}}
  end,
  rarity = 4,
  cost = 21,
  stage = "Legendary",
  ptype = "Bird",
  atlas = "Pokedex1",
  gen = 1,
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.end_of_round and context.main_eval then
      local more = pseudorandom('bulba') > .90 and 1 or 0
      for _ = 1, card.ability.extra.tags_created + more do
        G.E_MANAGER:add_event(Event({
          func = (function()
            add_tag({ key = SMODS.poll_object({ type = 'Tag', seed = mseed, filter = function(pool)
              return pokermon.filter(pool, function(v) return v.key ~= 'tag_boss' end)
            end}) })
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true
          end)
        }))
      end
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    if G.consumeables and G.consumeables.cards and not from_debuff then
      local _card = #G.consumeables.cards > 0 and G.consumeables.cards[1] or SMODS.add_card({set = 'poke_item', area = G.consumeables})
      local empty_con = G.consumeables.config.card_limit - #G.consumeables.cards
      if empty_con then
        for _ = 1, empty_con do
          SMODS.copy_card(_card)
        end
      end
      local empty_jokers = G.jokers.config.card_limit - #G.jokers.cards - 1
      if empty_jokers then
        for _ = 1, empty_jokers do
          SMODS.copy_card(_card, {area = G.jokers})
        end
      end
    end
  end,
  attributes = {"tag", "generation"},
}

return {name = "Missingno",
        list = { missingno, },
}