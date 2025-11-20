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
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.chips > 0 then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
  end,
  calc_dollar_bonus = function(self, card)
    if G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 then
      card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.discards_left)
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
      card.ability.extra.triggers = card.ability.extra.triggers + 1
      if card.ability.extra.triggers >= self.config.evo_rqmt and not next(find_joker("everstone")) then
        poke_evolve(card, "j_poke_garbodor")
      end
      local earned = ease_poke_dollars(card, "trubbish", G.GAME.current_round.discards_left * card.ability.extra.money, true)
      return earned
    end
  end,
}
-- Garbodor 569
local garbodor={
  name = "garbodor",
  pos = {x = 5, y = 5},
  config = {extra = {chips = 0,chip_mod = 5,triggers = 0}},
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
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and card.ability.extra.chips > 0 then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      if G.GAME.current_round.discards_used == 0 and G.GAME.current_round.discards_left > 0 and not context.blueprint then
        card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * G.GAME.current_round.discards_left)
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex"), colour = G.C.CHIPS})
      end
      if ((G.GAME.poke_ante_discards_used or 0) == 0) and G.GAME.blind.boss then
        G.E_MANAGER:add_event(Event({
          func = (function()
              add_tag(Tag('tag_garbage'))
              play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
              play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
              return true
          end)
        }))
      end
    end
  end,
}
-- Zorua 570
local zorua = {
  name = "zorua", 
  pos = { x = 6, y = 5 },
  soul_pos = { x = 99, y = 99 },
  config = {extra = {hidden_key = nil, rounds = 5, active = true}},
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  rental_compat = false,
  calculate = function(self, card, context)
    local other_joker = G.jokers.cards[#G.jokers.cards]
    if other_joker and other_joker ~= card and not context.no_blueprint and card.ability.extra.active then
      context.blueprint = (context.blueprint or 0) + 1
      context.blueprint_card = context.blueprint_card or card
      if context.blueprint > #G.jokers.cards + 1 then return end

      local other_joker_ret = Card.calculate_joker(other_joker, context)

      context.blueprint = nil
      local eff_card = context.blueprint_card or card
      context.blueprint_card = nil
      if other_joker_ret then 
        other_joker_ret.card = eff_card
        other_joker_ret.colour = G.C.BLACK
        return other_joker_ret
      end
    end
    if context.after and G.jokers.cards[#G.jokers.cards] ~= card and card.ability.extra.active then
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function() 
          card.ability.extra.active = false
          card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_reveal_ex')})
      return true end }))
    end
    if context.end_of_round and not context.individual and not context.repetition then
      card.ability.extra.active = true
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_reset')})
    end
    return level_evo(self, card, context, "j_poke_zoroark")
  end,
  set_card_type_badge = function(self, card, badges)
    local card_type = SMODS.Rarity:get_rarity_badge(card.config.center.rarity)
    local card_type_colour = get_type_colour(card.config.center or card.config, card)
    if card.area and card.area ~= G.jokers and not poke_is_in_collection(card) then
      local _o = G.P_CENTERS[card.ability.extra.hidden_key]
      card_type = SMODS.Rarity:get_rarity_badge(_o.rarity)
      card_type_colour = get_type_colour(_o, card)
    end
    badges[#badges + 1] = create_badge(card_type, card_type_colour, nil, 1.2)
  end,
  set_sprites = function(self, card, front)
    if card.ability and card.ability.extra and card.ability.extra.hidden_key then
      self:set_ability(card)
    end
  end,
  set_ability = function(self, card, initial, delay_sprites)
    if not type_sticker_applied(card) and not poke_is_in_collection(card) and not G.SETTINGS.paused then
      apply_type_sticker(card, "Dark")
    end
    if card.area ~= G.jokers and not poke_is_in_collection(card) and not G.SETTINGS.paused then
      card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zorua', nil, 1)
      local _o = G.P_CENTERS[card.ability.extra.hidden_key]
      card.children.center.atlas = G.ASSET_ATLAS[_o.atlas]
      card.children.center:set_sprite_pos(_o.pos)
    else
      card.children.center.atlas = G.ASSET_ATLAS[self.atlas]
      card.children.center:set_sprite_pos(self.pos)
    end
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or card
    card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zorua', nil, 1)
    local _o = G.P_CENTERS[card.ability.extra.hidden_key]
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      local temp_ability = card.ability
      card.ability = _o.config
      _o:generate_ui(info_queue, card, desc_nodes, specific_vars, full_UI_table)
      if not full_UI_table.name then
        full_UI_table.name = localize({ type = "name", set = _o.set, key = _o.key, nodes = full_UI_table.name })
      end
      card.ability = temp_ability
      if full_UI_table.name[1].nodes[1] then
        local textDyna = full_UI_table.name[1].nodes[1].nodes[1].config.object
        textDyna.string = textDyna.string .. localize("poke_illusion")
        textDyna.config.string = {textDyna.string}
        textDyna.strings = {}
        textDyna:update_text(true)
      end
      card.children.center.atlas = G.ASSET_ATLAS[_o.atlas]
      card.children.center:set_sprite_pos(_o.pos)
      local poketype_list = {Grass = true, Fire = true, Water = true, Lightning = true, Psychic = true, Fighting = true, Colorless = true, Dark = true, Metal = true, Fairy = true, Dragon = true, Earth = true}
      for i = #info_queue, 1, -1 do
        if info_queue[i].set == "Other" and info_queue[i].key and poketype_list[info_queue[i].key] then
          table.remove(info_queue, i)
        end
      end
    else
      if not full_UI_table.name then
        full_UI_table.name = localize({ type = "name", set = _c.set, key = _c.key, nodes = full_UI_table.name })
      end
      card.ability.blueprint_compat_ui = card.ability.blueprint_compat_ui or ''
      card.ability.blueprint_compat_check = nil
      local main_end = (card.area and card.area == G.jokers) and {
        {n=G.UIT.C, config={align = "bm", minh = 0.4}, nodes={
          {n=G.UIT.C, config={ref_table = card, align = "m", colour = G.C.JOKER_GREY, r = 0.05, padding = 0.06, func = 'blueprint_compat'}, nodes={
            {n=G.UIT.T, config={ref_table = card.ability, ref_value = 'blueprint_compat_ui',colour = G.C.UI.TEXT_LIGHT, scale = 0.32*0.8}},
          }}
        }}
      } or nil
      localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {card.ability.extra.rounds, colours = {not card.ability.extra.active and G.C.UI.TEXT_INACTIVE}}}
      desc_nodes[#desc_nodes+1] = main_end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers  then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      card.ability.blueprint_compat = ( other_joker and other_joker ~= card and not other_joker.debuff and other_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
      if card.ability.blueprint_compat == 'compatible' and not card.debuff and card.ability.extra.active and other_joker.children.center.atlas.px == 71 then
        card.children.center.atlas = other_joker.children.center.atlas
        card.children.center:set_sprite_pos(other_joker.children.center.sprite_pos)
        if other_joker.children.floating_sprite then
          card.children.floating_sprite.atlas = other_joker.children.floating_sprite.atlas
          card.children.floating_sprite:set_sprite_pos(other_joker.children.floating_sprite.sprite_pos)
        else
          card.children.floating_sprite.atlas = G.ASSET_ATLAS[self.atlas]
          card.children.floating_sprite:set_sprite_pos(self.soul_pos)
        end
      else
        card.children.center.atlas = G.ASSET_ATLAS[card.edition and card.edition.poke_shiny and "poke_AtlasJokersBasicNatdexShiny" or "poke_AtlasJokersBasicNatdex"]
        card.children.center:set_sprite_pos(self.pos)
        card.children.floating_sprite.atlas = G.ASSET_ATLAS[card.edition and card.edition.poke_shiny and "poke_AtlasJokersBasicNatdexShiny" or "poke_AtlasJokersBasicNatdex"]
        card.children.floating_sprite:set_sprite_pos(self.soul_pos)
      end
    elseif poke_is_in_collection(card) and card.children.center.sprite_pos ~= self.pos and card.children.center.atlas.name ~= self.atlas then
      self:set_ability(card)
    end
  end,
}
return {name = "Pokemon Jokers 541-570", 
        list = {trubbish, garbodor, zorua},
}
