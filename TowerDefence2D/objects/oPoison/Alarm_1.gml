with (oEnemies_Parent){
	if (place_meeting(x, y, oPoison)){
		if (armor > 0){
			armor -= 5;
		}
		else{
			hp -= 5;
		}
	}
}

alarm[1] = room_speed * 0.6;