oEnemy.hp -= 10;


instance_destroy();


if (oEnemy.hp == 0){
	instance_deactivate_object(oEnemy);
	instance_create_layer(x, y, "Instances", oDeadEnemy);
	audio_play_sound(KillSound, 10, false);
}