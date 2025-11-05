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
