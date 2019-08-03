event_inherited();

draw_self();



if active {
	draw_sprite(s_active_indicator, 0, x, y-40);
}

// Draw Healthbar

// Draw Bones
if bones == 1 {
	// SPRITES
	idle_sprite = s_necromancer_1_bone;
	move_sprite = s_necromancer_1_bone;
	hurt_sprite = s_necromancer_1_bone;
	jump_sprite = s_necromancer_1_bone;
	fall_sprite = s_necromancer_1_bone;
	action_sprite = s_necromancer_1_bone;
}

else if bones == 2 {
	idle_sprite = s_necromancer_2_bone;
	move_sprite = s_necromancer_2_bone;
	hurt_sprite = s_necromancer_2_bone;
	jump_sprite = s_necromancer_2_bone;
	fall_sprite = s_necromancer_2_bone;
	action_sprite = s_necromancer_2_bone;
}
else if bones == 0 {
	idle_sprite = s_necromancer_idle;
	move_sprite = s_necromancer_idle;
	hurt_sprite = s_necromancer_idle;
	jump_sprite = s_necromancer_idle;
	fall_sprite = s_necromancer_idle;
	action_sprite = s_necromancer_idle;
}