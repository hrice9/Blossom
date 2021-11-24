///@description End turn event

defense = base_defense;
attack = base_attack;
for(var i = 0; i < array_length(buds); i++) {
	var bud = buds[i];
	bud.Tick();
	
	if(bud.life <= 0) {
		// array_delete(buds, i, 1);
		// remove the effect from the field
	} else {
		// apply the effect
		if(bud.effectType == effect_type.armor) {
			defense += bud.effectStrength;
		} else if (bud.effectType == effect_type.attack) {
			attack += bud.effectStrength;
		}
	}
}