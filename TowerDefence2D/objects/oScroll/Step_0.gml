if (!mouse_check_button(mb_left)){
	grab = false;
}

if (grab){
	if (mouse_y + yy < botLimit and mouse_y + yy > topLimit){
		y = mouse_y + yy;
	}
	else if (mouse_y + yy > botLimit){
		y = botLimit;
	}
	else if (mouse_y + yy < topLimit){
		y = topLimit;
	}
}

percent = ((y - botLimit) / (topLimit - botLimit)) * 100;