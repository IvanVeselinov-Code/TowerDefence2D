
with (oEnemies_Parent){
	if (place_meeting(x, y, oPoison)){
		if (armor > 0){
			armor -= 3;
		}
		else{
			hp -= 5;
		}
	}
	flash = 1;
}

alarm[1] = room_speed * 0.6;