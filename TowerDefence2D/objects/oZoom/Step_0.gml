var cameraWidth = camera_get_view_width(view_camera[0])
var cameraHeight = camera_get_view_height(view_camera[0])

var _mouse_x = mouse_x
var _mouse_y = mouse_y

var wheel = mouse_wheel_down() - mouse_wheel_up();

if(wheel != 0) {
	wheel *= 0.1;

	var addWidth = cameraWidth * wheel;
	var addHeight = cameraHeight * wheel;
	
	cameraWidth += addWidth;
	cameraHeight += addHeight;
	
	cameraWidth = clamp(cameraWidth, CameraWidth / 2, room_width)
	cameraHeight = clamp(cameraHeight, CameraHeight / 2, room_height)
	
	var addButtonWidth = oTowerButton.Button_width * wheel;
	var addButtonHeight = oTowerButton.Button_height * wheel;
	
	oTowerButton.Button_width += addButtonWidth;
	oTowerButton.Button_height += addButtonHeight;
	
	oTowerButton.Button_width = clamp(oTowerButton.Button_width, ButtonWidth, 128)
	oTowerButton.Button_height = clamp(oTowerButton.Button_height, ButtonHeight, 128)
	
}	
camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

