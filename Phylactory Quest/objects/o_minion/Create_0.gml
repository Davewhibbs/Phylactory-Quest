event_inherited();

// SET STARTING VARIABLES
max_hp = 1;
current_hp = max_hp;
max_speed = 3;
x_accel_idle = .3;
x_accel_projectile = .1;
x_accel = .3;
x_speed = 0;
y_speed = 0;
fall_speed =  8;
jump_height = -7;
jumps = 1;
active = false;
state = "IDLE";

// ----------STATES
// "IDLE"
// "EXPLODE"
// "HURT"
// "DEAD"

// Meta stuff
input = o_input;
manager = o_manager;


// SPRITES
idle_sprite = s_minion_idle;
move_sprite = s_minion_run;
hurt_sprite = s_minion_idle;
jump_sprite = s_minion_idle;
fall_sprite = s_minion_idle;
action_sprite = s_minion_idle;