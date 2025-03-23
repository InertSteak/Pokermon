family = {
    {"bulbasaur","ivysaur","venusaur","mega_venusaur"},
    {"charmander","charmeleon","charizard","mega_charizard_x","mega_charizard_y",},
    {"squirtle","wartortle","blastoise","mega_blastoise"},
    {"caterpie","metapod","butterfree"},
    {"weedle","kakuna","beedrill","mega_beedrill"},
    {"pidgey","pidgeotto","pidgeot","mega_pidgeot"},
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
    {"abra","kadabra","alakazam","mega_alakazam"},
    {"machop","machoke","machamp"},
    {"bellsprout","weepinbell","victreebel"},
    {"tentacool","tentacruel"},
    {"geodude","graveler","golem"},
    {"ponyta","rapidash"},
    {"slowpoke", "slowbro", "slowking", "mega_slowbro"},
    {"magnemite","magneton", "magnezone"},
    {"doduo","dodrio"},
    {"seel","dewgong"},
    {"grimer","muk"},
    {"shellder","cloyster"},
    {"gastly","haunter","gengar","mega_gengar",},
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
    {"tauros", "taurosh"},
    {"kangaskhan", "mega_kangaskhan"},
    {"elekid", "electabuzz", "electivire"},
    {"magby", "magmar", "magmortar"},
    {"tangela", "tangrowth"},
    {"smoochum", "jynx"},
    {"pinsir", "mega_pinsir"},
    {"magikarp","gyarados", "mega_gyarados"},
    {"munchlax", "snorlax"},
    {"aerodactyl", "mega_aerodactyl"},
    {"happiny", "chansey", "blissey"},
    {"lickitung", "lickilicky"},
    {"porygon", "porygon2", "porygonz"},
    {"eevee", "vaporeon", "jolteon", "flareon", "espeon", "umbreon", "glaceon", "leafeon", "sylveon"},
    {"omanyte","omastar"},
    {"kabuto","kabutops"},
    {"dratini","dragonair","dragonite"},
    {"mewtwo","mega_mewtwo_x","mega_mewtwo_y"},
    {"chikorita", "bayleef", "meganium"},
    {"cyndaquil", "quilava", "typhlosion"},
    {"totodile", "croconaw", "feraligatr"},
    {"tyrogue", "hitmonlee", "hitmonchan", "hitmontop"},
    {"feebas", "milotic"},
    {"snorunt", "glalie", "froslass"},
    {"nosepass", "probopass"},
    {"beldum", "metang", "metagross"},
    {"jirachi", "jirachi_banker", "jirachi_booster", "jirachi_power", "jirachi_copy", "jirachi_fixer"},
    {"sentret", "furret"},
    {"hoothoot", "noctowl"},
    {"ledyba", "ledian"},
    {"spinarak", "ariados"},
    {"remoraid", "octillery"},
    {"togepi", "togetic", "togekiss"},
    {"natu", "xatu"},
    {"phanpy", "donphan"},
    {"girafarig", "farigiraf"},
    {"murkrow", "honchkrow"},
    {"bonsly", "sudowoodo"},
    {"hoppip", "skiploom", "jumpluff"},
    {"misdreavus", "mismagius"},
    {"pineco", "forretress"},
    {"dunsparce", {key = "dudunsparce", form = 0}, {key = "dudunsparce", form = 1}},
    {"mantyke", "mantine"},
    {"treecko", "grovyle", "sceptile"},
    {"torchic", "combusken", "blaziken"},
    {"mudkip", "marshtomp", "swampert"},
    {"shroomish", "breloom"},
    {"aron","lairon","aggron"},
    {"buizel", "floatzel"},
    {"gothita", "gothorita", "gothitelle"},
    {"vanillite", "vanillish", "vanilluxe"},
    {"elgyem", "beheeyem"},
    {"litwick", "lampent", "chandelure"},
    {"roggenrola", "boldore", "gigalith"},
    {"zorua", "zoroark"},
    {"deino", "zweilous", "hydreigon"},
    {"litleo", "pyroar"},
    {"grubbin", "charjabug", "vikavolt"},
    {"dreepy", "drakloak", "dragapult", "dreepy_dart"},
    {"hisuian_qwilfish", "overqwil"},
    {"yamper","boltund"},
    {"tarountula", "spidops"},
    {"fidough", "dachsbun"},
    {"tinkatink", "tinkatuff", "tinkaton"},
    {"wiglett", "wugtrio"},
    {"gimmighoul", "gholdengo", "gimmighoulr"},
  --{{key = "oricorio", form = "Hearts"}, {key = "oricorio", form = "Clubs"}, {key = "oricorio", form = "Diamonds"}, {key = "oricorio", form = "Spades"}},
    {{key = "rival", form = 0},{key = "rival", form = 1},{key = "rival", form = 2}},
}

