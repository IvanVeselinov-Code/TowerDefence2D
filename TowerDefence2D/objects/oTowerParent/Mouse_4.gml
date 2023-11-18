if (!pickupDraw and global.pausePhase and position_meeting(mouse_x, mouse_y, self)){
	pickupDraw = true;
}

if (!place_meeting(mouse_x, mouse_y, oButtonParent)){
	if (!selected){
		tower_select(id);
		if (instance_exists(oUpgradeButton)) {instance_destroy(oUpgradeButton);}
		if (instance_exists(oRemoveButton)) {instance_destroy(oRemoveButton);}
		instance_create_layer(x + spriteWidth, y, "Other", oUpgradeButton);
		instance_create_layer(x - spriteHeight, y, "Other", oRemoveButton);
	}
	else if (selected){
		tower_deselect();
		instance_destroy(oUpgradeButton);
		instance_destroy(oRemoveButton);
	}
}