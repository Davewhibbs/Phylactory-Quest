

#region Wrap
/*
if x + x_speed > room_width{
	x = 0;
}
else if x + x_speed < 0 {
	x = room_width;
}

if y + y_speed  > room_height{
	y = 0;
}
else if y + y_speed < 0 {
	y = room_height;
}*/
#endregion

#region Move Flush to the wall

// 45 degree angles
if place_meeting(x + x_speed, y + y_speed, o_terrain) {
	// move one pixel at a time until flush with wall
	repeat(abs(x_speed)){
		if(not place_meeting(x + sign(x_speed), y + sign(y_speed), o_terrain)){
			x += sign(x_speed);
			y += sign(y_speed);
		}
		else {
			break;
		}
	}
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
	x_speed = 0;
}

// Fall down to terrain
if place_meeting(x, y + y_speed, o_terrain){
	// move one pixel at a time until flush with wall
	repeat(abs(y_speed)){
		if not place_meeting(x, y + sign(y_speed), o_terrain){
			y += sign(y_speed);
		} else {
			break;
		}
	}
	y_speed = 0;
}

// Fall down onto minion
if !place_meeting(x, y, o_minion){
	if place_meeting(x, y + y_speed, o_minion){
		// move one pixel at a time until flush with wall
		repeat(abs(y_speed)){
			if not place_meeting(x, y + sign(y_speed), o_minion){
				y += sign(y_speed);
			} else {
				jumps = 1;
				break;
			}
		}
		y_speed = 0;
	}
}
#endregion

#region Check if you are inside a wall
if place_meeting(x, y, o_terrain){
	// Check which direction you were moving and move the other direction until no longer within the wall
	repeat(abs(y_speed)){
		if not place_meeting(x, y, o_terrain){
			y -= sign(y_speed);
		} else {
			break;
		}
	}
	y_speed = 0;
	
	repeat(abs(x_speed)){
		if not place_meeting(x, y, o_terrain){
			x -= sign(x_speed);
		} else {
			break;
		}
	}
	x_speed = 0;
}
#endregion

x += x_speed;
y += y_speed;


