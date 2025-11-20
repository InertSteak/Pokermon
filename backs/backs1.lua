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

local pokemondeck = {
	name = "pokemondeck",
	key = "pokemondeck",  
	order = 17,
  unlocked = true,
  discovered = true,
	config = {vouchers = { "v_poke_goodrod"}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("goodrod_variable"), localize("pokeball_variable")}}
  end,
	pos = { x = 0, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.E_MANAGER:add_event(Event({
      func = function()
        if (SMODS.Mods["CardSleeves"] or {}).can_load and G.GAME.selected_sleeve == 'sleeve_poke_pokemonsleeve' then
          SMODS.add_card { key = 'c_poke_greatball' }
        else
          SMODS.add_card { key = 'c_poke_pokeball' }
        end
        return true
      end
    }))
  end
}

local luminousdeck = {
	name = "luminousdeck",
	key = "luminousdeck",  
	order = 18,
  unlocked = true,
  discovered = true,
	config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {}}
  end,
	pos = { x = 1, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.GAME.modifiers.apply_type = true
  end
}

local obituarydeck = {
	name = "obituarydeck",
	key = "obituarydeck",  
	order = 25,
  unlocked = true,
  discovered = true,
	config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("pinkseal_variable")}}
  end,
	pos = { x = 2, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.GAME.modifiers.poke_force_seal = "poke_pink_seal"
  end,
}

local revenantdeck = {
	name = "revenanteck",
	key = "revenantdeck",  
	order = 26,
  unlocked = true,
  discovered = true,
  artist = "Sonfive",
	config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("silverseal_variable")}}
  end,
	pos = { x = 5, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.GAME.modifiers.poke_force_seal = "poke_silver"
  end,
}

local telekineticdeck = {
	name = "telekineticdeck",
	key = "telekineticdeck",  
	order = 19,
  unlocked = true,
  discovered = true,
  artist = "MyDude_YT",
	config = {vouchers = { "v_crystal_ball"}, consumables = {'c_poke_twisted_spoon', 'c_poke_twisted_spoon'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}, localize("twisted_spoon_variable")}}
  end,
	pos = { x = 3, y = 0 },
	atlas = "AtlasDecksBasic",
} 

local ampeddeck = {
	name = "ampeddeck",
	key = "ampeddeck",  
	order = 20,
  unlocked = true,
  discovered = true,
  artist = "MyDude_YT",
	config = {vouchers = { "v_poke_energysearch"}, consumables = {'c_poke_double_rainbow_energy'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize{type = 'name_text', key = 'v_poke_energysearch', set = 'Voucher'}, localize("double_rainbow_energy_variable")}}
  end,
	pos = { x = 4, y = 0 },
	atlas = "AtlasDecksBasic",
} 

local futuredeck = {
	name = "futuredeck",
	key = "futuredeck",  
	order = 21,
  unlocked = true,
  discovered = true,
  artist = "Catzzadilla",
	config = {scry = 4},
  loc_vars = function(self, info_queue, center)
    return {vars = {self.config.scry}}
  end,
	pos = { x = 6, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.GAME.scry_amount = (G.GAME.scry_amount or 0) + self.config.scry
  end
}

local stadiumdeck = {
	name = "stadiumdeck",
	key = "stadiumdeck",  
	order = 22,
  unlocked = true,
  discovered = true,
  artist = "InertSteak",
	config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {}}
  end,
	pos = { x = 8, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.E_MANAGER:add_event(Event({
      func = function()
        local enhancements = {"m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky"}
        for i = 1, math.min(#G.deck.cards, #enhancements) do
          G.deck.cards[i]:set_ability(G.P_CENTERS[enhancements[i]], nil, true)
        end
        return true
      end
    }))
  end
}

local megadeck = {
	name = "megadeck",
	key = "megadeck",  
	order = 23,
  unlocked = true,
  discovered = true,
  artist = "Catzzadilla",
	config = {vouchers = { "v_reroll_surplus", "v_reroll_glut", "v_crystal_ball"}, consumables = {'c_poke_megastone'}, shop_size = 1},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("megastone_variable"), localize{type = 'name_text', key = 'v_reroll_surplus', set = 'Voucher'}, localize{type = 'name_text', key = 'v_reroll_glut', set = 'Voucher'},
                    self.config.shop_size, localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}}}
  end,
	pos = { x = 9, y = 0 },
	atlas = "AtlasDecksBasic",
  apply = function(self)
    G.E_MANAGER:add_event(Event({
      func = function()
          change_shop_size(-self.config.shop_size)
          return true
      end
    }))
  end,
} 
--Vending Sleeve
local vendingdeck = {
	name = "vendingdeck",
	key = "vendingdeck",  
	order = 24,
  unlocked = true,
  discovered = true,
	config = {},
  loc_vars = function(self, info_queue, center)
    return { vars = { localize { type = 'name_text', key = 'tag_voucher', set = 'Tag' } } }
  end,
	pos = { x = 7, y = 0 },
	atlas = "AtlasDecksBasic",
  calculate = function(self, back, context)
    if not ((SMODS.Mods["CardSleeves"] or {}).can_load and G.GAME.selected_sleeve == 'sleeve_poke_vendingsleeve') then
      if context.round_eval and G.GAME.last_blind and G.GAME.last_blind.boss and ((G.GAME.round_resets.ante - 1) % 2 == 1) then
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
  end,
}

local dList = {luminousdeck, telekineticdeck, ampeddeck, futuredeck, stadiumdeck, megadeck, vendingdeck}

if pokermon_config.pokeballs then
  table.insert(dList, 1, pokemondeck)
end

if pokermon_config.pokemon_legacy then
  table.insert(dList, obituarydeck)
  table.insert(dList, revenantdeck)
end

return {name = "Back",
        init = init,
        list = dList
}