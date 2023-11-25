if (dragged){
	if (mouse_x > x){
		var xx = abs(x - mouse_x);
		var amount = xx / sprite_width;
		amount = clamp(amount, 0, 1);
		amount_current = amount * 100;
	}
	else{
		amount_current = 0;
	}
}

global.sound_volume = amount_current;
audio_group_set_gain(Sounds, amount_current / 100, 0);

SavingOptions();