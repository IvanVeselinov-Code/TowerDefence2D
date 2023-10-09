function tower_select(tower){
	tower_deselect();
	
	global.selected_tower = tower;
	global.selected_tower.selected = true;
}

function tower_deselect(){
	if (global.selected_tower != noone){
		global.selected_tower.selected = false;
	}
	
	global.selected_tower = noone;
}