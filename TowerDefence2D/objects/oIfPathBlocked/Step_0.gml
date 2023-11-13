if (!mp_grid_path(oEnemySpawnerParent.grid, oEnemySpawnerParent.path, oEnemySpawnerParent.x, oEnemySpawnerParent.y, oEnemyDestroy.x, oEnemyDestroy.y, false)){
	mp_grid_clear_all(oEnemySpawnerParent.grid);

	if (instance_exists(oEnemies_Parent)) {mp_grid_clear_all(oEnemies_Parent.grid);}
	oLevelStart.placed_towers -= 1;
	oGold.gold = Gold;
	instance_destroy(lastObject);
	lastObject = noone;
}