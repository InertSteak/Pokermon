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
			return {vars = {"Good Rod", "Pokeball"}}
		end,
		loc_txt = {
		    name = "Trainer Sleeve",
		    text = {
		    	"Start run with the",
		        "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
		        "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
		    }
		},
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
		  return {vars = {"Pink Seal"}}
		end,
		loc_txt = {      
		    name = 'Obituary Sleeve',      
		    text = {
		      "All cards have a {C:dark_edition}#1#{}",
		    } 
		  },
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
	loc_txt = {      
	  name = 'Luminous Sleeve',      
	  text = {
	    "All Jokers are created",
	    "with random {C:pink}Type{} stickers",
	  }
	},
	apply = function(self)
	  G.GAME.modifiers.apply_type = true
	end
	}


local slist = {pokemonsleeve, obituarysleeve, luminoussleeve}

return {Name = "Sleeve",
				init = init,
				list = slist
}