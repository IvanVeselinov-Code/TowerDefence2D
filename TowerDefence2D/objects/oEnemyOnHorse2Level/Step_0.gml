event_inherited();
if(armor = 0){
	instance_create_layer(x, y, "Instances", oEnemy2Level);
	audio_play_sound(HorseDying, 10, false);
	instance_destroy()
}
