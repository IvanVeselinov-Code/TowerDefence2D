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

switch(setting){
	case "music":
		global.music_volume = amount_current;
		audio_group_set_gain(Music, amount_current / 100, 0);
		break;
	case "sounds":
		global.sound_volume = amount_current;
		audio_group_set_gain(Sounds, amount_current / 100, 0);
		break;
}

SavingOptions();