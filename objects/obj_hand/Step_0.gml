/// @description Insert description here
// You can write your code in this editor

active = false;
if(obj_battleManager.selection_mode == mode.card_select || (obj_battleManager.selection_mode == mode.discard && selected_card == noone)) {
	// I can do things
	active = true;
}

if(selected_card != noone) {
	if(mouse_check_button_pressed(mb_right)) {
		selected_card.selected = false;
		card_to_remove = noone;
		selected_card = noone;
		for(var i = 0; i < num_cards; i++) {
			var card = ds_list_find_value(hand, i)
			card.selected = false;
		}
		obj_battleManager.selection_mode = mode.card_select;
		active = true;
	}
}


num_cards = ds_list_size(hand);

var card_width = sprite_get_width(spr_tempCard) * .5
var hand_width = (num_cards-1) * card_width;

if(active) {
	for(var i = 0; i < num_cards; i++) {
		var card = ds_list_find_value(hand, i)
		
		if(position_meeting(mouse_x, mouse_y, card)) {
			// card.selected = true;
		
			if(mouse_x > card.x) {
				// the mouse is on the right of the card
				if(i != num_cards - 1) {
					var rightCard = ds_list_find_value(hand, i + 1)
					var distToRight = point_distance(mouse_x, 0, rightCard.x, 0);
					var distToCurr  = point_distance(mouse_x, 0, card.x, 0);
				
					if(distToCurr > distToRight) {
						card.selected = false;
					}
				
				} else {
					card.selected = true;
				}
			
			} else if(mouse_x < card.x) {
				// the mouse is on the left of the card
			
				if(i != 0) {
					var leftCard = ds_list_find_value(hand, i - 1);
					var distToLeft = point_distance(mouse_x, 0, leftCard.x, 0);
					var distToCurr = point_distance(mouse_x, 0, card.x, 0);
				
					if(distToCurr >= distToLeft) {
						card.selected = false;
						leftCard.selected = true;
					} else {
						card.selected = true;
					}
				} else {
					card.selected = true;
				}
			
			}
		
			// select the card with the lowest depth
		} else {
			card.selected = false;
		}
	
		card.x = room_center - (hand_width/2) + (card_width * i);
		if(!card.selected) card.depth = i;
		card.target_y = 4*room_height/5;
	
	}
}
else if(obj_battleManager.current_phase != phase.card && obj_battleManager.current_phase != phase.discard) {
	for(var i = 0; i < num_cards; i++) {
		var card = ds_list_find_value(hand, i)
		card.target_y = room_height - 10;
	}
}

if(card_to_remove != noone && destroy_card) {
	var card_index = ds_list_find_index(hand, card_to_remove.id);
	//show_debug_message(string(card_index));
	discard(card_to_remove.id);
	card_to_remove = noone;
	destroy_card = false;
	num_cards --;
	selected_card = noone;
}