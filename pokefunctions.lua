energy_whitelist = {"mult", "mult1", "mult2", "chips", "chips1", "chips2", "Xmult", "money", "mult_mod", "s_mult", "chip_mod", "Xmult_mod"}
energy_values = {mult = .3, mult1 = .3, mult2 = .3, chips = .3, chips1 = .3, chips2 = .3, Xmult = .3, money = .2, mult_mod = .1, s_mult = .1, chip_mod = .1, Xmult_mod = .1}

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
    {"onix","steelix"},
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
    {"eevee", "vaporeon", "jolteon", "flareon", "espeon", "umbreon"},
    {"omanyte","omastar"},
    {"kabuto","kabutops"},
    {"dratini","dragonair","dragonite"},
    {"yamper","boltund"}
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
    elseif etype == "Colorless" and (card.ability.extra.ptype or type_sticker_applied(card)) and include_colorless then
      return true
    end
  elseif card.ability and (card.ability.extra and type(card.ability.extra) == "number") or (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) or 
      (card.ability.t_chips and card.ability.t_chips > 0) then
    if card.ability[string.lower(etype).."_sticker"] then
      return true
    elseif etype == "Colorless" and type_sticker_applied(card) and include_colorless then
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
              card.ability.extra[l] =  data + (card.config.center.config.extra[l] * addition) * (card.ability.extra.escale or 1)
            else
              if (card.ability.extra.ptype ~= "Colorless" and not card.ability.colorless_sticker) and etype == "Colorless" then
                card.ability.extra[l] = data + (card.config.center.config.extra[l] * addition/2) * (card.ability.extra.escale or 1)
              else
                card.ability.extra[l] = data + (card.config.center.config.extra[l] * addition) * (card.ability.extra.escale or 1)
              end
            end
          end
        end
      end
    end
  elseif type(card.ability.extra) == "number" then
    local increase = nil
    local mult = nil
    local mult_mod = nil
    local chip = nil
    local chip_mod = nil
    local Xmult = nil
    local Xmult_mod = nil
    local money = nil
    local mults = {"Joker" , "Jolly Joker", "Zany Joker", "Mad Joker", "Crazy Joker", "Droll Joker", "Half Joker", "Mystic Summit", "Gros Michel", "Popcorn"}
    local mult_mods = {"Greedy Joker", "Lusty Joker", "Wrathful Joker", "Gluttonous Joker", "Fibonacci", "Abstract Joker", "Even Steven", "Ride the Bus", "Green Joker", "Red Card", "Erosion",
                       "Fortune Teller", "Pokedex", "Flash Card", "Spare Trousers", "Smiley Face", "Onyx Agate", "Shoot the Moon", "Bootstraps"}
    local chips = {"Sly Joker", "Wily Joker", "Clever Joker", "Devious Joker", "Crafty Joker", "Stuntman"}
    local chip_mods = {"Banner", "Scary Face", "Odd Todd", "Runner", "Blue Joker", "Hiker", "Square Joker", "Stone Joker", "Bull", "Castle", "Arrowhead", "Wee Joker"}
    local Xmults = {"Loyalty Card", "Blackboard", "Cavendish", "Card Sharp", "Ramen", "Acrobat", "Flower Pot", "Seeing Double", "The Duo", "The Trio", "The Family", "The Order", "The Tribe", 
                    "Driver's License"}
    local Xmult_mods = {"Joker Stencil", "Steel Joker", "Constellation", "Madness", "Vampire", "Hologram", "Baron", "Obelisk", "Photograph", "Lucky Cat", "Baseball Card", "Everstone", "Ancient Joker",
                        "Campfire", "Throwback", "Bloodstone", "Glass Joker", "The Idol", "Hit the Road", "Canio", "Triboulet", "Yorick"}
    local monies = {"Delayed Gratification", "Egg", "Cloud 9", "Rocket", "Gift Card", "Reserved Parking", "Mail-In Rebate", "To the Moon", "Golden Joker", "Trading Card", "Golden Ticket", "Rough Gem",
                    "Satellite",}
    
    for k, v in pairs(mults) do
      if card.ability.name == v then
        mult = true
      end
    end
    
    for k, v in pairs(mult_mods) do
      if card.ability.name == v then
        mult_mod = true
      end
    end
    
    for k, v in pairs(chips) do
      if card.ability.name == v then
        chip = true
      end
    end
    
    for k, v in pairs(chip_mods) do
      if card.ability.name == v then
        chip_mod = true
      end
    end
    
    for k, v in pairs(Xmults) do
      if card.ability.name == v then
        Xmult = true
      end
    end
    
    for k, v in pairs(Xmult_mods) do
      if card.ability.name == v then
        money = true
      end
    end
    
    for k, v in pairs(monies) do
      if card.ability.name == v then
        money = true
      end
    end
    
    if mult then
      increase = energy_values.mult
    elseif mult_mod then
      increase = energy_values.mult_mod
    elseif chip then
      increase = energy_values.chips
    elseif chip_mod then
      increase = energy_values.chip_mod
    elseif Xmult then
      increase = energy_values.Xmult
    elseif Xmult_mod then
      increase = energy_values.Xmult_mod
    elseif money then
      increase = energy_values.money
    end
    if increase then
      if not card.ability.colorless_sticker and etype == "Colorless" then
        card.ability.extra = card.ability.extra + (card.config.center.config.extra * increase/2)
      else
        card.ability.extra = card.ability.extra + (card.config.center.config.extra * increase)
      end
    end
  else
    local increase = nil
    if (card.ability.mult and card.ability.mult > 0) or (card.ability.t_mult and card.ability.t_mult > 0) then
      increase = energy_values.mult
    elseif (card.ability.t_chips and card.ability.t_chips > 0) then
      increase = energy_values.chips
    end
    if increase then
      if not card.ability.colorless_sticker and etype == "Colorless" then
        increase = increase/2
      end
      if (card.ability.mult and card.ability.mult > 0) then
        card.ability.mult = card.ability.mult + (card.config.center.config.mult * increase)
      end
      if (card.ability.t_mult and card.ability.t_mult > 0) then
        card.ability.t_mult = card.ability.t_mult + (card.config.center.config.t_mult * increase)
      end
      if (card.ability.t_chips and card.ability.t_chips > 0) then
        card.ability.t_chips = card.ability.t_chips + (card.config.center.config.t_chips * increase)
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
        elseif card.ability.extra.evolve == "sunstone" then
          forced_key = "j_poke_espeon"
        elseif card.ability.extra.evolve == "moonstone" then
          forced_key = "j_poke_umbreon"
        elseif card.ability.extra.evolve == "leafstone" then
          forced_key = "j_poke_leafeon"
        elseif card.ability.extra.evolve == "icestone" then
          forced_key = "j_poke_glaceon"
        elseif card.ability.extra.evolve == "shinystone" then
          forced_key = "j_poke_sylveon"
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

