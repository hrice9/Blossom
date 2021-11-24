// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Bud(_effectType = effect_type.attack, _effectStrength = 1, _lifeSpan = 10) constructor{
	// effect type
	effectType = _effectType;
	// effect strength
	effectStrength = _effectStrength;
	// life remaining
	life = _lifeSpan;
	
	
	static Tick = function() {
		life --;
	}
}


enum effect_type {
	armor,
	attack
}


function tick_buds() {
	var numTokens = instance_number(obj_token);
	show_debug_message(numTokens);
	for(var i = 0; i < numTokens; i++) {
		var token = instance_find(obj_token, i);
		
		with (token) {
			event_user(0);
		}
	}
}