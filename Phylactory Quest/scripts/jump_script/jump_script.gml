///@param height

y_speed = argument0;

if sprite_index != action_sprite {
	sprite_index = jump_sprite;
	image_index = 0;
}

show_debug_message("JUMP");

// play jump sound
//audio_play_sound(snd_jump, 10, 0);

// create dust
//instance_create_layer(x, y, "Particles", o_jump_dust);