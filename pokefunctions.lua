energy_whitelist = {"mult", "mult1", "mult2", "chips", "chips1", "chips2", "Xmult", "mult_mod", "chip_mod", "Xmult_mod"}
energy_values = {mult = 4, mult1 = 4, mult2 = 4, chips = 40, chips1 = 40, chips2 = 40, Xmult = 0.5, mult_mod = 1, chip_mod = 20, Xmult_mod = 0.1}

family = {
    {"bulbasaur","ivysaur","venusaur"},
    {"charmander","charmeleon","charizard"},
    {"squirtle","wartortle","blastoise"},
    {"caterpie","metapod","butterfree"},
    {"weedle","kakuna","beedrill"},
    {"pidgey","pidgeotto","pidgeot"},
    {"rattata","raticate"},
    {"spearow","fearow"},
    {"ekans","arbok"},
    {"pikachu","raichu"},
    {"sandshrew","sandslash"},
    {"nidoranf","nidorina","nidoqueen"},
    {"nidoranm","nidorino","nidoking"},
    {"clefairy","clefable"},
    {"vulpix","ninetales"},
    {"jigglypuff","wigglytuff"},
    {"zubat","golbat"},
    {"oddish","gloom","vileplume"},
    {"paras","parasect"},
    {"venonat","venomoth"},
    {"diglett","dugtrio"},
    {"meowth","persian"},
    {"psyduck","golduck"},
    {"mankey","primeape"},
    {"growlithe","arcanine"},
    {"poliwag","poliwhirl","poliwrath"},
    {"abra","kadabra","alakazam"},
    {"machop","machoke","machamp"},
    {"bellsprout","weepinbell","victreebel"},
    {"tentacool","tentacruel"},
    {"geodude","graveler","golem"},
    {"ponyta","rapidash"},
    {"slowpoke","slowbro"},
    {"magnemite","magneton"},
    {"doduo","dodrio"},
    {"seel","dewgong"},
    {"grimer","muk"},
    {"shellder","cloyster"},
    {"gastly","haunter","gengar"},
    {"drowzee","hypno"},
    {"krabby","kingler"},
    {"voltorb","electrode"},
    {"exeggcute","exeggutor"},
    {"cubone","marowak"},
    {"koffing","weezing"},
    {"rhyhorn","rhydon"},
    {"horsea","seadra"},
    {"goldeen","seaking"},
    {"staryu","starmie"},
    {"magikarp","gyarados"},
    {"eevee", "vaporeon", "jolteon", "flareon"},
    {"omanyte","omastar"},
    {"kabuto","kabutops"},
    {"dratini","dragonair","dragonite"},
}

type_sticker_applied = function(card)
  if not card then return false end
  if card.ability.grass_sticker or card.ability.fire_sticker or card.ability.water_sticker or card.ability.lightning_sticker or card.ability.psychic_sticker or card.ability.fighting_sticker or
     card.ability.colorless_sticker or card.ability.dark_sticker or card.ability.metal_sticker or card.ability.fairy_sticker or card.ability.dragon_sticker or card.ability.earth_sticker then
    return true
  else
    return false
  end
end

energy_matches = function(card, etype, include_colorless)
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" then
    if (card.ability.extra.ptype and etype and card.ability.extra.ptype == etype) or (card.ability[string.lower(etype).."_sticker"]) then
      return true
    elseif etype == "Colorless" and include_colorless then
      return true
    end
  end
  return false
end

energize = function(card, etype, evolving)
  if type(card.ability.extra) == "table" then
    for l, data in pairs(card.ability.extra) do
      if type(data) == "number" then
        for m, name in ipairs(energy_whitelist) do
          if l == name then
            local addition = energy_values[name]
            if evolving then
              if card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker then
                addition = (addition * (card.ability.extra.energy_count or 0)) + (addition/2 * (card.ability.extra.c_energy_count or 0))
              else
                addition = (addition * ((card.ability.extra.energy_count or 0) + (card.ability.extra.c_energy_count or 0)))
              end
              card.ability.extra[l] = data + addition
            else
              if (card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker) and etype == "Colorless" then
                card.ability.extra[l] = data + addition/2
              else
                card.ability.extra[l] = data + addition
              end
            end
          end
        end
      end
    end
  end
end

