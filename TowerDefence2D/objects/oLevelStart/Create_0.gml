xx = 0;
yy = 64;

for (var i = 0; i < instance_number(oSlot); i++){
	var slot = instance_find(oSlot, i);
	xx += 64;
	if (slot.tower != noone){
		instance_create_layer(xx, yy, "Other", slot.tower);
	}
}