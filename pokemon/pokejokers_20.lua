-- Zoroark 571
local zoroark = {
  name = "zoroark", 
  pos = { x = 7, y = 5 },
  soul_pos = { x = 99, y = 99 },
  config = {extra = {hidden_key = nil}},
  rarity = "poke_safari",
  cost = 12,
  stage = "One",
  ptype = "Dark",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  calculate = function(self, card, context)
    local other_joker = G.jokers.cards[#G.jokers.cards]
    if other_joker and other_joker ~= card then
      local ret = SMODS.blueprint_effect(card, other_joker, context)
      if ret then ret.colour = G.C.BLACK end
      return ret
    end
  end,
  set_card_type_badge = function(self, card, badges)
    local card_type = SMODS.Rarity:get_rarity_badge(card.config.center.rarity)
    local card_type_colour = get_type_colour(card.config.center or card.config, card)
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
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
    G.E_MANAGER:add_event(Event({
      func = function()
        if card.area ~= G.jokers and not G.SETTINGS.paused then
          card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zoroark', nil, 'poke_safari', nil, nil, {j_poke_zoroark = true})
          local _o = G.P_CENTERS[card.ability.extra.hidden_key]
          card.children.center.atlas = SMODS.get_atlas(_o.atlas)
          card.children.center:set_sprite_pos(_o.pos)
        else
          card.children.center.atlas = SMODS.get_atlas(self.atlas)
          card.children.center:set_sprite_pos(self.pos)
        end
        return true
      end }))
  end,
  generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    local _c = card and card.config.center or card
    card.ability.extra.hidden_key = card.ability.extra.hidden_key or get_random_poke_key('zoroark', nil, 'poke_safari', nil, nil, {j_poke_zoroark = true})
    local _o = G.P_CENTERS[card.ability.extra.hidden_key]
    if card.area ~= G.jokers and not poke_is_in_collection(card) then
      local temp_ability = card.ability
      card.ability = _o.config
      _o:generate_ui(info_queue, card, desc_nodes, specific_vars, full_UI_table)
      card.ability = temp_ability
      if full_UI_table.name[1].nodes[1] then
        local textDyna = full_UI_table.name[1].nodes[1].nodes[1].config.object
        textDyna.string = textDyna.string .. localize("poke_illusion")
        textDyna.config.string = {textDyna.string}
        textDyna.strings = {}
        textDyna:update_text(true)
      end
      card.children.center.atlas = SMODS.get_atlas(_o.atlas)
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
      localize{type = 'descriptions', key = _c.key, set = _c.set, nodes = desc_nodes, vars = {}}
      desc_nodes[#desc_nodes+1] = main_end
    end
  end,
  update = function(self, card, dt)
    if G.STAGE == G.STAGES.RUN and card.area == G.jokers then
      local other_joker = G.jokers.cards[#G.jokers.cards]
      card.ability.blueprint_compat = ( other_joker and other_joker ~= card and not other_joker.debuff and other_joker.config.center.blueprint_compat and 'compatible') or 'incompatible'
      if card.ability.blueprint_compat == 'compatible' and not card.debuff and other_joker.children.center.atlas.px == 71 then
        card.children.center.atlas = other_joker.children.center.atlas
        card.children.center:set_sprite_pos(other_joker.children.center.sprite_pos)
        if other_joker.children.floating_sprite then
          card.children.floating_sprite.atlas = other_joker.children.floating_sprite.atlas
          card.children.floating_sprite:set_sprite_pos(other_joker.children.floating_sprite.sprite_pos)
        else
          card.children.floating_sprite.atlas = SMODS.get_atlas(self.atlas)
          card.children.floating_sprite:set_sprite_pos(self.soul_pos)
        end
      else
        card.children.center.atlas = SMODS.get_atlas(card.edition and card.edition.poke_shiny and "poke_AtlasJokersBasicNatdexShiny" or "poke_AtlasJokersBasicNatdex")
        card.children.center:set_sprite_pos(self.pos)
        card.children.floating_sprite.atlas = SMODS.get_atlas(card.edition and card.edition.poke_shiny and "poke_AtlasJokersBasicNatdexShiny" or "poke_AtlasJokersBasicNatdex")
        card.children.floating_sprite:set_sprite_pos(self.soul_pos)
      end
    elseif poke_is_in_collection(card) and card.children.center.sprite_pos ~= self.pos and card.children.center.atlas.name ~= self.atlas then
      self:set_ability(card)
    end
  end,
  attributes = {"copying"},
}
-- Minccino 572
-- Cinccino 573
-- Gothita 574
local gothita={
  name = "gothita", 
  pos = {x = 10, y = 5},
  config = {extra = {rounds = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic",
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  knockoff_pseudol = true,
  blueprint_compat = false,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gothorita")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space", "round_evo"},
}
-- Gothorita 575
local gothorita={
  name = "gothorita", 
  pos = {x = 11, y = 5},
  config = {extra = {rounds = 4}},
  blueprint_compat = false,
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds}}
  end,
  rarity = 2, 
  cost = 8, 
  stage = "One", 
  ptype = "Psychic",
  atlas = "Pokedex5",
  gen = 5,
  calculate = function(self, card, context)
    return level_evo(self, card, context, "j_poke_gothitelle")
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space", "round_evo"},
}
-- Gothitelle 576
local gothitelle={
  name = "gothitelle", 
  pos = {x = 12, y = 5},
  config = {extra = {money = 2}}, 
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.money}}
  end,
  rarity = "poke_safari", 
  cost = 10, 
  stage = "Two", 
  atlas = "Pokedex5",
  gen = 5,
  ptype = "Psychic",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
      ease_poke_dollars(card, "gothitelle", card.ability.extra.money)
    end
  end,
  add_to_deck = function(self, card, from_debuff)
      G.E_MANAGER:add_event(Event({func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true end }))
  end,
  remove_from_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({func = function()
      for k, v in pairs(G.I.CARD) do
          if v.set_cost then v:set_cost() end
      end
      return true end }))
  end,
  attributes = {"passive", "planet", "economy", "space"},
}
-- Solosis 577
-- Duosion 578
-- Reuniclus 579
-- Ducklett 580
-- Swanna 581
-- Vanillite 582
local vanillite={
  name = "vanillite", 
  pos = {x = 4, y = 6}, 
  config = {extra = {chips = 60, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  volatile = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
    return level_evo(self, card, context, "j_poke_vanillish")
  end,
  attributes = {"chips", "scaling", "food", "volatile", "round_evo"},
}
-- Vanillish 583
local vanillish={
  name = "vanillish", 
  pos = {x = 5, y = 6}, 
  config = {extra = {chips = 100, chips_minus = 10, rounds = 3, triggered = false, volatile = 'left'}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = {set = 'Other', key = 'poke_volatile_'..center.ability.extra.volatile}
    end
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, center.ability.extra.chips_minus}}
  end,
  rarity = 2, 
  cost = 6, 
  stage = "One", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  volatile = true,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
    return level_evo(self, card, context, "j_poke_vanilluxe")
  end,
  attributes = {"chips", "scaling", "food", "volatile", "round_evo"},
}
-- Vanilluxe 584
local vanilluxe={
  name = "vanilluxe", 
  pos = {x = 6, y = 6}, 
  config = {extra = {chips = 140, chips_minus = 10, tags = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chips_minus, center.ability.extra.tags}}
  end,
  rarity = 3, 
  cost = 7, 
  stage = "Two", 
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.joker_main and volatile_active(self, card, card.ability.extra.volatile) then
      card.ability.extra.triggered = true
      return {
        chips = card.ability.extra.chips
      }
    end
    if context.after and card.ability.extra.triggered and not context.blueprint then
      card.ability.extra.triggered = false
      if card.ability.extra.chips - card.ability.extra.chips_minus <= 0 then
        SMODS.destroy_cards(card, nil, nil, true)

        G.E_MANAGER:add_event(Event({
          func = (function()
            for _ = 1, card.ability.extra.tags do
              add_tag(Tag('tag_double'))
            end
            play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
            play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
            return true
          end)
        }))

        return {
          message = localize('k_melted_ex'),
          colour = G.C.CHIPS
        }
      else
        SMODS.scale_card(card, {
          ref_value = "chips",
          scalar_value = "chips_minus",
          operation = "-",
          message_key = 'a_chips_minus',
          message_colour = G.C.CHIPS,
        })
      end
    end
  end,
  attributes = {"chips", "scaling", "food", "tag", "generation"},
}
-- Deerling 585
local deerling = {
  name = "deerling",
  pos = {x = 2, y = 1},
  config = { extra = {chips = 0, chip_mod = 2, season_suit = 'Hearts', season = get_starting_season(), form = get_starting_season()}, evo_rqmt = 40},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	local alt_key = nil
	if center.ability.extra.form == 0 then
      alt_key = "j_poke_deerling"
	  self:set_suit(center)
    elseif center.ability.extra.form == 1 then
      alt_key = "j_poke_deerling_summer"
	  self:set_suit(center)
	elseif center.ability.extra.form == 2 then
      alt_key = "j_poke_deerling_fall"
	  self:set_suit(center)
	elseif center.ability.extra.form == 3 then
	  alt_key = "j_poke_deerling_winter"
	  self:set_suit(center)
	end
    return { vars = {center.ability.extra.chip_mod, center.ability.extra.chips, center.ability.extra.season_suit, self.config.evo_rqmt}, key = alt_key }
  end,
  rarity = 1,
  cost = 4,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = true,
  perishable_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	card.ability.extra.form = card.ability.extra.season
	self:set_sprites(card)
    if context.before and not context.blueprint then
      if context.cardarea == G.jokers and context.scoring_hand then
          local target_suit = false
		  local other_suit = false
		  local suit_count = 0
          for k, v in ipairs(context.scoring_hand) do
            if v:is_suit(card.ability.extra.season_suit) then
              suit_count = suit_count + 1
              if not target_suit then target_suit = true end
			else
				if not other_suit then other_suit = true end
			end
          end
          if target_suit and other_suit then
			card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod*suit_count)
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.CHIPS
            }
		  end
      end
    end
		
    if context.joker_main and card.ability.extra.chips > 0 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips
          }
    end

    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint and G.GAME.blind.boss and not context.game_over then
		card.ability.extra.season = get_next_season(card.ability.extra.season)
		card.ability.extra.form = card.ability.extra.season
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_deerling_ex')})
		card:juice_up()
        self:set_suit(card)
		self:set_sprites(card)
    end
	
	return scaling_evo(self, card, context, "j_poke_sawsbuck", card.ability.extra.chips, self.config.evo_rqmt)

	end,
  set_ability = function(self, card, initial, delay_sprites)
	  self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    --Change Form
		if card.ability and card.ability.extra and card.ability.extra.form == 0 then --Spring Form
		  card.children.center:set_sprite_pos({x = 2, y = 1})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 1 then --Summer Form
		  card.children.center:set_sprite_pos({x = 4, y = 1})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then --Fall Form
		  card.children.center:set_sprite_pos({x = 6, y = 1})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then --Winter Form
		  card.children.center:set_sprite_pos({x = 8, y = 1})
		end
  end,
   set_suit = function(self, card, front)
    --Change Form
		if card.ability and card.ability.extra and card.ability.extra.form == 0 then --Spring Form
		  card.ability.extra.season_suit = 'Hearts'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 1 then --Summer Form
		  card.ability.extra.season_suit = 'Clubs'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then --Fall Form
		  card.ability.extra.season_suit = 'Diamonds'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then --Winter Form
		  card.ability.extra.season_suit = 'Spades'
		end
  end,
  get_random_season = function()
	return math.floor(4 * pseudorandom('deerling'))
  end,
}
-- Sawsbuck 586
local sawsbuck = {
  name = "sawsbuck",
  pos = {x = 10, y = 1},
  config = { extra = {chips = 0, chip_mod = 4, season_suit = 'Hearts', season = get_starting_season(), form = get_starting_season()}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	local alt_key = nil
	if center.ability.extra.form == 0 then
      alt_key = "j_poke_sawsbuck"
	  self:set_suit(center)
    elseif center.ability.extra.form == 1 then
      alt_key = "j_poke_sawsbuck_summer"
	  self:set_suit(center)
	elseif center.ability.extra.form == 2 then
      alt_key = "j_poke_sawsbuck_fall"
	  self:set_suit(center)
	elseif center.ability.extra.form == 3 then
	  alt_key = "j_poke_sawsbuck_winter"
	  self:set_suit(center)
	end
    return { vars = {center.ability.extra.chip_mod, center.ability.extra.chips, center.ability.extra.season_suit}, key = alt_key }
  end,
  rarity = "poke_safari",
  cost = 8,
  condition = false,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = true,
  perishable_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	card.ability.extra.form = card.ability.extra.season
	self:set_sprites(card)
    if context.before and not context.blueprint then
      if context.cardarea == G.jokers and context.scoring_hand then
          local target_suit = false
		  local other_suit = false
		  local suit_count = 0
          for k, v in ipairs(context.scoring_hand) do
            if v:is_suit(card.ability.extra.season_suit) then
              suit_count = suit_count + 1
              if not target_suit then target_suit = true end
			else
				if not other_suit then other_suit = true end
			end
          end
          if target_suit and other_suit then
			card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod*suit_count)
            return {
              message = localize('k_upgrade_ex'),
              colour = G.C.CHIPS
            }
		  end
      end
    end
		
    if context.joker_main and card.ability.extra.chips > 0 then
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips
          }
    end
    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint and G.GAME.blind.boss and not context.game_over then
		card.ability.extra.season = get_next_season(card.ability.extra.season)
		card.ability.extra.form = card.ability.extra.season
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_deerling_ex')})
		card.ability.extra.reset_val = 0
		card:juice_up()
        self:set_suit(card)
        self:set_sprites(card)
    end
	end,
  set_ability = function(self, card, initial, delay_sprites)
	  self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    --Change Form
		if card.ability and card.ability.extra and card.ability.extra.form == 0 then --Spring Form
		  card.children.center:set_sprite_pos({x = 10, y = 1})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 1 then --Summer Form
		  card.children.center:set_sprite_pos({x = 0, y = 2})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then --Fall Form
		  card.children.center:set_sprite_pos({x = 2, y = 2})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then --Winter Form
		  card.children.center:set_sprite_pos({x = 4, y = 2})
		end
  end,
   set_suit = function(self, card, front)
    --Change Form
		if card.ability and card.ability.extra and card.ability.extra.form == 0 then --Spring Form
		  card.ability.extra.season_suit = 'Hearts'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 1 then --Summer Form
		  card.ability.extra.season_suit = 'Clubs'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then --Fall Form
		  card.ability.extra.season_suit = 'Diamonds'
		elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then --Winter Form
		  card.ability.extra.season_suit = 'Spades'
		end
  end,
}
-- Emolga 587
-- Karrablast 588
local karrablast = {
  name = "karrablast",
  pos = { x = 10, y = 6 },
  config = { extra = {mult_mod = 3, mult = 3}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return { vars = {card.ability.extra.mult_mod, card.ability.extra.mult} }
  end,
  rarity = 2,
  cost = 6,
  item_req = "linkcable",
  condition = false,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = true,
  perishable_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		return {
			  message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult - card.ability.extra.mult_mod}}, 
			  colour = G.C.MULT,
			  mult_mod = card.ability.extra.mult - card.ability.extra.mult_mod
			}
	end
	if context.end_of_round then
		card.ability.extra.mult = card.ability.extra.mult_mod
	end
	return item_evo_with_condition(self, card, context, "j_poke_escavalier", self.meets_condition(card))
  end,
  meets_condition = function(card)
	  local var = find_other_pokemon_type(card, "Grass") > 0
	  card.config.center.condition = var
	  return card.config.center.condition
  end,
}
-- Escavalier 589
local escavalier = {
  name = "escavalier",
  pos = { x = 11, y = 6 },
  config = { extra = {mult_mod = 10, mult = 10, tag = nil, tag_name = nil, target_goal = 2}},
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    return { vars = {card.ability.extra.mult_mod, card.ability.extra.mult, card.ability.extra.tag_name or "None", card.ability.extra.target_goal}}
  end,
  rarity = "poke_safari",
  cost = 9,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex5",
  volatile = true,
  blueprint_compat = false,
  perishable_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
		--Orbital tags currently take the largest poker hand instead of the one from the tag. Need to figure out how to grab the existing tag instead of only the key.
		if G.GAME.blind_on_deck == 'Small' then
			card.ability.extra.tag = Tag(G.GAME.round_resets.blind_tags.Small)
			card.ability.extra.tag_name = Tag(G.GAME.round_resets.blind_tags.Small).name
			if G.GAME.round_resets.blind_tags.Small == 'tag_orbital' then
				card.ability.extra.tag_name = Tag(G.GAME.round_resets.blind_tags.Small).name .. ": " .. get_largest_poker_hand_name()
				card.ability.extra.tag.ability.orbital_hand = get_largest_poker_hand_name()
			end
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Add Tag"})
		elseif G.GAME.blind_on_deck == 'Big' then
			card.ability.extra.tag = Tag(G.GAME.round_resets.blind_tags.Big)
			card.ability.extra.tag_name = Tag(G.GAME.round_resets.blind_tags.Big).name
			if G.GAME.round_resets.blind_tags.Big == 'tag_orbital' then
				card.ability.extra.tag_name = Tag(G.GAME.round_resets.blind_tags.Big).name .. ": " .. get_largest_poker_hand_name()
				card.ability.extra.tag.ability.orbital_hand = get_largest_poker_hand_name()
			end
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Add Tag"})
	    end
	end
	if context.cardarea == G.jokers and context.scoring_hand and context.joker_main then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		return {
			  message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult - card.ability.extra.mult_mod}}, 
			  colour = G.C.MULT,
			  mult_mod = card.ability.extra.mult - card.ability.extra.mult_mod
			}
	end
	 if context.end_of_round then
		card.ability.extra.mult = card.ability.extra.mult_mod
		if not context.individual and not context.repetition and not context.blueprint and G.GAME.chips/G.GAME.blind.chips >= card.ability.extra.target_goal then
			if card.ability.extra.tag then
				add_tag(card.ability.extra.tag)
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_escavalier_ex'), colour = G.C.FILTER})
			end
		end
		card.ability.extra.tag = nil
		card.ability.extra.tag_name = nil
	end
  end,
}
-- Foongus 590
-- Amoonguss 591
-- Frillish 592
local frillish = {
  name = "frillish",
  pos = {x = 0, y = 7},
  config = {extra = {chips = 0, chip_mod = 2}, evo_rqmt = 60},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod, self.config.evo_rqmt}}
  end,
  designer = "Hwang2760",
  rarity = 2,
  cost = 7,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.discard and not context.blueprint
        and context.other_card:is_face() then
      SMODS.scale_card(card, {
        ref_value = 'chips',
        scalar_value = 'chip_mod',
        message_colour = G.C.CHIPS,
        message_delay = 0.45
      })
    end
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
    return scaling_evo(self, card, context, "j_poke_jellicent", card.ability.extra.chips, self.config.evo_rqmt)
  end,
  attributes = {"chips", "scaling", "discard", "face", "scaling_evo"},
}

