/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(obj_battleManager.selection_mode == mode.ally_select) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		with_shader(shdr_2dOutline, function() {
			draw_self();
		});
	}
}