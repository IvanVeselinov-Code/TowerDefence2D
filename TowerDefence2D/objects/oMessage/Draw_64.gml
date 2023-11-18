draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(RobotoMono1);
draw_set_alpha(alpha_fade);

draw_text(x, y, string(t));

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);