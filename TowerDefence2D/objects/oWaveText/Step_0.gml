var second = current_second;

if (second != time){
	timer++;
}

time = current_second;

if (timer = 8){
	t = "";
	instance_destroy();
}