/// @description Insert description here
// You can write your code in this editor
//y = target_y;

if(selected && mouse_check_button_pressed(mb_left)) {
	// obj_hand.card_to_remove = self;
	// if the player has enough sun, do their onlcick event
	if(obj_battleManager.selection_mode != mode.discard) {
		if(obj_battleManager.player_turn && obj_battleManager.sun >= data.manaCost) {
			data.OnClick();
			obj_hand.card_to_remove = self;
			obj_hand.selected_card = self;
		}
	} else if(obj_battleManager.selection_mode == mode.discard) {
		obj_hand.card_to_remove = self;
		//obj_hand.selected_card = self;
	}
	
	
}

if(selected && !was_selected) {
	//audio_stop_sound(snd_card);
	audio_play_sound(snd_card, 10, false);
}

was_selected = selected;

sprite_index = data.cardArt;