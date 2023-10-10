event_inherited();

if (global.selected_tower != noone){
	if (instance_exists(oUpgradeButton)) {instance_destroy(oUpgradeButton);}
	
	instance_destroy(global.selected_tower);
	global.selected_tower = noone;
	
	instance_destroy();
}