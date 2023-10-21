


draw_healthbar(x, y, x + 385, y + 36, (followhp / maxhp) * 100, c_black, c_red, c_red, 0, true, false);
draw_healthbar(x, y, x + 385, y + 36, (hp / maxhp) * 100, c_black, c_red, c_green, 0, false, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(RobotoMono1);

draw_text(x + 193, y + 18, string(hp) + " / " + string(maxhp))

draw_set_halign(fa_left);
draw_set_valign(fa_top);