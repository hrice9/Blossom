// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_card(){
	if(!instance_exists(obj_hand)) {
		return;
	}
	
	with(obj_hand) {
		if(ds_list_size(deck) <= 0) {
			shuffle_discard();
			if(ds_list_size(deck) == 0) {
				return;
			}
		}
		
		// take the top card off of the deck
		var card = ds_list_find_value(deck, 0);
		ds_list_delete(deck, 0);
		// add the card to the hand
		ds_list_add(hand, card);
		card.visible = true;
	}
}

function discard(card) {
	if(!instance_exists(obj_hand)) {
		return;
	}
	
	with(obj_hand) {
		// remove the card from the hand
		var card_index = ds_list_find_index(hand, card);
		card.visible = false;
		
		// add the card to the discard pile
		ds_list_delete(hand, card_index);
		ds_list_add(discard_pile, card);
	}
}

function shuffle_discard() {
	randomize();
	if(!instance_exists(obj_hand)) {
		return;
	}
	
	with(obj_hand) {
		var discard_pile_size = ds_list_size(discard_pile)
		for(var i = 0; i < discard_pile_size; i++) {
			ds_list_add(deck, ds_list_find_value(discard_pile, 0));
			ds_list_delete(discard_pile, 0);
		}
		
		ds_list_shuffle(deck);
	}
}