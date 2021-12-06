/// @description Discard down to 2

if(ds_list_size(obj_hand.hand) > 2) {
	selection_mode = mode.discard;
} else {
	current_phase = phase.enemy;
	selection_mode = mode.card_select;
}