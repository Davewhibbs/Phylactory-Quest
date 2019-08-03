event_inherited();

// SET STARTING VARIABLES
max_hp = 1;
current_hp = max_hp;
max_speed = 3;

x_accel = .3;

x_speed = 0;
y_speed = 0;
fall_speed =  8;
jump_height = -7;
active = true;
state = "IDLE";
jumps = 1;
bones = 0;
max_bones = 2;

// ----------STATES
// "IDLE"
// "SUMMONING"
// "HURT"
// "DEAD"
// "WIN"

// Meta stuff
input = instance_create_layer(0, 0, "Meta", o_input);
manager = o_manager;
ds_list_add(manager.playerlist, self);

// SPRITES
idle_sprite = s_necromancer_idle;
move_sprite = s_necromancer_idle;
hurt_sprite = s_necromancer_idle;
jump_sprite = s_necromancer_idle;
fall_sprite = s_necromancer_idle;
action_sprite = s_necromancer_summon;