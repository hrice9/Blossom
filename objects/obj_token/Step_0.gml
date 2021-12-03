if(type == token_type.ally && obj_battleManager.selection_mode == mode.ally_select) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.selected_ally = self;
			
		}
	}
}

if(type == token_type.ally && obj_battleManager.selection_mode == mode.attack) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left) && can_attack) {
			obj_battleManager.selected_ally = self;
			
		}
	}
}

if(type == token_type.enemy && obj_battleManager.selection_mode == mode.enemy_select) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.selected_enemy = self;
			
		}
	}
}

if(type == token_type.enemy && obj_battleManager.selection_mode == mode.attack) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.selected_enemy = self;
			
		}
	}
}
