local unown_create_card = function(args)
   local area = G.consumeables
   if args.set == 'Joker' then area = G.jokers end

   if #area.cards + (area == G.consumeables and G.GAME.consumeable_buffer or 0) - (args.edition and args.edition.negative and 1 or 0) < area.config.card_limit then
      if area == G.consumeables then
         G.GAME.consumeable_buffer = (G.GAME.consumeable_buffer or 0) + 1
      end
      G.E_MANAGER:add_event(Event({
         func = function()
            if #area.cards < area.config.card_limit then
               play_sound('timpani')
               local _card = SMODS.create_card(args)
               _card:add_to_deck()
               area:emplace(_card)
               G.GAME.consumeable_buffer = 0
               return true
            end
         end
      }))
   end
end

local unown_create_joker = function(key, edition)
   if key and not G.P_CENTERS[key] then return end
   unown_create_card({ set = 'Joker', key = key, edition = edition })
end

local unown_create_tarot = function(key, edition)
   if key and not G.P_CENTERS[key] then return end
   unown_create_card({ set = 'Tarot', key = key, edition = edition })
end

local unown_create_planet = function(key, edition)
   if key and not G.P_CENTERS[key] then return end
   unown_create_card({ set = 'Planet', key = key, edition = edition })
end

local unown_create_item = function(key, edition)
   if type(key) == "table" then
      key = pseudorandom_element(key, pseudoseed('unown_create_item'))
   end
   if key and not G.P_CENTERS[key] then return end
   unown_create_card({ set = 'Item', key = key, edition = edition })
end

local unown_create_energy = function(key, edition)
   if key and not G.P_CENTERS[key] then return end
   unown_create_card({ set = 'Energy', key = key, edition = edition })
end

local unown_create_spectral = function(card, key, edition)
   if key and not G.P_CENTERS[key] then return end
   if pseudorandom('unown_spectral') < 0.05 then -- 5% chance to create (1 in 20)
      unown_create_card({ set = 'Spectral', key = key, edition = edition })
   else
      card_eval_status_text(card, 'extra', nil, nil, nil,
         { message = localize('k_maybe_next_time'), colour = G.C.PURPLE })
   end
end

local unown_create_random = function()
   G.E_MANAGER:add_event(Event({
      func = function()
         local args = { set = 'Joker' }
         args.area = G.jokers
         if #G.jokers.cards >= G.jokers.config.card_limit then
            args.area = G.consumeables
            args.set = 'Tarot_Planet'
            if #G.consumeables.cards >= G.consumeables.config.card_limit then
               return true
            end
         end
         if #args.area.cards < args.area.config.card_limit then
            play_sound('timpani')
            local _card = SMODS.create_card(args)
            _card:add_to_deck()
            args.area:emplace(_card)
            return true
         end
      end
   }))
end

local unown_draw_cards = function(count)
   G.E_MANAGER:add_event(Event({
      func = function()
         for i = 1, count do
            draw_card(G.deck, G.hand, i * 100 / count)
            G.E_MANAGER:add_event(Event({
               func = function()
                  G.hand:sort()
                  return true
               end
            }))
         end
         return true
      end
   }))
end

local convert_cards_to_unown = function(count, options)
   local to_change = {}
   for _, v in pairs(G.playing_cards) do
      if not v.base or v.base.suit ~= 'poke_Unown' then
         table.insert(to_change, v)
      end
   end
   for i = 1, count do
      if #to_change > 0 then
         local target, key = pseudorandom_element(to_change, pseudoseed('unown_convert'))
         table.remove(to_change, key)
         local rank = nil
         if options and #options > 0 then
            rank = pseudorandom_element(options, pseudoseed('unown_rank'))
         end
         G.E_MANAGER:add_event(Event({
            func = function()
               SMODS.change_base(target, 'poke_Unown', rank)
               return true
            end
         }))
      end
   end
end

local add_new_unowns = function(count)
   G.E_MANAGER:add_event(Event({
      func = function()
         for i = 1, count do
            create_new_unown()
         end
         return true
      end
   }))
end

local add_vowel_unown = function()
   G.E_MANAGER:add_event(Event({
      func = function()
         local vowels = { 'poke_UA', 'poke_UE', 'poke_UI', 'poke_UO', 'poke_UU' }
         local _rank = pseudorandom_element(vowels, pseudoseed('unown_vowel'))
         local card = create_playing_card({ front = G.P_CARDS['poke_Unown_' .. _rank] }, G.deck, nil, nil, { G.C.PURPLE })
         playing_card_joker_effects({ card })
         return true
      end
   }))
end

local unown_create_undiscovered_pokemon = function()
   local undiscovered = {}
   for k, v in pairs(G.P_CENTERS) do
      if v.stage and v.rarity ~= 4 then
         table.insert(undiscovered, v.key)
      end
   end
   local poke_key = nil
   if #undiscovered > 0 then
      poke_key = pseudorandom_element(undiscovered, pseudoseed('unown_undiscovered'))
   end
   unown_create_card({ set = 'Joker', key = poke_key })
end

