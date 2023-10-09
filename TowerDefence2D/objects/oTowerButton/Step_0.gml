//x = camera_get_view_x(view_camera[0]) + 64;
//y = camera_get_view_y(view_camera[0]) + 64;
if (point_in_rectangle(0, 0, 0, 0, 0, 0)){
	
	if(mouse_check_button_pressed(mb_left)){
		instance_create_layer(mouse_x, mouse_y, "Instances", oTowerPlacement);
		oTowerPlacement.sprite_index = sTower2;
		oTowerPlacement.image_speed = 0
		instance_create_layer(0, 0, "Instances", oGridDraw);
	
	}
	
}