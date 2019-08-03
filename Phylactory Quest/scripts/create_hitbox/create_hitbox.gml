///@param x
///@param y
///@param creator
///@param sprite
///@param knockback
///@param lifespan
///@param damage
///@param x_scale

var X = argument0;
var Y = argument1;
var creator = argument2;
var sprite = argument3;
var knockback = argument4;
var lifespan = argument5;
var damage = argument6;
var x_scale = argument7;

var hitbox = instance_create_layer(X, Y, "Particles", o_hitbox);
hitbox.creator = creator;
hitbox.sprite_index = sprite;
hitbox.knockback = knockback;
hitbox.lifespan = lifespan;
hitbox.alarm[0] = lifespan;
hitbox.damage = damage;
hitbox.image_xscale = x_scale;

return hitbox;