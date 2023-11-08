randomize();

switch(global.wave){
	case 1:
		spawn_amount = 1;
		global.spawn_rate = room_speed * 10;
		enemy_type = oTrojanHorse;
		path = "one";
		prize = 5000 * spawn_amount;
	break;
	case 2:
		spawn_amount = 10;
		global.spawn_rate = room_speed * 2;
		enemy_type = choose(oBossLVL1,oEnemy4Level);
		path = "one";
		prize = 100 * spawn_amount;
	break;
	case 3:
		spawn_amount = 25;
		global.spawn_rate = room_speed * 0.5;
		enemy_type = choose (oEnemy2Level, oEnemy3Level, oEnemy2Level, oEnemyOnHorse2Level);
		path = "one";
		prize = 100 * spawn_amount;
	break;
	case 4:
		spawn_amount = 30;
		global.spawn_rate = room_speed * 2;
		enemy_type = choose(oEnemy2Level, oEnemy3Level, oEnemy1Level, oEnemyOnHorse2Level, oBossLVL1,oEnemy4Level);
		path = "one";
		prize = 100 * spawn_amount;
	break;
	case 5:
		spawn_amount = 5;
		global.spawn_rate = room_speed * 2;
		enemy_type = oTrojanHorseNot;
		path = "one";
		prize = 100 * spawn_amount;
		prizeTimecoins += 25;
	break;
}

if (path = "one" or path = "two" or path = "1and2" or path = "three"){
	pathToFollow = path;
}
else if (path = "random"){
	pathToFollow = choose("one", "two", "three");
}

if (spawn_count < spawn_amount and global.progressWaves){
	spawn_count += 1;
	
	if (pathToFollow = "one"){
		instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemy_type);
	}
	else if (pathToFollow = "two"){
		instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Instances", enemy_type);
	}
	else if (pathToFollow = "three"){
		instance_create_layer(oEnemySpawner3.x, oEnemySpawner3.y, "Instances", enemy_type);
	}
	else if (pathToFollow = "1and2"){
		instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemy_type);
		instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Instances", enemy_type);
	}
	
	alarm[0] = global.spawn_rate;
}