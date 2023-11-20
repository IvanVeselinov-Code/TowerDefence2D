randomize();
oLevelStart.waveManagerId = id;

if (spawn_count = spawn_amount and !instance_exists(oEnemies_Parent)){
	
	if (!instance_exists(oWaveText)) {
		instance_create_layer(0, 0, "Instances", oWaveText);
		oWaveText.t = "Get ready for the next wave!";
	}
	
	global.progressWaves = false;
	global.wave++;
	
	global.progress += 10;
	
	oGold.gold += prize;
	
	if (!instance_exists(oTimer)) {instance_create_layer(0, 0, "Instances", oTimer);oTimer.wave_manager = id}
	if (!instance_exists(oSkipButton)) {instance_create_layer(640, 150, "Instances", oSkipButton);}
	
	spawn_count = 0;
	prize = 0;
	prizeTimecoins = 0;
}

if(oProgressBar.followProgress = 100){
	global.timecoins += 20;
	global.progressWaves = true;
	oProgressBar.followProgress = 0;
	global.progress = 0;
	if (!array_contains(global.completedLevels, oTrojan2ndLvlButton)){
		array_push(global.completedLevels, oTrojan2ndLvlButton);
	}
	if (!array_contains(global.towers, alhemist)){
		array_push(global.towers, alhemist);
		global.unlock = "alchemist";
	}
	Saving();
	global.selected_tower = noone;
	room_goto(WinnerRoom);
}