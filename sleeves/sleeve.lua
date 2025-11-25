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
		config = {num = 1, dem = 3},
		loc_vars = function(self)
      if self.get_current_deck_key() == 'b_poke_obituarydeck' then
        local num, dem = SMODS.get_probability_vars(self, self.config.num, self.config.dem, 'poke_pink_seal_selfdestruct')
        return {
          key = self.key..'_alt',
          vars = {num, dem}
        }
      end
		  return {vars = {localize("pinkseal_variable")}}
		end,
		apply = function(self)
			G.GAME.modifiers.poke_force_seal = "poke_pink_seal"
      if self.get_current_deck_key() == 'b_poke_obituarydeck' then
        G.GAME.modifiers.poke_pink_seal_selfdestruct = true
      end
		end,
    calculate = function(self, sleeve, context)
      if self.get_current_deck_key() ~= 'b_poke_obituarydeck' then return end
      if context.joker_type_destroyed or context.selling_card then
        local key = matching_energy(context.card, true)
        if key then
          SMODS.add_card { key = key, edition = 'e_negative' }
        end
      end
    end
	}
  
--- Revenant Sleeve
  local revenantsleeve = {
    key = 'revenantsleeve',
    name = 'Revenant Sleeve',
    prefix_config = {},
    atlas = "AtlasDecksBasic",
    pos = { x = 5, y = 1 },
    loc_vars = function(self, info_queue, center)
      local key
      local vars
      if self.get_current_deck_key() == "b_poke_revenantdeck" then
          key = self.key .. "_alt"
          self.config = { consumable_slot = 3 }
          vars = { self.config.consumable_slot }
      else
          key = self.key
          self.config = { }
          vars = { localize("silverseal_variable") }
      end
      return {key = key, vars = vars}
    end,
    apply = function(self)
      CardSleeves.Sleeve.apply(self)
      G.GAME.modifiers.poke_force_seal = "poke_silver"
      if self.get_current_deck_key() == "b_poke_revenantdeck" then
        G.GAME.modifiers.no_poke_packs = true
        for k, v in pairs(G.P_CENTER_POOLS["Booster"]) do
          if v.kind == "Energy" then
            v.get_weight = function() return G.GAME.modifiers.no_poke_packs and 0 or 1 end
          end
        end
      end
    end
  }

local add_shop_card = function(add_card, card)
    if G.GAME.shop.joker_max == 1 then
      G.shop_jokers.config.card_limit = G.GAME.shop.joker_max + 1
      G.shop_jokers.T.w = math.min((G.GAME.shop.joker_max + 1)*1.02*G.CARD_W,4.08*G.CARD_W)
      G.shop:recalculate()
    end
    G.shop_jokers:emplace(add_card)
    create_shop_card_ui(add_card)
    
    if (SMODS.Mods["Talisman"] or {}).can_load then
      if Talisman.config_file.disable_anims then 
        add_card.states.visible = true
      end
    end
end

--- Luminous Sleeve 
	local luminoussleeve = {
		key = 'luminoussleeve',
		name = 'Luminous Sleeve',
		prefix_config = {},
		atlas = "AtlasDecksBasic",
		pos = { x = 1, y = 1 },
		config = {num = 1, dem = 4},
  loc_vars = function(self, info_queue, back)
    local num, dem = SMODS.get_probability_vars(back, self.config.num, self.config.dem, 'luminate')
    local curr_key = nil
    if self.get_current_deck_key() == "b_poke_luminousdeck" then
      curr_key = self.key.."_alt"
    else
      curr_key = self.key
    end
    return {key = curr_key, vars = {num, dem}}
  end,
	apply = function(self)
      if self.get_current_deck_key() ~= "b_poke_luminousdeck" then
	    G.GAME.modifiers.apply_type = true
      end
	end,
  calculate = function(self, back, context)
    if context.reroll_shop and self.get_current_deck_key() == "b_poke_luminousdeck" then
      if SMODS.pseudorandom_probability(back, 'luminate', self.config.num, self.config.dem, 'luminate') then
        local temp_card = {set = "Item", area = G.shop_jokers, key = "c_poke_teraorb"}
        local add_card = SMODS.create_card(temp_card)
        add_shop_card(add_card, card)
      end
    end
  end,
}

