

if (global.pausePhase and global.moveable and pickup >= 100){
	if (!mouse_check_button_released(mb_left) and released = 1){
		x = mouse_x;
		y = mouse_y;
		move_snap(32, 32);
	}
}

