

right		= keyboard_check(vk_right);
left		= keyboard_check(vk_left);
up			= keyboard_check(vk_up);
jump		= keyboard_check_pressed(vk_up);
action		= keyboard_check_pressed(vk_space);
down		= keyboard_check(vk_down);
cycle       = keyboard_check_pressed(vk_shift);

x_input = right - left;
y_input = down - up;

