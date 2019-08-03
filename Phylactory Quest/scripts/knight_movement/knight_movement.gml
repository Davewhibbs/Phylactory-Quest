// TO BE USED FOR KNIGHTS

image_speed = 1;

// Move Right if facing right, etc.
// Turn around at a wall or ledge
x_speed = max_speed * image_xscale;


// check if we're on the ground or in the air
if !place_meeting(x, y+1, o_terrain){
	//Fall
	y_speed = approach(y_speed, fall_speed, grav);
}

if place_meeting(x + x_speed, y, o_terrain){
	// move one pixel at a time until flush with wall
	repeat(abs(x_speed)){
		if(not place_meeting(x + sign(x_speed), y, o_terrain)){
			x += sign(x_speed);
		}
		else {
			break;
		}
	}
	image_xscale *= -1;
	x_speed *= -1;
}

if !place_meeting(x + sprite_width + x_speed, y+1, o_terrain){
	// move one pixel at a time until flush at the edge
	repeat(abs(x_speed)){
		if(place_meeting(x + sign(x_speed), y+1, o_terrain)){
			x += sign(x_speed);
		}
		else {
			break;
		}
	}
	image_xscale *= -1;
	x_speed *= -1;
}

x+=x_speed;
y+=y_speed;

