
followhp = lerp(followhp, hp, 0.05);


if(hp == 0){
	global.wave = global.wave * 0;
	room_goto(DeathScreen)
}