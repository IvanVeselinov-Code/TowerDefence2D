

image_angle = direction;

mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);
path_start(path, 6, path_action_stop, true)



if (place_meeting(x, y, oEnemyDestroy)){
	instance_destroy();
}