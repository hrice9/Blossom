// SO MANY DATA MANAGERS
// Manage the turn state
// Manage the mode [card select, enemy select, ally select]

enum mode {
	card_select,
	enemy_select,
	ally_select,
	attack,
	discard,
	none
}

enum phase {
	draw,
	card,
	attack,
	enemy,
	discard
}

// load cards??
selected_ally = noone;
selected_enemy = noone;
player_turn = true;
selection_mode = mode.card_select;
current_phase = phase.draw;
no_select = false;
max_sun = 3;
sun = max_sun;
plusSun = 0;
plusCards = 0;
discard_card = false;
rot = 0;
turnNum = 0;
enemy_action_queue = ds_queue_create();
enemy_turn = true;

var l = "Instances";
// set up the enemy encounter
randomize();
switch(obj_dataManager.step_in_cycle) {
	case 1:
		// create 1 pit
		instance_create_layer(1440, 544, l, obj_pit);
		break;
		
	case 2:
		// create 2 pit or 1 bitey
		var rand = random(1);
		if(rand < .5) {
			instance_create_layer(1248, 480, l, obj_pit);
			instance_create_layer(1504, 608, l, obj_pit);
		} else {
			instance_create_layer(1440, 544, l, obj_bitey);
		}
		break;
		
	case 3:
		// create 3 pit or 1 bitey and 1 pit
		var rand = random(1);
		if(rand < .5) {
			instance_create_layer(1280, 672, l, obj_pit);
			instance_create_layer(1472, 544, l, obj_pit);
			instance_create_layer(1216, 416, l, obj_pit);
			
			
		} else {
			instance_create_layer(1248, 480, l, obj_pit);
			instance_create_layer(1504, 608, l, obj_bitey);
		}
		break;
		
	case 4:
		// Create 2 bitey or 1 bitey and 2 pit
		var rand = random(1);
		if(rand < .5) {
			instance_create_layer(1248, 480, l, obj_bitey);
			instance_create_layer(1504, 608, l, obj_bitey);
		} else {
			instance_create_layer(1280, 672, l, obj_pit);
			instance_create_layer(1472, 544, l, obj_pit);
			instance_create_layer(1216, 416, l, obj_bitey);
			
			
		}
		break;
		
	case 5:
		// Create 2 bitey and 1 pit or 3 bitey
		var rand = random(1);
		if(rand < .5) {
			instance_create_layer(1280, 672, l, obj_pit);
			instance_create_layer(1472, 544, l, obj_bitey);
			instance_create_layer(1216, 416, l, obj_bitey);
			
			
		} else {
			instance_create_layer(1280, 672, l, obj_bitey);
			instance_create_layer(1472, 544, l, obj_bitey);
			instance_create_layer(1216, 416, l, obj_bitey);
			
			
		}
		break;
		
	default:
	
		break;
}

// I am very good at naming variables
