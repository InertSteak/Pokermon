local energysearch = { --+1 max energy limit
	key = "energysearch",
	atlas = "AtlasVouchersBasic",
  order = 33,
  set = "Voucher",
	pos = { x = 2, y = 0 },
  config = {},
  discovered = true,
  unlocked = true,
  available = true,
  cost = 10,
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
  redeem = function(self)
    if not G.GAME.poke_energy_plus then
      G.GAME.poke_energy_plus = 2
    else
      G.GAME.poke_energy_plus = G.GAME.poke_energy_plus + 2
    end
  end,
  unredeem = function(self)
    if not G.GAME.poke_energy_plus then
      G.GAME.poke_energy_plus = 0
    else
      G.GAME.poke_energy_plus = G.GAME.poke_energy_plus - 2
    end
  end,
  in_pool = function(self)
    return not pokermon_config.unlimited_energy
  end
}
local energyresearch = { --+1 max energy limit
	key = "energyresearch",
	atlas = "AtlasVouchersBasic",
  order = 34,
  set = "Voucher",
	pos = { x = 3, y = 0 },
  config = {},
  discovered = true,
  unlocked = true,
  available = true,
  cost = 10,
  requires = {"v_poke_energysearch"},
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
  redeem = function(self)
    if not G.GAME.poke_energy_plus then
      G.GAME.poke_energy_plus = 3
    else
      G.GAME.poke_energy_plus = G.GAME.poke_energy_plus + 3
    end
  end,
  unredeem = function(self)
    if not G.GAME.poke_energy_plus then
      G.GAME.poke_energy_plus = 0
    else
      G.GAME.poke_energy_plus = G.GAME.poke_energy_plus - 3
    end
  end,
  in_pool = function(self)
    return not pokermon_config.unlimited_energy
  end
}

local goodrod = { --+1 card in each booster pack 
	key = "goodrod",
	atlas = "AtlasVouchersBasic",
  order = 35,
  set = "Voucher",
	pos = { x = 0, y = 0 },
  config = {},
  discovered = true,
  unlocked = true,
  available = true,
  cost = 10,
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
  redeem = function(self)
    G.GAME.modifiers.booster_size_mod = (G.GAME.modifiers.booster_size_mod or 0) + 1
  end,
  unredeem = function(self)
    G.GAME.modifiers.booster_size_mod = (G.GAME.modifiers.booster_size_mod or 1) - 1
  end
}

local superrod = { --enable save button in every booster pack 
	key = "superrod",
	atlas = "AtlasVouchersBasic",
  order = 36,
  set = "Voucher",
	pos = { x = 1, y = 0 },
  config = {},
  discovered = true,
  unlocked = true,
  available = true,
  cost = 10,
  requires = {"v_poke_goodrod"},
	loc_vars = function(self, info_queue)
		return { vars = {} }
	end,
  redeem = function(self)
    if not G.GAME.poke_save_all then
      G.GAME.poke_save_all = true
    end
  end,
  unredeem = function(self)
    if G.GAME.poke_save_all then
      G.GAME.poke_save_all = false
    end
  end
}


return {name = "Vouchers",
        list = {energysearch, energyresearch, goodrod, superrod}
}