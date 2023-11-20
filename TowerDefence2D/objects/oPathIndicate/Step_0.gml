var second = current_second;

if (second != time){
    timer++;
}

time = current_second;

if (timer = 10){
	oLevelStart.pathIndicate = false;
	instance_destroy(oPathIndicateArrow);
	instance_destroy();
}