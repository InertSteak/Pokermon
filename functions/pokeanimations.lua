-- Animation logic stolen completely from https://github.com/MathIsFun0/Aura

AnimatedPokemon = {
   --j_poke_ludicolo = { frames_per_row = 10, frames = 10, fps = 11.25 } --135 bpm = 2.25 beats per second / Two beats per frame cycle / 11.25 fps
}
AnimatedSingles = {}

for k, tbl in pairs(AnimatedPokemon) do
   if not tbl.atlas then
      tbl.atlas = true
      SMODS.Atlas({
         key = k,
         path = k .. ".png",
         px = 71,
         py = 95
      }):register()
      SMODS.Atlas({
         key = k .. "_shiny",
         path = k .. "_shiny.png",
         px = 71,
         py = 95
      }):register()
   end
end

NotAura_update_frame = function(dt, k, obj, jkr)
   if AnimatedPokemon[k] and obj and AnimatedPokemon[k].frames then
      local next_frame = false
      local next_frame_extra = false
      local anim = AnimatedPokemon[k]
      if not anim.t then anim.t = 0 end
      anim.t = anim.t + dt
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

local upd = Game.update
function Game:update(dt)
   upd(dt)
   for k, v in pairs(AnimatedPokemon) do
      NotAura_update_frame(dt, k, G.P_CENTERS[k])
   end
   for _, v in pairs(AnimatedSingles) do
      NotAura_update_frame(dt, v.config.center_key, v.config.center, v)
   end
end
