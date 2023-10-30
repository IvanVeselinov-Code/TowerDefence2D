start_width = image_xscale;

switch(global.tower_slots){
	case 1:
		image_xscale = start_width;
	break;
	case 2:
		image_xscale = start_width * 2;
	break;
	case 3:
		image_xscale = start_width * 3;
	break;
	case 4:
		image_xscale = start_width * 4;
	break;
}