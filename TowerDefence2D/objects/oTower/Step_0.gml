event_inherited();

switch(level){
	case 1:
		sprite_index = sTower2;
		maxrange = 200;
		upgradePrice = 10;
		fireRate = 60;
	break;
	case 2:
		sprite_index = sTowerLevel2;
		maxrange = 300;
		upgradePrice = 20;
		fireRate = 30;
	break;
}


if (!mp_grid_path(oEnemySpawner.grid, oEnemySpawner.path, oEnemySpawner.x, oEnemySpawner.y, oEnemyDestroy.x, oEnemyDestroy.y, false)){
	blockPath = true;
}

if (blockPath){
	blockPath = false;
	instance_destroy(self);
}