SMODS.Shader({ key = 'zorua', path = 'zorua.fs' }):register()
SMODS.Shader({ key = 'evolution', path = 'evolution.fs' }):register()

SMODS.DrawStep({
   key = 'zorua_shadow',
   order = 69,
   func = function(card, layer)
      if not card or not card.ability or not card.children.center or (card.ability.name ~= 'zorua' and card.ability.name ~= 'zoroark') then return end
      if card.debuff or (card.ability.name == 'zorua' and not card.ability.extra.active) or poke_is_in_collection(card) then return end
      if G.jokers and card.area == G.jokers then
         local other_joker = G.jokers.cards[#G.jokers.cards]
         if other_joker == card or other_joker.debuff or not other_joker.config.center.blueprint_compat then return end
      end
      local center = card.config.center
      local prev_atlas = card.children.center.atlas
      local prev_pos = card.children.center.sprite_pos
      local new_atlas = (card.edition and card.edition.poke_shiny) and "poke_AtlasJokersBasicNatdexShiny" or "poke_AtlasJokersBasicNatdex"

      card.children.center.atlas = G.ASSET_ATLAS[new_atlas]
      card.children.center:set_sprite_pos(center.pos)

      card.children.center:draw_shader('poke_zorua', nil, card.ARGS.send_to_shader)

      card.children.center.atlas = prev_atlas
      card.children.center:set_sprite_pos(prev_pos)
   end,
   conditions = { vortex = false, facing = 'front' },
})

SMODS.DrawStep({
   key = 'evolution',
   order = 71,
   func = function(card, layer)
      if not card.evolution_timer then return end

      card.ARGS.send_to_shader = card.ARGS.send_to_shader or {}
      card.ARGS.send_to_shader[1] = math.min(card.VT.r*3, 1) + math.sin(G.TIMERS.REAL/28) + 1 + (card.juice and card.juice.r*20 or 0) + card.tilt_var.amt
      card.ARGS.send_to_shader[2] = G.TIMERS.REAL
      card.ARGS.send_to_shader[3] = card.evolution_timer
      -- Evolution States:
      --   0.0 to 1.0 == Initial Shine
      --   1.0 to 2.0 == Complete coverage with sphere in center
      --   2.0 to 3.0 == Final retractions

      card.children.center:draw_shader('poke_evolution', nil, card.ARGS.send_to_shader)
   end,
   conditions = { vortex = false, facing = 'front' },
})

SMODS.DrawStep {
   key = 'mega_sleeve',
   order = 1,
   func = function(self)
      if self.config and self.config.center and self.config.center.key == 'sleeve_poke_megasleeve' then
        self.children.back:draw_shader('booster', nil, self.ARGS.send_to_shader, true)
      end
   end,
   conditions = { vortex = false, facing = 'back' }
}

if (SMODS.Mods["CardSleeves"] or {}).can_load then
   local cardarea_draw_ref = CardArea.draw
   function CardArea:draw(...)
      cardarea_draw_ref(self, ...)
      if G.GAME.selected_sleeve == 'sleeve_poke_megasleeve' and self.sleeve_sprite then
         self.sleeve_sprite:draw_shader('negative_shine', nil, self.ARGS.send_to_shader, true)
      end
   end
end

-- Unown Swarm Stickers
SMODS.DrawStep {
  key = 'unown_stickers',
  order = 39,
  func = function(self, layer)
    if self.config.center.key == 'j_poke_unown_swarm' then
      if self.sticker and G.shared_stickers[self.sticker] then
        G.shared_stickers[self.sticker].role.draw_major = self.front_card
        G.shared_stickers[self.sticker]:draw_shader('dissolve', nil, nil, nil, self.front_card.children.center)
        G.shared_stickers[self.sticker]:draw_shader('voucher', nil, self.ARGS.send_to_shader, nil, self.front_card.children.center)
      elseif (self.sticker_run and G.shared_stickers[self.sticker_run]) and G.SETTINGS.run_stake_stickers then
        G.shared_stickers[self.sticker_run].role.draw_major = self.front_card
        G.shared_stickers[self.sticker_run]:draw_shader('dissolve', nil, nil, nil, self.front_card.children.center)
        G.shared_stickers[self.sticker_run]:draw_shader('voucher', nil, self.ARGS.send_to_shader, nil, self.front_card.children.center)
      end

      for k, v in pairs(SMODS.Stickers) do
        if self.ability[v.key] then
          if v and v.draw and type(v.draw) == 'function' then
            v:draw(self, layer)
          else
            G.shared_stickers[v.key].role.draw_major = self.front_card
            G.shared_stickers[v.key]:draw_shader('dissolve', nil, nil, nil, self.front_card.children.center)
            G.shared_stickers[v.key]:draw_shader('voucher', nil, self.ARGS.send_to_shader, nil, self.front_card.children.center)
          end
        end
      end
    end
  end,
  conditions = { vortex = false, facing = 'front' },
}

local sprite_matches = function(sprite, atlas, x, y)
  return sprite.atlas.name == atlas
      and sprite.sprite_pos.x == (x or 0)
      and sprite.sprite_pos.y == (y or 0)
end

local function should_apply_mystery_dungeon_back_sprite(card)
  return G.GAME.poke_mystery_dungeon_deck_key
      and card.children.back
      and sprite_matches(card.children.back, 'centers', 0, 4) -- Filter for Challenge Deck sprite
end

local function apply_mystery_dungeon_back_sprite(card)
  if card.children.back then card.children.back:remove() end

  local deck = G.P_CENTERS[G.GAME.poke_mystery_dungeon_deck_key]
  local atlas = deck.atlas or 'centers'
  local pos = deck.pos or {x = 0, y = 0}

  card.children.back = SMODS.create_sprite(card.T.x, card.T.y, card.T.w, card.T.h, atlas, pos)
  card.children.back.states.hover = card.states.hover
  card.children.back.states.click = card.states.click
  card.children.back.states.drag = card.states.drag
  card.children.back.states.collide.can = false
  card.children.back:set_role({major = card, role_type = 'Glued', draw_major = card})
end

local function handle_mystery_dungeon_sprites(card)
  if should_apply_mystery_dungeon_back_sprite(card) then
    apply_mystery_dungeon_back_sprite(card)
  end
end

-- Changes the back sprite during the Mystery Dungeon challenge to match your random deck
local card_set_sprites_ref = Card.set_sprites
function Card:set_sprites(_center, _front)
  card_set_sprites_ref(self, _center, _front)
  handle_mystery_dungeon_sprites(self)
end

-- Manually update cards that have been created before the random deck was applied
function poke_set_mystery_dungeon_back_sprites()
  for _, card in ipairs(G.I.CARD) do
    handle_mystery_dungeon_sprites(card)
  end
end
