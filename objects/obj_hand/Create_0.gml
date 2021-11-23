/// @description Insert description here
// You can write your code in this editor

cards = [
	"Blade Bud",
	"Blade Bud",
	"Armor Bud",
	"Armor Bud",
	"Armor Bud",
	"Armor Bud",
	"Photogenesis",
]

discard_pile = ds_list_create();

randomize();

// have states managed by the battle manager
active = false;
destroy_card = false;
selected_card = noone;