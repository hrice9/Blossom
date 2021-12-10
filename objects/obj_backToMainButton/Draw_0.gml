/// @description Insert description here
// You can write your code in this editor

var text = "Main Menu";
var color = make_color_rgb(175, 205, 12);
draw_set_font(fa_endScreenMedium);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
if(position_meeting(mouse_x, mouse_y, self)) {
	if(mouse_check_button(mb_left)) {
		// draw the clicked version
		draw_text_color(x, y, text, c_gray, c_gray, c_gray, c_gray, 1);
	} else {
		// draw the highlighted version
		draw_text_color(x, y, text, c_white, c_white, c_white, c_white, 1);
	}
} else {
	//draw normal
	draw_text_color(x, y, text, color, color, color, color, 1);
}
draw_set_halign(fa_right);
draw_set_valign(fa_top);
//draw_set_valign(fa_top);