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
    {"pichu", "pikachu","raichu"},
    {"sandshrew","sandslash"},
    {"nidoranf","nidorina","nidoqueen"},
    {"nidoranm","nidorino","nidoking"},
    {"cleffa", "clefairy","clefable"},
    {"vulpix","ninetales"},
    {"igglybuff", "jigglypuff","wigglytuff"},
    {"zubat","golbat", "crobat"},
    {"oddish","gloom","vileplume", "bellossom"},
    {"paras","parasect"},
    {"venonat","venomoth"},
    {"diglett","dugtrio"},
    {"meowth","persian"},
    {"psyduck","golduck"},
    {"mankey","primeape", "annihilape"},
    {"growlithe","arcanine"},
    {"poliwag","poliwhirl","poliwrath", "politoed"},
    {"abra","kadabra","alakazam"},
    {"machop","machoke","machamp"},
    {"bellsprout","weepinbell","victreebel"},
    {"tentacool","tentacruel"},
    {"geodude","graveler","golem"},
    {"ponyta","rapidash"},
    {"slowpoke", "slowbro", "slowking"},
    {"magnemite","magneton", "magnezone"},
    {"doduo","dodrio"},
    {"seel","dewgong"},
    {"grimer","muk"},
    {"shellder","cloyster"},
    {"mega_gengar","gastly","haunter","gengar"},
    {"onix","steelix"},
    {"drowzee","hypno"},
    {"krabby","kingler"},
    {"voltorb","electrode"},
    {"exeggcute","exeggutor"},
    {"cubone","marowak"},
    {"koffing","weezing"},
    {"rhyhorn","rhydon", "rhyperior"},
    {"horsea","seadra", "kingdra"},
    {"goldeen","seaking"},
    {"staryu","starmie"},
    {"scyther", "scizor"},
    {"mimejr", "mrmime"},
    {"elekid", "electabuzz", "electivire"},
    {"magby", "magmar", "magmortar"},
    {"tangela", "tangrowth"},
    {"smoochum", "jynx"},
    {"magikarp","gyarados"},
    {"munchlax", "snorlax"},
    {"happiny", "chansey", "blissey"},
    {"lickitung", "lickilicky"},
    {"porygon", "porygon2", "porygonz"},
    {"eevee", "vaporeon", "jolteon", "flareon", "espeon", "umbreon", "glaceon", "leafeon", "sylveon"},
    {"omanyte","omastar"},
    {"kabuto","kabutops"},
    {"dratini","dragonair","dragonite"},
    {"tyrogue", "hitmonlee", "hitmonchan", "hitmontop"},
    {"feebas", "milotic"},
    {"snorunt", "glalie", "froslass"},
    {"beldum", "metang", "metagross"},
    {"sentret", "furret"},
    {"mantyke", "mantine"},
    {"treecko", "grovyle", "sceptile"},
    {"torchic", "combusken", "blaziken"},
    {"mudkip", "marshtomp", "swampert"},
    {"aron","lairon","aggron"},
    {"buizel", "floatzel"},
    {"elgyem", "beheeyem"},
    {"litwick", "lampent", "chandelure"},
    {"grubbin", "charjabug", "vikavolt"},
    {"dreepy", "drakloak", "dragapult"},
    {"yamper","boltund"},
    {"fidough", "dachsbun"},
    {"tinkatink", "tinkatuff", "tinkaton"},
    {"gimmighoul", "gholdengo"},
}

type_sticker_applied = function(card)
  if not card then return false end
  if card.ability.grass_sticker then
    return "Grass"
  elseif card.ability.fire_sticker then
    return "Fire"
  elseif card.ability.water_sticker then
    return "Water"
  elseif card.ability.lightning_sticker then
    return "Lightning"
  elseif card.ability.psychic_sticker then
    return "Psychic"
  elseif card.ability.fighting_sticker then
    return "Fighting"
  elseif card.ability.colorless_sticker then
    return "Colorless"
  elseif card.ability.dark_sticker then
    return "Dark"
  elseif card.ability.metal_sticker then
    return "Metal"
  elseif card.ability.fairy_sticker then
    return "Fairy"
  elseif card.ability.dragon_sticker then
    return "Dragon"
  elseif card.ability.earth_sticker then
    return "Earth"
  else
    return false
  end
  
end

