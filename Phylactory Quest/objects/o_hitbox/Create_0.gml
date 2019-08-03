// Set basic variables
owner = noone;
damage = 0;
knockback = 0;
lifespan = 100000;
damage = 1;

// Set lifespan really high at first (will be overridden in script)
alarm[0] = lifespan;

// Hit object list
hit_objects = ds_list_create();