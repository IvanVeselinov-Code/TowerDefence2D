if (!mp_grid_path(oEnemySpawnerParent.grid, oEnemySpawnerParent.path, oEnemySpawnerParent.x, oEnemySpawnerParent.y, oEnemyDestroy.x, oEnemyDestroy.y, false)){
	mp_grid_clear_all(oEnemySpawnerParent.grid);
<<<<<<< Updated upstream
=======
	if (instance_exists(oEnemies_Parent)) {mp_grid_clear_all(oEnemies_Parent.grid);}
>>>>>>> Stashed changes
	instance_destroy(lastObject);
	lastObject = noone;
}