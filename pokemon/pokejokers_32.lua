local squawkabilly = {
  name = "squawkabilly",
  pos = {x = 8, y = 0},
  config = { extra = { form = math.random(0, 3), mult = 0, chips = 0, money_per_hand = 0, Xmult = 0, money = 0, is_enemy = false, threat = 0 } }, 
   loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    
    local extra = center.ability and center.ability.extra or center.config and center.config.extra
    local current_form = extra and extra.form or 0
    local is_enemy = extra and extra.is_enemy or false
    
    local alt_key = "j_poke_squawkabilly"
    if is_enemy then
        if current_form == 0 then alt_key = "j_poke_squawkabilly_ge"
        elseif current_form == 1 then alt_key = "j_poke_squawkabilly_be"
        elseif current_form == 2 then alt_key = "j_poke_squawkabilly_ye"
        elseif current_form == 3 then alt_key = "j_poke_squawkabilly_we" end
    else
        if current_form == 1 then alt_key = "j_poke_squawkabilly_b"
        elseif current_form == 2 then alt_key = "j_poke_squawkabilly_y"
        elseif current_form == 3 then alt_key = "j_poke_squawkabilly_w" end
    end
    
    local val_mult  = extra and extra.mult or 0
    local val_chips = extra and extra.chips or 0
    local val_xmult = extra and extra.Xmult or 0.0
    local val_money = extra and (is_enemy and extra.money_per_hand or extra.money) or 0
    local val_threat = extra and extra.threat or 0
    
    local display_mult, display_chips, display_money, display_xmult
    if is_enemy then
        if val_mult == 0 and val_chips == 0 and val_money == 0 and val_xmult == 0.0 then
            display_mult  = (current_form == 0 and -4 or 0)
            display_chips = (current_form == 1 and -35 or 0)
            display_money = (current_form == 2 and -2 or 0)
            display_xmult = (current_form == 3 and -0.15 or 0)
        else
            display_mult  = val_mult
            display_chips = val_chips
            display_money = val_money
            display_xmult = val_xmult
        end
      else
        display_mult  = val_mult  + (current_form == 0 and 3 or 0)
        display_chips = val_chips + (current_form == 1 and 20 or 0)
        display_money = val_money + (current_form == 2 and 1 or 0)
        display_xmult = 1.0 + val_xmult + (current_form == 3 and 0.5 or 0)
    end
    
    return { vars = {display_mult, display_chips, display_money, display_xmult, val_threat}, key = alt_key }
  end,

  rarity = 3,
  cost = 5,
  gen = 9,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = false, 
  eternal_compat = true,

  calculate = function(self, card, context)
    if not card.ability or not card.ability.extra or card.to_be_destroyed then return end
    local current_form = card.ability.extra.form or 0
    local is_enemy = card.ability.extra.is_enemy or false

    if is_enemy then
        card.cost = 0
        card.sell_cost = 0
        card.sell_cost_label = 0
        
        -- Prevent the rival Squawkies from having an edition, since it provides positive value.
        if card.edition then
            card.edition = nil
            if card.set_edition then 
                card:set_edition(nil, true) 
            end
        end
    end

    if context.setting_blind and not context.blueprint and not is_enemy then
        if G.GAME.last_squawk_spawn_round == G.GAME.round then return end

        if G.jokers and G.jokers.cards and #G.jokers.cards >= G.jokers.config.card_limit then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = "No Room!", colour = G.C.RED})
            return 
        end
        
        G.GAME.last_squawk_spawn_round = G.GAME.round
        
        -- Create am 8% chance for your specific color to appear, weighted based on rarity of the color
        local spawn_pool = {}
        local remaining_colors = {}
        if current_form == 0 then remaining_colors = {1, 2, 3}      
        elseif current_form == 1 then remaining_colors = {0, 2, 3}  
        elseif current_form == 2 then remaining_colors = {0, 1, 3}  
        elseif current_form == 3 then remaining_colors = {0, 1, 2}  
        end
        
        -- The other 92% is distributed based on rarity of other colors
        for i = 1, 48 do table.insert(spawn_pool, remaining_colors[1]) end 
        for i = 1, 32 do table.insert(spawn_pool, remaining_colors[2]) end 
        for i = 1, 12 do table.insert(spawn_pool, remaining_colors[3]) end 
        
        for i = 1, 8 do table.insert(spawn_pool, current_form) end
        
        local chosen_form = spawn_pool[math.random(#spawn_pool)]
        
        -- If color matches yours, it is a friendly Squawkie. Otherwise, it is a rival.
        local is_spawn_enemy = (chosen_form ~= current_form)
        pokermon.next_squawk_form = chosen_form
        pokermon.next_squawk_enemy = is_spawn_enemy

        local temp_card = {set = "Joker", area = G.jokers, key = "j_poke_squawkabilly"}
        local add_card = SMODS.create_card(temp_card)
        
        add_card.ability.extra.form  = chosen_form
        add_card.ability.extra.mult  = 0
        add_card.ability.extra.chips = 0
        add_card.ability.extra.money = 0
        add_card.ability.extra.Xmult = 0.0
        local current_ante = G.GAME and G.GAME.round_resets and G.GAME.round_resets.ante or 1
            
        if is_spawn_enemy then
            add_card.ability.extra.is_enemy = true
            if chosen_form == 0 then 
                local max_penalty = math.min(15, 3 + (current_ante * 1.5))
                add_card.ability.extra.mult = -math.random(3, math.floor(max_penalty)) 
                add_card.ability.extra.threat = math.abs(add_card.ability.extra.mult + 2)
            elseif chosen_form == 1 then 
                local max_penalty = math.min(120, 10 + (current_ante * 14))
                add_card.ability.extra.chips = -math.random(10, math.floor(max_penalty))
                add_card.ability.extra.threat = math.floor(math.abs(add_card.ability.extra.chips / 10))
            elseif chosen_form == 2 then 
                local max_penalty = math.min(4, 1 + math.floor(current_ante / 2.5))
                add_card.ability.extra.money_per_hand = -math.random(1, math.max(1, max_penalty))
                add_card.ability.extra.threat = math.abs(add_card.ability.extra.money_per_hand * 3)
            elseif chosen_form == 3 then 
                local max_penalty = math.min(50, 10 + (current_ante * 5))
                add_card.ability.extra.Xmult = -(math.random(10, math.floor(max_penalty)) / 100) 
                add_card.ability.extra.threat = math.floor(math.abs(24 * add_card.ability.extra.Xmult))
            end
        else
            add_card.ability.extra.is_enemy = false
            add_card.ability.extra.threat = 0
            if chosen_form == 0 then add_card.ability.extra.mult = 5
            elseif chosen_form == 1 then add_card.ability.extra.chips = 20
            elseif chosen_form == 2 then add_card.ability.extra.money = 1
            elseif chosen_form == 3 then add_card.ability.extra.Xmult = 1.5 end
        end
        
        -- Set forms for different colors
        if add_card.children and add_card.children.center then
            if chosen_form == 0 then  add_card.children.center:set_sprite_pos({x = 8, y = 0}) -- Green
            elseif chosen_form == 1 then add_card.children.center:set_sprite_pos({x = 0, y = 1}) -- Blue
            elseif chosen_form == 2 then add_card.children.center:set_sprite_pos({x = 2, y = 1}) -- Yellow
            elseif chosen_form == 3 then add_card.children.center:set_sprite_pos({x = 4, y = 1}) -- White
            end
        end
        G.jokers:emplace(add_card)
    end

    -- Destroy rival Squawkies and add value based on "threat" of rivals.
    if context.end_of_round and not context.repetition and not context.individual and not context.blueprint and not is_enemy then
        if G.jokers and G.jokers.cards then
            for _, j in ipairs(G.jokers.cards) do
                -- Make sure friendly Squawkies are not destroyed
                if j.config.center.key == "j_poke_squawkabilly" and j.ability.extra.is_enemy == true and not j.to_be_destroyed then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                          local update_message = ""
                            if current_form == 0 then
                                card.ability.extra.mult = (card.ability.extra.mult or 0) + j.ability.extra.threat
                                update_message = "+" .. j.ability.extra.threat .. " Mult"
                            elseif current_form == 1 then
                                card.ability.extra.chips = (card.ability.extra.chips or 0) + j.ability.extra.threat * 10
                                update_message = "+" .. j.ability.extra.threat * 10 .. " Chips"
                            elseif current_form == 2 then
                                ease_dollars(j.ability.extra.threat)
                                update_message = "+$" .. j.ability.extra.threat
                            elseif current_form == 3 then
                                card.ability.extra.Xmult = (card.ability.extra.Xmult or 0) + j.ability.extra.threat / 10.0
                                update_message = string.format("X%0.1f", card.ability.extra.threat * 0.1)
                            end
                            card_eval_status_text(card, 'extra', nil, nil, nil, {message = update_message, colour = G.C.MULT})
                            j:start_dissolve()
                            return true
                        end
                    }))
                end
            end
        end
    end

    if context.joker_main then
        if is_enemy then
            local e_payload = { card = card, colour = G.C.RED }
            local debuffed = false
            
            local total_mult  = card.ability.extra.mult or 0
            local total_chips = card.ability.extra.chips or 0
            local total_money  = card.ability.extra.money_per_hand or 0
            local total_xmult = card.ability.extra.Xmult or 0

            if total_mult < 0 then 
                e_payload.mult_mod = total_mult 
                debuffed = true 
                e_payload.message = tostring(total_mult) .. " Mult"
            end
            if total_chips < 0 then 
                e_payload.chip_mod = total_chips 
                debuffed = true 
                e_payload.message = tostring(total_chips) .. " Chips"
            end
            if total_xmult < 0 then 
                e_payload.Xmult_mod = 1.0 + total_xmult 
                debuffed = true 
                e_payload.message = "X" .. tostring(1.0 + total_xmult)
            end
            
            if total_money < 0 then
                ease_dollars(total_money)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Siphoned! " .. total_money, colour = G.C.MONEY})
            end
            
            if debuffed then return e_payload end
        
        else
            --Sets the starting stats if you start with the Joker, like for challenges
            local f_payload = {}
            local has_stats = false
            
            local total_mult  = (card.ability.extra.mult or 0) + (current_form == 0 and 1 or 0)
            local total_chips = (card.ability.extra.chips or 0) + (current_form == 1 and 20 or 0)
            local total_xmult = 1.0 + (card.ability.extra.Xmult or 0) + (current_form == 3 and 0.2 or 0)
            
            if total_mult > 0 then f_payload.mult_mod = total_mult has_stats = true end
            if total_chips > 0 then f_payload.chip_mod = total_chips has_stats = true end
            if total_xmult > 1.0 then f_payload.Xmult_mod = total_xmult has_stats = true end
            
            if has_stats then
                f_payload.card = card
                
                if current_form == 0 then
                    f_payload.message = localize{type='variable', key='a_mult', vars={total_mult}}
                    f_payload.colour = G.C.MULT
                elseif current_form == 1 then
                    f_payload.message = localize{type='variable', key='a_chips', vars={total_chips}}
                    f_payload.colour = G.C.CHIPS
                elseif current_form == 3 then
                    f_payload.message = localize{type='variable', key='a_xmult', vars={total_xmult}}
                    f_payload.colour = G.C.XMULT
                else
                    f_payload.message = "+" .. total_mult .. " Mult"
                    f_payload.colour = G.C.MULT
                end
                
                return f_payload
            end
        end
    end
  end,

  set_ability = function(self, card, initial, delay_sprites)
      card.ability.extra = card.ability.extra or { form = 0, mult = 0, chips = 0, money_per_hand = 0, Xmult = 0.0, money = 0, is_enemy = false }
      
      if pokermon.next_squawk_form ~= nil then
          card.ability.extra.form = pokermon.next_squawk_form
          card.ability.extra.is_enemy = pokermon.next_squawk_enemy
          
          pokermon.next_squawk_form = nil
          pokermon.next_squawk_enemy = nil
      end
      self:set_sprites(card)
  end,

  calculate_cost = function(self, card, cost)
      if card.ability and card.ability.extra and card.ability.extra.is_enemy then
          return 0 -- Forces rivals to sell for $0
      end
      return cost
  end,

  set_sprites = function(self, card, front)
    if not card.children or not card.children.center then return end
    local current_form = card.ability and card.ability.extra and card.ability.extra.form or 0

    if current_form == 0 then     card.children.center:set_sprite_pos({x = 8, y = 0}) -- Green Form
    elseif current_form == 1 then card.children.center:set_sprite_pos({x = 0, y = 1}) -- Blue Form
    elseif current_form == 2 then card.children.center:set_sprite_pos({x = 2, y = 1}) -- Yellow Form
    elseif current_form == 3 then card.children.center:set_sprite_pos({x = 4, y = 1}) -- White Form
    end
