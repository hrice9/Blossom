// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_card(card){
	if(instance_exists(obj_hand)) { // Hand is a singleton
		with(obj_hand) {
			var index = ds_list_find_index(hand, card);
			ds_list_delete(hand, index);
			num_cards --;
		}
	}
}