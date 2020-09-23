minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tamicolor:ore",
	wherein        = "default:stone",
	clust_scarcity = 17 * 17 * 17,
	clust_num_ores = 20,
	clust_size     = 3,
	y_max          = -128,
	y_min          = -255,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tamicolor:ore",
	wherein        = "default:stone",
	clust_scarcity = 10 * 10 * 10,
	clust_num_ores = 30,
	clust_size     = 5,
	y_max          = -256,
	y_min          = -31000,
})
