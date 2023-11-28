event_inherited();

if (array_contains(global.completedLevels, oTrojan1stLvlButton) and array_contains(global.completedLevels, oTrojan2ndLvlButton)){
	global.lastroom = Room3;
	room_goto(rmScroll);
}