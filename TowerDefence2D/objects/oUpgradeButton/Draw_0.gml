event_inherited();

if (global.selected_tower != noone){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text(x - 16, y - 40, "Price: " + string(global.selected_tower.upgradePrice) + "g");
}