randomize();

switch(global.wave){
	default:
		global.spawn_rate = room_speed * 2;
		enemy_type = oBossLVL1;
		path = "random";
		prize += 500;
		global.timecoins += 1;
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