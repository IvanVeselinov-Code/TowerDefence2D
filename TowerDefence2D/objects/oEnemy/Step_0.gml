if (place_meeting(x, y, oEnemyDestroy)){
	moving = false;
}

if (moving){
	mp_potential_step(670, 720, 6, false);
}
else{
	instance_destroy();
}