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
		prefix_config = {atlas=false},
		atlas = "casl_sleeve_atlas",
		pos = { x = 1, y = 3 },
		config = {vouchers = { "v_poke_goodrod"}, consumables = {'c_poke_pokeball'}},
		loc_vars = function(self, info_queue, center)
			return {vars = {localize("goodrod_variable"), localize("pokeball_variable")}}
		end,
	}
--- Obituary Sleeve
	local obituarysleeve = {
		key = 'obituarysleeve',
		name = 'Obituary Sleeve',
		prefix_config = {atlas=false},
		atlas = "casl_sleeve_atlas",
		pos = { x = 1, y = 3 },
		config = {},
		loc_vars = function(self, info_queue, center)
		  return {vars = {localize("pinkseal_variable")}}
		end,
		apply = function(self)
			G.GAME.modifiers.poke_force_seal = "poke_pink_seal"
		end
	}

--- Luminous Sleeve 
	local luminoussleeve = {
		key = 'luminoussleeve',
		name = 'Luminous Sleeve',
		prefix_config = {atlas=false},
		atlas = "casl_sleeve_atlas",
		pos = { x = 1, y = 3 },
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


local slist = {pokemonsleeve, obituarysleeve, luminoussleeve}

return {Name = "Sleeve",
				init = init,
				list = slist
}