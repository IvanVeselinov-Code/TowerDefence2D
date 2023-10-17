randomize();
switch(global.wave){
	case 1:
		spawn_amount = 5;
		spawn_count = 0;
		spawn_rate = room_speed * 4;
		enemy_type = oEnemy;
	break;
	case 2:
		spawn_amount = 10;
		spawn_count = 0;
		spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy, oEnemy2);
	break;
	case 3:
		spawn_amount = 5;
		spawn_count = 0;
		spawn_rate = room_speed * 1;
		enemy_type = oEnemy;
	break;
	default:
		spawn_amount = 5;
		spawn_count = 0;
		spawn_rate = room_speed * 4;
		enemy_type = oEnemy;
	break;
}


if (spawn_count < spawn_amount and global.progressWaves){
	instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemy_type);
	alarm[0] = spawn_rate;
}