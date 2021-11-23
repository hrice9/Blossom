/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, self)) {
	// do enemy turns
	// reset sun
	// draw up to 3
	
	var num_to_draw = 3 - ds_list_size(obj_hand.hand);
	
	for(var i = 0; i < num_to_draw; i++) {
		draw_card();
	}
	
	
}