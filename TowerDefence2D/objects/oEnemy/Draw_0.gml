draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_healthbar(x, y - 29, x + 64, y - 13, hp, c_white, c_red, c_green, 0, true, false);
draw_text(x + 32, y - 30, string(hp));
draw_path(path, x, y, true);