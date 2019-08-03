/// @description DRAW HEALTHBAR

if max_hp == 2 {
	if current_hp == 2{
		draw_sprite(s_healthbar_player_2, 0, x, y - 30);
	}
	else if current_hp == 1 {
		draw_sprite(s_healthbar_player_2, 1, x, y - 30);
	}
	else {
		draw_sprite(s_healthbar_player_2, 2, x, y - 30);
	}

} else if max_hp == 1 {
	if current_hp == 1 {
		draw_sprite(s_healthbar_player_1, 0, x, y - 30);
	}
	else {
		draw_sprite(s_healthbar_player_1, 1, x, y - 30);
	}

}