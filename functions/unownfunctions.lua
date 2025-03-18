if SMODS.Ranks['2'].prev == SMODS.Ranks['Jack'].prev then
   print("SMODS ERROR STILL EXISTS")
   -- fix starting prev tables
   for _, rank in pairs(SMODS.Ranks) do
      if not rank.prev or string.len(rank.card_key) == 1 then
         rank.prev = {}
      end
   end

   for _, rank in pairs(SMODS.Ranks) do
      for _, next in pairs(rank.next) do
         table.insert(SMODS.Ranks[next].prev, rank.key)
      end
   end
else
   print("SMODS FIXED THEIR ERROR")
end


poke_unown_rank_names = { 'poke_UA', 'poke_UB', 'poke_UC', 'poke_UD', 'poke_UE', 'poke_UF', 'poke_UG', 'poke_UH',
   'poke_UI', 'poke_UJ', 'poke_UK', 'poke_UL', 'poke_UM', 'poke_UN', 'poke_UO', 'poke_UP', 'poke_UQ', 'poke_UR',
   'poke_US', 'poke_UT', 'poke_UU', 'poke_UV', 'poke_UW', 'poke_UX', 'poke_UY', 'poke_UZ', 'poke_UZ!', 'poke_UZ?' }
local letter_ranks = {}
local letters = { 'Z?', 'Z!', 'Z', 'Y', 'X', 'W', 'V', 'U', 'T', 'S', 'R', 'Q', 'P', 'O', 'N', 'M', 'L', 'K', 'J', 'I',
   'H', 'G', 'F', 'E', 'D', 'C', 'B', 'A' }

SMODS.Suit {
   key = 'Unown',
   card_key = 'Unown',
   hidden = true,
   pos = { x = 0, y = 0 },
   ui_pos = { x = 0, y = 0 },
   keep_base_colours = false,
   lc_color = "374244",
   lc_atlas = 'Unown',
   ui_atlas = 'pokeui_assets',
   lc_ui_atlas = 'pokeui_assets',
   in_pool = function(self, args)
      if args and (args.initial_deck or args.rank == '') then
         return false
      end
      return true
   end,
   create_default_deck_skin = function(self)
      SMODS.DeckSkin {
         key = 'default_' .. self.key,
         prefix_config = { key = false },
         suit = self.key,
         palettes = {
            {
               key = 'def',
               ranks = poke_unown_rank_names,
               display_ranks = { 'poke_UK', 'poke_UQ', 'poke_UJ' },
               atlas = self.lc_atlas,
               pos_style = 'deck'
            },
         }
      }
   end,
}

for i, letter in pairs(letters) do
   letter_ranks[letter] = SMODS.Rank {
      key = 'U' .. letter,
      card_key = 'U' .. letter,
      pos = { x = 28 - i },
      nominal = 20,
      next = i ~= 1 and { 'poke_U' .. letters[i - 1] } or {},
      prev = {},
      Unown = true,
      shorthand = '' .. string.sub(letter, -1),
      in_pool = function(self, args)
         if args and (args.initial_deck or args.suit ~= 'poke_Unown') then
            return false
         end
         if G.GAME.possible_Unown == nil then
            G.GAME.possible_Unown = pseudorandom_element(poke_unown_rank_names, pseudoseed('unown_rank'))
         end
         return G.GAME and G.GAME.Unown or G.GAME.possible_Unown == self.key
      end,
   }
end

SMODS.Ranks.poke_UJ.id = 11
SMODS.Ranks.poke_UQ.id = 12
SMODS.Ranks.poke_UK.id = 13
SMODS.Ranks.poke_UA.id = 14
SMODS.Ranks.poke_UA.straight_edge = true


function create_new_unown()
   local _rank = SMODS.Ranks[pseudorandom_element(poke_unown_rank_names, pseudoseed('unown_rank'))]
   local card = create_playing_card({ front = G.P_CARDS['poke_Unown_' .. _rank.card_key] }, G.deck, nil, nil,
      { G.C.PURPLE })
   playing_card_joker_effects({ card })
   return card
end

function is_punctuation(card, hand)
   local found = nil
   for i, value in ipairs(hand) do
      if value == card then
         found = i
      elseif found then
         if not hand[i].base or (hand[i].base.value ~= 'poke_UZ!' and hand[i].base.value ~= 'poke_UZ?') then
            return false
         end
      end
   end
   return found ~= nil
end

function calculate_Unown_playing_card(card, context)
   if context.main_scoring and context.full_hand then
      if card.base.value == 'poke_UZ!' and is_punctuation(card, context.full_hand) then
         return {
            message = localize { type = 'variable', key = 'a_mult', vars = { 20 } },
            colour = G.C.MULT,
            mult_mod = 20,
         }
      end
      if card.base.value == 'poke_UZ?' and is_punctuation(card, context.full_hand) then
         return {
            message = localize { type = 'variable', key = 'a_chips', vars = { 100 } },
            colour = G.C.CHIPS,
            chip_mod = 100
         }
      end
      if card.base.value == 'poke_UI' then
         return {
            message = localize { type = 'variable', key = 'a_chips', vars = { 1 } },
            colour = G.C.CHIPS,
            chip_mod = 1
         }
      end
      if card.base.value == 'poke_UV' then
         return {
            message = localize { type = 'variable', key = 'a_chips', vars = { 5 } },
            colour = G.C.CHIPS,
            chip_mod = 5
         }
      end
      if card.base.value == 'poke_UX' then
         return {
            message = localize { type = 'variable', key = 'a_chips', vars = { 10 } },
            colour = G.C.CHIPS,
            chip_mod = 10
         }
      end
      if card.base.value == 'poke_UL' then
         return {
            message = localize { type = 'variable', key = 'a_chips', vars = { 50 } },
            colour = G.C.CHIPS,
            chip_mod = 50
         }
      end
   end
