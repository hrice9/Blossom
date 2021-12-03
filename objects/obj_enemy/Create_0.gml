/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

type = token_type.enemy;

target = noone;
action = enemy_action.atk_buff;
action_strength = 0;

enum enemy_action {
	atk_buff,
	def_buff,
	attack
}