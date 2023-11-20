if (pathIndicate){
	var path = waveManagerId.pathToFollow;
	
	switch(path){
		case "one":
			if (!instance_exists(oPathIndicate)){
				instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Other", oPathIndicate);
				var arrow = instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Other", oPathIndicateArrow);
				arrow.target = oEnemySpawner;
			}
			break;
		case "two":
			if (!instance_exists(oPathIndicate)){
				instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Other", oPathIndicate);
				var arrow = instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Other", oPathIndicateArrow);
				arrow.target = oEnemySpawner2;
			}
			break;
		case "three":
			if (!instance_exists(oPathIndicate)){
				instance_create_layer(oEnemySpawner3.x, oEnemySpawner3.y, "Other", oPathIndicate);
				var arrow = instance_create_layer(oEnemySpawner3.x, oEnemySpawner3.y, "Other", oPathIndicateArrow);
				arrow.target = oEnemySpawner3;
			}
			break;
		case "1and2":
			if (!instance_exists(oPathIndicate)){
				instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Other", oPathIndicate);
				instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Other", oPathIndicate);
				var arrow = instance_create_layer(oEnemySpawner.x, oEnemySpawner.y, "Other", oPathIndicateArrow);
				var arrow2 = instance_create_layer(oEnemySpawner2.x, oEnemySpawner2.y, "Other", oPathIndicateArrow);
				arrow.target = oEnemySpawner;
				arrow2.target = oEnemySpawner2;
			}
			break;
	}
}