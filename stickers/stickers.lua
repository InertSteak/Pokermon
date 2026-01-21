local type_sticker_template = 
{
  prefix_config = {key = false},
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  no_collection = true
}

local type_stickers = {}

for i = 1, #poketype_list do
  local poke_type = string.lower(poketype_list[i])
  local type_sticker = copy_table(type_sticker_template)
  type_sticker.key = poke_type..'_sticker'
  type_sticker.badge_colour = G.ARGS.LOC_COLOURS[poke_type]
  type_sticker.pos = {x = i % 10, y = math.floor(i/10) }
  table.insert(type_stickers, type_sticker)
end

local bird_sticker = {
  key = "bird_sticker",
  badge_colour = HEX("F7B58C"),
  prefix_config = {key = false},
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  pos = { x = 4, y = 1 },
  no_collection = true,
}

table.insert(type_stickers, bird_sticker)

return
{
  name = "Stickers",
  list = type_stickers
}