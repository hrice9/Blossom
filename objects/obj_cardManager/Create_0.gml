cards = ds_map_create();

// Pip
ds_map_add(cards, "Blade Bud", new CardData(1, "Blade Bud", "Gain 1 Attack.", spr_bladeRoot,
function(){ // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.attack, 1, 10));
	obj_battleManager.selected_ally.attack += 1;
}));

ds_map_add(cards, "Armor Bud", new CardData(1, "Armor Bud", "Gain 1 Defence.", spr_armorRoot,
function() { // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnCondition Complete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.armor, 1, 10));
	obj_battleManager.selected_ally.defense += 1;
	show_debug_message("Applying armor");
}));

ds_map_add(cards, "Photogenesis", new CardData(0, "Photogenesis", "When your turn begins, gain 1 Sun.", spr_photogenesis,
function() { // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnComplete
	show_debug_message("Adding sun");
	obj_battleManager.plusSun += 2;
}));





// Dosera
ds_map_add(cards, "Bait", new CardData(1, "Bait", "Target enemy will attack Drosera.", spr_bait, function() {
	// set mode to enemy selection mode
	// when an enemy is selected, set their target to dosera
	// destroy card object
}));

ds_map_add(cards, "Jaws", new CardData(1, "Jaws", "If Drosera is attacked, enemy takes 2 damage.", spr_jaws, function() {
	// set flag on dorsera
	// destroy card object
}));

ds_map_add(cards, "Sticky Sap", new CardData(1, "Sticky Sap", "If Drosera is attacked, enemy is ensnared - can no longer play defense cards.", spr_tempCard, function() {
	// enter enemy select mode
	// once the enemy is selected, apply the ensnared status
	// destroy card object
}));

// Helianthus
ds_map_add(cards, "Solar Beam", new CardData(3, "Solar Beam", "Deal 5 damage.", spr_tempCard, function() {
	// enter enemy select mode
	// once an enemy is selected, deal 5 damage
	// destroy card object
}));

ds_map_add(cards, "Armor Bud Helianthus", new CardData(1, "Armor Root", "Gain 1 armor.\nCan only be used on Helianthus.", spr_tempCard, function() {
	// increase Helianthus armor by 1
	// destroy card object
}));

ds_map_add(cards, "Charge", new CardData(0, "Charge", "Cannot be played the same turn as an attack. When your turn begins, choose one card and reduce its cost to zero.", spr_tempCard, function() {
	// test if an attack has been played
	// set all the attack cards to unplayable for the turn
	// 
}));

// Hen
ds_map_add(cards, "Gun Kata", new CardData(1, "Gun Kata", "Gun Kata does one damage for each item equipped to Hen.", spr_tempCard, function() {
	// enter enemy select mode
	// iterate over all the items on Hen and deal that much damage
	// destroy card object
}));

ds_map_add(cards, "Armor Bud Hen", new CardData(1, "Armor Root", "Gain 1 armor.\nCan only be used on Hen.", spr_tempCard, function() {
	// increase Hen armor by 1
	// destroy card object
}));

ds_map_add(cards, "Emergency Graft", new CardData(3, "Emergency Graft", "At the end of the battle, convert this bud’s remaining lifespan into Flowers.", spr_tempCard, function() {
	// 
}));




ds_map_add(cards, "Pot of Green", new CardData(1, "Pot of Green", "When your turn begins, draw two extra cards.", spr_potOfGreen,
function(){ // OnClick
	// set the mode to enemy selection mode
	obj_battleManager.selection_mode = mode.ally_select;
	// once the enemy is selected, deal damage and play an animation
	// destroy the card object
},
function() { // OnConditionComplete
	//obj_battleManager.selected_ally.attack += 1;
	obj_battleManager.plusCards += 2;
}));

ds_map_add(cards, "Thorns", new CardData(1,"Thorns", "Gain 1 attack and 1 defense.", spr_thorns,
function(){ // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.attack, 1, 5));
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.armor, 1, 5));
	obj_battleManager.selected_ally.attack += 1;
	obj_battleManager.selected_ally.defense += 1;
}));

ds_map_add(cards, "Torch", new CardData(1, "Torch", "Gain 2 attack.", spr_torch, 
function(){ // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.attack, 2, 5));
	obj_battleManager.selected_ally.attack += 2;
}));

ds_map_add(cards, "Soil", new CardData(1, "Soil", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Hybridize", new CardData(1, "Hybridize", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Canopy", new CardData(1, "Canopy", "Gain 2 defense.", spr_canopy,
function() { // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.armor, 2, 10));
	obj_battleManager.selected_ally.defense += 2;
}));

ds_map_add(cards, "Sow", new CardData(1, "Sow", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Branch", new CardData(1, "Branch", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Jewelweed", new CardData(1, "Jewelweed", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Mimosa", new CardData(1, "Mimosa", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Blade Root", new CardData(1, "Blade Root", "", spr_bladeRoot, function() {
	
}));

ds_map_add(cards, "Armor Root", new CardData(1, "Armor Root", "", spr_armorRoot, function() {
	
}));

ds_map_add(cards, "Break Through", new CardData(1, "Break Through", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Janka 9000", new CardData(2, "Janka 9000", "Gain 3 defense.", spr_janka9000,
function() { // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.armor, 3, 10));
	obj_battleManager.selected_ally.defense += 3;
}));

ds_map_add(cards, "NecroBloom", new CardData(1, "NecroBloom", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Ignite", new CardData(1, "Ignite", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Fertilizer", new CardData(1, "Fertilizer", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Reap", new CardData(1, "Reap", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Nuytsia", new CardData(1, "Nuytsia", "", spr_tempCard, function() {
	
}));

ds_map_add(cards, "Greenhouse", new CardData(3, "Greenhouse", "Gain 6 defense.", spr_greenhouse, 
function(){ // OnClick
	obj_battleManager.selection_mode = mode.ally_select;
},
function() { // OnConditionComplete
	array_push(obj_battleManager.selected_ally.buds, new Bud(effect_type.armor, 6, 10));
	obj_battleManager.selected_ally.defense += 6;
}));
	
	
	
// This is test code that will be removed when the game is acutally functional
/*
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
*/