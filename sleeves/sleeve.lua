init = function()
  local backapply_orig = Back.apply_to_run
  function Back.apply_to_run(self)
    backapply_orig(self)
    			G.E_MANAGER:add_event(Event({
					func = function()
            if G.GAME.modifiers.poke_force_seal then
              for i = 1, #G.playing_cards do
                G.playing_cards[i]:set_seal(G.GAME.modifiers.poke_force_seal, true)
              end
            end
						return true
					end,
				}))
  end
end

-- Pokemon Sleeve
	local pokemonsleeve = {
		key = 'pokemonsleeve',
		name = 'Trainer Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 0, y = 1 },
		config = {vouchers = { "v_poke_goodrod"}},
		loc_vars = function(self, info_queue, center)
      local curr_key = nil
      if self.get_current_deck_key() == 'b_poke_pokemondeck' then
        curr_key = self.key.."_alt"
      else
        curr_key = self.key
      end
			return {key = curr_key, vars = {localize("goodrod_variable"), localize("pokeball_variable"), localize("greatball_variable")}}
		end,
    apply = function(self)
      G.E_MANAGER:add_event(Event({
        func = function()
          if self.get_current_deck_key() ~= 'b_poke_pokemondeck' then
            SMODS.add_card { key = 'c_poke_pokeball' }
          end
          return true
        end
      }))
    end
	}
--- Obituary Sleeve
	local obituarysleeve = {
		key = 'obituarysleeve',
		name = 'Obituary Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 2, y = 1 },
		config = {},
		loc_vars = function(self, info_queue, center)
		  return {vars = {localize("pinkseal_variable")}}
		end,
		apply = function(self)
			G.GAME.modifiers.poke_force_seal = "poke_pink_seal"
		end
	}
  
  --- Revenant Sleeve
	local revenantsleeve = {
		key = 'revenantsleeve',
		name = 'Revenant Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 5, y = 1 },
		config = {},
		loc_vars = function(self, info_queue, center)
		  return {vars = {localize("silverseal_variable")}}
		end,
		apply = function(self)
			G.GAME.modifiers.poke_force_seal = "poke_silver"
		end
	}

--- Luminous Sleeve 
	local luminoussleeve = {
		key = 'luminoussleeve',
		name = 'Luminous Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 1, y = 1 },
		config = {},
		loc_vars = function(self, info_queue, center)
			return {
				vars = {
				}
		}
	end,
	apply = function(self)
	  G.GAME.modifiers.apply_type = true
	end
}

-- Telekinetic Sleeve
	local telekineticsleeve = {
		key = 'telekineticsleeve',
		name = 'Telekinetic Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 3, y = 1 },
		config = {vouchers = { "v_crystal_ball"}, consumables = {'c_poke_twisted_spoon', 'c_poke_twisted_spoon'}},
		loc_vars = function(self, info_queue, center)
			return {vars = {localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}, localize("twisted_spoon_variable")}}
		end,
}

--Amped Sleeve
local ampedsleeve = {
	name = "ampedsleeve",
	key = "ampedsleeve",
  prefix_config = {},
  pos = { x = 4, y = 1 },
  atlas = "AtlasDecksBasic",
	config = {vouchers = { "v_poke_energysearch"}, consumables = {'c_poke_double_rainbow_energy'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize{type = 'name_text', key = 'v_poke_energysearch', set = 'Voucher'}, localize("double_rainbow_energy_variable")}}
  end,
} 

