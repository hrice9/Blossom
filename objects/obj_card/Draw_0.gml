/// @description Insert description here
// You can write your code in this editor

if(selected) {
	y = target_y -25;
	depth = -100;
	image_xscale = 1.1;
	image_yscale = 1.1;
	depth = -1000
} else {
	y = target_y;
	image_xscale = 1;
	image_yscale = 1;
}



draw_self();

draw_set_halign(fa_left);
draw_set_font(fa_cardDescription);
draw_text_ext_transformed_color(
	x - sprite_width/2 + (55 * image_xscale),
	y + (35 * image_yscale),
	data.description,
	15,
	sprite_width - (100 * image_xscale * image_xscale),
	image_xscale,
	image_yscale,
	0,
	c_black,
	c_black,
	c_black,
	c_black,
	1
);

// set to card title font
draw_set_font(fa_cardCost);
draw_text_ext_transformed_color(
	x - sprite_width/2 + (55 * image_xscale),
	y - (103 * image_yscale),
	data.title,
	15,
	sprite_width - (100 * image_xscale * image_xscale),
	image_xscale,
	image_yscale,
	0,
	c_black,
	c_black,
	c_black,
	c_black,
	1
);

// set to cost font
var c = obj_battleManager.sun >= data.manaCost ? c_black : c_red
draw_set_halign(fa_center);
draw_set_font(fa_cardTitle);
draw_text_ext_transformed_color(
	x + sprite_width/2 - (55 * image_xscale),
	y - (115 * image_yscale),
	data.manaCost,
	15,
	sprite_width - (100 * image_xscale * image_xscale),
	image_xscale,
	image_yscale,
	0,
	c,
	c,
	c,
	c,
	1
);