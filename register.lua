-- Registrations for slinghot mod


if minetest.global_exists('technic') then
	minetest.register_craftitem('slingshot:rubber_band', {
		description = 'Rubber band',
		inventory_image = 'slingshot_rubber_band.png',
	})
	
	minetest.register_craft({
		output = 'slingshot:rubber_band 20',
		type = 'shapeless',
		recipe = {'technic:rubber'},
	})
end


-- A metal slingshot
slingshot.register('slingshot', {
	description = 'Slingshot',
	damage_groups = {fleshy=4},
	velocity = 15,
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', ''},
	},
	aliases = {
		'slingshot',
	},
})


-- A weaker slingshot
slingshot.register('wood', {
	description = 'Wooden slingshot',
	damage_groups = {fleshy=2},
	velocity = 10,
	recipe = {
		{'default:stick', '', 'default:stick'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	},
	aliases = {
		'wood_slingshot',
	}
})
