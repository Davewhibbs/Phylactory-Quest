///@param x
///@param y
///@param m_bones

var X = argument0;
var Y = argument1;
var m_bones = argument2;

var minion = instance_create_layer(X, Y, "Lifeforms", o_minion);
minion.max_hp = m_bones;
minion.current_hp = m_bones;
minion.alarm[0] = 60;  // (1) Seconds
minion.state = "PROJECTILE";
minion.image_xscale = image_xscale;
minion.x_speed = 10 * image_xscale;
minion.y_speed = -2; 

// Cycle to the new minion
active = false;
minion.active = true;

ds_list_add(manager.playerlist, minion);

// Reduce bone count
bones = 0;