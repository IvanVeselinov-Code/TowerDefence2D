var width = sprite_get_width(sprite) + string_width("Fire Rate: " + string(fire_rate));
var height = string_height(name) + sprite_get_height(sprite) + string_height(level);

if (global.selected_tower != noone){
	draw_set_alpha(0.5);

	draw_sprite_stretched(
	sTowerMenu, 0, x, y,
	width,
	height
	);

	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_set_font(RobotoMono2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
		
	draw_text(x + width / 2, y + 20, string(name));
	draw_text(x + width / 2, y + string_height(name) + 20, "Level: " + string(level));
		
	draw_set_alpha(0.8);
	draw_sprite(sprite, 0, x + sprite_get_width(sprite) / 2 + 40, y + (sprite_get_height(sprite) / 2) + 60);
	draw_set_alpha(1);
		
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
		
	draw_text(
	x + sprite_get_width(sprite) + 65,
	y + ((sprite_get_height(sprite) / 2) + 60) - (sprite_get_height(sprite) / 2),
	"Range:" + string(range)
	);
		
	draw_text(
	x + sprite_get_width(sprite) + 65,
	y + ((sprite_get_height(sprite) / 2) + 80) - (sprite_get_height(sprite) / 2),
	"Damage:" + string(dmg)
	);
		
	draw_text(
	x + sprite_get_width(sprite) + 65,
	y + ((sprite_get_height(sprite) / 2) + 100) - (sprite_get_height(sprite) / 2),
	"Fire Rate:" + string(fire_rate) + "s"
	);
}