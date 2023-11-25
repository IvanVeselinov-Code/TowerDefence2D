function SavingOptions(){
	var struct = {
		fullscreen: global.fullscreen,
		sound: global.sound_volume,
		music: global.music_volume,
		master: global.master_volume
	};
	
	var _string = json_stringify(struct);
	var buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, _string);
	buffer_save(buffer, "options.sav");
	buffer_delete(buffer);
}

function LoadingOptions(){
	if (file_exists("options.sav")){
		var buffer = buffer_load("options.sav");
		var _string = buffer_read(buffer, buffer_string);
		buffer_delete(buffer);
		
		var loadData = json_parse(_string);
		
		global.fullscreen = loadData.fullscreen;
		global.sound_volume = loadData.sound;
		global.music_volume = loadData.music;
		global.master_volume = loadData.master;
	}
}