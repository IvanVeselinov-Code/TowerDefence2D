if (point_in_rectangle(mouse_x, mouse_y, x, y, x + text_width, y + text_height)){
	color1 = color2;
	if (mouse_check_button_pressed(mb_left)){
		if (global.selected_tower != noone){
			global.selected_tower.level = 2;
			global.selected_tower.range = 300;
			global.selected_tower.sprite_index = sTowerLevel2;
		}
	}
}
else{
	color1 = c_white;
}