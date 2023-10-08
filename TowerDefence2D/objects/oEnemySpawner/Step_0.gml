var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

if (timer >= 1){
	instance_create_layer(x, y, "Instances", oEnemy);
	timer = 0;
}