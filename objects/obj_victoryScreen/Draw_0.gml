/// @description Insert description here
// You can write your code in this editor

draw_self();

gpu_set_blendmode_multiply();

draw_rectangle_color(room_width/6, room_height/6, 5 * room_width/6, 5 * room_height/6, c_gray, c_gray, c_gray, c_gray, false);

gpu_set_blendmode(bm_normal)

draw_set_font(fa_endScreenMedium);
draw_text(room_width/2, room_height/4, "Victory!");