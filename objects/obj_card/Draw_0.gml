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

draw_set_font(fa_cardDescription);
draw_text_ext_transformed_color(
	x - sprite_width/2 + (50 * image_xscale),
	y + 10,
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
