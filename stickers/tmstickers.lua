local tm_sticker_template = 
{
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  no_collection = true,
  tm_vars = {},
  loc_vars = function(self, info_queue, center)    
    return {vars = self.tm_vars}
  end,
}

--Earthquake
local earthquake = copy_table(tm_sticker_template)
earthquake.key = "earthquake_sticker"
earthquake.config = {extra = {chips = 100}}
earthquake.tm_vars = {earthquake.config.extra.chips}
earthquake.calculate = function(self, card, context)
earthquake.badge_colour = pokermon.colours.earth
  if context.joker_main then
    return {
      chips = self.config.extra.chips, 
    }
  end
end

return
{
  name = "TM Stickers",
  list = {earthquake}
}