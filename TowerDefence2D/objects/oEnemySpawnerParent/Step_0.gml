mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false);
if (!global.moveable){
	mp_grid_add_instances(grid, oTowerParent, false);
}
mp_grid_add_instances(grid, oRock, false);
mp_grid_add_instances(grid, oBiggerRock, false);
mp_grid_add_instances(grid, oRock1, false);