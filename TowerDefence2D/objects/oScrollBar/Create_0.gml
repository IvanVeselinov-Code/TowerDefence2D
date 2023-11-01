global.tower_slots = 4;
global.selected_towers = ds_list_create();
global.selected_slots = ds_list_create();

/*global.slots = 0;
any_selected = 0;
slot = 0;

slots = [];

for (var i = 0; i < global.tower_slots; i++){
	array_insert(slots, i, i);
}
*/

botLimit = y + (sprite_height / 2) - 25;
topLimit = y - (sprite_height / 2) + 25;

scroll = instance_create_layer(x, topLimit, "Instances", oScroll);
scroll.botLimit = botLimit;
scroll.topLimit = topLimit;
scroll.depth = depth  -1;