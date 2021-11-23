// SO MANY DATA MANAGERS
// Manage the turn state
// Manage the mode [card select, enemy select, ally select]

enum mode {
	card_select,
	enemy_select,
	ally_select,
	none
}

selected_ally = noone;
selected_enemy = noone;
player_turn = true;
selection_mode = mode.card_select;

// I am very good at naming variables
