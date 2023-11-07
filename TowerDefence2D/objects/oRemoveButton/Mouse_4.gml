event_inherited();

if (global.selected_tower != noone){
	if (instance_exists(oUpgradeButton)) {instance_destroy(oUpgradeButton);}
	
	instance_destroy(global.selected_tower);
	global.selected_tower = noone;
	oLevelStart.placed_towers -= 1;
	
	with (oEnemies_Parent) {mp_grid_clear_all(grid)}
	with (oEnemySpawnerParent) {mp_grid_clear_all(grid)}
	
	instance_destroy();
}