find_pokemon_type = function(target_type)
  local found = {}
  if G.jokers and G.jokers.cards then
    for k, v in pairs(G.jokers.cards) do
      if v.ability and ((v.ability.extra and type(v.ability.extra) == "table" and target_type == v.ability.extra.ptype) or v.ability[string.lower(target_type).."_sticker"]) then
        table.insert(found, v)
      end
    end
  end
  return found
end

is_type = function(card, target_type)
  if card.ability and ((card.ability.extra and type(card.ability.extra) == "table" and target_type == card.ability.extra.ptype) or card.ability[string.lower(target_type).."_sticker"]) then
    return true
  else
    return false
  end
end

has_type = function(card)
  return (card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype) or type_sticker_applied(card)
end

copy_scaled_values = function(card)
  local values = {mult = 0, chips = 0, Xmult = 0, money = 0}
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" then
    for l, v in pairs(values) do
      if card.ability.extra[l] and (card.ability.extra[l.."_mod"] or card.ability.extra[string.sub(l, 1, -2).."_mod"]) then
        values[l] = card.ability.extra[l]
      end
    end
  end
  return values
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
          G.jokers:remove_card(card)
          card:remove()
          card = nil
          return true
      end
  }))
  card.gone = true
  return true
end

evolve = function(self, card, context, forced_key)
  if not pokermon_config.no_evos and not next(find_joker("everstone")) and not context.retrigger_joker then
    local previous_position = nil
    local poketype_list = nil
    local previous_edition = nil
    local previous_perishable = nil
    local previous_eternal = nil
    local previous_rental = nil
    local previous_energy_count = nil
    local previous_c_energy_count = nil
    local shiny = nil
    local type_sticker = nil
    local scaled_values = nil
    local reset_apply_type = nil
    local previous_extra_value = nil
    local previous_targets = nil
    local previous_rank = nil
    local previous_id = nil
    local previous_cards_scored = nil
    local previous_upgrade = nil
    
    for i = 1, #G.jokers.cards do
      if G.jokers.cards[i] == card then
        previous_position = i
        break
      end
    end
    
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
    
    scaled_values = copy_scaled_values(card)

    if type_sticker_applied then
      poketype_list = {"grass", "fire", "water", "lightning", "psychic", "fighting", "colorless", "dark", "metal", "fairy", "dragon", "earth"}
      for l, v in pairs(poketype_list) do
        if card.ability[v.."_sticker"] then
          type_sticker = v
          break
        end
      end
    end
    
    if card.ability.extra_value then
      previous_extra_value = card.ability.extra_value
    end
    
    if card.ability.extra and card.ability.extra.targets then
      previous_targets = card.ability.extra.targets
    end
    
    if card.ability.name == "fidough" then
      previous_rank = card.ability.extra.rank
      previous_id = card.ability.extra.id
    end
    
    if card.ability.name == "spearow" then
      previous_cards_scored = card.ability.extra.cards_scored
      previous_upgrade = card.ability.extra.upgrade
    end
    
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
      remove(self, card, context)
    return true end }))
    
    if G.GAME.modifiers.apply_type then
      G.GAME.modifiers.apply_type = false
      reset_apply_type = true
    end
    
    local temp_card = {set = "Joker", area = G.jokers, key = forced_key, no_edition = true}
    local new_card = SMODS.create_card(temp_card)
    
    new_card.states.visible = false
    
    if reset_apply_type then
      G.GAME.modifiers.apply_type = true
    end
    
    if previous_edition then
      if shiny then
        local edition = {poke_shiny = true}
         new_card:set_edition(edition, true)
         new_card.config.shiny_on_add = true
      else
        new_card:set_edition(previous_edition, true)
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
    
    if scaled_values then
      for l, v in pairs(scaled_values) do
        if v > 0 and new_card.ability and new_card.ability.extra and type(new_card.ability.extra) == "table" and v > new_card.ability.extra[l] then
          new_card.ability.extra[l] = v
        end
      end
    end
    
    if type_sticker then
      apply_type_sticker(new_card, type_sticker)
    end
    
    if previous_extra_value then
      new_card.ability.extra_value = previous_extra_value
      new_card:set_cost()
    end
    
    if previous_targets then
      new_card.ability.extra.targets = previous_targets
    end
    
    if previous_rank and previous_id then
      new_card.ability.extra.rank = previous_rank
      new_card.ability.extra.id = previous_id
    end
    
    if previous_cards_scored then
      if previous_cards_scored >= 15 then
        previous_upgrade = true
        previous_cards_scored = previous_cards_scored - 15
      end
      new_card.ability.extra.cards_scored = previous_cards_scored
      new_card.ability.extra.upgrade = previous_upgrade
    end
    
    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
        new_card:add_to_deck()
        G.jokers:emplace(new_card, previous_position)
        new_card.states.visible = true
    return true end }))

    return localize("poke_evolve_success")
  end
