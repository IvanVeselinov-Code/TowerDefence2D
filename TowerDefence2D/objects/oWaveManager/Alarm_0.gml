randomize();

switch(global.wave){
	case 1:
		spawn_amount = 5;
		global.spawn_rate = room_speed * 4;
		enemy_type = oEnemy;
		path = "one";
	break;
	case 2:
		spawn_amount = 10;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy, oEnemy2);
		path = "all";
	break;
	case 3:
		spawn_amount = 5;
		global.spawn_rate = room_speed * 1;
		enemy_type = choose(oEnemy, oEnemy2);
		path = "random";
	break;
	default:
		spawn_amount = 5;
		global.spawn_rate = room_speed * 4;
		enemy_type = oEnemy;
		path = "one";
	break;
}

if (path = "one" or path = "two" or path = "all"){
	pathToFollow = path;
}
else if (path = "random"){
	pathToFollow = choose("one", "two");
}

if (spawn_count < spawn_amount and global.progressWaves){
	spawn_count += 1;
	
	if (pathToFollow = "one"){
		instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemy_type);
	}
	else if (pathToFollow = "two"){
		instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Instances", enemy_type);
	}
	else if (pathToFollow = "all"){
		instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", enemy_type);
		instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Instances", enemy_type);
	}
	
	oTent.image_speed = 1;
	
	alarm[0] = global.spawn_rate;
}