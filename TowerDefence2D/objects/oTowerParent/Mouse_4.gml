if (!selected){
	tower_select(id);
	if (instance_exists(oUpgradeButton)) {instance_destroy(oUpgradeButton);}
	if (instance_exists(oRemoveButton)) {instance_destroy(oRemoveButton);}
	instance_create_layer(x + 64, y, "Instances", oUpgradeButton);
	instance_create_layer(x - 64, y, "Instances", oRemoveButton);
}
else if (selected){
	tower_deselect();
	instance_destroy(oUpgradeButton);
	instance_destroy(oRemoveButton);
}