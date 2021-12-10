/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x, mouse_y, self)) {
	if(obj_tutorialViewer.page != 0) {
		audio_play_sound(snd_click, 10, false);
	}
}