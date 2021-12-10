/// @description Insert description here
// You can write your code in this editor

var text = "Continue?";
var color = make_color_rgb(175, 205, 12);
draw_set_font(fa_endScreenLarge);
draw_set_valign(fa_middle);
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


//draw_set_valign(fa_top);