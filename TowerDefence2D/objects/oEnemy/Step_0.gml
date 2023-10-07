

image_angle = direction;

mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);
mp_grid_add_instances(grid, oTower, false);
mp_grid_add_instances(grid, oRock, false);
mp_grid_add_instances(grid, oBiggerRock, false);
path_start(path, 6, path_action_stop, true)



if (place_meeting(x, y, oEnemyDestroy)){
	instance_destroy();
}