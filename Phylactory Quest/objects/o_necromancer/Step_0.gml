// STATE MACHINE

switch state {

#region IDLE STATE
	case "IDLE":
		image_speed = 1;
		// Basic state, move around, climb and summon minions
		
		// MOVE
		player_movement();
		
		// TRANSITIONS
		cycle_script();
		
		if active {
			if input.action {
				if bones > 0 {
					state = "SUMMONING";
					// Set the sprite
					sprite_index = action_sprite;
					image_index = 0;
					image_speed = 1;
					show_debug_message("Necromancer switched to SUMMONING");
				} else {
					show_debug_message("Not enough BONES!");
				}
			}
		}
		
		if current_hp < 0 {
			current_hp = max_hp;
			state = "DEAD";
		}
		
		break;
#endregion

#region SUMMONING STATE
	case "SUMMONING":
		
		limp_movement();
		
		// Summon the minion at certain frame (implement after animation is done)
		if animation_hit_frame(16){
			summon_minion(x, y - 32, bones);
			
		}
		
		
		// Return to IDLE when animation is finished
		if animation_end(){
			state = "IDLE";
			show_debug_message("Necromancer switched to IDLE");
		}
		
		break;
#endregion

#region HURT STATE
	case "HURT":
	
		break;
#endregion

#region DEAD STATE
	case "DEAD":
		
		x = o_shrine_active.x;
		y = o_shrine_active.y;
		state = "IDLE";
		
		break;
#endregion
		
#region WIN STATE
	case "WIN":
	
		break;
#endregion

	default:
		show_debug_message("defaulted");
		state = "IDLE";
	
		break;
}

// Make sure we don't have more than the max bonecount
if bones > max_bones bones = max_bones;
if y_speed != 0 jumps = 0;

// Apply all movement at the end
move_and_collide();

// Reset at any time
if keyboard_check_pressed(ord("R")) state = "DEAD";