end,
  attributes = {"mult", "chips", "money", "Xmult", "enhancements"}
}

-- Tadbulb 938
-- Bellibolt 939
-- Wattrel 940
-- Kilowattrel 941
-- Maschiff 942
-- Mabosstiff 943
-- Shroodle 944
-- Grafaiai 945
-- Bramblin 946
local bramblin={
  name = "bramblin",
  pos = {x = 0, y = 0},
  config = {extra = {cards_drawn = 0, seed_added = 0, rank_scored = 0}, evo_rqmt = 160},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    return {vars = {localize(G.GAME.current_round.bramblincard and G.GAME.current_round.bramblincard.rank or "Ace", 'ranks'), math.max(0, self.config.evo_rqmt - center.ability.extra.cards_drawn)}}
  end,
  rarity = 1,
  cost = 6,
  gen = 9,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = false,
  eternal_compat = false,
  calculate = function(self, card, context)
    if context.hand_drawn and SMODS.drawn_cards and not context.blueprint then
      card.ability.extra.cards_drawn = card.ability.extra.cards_drawn + #SMODS.drawn_cards
    end
    if context.before and not context.blueprint and card.ability.extra.seed_added <= 0 then
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == G.GAME.current_round.bramblincard.id then
          card.ability.extra.rank_scored = card.ability.extra.rank_scored + 1
          if card.ability.extra.rank_scored == 2 then
            context.scoring_hand[i]:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                context.scoring_hand[i]:juice_up()
                return true
              end
            }))
            card.ability.extra.seed_added = card.ability.extra.seed_added + 1
            break
          end
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.rank_scored = 0
      card.ability.extra.seed_added = 0
    end
    return pokermon.scaling_evo(self, card, context, "j_poke_brambleghast", card.ability.extra.cards_drawn, self.config.evo_rqmt)
  end,
  attributes = {"rank", "modify_card", "enhancements", "condition_evo"},
}
-- Brambleghast 947
local brambleghast={
  name = "brambleghast",
  pos = {x = 0, y = 0},
  config = {extra = {chip_mod = 2, seed_added = 0, rank_scored = 0, growth = 1}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = G.P_CENTERS.m_poke_seed
    info_queue[#info_queue+1] = {set = 'Other', key = 'growth_level'}
    return {vars = {center.ability.extra.chip_mod, center.ability.extra.chip_mod * math.max(0, (G.GAME.dollars or 0) + (G.GAME.dollar_buffer or 0)),
        localize(G.GAME.current_round.bramblincard and G.GAME.current_round.bramblincard.rank or "Ace", 'ranks'), center.ability.extra.growth}}
  end,
  rarity = "poke_safari",
  cost = 8,
  gen = 9,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex9",
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.joker_main then
      local dollars = (SMODS.Mods["Talisman"] or {}).can_load and to_number(G.GAME.dollars) or G.GAME.dollars
      return {
          chips = card.ability.extra.chip_mod * math.max(0, (dollars + (G.GAME.dollar_buffer or 0)))
      }
    end
    if context.before and not context.blueprint and card.ability.extra.seed_added <= 0 then
      for i = 1, #context.scoring_hand do
        if context.scoring_hand[i]:get_id() == G.GAME.current_round.bramblincard.id then
          card.ability.extra.rank_scored = card.ability.extra.rank_scored + 1
          if card.ability.extra.rank_scored == 2 then
            context.scoring_hand[i]:set_ability(G.P_CENTERS.m_poke_seed, nil, true)
            context.scoring_hand[i].ability.extra.level = 0
            G.E_MANAGER:add_event(Event({
              func = function()
                context.scoring_hand[i]:juice_up()
                return true
              end
            }))
            card.ability.extra.seed_added = card.ability.extra.seed_added + 1
            break
          end
        end
      end
    end
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
      card.ability.extra.rank_scored = 0
      card.ability.extra.seed_added = 0
    end
  end,

  attributes = {"rank", "modify_card", "enhancements", "chips"},
}
-- Toedscool 948
-- Toedscruel 949
-- Klawf 950
-- Capsakid 951
-- Scovillain 952
-- Rellor 953
local rellor = {
	name = "rellor",
	--pos = {x = 14, y = 63},
	config = {extra = { items_used = 0, mult_mod = 1 }, evo_rqmt = 5},
	loc_vars = function(self, info_queue, card)
		pokermon.type_tooltip(self, info_queue, card)
		local mult = ((G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.poke_item or 0) * card.ability.extra.mult_mod)
	    return {vars = {card.ability.extra.mult_mod, mult, math.max(self.config.evo_rqmt - card.ability.extra.items_used, 0 )}}
	end,
	rarity = 1, --Common
	cost = 6,
	stage = "Basic",
	ptype = "Grass",
	gen = 9,
	designer = "Thor's Girdle",
	--atlas = "AtlasJokersBasicNatdex",
	perishable_compat = true,
	blueprint_compat = true,

	calculate = function(self, card, context)
		if context.joker_main  then
			if G.GAME.consumeable_usage_total then
				if G.GAME.consumeable_usage_total.poke_item  and G.GAME.consumeable_usage_total.poke_item > 0 then
					local mult = (G.GAME.consumeable_usage_total.poke_item) * card.ability.extra.mult_mod
					return {
						mult = mult
									}
				end
			end
		end
		if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == "poke_item" then
		card.ability.extra.items_used = card.ability.extra.items_used + 1
			return {
				extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
			}
		end
		return pokermon.scaling_evo(self, card, context, "j_poke_rabsca", card.ability.extra.items_used, self.config.evo_rqmt)
	end,
}
-- Rabsca 954
local rabsca = {
	name = "rabsca",
	--pos = {x = 16, y = 63},
	config = {extra = { mult_mod = 1, num = 1, dem = 4}},
	loc_vars = function(self, info_queue, card)
		pokermon.type_tooltip(self, info_queue, card)
    local mult = ((G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.poke_item or 0) * card.ability.extra.mult_mod)
    local num, dem = SMODS.get_probability_vars(card, card.ability.extra.num, card.ability.extra.dem, 'rabsca')
	  return {vars = {card.ability.extra.mult_mod, mult, num, dem}}
	end,
	rarity = "poke_safari", 
	cost = 8,
	stage = "One",
	ptype = "Grass", --wish it was Psychic :(
	gen = 9,
	designer = "Thor's Girdle",
	perishable_compat = true,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main  then
			if G.GAME.consumeable_usage_total then
				if (G.GAME.consumeable_usage_total.poke_item or 0) > 0 then
					local mult = (G.GAME.consumeable_usage_total.poke_item or 0) * card.ability.extra.mult_mod
					return {
						mult = mult
									}
				end
			end
		end
		if context.using_consumeable and context.consumeable.ability.set == "poke_item" then
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        if SMODS.pseudorandom_probability(card, 'rabsca', card.ability.extra.num, card.ability.extra.dem, 'rabsca') then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          G.E_MANAGER:add_event(Event({
            func = function()
              SMODS.add_card({set = 'Tarot'})
              G.GAME.consumeable_buffer = 0
              return true
            end
          }))
          card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("k_plus_tarot"), colour = G.C.PURPLE})
        end
      end
			return {
				extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
			}
		end
	end,
}
-- Flittle 955
-- Espathra 956
-- Tinkatink 957
local tinkatink={
  name = "tinkatink",
  pos = {x = 0, y = 4},
  config = {extra = {mult = 5,rounds = 5, cards_debuffed = 12}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = 3,
  cost = 7,
  stage = "Basic",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  knockoff_pseudol = true,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkatink'..card.unique_val); end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatink', add_con = add, mod_func = modify}
      pokermon.pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatink'..card.unique_val)
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_tinkatuff")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatink'..card.unique_val)
      end
    end
  end,
  attributes = {"mult", "enhancements", "round_evo"},
}
-- Tinkatuff 958
local tinkatuff={
  name = "tinkatuff",
  pos = {x = 1, y = 4},
  config = {extra = {mult = 10,rounds = 5, cards_debuffed = 16}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 7,
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkatuff'..card.unique_val) end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkatuff', add_con = add, mod_func = modify}
      pokermon.pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatuff'..card.unique_val)
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_tinkaton")
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkatuff'..card.unique_val)
      end
    end
  end,
  attributes = {"mult", "enhancements", "round_evo"},
}
-- Tinkaton 959
local tinkaton={
  name = "tinkaton",
  pos = {x = 2, y = 4},
  config = {extra = {mult = 15,rounds = 5, cards_debuffed = 20}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
    if pokermon_config.detailed_tooltips then
      info_queue[#info_queue+1] = G.P_CENTERS.m_steel
      info_queue[#info_queue+1] = G.P_CENTERS.m_glass
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.rounds, center.ability.extra.cards_debuffed}}
  end,
  rarity = "poke_safari",
  cost = 8,
  stage = "Two",
  ptype = "Fairy",
  atlas = "Pokedex9",
  gen = 9,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.setting_blind then
      local add = function(v) return not SMODS.has_enhancement(v, 'm_steel') end
      local modify = function(v) SMODS.debuff_card(v, true, 'tinkaton'..card.unique_val) end
      local args = {array = G.playing_cards, amt = card.ability.extra.cards_debuffed, seed = 'tinkaton', add_con = add, mod_func = modify}
      pokermon.pseudorandom_multi(args)
    end
    if context.individual and not context.end_of_round and context.cardarea == G.play and not context.other_card.debuff then
      return {
        mult = card.ability.extra.mult,
        card = card
      }
    end
    if context.check_enhancement then
      if SMODS.has_enhancement(context.other_card, 'm_steel') then
          return {m_glass = true}
      end
    end
    if context.end_of_round and not context.individual and not context.repetition then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkaton'..card.unique_val)
      end
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    if not from_debuff or (from_debuff and card.ability.perishable and card.ability.perish_tally == 0) then
      for k, v in pairs(G.playing_cards) do
        SMODS.debuff_card(v,false, 'tinkaton'..card.unique_val)
      end
    end
  end,
  attributes = {"mult", "enhancements", "passive", "modify_card"},
}
-- Wiglett 960
local wiglett={
  name = "wiglett", 
  pos = {x = 3, y = 4}, 
  config = {extra = {rounds = 4, chips = 60, mult = 4}},
  loc_vars = function(self, info_queue, center)
    pokermon.type_tooltip(self, info_queue, center)
		return {vars = {center.ability.extra.rounds, center.ability.extra.chips, center.ability.extra.mult}}
  end,
  rarity = 1, 
  cost = 5, 
  stage = "Basic", 
  ptype = "Water",
  atlas = "Pokedex9",
  gen = 9,
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
            mult_mod = card.ability.extra.mult,
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
            message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
            colour = G.C.MULT,
            mult_mod = card.ability.extra.mult,
            card = card
          }
        end
      end
    end
    return pokermon.level_evo(self, card, context, "j_poke_wugtrio")
  end,
  attributes = {"mult", "chips", "hand_type", "rank", "five", "six", "seven", "round_evo"},
}
return {name = "Pokemon Jokers 931-960", 
        list = {squawkabilly, charcadet, armarouge, ceruledge, bramblin, brambleghast, rellor, rabsca, tinkatink, tinkatuff, tinkaton, wiglett},
}
