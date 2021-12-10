/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, self)) {
	if(obj_tutorialViewer.page != array_length(obj_tutorialViewer.pages)-1) {
		audio_play_sound(snd_click, 10, false);
	}
}