-- Jellicent 593
local jellicent = {
  name = "jellicent",
  pos = {x = 1, y = 7},
  config = {extra = {chips = 60, chip_mod = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.chip_mod}}
  end,
  designer = "Hwang2760",
  rarity = "poke_safari",
  cost = 10,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex5",
  gen = 5,
  blueprint_compat = true,
  perishable_compat = false,
  calculate = function(self, card, context)
    if context.discard and not context.blueprint
        and context.other_card:is_face() then
      local card_id = context.other_card:get_id()

      SMODS.scale_card(card, {
        ref_value = 'chips',
        scalar_value = 'chip_mod',
        operation = function(ref_table, ref_value, initial, modifier)
          local multi = (card_id == 12 or card_id == 13) and 2 or 1
          ref_table[ref_value] = initial + modifier * multi
        end,
        message_colour = G.C.CHIPS,
        message_delay = 0.45
      })
    end
    if context.joker_main then
      return {
        chips = card.ability.extra.chips
      }
    end
	end,
  attributes = {"chips", "scaling", "discard", "face", "rank", "king", "queen"},
}
-- Alomomola 594
-- Joltik 595
-- Galvantula 596
-- Ferroseed 597
local ferroseed={
  name = "ferroseed",
  pos = {x = 5, y = 7},
  config = {extra = {rounds = 5, hazard_level = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
      info_queue[#info_queue+1] = {set = 'Other', key = 'hazard_level', vars = poke_get_hazard_level_vars()}
    end
    return {vars = {center.ability.extra.rounds, center.ability.extra.hazard_level}}
  end,
  rarity = 2,
  cost = 6,
  gen = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_wild') or SMODS.has_enhancement(context.other_card, 'm_poke_hazard') then
          return {m_steel = true}
      end
    end
    return level_evo(self, card, context, "j_poke_ferrothorn")
  end,
  add_to_deck = function(self, card, from_debuff)
    poke_change_hazard_level(card.ability.extra.hazard_level)
  end,
  remove_from_deck = function(self, card, from_debuff)
    poke_change_hazard_level(-card.ability.extra.hazard_level)
  end,
  attributes = {"hazards", "passive", "modify_card", "enhancements", "round_evo"},
}
-- Ferrothorn 598
local ferrothorn={
  name = "ferrothorn",
  pos = {x = 6, y = 7},
  config = {extra = {retriggers = 1, hazard_level = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_wild
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_poke_hazard
      info_queue[#info_queue+1] = {set = 'Other', key = 'hazard_level', vars = poke_get_hazard_level_vars()}
    end
    return {vars = {center.ability.extra.hazard_level}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 5,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex5",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_wild') or SMODS.has_enhancement(context.other_card, 'm_poke_hazard') then
          return {m_steel = true}
      end
    end
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.before and next(context.poker_hands['Flush']) then
        card.ability.extra.retrigger_hand = true
      end
      if context.after and card.ability.extra.retrigger_hand then
        card.ability.extra.retrigger_hand = nil
      end
    end
    if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1) and card.ability.extra.retrigger_hand 
       and SMODS.has_enhancement(context.other_card, 'm_steel') then
      return {
        message = localize('k_again_ex'),
        repetitions = card.ability.extra.retriggers,
        card = card
      }
    end
  end,
  add_to_deck = function(self, card, from_debuff)
    poke_change_hazard_level(card.ability.extra.hazard_level)
  end,
  remove_from_deck = function(self, card, from_debuff)
    poke_change_hazard_level(-card.ability.extra.hazard_level)
  end,
  attributes = {"hazards", "passive", "modify_card", "enhancements", "hand_type", "retrigger"},
}
-- Klink 599
-- Klang 600
return {name = "Pokemon Jokers 570-600", 
        list = {zoroark, gothita, gothorita, gothitelle, vanillite, vanillish, vanilluxe, deerling, sawsbuck, karrablast, escavalier, frillish, jellicent, ferroseed, ferrothorn},
}
