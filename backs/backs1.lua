local pokemondeck = {
	name = "pokemondeck",
	key = "pokemondeck",  
  loc_txt = {      
    name = 'PTCG deck',      
    text = {
      "Start run with the",
      "{C:tarot,T:v_poke_goodrod}#1#{} voucher",
      "and a {C:tarot,T:c_poke_pokeball}#2#{} card",
    } 
  }, 
	order = 17,
  unlocked = true,
  discovered = true,
	config = {vouchers = { "v_poke_goodrod"}, consumables = {'c_poke_pokeball'}},
  loc_vars = function(self, info_queue, center)
    return {vars = {"Good Rod", "Pokeball"}}
  end,
	pos = { x = 0, y = 0 },
	atlas = "pokedeck",
}

return {name = "Back",
        list = {pokemondeck}
}