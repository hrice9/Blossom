/// @description Insert description here
// You can write your code in this editor

rot += .2;

add_scale = sin(rot * .02)*.1;

draw_sprite_ext(spr_sun, 0, room_width/2, room_height - 50, .75 + add_scale, .75 + add_scale, rot, c_white, 1);
draw_set_font(fa_sunCount);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
color = c_black;
if(sun >= max_sun) {
	color = c_green;
} else if(sun == 0) {
	color = c_red;
}

draw_text_color(room_width/2, room_height - 50, sun, color, color, color, color, 1);
draw_text_color(room_width/2, 35, "Turn: " + string(turnNum), c_black, c_black, c_black, c_black, 1);
draw_set_valign(fa_top);