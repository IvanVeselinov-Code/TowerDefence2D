

if(mouse_wheel_down() && zoom < zoom_max){
	zoom += 1;
	ZoomHeightUp = base_height / zoom;
	ZoomWidthUp = base_width / zoom;
	
	camera_set_view_size(view_camera[0], ZoomWidthUp, ZoomHeightUp)
}

if(mouse_wheel_up() && zoom > zoom_min){
	zoom -= 1;	
	ZoomHeightDown = base_height * zoom;
	ZoomWidthDown = base_width * zoom;
	
	camera_set_view_size(view_camera[0], ZoomWidthDown, ZoomHeightDown)
}