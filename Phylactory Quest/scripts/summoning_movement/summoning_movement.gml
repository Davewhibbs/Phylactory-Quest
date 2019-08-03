// TO BE USED FOR NECROMANCER AND MINIONS

image_speed = 1;

// All depends on whether this unit is active
if active == true {


// Move left, right or idle
if input.x_input > 0 {
	
	// Face right
	image_xscale = 1;
	
	// Increase x_speed
	x_speed = lerp(x_speed, max_speed, x_accel);
}

else if input.x_input < 0 {
	// Face right
	image_xscale = -1;
	
	// Increase x_speed
	x_speed = lerp(x_speed, -max_speed, x_accel);
}

else if input.x_input == 0 {
	
	// Increase x_speed
	x_speed = lerp(x_speed, 0, x_accel);
}

}

// Inactive - slow to 0 x_speed
else {
	// Increase x_speed
	x_speed = lerp(x_speed, 0, x_accel);
}

// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	
	//Fall
	y_speed = approach(y_speed, fall_speed, grav);
}
else {
	jumps = 1;
	y_speed = 0;	
}

if y_speed ==0 jumps = 1;

// Only jump if on the ground
if input.jump && active {
	show_debug_message("jumps: " + string(jumps));
	if jumps > 0 && place_meeting(x, y+1, o_terrain){
		jump_script(jump_height);
	}
	else if place_meeting(x, y+1, o_minion){
		jump_script(jump_height);
	}
}


