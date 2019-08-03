/// @description Deal Damage to a lifeform

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

other.current_hp -= damage;
//other.state = "Knockback";
other.x_speed = knockback * image_xscale;

// Add other to hitlist
ds_list_add(hit_objects, other);