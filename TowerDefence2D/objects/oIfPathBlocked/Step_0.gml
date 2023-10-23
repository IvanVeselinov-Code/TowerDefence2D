if (!mp_grid_path(oEnemySpawner.grid, oEnemySpawner.path, oEnemySpawner.x, oEnemySpawner.y, oEnemyDestroy.x, oEnemyDestroy.y, false)){
		instance_destroy(lastObject);
	}