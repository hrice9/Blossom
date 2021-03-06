/// @description Draw Phase


for(var i = 0; i < 3 + plusCards; i++) {
	draw_card();
}

plusCards = 0;

tick_buds();

// make enemy turn decision
make_enemy_decisions();

var player_num = instance_number(obj_token);
for(var i = 0; i < player_num; i++) {
	instance_find(obj_token, i).can_attack = true;
}

sun = max_sun + plusSun; // plus bonus sun
plusSun = 0;

turnNum ++;
current_phase = phase.card;
selected_ally = noone;
selected_enemy = noone;
selection_mode = mode.card_select;
enemy_turn = true;

with(obj_hand) {
	card_to_remove = noone;
	selected_card = noone;
}

obj_player.can_attack = true;