remove = function(self, card, context)
  play_sound('tarot1')
  card.T.r = -0.2
  card:juice_up(0.3, 0.4)
  card.states.drag.is = true
  card.children.center.pinch.x = true
  G.E_MANAGER:add_event(Event({
      trigger = 'after', delay = 0.3, blockable = false,
      func = function()
          G.jokers:remove_card(self)
          card:remove()
          card = nil
          return true
      end
  }))
  return true
end

evolve = function(self, card, context, forced_key)
  if not pokermon_config.no_evos and not next(find_joker("everstone")) and not context.retrigger_joker then
    local poketype_list = nil
    local previous_edition = nil
    local previous_perishable = nil
    local previous_eternal = nil
    local previous_rental = nil
    local previous_energy_count = nil
    local previous_c_energy_count = nil
    local shiny = nil
    local type_sticker = nil
    
    if card.edition then
      previous_edition = card.edition
      if card.edition.poke_shiny then
        shiny = true
      end
    end
    
    if card.ability.perishable then
      previous_perishable = card.ability.perishable
    end
      
    if card.ability.eternal then
      previous_eternal = card.ability.eternal
    end

    if card.ability.rental then
      previous_rental = card.ability.rental
    end
    
    if card.ability.extra and card.ability.extra.energy_count then
      previous_energy_count  = card.ability.extra.energy_count
    end
      
    if card.ability.extra and card.ability.extra.c_energy_count then
      previous_c_energy_count  = card.ability.extra.c_energy_count
    end 
       
    if type_sticker_applied then
      poketype_list = {"grass", "fire", "water", "lightning", "psychic", "fighting", "colorless", "dark", "metal", "fairy", "dragon", "earth"}
      for l, v in pairs(poketype_list) do
        if card.ability[v.."_sticker"] then
          type_sticker = v
        end
      end
    end
      
    G.E_MANAGER:add_event(Event({
        remove(self, card, context)
      }))
    
    local temp_card = {set = "Joker", area = G.jokers, key = forced_key, no_edition = true}
    local new_card = SMODS.create_card(temp_card)
    
    if previous_edition then
      if shiny then
        local edition = {poke_shiny = true}
         new_card:set_edition(edition, true)
         new_card.config.shiny_on_add = true
      else
        new_card.edition = previous_edition
      end
    end
    
    if previous_perishable then
       new_card.ability.perishable = previous_perishable
       new_card.ability.perish_tally = G.GAME.perishable_rounds
    end

    if previous_eternal then
      new_card.ability.eternal = previous_eternal
    end

    if previous_rental then
      new_card.ability.rental = previous_rental
    end
    
    if new_card.ability and new_card.ability.extra and previous_energy_count then
      new_card.ability.extra.energy_count = previous_energy_count
    end
    
    if new_card.ability and new_card.ability.extra and previous_c_energy_count then
      new_card.ability.extra.c_energy_count = previous_c_energy_count
    end
    
    if new_card.ability and new_card.ability.extra and (new_card.ability.extra.energy_count or new_card.ability.extra.c_energy_count) then
      energize(new_card, nil, true)
    end
    
    if type_sticker then
      new_card.ability[type_sticker.."_sticker"] = true
    end
    
    new_card:add_to_deck()
    G.jokers:emplace(new_card)
    return "Evolved!"
  end
end

level_evo = function(self, card, context, forced_key)
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.rounds and not context.blueprint and not pokermon_config.no_evos then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
      end
      if card.ability.extra.rounds == 1 and not next(find_joker("everstone")) then
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
      end
      if card.ability.extra.rounds <= 0 and not next(find_joker("everstone")) then
        return {
          message = evolve (self, card, context, forced_key)
        }
      elseif card.ability.extra.rounds > 0 then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Level Up!"})
      end
    end
end

item_evo = function(self, card, context, forced_key)
    if not context.repetition and not context.individual and context.end_of_round and (card.ability.extra.evolve and ((card.ability.extra.evolve == true) or type(card.ability.extra.evolve) == "string"))       and not context.blueprint and not pokermon_config.no_evos and not next(find_joker("everstone")) then
      if card.ability.name == "eevee" then
        if card.ability.extra.evolve == "waterstone" then
          forced_key = "j_poke_vaporeon"
        elseif card.ability.extra.evolve == "thunderstone" then
          forced_key = "j_poke_jolteon"
        elseif card.ability.extra.evolve == "firestone" then
          forced_key = "j_poke_flareon"
        end
      end
      if forced_key then
        return {
          message = evolve (self, card, context, forced_key)
        }
      end
    end
