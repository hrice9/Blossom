/// @description Insert description here
// You can write your code in this editor

draw_set_font(fa_cardCost);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(position_meeting(mouse_x, mouse_y, self)) {
	if(mouse_check_button(mb_left)) {
		// draw it slightly smaller
		draw_sprite_ext(sprite_index, 0, x, y, .8, .8, 0, c_gray, 1);
		draw_text_ext_transformed_color(x, y,
			"End Turn",
			15 * .8,
			64 * .8,
			.8,
			.8,
			0,
			c_ltgray,
			c_ltgray,
			c_ltgray,
			c_ltgray,
			1
		);
	} else {
		// draw it slightly larger
		draw_sprite_ext(sprite_index, 0, x, y, 1.3, 1.3, 0, c_white, 1);
		draw_text_ext_transformed_color(x, y,
			"End Turn",
			15 * 1.3,
			64,
			1.3,
			1.3,
			0,
			c_white,
			c_white,
			c_white,
			c_white,
			1
		);
	}
} else {
	draw_self();
	
	draw_text_ext_color(x, y, "End Turn", 15, 64, c_white, c_white, c_white, c_white, 1);
}



draw_set_valign(fa_top);