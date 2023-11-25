draw_self();

var knob_amount = amount_current / amount_max;
var knob_pos = x + (sprite_width * knob_amount);

draw_sprite(sSliderKnob, 0, knob_pos, y);

draw_set_font(RobotoMono1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(x + 330, y, string(round(global.master_volume)));

draw_set_halign(fa_left);
draw_set_valign(fa_top);