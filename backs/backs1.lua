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
	config = {vouchers = { "v_poke_goodrod"}, consumables = {'c_poke_pokeball'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("goodrod_variable"), localize("pokeball_variable")}}
  end,
	pos = { x = 0, y = 0 },
	atlas = "pokedeck",
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
	atlas = "pokedeck",
  apply = function(self)
    G.GAME.modifiers.apply_type = true
  end
}
local obituarydeck = {
	name = "obituarydeck",
	key = "obituarydeck",  
	order = 19,
  unlocked = true,
  discovered = true,
	config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("pinkseal_variable")}}
  end,
	pos = { x = 2, y = 0 },
	atlas = "pokedeck",
  apply = function(self)
    G.GAME.modifiers.poke_force_seal = "poke_pink_seal"
  end,
}

local telekineticdeck = {
	name = "telekineticdeck",
	key = "telekineticdeck",  
	order = 20,
  unlocked = true,
  discovered = true,
	config = {vouchers = { "v_crystal_ball"}, consumables = {'c_poke_twisted_spoon', 'c_poke_twisted_spoon'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize{type = 'name_text', key = 'v_crystal_ball', set = 'Voucher'}, localize("twisted_spoon_variable")}}
  end,
	pos = { x = 3, y = 0 },
	atlas = "pokedeck",
} 

local symboldeck = {
  name = "symboldeck",
  key = "symboldeck",
  config = {},
  loc_vars = function(self, info_queue, center)
     return { vars = {} }
  end,
	pos = { x = 4, y = 0 },
	atlas = "pokedeck",
  apply = function(self)
     G.GAME.Unown = true
     G.GAME.starting_params.unown_cards = true

     G.E_MANAGER:add_event(Event({
        func = function()
           for k, v in pairs(G.playing_cards) do
              if v.base.suit == 'poke_Unown' and G.GAME.starting_params.erratic_suits_and_ranks then
                 local new_rank = pseudorandom_element(poke_unown_rank_names, pseudoseed('erratic'), {starting_deck = true})
                 SMODS.change_base(v, 'poke_Unown', new_rank)
              end
           end
           return true
        end
     }))
  end
}

local dList = {luminousdeck, obituarydeck, telekineticdeck, symboldeck}

if pokermon_config.pokeballs then
  table.insert(dList, 1, pokemondeck)
end

return {name = "Back",
        init = init,
        list = dList
}
