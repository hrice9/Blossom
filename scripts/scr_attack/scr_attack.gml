

function token_attack(attacker, defender){
	var attack_val = attacker.attack - defender.defense;
	
	if(attack_val > 0) {
		defender.defense = 0;
		defender.hitpoints -= attack_val;
		// check if the defender is dead
		if(defender.hitpoints <= 0) {
			instance_destroy(defender);
			if(defender.type = token_type.enemy) {
				check_win_condition();
			} else {
				// check lose condition??
			}
			
		}
	} else {
		defender.defense -= attacker.attack;
	}
	
	attacker.can_attack = false;
}

function check_win_condition() {
	if(instance_number(obj_enemy) == 0) {
		win_condition();
	}
}

function win_condition() {
	// give the player a reward
	with(obj_dataManager) {
		// add a card from rewards to card
		array_push(cards, rewards[irandom(array_length(cards))]);
		
		
		
		//room_restart();
		// show that card in a reward screen
	}
	// show the reward screen
	// continue after 3 seconds
}