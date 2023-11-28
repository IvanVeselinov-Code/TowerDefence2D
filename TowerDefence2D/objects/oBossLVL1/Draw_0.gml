with(self){
	draw_self();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_path(path, x, y, true);
	draw_healthbar(x - 32, y - (sprite_height / 2), x + 32, y - (sprite_height / 2) + 7, (followhp / maxhp) * 100, c_black, c_red, c_red, 0, true, false);
	draw_healthbar(x - 32, y - (sprite_height / 2), x + 32, y - (sprite_height / 2) + 7, (hp / maxhp) * 100, c_black, c_red, c_green, 0, false, false);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if (flash > 0){
		shader_set(shFlash);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flash);
		shader_reset();
	}

}