/// @description Knight Behavior Tree

switch state {

#region PATROL STATE
	case "PATROL":
		knight_movement();
	
		break;
#endregion

#region ATTACK STATE
	case "ATTACK":
		
	
		break;
#endregion

#region HURT STATE
	case "HURT":
		
	
		break;
#endregion

#region DEAD STATE
	case "DEAD":
		
		instance_destroy();
		break;
#endregion
}

// KIIILLL
if current_hp <= 0 {
	state = "DEAD";
}