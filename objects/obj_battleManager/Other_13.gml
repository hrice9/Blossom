/// @description Enemy Turn Phase

// Do stuff

if(enemy_turn) {
	enemy_turn = false;
	var enemy_count = instance_number(obj_enemy);

	for(var i = 0; i < enemy_count; i++) {
		ds_queue_enqueue(enemy_action_queue, instance_find(obj_enemy, i));
	}
	
	next_enemy_action();
}
//current_phase = phase.draw;
//selection_mode = mode.card_select;