end

function unown_convert_to_unown(rank, suit)
   local new_id = nil
   for k, v in pairs(SMODS.Ranks) do
      if v.shorthand == rank then
         new_id = v.id
         break
      end
   end
   local new_rank = ((new_id - 1) % 13) + 1
   if suit == 'D' or suit == 'H' then
      new_rank = new_rank + 13
   end
   return poke_unown_rank_names[new_rank], 'poke_Unown'
end

local prev_inject_p_card = SMODS.inject_p_card
SMODS.inject_p_card = function(suit, rank)
   G.SETTINGS.colour_palettes.poke_Unown = 'lc'
   if suit.card_key == 'poke_Unown' or rank.Unown then
      if suit.card_key == 'poke_Unown' and rank.Unown then
         G.P_CARDS[suit.card_key .. '_' .. rank.card_key] = {
            name = rank.key .. ' of ' .. suit.key,
            value = rank.key,
            suit = suit.key,
            pos = { x = rank.pos.x % 10, y = math.floor(rank.pos.x / 10) },
            atlas = 'poke_Unown',
            lc_atlas = 'poke_Unown',
            hc_atlas = 'poke_Unown_hc',
            lc_ui_atlas = 'poke_pokeui_assets',
            hc_ui_atlas = 'poke_pokeui_assets_hc',
         }
      end
   else
      prev_inject_p_card(suit, rank)
   end
end

local prev_change_base = SMODS.change_base
function SMODS.change_base(card, suit, rank)
   local _suit = suit or card.base.suit
   local _rank = rank or card.base.value
   if (_suit == 'poke_Unown') == (SMODS.Ranks[_rank].Unown == true) then
      return prev_change_base(card, _suit, _rank)
   end
   if _rank == "King" then
      _rank = "poke_UK"
   elseif _rank == "Queen" then
      _rank = "poke_UQ"
   elseif _rank == "Jack" then
      _rank = "poke_UJ"
   elseif _rank == "Ace" then
      _rank = "poke_UA"
   end
   if not SMODS.Ranks[_rank].Unown then
      _rank = letter_ranks[pseudorandom_element(letters, pseudoseed('unown_rank'))].key
   end
   return prev_change_base(card, 'poke_Unown', _rank)
end

local prev_Card_set_base = Card.set_base
Card.set_base = function(self, card, initial)
   card = card or self.config.card
   prev_Card_set_base(self, card, initial)
end

local prev_Card_get_nominal = Card.get_nominal
Card.get_nominal = function(self, mod)
   local val = prev_Card_get_nominal(self, mod)
   if self.base and self.base.suit == 'poke_Unown' and self.base.value and SMODS.Ranks[self.base.value] then
      val = val + 28 - SMODS.Ranks[self.base.value].pos.x
   end
   return val
end


local prev_get_straight = get_straight
function get_straight(hand, min_length, skip, wrap)
   min_length = min_length or 5
   if min_length < 2 then min_length = 2 end
   if #hand < min_length then return {} end
   local ret = prev_get_straight(hand, min_length, skip, wrap)
   if type(ret) == "table" and #ret > 0 then return ret end

   local conversion = { Ace = 'poke_UA', King = 'poke_UK', Queen = 'poke_UQ', Jack = 'poke_UJ', }
   for k, v in pairs(conversion) do
      conversion[v] = k
   end

   ret = {}
   local chain = {}
   local card_list = {}
   for _, card in pairs(hand) do
      if card.base and card.base.value and SMODS.Ranks[card.base.value] and SMODS.Ranks[card.base.value].next then
         chain[card.base.value] = chain[card.base.value] or {}
         card_list[card.base.value] = card
         for _, next in pairs(SMODS.Ranks[card.base.value].next) do
            table.insert(chain[card.base.value], next)
         end
         local new_value = conversion[card.base.value]
         if new_value then
            chain[new_value] = chain[new_value] or {}
            card_list[new_value] = card
            for _, next in pairs(SMODS.Ranks[new_value].next) do
               table.insert(chain[new_value], next)
            end
         end
      end
   end

   local prev_results = {}
   local prev_lists = {}
   local debug_list = {}
   local iter_search
   iter_search = function(rank)
      if not prev_results[rank] or not prev_lists[rank] then
         prev_lists[rank] = { card_list[rank] }
         debug_list[rank] = { rank }
         prev_results[rank] = 1

         if type(chain[rank]) == "table" and #chain[rank] > 0 then
            local longest_list = nil
            for _, next in pairs(chain[rank]) do
               if type(chain[next]) == "table" and #chain[next] > 0 then
                  iter_search(next)
                  if prev_results[next] >= prev_results[rank] then
                     longest_list = next
                     prev_results[rank] = prev_results[next] + 1
                  end
               end
            end
            if longest_list then
               for _, v in pairs(prev_lists[longest_list]) do
                  table.insert(prev_lists[rank], v)
               end
               for _, v in pairs(debug_list[longest_list]) do
                  table.insert(debug_list[rank], v)
               end
            end
         end
      end
   end

   for rank, _ in pairs(card_list) do
      iter_search(rank)
   end

   for _r, list in pairs(prev_lists) do
      if #list >= min_length then
         table.insert(ret, list)
      end
   end

   table.sort(ret, function(a, b) return #a > #b end)
   return ret
end
