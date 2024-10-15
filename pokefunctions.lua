energy_whitelist = {"mult", "mult1", "mult2", "chips", "chips1", "chips2", "Xmult", "money", "money1", "money2", "mult_mod", "chip_mod", "Xmult_mod", "money_mod"}
energy_values = {mult = 4, mult1 = 4, mult2 = 4, chips = 40, chips1 = 40, chips2 = 40, Xmult = 0.5, money = 2, money1 = 2, money2 = 2, mult_mod = 2, chip_mod = 20, Xmult_mod = 0.2, money_mod = 2}

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

energize = function(card, etype, evolving)
  for l, data in pairs(card.ability.extra) do
    if type(data) == "number" then
      for m, name in ipairs(energy_whitelist) do
        if l == name then
          local addition = energy_values[name]
          if evolving then
            if card.ability.extra.ptype ~= "Colorless" then
              addition = (addition * (card.ability.extra.energy_count or 0)) + (addition/2 * (card.ability.extra.c_energy_count or 0))
            else
              addition = (addition * ((card.ability.extra.energy_count or 0) + (card.ability.extra.c_energy_count or 0)))
            end
            card.ability.extra[l] = data + addition
          else
            if card.ability.extra.ptype ~= "Colorless" and etype == "Colorless" then
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
  if not pokermon_config.no_evos and not context.retrigger_joker then
    local previous_edition = nil
    local previous_perishable = nil
    local previous_eternal = nil
    local previous_rental = nil
    local previous_energy_count = nil
    local previous_c_energy_count = nil
    
    if card.edition then
      previous_edition = card.edition
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
       
    G.E_MANAGER:add_event(Event({
        remove(self, card, context)
      }))

    local new_card = create_card('Joker', G.jokers, nil, nil, nil, nil, forced_key)
    
    if previous_edition then
      new_card.edition = previous_edition
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
    
    new_card:add_to_deck()
    G.jokers:emplace(new_card)
    return "Evolved!"
  end
end

level_evo = function(self, card, context, forced_key)
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.rounds and not context.blueprint and not pokermon_config.no_evos then
      card.ability.extra.rounds = card.ability.extra.rounds - 1
      if card.ability.extra.rounds == 1 then
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
      end
      if card.ability.extra.rounds <= 0 then
        return {
          message = evolve (self, card, context, forced_key)
        }
      else
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Level Up!"})
      end
    end
end

item_evo = function(self, card, context, forced_key)
    if not context.repetition and not context.individual and context.end_of_round and card.ability.extra.evolve == true and not context.blueprint and 
       not pokermon_config.no_evos then
      if card.ability.name == "eevee" then
        if card.ability.extra.water then
          forced_key = "j_poke_vaporeon"
        elseif card.ability.extra.thunder then
          forced_key = "j_poke_jolteon"
        elseif card.ability.extra.fire then
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
  if not context.repetition and not context.individual and context.end_of_round and current >= target and not context.blueprint and not pokermon_config.no_evos then
    return {
      message = evolve (self, card, context, forced_key)
    }
  elseif current >= target and not card.ability.extra.juiced and not pokermon_config.no_evos then
    card.ability.extra.juiced = true
    local eval = function(card) return not card.REMOVED end
    juice_card_until(card, eval, true)
  end
end

pokemon_in_pool = function (self, return_highest)
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
  if next(find_joker(name)) and not next(find_joker("Showman")) then
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
    if applied ~= true and v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype and self.etype then
      if (((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < 5) then
        if (v.ability.extra.ptype == self.etype or self.etype == "Trans") then
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

energy_can_use = function(self, card)
  for k, v in pairs(G.jokers.cards) do
    if v.ability and v.ability.extra and type(v.ability.extra) == "table" and v.ability.extra.ptype and self.etype then
      if (v.ability.extra.ptype == self.etype or self.etype == "Colorless") and (((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < 5) then
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