if (global.selected_tower != noone){
		draw_sprite(sTowerMenu, 0, 0, 545);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(RobotoMono2);
		draw_text(sprite_get_width(sTowerMenu) / 2, 563, string(name));
		draw_text(sprite_get_width(sTowerMenu) / 2, 580, "Level: " + string(level));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_sprite(sprite, 0, 50, 625);
		
		draw_text(130, 605, "Range: " + string(range));
		draw_text(130, 625, "Speed: 1 sec");
		
		draw_set_font(RobotoMono1);
}