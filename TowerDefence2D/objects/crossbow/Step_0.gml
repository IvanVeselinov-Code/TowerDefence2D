if (mouse_check_button_pressed(mb_left)){
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		if (oScrollBar.slotsAtStart = global.tower_slots){
			scrolling = false;
			move_towards_point(64, 64, 3);
		}
	}
}