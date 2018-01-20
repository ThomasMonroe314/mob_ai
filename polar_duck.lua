mob_ai.register_mob("mob_ai:polar_duck",{
	visual = "mesh",
	mesh = "polar_duck.b3d",
	animations = {
		stand = {start = 0, stop = 30,},
		walk = {start = 35, stop = 65,},
		punch = {start = 70,stop = 85,}
	},
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1, 0.4},
	textures = {"polar_duck.png"},
	driver = "idle",
	view_range = 10,
	reach = 2,
	script = {
		idle = {
			anim_end = "roam"
		},
		roam = {
			can_see_player = "attack",
			timer = "idle"
		},
		attack = {
			cant_see_player = "idle"
		}
	},
	drops = {
		{name = "default:apple",
			min = 10,max = 99,
			chance = 100},
		{name = "default:dirt",
			min = 1,max = 99,
			chance = 25}
	}
})
