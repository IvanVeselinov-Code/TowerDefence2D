x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + 512;

switch(towermenu){
	case "Crossbow":
		sprite_index = sTowerMenu;
	break;
	default:
		sprite_index = noone;
	break;
}