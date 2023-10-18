mil -= 1;

if (mil = -1){
	mil = 9;
	sec -=1;
}

if (sec = -1){
	sec = 59;
	mins -=1;
}

if !(sec = 0 and mins = 0 and mil = 0){
	alarm[0] = 6;
}
else{
	instance_create_layer(0, 0, "Instances", oWaveText);
	global.progressWaves = true;
	oWaveManager.alarm[0] = room_speed * 4;
	instance_destroy();
}