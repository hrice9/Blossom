/// @description Insert description here
// You can write your code in this editor

// draw the text for the tutorial
draw_set_font(fa_endScreenMedium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x, y, pages[page][0]);

draw_set_font(fa_endScreenSmall);
draw_text(x, y + 160, pages[page][1]);