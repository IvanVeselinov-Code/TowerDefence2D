event_inherited();

if (global.selected_tower != noone){
	global.selected_tower.level = 2;
	global.selected_tower.range = 300;
	global.selected_tower.sprite_index = sTowerLevel2;
}