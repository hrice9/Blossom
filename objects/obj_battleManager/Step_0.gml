/// @description Insert description here
// You can write your code in this editor


// aaaaaaaaaaaaaaaahhhhhhhhhhhhhhhhhhhhhh

if(selected_ally != noone) {
	// do the on_complete callback for the selected card
	// obj_hand.card_to_remove.data.OnComplete();
	obj_hand.selected_card.data.OnComplete();
	obj_hand.destroy_card = true;
	selection_mode = mode.card_select;
	selected_ally = noone;
}

if(selected_enemy != noone) {
	// do the on_complete callback for the selected card
	// obj_hand.card_to_remove.data.OnComplete();
	obj_hand.selected_card.data.OnComplete();
	obj_hand.destroy_card = true;
	selection_mode = mode.card_select;
	selected_enemy = noone;
}



if(selection_mode == mode.none) {
	obj_hand.selected_card.data.OnComplete();
	obj_hand.destroy_card = true;
	selection_mode = mode.card_select;
	selected_ally = noone;
	selected_enemy = noone;
}