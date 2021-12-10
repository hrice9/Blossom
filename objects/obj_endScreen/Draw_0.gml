/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fa_endScreenLarge);
draw_text(room_width/2, 155, "Game Over");


draw_set_font(fa_endScreenSmall);
draw_text(room_width/2, 245, "You made it to level " + string(obj_dataManager.level));