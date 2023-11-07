if (mouse_check_button_pressed(mb_left)){
	if (position_meeting(mouse_x_check, mouse_y_check, id)){
		image_index = 1;
		if (oGold.gold >= upgradePrice){
			oGold.gold -= upgradePrice;
			oLevelStart.max_towers += 5;
			upgradePrice += 200;
		}
	}
}

if (mouse_check_button(mb_left)){
	if (position_meeting(mouse_x_check, mouse_y_check, id)){
		image_index = 1;
	}
}
else{
	image_index = 0;
}