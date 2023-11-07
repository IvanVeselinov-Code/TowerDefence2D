draw_self();

if (position_meeting(mouse_x_check, mouse_y_check, id)){
	draw_set_color(c_white);
	draw_set_font(RobotoMono1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(x, y - 45, string(upgradePrice));
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}