-- Telekinetic Sleeve
local telekineticsleeve = {
  key = 'telekineticsleeve',
  name = 'Telekinetic Sleeve',
  prefix_config = {},
  atlas = "AtlasDecksBasic",
  pos = { x = 3, y = 1 },
  loc_vars = function(self, info_queue, center)
    local key
    if self.get_current_deck_key() == "b_poke_telekineticdeck" then
        key = self.key .. "_alt"
        self.config = { }
    else
        key = self.key
        self.config = { vouchers = { "v_crystal_ball"}, consumables = {'c_poke_twisted_spoon', 'c_poke_twisted_spoon'} }
    end
    return {key = key, vars = {localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}, localize("twisted_spoon_variable")}}
  end,
  apply = function(self, sleeve)
    if self.get_current_deck_key() ~= "b_poke_telekineticdeck" then
      CardSleeves.Sleeve.apply(self)
    else
      G.GAME.modifiers.spoon_slots = true
    end
  end,
}

--Amped Sleeve
local ampedsleeve = {
	name = "ampedsleeve",
	key = "ampedsleeve",
  prefix_config = {},
  pos = { x = 4, y = 1 },
  atlas = "AtlasDecksBasic",
  loc_vars = function(self, info_queue, center)
    local key = self.key
    local vars = {}

    if self.get_current_deck_key() == "b_poke_ampeddeck" then
      key = self.key.."_alt"
      vars = {localize{type = 'name_text', key = 'j_poke_jelly_donut', set = 'Joker'}, localize("double_rainbow_energy_variable"), localize{type = 'name_text', key = 'c_poke_colorless_energy', set = 'Energy'}}
      self.config = {}
    else
      vars = {localize {type = 'name_text', key = 'v_poke_energysearch', set = 'Voucher'}, localize("double_rainbow_energy_variable")}
      self.config = {vouchers = {"v_poke_energysearch"}, consumables = {'c_poke_double_rainbow_energy'}}
    end

    return {key = key, vars = vars}
  end,
  apply = function(self)
    CardSleeves.Sleeve.apply(self)
    if self.get_current_deck_key() == "b_poke_ampeddeck" then
      G.GAME.modifiers.disable_colorless_penalty = true
      G.E_MANAGER:add_event(Event({
        func = function()
          SMODS.find_card('c_poke_double_rainbow_energy')[1]:remove()
          SMODS.add_card { key = 'j_poke_jelly_donut', edition = 'e_negative' }
          return true
        end
      }))
    end
  end
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
  loc_vars = function(self, info_queue, center)
    local curr_key = nil
    if self.get_current_deck_key() == "b_poke_megadeck" then
      curr_key = self.key.."_alt"
      self.config = { }
    else
      curr_key = self.key
      self.config = {vouchers = { "v_reroll_surplus", "v_reroll_glut", "v_crystal_ball"}, consumables = {'c_poke_megastone'}, shop_size = 1}
    end
    return {vars = {localize("megastone_variable"), localize{type = 'name_text', key = 'v_reroll_surplus', set = 'Voucher'}, localize{type = 'name_text', key = 'v_reroll_glut', set = 'Voucher'},
                    self.config.shop_size, localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}}, key = curr_key}
  end,
	pos = { x = 9, y = 1 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    CardSleeves.Sleeve.apply(self)
    if self.get_current_deck_key() == "b_poke_megadeck" then
      G.GAME.modifiers.infinite_megastone = true
    else
      G.E_MANAGER:add_event(Event({
        func = function()
          change_shop_size(-self.config.shop_size)
          return true
        end
      }))
    end
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

local slist = {pokemonsleeve, luminoussleeve, telekineticsleeve, ampedsleeve, futuresleeve, stadiumsleeve, megasleeve, vendingsleeve}
if pokermon_config.pokemon_legacy then
  local legacy_sleeves = {obituarysleeve, revenantsleeve}
  for i = 1, #legacy_sleeves do
    slist[#slist + 1] = legacy_sleeves[i]
  end
end

return {Name = "Sleeve",
				init = init,
				list = slist
}
