switch(towermenu){
	case "Crossbow":
		draw_sprite(sTowerMenu, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + 512);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(camera_get_view_x(view_camera[0]) + sprite_get_width(sTowerMenu) / 2, y, "Crossbow");
	break;
	default:	
	break;
}