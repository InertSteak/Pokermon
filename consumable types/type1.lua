local energy = {
  key = "Energy",
  primary_colour = HEX("4F6367"),
  secondary_colour = HEX("4ABA8D"),
  loc_txt =  	{
 		name = 'Energy', -- used on card type badges
 		collection = 'Energy Cards', -- label for the button to access the collection
 	},
  collection_row = {6, 6},
  shop_rate = 2,
  default = "c_poke_grass_energy"
}

local item = {
  key = "Item",
  primary_colour = HEX("4F6367"),
  secondary_colour = HEX("9AA4B7"),
  loc_txt =  	{
 		name = 'Item', -- used on card type badges
 		collection = 'Item Cards', -- label for the button to access the collection
 	},
  collection_row = {6, 6},
  shop_rate = 4,
  default = "c_poke_pokeball"
}

return {name = "Pokemon Consumable Types",
        list = {energy, item}
}