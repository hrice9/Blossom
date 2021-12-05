

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
				check_lose_condition();
			}
			
		}
	} else {
		defender.defense -= attacker.attack;
	}
	
	attacker.can_attack = false;
}

function check_lose_condition() {
	if(instance_number(obj_player) == 0) {
		// lose
		// goto lose screen
		room_goto_next();
	}
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
		var reward = rewards[irandom_range(0, array_length(rewards)-1)];
		array_push(cards, reward);
		
		show_reward(reward);
		
		//room_restart();
		// show that card in a reward screen
	}
	// show the reward screen
	// continue after 3 seconds
}

function show_reward(reward) {
	// create an unselectable instance of card
	instance_deactivate_object(obj_endTurnButton);
	var card = instance_create_layer(room_width/2, room_height/2, "UI", obj_card);
	card.target_y = room_height/2;
	// populate it's data with reward
	card.data = obj_cardManager.cards[?reward];
	obj_battleManager.selection_mode = mode.none;
	layer_set_visible("Cards", false);
	// create a continue button that goes to the next room
	instance_create_layer(room_width/2, room_height/2 + 256, "UI", obj_continueButton);
}