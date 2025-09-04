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
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 2
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 2
    end
  end,
  unredeem = function(self)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 2
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
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 3
    else
      G.GAME.energy_plus = G.GAME.energy_plus + 3
    end
  end,
  unredeem = function(self)
    if not G.GAME.energy_plus then
      G.GAME.energy_plus = 0
    else
      G.GAME.energy_plus = G.GAME.energy_plus - 3
    end
  end,
  in_pool = function(self)
    return not pokermon_config.unlimited_energy
  end
}

local goodrod = { --+1 card choice in pocket packs
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
    if not G.GAME.extra_pocket_picks then
      G.GAME.extra_pocket_picks = 1
    else
      G.GAME.extra_pocket_picks = G.GAME.extra_pocket_picks + 1
    end
  end,
  unredeem = function(self)
    if not G.GAME.extra_pocket_picks then
      G.GAME.extra_pocket_picks = 0
    else
      G.GAME.extra_pocket_picks = G.GAME.extra_pocket_picks - 1
    end
  end
}

local superrod = { --+1 card choice in pocket packs
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