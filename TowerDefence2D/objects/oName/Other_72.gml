if (audio_group_is_loaded(Music)){
	if (!audio_is_playing(MainMenuMusic)){
		audio_play_sound(MainMenuMusic,1,true);
	}
}