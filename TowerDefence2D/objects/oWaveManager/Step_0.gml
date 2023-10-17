if (spawn_count = spawn_amount){
	global.progressWaves = false;
	global.wave++;
	instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", oTimer);
}