dofile(minetest.get_modpath("dirtmons").."/api.lua")
-- dirtmons:register_spawn(name, description, nodes, max_light, min_light, chance, active_object_count, max_height)
dirtmons:register_spawn("dirtmons:dirt", {"default:dirt_with_grass","default:stone", "default:stonebrick","default:cobble"}, 4, -1, 7000, 2, 31000)
dirtmons:register_mob("dirtmons:dirt", {
	type = "monster",
	hp_min = 15,
	hp_max = 70,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "dirt.x",
	textures = {"dirt.png"},
	visual_size = {x=3.5, y=2.8},
	makes_footstep_sound = true,
	view_range = 24,
	walk_velocity = 2.5,
	run_velocity = 3.8,
	damage = 2.7,
	drops = {
		{name = "default:dirt",
		chance = 1,
		min = 3,
		max = 6,},
		{name = "default:cotton",
		chance = 1,
		min = 0,
		max = 4,},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 1,
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
		death = "mobs_stone_death",
		attack = "mobs_stone_attack",
		},

})

if minetest.setting_get("log_mods") then
	minetest.log("action", "dirt mobs loaded")
end







