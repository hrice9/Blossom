/// @description Insert description here
// You can write your code in this editor
if(obj_battleManager.selection_mode == mode.discard && obj_hand.card_to_remove != noone) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		if(mouse_check_button_pressed(mb_left)) {
			obj_battleManager.discard_card = true;
			audio_play_sound(snd_click, 10, false);
		}
	}
}