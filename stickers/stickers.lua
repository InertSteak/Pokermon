local type_sticker_template = 
{
  prefix_config = {key = false},
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  no_collection = true
}

local type_stickers = {}

for i = 1, #poketype_list do
  local poke_type = string.lower(poketype_list[i])
  local type_sticker = copy_table(type_sticker_template)
  type_sticker.key = poke_type..'_sticker'
  type_sticker.badge_colour = G.ARGS.LOC_COLOURS[poke_type]
  type_sticker.pos = {x = i % 10, y = math.floor(i/10) }
  table.insert(type_stickers, type_sticker)
end

local bird_sticker = {
  key = "bird_sticker",
  badge_colour = HEX("F7B58C"),
  prefix_config = {key = false},
  rate = 0.0,
  atlas = "AtlasStickersBasic",
  pos = { x = 4, y = 1 },
  no_collection = true,
}

table.insert(type_stickers, bird_sticker)

local pokerus =  {
    key = 'pokerus',
    badge_colour = HEX('d67bff'),
    atlas = "AtlasStickersBasic",
    pos = { x = 6, y = 1 },
    should_apply = function(self, card, center, area, bypass_roll)
        return (not (pokermon_config.unlimited_energy or card.config.center.no_energy_limit)) and card.ability.set == "Joker" and pseudorandom("poke_pokerus") < 1/4096
    end,
    apply = function(self, card, val)
        card.ability[self.key] = val
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            time = 0.2,
            func = function()
                energy_increase(card, get_type(card), (energy_max + (G.GAME.energy_plus or 0) +
                    (type(card.ability.extra) == "table" and card.ability.extra.e_limit_up or 0)) - get_total_energy(card), true)
                play_sound('poke_pokerus_sound', 1, 0.2)
                card:juice_up(1, 0.5)
                return true
            end
        }))
    end,
    calculate = function(self, card, context)
        -- at any time, energize to max
        if get_total_energy(card) < (energy_max + (G.GAME.energy_plus or 0) + (type(card.ability.extra) == "table" and card.ability.extra.e_limit_up or 0)) then
            energy_increase(card, get_type(card), energy_max + (G.GAME.energy_plus or 0) +
                (type(card.ability.extra) == "table" and card.ability.extra.e_limit_up or 0) - get_total_energy(card), true)
        end

        -- spread
        if not context.repetition and not context.individual and context.end_of_round and not context.blueprint and pseudorandom("poke_spread_pokerus") < 1/4 then
            local valid = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability and G.jokers.cards[i].ability.set == "Joker" and not (G.jokers.cards[i].ability.maelmc_pokerus) then
                    table.insert(valid,G.jokers.cards[i])
                end
            end
            local to_rus = pseudorandom_element(valid,"poke_joker_to_pokerus")
            if to_rus then
                to_rus.ability.maelmc_pokerus = true
                to_rus.ability.just_rus = true
            end
        end
        
        if context.setting_blind and card.ability.just_rus then
            card.ability.just_rus = nil
        end
    end
}

table.insert(type_stickers, pokerus)

return
{
  name = "Stickers",
  list = type_stickers
}