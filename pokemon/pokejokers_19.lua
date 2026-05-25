-- Swadloon 541
-- Leavanny 542
-- Venipede 543
-- Whirlipede 544
-- Scolipede 545
-- Cottonee 546
-- Whimsicott 547
-- Petilil 548
-- Lilligant 549
-- Basculin 550
-- Sandile 551
-- Krokorok 552
-- Krookodile 553
-- Darumaka 554
-- Darmanitan 555
-- Maractus 556
-- Dwebble 557
-- Crustle 558
-- Scraggy 559
-- Scrafty 560
-- Sigilyph 561
-- Yamask 562
-- Cofagrigus 563
-- Tirtouga 564
-- Carracosta 565
-- Archen 566
-- Archeops 567
-- Trubbish 568
local trubbish={
  name = "trubbish",
  pos = {x = 4, y = 5},
  config = {extra = {chips = 0,chip_mod = 3,money = 2,triggers = 0}, evo_rqmt = 4},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,center.ability.extra.money, math.max(0, self.config.evo_rqmt - center.ability.extra.triggers)}}
  end,
  designer = "bt",
  rarity = 1,
  cost = 5,
  gen = 5,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex5",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 and not context.blueprint then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          operation = function(ref_table, ref_value, initial, modifier)
            ref_table[ref_value] = initial + modifier * G.GAME.current_round.discards_left
          end,
          message_colour = G.C.CHIPS
        })
      
        card.ability.extra.triggers = card.ability.extra.triggers + 1
      end
    end
    return scaling_evo(self, card, context, "j_poke_garbodor", card.ability.extra.triggers, self.config.evo_rqmt)
  end,
  calc_dollar_bonus = function(self, card)
    if G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 then
      return ease_poke_dollars(card, "trubbish", G.GAME.current_round.discards_left * card.ability.extra.money, true)
    end
  end,
  attributes = {"discard", "economy", "chips", "scaling", "trigger_evo"},
}
-- Garbodor 569
local garbodor={
  name = "garbodor",
  pos = {x = 5, y = 5},
  config = {extra = {chips = 0,chip_mod = 5,triggers = 0, active = false}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {key = 'tag_garbage', set = 'Tag', specific_vars = {1, G.GAME.unused_discards or 0}}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod,center.ability.extra.money}}
  end,
  designer = "bt",
  rarity = "poke_safari",
  cost = 8,
  gen = 5,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 and not context.blueprint then
        SMODS.scale_card(card, {
          ref_value = 'chips',
          scalar_value = 'chip_mod',
          operation = function(ref_table, ref_value, initial, modifier)
            ref_table[ref_value] = initial + modifier * G.GAME.current_round.discards_left
          end,
          message_colour = G.C.CHIPS
        })
      end
      if (G.GAME.poke_ante_discards_used or 0) == 0 and G.GAME.blind.boss then
        card.ability.extra.active = true
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    if card.ability.extra.active then
      card.ability.extra.active = false
      G.E_MANAGER:add_event(Event({
        func = (function()
          add_tag(Tag('tag_garbage'))
          play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
          play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
          return true
        end)
      }))
    end
  end,
  attributes = {"discard", "economy", "chips", "scaling", "tag", "generation"},
}
-- Zorua 570
local zorua = {
  name = "zorua", 
  pos = { x = 6, y = 5 },
  soul_pos = { x = 99, y = 99 },
  config = {extra = {hidden_key = nil, rounds = 5, active = true}},
  loc_vars = function(self, info_queue, card)
    local main_end

    if card.area and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      main_end = poke_blueprint_compat_ui(card ~= other_joker and other_joker)
    end

    return {vars = {card.ability.extra.rounds, colours = {not card.ability.extra.active and G.C.UI.TEXT_INACTIVE}}, main_end = main_end}
  end,
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  rental_compat = false,
  get_illusion = function(self, card)
    if card.ability and card.ability.extra
        and card.area ~= G.jokers
        and not poke_is_in_collection(card) then
      return G.P_CENTERS[card.ability.extra.hidden_key]
    end
  end,
  calculate = function(self, card, context)
    local other_joker = G.jokers.cards[#G.jokers.cards]
    if card.ability.extra.active and other_joker and other_joker ~= card then
      local ret = SMODS.blueprint_effect(card, other_joker, context)

      if ret then
        ret.colour = G.C.BLACK
        SMODS.calculate_effect(ret, card)
      end

      if context.after then
        G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.2,
          func = function()
            card.ability.extra.active = false
            SMODS.calculate_effect({message = localize('poke_reveal_ex')}, card)
            return true
          end
        }))
      end
    end
    if context.end_of_round and context.game_over == false and context.main_eval and not card.ability.extra.active then
      card.ability.extra.active = true
      return {
        message = localize('k_reset')
      }
    end
    return level_evo(self, card, context, "j_poke_zoroark")
  end,
  set_card_type_badge = function(self, card, badges)
    poke_set_card_type_badge(card, badges, self:get_illusion(card))
  end,
  set_sprites = function(self, card, front)
    local center = self:get_illusion(card)
    if center then
      card:set_sprites(center)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      -- Initialize the Illusion
      if not poke_type_sticker_applied(card) then apply_type_sticker(card, "Dark") end
      if not card.ability.extra.hidden_key then
        card.ability.extra.hidden_key = get_random_poke_key_options {
          key_append = 'zorua',
          rarity = 'Common',
          exclude_types = 'Dark',
        }
      end

      self:set_sprites(card)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    card.ability.extra.hidden_key = nil
    poke_reset_sprite(card)
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local center = self:get_illusion(card)
    if center then
      return poke_generate_illusion_ui(center, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    end
    return SMODS.Center.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      if card.ability.extra.active and not card.debuff
          and other_joker.children.center.atlas.px == 71 -- Disables Unown Swarm drawing, because I just couldn't be bothered today.
          and other_joker and other_joker ~= card
          and other_joker.config.center.blueprint_compat then
        poke_copy_joker_sprites(card, other_joker)
      else
        poke_reset_sprite(card)
      end
    end
  end,
  attributes = {"copying", "round_evo"},
}
return {name = "Pokemon Jokers 541-570", 
        list = {trubbish, garbodor, zorua},
}
