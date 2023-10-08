image_angle = direction;

mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);
mp_grid_add_instances(grid, oTower, false);
mp_grid_add_instances(grid, oRock, false);
mp_grid_add_instances(grid, oBiggerRock, false);
path_start(path, sp, path_action_stop, true)



if (place_meeting(x, y, oEnemyDestroy)){
	instance_destroy();
}

if (hp <= 0){
	instance_create_layer(x, y, "Instances", oDeadEnemy);
	audio_play_sound(KillSound, 10, false);
	instance_destroy();
}