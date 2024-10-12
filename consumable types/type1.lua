local energy = {
  key = "Energy",
  primary_colour = HEX("4F6367"),
  secondary_colour = HEX("4ABA8D"),
  loc_txt =  	{
 		name = 'Energy', -- used on card type badges
 		collection = 'Energy Cards', -- label for the button to access the collection
 		undiscovered = { -- description for undiscovered cards in the collection
 			name = 'Undiscovered',
 			text = { 'Not yet discovered' },
 		},
 	},
  collection_row = {6, 6},
  shop_rate = 0.2,
  default = "c_poke_grass_energy"
}

return {name = "Pokemon Consumable Types",
        list = {energy}
}