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

// I am very good at naming variables
