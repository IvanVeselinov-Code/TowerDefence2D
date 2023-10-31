global.tower_slots = 4;
any_selected = 0;
slot = 0;

botLimit = y + (sprite_height / 2) - 25;
topLimit = y - (sprite_height / 2) + 25;

scroll = instance_create_layer(x, topLimit, "Instances", oScroll);
scroll.botLimit = botLimit;
scroll.topLimit = topLimit;
scroll.depth = depth  -1;