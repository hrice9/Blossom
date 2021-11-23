/// @description Insert description here
// You can write your code in this editor

active = false;
if(obj_battleManager.selection_mode == mode.card_select) {
	// I can do things
	active = true;
}


num_cards = ds_list_size(hand);

var card_width = sprite_get_width(spr_tempCard) * .5
var hand_width = (num_cards-1) * card_width;

if(active) {
	for(var i = 0; i < num_cards; i++) {
		var card = ds_list_find_value(hand, i)
	
		// half of the cards should be on the left side of the room, half should be on the right side of the room
		// cards should be depth sorted from right in the back to left in the front
		// selected card should be in front of all cards and larger
	
	
		// this object is in charge of the x position of card objects
		// cards are in charge of setting their own y position
	
		// if the next card is 
	
		// do card selection code here
	
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
		if(!card.selected) card.depth = -i;
		card.target_y = 4*room_height/5;
	
	}
}

if(card_to_remove != noone && destroy_card) {
	var card_index = ds_list_find_index(hand, card_to_remove.id);
	show_debug_message(string(card_index));
	discard(card_to_remove.id);
	card_to_remove = noone;
	destroy_card = false;
	num_cards --;
}