--Future Sleeve
local futuresleeve = {
	name = "futuresleeve",
	key = "futuresleeve",  
  prefix_config = {},
	config = {scry = 4, scry_plus = 1},
  loc_vars = function(self, info_queue, center)
    local curr_key = nil
    if self.get_current_deck_key() == "b_poke_futuredeck" then
      curr_key = self.key.."_alt"
    else
      curr_key = self.key
    end
    return {key = curr_key, vars = {self.config.scry, self.config.scry_plus}}
  end,
	pos = { x = 6, y = 1 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.E_MANAGER:add_event(Event({
      func = function()
        if self.get_current_deck_key() ~= 'b_poke_futuredeck' then
          G.GAME.scry_amount = (G.GAME.scry_amount or 0) + self.config.scry
        end
        return true
      end
    }))
  end,
  calculate = function(self, sleeve, context)
    if self.get_current_deck_key() == 'b_poke_futuredeck' then
      if context.scoring_hand then
        if context.before then
          G.GAME.scry_amount = (G.GAME.scry_amount or 0) + self.config.scry_plus
          G.GAME.scry_added = (G.GAME.scry_added or 0) + self.config.scry_plus
        end
      end
      if context.end_of_round and not context.individual and not context.repetition then
        G.GAME.scry_amount = math.max(self.config.scry, (G.GAME.scry_amount or 0) - (G.GAME.scry_added or 0))
        G.GAME.scry_added = 0
        return {
          message = localize('k_reset'),
          colour = G.C.PURPLE
        }
      end
    end
  end,
}

--Stadium Sleeve
local stadiumsleeve = {
  name = "stadiumsleeve",
  key = "stadiumsleeve",
  prefix_config = {},
  pos = { x = 8, y = 1 },
  atlas = "AtlasDecksBasic",
  loc_vars = function(self, info_queue, center)
    local curr_key = nil
    if self.get_current_deck_key() == "b_poke_stadiumdeck" then
      curr_key = self.key.."_alt"
    else
      curr_key = self.key
    end
    return {key = curr_key, vars = {}}
  end,
  apply = function(self)
    if self.get_current_deck_key() ~= "b_poke_stadiumdeck" then
      G.E_MANAGER:add_event(Event({
        func = function()
            local enhancements = {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky"}
            for i = 1, math.min(#G.deck.cards, #enhancements) do
              G.deck.cards[i]:set_ability(G.P_CENTERS[enhancements[i]], nil, true)
            end
            G.GAME.starting_deck_size = G.GAME.starting_deck_size + #enhancements
          return true
      end}))
    end
  end,
  calculate = function(self, back, context)
    if context.round_eval and G.GAME.last_blind and G.GAME.last_blind.boss and self.get_current_deck_key() == "b_poke_stadiumdeck" then
      local bosstarots = {'c_magician', 'c_empress', 'c_heirophant', 'c_lovers', 'c_chariot', 'c_justice', 'c_devil', 'c_tower'}
      local tarotselect = pseudorandom_element(bosstarots, pseudoseed('stadium'))
      G.E_MANAGER:add_event(Event({
        func = function()
          SMODS.add_card{set='Tarot', area = G.consumables, edition = "e_negative", key = tarotselect}
          return true
      end}))
    end
  end
}

--Mega Sleeve
local megasleeve = {
	name = "megasleeve",
	key = "megasleeve",  
  prefix_config = {},
	config = {vouchers = { "v_reroll_surplus", "v_reroll_glut", "v_crystal_ball"}, consumables = {'c_poke_megastone'}, shop_size = 1},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("megastone_variable"), localize{type = 'name_text', key = 'v_reroll_surplus', set = 'Voucher'}, localize{type = 'name_text', key = 'v_reroll_glut', set = 'Voucher'},
                    self.config.shop_size, localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}}}
  end,
	pos = { x = 9, y = 1 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    CardSleeves.Sleeve.apply(self)
    G.E_MANAGER:add_event(Event({
      func = function()
          change_shop_size(-self.config.shop_size)
          return true
      end
    }))
  end,
} 

local vendingsleeve = {
	name = "vendingsleeve",
	key = "vendingsleeve", 
  prefix_config = {},
	config = {},
  loc_vars = function(self, info_queue, center)
    local curr_key = nil
    if self.get_current_deck_key() == "b_poke_vendingdeck" then
      curr_key = self.key.."_alt"
    else
      curr_key = self.key
    end
    return {key = curr_key, vars = { localize { type = 'name_text', key = 'tag_voucher', set = 'Tag' } } }
  end,
	pos = { x = 7, y = 1 },
	atlas = "AtlasDecksBasic",
  calculate = function(self, back, context)
    if context.round_eval and G.GAME.last_blind and G.GAME.last_blind.boss then
      if self.get_current_deck_key() == "b_poke_vendingdeck" or ((G.GAME.round_resets.ante - 1) % 2 == 1) then
        G.E_MANAGER:add_event(Event({
            func = function()
                add_tag(Tag('tag_voucher'))
                play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                return true
            end
        }))
      end
    end
  end
}

local slist = nil
if pokermon_config.pokemon_legacy then
  slist = {pokemonsleeve, obituarysleeve, revenantsleeve, luminoussleeve, telekineticsleeve, ampedsleeve, futuresleeve, stadiumsleeve, megasleeve, vendingsleeve}
else
  slist = {pokemonsleeve, luminoussleeve, telekineticsleeve, ampedsleeve, futuresleeve, stadiumsleeve, megasleeve, vendingsleeve}
end

return {Name = "Sleeve",
				init = init,
				list = slist
}
