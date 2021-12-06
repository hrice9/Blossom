/// @description Insert description here
// You can write your code in this editor


// aaaaaaaaaaaaaaaahhhhhhhhhhhhhhhhhhhhhh

if(current_phase == phase.card) {
	if(selected_ally != noone) {
		// do the on_complete callback for the selected card
		// obj_hand.card_to_remove.data.OnComplete();
		obj_hand.selected_card.data.OnComplete();
		sun -= obj_hand.selected_card.data.manaCost;
		obj_hand.destroy_card = true;
		selection_mode = mode.card_select;
		selected_ally = noone;
	}

	if(selected_enemy != noone) {
		// do the on_complete callback for the selected card
		// obj_hand.card_to_remove.data.OnComplete();
		obj_hand.selected_card.data.OnComplete();
		sun -= obj_hand.selected_card.data.manaCost;
		obj_hand.destroy_card = true;
		selection_mode = mode.card_select;
		selected_enemy = noone;
	}



	if(selection_mode == mode.none) {
		obj_hand.selected_card.data.OnComplete();
		sun -= obj_hand.selected_card.data.manaCost;
		obj_hand.destroy_card = true;
		selection_mode = mode.card_select;
		selected_ally = noone;
		selected_enemy = noone;
	}
	
} else if(current_phase == phase.attack) {
	// select an ally and and then an enemy
	if(selected_ally == noone) {
		selection_mode = mode.ally_select;
	} else {
		selection_mode = mode.enemy_select;
	}
	
	
	if(selected_ally != noone && selected_enemy != noone) {
		token_attack(selected_ally, selected_enemy);
		selected_ally = noone;
		selected_enemy = noone;
	}
} else if(current_phase == phase.draw) {
	event_user(0);
} else if(current_phase == phase.enemy) {
	event_user(3);
} else if(current_phase == phase.discard) {
	event_user(4);
	if(discard_card) {
		discard_card = false;
		obj_hand.destroy_card = true;
	}
	
}