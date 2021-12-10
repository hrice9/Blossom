/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

type = token_type.enemy;

target = noone;
action = enemy_action.none;
//action_strength = 0;

attack_buff_power = 1;
defense_buff_power = 1;

enum enemy_action {
	atk_buff,
	def_buff,
	attack,
	none
}

base_attack += obj_dataManager.cycle;
base_defense += obj_dataManager.cycle;