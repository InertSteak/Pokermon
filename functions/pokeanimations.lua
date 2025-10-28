-- Animation logic stolen completely from https://github.com/MathIsFun0/Aura

AnimatedPokemon = {
   --j_poke_ludicolo = { frames_per_row = 10, frames = 10, fps = 11.25 } --135 bpm = 2.25 beats per second / Two beats per frame cycle / 11.25 fps
   j_poke_unown_swarm = {native = true, frames_per_row = 12, frames = 36, fps = 12, soul = true, size = {x = 290, y = 285} },
   j_poke_voltorb = {shiny_offset = 1, frames_per_row = 11, frames = 11, fps = 11, },
   j_poke_electrode = {shiny_offset = 1, frames_per_row = 13, frames = 13, fps = 13, },
   c_poke_bird_energy = {frames_per_row = 18, frames = 36, fps = 15, }
}
AnimatedSingles = {}

for k, tbl in pairs(AnimatedPokemon) do
   if not tbl.atlas and tbl.native then
      tbl.atlas = true
      SMODS.Atlas({
         key = k,
         path = k .. ".png",
         px = tbl.size and tbl.size.x or 71,
         py = tbl.size and tbl.size.y or 95,
      }):register()
      SMODS.Atlas({
         key = k .. "_shiny",
         path = k .. "_shiny.png",
         px = tbl.size and tbl.size.x or 71,
         py = tbl.size and tbl.size.y or 95,
      }):register()
   end
   if tbl.soul and not tbl.soul_atlas then
      tbl.soul_atlas = true
      SMODS.Atlas({
         key = k .. "_soul",
         path = k .. "_soul.png",
         px = tbl.soul_size and tbl.soul_size.x or tbl.size and tbl.size.x or 71,
         py = tbl.soul_size and tbl.soul_size.y or tbl.size and tbl.size.y or 95,
      }):register()
      SMODS.Atlas({
         key = k .. "_shiny_soul",
         path = k .. "_shiny_soul.png",
         px = tbl.soul_size and tbl.soul_size.x or tbl.size and tbl.size.x or 71,
         py = tbl.soul_size and tbl.soul_size.y or tbl.size and tbl.size.y or 95,
      }):register()
   end
end

NotAura_update_frame = function(dt, k, obj, jkr)
   if AnimatedPokemon[k] and obj and AnimatedPokemon[k].frames and (AnimatedPokemon[k].native or G.P_CENTERS[k].animated) then
      local next_frame = false
      local next_frame_extra = false
      local anim = AnimatedPokemon[k]
      anim.t = (anim.t or 0) + dt
      if anim.t > 1 / (anim.fps or 10) then
         anim.t = anim.t - 1 / (anim.fps or 10)
         next_frame = true
      end
      if anim.extra then
         if not anim.extra.t then anim.extra.t = 0 end
         anim.extra.t = anim.extra.t + dt
         if anim.extra.t > 1 / (anim.extra.fps or 10) then
            anim.extra.t = anim.extra.t - 1 / (anim.extra.fps or 10)
            next_frame_extra = true
         end
      end
      if next_frame then
         local loc = obj.pos.y * (anim.frames_per_row or anim.frames) + obj.pos.x
         if (not anim.individual) or (jkr and jkr.animation.target and loc ~= jkr.animation.target) then
            loc = loc + 1
            if anim.immediate and jkr and jkr.animation.target then
               loc = jkr.animation.target
            end
         end
         if loc >= anim.frames then loc = anim.start_frame or 0 end
         obj.pos.x = loc % (anim.frames_per_row or anim.frames)
         obj.pos.y = math.floor(loc / (anim.frames_per_row or anim.frames))
         if obj.soul_pos then
            obj.soul_pos.x = obj.pos.x
            obj.soul_pos.y = obj.pos.y
            obj.soul_pos.anim = true
         end
      end
      if next_frame_extra then
         local loc = obj.pos.extra.y * (anim.extra.frames_per_row or anim.extra.frames) + obj.pos.extra.x
         if (not anim.individual) or (jkr and jkr.animation.extra and jkr.animation.extra.target and loc ~= jkr.animation.extra.target) then
            loc = loc + 1
            if anim.extra.immediate and jkr and jkr.animation.extra and jkr.animation.extra.target then
               loc = jkr.animation.extra.target
            end
         end
         if loc >= anim.extra.frames then loc = anim.extra.start_frame or 0 end
         obj.pos.extra.x = loc % (anim.extra.frames_per_row or anim.extra.frames)
         obj.pos.extra.y = math.floor(loc / (anim.extra.frames_per_row or anim.extra.frames))
      end
   end
end

if pokermon_config.poke_enable_animations then
   local upd = Game.update
   function Game:update(dt)
      upd(self, dt)
      for k, v in pairs(AnimatedPokemon) do
         NotAura_update_frame(dt, k, G.P_CENTERS[k])
      end
      for _, v in pairs(AnimatedSingles) do
         NotAura_update_frame(dt, v.config.center_key, v.config.center, v)
      end
   end

   local cd = Card.draw
   function Card:draw(layer)
      if self.config and self.config.center and self.config.center.soul_pos and self.config.center.soul_pos.anim then
         if self.children.floating_sprite then
            self.children.floating_sprite:set_sprite_pos(self.config.center.soul_pos)
         end
      end
      cd(self, layer)
   end
end
