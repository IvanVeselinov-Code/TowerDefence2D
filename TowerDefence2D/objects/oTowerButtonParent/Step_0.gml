if (mouse_check_button_pressed(mb_left)){
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		if (!instance_exists(oTowerPlacement)){
			instance_create_layer(mouse_x, mouse_y, "Instances", oTowerPlacement);
			oTowerPlacement.sprite_index = sprite;
			oTowerPlacement.tower = tower;
			oTowerPlacement.placementPrice = placementPrice;
			oTowerPlacement.image_speed = 0
			instance_create_layer(0, 0, "Instances", oGridDraw);
		}
	}
}