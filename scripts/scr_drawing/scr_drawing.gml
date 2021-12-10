// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_stats(x, y, hp, def, atk, left){
	
	var width = 240;
	var height = 120;
	
	// set the draw mode to multiply
	gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
	// draw the rectangle
	if(left) { // draw to the left of the character
		draw_rectangle_color(x, y, x-width, y+height, c_white, c_black, c_black, c_white, false);
	} else {
		draw_rectangle_color(x+2*width, y, x+width, y+height, c_black, c_white, c_white, c_black, false);
	}
	gpu_set_blendmode(bm_normal);
	
	draw_set_font(fa_stats);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	if(left) {
		// draw health icon
		// draw health text
		draw_sprite(spr_healthStat, 0, x - 20, y + 20);
		draw_text(x - 145, y + 20, "HP:  " + string(hitpoints));
	
		// draw attack icon
		// draw attack text
		draw_sprite(spr_attackStat, 0, x - 20, y + 60);
		draw_text(x - 145, y + 60, "ATK: " + string(attack));
	
		// draw defense icon
		// draw defense text
		draw_sprite(spr_defenseStat, 0, x - 20, y + height - 20);
		draw_text(x - 145, y + height - 20, "DEF: " + string(defense));
	} else {
		// draw health icon
		// draw health text
		draw_sprite(spr_healthStat, 0, x + width + 20, y + 20);
		draw_text(x + width + 55, y + 20, "HP:  " + string(hitpoints));
	
		// draw attack icon
		// draw attack text
		draw_sprite(spr_attackStat, 0, x + width + 20, y + 60);
		draw_text(x + width + 55, y + 60, "ATK: " + string(attack));
	
		// draw defense icon
		// draw defense text
		draw_sprite(spr_defenseStat, 0, x + width + 20, y + height - 20);
		draw_text(x + width + 55, y + height - 20, "DEF: " + string(defense));
	}
	draw_set_valign(fa_top);
	
}