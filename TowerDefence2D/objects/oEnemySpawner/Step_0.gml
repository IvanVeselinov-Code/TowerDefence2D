var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

switch(oWaveManager.wave){
	case 1:
		if (timer >= 1){
			var enemyType = choose(oEnemy, oEnemy2)
			instance_create_layer(x, y, "Instances", enemyType);
			timer = 0;
			oTent.image_speed = 0.1;
		}
	break;
	case 2:
		if (timer >= 1){
			var enemyType = choose(oEnemy, oEnemy2)
			instance_create_layer(x, y, "Instances", enemyType);
			timer = 0;
			oTent.image_speed = 0.1;
		}
	break;
}