extended_family = {
  tauros = {"miltank"}
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

get_type = function(card)
  if card.ability then
    local sticker = type_sticker_applied(card)
    if sticker then
      return sticker
    elseif type(card.ability.extra) == "table" and card.ability.extra.ptype then
      return card.ability.extra.ptype
    end
  end
  return nil
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

remove = function(self, card, context, check_shiny)
  if check_shiny and card.edition and card.edition.poke_shiny then
    SMODS.change_booster_limit(-1)
  end
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
  if not context.retrigger_joker then
    local previous_position = nil
    local poketype_list = nil
    local previous_edition = nil
    local previous_perishable = nil
    local previous_perish_tally = nil
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
    local previous_mega = nil
    
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
      previous_perish_tally = card.ability.perish_tally
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
    
    if card.config.center.rarity == "poke_mega" then
      previous_mega = true
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
         SMODS.change_booster_limit(-1)
      else
        new_card:set_edition(previous_edition, true)
      end
    end
    
    if previous_perishable then
       new_card.ability.perishable = previous_perishable
       if previous_mega or card.ability.extra.devolved or card.ability.perish_tally <= 0 then
        new_card.ability.extra.devolved = true
        new_card.ability.perish_tally = previous_perish_tally
       else
         new_card.ability.perish_tally = G.GAME.perishable_rounds
       end
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
        if v and v > 0 and new_card.ability and new_card.ability.extra and type(new_card.ability.extra) == "table" and new_card.ability.extra[l] and v > new_card.ability.extra[l] then
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
  if ((not context.repetition and not context.individual and context.end_of_round) or ignore_step) and not context.blueprint and not card.gone then
    return true
  else
    return false
  end
end

level_evo = function(self, card, context, forced_key)
    if not card.ability.extra.rounds then return end
    if card.debuff then return end
    if can_evolve(self, card, context, forced_key) then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
      end
      if card.ability.extra.rounds <= 0 then
        return {
          message = evolve (self, card, context, forced_key)
        }
      elseif card.ability.extra.rounds > 0 then
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    elseif can_evolve(self, card, context, forced_key, nil, true) then
      if card.ability.extra.rounds > 0 then
        card.ability.extra.rounds = card.ability.extra.rounds - 1
        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize("poke_evolve_level")})
      end
    end
    if can_evolve(self, card, context, forced_key, true) and card.ability.extra.rounds <= 1 and not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return card.ability.extra.rounds <= 1 and not next(find_joker("everstone")) and not card.REMOVED end
      juice_card_until(card, eval, true)
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

      if can_evolve(self, card, context, forced_key, true) then
        if not card.ability.extra.juiced then
          card.ability.extra.juiced = true
          local eval = function(card) return card.ability.extra.evolve and not card.REMOVED and not G.RESET_JIGGLES end
          juice_card_until(card, eval, true)
        end
      end
      
    end
end

scaling_evo = function (self, card, context, forced_key, current, target)
  if (SMODS.Mods["Talisman"] or {}).can_load then
    current = to_big(current)
    target = to_big(target)
  end
  if can_evolve(self, card, context, forced_key) and current >= target then
    return {
      message = evolve (self, card, context, forced_key)
    }
  end
  if can_evolve(self, card, context, forced_key, true) and current >= target then
    if not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return current >= target and not card.REMOVED and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
  end
end

type_evo = function (self, card, context, forced_key, type_req)
  if can_evolve(self, card, context, forced_key) and card.ability[type_req.."_sticker"] then
    return {
      message = evolve (self, card, context, forced_key)
    }
  elseif can_evolve(self, card, context, forced_key, true) and card.ability[type_req.."_sticker"] then
    if not card.ability.extra.juiced then
      card.ability.extra.juiced = true
      local eval = function(card) return card.ability[type_req.."_sticker"] and not card.REMOVED and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
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

  -- find the pokermon's family list
  local found_family = nil
  for _, v in ipairs(family) do
    for _, y in ipairs(v) do
      if ((type(y) == "table" and y.key) or y) == name then
        found_family = v
      end
    end
  end
  -- if pokermon isn't in a family, return false
  if not found_family then return false end

  -- Check for max evo in family list, ignoring megas and aux pokermons
  local max = #found_family
  local max_evo_name = (type(found_family[max]) == "table" and found_family[max].key) or found_family[max]
  while max > 0 and (string.sub(max_evo_name,1,5) == "mega_" or G.P_CENTERS["j_poke_"..max_evo_name].aux_poke) do
    max = max - 1
    max_evo_name = (type(found_family[max]) == "table" and found_family[max].key) or found_family[max]
  end
  local max_stage = G.P_CENTERS["j_poke_"..max_evo_name].stage
  -- if already at the max stage, return false
  if G.P_CENTERS["j_poke_"..name].stage == max_stage then return false end

  local evos = {max_evo_name}
  max = max - 1

  while max > 0 do
    local evo_name = (type(found_family[max]) == "table" and found_family[max].key) or found_family[max]
    if max_stage == G.P_CENTERS["j_poke_"..evo_name].stage then
      table.insert(evos, evo_name)
      max = max - 1
    else
      break
    end
  end

  if #evos == 1 then
    return evos[1]
  end
  return pseudorandom_element(evos, pseudoseed('highest'))
