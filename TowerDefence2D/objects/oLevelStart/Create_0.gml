//waveManagerId = oEnemySpawner;
//pathIndicate = false;

placed_towers = 0;
max_towers = 25;

xx = 0;
yy = 64;

/*instance_create_layer(0, 0, "Other", oBorderH);
instance_create_layer(0, 0, "Other", oBorderH2);
instance_create_layer(0, 0, "Other", oBorderW);
instance_create_layer(0, 0, "Other", oBorderW2);*/

for (var i = 0; i < instance_number(oSlot); i++){
	var slot = instance_find(oSlot, i);
	xx += 64;
	if (slot.tower != noone){
		instance_create_layer(xx, yy, "Other", slot.tower);
		slot.tower = noone;
		slot.persistent = false;
	}
}

with(oSlot){
	instance_destroy();
}