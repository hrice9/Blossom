/// @description Attack decision - Replace with individual enemy code
randomize();
action_num = irandom_range(1, 10);
show_debug_message("HERE");


if(action_num <= 2) { // attack
	action = enemy_action.attack;
	// pick a target
	if(instance_exists(obj_player)) {
		target = obj_player;
	}
	show_debug_message("HERE 1");
} else if(action_num <= 5) { // buff attack 1
	action = enemy_action.atk_buff;
	action_strength = 1;
	show_debug_message("HERE 2");
} else if(action_num <= 8) { // buff def 1
	action = enemy_action.def_buff;
	action_strength = 1;
	show_debug_message("HERE 3");
} else { // buff attack 2
	action = enemy_action.atk_buff;
	action_strength = 2;
	show_debug_message("HERE 4");
}