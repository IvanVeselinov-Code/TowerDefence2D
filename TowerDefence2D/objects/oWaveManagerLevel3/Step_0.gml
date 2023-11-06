randomize();

if (spawn_count = spawn_amount and !instance_exists(oEnemies_Parent)){
	
	if (!instance_exists(oWaveText)) {
		instance_create_layer(0, 0, "Instances", oWaveText);
		oWaveText.t = "Get ready for the next wave!";
	}
	
	global.progressWaves = false;
	global.wave++;
	
	global.progress += 10;
	
	oGold.gold += prize;
	global.timecoins += prizeTimecoins;
	
	if (!instance_exists(oTimer)) {instance_create_layer(0, 0, "Instances", oTimer);oTimer.wave_manager = id}
	if (!instance_exists(oSkipButton)) {instance_create_layer(640, 150, "Instances", oSkipButton);}
	
	spawn_count = 0;
	prize = 0;
	prizeTimecoins = 0;
}

if(oProgressBar.followProgress = 100){
	room_goto(WinnerRoom)
	array_push(global.completedLevels, oTrojan3dLvlButton);
	Saving();
}