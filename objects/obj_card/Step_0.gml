/// @description Insert description here
// You can write your code in this editor
//y = target_y;

if(selected && mouse_check_button_pressed(mb_left)) {
	// obj_hand.card_to_remove = self;
	// if the player has enough sun, do their onlcick event
	if(obj_battleManager.player_turn) {
		data.OnClick();
	
		obj_hand.card_to_remove = self;
		obj_hand.selected_card = self;
	}
	
	
}

sprite_index = data.cardArt;