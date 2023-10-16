if (global.lastEnemy = oEnemy){
	instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", oEnemy2);
}
else{
	instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", oEnemy);
}

global.lastEnemy = noone;