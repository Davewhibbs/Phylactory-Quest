// TO BE USED FOR LIMP things




x_speed = lerp(x_speed, 0, x_accel);


// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	
	//Fall
	y_speed = approach(y_speed, fall_speed, grav);
}
else {
	y_speed = 0;	
}


