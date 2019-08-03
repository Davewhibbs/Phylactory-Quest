


// Activate this when the necromancer touches it
if place_meeting(x, y, o_necromancer){
	
	// Deactivate any other active shrines
	if instance_exists(o_shrine_active) {
		instance_create_layer(o_shrine_active.x, o_shrine_active.y, "Scenery", o_shrine_inactive);
		instance_destroy(o_shrine_active);
	}
	
	// Activate this
	instance_create_layer(x, y, "Scenery", o_shrine_active);
		instance_destroy();
}

