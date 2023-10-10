if (global.selected_tower != noone){
	switch(global.selected_tower.name){
	case "Crossbow":
		draw_sprite(sTowerMenu, 0, 0, 545);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(RobotoMono2);
		draw_text(sprite_get_width(sTowerMenu) / 2, 563, string(global.selected_tower.name));
		draw_text(sprite_get_width(sTowerMenu) / 2, 580, "Level: " + string(global.selected_tower.level));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_sprite(global.selected_tower.sprite_index, 0, 50, 625);
		
		draw_text(130, 605, "Range: " + string(global.selected_tower.range));
		draw_text(130, 625, "Speed: 1 sec");
		
		
		instance_create_layer(50, 770, "Instances", oRemoveTower);
		
		draw_set_font(RobotoMono1);
	break;
	default:	
	break;
}
}