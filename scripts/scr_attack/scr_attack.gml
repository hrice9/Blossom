

function token_attack(attacker, defender){
	var attack_val = attacker.attack - defender.defense;
	defender.sprite_index = defender.injured_animation;
	defender.image_index = 0; // Start the animation from 0
	
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
		audio_stop_sound(snd_music);
		audio_play_sound(snd_lose, 10, false);
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
		
		obj_dataManager.level++;
		obj_dataManager.step_in_cycle ++;
		if(obj_dataManager.step_in_cycle > 5) {
			obj_dataManager.step_in_cycle = 1;
			obj_dataManager.cycle += 1;
		}
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

function next_enemy_action() {
	if(ds_queue_empty(obj_battleManager.enemy_action_queue)) {
		obj_battleManager.current_phase = phase.draw;
		selection_mode = mode.card_select;
		return;
	}
	
	var enemy = ds_queue_dequeue(obj_battleManager.enemy_action_queue);
	//enemy.sprite_index = enemy.attack_animation;
	with(enemy) {
		//event_user(1);
		show_debug_message("Are we doing alright??");
		sprite_index = attack_animation;
		image_index = 0;
		switch(action) {
			case enemy_action.attack:
				// damage the target
				token_attack(self, target);
				break;
			case enemy_action.atk_buff:
				// create an attack bud
				array_push(buds, new Bud(effect_type.attack, attack_buff_power, 5));
				attack += attack_buff_power;
				attack_buff_power ++;
				break;
			case enemy_action.def_buff:
				// increase defense
				array_push(buds, new Bud(effect_type.armor, defense_buff_power, 5));
				defense += defense_buff_power;
				defense_buff_power ++;
				break;
		}
		
		show_debug_message("Help");
		
		action = enemy_action.none;
		target = noone;
		action_strength = 0;
	}
}