end

get_previous_evo = function(card, full_key)
  local name = nil
  local found = nil
  local prev = nil
  local max = nil
  if not card.name and card.ability.name then
    name = card.ability.name
  else
    name = card.name or "bulbasaur"
  end
  for k, v in ipairs(family) do
    for x, y in ipairs(v) do
      local cur_name = (type(y) == "table" and y.key) or y
      if cur_name == name then
        found = true
        max = #v
        local max_evo_name = (type(v[max]) == "table" and v[max].key) or v[max]

        if x > 1 then
          while max > 0 and string.sub(max_evo_name,1,5) == "mega_" or max_evo_name == "slowking" do
            max = max - 1
            if max > 0 then
              max_evo_name = (type(v[max]) == "table" and v[max].key) or v[max]
            end
          end
          prev = max_evo_name
        end
        break
      end
    end
    if found then break end
  end
  if full_key then
    prev = 'j_poke_'..prev
  end
  return prev
end

get_family_keys = function(cardname, custom_prefix)
  local keys = {}
  local line = nil
  local extra = nil
  custom_prefix = custom_prefix and 'j_'..custom_prefix..'_' or 'j_poke_'
  for k, v in pairs(family) do
    for x, y in pairs(v) do
      if y == cardname or (type(y) == "table" and y.key == cardname) then line = v; break end
    end
  end
  if line then
    for i = 1, #line do
      if type(line[i]) == "table" then
        local new_table = {}
        new_table.key = custom_prefix..line[i].key
        for k, v in pairs(line[i]) do
          if k ~= 'key' then
            new_table[k] = v
          end
        end
        table.insert(keys, new_table)
      else
        table.insert(keys, custom_prefix..line[i])
      end
    end
  else
    table.insert(keys, custom_prefix..cardname)
  end
  for k, v in pairs(extended_family) do
    if k == cardname then
      for x, y in pairs(v) do
        table.insert(keys, custom_prefix..y)
      end
    end
  end
  if extra and #extra > 0 then
    for i = 2, #extra do
      if type(extra[i]) == "table" then
        local extra_table = {}
        extra_table.key = custom_prefix..extra[i].key
        for k, v in pairs(extra[i]) do
          if k ~= 'key' then
            extra_table[k] = v
          end
        end
        table.insert(keys, extra_table)
      else
        table.insert(keys, custom_prefix..extra[i])
      end
    end
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
      local cur_name = (type(p) == "table" and p.key) or p
      if cur_name ~= name and next(find_joker(cur_name)) then
        found_other = true 
      elseif cur_name == name then
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

function is_evo_item_for(self, card)
  if not card.ability or type(card.ability.extra) ~= "table" or card.ability.extra.evolve then return false end

  if type(card.ability.extra.item_req) == "table" then
    for _, item in pairs(card.ability.extra.item_req) do
      if item == self.name then
        return true
      end
    end
  end
  return card.ability.extra.item_req == self.name
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

get_random_poke_key = function(pseed, stage, pokerarity, area, poketype, exclude_keys)
  local poke_keys = {}
  local pokearea = area or G.jokers
  local poke_key
  exclude_keys = exclude_keys or {}
  
  if pokerarity then
    if string.lower(pokerarity) == "common" then pokerarity = 1 end
    if string.lower(pokerarity) == "uncommon" then pokerarity = 2 end
    if string.lower(pokerarity) == "rare" then pokerarity = 3 end
  end
  
  for k, v in pairs(G.P_CENTERS) do
    if v.stage and v.stage ~= "Other" and not (stage and v.stage ~= stage) and not (pokerarity and v.rarity ~= pokerarity) and get_gen_allowed(v.atlas)
       and not (poketype and poketype ~= v.ptype) and pokemon_in_pool(v) and not v.aux_poke and not exclude_keys[v.key] then
      local no_dup = true
      if G.jokers and G.jokers.cards and not next(find_joker("Showman")) then
        for l, m in pairs(G.jokers.cards) do
          if v.key == m.config.center_key then
            no_dup = false
          end
        end
      end
      if no_dup then
        table.insert(poke_keys, v.key)
      end
    end
  end
  
  if #poke_keys > 0 then
    poke_key = pseudorandom_element(poke_keys, pseudoseed(pseed))
  else
    poke_key = "j_poke_caterpie"
  end

  return poke_key
