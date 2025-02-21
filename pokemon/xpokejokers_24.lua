-- Dragalge 691
-- Clauncher 692
-- Clawitzer 693
-- Helioptile 694
-- Heliolisk 695
-- Tyrunt 696
-- Tyrantrum 697
-- Amaura 698
-- Aurorus 699
-- Sylveon 700
local sylveon={
  name = "sylveon", 
  pos = {x = 7, y = 3},
  config = {extra = {Xmult_multi = 1.2, rerolls = 0, reroll_goal = 4}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'sylveon_tag_pool', vars = {'Standard', 'Charm', 'Juggle'}}
    return {vars = {center.ability.extra.Xmult_multi, center.ability.extra.rerolls, center.ability.extra.reroll_goal}}
  end,
  rarity = "poke_safari", 
  cost = 7, 
  stage = "One",
  ptype = "Fairy",
  atlas = "Pokedex6",
  blueprint_compat = true,
  calculate = function(self, card, context)
    if context.reroll_shop and not context.blueprint and not (G.HUD_tags and #G.HUD_tags >= 2) then
      if card.ability.extra.rerolls < card.ability.extra.reroll_goal - 1 then
        card.ability.extra.rerolls = card.ability.extra.rerolls + 1
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.rerolls.."/"..card.ability.extra.reroll_goal, colour = G.C.MONEY})
        if card.ability.extra.rerolls == card.ability.extra.reroll_goal - 1 then
          local eval = function() return card.ability.extra.rerolls == card.ability.extra.reroll_goal - 1 end
          juice_card_until(card, eval, true)
        end
      else
        local tag = ''
        local tag_choice = pseudorandom('sylveon')
        if tag_choice < 1/3 then
          tag = 'tag_standard'
        elseif tag_choice < 2/3 then
          tag = 'tag_charm'
        else
          tag = 'tag_juggle'
        end
        add_tag(Tag(tag))
        card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.reroll_goal.."/"..card.ability.extra.reroll_goal, colour = G.C.MONEY})
        card.ability.extra.rerolls = 0
      end
    end
    if context.individual and context.cardarea == G.hand and context.other_card.edition and not context.end_of_round then
      if context.other_card.debuff then
          return {
              message = localize('k_debuffed'),
              colour = G.C.RED,
              card = card,
          }
      else
          return {
              x_mult = card.ability.extra.Xmult_multi,
              card = card
          }
      end
    end
  end
}
-- Hawlucha 701
-- Dedenne 702
-- Carbink 703
-- Goomy 704
-- Sliggoo 705
-- Goodra 706
-- Klefki 707
-- Phantump 708
-- Trevenant 709
-- Pumpkaboo 710
-- Gourgeist 711
-- Bergmite 712
-- Avalugg 713
-- Noibat 714
-- Noivern 715
-- Xerneas 716
-- Yveltal 717
-- Zygarde 718
-- Diancie 719
local diancie = {
	name = "diancie", 
	pos = {x = 5, y = 12},	
	soul_pos = {x = 6, y = 12},
  config = {extra = {suit = "Diamonds", Xmult_multi = 1.2, retriggers = 1, money = 1}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    info_queue[#info_queue+1] = {set = 'Other', key = 'mega_poke'}
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.money}}
  end,
	rarity = 4,
	cost = 20,
	stage = "Legendary",
	ptype = "Earth",
	atlas = "Pokedex6",
	blueprint_compat = false,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
      }
    end
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        message = "+$1",
        ease_poke_dollars(card, "diancie", card.ability.extra.money)
        return {
          colour = G.C.XMULT,
          x_mult = card.ability.extra.Xmult_multi,
          card = card
        }
      end
    end
  end,
  megas = {"mega_diancie"},
}
local mega_diancie = {
	name = "mega_diancie", 
	pos = {x = 8, y = 6},	
	soul_pos = { x = 9, y = 6},
  config = {extra = {suit = "Diamonds", Xmult_multi = 2, retriggers = 1, money = 2}},
  loc_vars = function(self, info_queue, center)
    type_tooltip(self, info_queue, center)
    return {vars = {center.ability.extra.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.extra.money}}
  end,
	rarity = "poke_mega",
	cost = 30,
	stage = "Mega",
	ptype = "Earth",
	atlas = "Megas",
	blueprint_compat = false,
  calculate = function(self, card, context)
    if context.repetition and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      return {
          message = localize('k_again_ex'),
          repetitions = card.ability.extra.retriggers,
          card = card
      }
    end
    if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
      if not context.end_of_round and not context.before and not context.after and not context.other_card.debuff then
        message = "+$2",
        ease_poke_dollars(card, "diancie", card.ability.extra.money)
        return {
          colour = G.C.XMULT,
          x_mult = card.ability.extra.Xmult_multi,
          card = card
        }
      end
    end
  end,
}
-- Hoopa 720
return {name = "Pokemon Jokers 691-720", 
        list = {sylveon, diancie, mega_diancie},
}