local unown_create_tag = function(tag_name)
   G.E_MANAGER:add_event(Event({
      func = function()
         if not tag_name or not G.P_TAGS[tag_name] then
            _, tag_name = pseudorandom_element(G.P_TAGS, pseudoseed('unown_tags'))
         end
         add_tag(Tag(tag_name))
         return true
      end
   }))
end

local unown_create_booster_tag = function()
   local tags = { 'tag_standard', 'tag_charm', 'tag_meteor', 'tag_buffoon', 'tag_ethereal' }
   unown_create_tag(pseudorandom_element(tags, pseudoseed('unown_booster_tags')))
end

local unown_create_money_tag = function()
   local tag_name = 'tag_investment'
   if pseudorandom('unown_investment') < 0.5 then
      tag_name = 'tag_economy'
   end
   unown_create_tag(tag_name)
end

local unown_nope = function(card)
   card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize('k_nope_ex'), colour = G.C.PURPLE })
end

unown_rewards = {
   -- specific joker creation
   UNOWN = function(card) unown_create_joker('j_poke_awakened_unown') end,
   RIVAL = function(card) unown_create_joker('j_poke_rival') end,
   GARY = function(card) unown_create_joker('j_poke_rival') end,
   BLUE = function(card) unown_create_joker('j_poke_rival') end,
   MUK = function(card) unown_create_joker('j_poke_muk') end,
   ABRA = function(card) unown_create_joker('j_poke_abra') end,
   ARON = function(card) unown_create_joker('j_poke_aron') end,
   AXEW = function(card) unown_create_joker('j_poke_axew') end,
   JYNX = function(card) unown_create_joker('j_poke_jynx') end,
   NATU = function(card) unown_create_joker('j_poke_natu') end,
   ONIX = function(card) unown_create_joker('j_poke_onix') end,
   SAWK = function(card) unown_create_joker('j_poke_sawk') end,
   SEEL = function(card) unown_create_joker('j_poke_seel') end,
   SNOM = function(card) unown_create_joker('j_poke_snom') end,
   XATU = function(card) unown_create_joker('j_poke_xatu') end,
   ABSOL = function(card) unown_create_joker('j_poke_absol') end,
   AIPOM = function(card) unown_create_joker('j_poke_aipom') end,
   ARBOK = function(card) unown_create_joker('j_poke_arbok') end,
   KOBRA = function(card) unown_create_joker('j_poke_arbok', { negative = true }) end,
   BAGON = function(card) unown_create_joker('j_poke_bagon') end,
   BUDEW = function(card) unown_create_joker('j_poke_budew') end,
   BUNNY = function(card) unown_create_joker('j_poke_buneary') end,
   BURMY = function(card) unown_create_joker('j_poke_burmy') end,
   DEINO = function(card) unown_create_joker('j_poke_deino') end,
   DITTO = function(card) unown_create_joker('j_poke_ditto') end,
   DODUO = function(card) unown_create_joker('j_poke_doduo') end,
   EEVEE = function(card) unown_create_joker('j_poke_eevee') end,
   EKANS = function(card) unown_create_joker('j_poke_ekans') end,
   SNAKE = function(card) unown_create_joker('j_poke_ekans', { negative = true }) end,
   GIBLE = function(card) unown_create_joker('j_poke_gible') end,
   GLOOM = function(card) unown_create_joker('j_poke_gloom') end,
   GOLEM = function(card) unown_create_joker('j_poke_golem') end,
   GOOMY = function(card) unown_create_joker('j_poke_goomy') end,
   HYPNO = function(card) unown_create_joker('j_poke_hypno') end,
   INKAY = function(card) unown_create_joker('j_poke_inkay') end,
   KLANG = function(card) unown_create_joker('j_poke_klang') end,
   KLAWF = function(card) unown_create_joker('j_poke_klawf') end,
   KLINK = function(card) unown_create_joker('j_poke_klink') end,
   LOKIX = function(card) unown_create_joker('j_poke_lokix') end,
   LOTAD = function(card) unown_create_joker('j_poke_lotad') end,
   LUXIO = function(card) unown_create_joker('j_poke_luxio') end,
   MAGBY = function(card) unown_create_joker('j_poke_magby') end,
   MINUN = function(card) unown_create_joker('j_poke_minun') end,
   MUNNA = function(card) unown_create_joker('j_poke_munna') end,
   NACLI = function(card) unown_create_joker('j_poke_nacli') end,
   NUMEL = function(card) unown_create_joker('j_poke_numel') end,
   PARAS = function(card) unown_create_joker('j_poke_paras') end,
   PAWMI = function(card) unown_create_joker('j_poke_pawmi') end,
   PAWMO = function(card) unown_create_joker('j_poke_pawmo') end,
   PICHU = function(card) unown_create_joker('j_poke_pichu') end,
   RALTS = function(card) unown_create_joker('j_poke_ralts') end,
   RIOLU = function(card) unown_create_joker('j_poke_riolu') end,
   ROTOM = function(card) unown_create_joker('j_poke_rotom') end,
   SHINX = function(card) unown_create_joker('j_poke_shinx') end,
   SNIVY = function(card) unown_create_joker('j_poke_snivy') end,
   TEPIG = function(card) unown_create_joker('j_poke_tepig') end,
   THROH = function(card) unown_create_joker('j_poke_throh') end,
   TOXEL = function(card) unown_create_joker('j_poke_toxel') end,
   --TOXIC = function(card) unown_create_joker('j_poke_toxel') end,
   YANMA = function(card) unown_create_joker('j_poke_yanma') end,
   ZORUA = function(card) unown_create_joker('j_poke_zorua') end,
   ZUBAT = function(card) unown_create_joker('j_poke_zubat') end,

   -- denied
   KUM = function(card) unown_nope(card) end,

   -- Legendaries
   MEW = function(card) unown_nope(card) end,
   UXIE = function(card) unown_nope(card) end,
   AZELF = function(card) unown_nope(card) end,
   ENTEI = function(card) unown_nope(card) end,
   HOOPA = function(card) unown_nope(card) end,
   KUBFU = function(card) unown_nope(card) end,
   LUGIA = function(card) unown_nope(card) end,
   HOOH = function(card) unown_nope(card) end,
   SOUL = function(card) unown_nope(card) end,
   NOPE = function(card) unown_nope(card) end,

   -- random card creation
   GAIN = function(card) unown_create_random() end,
   TAROT = function(card) unown_create_tarot() end,
   JOKER = function(card) unown_create_joker() end,
   ASTRO = function(card) unown_create_planet() end,
   POWER = function(card) unown_create_spectral(card) end,
   ITEM = function(card) unown_create_item() end,
   ITEMS = function(card) unown_create_item() end,
   COLOR = function(card) unown_create_energy() end,
   ['?????'] = function(card) unown_create_undiscovered_pokemon() end,
   BABY = function(card) unown_create_joker(get_random_poke_key('unown', nil, 'Baby')) end,
   BASIC = function(card) unown_create_joker(get_random_poke_key('unown', nil, 'Basic')) end,
   STAGE = function(card) unown_create_joker(get_random_poke_key('unown', nil, 'One')) end,

   -- specific tarot creation
   O = function(card) unown_create_tarot('c_fool') end,
   FOOL = function(card) unown_create_tarot('c_fool') end,
   I = function(card) unown_create_tarot('c_magician') end,
   MAGIC = function(card) unown_create_tarot('c_magician') end,
   II = function(card) unown_create_tarot('c_high_priestess') end,
   III = function(card) unown_create_tarot('c_empress') end,
   QUEEN = function(card) unown_create_tarot('c_empress') end,
   IV = function(card) unown_create_tarot('c_emperor') end,
   RULER = function(card) unown_create_tarot('c_emperor') end,
   V = function(card) unown_create_tarot('c_heirophant') end,
   SAINT = function(card) unown_create_tarot('c_heirophant') end,
   VI = function(card) unown_create_tarot('c_lovers') end,
   LOVER = function(card) unown_create_tarot('c_lovers') end,
   VII = function(card) unown_create_tarot('c_chariot') end,
   MOUNT = function(card) unown_create_tarot('c_chariot') end,
   VIII = function(card) unown_create_tarot('c_justice') end,
   JUST = function(card) unown_create_tarot('c_justice') end,
   IX = function(card) unown_create_tarot('c_hermit') end,
   ALONE = function(card) unown_create_tarot('c_hermit') end,
   X = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   WHEEL = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   XI = function(card) unown_create_tarot('c_strength') end,
   MIGHT = function(card) unown_create_tarot('c_strength') end,
   XII = function(card) unown_create_tarot('c_hanged_man') end,
   HANG = function(card) unown_create_tarot('c_hanged_man') end,
   XIII = function(card) unown_create_tarot('c_death') end,
   DEATH = function(card) unown_create_tarot('c_death') end,
   HORSE = function(card) unown_create_tarot('c_death') end,
   XIV = function(card) unown_create_tarot('c_temperance') end,
   TOTAL = function(card) unown_create_tarot('c_temperance') end,
   XV = function(card) unown_create_tarot('c_devil') end,
   DEVIL = function(card) unown_create_tarot('c_devil') end,
   XVI = function(card) unown_create_tarot('c_tower') end,
   TOWER = function(card) unown_create_tarot('c_tower') end,
   XVII = function(card) unown_create_tarot('c_star') end,
   STAR = function(card) unown_create_tarot('c_star') end,
   XVIII = function(card) unown_create_tarot('c_moon') end,
   MOON = function(card) unown_create_tarot('c_moon') end,
   XIX = function(card) unown_create_tarot('c_sun') end,
   SUN = function(card) unown_create_tarot('c_sun') end,
   XX = function(card) unown_create_tarot('c_judgement') end,
   JUDGE = function(card) unown_create_tarot('c_judgement') end,
   XXI = function(card) unown_create_tarot('c_world') end,
   WORLD = function(card) unown_create_tarot('c_world') end,

   -- specific tarot creation (weird roman numbers)
   VVX = function(card) unown_create_tarot('c_fool') end,
   VVVXV = function(card) unown_create_tarot('c_fool') end,
   VVXI = function(card) unown_create_tarot('c_magician') end,
   IIIIV = function(card) unown_create_tarot('c_magician') end,
   IIIV = function(card) unown_create_tarot('c_high_priestess') end,
   VVXII = function(card) unown_create_tarot('c_high_priestess') end,
   IIV = function(card) unown_create_tarot('c_empress') end,
   IIIVI = function(card) unown_create_tarot('c_empress') end,
   IIII = function(card) unown_create_tarot('c_emperor') end,
   IIVI = function(card) unown_create_tarot('c_emperor') end,
   VVXIV = function(card) unown_create_tarot('c_emperor') end,
   VVXV = function(card) unown_create_tarot('c_heirophant') end,
   IVI = function(card) unown_create_tarot('c_heirophant') end,
   VX = function(card) unown_create_tarot('c_heirophant') end,
   IIIII = function(card) unown_create_tarot('c_heirophant') end,
   IIVII = function(card) unown_create_tarot('c_heirophant') end,
   VVVXX = function(card) unown_create_tarot('c_heirophant') end,
   VVXVX = function(card) unown_create_tarot('c_heirophant') end,
   VXVVX = function(card) unown_create_tarot('c_heirophant') end,
   XVVVX = function(card) unown_create_tarot('c_heirophant') end,
   IVII = function(card) unown_create_tarot('c_lovers') end,
   VXI = function(card) unown_create_tarot('c_lovers') end,
   IIIIX = function(card) unown_create_tarot('c_lovers') end,
   VVXVI = function(card) unown_create_tarot('c_lovers') end,
   VXII = function(card) unown_create_tarot('c_chariot') end,
   IIIX = function(card) unown_create_tarot('c_chariot') end,
   IIIVV = function(card) unown_create_tarot('c_chariot') end,
   IIVIV = function(card) unown_create_tarot('c_chariot') end,
   IVIII = function(card) unown_create_tarot('c_chariot') end,
   IVIIV = function(card) unown_create_tarot('c_chariot') end,
   VIIIV = function(card) unown_create_tarot('c_chariot') end,
   VIIV = function(card) unown_create_tarot('c_justice') end,
   IVIV = function(card) unown_create_tarot('c_justice') end,
   IIVV = function(card) unown_create_tarot('c_justice') end,
   IIX = function(card) unown_create_tarot('c_justice') end,
   IIIXI = function(card) unown_create_tarot('c_justice') end,
   VXIII = function(card) unown_create_tarot('c_justice') end,
   VXIIV = function(card) unown_create_tarot('c_justice') end,
   IIXI = function(card) unown_create_tarot('c_hermit') end,
   VXIV = function(card) unown_create_tarot('c_hermit') end,
   VIV = function(card) unown_create_tarot('c_hermit') end,
   IVV = function(card) unown_create_tarot('c_hermit') end,
   IIVVI = function(card) unown_create_tarot('c_hermit') end,
   IVIVI = function(card) unown_create_tarot('c_hermit') end,
   IXVVX = function(card) unown_create_tarot('c_hermit') end,
   VIIII = function(card) unown_create_tarot('c_hermit') end,
   VIIVI = function(card) unown_create_tarot('c_hermit') end,
   VVXIX = function(card) unown_create_tarot('c_hermit') end,
   VIVI = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   IVVI = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   XVVX = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VXVX = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VVXX = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   IXI = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VXV = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VV = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   IIXII = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VVXVV = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   VXIVI = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   XXXXL = function(card) unown_create_tarot('c_wheel_of_fortune') end,
   IXII = function(card) unown_create_tarot('c_strength') end,
   VXVI = function(card) unown_create_tarot('c_strength') end,
   VVI = function(card) unown_create_tarot('c_strength') end,
   IVVII = function(card) unown_create_tarot('c_strength') end,
   VIVII = function(card) unown_create_tarot('c_strength') end,
   VVXXI = function(card) unown_create_tarot('c_strength') end,
   VXVXI = function(card) unown_create_tarot('c_strength') end,
   XVVXI = function(card) unown_create_tarot('c_strength') end,
   VVII = function(card) unown_create_tarot('c_hanged_man') end,
   IIIXV = function(card) unown_create_tarot('c_hanged_man') end,
   IIXIV = function(card) unown_create_tarot('c_hanged_man') end,
   IXIII = function(card) unown_create_tarot('c_hanged_man') end,
   IXIIV = function(card) unown_create_tarot('c_hanged_man') end,
   VXVII = function(card) unown_create_tarot('c_hanged_man') end,
   XIIIV = function(card) unown_create_tarot('c_hanged_man') end,
   XIIV = function(card) unown_create_tarot('c_death') end,
   IXIV = function(card) unown_create_tarot('c_death') end,
   IIXV = function(card) unown_create_tarot('c_death') end,
   IIVVV = function(card) unown_create_tarot('c_death') end,
   IIXVX = function(card) unown_create_tarot('c_death') end,
   IVIVV = function(card) unown_create_tarot('c_death') end,
   IVVIV = function(card) unown_create_tarot('c_death') end,
   VIIVV = function(card) unown_create_tarot('c_death') end,
   VIVIV = function(card) unown_create_tarot('c_death') end,
   VVIII = function(card) unown_create_tarot('c_death') end,
   VVIIV = function(card) unown_create_tarot('c_death') end,
   VXIIX = function(card) unown_create_tarot('c_death') end,
   VVIV = function(card) unown_create_tarot('c_temperance') end,
   VIVV = function(card) unown_create_tarot('c_temperance') end,
   IVVV = function(card) unown_create_tarot('c_temperance') end,
   VXIX = function(card) unown_create_tarot('c_temperance') end,
   IXVX = function(card) unown_create_tarot('c_temperance') end,
   IXV = function(card) unown_create_tarot('c_temperance') end,
   IIXVI = function(card) unown_create_tarot('c_temperance') end,
   IXIVI = function(card) unown_create_tarot('c_temperance') end,
   VXIVV = function(card) unown_create_tarot('c_temperance') end,
   VXVIV = function(card) unown_create_tarot('c_temperance') end,
   XIIII = function(card) unown_create_tarot('c_temperance') end,
   XIIVI = function(card) unown_create_tarot('c_temperance') end,
   XIVI = function(card) unown_create_tarot('c_devil') end,
   IXVI = function(card) unown_create_tarot('c_devil') end,
   VXVV = function(card) unown_create_tarot('c_devil') end,
   VVV = function(card) unown_create_tarot('c_devil') end,
   XVX = function(card) unown_create_tarot('c_devil') end,
   VXX = function(card) unown_create_tarot('c_devil') end,
   IVVVI = function(card) unown_create_tarot('c_devil') end,
   IXVXI = function(card) unown_create_tarot('c_devil') end,
   VIVVI = function(card) unown_create_tarot('c_devil') end,
   VVIVI = function(card) unown_create_tarot('c_devil') end,
   VVXXV = function(card) unown_create_tarot('c_devil') end,
   VXIXI = function(card) unown_create_tarot('c_devil') end,
   VXVXV = function(card) unown_create_tarot('c_devil') end,
   XVVXV = function(card) unown_create_tarot('c_devil') end,
   VVVI = function(card) unown_create_tarot('c_tower') end,
   XVXI = function(card) unown_create_tarot('c_tower') end,
   VXXI = function(card) unown_create_tarot('c_tower') end,
   IXVII = function(card) unown_create_tarot('c_tower') end,
   VXVVI = function(card) unown_create_tarot('c_tower') end,
   XIVII = function(card) unown_create_tarot('c_tower') end,
   IIIXX = function(card) unown_create_tarot('c_star') end,
   IIXIX = function(card) unown_create_tarot('c_star') end,
   IXIIX = function(card) unown_create_tarot('c_star') end,
   VVVII = function(card) unown_create_tarot('c_star') end,
   VXXII = function(card) unown_create_tarot('c_star') end,
   XIIIX = function(card) unown_create_tarot('c_star') end,
   XVXII = function(card) unown_create_tarot('c_star') end,
   XIIX = function(card) unown_create_tarot('c_moon') end,
   IXIX = function(card) unown_create_tarot('c_moon') end,
   IIXX = function(card) unown_create_tarot('c_moon') end,
   IIXVV = function(card) unown_create_tarot('c_moon') end,
   IXIVV = function(card) unown_create_tarot('c_moon') end,
   IXVIV = function(card) unown_create_tarot('c_moon') end,
   XIIVV = function(card) unown_create_tarot('c_moon') end,
   XIVIV = function(card) unown_create_tarot('c_moon') end,
   XVIIV = function(card) unown_create_tarot('c_moon') end,
   XVIV = function(card) unown_create_tarot('c_sun') end,
   XIVV = function(card) unown_create_tarot('c_sun') end,
   IXVV = function(card) unown_create_tarot('c_sun') end,
   IXX = function(card) unown_create_tarot('c_sun') end,
   IIXXI = function(card) unown_create_tarot('c_sun') end,
   IVVVV = function(card) unown_create_tarot('c_sun') end,
   IXIXI = function(card) unown_create_tarot('c_sun') end,
   IXVXV = function(card) unown_create_tarot('c_sun') end,
   VIVVV = function(card) unown_create_tarot('c_sun') end,
   VVIVV = function(card) unown_create_tarot('c_sun') end,
   VVVIV = function(card) unown_create_tarot('c_sun') end,
   VXIXV = function(card) unown_create_tarot('c_sun') end,
   VXXIV = function(card) unown_create_tarot('c_sun') end,
   XIIXI = function(card) unown_create_tarot('c_sun') end,
   XVXIV = function(card) unown_create_tarot('c_sun') end,
   XIXI = function(card) unown_create_tarot('c_judgement') end,
   IXXI = function(card) unown_create_tarot('c_judgement') end,
   VVVV = function(card) unown_create_tarot('c_judgement') end,
   XVXV = function(card) unown_create_tarot('c_judgement') end,
   VXXV = function(card) unown_create_tarot('c_judgement') end,
   XXXL = function(card) unown_create_tarot('c_judgement') end,
   XVV = function(card) unown_create_tarot('c_judgement') end,
   IXVVI = function(card) unown_create_tarot('c_judgement') end,
   VVXXX = function(card) unown_create_tarot('c_judgement') end,
   VXVVV = function(card) unown_create_tarot('c_judgement') end,
   VXVXX = function(card) unown_create_tarot('c_judgement') end,
   VXXVX = function(card) unown_create_tarot('c_judgement') end,
   XIVVI = function(card) unown_create_tarot('c_judgement') end,
   XVIVI = function(card) unown_create_tarot('c_judgement') end,
   XVVXX = function(card) unown_create_tarot('c_judgement') end,
   XVXVX = function(card) unown_create_tarot('c_judgement') end,
   XXVVX = function(card) unown_create_tarot('c_judgement') end,
   XVVI = function(card) unown_create_tarot('c_world') end,
   IXXII = function(card) unown_create_tarot('c_world') end,
   VVVVI = function(card) unown_create_tarot('c_world') end,
   VXXVI = function(card) unown_create_tarot('c_world') end,
   XIXII = function(card) unown_create_tarot('c_world') end,
   XVXVI = function(card) unown_create_tarot('c_world') end,
   XXXLI = function(card) unown_create_tarot('c_world') end,

   -- specific planet creation
   ONE = function(card) unown_create_planet('c_mercury') end,
   TWO = function(card) unown_create_planet('c_venus') end,
   THREE = function(card) unown_create_planet('c_earth') end,
   FOUR = function(card) unown_create_planet('c_mars') end,
   FIVE = function(card) unown_create_planet('c_jupiter') end,
   SIX = function(card) unown_create_planet('c_saturn') end,
   SEVEN = function(card) unown_create_planet('c_uranus') end,
   EIGHT = function(card) unown_create_planet('c_neptune') end,
   NINE = function(card) unown_create_planet('c_pluto') end,
   TEN = function(card) unown_create_planet('c_planet_x') end,
   CERES = function(card) unown_create_planet('c_ceres') end,
   ERIS = function(card) unown_create_planet('c_eris') end,

   -- specific planet creation (Hand type)
   PAIR = function(card) unown_create_planet('c_mercury') end,
   HOUSE = function(card) unown_create_planet('c_earth') end,
   FLUSH = function(card) unown_create_planet('c_jupiter') end,
   HIGH = function(card) unown_create_planet('c_pluto') end,

   QUICK = function(card) unown_create_planet('c_mercury') end,
   VENUS = function(card) unown_create_planet('c_venus') end,
   EARTH = function(card) unown_create_planet('c_earth') end,
   MARS = function(card) unown_create_planet('c_mars') end,
   PLUTO = function(card) unown_create_planet('c_pluto') end,

   -- tag creation
   GREEN = function(card) unown_create_tag('tag_uncommon') end,
   RARE = function(card) unown_create_tag('tag_rare') end,
   BLACK = function(card) unown_create_tag('tag_negative') end,
   FOIL = function(card) unown_create_tag('tag_foil') end,
   HOLO = function(card) unown_create_tag('tag_holo') end,
   POLY = function(card) unown_create_tag('tag_polychrome') end,
   VOUCH = function(card) unown_create_tag('tag_voucher') end,
   BOSS = function(card) unown_create_tag('tag_boss') end,
   ROLL = function(card) unown_create_tag('tag_boss') end,
   CARD = function(card) unown_create_tag('tag_standard') end,
   CARDS = function(card) unown_create_tag('tag_standard') end,
   CHARM = function(card) unown_create_tag('tag_charm') end,
   SPACE = function(card) unown_create_tag('tag_meteor') end,
   HANDY = function(card) unown_create_tag('tag_handy') end,
   GARBO = function(card) unown_create_tag('tag_garbage') end,
   EERIE = function(card) unown_create_tag('tag_ethereal') end,
   ETHER = function(card) unown_create_tag('tag_ethereal') end,
   FREE = function(card) unown_create_tag('tag_coupon') end,
   SPREE = function(card) unown_create_tag('tag_coupon') end,
   SODA = function(card) unown_create_tag('tag_double') end,
   COKE = function(card) unown_create_tag('tag_double') end,
   BALL = function(card) unown_create_tag('tag_juggle') end,
   BALLS = function(card) unown_create_tag('tag_juggle') end,
   DSIX = function(card) unown_create_tag('tag_d_six') end,
   TOPUP = function(card) unown_create_tag('tag_top_up') end,
   ORBIT = function(card) unown_create_tag('tag_orbital') end,
   TAGS = function(card) unown_create_tag() end,
   MONEY = function(card) unown_create_money_tag() end,
   CASH = function(card) unown_create_money_tag() end,
   STONK = function(card) unown_create_money_tag() end,
   STOCK = function(card) unown_create_money_tag() end,
   PACK = function(card) unown_create_booster_tag() end,
   PACKS = function(card) unown_create_booster_tag() end,
   BOOST = function(card) unown_create_booster_tag() end,

   -- specific spectral card creation
   ROYAL = function(card) unown_create_spectral(card, 'c_familiar') end,
   FACE = function(card) unown_create_spectral(card, 'c_familiar') end,
   FACES = function(card) unown_create_spectral(card, 'c_familiar') end,
   GRIM = function(card) unown_create_spectral(card, 'c_grim') end,
   CHANT = function(card) unown_create_spectral(card, 'c_incantation') end,
   COIN = function(card) unown_create_spectral(card, 'c_talisman') end,
   TOKEN = function(card) unown_create_spectral(card, 'c_talisman') end,
   AURA = function(card) unown_create_spectral(card, 'c_aura') end,
   GHAST = function(card) unown_create_spectral(card, 'c_wraith') end,
   SIGIL = function(card) unown_create_spectral(card, 'c_sigil') end,
   OUIJA = function(card) unown_create_spectral(card, 'c_ouija') end,
   BLOOD = function(card) unown_create_spectral(card, 'c_ouija') end,
   ECTO = function(card) unown_create_spectral(card, 'c_ectoplasm') end,
   PLASM = function(card) unown_create_spectral(card, 'c_ectoplasm') end,
   YIELD = function(card) unown_create_spectral(card, 'c_immolate') end,
   OFFER = function(card) unown_create_spectral(card, 'c_immolate') end,
   ANKH = function(card) unown_create_spectral(card, 'c_ankh') end,
   DEJA = function(card) unown_create_spectral(card, 'c_deja_vu') end,
   HEX = function(card) unown_create_spectral(card, 'c_hex') end,
   FUGUE = function(card) unown_create_spectral(card, 'c_hex') end,
   HEXES = function(card) unown_create_spectral(card, 'c_hex') end,
   SPELL = function(card) unown_create_spectral(card, 'c_trance') end,
   SEER = function(card) unown_create_spectral(card, 'c_medium') end,
   CRYPT = function(card) unown_create_spectral(card, 'c_cryptid') end,
   HOLE = function(card) unown_create_spectral(card, 'c_black_hole') end,
   ULTRA = function(card) unown_create_spectral(card, 'c_poke_ultraball') end,
   TRANS = function(card) unown_create_spectral(card, 'c_poke_transformation') end,
   MEGA = function(card) unown_create_spectral(card, 'c_poke_megastone') end,
   OBIT = function(card) unown_create_spectral(card, 'c_poke_obituary') end,
   EULOG = function(card) unown_create_spectral(card, 'c_poke_obituary') end,
   NIGHT = function(card) unown_create_spectral(card, 'c_poke_nightmare') end,
   MARE = function(card) unown_create_spectral(card, 'c_poke_nightmare') end,
   DREAM = function(card) unown_create_spectral(card, 'c_poke_nightmare') end,
   GHOUL = function(card) unown_create_spectral(card, 'c_poke_revenant') end,
   UNDER = function(card) unown_create_spectral(card, 'c_poke_revenant') end,
   BELOW = function(card) unown_create_spectral(card, 'c_poke_revenant') end,

   -- specific item creation
   POKE = function(card) unown_create_item('c_poke_pokeball') end,
   GREAT = function(card) unown_create_item('c_poke_greatball') end,
   UMBER = function(card) unown_create_item('c_poke_moonstone') end,
   LUNA = function(card) unown_create_item('c_poke_moonstone') end,
   ESPER = function(card) unown_create_item('c_poke_sunstone') end,
   DAY = function(card) unown_create_item('c_poke_sunstone') end,
   VAPOR = function(card) unown_create_item('c_poke_waterstone') end,
   OCEAN = function(card) unown_create_item('c_poke_waterstone') end,
   JOLT = function(card) unown_create_item('c_poke_thunderstone') end,
   BOLT = function(card) unown_create_item('c_poke_thunderstone') end,
   ZAPPY = function(card) unown_create_item('c_poke_thunderstone') end,
   FLARE = function(card) unown_create_item('c_poke_firestone') end,
   FLAME = function(card) unown_create_item('c_poke_firestone') end,
   LEAF = function(card) unown_create_item('c_poke_leafstone') end,
   TREE = function(card) unown_create_item('c_poke_leafstone') end,
   TREES = function(card) unown_create_item('c_poke_leafstone') end,
   CORD = function(card) unown_create_item('c_poke_linkcable') end,
   CABLE = function(card) unown_create_item('c_poke_linkcable') end,
   LEFT = function(card) unown_create_item('c_poke_leftovers') end,
   APPLE = function(card) unown_create_item('c_poke_leftovers') end,
   LEEK = function(card) unown_create_item('c_poke_leek') end,
   STICK = function(card) unown_create_item('c_poke_leek') end,
   THICK = function(card) unown_create_item('c_poke_thickclub') end,
   CLUB = function(card) unown_create_item('c_poke_thickclub') end,
   TERA = function(card) unown_create_item('c_poke_teraorb') end,
   COAT = function(card) unown_create_item('c_poke_metalcoat') end,
   FILM = function(card) unown_create_item('c_poke_metalcoat') end,
   KING = function(card) unown_create_item('c_poke_kingsrock') end,
   KINGS = function(card) unown_create_item('c_poke_kingsrock') end,
   GRADE = function(card) unown_create_item('c_poke_upgrade') end,
   DISC = function(card) unown_create_item('c_poke_dubious_disc') end,
   GLACE = function(card) unown_create_item('c_poke_icestone') end,
   ICE = function(card) unown_create_item('c_poke_icestone') end,
   SHINY = function(card) unown_create_item('c_poke_shinystone') end,
   SYLPH = function(card) unown_create_item('c_poke_shinystone') end,
   NYMPH = function(card) unown_create_item('c_poke_shinystone') end,
   SPOON = function(card) unown_create_item('c_poke_twisted_spoon') end,
   TWIST = function(card) unown_create_item('c_poke_twisted_spoon') end,
   DUSK = function(card) unown_create_item('c_poke_duskstone') end,
   DAWN = function(card) unown_create_item('c_poke_dawnstone') end,
   SCALE = function(card) unown_create_item({ 'c_poke_dragonscale', 'c_poke_prismscale' }) end,

   -- specific energy creation
   GRASS = function(card) unown_create_energy('c_poke_grass_energy') end,
   FIRE = function(card) unown_create_energy('c_poke_fire_energy') end,
   WATER = function(card) unown_create_energy('c_poke_water_energy') end,
   LIGHT = function(card) unown_create_energy('c_poke_lightning_energy') end,
   PSYCH = function(card) unown_create_energy('c_poke_psychic_energy') end,
   BRAIN = function(card) unown_create_energy('c_poke_psychic_energy') end,
   FIGHT = function(card) unown_create_energy('c_poke_fighting_energy') end,
   WHITE = function(card) unown_create_energy('c_poke_colorless_energy') end,
   DARK = function(card) unown_create_energy('c_poke_darkness_energy') end,
   METAL = function(card) unown_create_energy('c_poke_metal_energy') end,
   FAIRY = function(card) unown_create_energy('c_poke_fairy_energy') end,
   DRACO = function(card) unown_create_energy('c_poke_dragon_energy') end,
   DRAGO = function(card) unown_create_energy('c_poke_dragon_energy') end,
   ROCK = function(card) unown_create_energy('c_poke_earth_energy') end,
   DIRT = function(card) unown_create_energy('c_poke_earth_energy') end,

   -- conversion
   MULT = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_mult', delay = true }) end,
   BONUS = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_bonus', delay = true }) end,
   LUCKY = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_lucky', delay = true }) end,
   STONE = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_stone', delay = true }) end,
   STEEL = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_steel', delay = true }) end,
   GLASS = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_glass', delay = true }) end,
   GOLD = function(card) convert_cards_to({ area = G.play.cards, mod_conv = 'm_gold', delay = true }) end,
   ROMAN = function(card) convert_cards_to_unown(2, { 'poke_UI', 'poke_UV', 'poke_UX', 'poke_UL' }) end,

   -- weird effects
   ADOPT = function(card) add_new_unowns(1) end,
   CLAIM = function(card) add_new_unowns(1) end,
   AFFIX = function(card) add_new_unowns(1) end,
   ADD = function(card) add_new_unowns(1) end,
   ADDS = function(card) add_new_unowns(1) end,
   VOWEL = function(card) add_vowel_unown() end,

   -- bonuses
   HAND = function(card) ease_hands_played(1) end,
   HANDS = function(card) ease_hands_played(1) end,
   TRASH = function(card) ease_discard(1) end,
   SIZE = function(card) unown_draw_cards(5) end, -- draw 5 to "draw 1" after playing
   DRAW = function(card) unown_draw_cards(5) end, -- draw 5 to "draw 1" after playing

   END = function(card) --[[ debuffs hand ]] end,
   DIE = function(card) --[[ debuffs hand ]] end,
   QUIT = function(card) --[[ debuffs hand ]] end,
   HALT = function(card) --[[ debuffs hand ]] end,
   STOP = function(card) --[[ debuffs hand ]] end,
   KILL = function(card) --[[ debuffs hand ]] end,
   ABORT = function(card) --[[ debuffs hand ]] end,
   SCRAP = function(card) --[[ debuffs hand ]] end,
   STALL = function(card) --[[ debuffs hand ]] end,
   BLOCK = function(card) --[[ debuffs hand ]] end,
   CEASE = function(card) --[[ debuffs hand ]] end,
   BREAK = function(card) --[[ debuffs hand ]] end,
   BRAKE = function(card) --[[ debuffs hand ]] end,
   ANNUL = function(card) --[[ debuffs hand ]] end,
   UNDO = function(card) --[[ debuffs hand ]] end,
   RUIN = function(card) --[[ debuffs hand ]] end,
   VETO = function(card) --[[ debuffs hand ]] end,
}

