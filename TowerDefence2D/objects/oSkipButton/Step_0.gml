if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
	image_alpha = 0.5
	if (mouse_check_button_pressed(mb_left)){
		if (instance_exists(oTimer)){
			oTimer.mil = 1;
			oTimer.mins = 0;
			oTimer.sec = 0;
			if (instance_exists(oWaveText)) {instance_destroy(oWaveText);}
			instance_destroy();
		}
	}
}
else{
	image_alpha = 1;
}