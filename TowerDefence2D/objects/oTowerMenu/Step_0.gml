if (global.selected_tower != noone){
	x = lerp(x, 44, 0.2);
	y = lerp(y, 480, 0.2);
	
	name = global.selected_tower.name;
	sprite = global.selected_tower.sprite_index;
	level = global.selected_tower.level;
	range = global.selected_tower.maxrange
	fire_rate = global.selected_tower.fireRate;
	dmg = global.selected_tower.dmg;
}
else if (global.selected_tower = noone){
	x = lerp(x, -416, 0.2);
	y = lerp(y, 480, 0.2);
}