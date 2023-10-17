if (spawn_count = spawn_amount){
	global.progressWaves = false;
	global.wave++;
	if (!instance_exists(oTimer)) {instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", oTimer);}
	spawn_count = 0;
}