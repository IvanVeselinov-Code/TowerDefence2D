if (image_index = 0){
	global.fullscreen = false;
	SavingOptions();
	window_set_fullscreen(false);
}
else if (image_index = 1){
	global.fullscreen = true;
	SavingOptions();
	window_set_fullscreen(true);
}