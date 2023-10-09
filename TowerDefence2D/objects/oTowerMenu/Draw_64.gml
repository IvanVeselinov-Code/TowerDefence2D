switch(towermenu){
	case "Crossbow":
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(RobotoMono2);
		draw_text(sprite_get_width(sTowerMenu) / 2, 563, "Crossbow");
		draw_text(sprite_get_width(sTowerMenu) / 2, 580, "Level: 1");
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_sprite(sTower2, 0, 50, 625);
		
		draw_text(145, 605, "Range: 200");
		draw_text(145, 625, "Speed: 1 sec");
		
		instance_create_layer(50, 800, "Instances", oRemoveTower);
		
		draw_set_font(RobotoMono1);
	break;
	default:	
	break;
}