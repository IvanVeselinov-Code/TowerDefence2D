audio_stop_sound(soTrojanMap);

if (!audio_is_playing(BossSong)){
	audio_play_sound(BossSong, 1, true);
}
oGold.gold = 5000;