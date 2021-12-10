/// @description Insert description here
// You can write your code in this editor

// at the top of the screen

// play cards
increment = 1920/5;

if(current_phase == phase.card) {
	with_shader(shdr_2dOutline, function() {
		draw_sprite_ext(spr_phaseIcon, 0, increment, 125, 1.25, 1.25, 0, c_white, 1);
	});
	draw_sprite_ext(spr_playCardsIndicator, 0, increment, 125, 1.25, 1.25, 0, c_white, 1);
} else {
	draw_sprite(spr_phaseIcon, 0, increment, 125);
	draw_sprite_ext(spr_playCardsIndicator, 0, increment, 125, 1, 1, 0, c_gray, 1);
}
// attack
if(current_phase == phase.attack) {
	with_shader(shdr_2dOutline, function() {
		draw_sprite_ext(spr_phaseIcon, 0, increment * 2, 125, 1.25, 1.25, 0, c_white, 1);
	});
	draw_sprite_ext(spr_playerAttackIndicator, 0, increment * 2, 125, 1.25, 1.25, 0, c_white, 1);
} else {
	draw_sprite(spr_phaseIcon, 0, increment * 2, 125);
	draw_sprite_ext(spr_playerAttackIndicator, 0, increment * 2, 125, 1, 1, 0, c_gray, 1);
}
// discard
if(current_phase == phase.discard) {
	with_shader(shdr_2dOutline, function() {
		draw_sprite_ext(spr_phaseIcon, 0, increment * 3, 125, 1.25, 1.25, 0, c_white, 1);
	});
	draw_sprite_ext(spr_discardIndicator, 0, increment * 3, 125, 1.25, 1.25, 0, c_white, 1);
} else {
	draw_sprite(spr_phaseIcon, 0, increment * 3, 125);
	draw_sprite_ext(spr_discardIndicator, 0, increment * 3, 125, 1, 1, 0, c_gray, 1);
}
// enemy phase
if(current_phase == phase.enemy) {
	with_shader(shdr_2dOutline, function() {
		draw_sprite_ext(spr_phaseIcon, 0, increment * 4, 125, 1.25, 1.25, 0, c_white, 1);
	});
} else {
	draw_sprite(spr_phaseIcon, 0, increment * 4, 125);
}
// restart