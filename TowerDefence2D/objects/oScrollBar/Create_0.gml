global.tower_slots = 4;
slot1 = false;
slot2 = false;
slot3 = false;
slot4 = false;

botLimit = y + (sprite_height / 2) - 25;
topLimit = y - (sprite_height / 2) + 25;

scroll = instance_create_layer(x, topLimit, "Instances", oScroll);
scroll.botLimit = botLimit;
scroll.topLimit = topLimit;
scroll.depth = depth  -1;