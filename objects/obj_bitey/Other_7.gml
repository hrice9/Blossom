/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(sprite_index == injured_animation) {
	image_index = 0;
	sprite_index = ide_animation;
}

if(sprite_index == attack_animation) {
	show_debug_message("Are we doing okay???");
	image_index = 0
	sprite_index = ide_animation;
	next_enemy_action();
}