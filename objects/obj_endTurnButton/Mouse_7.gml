if(position_meeting(mouse_x, mouse_y, self)) {
	if(obj_battleManager.current_phase == phase.card) {
		obj_battleManager.current_phase = phase.attack;
	} else if (obj_battleManager.current_phase == phase.attack) {
		obj_battleManager.current_phase = phase.discard;
		
	}
	
	obj_hand.selected_card = noone;
	obj_hand.card_to_remove = noone;
}


// Do something different depending on the mode
// card select -> go to attack mode
// attack mode -> enemy phase
// after enemy phase -> card select