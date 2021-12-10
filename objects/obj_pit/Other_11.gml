/// @description Attack decision but smart

randomize();

if(attack - 5 < obj_player.defense) {
	action = enemy_action.atk_buff;
} else {
	rand = random(1);
	if(rand < .8) {
		target = obj_player;
		action = enemy_action.attack;
	} else {
		action = enemy_action.atk_buff;
	}
}