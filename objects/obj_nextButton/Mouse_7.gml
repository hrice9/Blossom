/// @description Insert description here
// You can write your code in this editor

if(obj_tutorialViewer.page != array_length(obj_tutorialViewer.pages)-1) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		obj_tutorialViewer.page ++;
	}
	
}