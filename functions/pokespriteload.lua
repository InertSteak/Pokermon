PokemonSprites = {
  articuno  = {normal = {pos = {x = 1, y = 11}, soul_pos = {x = 2, y = 11}}, alt = {pos = {x = 7, y = 12}, soul_pos = {x = 2, y = 11}}},
  zapdos    = {normal = {pos = {x = 3, y = 11}, soul_pos = {x = 4, y = 11}}, alt = {pos = {x = 8, y = 12}, soul_pos = {x = 4, y = 11}}},
  moltres   = {normal = {pos = {x = 5, y = 11}, soul_pos = {x = 6, y = 11}}, alt = {pos = {x = 9, y = 12}, soul_pos = {x = 6, y = 11}}},
  mewtwo    = {normal = {pos = {x = 10, y = 11}, soul_pos = {x = 11, y = 11}}, alt = {pos = {x = 10, y = 12}, soul_pos = {x = 11, y = 11}}},
  mew       = {normal = {pos = {x = 12, y = 11}, soul_pos = {x = 0, y = 12}}, alt = {pos = {x = 11, y = 12}, soul_pos = {x = 0, y = 12}}},
  missingno = {normal = {pos = {x = 1, y = 12}, soul_pos = {x = 2, y = 12}}, alt = {pos = {x = 12, y = 12}, soul_pos = {x = 2, y = 12}}},
} 

poke_load_sprites = function(item)
  local sprite_info = PokemonSprites[item.name]
  local sprite = nil
  if sprite_info then
    sprite = pokermon_config.pokemon_altart and sprite_info.alt or sprite_info.normal
    
    if sprite.pos then item.pos = sprite.pos end
    if sprite.soul_pos then item.soul_pos = sprite.soul_pos end
  end
end