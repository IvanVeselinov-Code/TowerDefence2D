var xx = 0;

for (var i = 0; i < global.tower_slots; i++){
	xx += 64;
	var slotObj = instance_create_layer(xx, 64, "Instances", oSlot);
	slotObj.slot = i;
}

botLimit = y + (sprite_height / 2) - 25;
topLimit = y - (sprite_height / 2) + 25;

scroll = instance_create_layer(x, topLimit, "Instances", oScroll);
scroll.botLimit = botLimit;
scroll.topLimit = topLimit;
scroll.depth = depth  -1;