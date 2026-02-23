POKE_STAGES = {
  ["Baby"] = { prev = nil, next = "Basic" },
  ["Basic"] = { prev = "Baby", next = "One" },
  ["One"] = { prev = "Basic", next = "Two" },
  ["Two"] = { prev = "One", next = nil },
  ["Legendary"] = { prev = "Legendary", next = "Legendary" },
  ["Mega"] = { prev = nil, next = nil },
  ["???"] = { prev = nil, next = nil },
}

get_previous_stage = function(stage)
  return (POKE_STAGES[stage] or {}).prev
end

get_next_stage = function(stage)
  return (POKE_STAGES[stage] or {}).next
end
