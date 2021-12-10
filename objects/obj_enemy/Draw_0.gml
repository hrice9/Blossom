/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// draw self

if(obj_battleManager.selection_mode == mode.enemy_select) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		with_shader(shdr_2dOutline, function() {
			draw_self();
		})
	} 
}


// draw indicator
switch(action) {
	case enemy_action.atk_buff:
		draw_sprite(spr_attackBuff, 0, x, y - 150);
		break;
	case enemy_action.def_buff:
		draw_sprite(spr_defenseBuff, 0, x, y - 150);
		break;
	case enemy_action.attack:
		draw_sprite(spr_attackIndicator, 0, x, y - 150);
		break;
	case enemy_action.none:
		break;
}

if(obj_battleManager.selection_mode == mode.enemy_select) {
	if(position_meeting(mouse_x, mouse_y, self)) {
		draw_stats(room_width - 580, y - 50, hitpoints, defense, attack, false);
	} else {
		draw_stats(room_width - 500, y - 50, hitpoints, defense, attack, false);
	}
} else {
	draw_stats(room_width - 500, y - 50, hitpoints, defense, attack, false);
}