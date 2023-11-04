event_inherited();

instance_activate_all();
oPause.pause = false;
oPause.allObjects = 0;
	
if (instance_exists(oQuit) and instance_exists(oBackToMainMenu)){
	instance_destroy(oQuit);
	instance_destroy(oBackToMainMenu);
}

instance_destroy();