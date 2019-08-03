if input.cycle && active && manager.alarm[0] < 0 {
		if ds_list_size(manager.playerlist) > 1 {
			active = false;
			
			// Find this instance
			var i = ds_list_find_index(manager.playerlist, id);
			
			// Activate the next instance
			if manager.playerlist[| i+1] != undefined{
				manager.playerlist[| i+1].active = true;
			}
			else {
				manager.playerlist[| 0].active = true;
			}
			show_debug_message("cycled to next character");
			
			// Reset cycle timer
			manager.alarm[0] = 10;
		}
}

if ds_list_size(manager.playerlist) == 1 && o_necromancer.active == false{
	o_necromancer.active = true;
	show_debug_message("cycled to Necro, only option");
}
