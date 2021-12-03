/// @description Draw Phase


var num_to_draw = 3;// - ds_list_size(obj_hand.hand);

for(var i = 0; i < num_to_draw; i++) {
	draw_card();
}
	
tick_buds();

// make enemy turn decision
make_enemy_decisions();

var player_num = instance_number(obj_token);
for(var i = 0; i < player_num; i++) {
	instance_find(obj_token, i).can_attack = true;
}

sun = max_sun; // plus bonus sun

current_phase = phase.card;
selection_mode = mode.card_select;