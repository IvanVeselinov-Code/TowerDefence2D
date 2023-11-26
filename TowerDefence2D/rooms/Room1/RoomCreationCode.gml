oLevelStart.pathIndicate = true;
audio_stop_sound(soTrojanMap);
if (!audio_is_playing(soLevelsSongTrojan)){
	audio_play_sound(soLevelsSongTrojan, 1, true);
}