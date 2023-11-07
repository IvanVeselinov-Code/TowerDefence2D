event_inherited();

instance_activate_all();
oPause.pause = false;
oPause.allObjects = 0;
	
if (instance_exists(oQuit) and instance_exists(oResume)){
	instance_destroy(oQuit);
	instance_destroy(oResume);
}

audio_stop_all();
room_goto(rmMainMenu);

instance_destroy();