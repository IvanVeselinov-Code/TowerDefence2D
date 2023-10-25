with(self){
	draw_self();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_path(path, x, y, true);
	
	draw_healthbar(x - 32, y - (sprite_height / 2), x + 32, y - (sprite_height / 2) + 7, (followhp / maxhp) * 100, c_black, c_red, c_red, 0, true, false);
	draw_healthbar(x - 32, y - (sprite_height / 2), x + 32, y - (sprite_height / 2) + 7, (hp / maxhp) * 100, c_black, c_red, c_green, 0, false, false);
	
	if (armor > 0){
		draw_healthbar(x - 32, y - (sprite_height / 2) - 7, x + 32, y - (sprite_height / 2) - 1, (followarmor / maxarmor) * 100, c_black, c_aqua, c_aqua, 0, true, false);
		draw_healthbar(x - 32, y - (sprite_height / 2) - 7, x + 32, y - (sprite_height / 2) - 1, (armor / maxarmor) * 100, c_black, c_blue, c_blue, 0, false, false);
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}