local prev_blind_debuff_hand = Blind.debuff_hand
Blind.debuff_hand = function(self, cards, hand, handname, check)
   if not check then
      local is_word = true
      local word = ''
      for k, v in pairs(cards) do
         if not v.base or v.base.suit ~= 'poke_Unown' or (SMODS.has_no_rank(self) and not self.vampired) then
            is_word = false
            break
         end
         word = word .. string.sub(v.base.value, -1)
      end
      if is_word then
         local cancel_words = { 'ABORT', 'QUIT', 'HALT', 'STOP', 'END', 'SCRAP', 'STALL', 'BLOCK', 'CEASE', 'DIE',
            'BREAK',
            'BRAKE', 'KILL', 'ANNUL', 'UNDO', 'RUIN', 'VETO' }
         for _, poss in pairs(cancel_words) do
            if word == poss then
               card_eval_status_text(middle_card, 'extra', nil, nil, nil, { message = word })
               ease_hands_played(1)
               return true
            end
         end
         if type(unown_rewards[word]) == "function" then
            local middle_card = cards[math.ceil(#cards/2)]
            card_eval_status_text(middle_card, 'extra', nil, nil, nil, { message = word })
            unown_rewards[word](middle_card)
         end
      end
   end
   return prev_blind_debuff_hand(self, cards, hand, handname, check)
end
