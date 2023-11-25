amount_max = 100;
amount_current = 0;
dragged = false;

switch(setting){
	case "master":
		amount_current = global.master_volume;
		break;
	case "music":
		amount_current = global.music_volume;
		break;
	case "sounds":
		amount_current = global.sound_volume;
		break;
}