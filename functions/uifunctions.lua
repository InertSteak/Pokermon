create_scry_cardarea = function()
   local config = { card_limit = 0, type = 'scry' }
   config.major = G.deck
   local scry_view = CardArea(0, 0, 2 * G.CARD_W, 0.5 * G.CARD_H, config)
   scry_view.T.x = G.TILE_W - G.deck.T.w / 2 - scry_view.T.w / 2 - 0.4
   scry_view.T.y = G.TILE_H - G.deck.T.h - scry_view.T.h
   scry_view:hard_set_VT()

   G.GAME.scry_amount = G.GAME.scry_amount or 0
   return scry_view
end

cards_dont_match = function(card1, card2)
   if type(card1) ~= type(card2) then return true end
   if card1.config.center ~= card2.config.center then return true end
   if card1.config.card_key ~= card2.config.card_key then return true end
   if card1.base.name ~= card2.base.name then return true end
   if card1.base.suit ~= card2.base.suit then return true end
   if card1.base.value ~= card2.base.value then return true end
   if type(card1.edition) ~= type(card2.edition) then return true end
   if card1.edition and card1.edition.type ~= card2.edition.type then return true end
   if card1.seal ~= card2.seal then return true end
   if card1.debuff ~= card2.debuff then return true end
   if card1.pinned ~= card2.pinned then return true end
   return false
end

hide_scry_cardarea = function()
   G.scry_view.states.visible = false
   local to_kill = #G.scry_view.cards
   for i = to_kill, 1, -1 do
      G.scry_view.cards[i]:remove()
   end
end

