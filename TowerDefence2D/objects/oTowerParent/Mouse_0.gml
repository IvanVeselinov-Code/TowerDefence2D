if (pickupDraw and global.pausePhase){
	pickup += 2;
}

if (pickup >= 100){
	pickupDraw = false;
	instance_destroy(oUpgradeButton);
	instance_destroy(oRemoveButton);
	if (global.selected_tower = noone) {tower_select(id);}
	if (!instance_exists(oGridDraw)) {instance_create_layer(0, 0, "Instances", oGridDraw);}
	global.moveable = true
}