end

scaling_evo = function (self, card, context, forced_key, current, target)
  if not context.repetition and not context.individual and context.end_of_round and current >= target and not context.blueprint and not pokermon_config.no_evos and not next(find_joker("everstone")) then
    return {
      message = evolve (self, card, context, forced_key)
    }
  elseif current >= target and not card.ability.extra.juiced and not pokermon_config.no_evos and not next(find_joker("everstone")) then
    card.ability.extra.juiced = true
    local eval = function(card) return not card.REMOVED end
    juice_card_until(card, eval, true)
  end
end

pokemon_in_pool = function (self, return_highest)
  if next(find_joker("Showman")) or next(find_joker("pokedex")) then
      return true
  end
  local name
  if not self.name and self.ability.name then
    name = self.ability.name
  else
    name = self.name or "bulbasaur"
  end
  local found_other
  local in_family
  for k, v in ipairs(family) do
    for l, p in ipairs(v) do
      if p ~= name and next(find_joker(p)) then
        found_other = true 
      elseif p == name then
        in_family = true
      end
    end
    if in_family and return_highest then
      return v[#v]
    end
    if in_family and found_other then
      return false
    end
    found_other = false
    in_family = false
  end
  if next(find_joker(name)) then
    return false
  else
    if self.enhancement_gate then
      for k, v in pairs(G.playing_cards) do
          if v.config.center.key == self.enhancement_gate then
              return true
          end
      end
      return false
    end
    return true
  end
end

energy_use = function(self, card, area, copier)
  local applied = false
  for k, v in pairs(G.jokers.cards) do
    if applied ~= true and energy_matches(v, self.etype, true) then
      if pokermon_config.unlimited_energy or (((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
        local viable = false
        for l, data in pairs(v.ability.extra) do
          if type(data) == "number" then
            for m, name in ipairs(energy_whitelist) do
              if l == name then
                viable = true
              end
            end
          end
        end
        if viable then
          if (energy_matches(v, self.etype, false) or self.etype == "Trans") then
            if v.ability.extra.energy_count then
              v.ability.extra.energy_count = v.ability.extra.energy_count + 1
            else
              v.ability.extra.energy_count = 1
            end
            energize(v, false)
            applied = true
          elseif self.etype == "Colorless" then
            if v.ability.extra.c_energy_count then
              v.ability.extra.c_energy_count = v.ability.extra.c_energy_count + 1
            else
              v.ability.extra.c_energy_count = 1
            end
            energize(v, self.etype, false)
            applied = true
          end
        end
      end
    end
  end
end

energy_can_use = function(self, card)
  for k, v in pairs(G.jokers.cards) do
    if energy_matches(v, self.etype, true) then
      if (pokermon_config.unlimited_energy or ((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
        for l, data in pairs(v.ability.extra) do
          if type(data) == "number" then
            for m, name in ipairs(energy_whitelist) do
              if l == name then
                return true
              end
            end
          end
        end
      end
    end
  end
  return false
end

evo_item_use = function(self, card, area, copier)
    local applied = false
    local evolve = false
    for k, v in pairs(G.jokers.cards) do
      if applied ~= true then
        if v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) ~= "table" and v.ability.extra.item_req == self.name and not v.ability.extra.evolve then
          evolve = true
        elseif v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) == "table" and not v.ability.extra.evolve then
          for l, p in pairs(v.ability.extra.item_req) do
            if p == self.name then
              evolve = p
            end
          end
        end
        
        if evolve then
          v.ability.extra.evolve = evolve
          applied = true
          local eval = function(v) return not v.REMOVED end
          juice_card_until(v, eval, true)
        end
      end
    end
    return true
end

evo_item_in_pool = function(self)
    if G.jokers then
      for k, v in pairs(G.jokers.cards) do
        if v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.extra.item_req) ~= "table" and v.ability.extra.item_req == self.name then
          return true
        elseif v.ability and v.ability.extra and type(v.ability.extra) == "table" and type(v.ability.item_req) == "table" then
          for l, p in pairs(v.ability.extra.item_req) do
            if p == self.name then
              return true
            end
          end
        end
      end
    end
    return false
end

type_tooltip = function(self, info_queue, center)
  if center.ability.extra and center.ability.extra.ptype and not type_sticker_applied(center) then
    info_queue[#info_queue+1] = {set = 'Other', key = center.ability.extra.ptype}
  end
end