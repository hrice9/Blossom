/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x, mouse_y, self)) {
	shader_set(shdr_2dOutline);
	draw_self();
	shader_reset();
} else {
	draw_self();
}