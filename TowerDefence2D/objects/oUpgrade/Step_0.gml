var _hover = GetHover();
var click = _hover and mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if (click){
	if (global.selected_tower != noone){
		global.selected_tower.level = 2;
		global.selected_tower.range = 300;
		global.selected_tower.sprite_index = sTowerLevel2;
	}
}

x = camera_get_view_x(view_camera[0]) + 64;
y = camera_get_view_y(view_camera[0]) + 64;