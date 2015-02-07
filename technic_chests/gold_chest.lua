
local base_chest
if minetest.get_modpath("moreores") then
	base_chest = 'technic:silver_chest'
else
	base_chest = 'technic:copper_chest'
end
	
minetest.register_craft({
	output = 'technic:gold_chest',
	recipe = {
		{'default:gold_ingot','default:gold_ingot','default:gold_ingot'},
		{'default:gold_ingot',base_chest,'default:gold_ingot'},
		{'default:gold_ingot','default:gold_ingot','default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:gold_locked_chest',
	recipe = {
		{'default:gold_ingot','default:gold_ingot','default:gold_ingot'},
		{'default:gold_ingot',base_chest,'default:gold_ingot'},
		{'default:gold_ingot','default:gold_ingot','default:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:gold_locked_chest',
	recipe = {
		{'default:steel_ingot'},
		{'technic:gold_chest'},
	}
})

technic.chests:register("Gold", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = true,
	color = true,
	locked = false,
})

technic.chests:register("Gold", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = true,
	color = true,
	locked = true,
})

