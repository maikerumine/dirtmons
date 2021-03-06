dofile(minetest.get_modpath("dirtmons").."/api.lua")
-- dirtmons:register_spawn(name, description, nodes, max_light, min_light, chance, active_object_count, max_height)
dirtmons:register_spawn("dirtmons:dirt", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 7, 4, 12000, 2, 31000)
dirtmons:register_mob("dirtmons:dirt", {
	type = "monster",
	hp_min = 30,
	hp_max = 50,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "dirt.x",
	textures = {"dirt.png"},
	visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 24,
	follow = "flowers:viola",--swap out type randomly for server players"flowers:tulip","flowers:rose","flowers:geranium","flowers:dandelion_yellow","flowers:dandelion_white",
	walk_velocity = 2.5,
	run_velocity = 3.8,
	damage = 2.7,
	drops = {
		{name = "default:dirt",
		chance = 1,
		min = 1,
		max = 2,},
				{name = "bones:bones",
		chance = 1,
		min = 1,
		max = 1,},
						{name = "flowers:viola",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		war_cry = "mobs_stone",
		death = "mobs_death2",
		attack = "mobs_stone_attack",
		},
})




dirtmons:register_spawn("dirtmons:dirt2", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 7, 4, 7000, 5, -100)
dirtmons:register_mob("dirtmons:dirt2", {
	type = "monster",
	hp_min = 30,
	hp_max = 50,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "dirt.x",
	textures = {"dirt2.png"},
	visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 24,
	follow = "flowers:rose",--swap out type randomly for server players"flowers:tulip","flowers:rose","flowers:geranium","flowers:dandelion_yellow","flowers:dandelion_white",
	walk_velocity = 1.5,
	run_velocity = 2.8,
	damage = 2.7,
	drops = {
		{name = "default:dirt",
		chance = 1,
		min = 1,
		max = 2,},
				{name = "bones:bones",
		chance = 1,
		min = 1,
		max = 1,},
						{name = "flowers:rose",
		chance = 10,
		min = 0,
		max = 1,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
	sounds = {
		war_cry = "mobs_stone",
		death = "mobs_death2",
		attack = "mobs_stone_attack",
		},
})

if minetest.setting_get("log_mods") then
	minetest.log("action", "dirt mobs loaded")
end