end

can_evolve = function(self, card, context, forced_key, ignore_step, allow_level)
  if not G.P_CENTERS[forced_key] then return false end
  if next(find_joker("everstone")) and not allow_level then return false end
  if ((not context.repetition and not context.individual and context.end_of_round) or ignore_step) and not context.blueprint and not pokermon_config.no_evos and not card.gone then
    return true
  else
    return false
  end
end

level_evo = function(self, card, context, forced_key)
    if can_evolve(self, card, context, forced_key) and card.ability.extra.rounds then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
      end
      if card.ability.extra.rounds == 1 then
        local eval = function(card) return not card.REMOVED end
        juice_card_until(card, eval, true)
      end
      if card.ability.extra.rounds <= 0 then
        return {
          message = evolve (self, card, context, forced_key)
        }
      elseif card.ability.extra.rounds > 0 then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    elseif can_evolve(self, card, context, forced_key, nil, true) and card.ability.extra.rounds then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    end
end

item_evo = function(self, card, context, forced_key)
    if (card.ability.extra.evolve and ((card.ability.extra.evolve == true) or type(card.ability.extra.evolve) == "string")) then
      if type(card.ability.extra.evolve) == "string" then
        forced_key = card.ability.extra.evo_list[card.ability.extra.evolve]
      end
      if forced_key and can_evolve(self, card, context, forced_key) then
        return {
          message = evolve (self, card, context, forced_key)
        }
      end
    end
end

scaling_evo = function (self, card, context, forced_key, current, target)
  if can_evolve(self, card, context, forced_key) and current >= target then
    return {
      message = evolve (self, card, context, forced_key)
    }
  end
  if can_evolve(self, card, context, forced_key, true) and current >= target and not card.ability.extra.juiced then
    card.ability.extra.juiced = true
    local eval = function(card) return current >= target and not card.REMOVED and not G.RESET_JIGGLES end
    juice_card_until(card, eval, true)
  end
end

type_evo = function (self, card, context, forced_key, type_req)
  if can_evolve(self, card, context, forced_key) and card.ability[type_req.."_sticker"] then
    return {
      message = evolve (self, card, context, forced_key)
    }
  elseif can_evolve(self, card, context, forced_key, true) and card.ability[type_req.."_sticker"] and not card.ability.extra.juiced then
    card.ability.extra.juiced = true
    local eval = function(card) return not card.REMOVED end
    juice_card_until(card, eval, true)
  end
end

deck_suit_evo = function (self, card, context, forced_key, suit, percentage)
  if can_evolve(self, card, context, forced_key) then
    local suit_count = 0
    for k, v in pairs(G.playing_cards) do
      if v:is_suit(suit) then suit_count = suit_count + 1 end
    end
    if suit_count/#G.playing_cards >= percentage then
      return {
        message = evolve (self, card, context, forced_key)
      }
    end
  end
end

