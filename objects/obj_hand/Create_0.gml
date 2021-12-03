/// @description Insert description here
// You can write your code in this editor
/*
cards = [
	"Blade Bud",
	"Blade Bud",
	"Armor Bud",
	"Armor Bud",
	"Photogenesis",
]
*/
cards = obj_dataManager.cards;

discard_pile = ds_list_create();

randomize();

// have states managed by the battle manager
active = false;
destroy_card = false;
selected_card = noone;

hand = ds_list_create(); // store intsances of obj_card
deck = ds_list_create();
	
num_cards = array_length(cards);
for(var i = 0; i < num_cards; i++) {
	var card = instance_create_layer(0, 0, layer, obj_card);
	card.data = obj_cardManager.cards[?cards[i]];
	card.visible = false;
	ds_list_add(deck, card);
		
}
	
ds_list_shuffle(deck);
/*
draw_card();
draw_card();
draw_card();
*/
	

room_center = room_width/2;



card_to_remove = noone; // set this to a card that wants to be removed from the hand