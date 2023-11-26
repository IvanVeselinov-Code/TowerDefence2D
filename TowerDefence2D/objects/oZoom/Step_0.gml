/*var cameraWidth = camera_get_view_width(view_camera[0]);
var cameraHeight = camera_get_view_height(view_camera[0]);

var _mouse_x = mouse_x;
var _mouse_y = mouse_y;

var wheel = mouse_wheel_down() - mouse_wheel_up();

if(wheel != 0) {
	wheel *= 0.1;

	var addWidth = cameraWidth * wheel;
	var addHeight = cameraHeight * wheel;
	
	cameraWidth += addWidth;
	cameraHeight += addHeight;
	
	cameraWidth = clamp(cameraWidth, CameraWidth / 2, room_width)
	cameraHeight = clamp(cameraHeight, CameraHeight / 2, room_height)
	
	/*var addButtonWidth = oTowerButton.Button_width * wheel;
	var addButtonHeight = oTowerButton.Button_height * wheel;
	
	oTowerButton.Button_width += addButtonWidth;
	oTowerButton.Button_height += addButtonHeight;
	
	oTowerButton.Button_width = clamp(oTowerButton.Button_width, ButtonWidth, 128)
	oTowerButton.Button_height = clamp(oTowerButton.Button_height, ButtonHeight, 128)*/
	/*camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);
}*/
var cam = view_camera[0];
zoom += (target_zoom - zoom) * 0.1;

camera_set_view_pos(cam,
	clamp( camera_get_view_x(cam), 0, room_width - camera_get_view_width(cam) ),
	clamp( camera_get_view_y(cam), 0, room_height - camera_get_view_height(cam) )
);


camera_set_view_size(cam, CameraWidth * zoom, CameraHeight * zoom);

var mouse_input = mouse_wheel_down() - mouse_wheel_up();
target_zoom += mouse_input * 0.1;
target_zoom = clamp(target_zoom, 0.3, 1.7);