/// @description Enemy Turn Phase

// Do stuff

var enemy_count = instance_number(obj_enemy);

for(var i = 0; i < enemy_count; i++) {
	with(instance_find(obj_enemy, i)) {
		//event_user(1);
		
		switch(action) {
			case enemy_action.attack:
				// damage the target
				token_attack(self, target);
				break;
			case enemy_action.atk_buff:
				// create an attack bud
				array_push(buds, new Bud(effect_type.attack, action_strength, 5));
				attack += action_strength;
				break;
			case enemy_action.def_buff:
				// increase defense
				array_push(buds, new Bud(effect_type.armor, action_strength, 5));
				defense += action_strength;
				break;
		}
		
		show_debug_message("Help");
		
		action = enemy_action.attack;
		target = noone;
		action_strength = 0;
	}
}

current_phase = phase.draw;
selection_mode = mode.card_select;