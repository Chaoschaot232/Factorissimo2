local F = "__Factorissimo2__";

local function cwc0()
	return {shadow = {red = {0,0},green = {0,0}}, wire = {red = {0,0},green = {0,0}}}
end
local function cc0()
	return get_circuit_connector_sprites({0,0},nil,1)
end
local function blank()
	return {
		filename = F.."/graphics/nothing.png",
		priority = "high",
		width = 1,
		height = 1,
	}
end



local factory_1 = function(suffix, result_suffix, visible, count, sprite)
	local name = "factory-1" .. suffix
	local result_name = "factory-1" .. result_suffix
	local item_flags
	if visible then item_flags = {"goes-to-quickbar"} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			icon = F.."/graphics/icon/factory-1.png",
			flags = {
				"placeable-player", "player-creation",
			},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 2000,
			corpse = "big-remnants",
			collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
			selection_box = {{-3.8, -3.8}, {3.8, 3.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					sheet = {
						filename = sprite,
						frames = 1,
						width = 416,
						height = 320,
						shift = {1.5, 0},
					},
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = {cwc0(), cwc0(), cwc0(), cwc0()},
			circuit_connector_sprites = {cc0(), cc0(), cc0(), cc0()},
			circuit_wire_max_distance = 0,
			map_color = {r = 0.8, g = 0.7, b = 0.55},
		},
		{
			type = "item",
			name = name,
			icon = F.."/graphics/icon/factory-1.png",
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-a",
			place_result = name,
			stack_size = 1
		}
	};
end

local factory_2 = function(suffix, result_suffix, visible, count, sprite)
	local name = "factory-2" .. suffix
	local result_name = "factory-2" .. result_suffix
	local item_flags
	if visible then item_flags = {"goes-to-quickbar"} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			icon = F.."/graphics/icon/factory-2.png",
			flags = {
				"placeable-player", "player-creation",
			},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 3500,
			corpse = "big-remnants",
			collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
			selection_box = {{-5.8, -5.8}, {5.8, 5.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					sheet = {
						filename = sprite,
						frames = 1,
						width = 544,
						height = 448,
						shift = {1.5, 0},
					},
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = {cwc0(), cwc0(), cwc0(), cwc0()},
			circuit_connector_sprites = {cc0(), cc0(), cc0(), cc0()},
			circuit_wire_max_distance = 0,
			map_color = {r = 0.8, g = 0.7, b = 0.55},
		},
		{
			type = "item",
			name = name,
			icon = F.."/graphics/icon/factory-2.png",
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-b",
			place_result = name,
			stack_size = 1
		}
	};
end

local factory_3 = function(suffix, result_suffix, visible, count, sprite)
	local name = "factory-3" .. suffix
	local result_name = "factory-3" .. result_suffix
	local item_flags
	if visible then item_flags = {"goes-to-quickbar"} else item_flags = {"hidden"} end
	return {
		{
			type = "storage-tank",
			name = name,
			icon = F.."/graphics/icon/factory-3.png",
			flags = {
				"placeable-player", "player-creation",
			},
			minable = {mining_time = 5, result = result_name, count = count},
			max_health = 5000,
			corpse = "big-remnants",
			collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
			selection_box = {{-7.8, -7.8}, {7.8, 7.8}},
			vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
			pictures = {
				picture = {
					sheet = {
						filename = sprite,
						frames = 1,
						width = 704,
						height = 608,
						shift = {2, -0.09375},
					},
				},
				fluid_background = blank(),
				window_background = blank(),
				flow_sprite = blank(),
			},
			window_bounding_box = {{0,0},{0,0}},
			fluid_box = {
				base_area = 1,
				pipe_covers = pipecoverspictures(),
				pipe_connections = {},
			},
			flow_length_in_ticks = 1,
			circuit_wire_connection_points = {cwc0(), cwc0(), cwc0(), cwc0()},
			circuit_connector_sprites = {cc0(), cc0(), cc0(), cc0()},
			circuit_wire_max_distance = 0,
			map_color = {r = 0.8, g = 0.7, b = 0.55},
		},
		{
			type = "item",
			name = name,
			icon = F.."/graphics/icon/factory-3.png",
			flags = item_flags,
			subgroup = "factorissimo2",
			order = "a-c",
			place_result = name,
			stack_size = 1
		}
	};
end


data:extend(factory_1("", "", true, 0, F.."/graphics/factory/factory-1.png"))
for i=10,99 do
	data:extend(factory_1("-s" .. i, "-s" .. i, false, 1, F.."/graphics/factory/factory-1-combined.png"))
end
data:extend(factory_1("-i", "", false, 1, F.."/graphics/factory/factory-1-combined.png"))
	
data:extend({
	{
		type = "simple-entity",
		name = "factory-1-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-3.8, -6.8}, {3.8, 0.8}},
		collision_mask = {},
		selection_box = {{-3.8, -6.8}, {3.8, 0.8}},
		selectable_in_game = false,
		picture = {
			filename = F.."/graphics/factory/factory-1-combined.png",
			width = 416,
			height = 320,
			shift = {1.5, -3}
		},
		render_layer = "object",
	}
})


data:extend(factory_2("", "", true, 0, F.."/graphics/factory/factory-2.png"))
for i=10,99 do
	data:extend(factory_2("-s" .. i, "-s" .. i, false, 1, F.."/graphics/factory/factory-2-combined.png"))
end
data:extend(factory_2("-i", "", false, 1, F.."/graphics/factory/factory-2-combined.png"))

data:extend({
	{
		type = "simple-entity",
		name = "factory-2-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-5.8, -10.8}, {5.8, 0.8}},
		collision_mask = {},
		selection_box = {{-5.8, -10.8}, {5.8, 0.8}},
		selectable_in_game = false,
		picture = {
			filename = F.."/graphics/factory/factory-2-combined.png",
			width = 544,
			height = 448,
			shift = {1.5, -5},
		},
		render_layer = "object",
	}
})

data:extend(factory_3("", "", true, 0, F.."/graphics/factory/factory-3.png"))
for i=10,99 do
	data:extend(factory_3("-s" .. i, "-s" .. i, false, 1, F.."/graphics/factory/factory-3-combined.png"))
end
data:extend(factory_3("-i", "", false, 1, F.."/graphics/factory/factory-3-combined.png"))

data:extend({
	{
		type = "simple-entity",
		name = "factory-3-overlay",
		flags = {"not-on-map"},
		minable = nil,
		max_health = 1,
		corpse = "big-remnants",
		collision_box = {{-7.8, -14.8}, {7.8, 0.8}},
		collision_mask = {},
		selection_box = {{-7.8, -14.8}, {7.8, 0.8}},
		selectable_in_game = false,
		picture = {
			filename = F.."/graphics/factory/factory-3-combined.png",
			width = 704,
			height = 608,
			shift = {2, -7.09375},
		},
		render_layer = "object",
	}
})
