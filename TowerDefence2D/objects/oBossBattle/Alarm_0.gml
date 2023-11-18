event_inherited();

//if (array_contains(global.completedLevels, oTrojan1stLvlButton) and array_contains(global.completedLevels, oTrojan2ndLvlButton) and array_contains(global.completedLevels, oTrojan3dLvlButton)){
	global.level = LastTrojanLevel;
	room_goto(rmScroll);
//}