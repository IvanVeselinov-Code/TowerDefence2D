if (!mp_grid_path(oEnemySpawnerParent.grid, oEnemySpawnerParent.path, oEnemySpawnerParent.x, oEnemySpawnerParent.y, oEnemyDestroy.x, oEnemyDestroy.y, false)){
	mp_grid_clear_all(oEnemySpawnerParent.grid);
	instance_destroy(lastObject);
	lastObject = noone;
}