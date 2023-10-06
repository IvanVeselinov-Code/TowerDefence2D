grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);

with(oEnemy){
	path = path_add();
	if mp_grid_path(grid, path, x, y, oEnemyDestroy.x, oEnemyDestroy.y, false){
		
	}
}