if(type == token_type.ally && obj_battleManager.selection_mode == mode.ally_select) {
	// if the player clicks on me, I become the selected ally
	
	show_debug_message("Is this working???");
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.selected_ally = self;
			// obj_hand.destroy_card = true;
			// do some other callback
			show_debug_message("K I L L M E P L E A S E")
			
		}
	}
}

if(type == token_type.enemy && obj_battleManager.selection_mode == mode.enemy_select) {
	// if the player clicks on me, I become the selected ally
	
	show_debug_message("Is this working???");
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.selected_enemy = self;
			// obj_hand.destroy_card = true;
			// do some other callback
			show_debug_message("K I L L M E P L E A S E")
			
		}
	}
}