type_evo = function (self, card, context, forced_key, type_req)
  if not context.repetition and not context.individual and context.end_of_round and card.ability[type_req.."_sticker"] and not pokermon_config.no_evos and not next(find_joker("everstone")) then
    return {
      message = evolve (self, card, context, forced_key)
    }
  elseif card.ability[type_req.."_sticker"] and not card.ability.extra.juiced and not pokermon_config.no_evos and not next(find_joker("everstone")) then
    card.ability.extra.juiced = true
    local eval = function(card) return not card.REMOVED end
    juice_card_until(card, eval, true)
  end
end

deck_suit_evo = function (self, card, context, forced_key, suit, percentage)
  if not context.repetition and not context.individual and context.end_of_round then
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

energy_use = function(self, card, area, copier, unreservable)
  local applied = false
  local viable = false
  for k, v in pairs(G.jokers.cards) do
    if applied ~= true and (energy_matches(v, self.etype, true) or self.etype == "Trans") then
      if type(v.ability.extra) == "table" then
        if (pokermon_config.unlimited_energy) or (((v.ability.extra.energy_count or 0) + (v.ability.extra.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
          for l, data in pairs(v.ability.extra) do
            if type(data) == "number" then
              for m, name in ipairs(energy_whitelist) do
                if l == name then
                  viable = true
                end
              end
            end
          end
        end
      elseif applied ~= true and (type(v.ability.extra) == "number" or (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or
             (v.ability.t_chips and v.ability.t_chips > 0)) then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
          viable = true
        end
      end
      if viable then
        if type(v.ability.extra) == "table" then
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
        elseif type(v.ability.extra) == "number" or (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or 
               (v.ability.t_chips and v.ability.t_chips > 0) then
          if (energy_matches(v, self.etype, false) or self.etype == "Trans") then
            if v.ability.energy_count then
              v.ability.energy_count = v.ability.energy_count + 1
            else
              v.ability.energy_count = 1
            end
            energize(v, false)
            applied = true
          elseif self.etype == "Colorless" then
            if v.ability.c_energy_count then
              v.ability.c_energy_count = v.ability.c_energy_count + 1
            else
              v.ability.c_energy_count = 1
            end
            energize(v, self.etype, false)
            applied = true
          end
        end
      end
    end
  end
  if not applied and not unreservable then 
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      local _card = create_card("Energy", G.consumeables, nil, nil, nil, nil, self.key, nil)
      _card:add_to_deck()
      G.consumeables:emplace(_card)
      card:juice_up()
    end
  end
end

energy_can_use = function(self, card)
  if card.area and card.area == G.pack_cards and (#G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit) then return true end
  for k, v in pairs(G.jokers.cards) do
    if energy_matches(v, self.etype, true) then
      if type(v.ability.extra) == "table" then
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
      elseif type(v.ability.extra) == "number" then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
          return true
        end
      elseif (v.ability.mult and v.ability.mult > 0) or (v.ability.t_mult and v.ability.t_mult > 0) or  (v.ability.t_chips and v.ability.t_chips > 0) then
        if (pokermon_config.unlimited_energy) or (((v.ability.energy_count or 0) + (v.ability.c_energy_count or 0)) < 5 + (G.GAME.energy_plus or 0)) then
          return true
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
  if center.ability.extra and type(center.ability.extra) == "table" and center.ability.extra.ptype and not type_sticker_applied(center) then
    info_queue[#info_queue+1] = {set = 'Other', key = center.ability.extra.ptype}
  end
  if not pokermon_config.unlimited_energy then
    if (center.ability and center.ability.extra and type(center.ability.extra) == "table" and ((center.ability.extra.energy_count or 0) + (center.ability.extra.c_energy_count or 0) > 0)) then
        info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {(center.ability.extra.energy_count or 0) + (center.ability.extra.c_energy_count or 0), 5 + (G.GAME.energy_plus or 0)}}
    elseif (center.ability and ((center.ability.energy_count or 0) + (center.ability.c_energy_count or 0) > 0)) then
        info_queue[#info_queue+1] = {set = 'Other', key = "energy", vars = {(center.ability.energy_count or 0) + (center.ability.c_energy_count or 0), 5 + (G.GAME.energy_plus or 0)}}
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
    if v ~= apply_type then
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

juice_flip = function()
  for i = 1, #G.hand.highlighted do
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.4,
          func = function()
              play_sound('tarot1')
              G.hand.highlighted[i]:juice_up(0.3, 0.5)
              return true
          end
      }))
      local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.15,
          func = function()
              G.hand.highlighted[i]:flip(); play_sound('card1', percent); G.hand.highlighted[i]:juice_up(0.3, 0.3); return true
          end
      }))
  end
end