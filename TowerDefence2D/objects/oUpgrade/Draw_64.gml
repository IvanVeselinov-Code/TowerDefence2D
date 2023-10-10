if (global.selected_tower != noone){
	draw_set_font(RobotoMono2);
	draw_set_color(merge_color(c_white, c_red, hover));
	draw_set_halign(fa_left);
	draw_text(x, y, text);
	draw_set_font(RobotoMono1);
}