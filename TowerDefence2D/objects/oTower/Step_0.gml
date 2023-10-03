if (!mouse_check_button_released(mb_left) and released = 1){
	x = mouse_x;
	y = mouse_y;
	move_snap(64, 64);
}
else if (released != 0){
	if ( x > 0 and x < 1280 and y > 0 and y < 704){
		released = 0;
		oScore.gold--;
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
	}
	else{
		instance_destroy(oGridDraw);
		draw_set_alpha(1);
		instance_destroy();
	}
}