randomize();

if (spawn_count = spawn_amount and !instance_exists(oEnemies_Parent)){
	
	if (!instance_exists(oWaveText)) {
		instance_create_layer(0, 0, "Instances", oWaveText);
		oWaveText.t = "Get ready for the next wave!";
	}
	
	global.progressWaves = false;
	global.wave++;
	
	if (!instance_exists(oTimer)) {instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Instances", oTimer);}
	
	spawn_count = 0;
}