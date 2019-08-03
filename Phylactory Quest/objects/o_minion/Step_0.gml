
// STATE MACHINE

switch state {

#region IDLE STATE
	case "IDLE":
		image_speed = 1;
		// Basic state, move around, climb and summon minions
		
		// MOVE
		
		
		// TRANSITIONS
		cycle_script();
		
		if active {
			if input.action {
				state = "EXPLODE";
			}
		}
		break;
#endregion

#region EXPLODE STATE
	case "EXPLODE":
		
		// CREATE EXPLOSION AND HITBOX
		create_hitbox(x, y, id, s_explosion_hitbox_test, 4, 15, current_hp, image_xscale);
		
		// Switch to Death state
		state = "DEAD";
		break;
#endregion

#region PROJECTILE STATE
	case "PROJECTILE":
		x_accel = x_accel_projectile;
	
		// create a new hitbox each frame
		create_hitbox(x + 1 * image_xscale, y, self, fall_sprite, 4, 2, 1, image_xscale);
		
		// If you hit a wall, stop and turn to idle
		if x_speed < abs(1) || place_meeting(x, y+1, o_terrain) {
			state = "IDLE";
		}
		
		
		break;
#endregion

#region HURT STATE
	case "HURT":
	
		break;
#endregion

#region DEAD STATE
	case "DEAD":
	
		// Spawn a bone on death
		for (i = max_hp; i > 0; i--) {
			var bone = instance_create_layer(x, y-16, "Particles", o_bone);
			bone.x_speed = random_range(-max_speed, max_speed);
			bone.y_speed = random_range(-6, -10);
		}
		
	
		// Cycle to Necromancer
		if o_necromancer.active == false{
			o_necromancer.active = true;
			show_debug_message("cycled to Necro after minion death");
		}
		
		// DESTROY THIS OBJECT
		instance_destroy();
		
		break;
#endregion
		

	default:
		show_debug_message("defaulted");
		state = "IDLE";
		break;
}

// Apply all movement at the end
player_movement();
move_and_collide();