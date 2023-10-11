//x = camera_get_view_x(view_camera[0]) + 64;
//y = camera_get_view_y(view_camera[0]) + 64;


if (mouse_check_button_pressed(mb_left)){
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		if (!instance_exists(oTowerPlacement)){
			instance_create_layer(mouse_x, mouse_y, "Instances", oTowerPlacement);
			oTowerPlacement.sprite_index = sCatapult2;
			oTowerPlacement.tower = oCatapult;
			oTowerPlacement.placementPrice = 100;
			oTowerPlacement.image_speed = 0
			instance_create_layer(0, 0, "Instances", oGridDraw);
		}
	}
}