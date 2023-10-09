if (point_in_rectangle(mouse_x, mouse_y, x, y, x + text_width, y + text_height)){
	color1 = color2;
	if (mouse_check_button_pressed(mb_left)){
		with(oTower){
			if (active = 1){
				instance_destroy(oTower);
			}
			else if (active = 0){}
		}
	}
}
else{
	color1 = c_white;
}