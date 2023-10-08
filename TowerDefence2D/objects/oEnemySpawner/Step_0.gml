var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

if (timer >= 1){
	var enemyType = choose(oEnemy, oEnemy2)
	instance_create_layer(x, y, "Instances", enemyType);
	timer = 0;
}