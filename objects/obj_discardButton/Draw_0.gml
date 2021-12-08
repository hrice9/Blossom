/// @description Insert description here
// You can write your code in this editor

if(obj_battleManager.current_phase == phase.discard && obj_hand.card_to_remove != noone) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button(mb_left)) {
			draw_sprite_ext(sprite_index, 0, x, y, .8, .8, 0, c_gray, 1);
		} else {
			draw_sprite_ext(sprite_index, 0, x, y, 1.2, 1.2, 0, c_white, 1);
		}
	}
	 else {
		draw_self();
	}
}  else {
	draw_self();
}