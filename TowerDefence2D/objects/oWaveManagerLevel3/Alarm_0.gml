randomize();

switch(global.wave){
	case 1:
		spawn_amount = 5;
		global.spawn_rate = room_speed * 0.5;
		enemy_type = oEnemy2Level;
		path = "one";
		prize = 100 * spawn_amount;
		global.wave = global.wave * 0;
	break;
	case 2:
		spawn_amount = 15;
		global.spawn_rate = room_speed * 2;
		enemy_type = choose(oEnemy3Level, oEnemy2Level);
		path = "1and2";
		prize = 50 * spawn_amount;
	break;
	case 3:
		spawn_amount = 10;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose (oEnemy3Level, oEnemy4Level);
		path = "1and2";
		prize = 100 * spawn_amount;
	break;
	case 4:
		spawn_amount = 10;
		global.spawn_rate = room_speed * 0.5;
		enemy_type = choose(oEnemy3Level, oEnemy4Level);
		path = "two";
		prize = 100 * spawn_amount;
	break;
	case 5:
		spawn_amount = 15;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemyOnHorse2Level, oEnemy1Level);
		path = "1and2";
		prize = 50 * spawn_amount;
	break;
	case 6:
		spawn_amount = 10;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy3Level, oEnemy4Level, oEnemyOnHorse2Level);
		path = "random";
		prize = 125 * spawn_amount;
	break;
	case 7:
		spawn_amount = 25;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy3Level, oEnemy4Level, oEnemyOnHorse2Level);
		path = "random";
		prize = 50 * spawn_amount;
	break;
	case 8:
		spawn_amount = 15;
		global.spawn_rate = room_speed * 2;
		enemy_type = choose(oEnemy1Level,oBossLVL1);
		path = "random";
		prize = 75 * spawn_amount;
	break;
	case 9:
		spawn_amount = 15;
		global.spawn_rate = room_speed * 2;
		enemy_type = choose(oEnemy2Level,oBossLVL1);
		path = "random";
		prize = 50 * spawn_amount;
	break;
	case 10:
		spawn_amount = 20;
		global.spawn_rate = room_speed * 1;
		enemy_type = oBossLVL1;
		path = "random";
		prize = 100 * spawn_amount;
	break;
	case 11:
		spawn_amount = 50;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy2Level,oBossLVL1,oEnemy3Level,oEnemy4Level,oEnemy1Level);
		path = "random";
		prize = 100 * spawn_amount;
	break;
	case 12:
		spawn_amount = 1;
		global.spawn_rate = room_speed * 1;
		enemy_type = oTrojanHorseNot;
		path = "random";
		prize = 100 * spawn_amount;
		prizeTimecoins += 12;
		global.wave = global.wave * 0;
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
	
	oTent.image_speed = 1;
	
	alarm[0] = global.spawn_rate;
}
