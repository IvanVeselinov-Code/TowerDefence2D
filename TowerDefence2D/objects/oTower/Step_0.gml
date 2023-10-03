if (!mouse_check_button_released(mb_left) and released = 1){
	x = mouse_x;
	y = mouse_y;
	move_snap(64, 64);
}
else if (released != 0){
	released = 0;
	oScore.gold--;
	instance_destroy(oGridDraw);
	draw_set_alpha(1);
}