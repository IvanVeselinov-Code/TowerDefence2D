if (!mp_grid_path(oEnemySpawner.grid, oEnemySpawner.path, oEnemySpawner.x, oEnemySpawner.y, oEnemyDestroy.x, oEnemyDestroy.y, false) and

lastObject != noone

){
	instance_destroy(lastObject);
	
	with(oEnemies_Parent){
		reset_path = true;
	}
	
	lastObject = noone;
}