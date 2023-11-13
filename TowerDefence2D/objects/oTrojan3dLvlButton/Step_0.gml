
event_inherited();
if(array_contains(global.completedLevels, oTrojan1stLvlButton) and sprite_index != sTrojanLevels and array_contains(global.completedLevels, oTrojan2ndLvlButton)){
	sprite_index = sTrojanLevels;
}
if(array_contains(global.completedLevels, object_index) and sprite_index != sTrojanDone){
	sprite_index = sTrojanDone
}