update_scry_cardarea = function(scry_view)
   if not scry_view.states.visible then
      local to_kill = #scry_view.cards
      for i = to_kill, 1, -1 do
         scry_view.cards[i]:remove()
      end
     scry_view.states.visible = true
   end
   if scry_view.children.area_uibox then
      scry_view.children.area_uibox.states.visible = false
   end
   if scry_view.adjusting_cards then return end
   scry_view.adjusting_cards = true

   local deck = {}
   for i = 1, G.GAME.scry_amount do
      if #G.deck.cards + 1 <= i then break end
      deck[i] = G.deck.cards[#G.deck.cards + 1 - i]
   end
   -- blank card that will cause the removal of any extra cards
   deck[G.GAME.scry_amount + 1] = true

   local i = 1
   for k, card in pairs(deck) do
      while i <= #scry_view.cards and cards_dont_match(card,scry_view.cards[i]) do
         scry_view.cards[i]:start_dissolve({G.C.PURPLE})
         i = i + 1
      end
      if k <= G.GAME.scry_amount and cards_dont_match(card, scry_view.cards[i]) then
         local temp_card = copy_card(card, nil, 0.7)
         temp_card.states.drag.can = false
         temp_card.states.hover.can = false
         scry_view:emplace(temp_card)
         temp_card:start_materialize({G.C.PURPLE})
      end
      i = i + 1
   end
   G.E_MANAGER:add_event(Event({
      func = function()
         scry_view.adjusting_cards = false
         return true
      end,
   }))
end

poke_random_text = function(strings, config)
  config = config or {}
  local c_colours = config.colours or {G.C.UI.TEXT_DARK}
  if config.poke_rep_string and config.poke_rep_num then
    for i = 1, config.poke_rep_num do
      strings[#strings + 1] = config.poke_rep_string
    end
  end
  local c_scale = config.scale or 0.32
  local c_pop_in_rate = config.pop_in_rate or 9999999
  local c_silent = config.not_silent and false or true
  local c_random_element = config.not_random_element and false or true
  local c_pop_delay = config.pop_delay or 0.2011
  local c_min_cycle_time = config.min_cycle_time or 0
  return {colours = c_colours, string = strings, scale = c_scale, pop_in_rate = c_pop_in_rate, silent = c_silent, random_element = c_random_element, 
          pop_delay = c_pop_delay, min_cycle_time = c_min_cycle_time}
end

-- Collection Grid UI helper functions
function poke_create_your_collection_card(key, x, y)
  local form = type(key == 'table') and key.form
  local center_key = type(key == 'table') and key.key or key
  local center = G.P_CENTERS[center_key]

  local card = Card(x, y, G.CARD_W, G.CARD_H, nil, center)

  if form and center.set_sprites then
    card.ability.extra.form = form
    center:set_sprites(card)
    if center.set_ability then
      center:set_ability(card)
    end
  end

  return card
end

local function create_cardareas(row_count, col_count)
  G.your_collection = {}
  local nodes = {}

  for i = 1, row_count do
    local cardarea = CardArea(
      G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2,
      G.ROOM.T.h,
      G.CARD_W * col_count,
      G.CARD_H * 0.95,
      {
        card_limit = col_count,
        type = 'title',
        highlight_limit = 0,
        collection = true,
      }
    )

    nodes[#nodes + 1] = {
      n = G.UIT.R,
      config = { align = "cm", padding = 0.07, no_fill = true },
      nodes = {
        { n = G.UIT.O, config = { object = cardarea } }
      }
    }

    G.your_collection[i] = cardarea
  end

  return nodes
end

local function populate_cardareas(keys, options)
  local page = options.page or 1
  local rows = options.rows or 3
  local cols = options.cols or 5
  local create_card_func = options.create_card_func or poke_create_your_collection_card
  local offset = rows * cols * (page - 1)

  local marker = 1 + offset
  for i = 1, rows do
    local cardarea = G.your_collection[i]

    local lastcard = math.min(marker + cols - 1, #keys)
    for j = marker, lastcard do
      local x = cardarea.T.x + cardarea.T.w / 2
      local y = cardarea.T.y

      local card = create_card_func(keys[j], x, y)

      cardarea:emplace(card)
    end

    marker = marker + cols
  end
end

function poke_create_UIBox_your_collection(args)
  args = args or {}

  local keys = args.keys or {}
  local rows = args.rows or 3
  local cols = args.cols or 5
  local create_card_func = args.create_card_func or poke_create_your_collection_card

  local page_text = args.page_text or localize('k_page')
  local show_pagination = true

  if args.dynamic_sizing then
    if #keys <= rows * cols then show_pagination = false end
    rows = math.min(math.ceil(#keys / cols), rows)
    cols = math.min(#keys, cols)
  end

  local nodes = {
    {
      n = G.UIT.R,
      config = {
        align = "cm",
        r = 0.1,
        colour = G.C.BLACK,
        emboss = 0.05
      },
      nodes = create_cardareas(rows, cols)
    }
  }

  populate_cardareas(keys, { rows = rows, cols = cols, create_card_func = create_card_func })

  if show_pagination then
    local pages = math.max(math.ceil(#keys / (rows * cols)), 1)
    local page_options = {}

    for i = 1, pages do
      page_options[#page_options + 1] = page_text .. ' ' .. i .. '/' .. pages
    end

    nodes[#nodes + 1] = {
      n = G.UIT.R, config = { align = "cm" }, nodes = {
        create_option_cycle {
          options = page_options,
          w = 4.5,
          cycle_shoulders = true,
          opt_callback = 'poke_your_collection_page',
          current_option = 1,
          keys = keys,
          rows = rows,
          cols = cols,
          create_card_func = create_card_func,
          colour = G.C.RED,
          no_pips = true,
          focus_args = {
            snap_to = true,
            nav = 'wide'
          }
        }
      }
    }
  end

  return nodes
end

G.FUNCS.poke_your_collection_page = function(args)
  if not args or not args.cycle_config then return end

  local page = args.cycle_config.current_option
  local keys = args.cycle_config.keys
  local rows = args.cycle_config.rows
  local cols = args.cycle_config.cols
  local create_card_func = args.cycle_config.create_card_func

  for _, cardarea in ipairs(G.your_collection) do
    remove_all(cardarea.cards)
  end

  populate_cardareas(keys, { page = page, rows = rows, cols = cols, create_card_func = create_card_func })

  INIT_COLLECTION_CARD_ALERTS()
end

local function parse_url(url)
  -- simple Url parser for getting domain name and path
  local protocol = url:match('[a-z]+://')
  if protocol then url = url:sub(protocol:len() + 1) end
  local domains = {}
  for domain in url:gmatch('([a-z0-9%-]+)%.') do
    table.insert(domains, domain)
  end
  local domain_name = domains[#domains]
  local path = url:match('.[a-z]+/(.*)')
  return domain_name, path
end

local site_colours = {
  ['youtube'] = HEX("FF0033"),
  ['twitch'] = HEX("6441A5"),
  ['steam'] = G.C.BLACK,
  ['steamcommunity'] = G.C.BLACK,
  ['x'] = HEX("283234"),
  ['twitter'] = G.C.BLUE,
  ['reddit'] = HEX("FF4500"),
  ['carrd'] = HEX("4071B7"),
  ['discord'] = HEX("5865F2")
}

local function get_site_colour(domain)
  return site_colours[domain] or G.C.RED
end

local function first_to_upper(str)
  return str:gsub("^%l", string.upper)
end

function poke_UIBox_link_button(args)
  local domain_name, path = parse_url(args.url)

  args.button = 'pokermon_open_site'
  args.colour = args.colour or get_site_colour(domain_name)

  if not args.label then
    args.label = {
      args.site_text or first_to_upper(domain_name),
      -- we live in a society
      args.bottom_text or path
    }
  end

  local scale = args.scale

  if type(scale) == 'table' then
    args.scale = scale[1]
  end

  local button = UIBox_button(args)

  -- We can do this because UIBox_button does not return a UIBox
  button.nodes[1].config.url = args.url

  if type(scale) == 'table' then
    for i = 2, #scale do
      if button.nodes[1].nodes[i] then
        button.nodes[1].nodes[i].nodes[1].config.scale = scale[i]
      end
    end
  end

  return button
end

function G.FUNCS.pokermon_open_site(e)
  if e and e.config then
    local url = e.config.url
    if url then
      love.system.openURL(url)
    end
  end
end


-- Ordering Collection by Pokedex Order, and enabling pokemon only in collection
-- modifying this function for *two* different config settings
SMODS.collection_pool = function(_base_pool)
  local pool = {}
  local inserts = {}
  if type(_base_pool) ~= 'table' then return pool end
  local is_array = _base_pool[1]
  local ipairs = is_array and ipairs or pairs
  for _, v in ipairs(_base_pool) do
    local moved = false
    if (not G.ACTIVE_MOD_UI or v.mod == G.ACTIVE_MOD_UI) and not v.no_collection then
      if pokermon_config.order_jokers then
        for x, y in pairs(pokermon.dex_order_groups) do
          if table.contains(y, v.name) then
            inserts[#inserts+1] = v
            moved = true
          end
        end
      end
      local empty_vanilla = v.set == 'Joker' and not v.stage and pokermon_config.pokemon_only_collection
      if not moved and not empty_vanilla then pool[#pool+1] = v end
    end
  end

  if pokermon_config.order_jokers then
    table.sort(inserts, function(a, b) return pokermon.get_dex_number(a.name) < pokermon.get_dex_number(b.name) end)
    for k, v in pairs(inserts) do
      for x, y in pairs(pokermon.dex_order_groups) do
        if table.contains(y, v.name) then
          local next_index = pokermon.dex_order[pokermon.find_next_dex_number(v.name)]
          if type(next_index) == "table" then next_index = next_index[1] end
          if not table.contains(pool, v) then
            table.insert(pool, next_index and pokermon.find_pool_index(pool, 'j_poke_'..next_index) or #pool + 1, v)
          end
        end
      end
    end
  end

  if not is_array then table.sort(pool, function(a,b) return a.order < b.order end) end
  return pool
end

pokermon.find_pool_index = function(pool, key)
    for k, v in pairs(pool) do
      if v.key == key then return k end
    end
end

pokermon.get_dex_number = function(name)
  for i, pokemon in ipairs(pokermon.dex_order) do
    if type(pokemon) == 'table' then
      for x, y in ipairs(pokemon) do
        if name == y then return i + (x - 1)/10 end
      end
    elseif type(pokemon) == "string" and name == pokemon then return i end
  end
  return #pokermon.dex_order + 1
end

pokermon.find_next_dex_number = function(name)
  local dexNo = pokermon.get_dex_number(name)
  local group_list
  for k, v in pairs(pokermon.dex_order_groups) do
    if table.contains(v, name) then group_list = v break end
  end
  for i, pokemon in ipairs(pokermon.dex_order) do
    if type(pokemon) == 'table' then
      for _, mon in ipairs(pokemon) do
        if i > dexNo and not table.contains(group_list, mon) and G.P_CENTERS['j_poke_'..mon] then
          return i
        end
      end
    elseif i > dexNo and not table.contains(group_list, pokemon) and G.P_CENTERS['j_poke_'..pokemon] then
      return i
    elseif pokemon == "missingno" then return i end
  end
end

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end