end

create_random_poke_joker = function(pseed, stage, pokerarity, area, poketype)
  local create_args = {set = "Joker", area = pokearea, key = ''}
  create_args.key = get_random_poke_key(pseed, stage, pokerarity, area, poketype)

  return SMODS.create_card(create_args)
end

get_gen_allowed = function(atlas)
  local gen_allowed = true
  if pokermon_config.gen_one and atlas ~= "poke_Pokedex1" and atlas ~= "poke_others" then
    gen_allowed = false
  end
  return gen_allowed
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

find_other_poke_or_energy_type = function(card, poke_type, count_self)
  local energy = nil
  local type_count = 0
  if string.lower(poke_type) == "dark" then
    energy = "darkness_energy"
  else
    energy = string.lower(poke_type).."_energy"
  end
  type_count = #find_pokemon_type(poke_type)
  if is_type(card, poke_type) and not count_self then
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
            card.ability.fainted = G.GAME.round
            card:set_debuff()
            return true
          end
        })) 
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('poke_faint_ex'), colour = G.C.MULT})
      end
    end
  end
end

volatile_active = function(self, card, direction)
  local active = true
  local first_pos = nil
  local self_pos = 0
  local normal_pos = 0
  for i = 1, #G.jokers.cards do
    local volatile = G.jokers.cards[i].config.center.volatile
    if G.jokers.cards[i] == card then
      self_pos = i
    end
    if not volatile then
      normal_pos = i
      if not first_pos then first_pos = i end
    end
  end
  if direction == 'left' and first_pos and first_pos < self_pos then 
    active = false
  end
  if direction == 'right' and normal_pos > self_pos then
    active = false
  end
  return active
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

fossil_generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
  if not full_UI_table.name then
    full_UI_table.name = localize({ type = "name", set = self.set, key = self.key, nodes = full_UI_table.name })
  end
  -- get descriptions
  local vars = self:loc_vars(info_queue, card).vars
  local count = #desc_nodes + 1
  localize{type = 'descriptions', key = self.key, set = self.set, nodes = desc_nodes, vars = vars}
  -- set count to the first line with a colon
  while count <= #desc_nodes and not(desc_nodes[count][2] and desc_nodes[count][2].config.text and string.find(desc_nodes[count][2].config.text,":")) do
    count = count + 1
  end

  local evolution_node = nil
  local to_replace = {}
  while #desc_nodes >= count do
    local new_node = {n=G.UIT.R, config={align = "tl", scale = 1.0, colour = G.C.UI.TEXT_LIGHT}, nodes = {}}
    local nodes = desc_nodes[count]
    table.remove(desc_nodes, count)

    if nodes[1] and nodes[1].config.text and string.find(nodes[1].config.text,"%(Evolves") then
      evolution_node = nodes
    else
      if not (nodes[2] and nodes[2].config.text and string.find(nodes[2].config.text,":")) then
        local last_nodes = to_replace[#to_replace].nodes
        table.insert(nodes, 1, {n=G.UIT.C, config={align = "m", colour = G.C.WHITE, r = 0.05, padding = 0.03, res = 0.15, maxh = 0.2}, nodes={
          {n=G.UIT.T, config={text = "99 ", colour = G.C.WHITE, scale = last_nodes[1].nodes[1].config.scale}},
        }})
        local text_extract = string.match(last_nodes[2].config.text,"%s*:%s*")
        table.insert(nodes, 2, {n=G.UIT.T, config={text = text_extract, colour = G.C.WHITE, scale = last_nodes[2].config.scale, maxh = 0.2}})
      end
      new_node.nodes = nodes
      table.insert(to_replace, new_node)
    end
  end

  desc_nodes[#desc_nodes+1] = {{n=G.UIT.C, config = {align = "tl", scale = 1.0, colour = G.C.UI.TEXT_LIGHT, padding = 0.05}, nodes = to_replace}}
  if evolution_node then
    desc_nodes[#desc_nodes+1] = evolution_node
  end
end

poke_get_family_list = function(name)
  for _, v in ipairs(family) do
    for _, y in ipairs(v) do
      if ((type(y) == "table" and y.key) or y) == name then
        return v
      end
    end
  end
  return {}
end

poke_family_present = function(center)
  if next(find_joker("Showman")) or next(find_joker("pokedex")) then return false end
  local family_list = poke_get_family_list(center.name)
  for _, fam in pairs(family_list) do
    if G.GAME.used_jokers["j_poke_"..((type(fam) == "table" and fam.key) or fam)] then
      return true
    end
  end
  return false
end