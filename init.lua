local S = minetest.get_translator("tamicolor")

--Sword--

minetest.register_tool("tamicolor:sword", {
	description = S("Tamicolor Sword"),
	inventory_image = "tamicolor_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.2,
		max_drop_level=5,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=800, maxlevel=30},
		},
		damage_groups = {fleshy=50},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
	stack_max = 10
})

--Pickaxe--

minetest.register_tool("tamicolor:pick", {
	description = S("Tamicolor Pickaxe"),
	inventory_image = "tamicolor_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=10,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.20}, uses=500, maxlevel=50},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1},
	stack_max = 10
})

--Shovel--

minetest.register_tool("tamicolor:shovel", {
	description = S("Tamicolor Shovel"),
	inventory_image = "tamicolor_shovel.png",
	wield_image = "tamicolor_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=2,
		groupcaps={
			crumbly = {times={[1]=0.80, [2]=0.40, [3]=0.15}, uses=400, maxlevel=10},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1},
	stack_max = 10
})

--Axe--

minetest.register_tool("tamicolor:axe", {
	description = S("Tamicolor Axe"),
	inventory_image = "tamicolor_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=5,
		groupcaps={
			choppy={times={[1]=1.0, [2]=0.20, [3]=0.40}, uses=600, maxlevel=20},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1},
	stack_max = 10
})

--Tamicolor

minetest.register_node("tamicolor:tami", {
	description = ("Tamicolor"),
	inventory_image = "tamicolor.png",
	stack_max = 99,
})

--Block--

minetest.register_node("tamicolor:block", {
	description = ("Tamicolor Block"),
	tiles = {"tamicolor_block.png"},
	groups = {cracky = 3, level = 20},
	drawtype = "glasslike",
	paramtype = "light",
	sunlight_propagates = true,
})

--Ore--
minetest.register_node("tamicolor:ore", {
	description = ("Tamicolor Ore"),
	tiles = {"mineral_tamicolor.png"},
	is_ground_content = true,
	groups = {cracky = 3, level = 20},
	in_creative_inventory = 0
})

--Crafting--

local craft_ingreds = {
	tami = "tamicolor:tami"
}

minetest.register_craft({
		recipe = {
			{"tamicolor:tami","tamicolor:tami","tamicolor:tami"},
			{"","default:stick",""},
			{"","default:stick",""},
		},
		output = "tamicolor:pick",
})

minetest.register_craft({
		recipe = {
			{"tamicolor:tami"},
			{"tamicolor:tami"},
			{"default:stick"},
		},
		output = "tamicolor:sword",
})

minetest.register_craft({
		recipe = {
			{"tamicolor:tami"},
			{"default:stick"},
			{"default:stick"},
		},
		output = "tamicolor:shovel",

})

for name, mat in pairs(craft_ingreds) do
minetest.register_craft({
	recipe = {
		{mat, mat},
		{mat, "default:stick"},
		{"", "default:stick"}
	},
	output = "tamicolor:axe",
})

minetest.register_craft({
		recipe = {
			{"tamicolor:ore"},
			{""},
			{""},
		},
		output = "tamicolor:tami 4",
})
end