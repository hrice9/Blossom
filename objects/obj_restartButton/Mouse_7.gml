/// @description Insert description here
// You can write your code in this editor


if(position_meeting(mouse_x, mouse_y, self)) {
	instance_destroy(obj_dataManager);
	room_goto(rm_data_load_room);
}
