if (point_in_rectangle(mouse_x, mouse_y, x, y, x + text_width, y + text_height)){
	color1 = color2;
	if (mouse_check_button_pressed(mb_left)){
		if (global.selected_tower != noone){
			instance_destroy(global.selected_tower);
			global.selected_tower = noone;
		}
	}
}
else{
	color1 = c_white;
}