// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_enemy_decisions(){
	for(var i = 0; i < instance_number(obj_enemy); i++) {
		with(instance_find(obj_enemy, i)) {
			event_user(1);
		}
	}
}