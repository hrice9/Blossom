/// @description Attack decisions - but smart

// Make some decisions
if(defense < obj_player.attack && defense < 10) {
	// buff defense
	action = enemy_action.def_buff;
	return;
} else {
	if(attack == 0) {
		// buff attack
		action = enemy_action.atk_buff;
		return;
	} else {
		randomize();
		var rand = random(1);
		if(rand < .5) {
			// buff attack
			action = enemy_action.atk_buff;
			return;
		} else {
			// attack
			target = obj_player;
			action = enemy_action.attack;
			return;
		}
	}
}