deck_enhance_evo = function (self, card, context, forced_key, enhancement, percentage, flat)
  if can_evolve(self, card, context, forced_key) then
    local enhance_count = 0
    for k, v in pairs(G.playing_cards) do
      if v.ability.name == enhancement.." Card" then enhance_count  = enhance_count  + 1 end
    end
    if percentage and (enhance_count/#G.playing_cards >= percentage) then
      return {
        message = evolve (self, card, context, forced_key)
      }
    elseif flat and (enhance_count >= flat) then
      return {
        message = evolve (self, card, context, forced_key)
      }
    end
  end
end

deck_seal_evo = function (self, card, context, forced_key, seal, percentage, flat)
  if can_evolve(self, card, context, forced_key) then
    local seal_count = 0
    for k, v in pairs(G.playing_cards) do
      if seal and v.seal == seal then 
        seal_count = seal_count + 1 
      elseif not seal and v.seal then
        seal_count = seal_count + 1 
      end
    end
    if percentage and (seal_count/#G.playing_cards >= percentage) then
      return {
        message = evolve (self, card, context, forced_key)
      }
    elseif flat and (seal_count >= flat) then
      return {
        message = evolve (self, card, context, forced_key)
      }
    end
  end
end

get_highest_evo = function(card)
  local name = nil
  local found = nil
  if not card.name and card.ability.name then
    name = card.ability.name
  else
    name = card.name or "bulbasaur"
  end
  for k, v in ipairs(family) do
    local evos = {}
    for x, y in ipairs(v) do
      if found and y == v[#v] and G.P_CENTERS["j_poke_"..y].stage ~= G.P_CENTERS["j_poke_"..name].stage then
        table.insert(evos, y)
      elseif found and G.P_CENTERS["j_poke_"..y].stage == G.P_CENTERS["j_poke_"..v[#v]].stage and G.P_CENTERS["j_poke_"..y].stage ~= G.P_CENTERS["j_poke_"..name].stage then
        table.insert(evos, y)
      elseif not found and y == name then
        found = true
      end
    end
    if #evos > 0 then
      if #evos == 1 then
        return evos[1]
      else
        return pseudorandom_element(evos, pseudoseed('highest'))
      end
    else
      found = false
    end
  end
  return false
end

get_family_keys = function(cardname)
  local keys = {}
  local line = nil
  for k, v in pairs(family) do
    for x, y in pairs(v) do
      if y == cardname then line = v; break end
    end
  end
  if line then
    for i = 1, #line do
      table.insert(keys, 'j_poke_'..line[i])
    end
  else
    table.insert(keys, 'j_poke_'..cardname)
  end
  return keys
end

pokemon_in_pool = function (self)
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
    if in_family and found_other then
      return false
    end
    found_other = false
    in_family = false
  end
  if next(find_joker(name)) then
    return false
  else
    if self.enhancement_gate and G.playing_cards then
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
    return evolve
end

highlighted_evo_item = function(self, card, area, copier)
    local evolve = false
    if not G.jokers.highlighted or #G.jokers.highlighted ~= 1 then return false end
    local choice = G.jokers.highlighted[1]
    if choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and type(choice.ability.extra.item_req) ~= "table" and choice.ability.extra.item_req == self.name and 
       not choice.ability.extra.evolve then
      evolve = true
    elseif choice.ability and choice.ability.extra and type(choice.ability.extra) == "table" and type(choice.ability.extra.item_req) == "table" and not choice.ability.extra.evolve then
      for l, p in pairs(choice.ability.extra.item_req) do
        if p == self.name then
          evolve = p
        end
      end
    end
    
    if evolve then
      choice.ability.extra.evolve = evolve
      local eval = function(choice) return not choice.REMOVED end
      juice_card_until(choice, eval, true)
    end
    return evolve
end

evo_item_use_total = function(self, card, area, copier)
    local evolve = nil
    if G.jokers.highlighted and #G.jokers.highlighted == 1 then
      evolve = highlighted_evo_item(self, card, area, copier)
    end
    if not evolve then
      evolve = evo_item_use(self, card, area, copier)
    end
    return evolve
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
  local percent
  if center.ability.extra and type(center.ability.extra) == "table" and center.ability.extra.ptype and not type_sticker_applied(center) then
    info_queue[#info_queue+1] = {set = 'Other', key = center.ability.extra.ptype}
  end
  if (center.ability and center.ability.extra and type(center.ability.extra) == "table" and ((center.ability.extra.energy_count or 0) + (center.ability.extra.c_energy_count or 0) > 0)) then
      info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {(center.ability.extra.energy_count or 0) + (center.ability.extra.c_energy_count or 0), energy_max + (G.GAME.energy_plus or 0)}}
      if center.ability.money_frac and center.ability.money_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
      if center.ability.money2_frac and center.ability.money2_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money2_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
      if center.ability.money_mod_frac and center.ability.money_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.money_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_progress", vars = {percent}}
        end
      end
      if center.ability.mult_mod_frac and center.ability.mult_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.mult_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "mult_progress", vars = {percent}}
        end
      end
      if center.ability.chip_mod_frac and center.ability.chip_mod_frac > 0 then
        percent = tonumber(string.format('%.3f', center.ability.chip_mod_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "chip_progress", vars = {percent}}
        end
      end
  elseif (center.ability and ((center.ability.energy_count or 0) + (center.ability.c_energy_count or 0) > 0)) then
      info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {(center.ability.energy_count or 0) + (center.ability.c_energy_count or 0), energy_max + (G.GAME.energy_plus or 0)}}
      if center.ability.money_frac then
        percent = tonumber(string.format('%.3f', center.ability.money_frac)) * 100
        if percent ~= 100 and percent ~= 0 then
          info_queue[#info_queue+1] = {set = 'Other', key = "money_chance", vars = {percent}}
        end
      end
  end
end

apply_type_sticker = function(card, sticker_type)
  local poketype_list = {"Grass", "Fire", "Water", "Lightning", "Psychic", "Fighting", "Colorless", "Dark", "Metal", "Fairy", "Dragon", "Earth"}
  local apply_type = nil
  
  if sticker_type then
    apply_type = sticker_type
    card.ability[string.lower(apply_type).."_sticker"] = true
  else
    apply_type = pseudorandom_element(poketype_list, pseudoseed("tera"))
    card.ability[string.lower(apply_type).."_sticker"] = true
  end
  
  for l, v in pairs(poketype_list) do
    if string.lower(v) ~= string.lower(apply_type) then
      card.ability[string.lower(v).."_sticker"] = false
    end
  end
  
  if card.ability and card.ability.extra and type(card.ability.extra) == "table" and card.ability.extra.ptype then
    card.ability.extra.ptype = apply_type 
  end
  
  if card.config and type(card.config) == "table" and card.config.center and type(card.config.center) == "table" and not card.config.center.stage 
     and not G.P_CENTERS[card.config.center_key].taken_ownership then
    if G.P_CENTERS[card.config.center_key].loc_vars and type(G.P_CENTERS[card.config.center_key].loc_vars) == "function" then
      local lv = G.P_CENTERS[card.config.center_key].loc_vars
      SMODS.Joker:take_ownership(card.config.center_key, {
        unlocked = true, 
        discovered = true,
        loc_vars = function(self, info_queue, center)
          type_tooltip(self, info_queue, center)
          return lv(self, info_queue, center)
        end,
      }, true)
    else
      SMODS.Joker:take_ownership(card.config.center_key, {
        unlocked = true, 
        discovered = true,
        loc_vars = function(self, info_queue, center)
          type_tooltip(self, info_queue, center)
        end,
      }, true)
    end
  end
end

create_random_poke_joker = function(pseed, stage, pokerarity, area, poketype)
  local poke_keys = {}
  local pokearea = area or G.jokers
  local poke_key
  local create_args = {set = "Joker", area = pokearea, key = ''}
  
  if pokerarity then
    if string.lower(pokerarity) == "common" then pokerarity = 1 end
    if string.lower(pokerarity) == "uncommon" then pokerarity = 2 end
    if string.lower(pokerarity) == "rare" then pokerarity = 3 end
  end
  
  for k, v in pairs(G.P_CENTERS) do
    if v.stage and v.stage ~= "Other" and not (stage and v.stage ~= stage) and not (pokerarity and v.rarity ~= pokerarity) and get_gen_allowed(v.atlas) and get_poke_allowed(v.key) 
       and not (poketype and poketype ~= v.ptype) and pokemon_in_pool(v) then
      table.insert(poke_keys, v.key)
    end
  end
  
  if #poke_keys > 0 then
    poke_key = pseudorandom_element(poke_keys, pseudoseed(pseed))
  else
    poke_key = "j_poke_caterpie"
  end
  create_args.key = poke_key

  return SMODS.create_card(create_args)
end

get_gen_allowed = function(atlas)
  local gen_allowed = true
  if pokermon_config.gen_one and atlas ~= "poke_Pokedex1" and atlas ~= "poke_others" then
    gen_allowed = false
  end
  return gen_allowed
end

get_poke_allowed = function(key)
  local banned_keys = {"taurosh", "dreepy_dart", "gimmighoulr"}
  local allowed = true
  if string.sub(key,11) == "j_poke_mega" then return false end
  
  for i=1, #banned_keys do
    if "j_poke_"..banned_keys[i] == key then
      return false
    end
  end
  
  return true
end

get_poke_target_card_ranks = function(seed, num, default, use_deck)
  local target_ranks = {}
  local valid_cards = {}
  if not G.playing_cards then
    return default
  end
  if use_deck then
    for i = 1, num do
      for k, v in ipairs(G.playing_cards) do
        if v.ability.effect ~= 'Stone Card' then
            local already_picked = false
            for j = 1, #target_ranks do
              if target_ranks[j].id == v.base.id then already_picked = true; break end
            end
            if not already_picked then
              valid_cards[#valid_cards+1] = v
            end
        end
      end
      if #valid_cards > 0 then
        local picked = pseudorandom_element(valid_cards, pseudoseed(seed))
        target_ranks[#target_ranks+1] = {value = picked.base.value, id = picked.base.id}
        valid_cards = {}
      elseif #target_ranks > 0 then
        target_ranks[#target_ranks+1] = target_ranks[1]
      else
         target_ranks[#target_ranks+1] = {value = "Ace", id = 14}
      end
    end
  else
    local random = {}
    local cvalue = nil
    for i = 2, 14 do
      if i == 11 then cvalue = 'Jack'
      elseif i == 12 then cvalue = 'Queen'
      elseif i == 13 then cvalue = 'King'
      elseif i == 14 then cvalue = 'Ace'
      else cvalue = ''..i end
      random[#random+1] = {value = cvalue, id = i}
    end
    local args = {array = random, amt = num}
    target_ranks = pseudorandom_multi(args)
  end
  local sort_function = function(card1, card2) return card1.id < card2.id end
  table.sort(target_ranks, sort_function)
  return target_ranks
end

add_target_cards_to_vars = function(vars, targets)
  for i=1, #targets do
    vars[#vars+1] = localize(targets[i].value or "Ace", 'ranks')
  end
end

find_other_poke_or_energy_type = function(card, poke_type)
  local energy = nil
  local type_count = 0
  if string.lower(poke_type) == "dark" then
    energy = "darkness_energy"
  else
    energy = string.lower(poke_type).."_energy"
  end
  type_count = #find_pokemon_type(poke_type)
  if is_type(card, poke_type) then
    type_count = type_count - 1
  end
  
  if type_count > 0 or #find_joker(energy) > 0 then
    return type_count + #find_joker(energy)
  else
    return 0
  end
end

faint_baby_poke = function(self, card, context)
  if context.cardarea == G.jokers and context.scoring_hand and not context.blueprint then
    if context.joker_main then
      local alive = true
      local self_pos = 0
      local adult_pos = 0
      local rightmost_stage = G.jokers.cards[#G.jokers.cards].config.center.stage
      if not rightmost_stage or (rightmost_stage and rightmost_stage ~= "Baby") then alive = false end
      if alive then
        local stage = nil
        for i = 1, #G.jokers.cards do
          local stage = G.jokers.cards[i].config.center.stage
          if G.jokers.cards[i] == card then
            self_pos = i
          end
          if not stage or stage and stage ~= "Baby" then
            adult_pos = i
          end
        end
        if adult_pos > self_pos then alive = false end
      end
      if not alive then
        G.E_MANAGER:add_event(Event({
          func = function()
              card.debuff = true
              return true
          end
        })) 
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_faint_ex'), colour = G.C.MULT})
      end
    end
  end
end

poke_total_chips = function(card)
  local total_chips = (card.base.nominal) + (card.ability.bonus) + (card.ability.perma_bonus or 0) 
  if card.edition then
    total_chips = total_chips + (card.edition.chips or 0)
  end
  return total_chips
end

poke_drain = function(card, target, amount, one_way)
  local amt = amount
  local amt_drained = 0
  if target.sell_cost == 1 then return end
  target.ability.extra_value = target.ability.extra_value or 0
  if target.sell_cost <= amt then
    amt_drained = amt_drained + target.sell_cost - 1
    target.ability.extra_value = target.ability.extra_value - amt_drained
  else
     target.ability.extra_value = target.ability.extra_value - amt
     amt_drained = amt
  end
  
  if amt_drained > 0 then
    target:set_cost()
    card_eval_status_text(target, 'extra', nil, nil, nil, {message = localize('poke_val_down'), colour = G.C.RED})
    if not one_way then
      card.ability.extra_value = card.ability.extra_value or 0
      card.ability.extra_value = card.ability.extra_value + amt_drained
      card:set_cost()
      card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_val_up')})
    end    
  end
end
