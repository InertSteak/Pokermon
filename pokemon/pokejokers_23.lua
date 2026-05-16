-- Fletchling 661
-- Fletchinder 662
-- Talonflame 663
-- Scatterbug 664
-- Spewpa 665
-- Vivillon 666
-- Litleo 667
local litleo={
  name = "litleo",
  pos = {x = 3, y = 1},
  config = {extra = {chips = 70,rounds = 4,}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips, center.ability.extra.rounds, }}
  end,
  rarity = 1,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex6",
  gen = 6,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        return {
          message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
          colour = G.C.CHIPS,
          chip_mod = card.ability.extra.chips
        }
      end
    end
    return level_evo(self, card, context, "j_poke_pyroar")
  end,
  attributes = {"chips", "hand_type", "round_evo"},
}
-- Pyroar 668
local pyroar={
  name = "pyroar",
  pos = {x = 4, y = 1},
  config = {extra = {chips = 90}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.chips}}
  end,
  rarity = 2,
  cost = 5,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex6",
  gen = 6,
  perishable_compat = true,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.scoring_hand then
      if context.joker_main and next(context.poker_hands['Flush']) then
        local kingqueens = 0
        if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          for i = 1, #context.scoring_hand do
              if context.scoring_hand[i]:get_id() == 13 or context.scoring_hand[i]:get_id() == 12 then kingqueens = kingqueens + 1 end
          end
        end
        if kingqueens > 0 then
          G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            extra = {focus = card, message = localize('poke_plus_energy'), colour = G.ARGS.LOC_COLOURS.pink, func = function()
              G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = function()
                  local card_type = 'Energy'
                  local _card = create_card(card_type,G.consumeables, nil, nil, nil, nil, nil, 'sup')
                  _card:add_to_deck()
                  G.consumeables:emplace(_card)
                  G.GAME.consumeable_buffer = 0
                  return true
                end
              }))
            end},
            chip_mod = card.ability.extra.chips
          }
        else
          return {
            message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.chips}}, 
            colour = G.C.CHIPS,
            chip_mod = card.ability.extra.chips
          }
        end
      end
    end
  end,
  attributes = {"chips", "hand_type", "round_evo", "energy", "generation", "rank", "king", "queen"},
}
-- Flabébé 669
-- Floette 670
-- Florges 671
-- Skiddo 672
-- Gogoat 673
-- Pancham 674
-- Pangoro 675
-- Furfrou 676
local furfrou={
  name = "furfrou",
  pos = {x = 12, y = 1},
  config = {extra = {mult = 0, mult_mod = 1, form = 0}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
	info_queue[#info_queue+1] = {set = 'Other', key = 'trim'}
	local alt_key = nil
	if center.ability.extra.form == 1 then
      alt_key = "j_poke_furfrou_heart"
    elseif center.ability.extra.form == 2 then
      alt_key = "j_poke_furfrou_star"
	elseif center.ability.extra.form == 3 then
      alt_key = "j_poke_furfrou_diamond"
	elseif center.ability.extra.form == 4 then
	  alt_key = "j_poke_furfrou_debutante"
	elseif center.ability.extra.form == 5 then
	  alt_key = "j_poke_furfrou_dandy"
	elseif center.ability.extra.form == 6 then
	  alt_key = "j_poke_furfrou_matron"
	elseif center.ability.extra.form == 7 then
	  alt_key = "j_poke_furfrou_pharaoh"
	elseif center.ability.extra.form == 8 then
	  alt_key = "j_poke_furfrou_kabuki"
	elseif center.ability.extra.form == 9 then
	  alt_key = "j_poke_furfrou_lareine"
    end
    return {vars = {center.ability.extra.mult, center.ability.extra.mult_mod}, key = alt_key}
  end,
  rarity = 3,
  cost = 8,
  stage = "Basic",
  ptype = "Colorless",
  atlas = "Pokedex6",
  perishable_compat = false,
  blueprint_compat = true,
  eternal_compat = true,
  calculate = function(self, card, context)
	if context.setting_blind and card.ability.extra.form == 0 then
		local furfrou_form = pseudorandom('fform')
		card.ability.extra.form = math.ceil(furfrou_form * 9)
		self:set_sprites(card)
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_furfrou_ex'), colour = G.C.FILTER})
			if card.ability.extra.form <= 4 then
				card.ability.extra.mult_mod = card.ability.extra.mult_mod  * 2
			elseif card.ability.extra.form == 5 then
			  card.ability.extra.mult_mod = card.ability.extra.mult_mod  * 4
			elseif card.ability.extra.form == 6 then
			  card.ability.extra.mult_mod = card.ability.extra.mult_mod  * 4
			elseif card.ability.extra.form == 8 then
			  card.ability.extra.mult_mod = card.ability.extra.mult_mod  * 5
			elseif card.ability.extra.form == 9 then
			  card.ability.extra.mult_mod = card.ability.extra.mult_mod  * 4
			end
		card:juice_up()
	end
		
	--Heart, Star, Diamond, and Debutante Effects
	if context.before and card.ability.extra.form <= 4 then
		local suit = nil
			if card.ability.extra.form == 1 then
				suit = 'Hearts'
			elseif card.ability.extra.form == 2 then
				suit = 'Clubs'
			elseif card.ability.extra.form == 3 then
				suit = 'Diamonds'
			elseif card.ability.extra.form == 4 then
				suit = 'Spades'
			end
			for i = 1, #context.scoring_hand do
				   if context.scoring_hand[i]:is_suit(suit, true) then
						card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
						card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
						break
				   end
			end
	end
	--Matron, La Reine, and Dandy Effects
	if context.using_consumeable and context.consumeable and context.consumeable.ability then
      if card.ability.extra.form == 9 and context.consumeable.ability.set == 'Planet' then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
	  elseif card.ability.extra.form == 6 and context.consumeable.ability.set == 'Tarot' then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
	  elseif card.ability.extra.form == 5 and (context.consumeable.ability.set == 'Item' or context.consumeable.ability.set == 'Energy') then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
	  end
	end
	--Kabuki and Pharaoh Effects
	if context.playing_card_added and card.ability.extra.form == 8 then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
	end
	if context.selling_card and card.ability.extra.form == 7 then
		card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize("k_upgrade_ex")})
	end
    if context.cardarea == G.jokers and context.scoring_hand and context.joker_main and not context.blueprint then
		  return {
			message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.extra.mult}}, 
			colour = G.C.MULT,
			mult_mod = card.ability.extra.mult
		  }
	end
	if context.end_of_round and G.GAME.blind.boss and card.ability.extra.form ~= 0 and not context.game_over then
		card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_furfrou_revert_ex'), colour = G.C.FILTER})
		if card.ability.extra.form <= 4 then
			card.ability.extra.mult_mod = card.ability.extra.mult_mod  / 2 
		end
		if card.ability.extra.form == 5 or card.ability.extra.form == 6 or card.ability.extra.form == 9 then
			card.ability.extra.mult_mod = card.ability.extra.mult_mod  / 4 
		end
		if card.ability.extra.form == 8 then
			card.ability.extra.mult_mod = card.ability.extra.mult_mod  / 5 
		end
		card:juice_up()
		card.ability.extra.form = 0
		card.children.center:set_sprite_pos({x = 6, y = 6})
	end
  end,
  set_ability = function(self, card, initial, delay_sprites)
	self:set_sprites(card)
  end,
  set_sprites = function(self, card, front)
    --Change Trim
		if card.ability and card.ability.extra and card.ability.extra.form == 1 then --Heart Form
		  card.children.center:set_sprite_pos({x = 8, y = 6})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 2 then --Star Form
		  card.children.center:set_sprite_pos({x = 0, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 3 then --Diamond Form
		  card.children.center:set_sprite_pos({x = 2, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 4 then --Debutante Form
		  card.children.center:set_sprite_pos({x = 4, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 5 then --Dandy Form
		  card.children.center:set_sprite_pos({x = 8, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 6 then --Matron Form
		  card.children.center:set_sprite_pos({x = 6, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 7 then --Pharaoh Form
		  card.children.center:set_sprite_pos({x = 10, y = 6})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 8 then --Kabuki Form
		  card.children.center:set_sprite_pos({x = 10, y = 7})
		elseif card.ability and card.ability.extra and card.ability.extra.form == 9 then --La Reine Form
		  card.children.center:set_sprite_pos({x = 0, y = 8})
		end
  end
}
-- Espurr 677
-- Meowstic 678
-- Honedge 679
-- Doublade 680
-- Aegislash 681
-- Spritzee 682
-- Aromatisse 683
-- Swirlix 684
-- Slurpuff 685
-- Inkay 686
-- Malamar 687
-- Binacle 688
-- Barbaracle 689
-- Skrelp 690
return {name = "Pokemon Jokers 661-690", 
        list = {litleo, pyroar, furfrou},
}
