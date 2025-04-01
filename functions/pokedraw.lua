SMODS.Shader({ key = 'zorua', path = 'zorua.fs' }):register()

SMODS.DrawStep({
   key = 'zorua_shadow',
   order = 69,
   func = function(card, layer)
      if not card or not card.ability or not card.children.center or (card.ability.name ~= 'zorua' and card.ability.name ~= 'zoroark') then return end
      if poke_is_in_collection(card) then return end
      local other_joker = G.jokers.cards[#G.jokers.cards]
      if card.area == G.jokers and other_joker and other_joker ~= card and not other_joker.debuff and other_joker.config.center.blueprint_compat then
         return
      end
      local center = card.config.center
      local prev_atlas = card.children.center.atlas
      local prev_pos = card.children.center.sprite_pos
      local new_atlas = (card.edition and card.edition.poke_shiny) and 'poke_Shinydex5' or 'poke_Pokedex5'

      card.children.center.atlas = G.ASSET_ATLAS[new_atlas]
      card.children.center:set_sprite_pos(center.pos)

      card.children.center:draw_shader('poke_zorua', nil, card.ARGS.send_to_shader)

      card.children.center.atlas = prev_atlas
      card.children.center:set_sprite_pos(prev_pos)
   end,
   conditions = { vortex = false, facing = 'front' },
})
