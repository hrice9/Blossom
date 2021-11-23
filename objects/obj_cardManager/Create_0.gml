cards = ds_map_create();

// Pip
ds_map_add(cards, "Blade Bud", new CardData(1, "Deal 1 Damage.", spr_tempCard,
function(){ // OnClick
	// set the mode to enemy selection mode
	obj_battleManager.selection_mode = mode.ally_select;
	// once the enemy is selected, deal damage and play an animation
	// destroy the card object
},
function() { // OnConditionComplete
	obj_battleManager.selected_ally.attack += 1;
}));

ds_map_add(cards, "Armor Bud", new CardData(1, "Gain 1 Defence.", spr_tempCard,
function() { // OnClick
	// enter ally select mode
	obj_battleManager.selection_mode = mode.ally_select;
	// once an ally is selected, increase their armor by 1
	// destroy card object
},
function() { // OnCondition Complete
	obj_battleManager.selected_ally.defense += 1;
	obj_battleManager.selected_ally = noone;
}));

ds_map_add(cards, "Photogenesis", new CardData(0, "When your turn begins, gain 1 Sun.", spr_tempCard,
function() { // OnClick
	// set a variable to give you one sun at the start of the next turn
	// destroy the card object
	// This card should set an event flag and then destroy itself, it does not need an on complete event
	
	obj_battleManager.selection_mode = mode.none;
}));





// Dosera
ds_map_add(cards, "Bait", new CardData(1, "Target enemy will attack Drosera.", spr_tempCard, function() {
	// set mode to enemy selection mode
	// when an enemy is selected, set their target to dosera
	// destroy card object
}));

ds_map_add(cards, "Jaws", new CardData(1, "If Drosera is attacked, enemy takes 2 damage.", spr_tempCard, function() {
	// set flag on dorsera
	// destroy card object
}));

ds_map_add(cards, "Sticky Sap", new CardData(1, "If Drosera is attacked, enemy is ensnared - can no longer play defense cards.", spr_tempCard, function() {
	// enter enemy select mode
	// once the enemy is selected, apply the ensnared status
	// destroy card object
}));

// Helianthus
ds_map_add(cards, "Solar Beam", new CardData(3, "Deal 5 damage.", spr_tempCard, function() {
	// enter enemy select mode
	// once an enemy is selected, deal 5 damage
	// destroy card object
}));

ds_map_add(cards, "Armor Bud Helianthus", new CardData(1, "Gain 1 armor.\nCan only be used on Helianthus.", spr_tempCard, function() {
	// increase Helianthus armor by 1
	// destroy card object
}));

ds_map_add(cards, "Charge", new CardData(0, "Cannot be played the same turn as an attack. When your turn begins, choose one card and reduce its cost to zero.", spr_tempCard, function() {
	// test if an attack has been played
	// set all the attack cards to unplayable for the turn
	// 
}));

// Hen
ds_map_add(cards, "Gun Kata", new CardData(1, "Gun Kata does one damage for each item equipped to Hen.", spr_tempCard, function() {
	// enter enemy select mode
	// iterate over all the items on Hen and deal that much damage
	// destroy card object
}));

ds_map_add(cards, "Armor Bud Hen", new CardData(1, "Gain 1 armor.\nCan only be used on Hen.", spr_tempCard, function() {
	// increase Hen armor by 1
	// destroy card object
}));

ds_map_add(cards, "Emergency Grift", new CardData(3, "At the end of the battle, convert this bud’s remaining lifespan into Flowers.", spr_tempCard, function() {
	// 
}));



ds_map_add(cards, "Pot of Green", new CardData(1, "When your turn begins, draw two cards.", spr_tempCard, function() {
	// set a flag or something... idk
	// destroy card object
}));

ds_map_add(cards, "Thorns", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Torch", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Soil", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Hybridize", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Canopy", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Sow", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Branch", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Jewelweed", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Mimosa", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Blade Root", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Armor Root", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Break Through", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Janka 9000", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "NecroBloom", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Ignite", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Fertilizer", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Reap", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Nuytsia", new CardData(1, "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Greenhouse", new CardData(1, "", spr_tempCard, function() {
	
}));
	
	
	
with(obj_hand) {
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
	draw_card();
	draw_card();
	draw_card();
	

	room_center = room_width/2;



	card_to_remove = noone; // set this to a card that wants to be removed from the hand
}