draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(oGold.x, oGold.y + 30, "Towers: " + string(placed_towers) + " / " + string(max_towers));