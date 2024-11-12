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

local dList = {luminousdeck, obituarydeck}

if pokermon_config.pokeballs then
  table.insert(dList, 1, pokemondeck)
end

return {name = "Back",
        init = init,
        list = dList
}