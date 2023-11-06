function Saving(){
	
	var struct = {
		completedLevels: global.completedLevels,
		timeCoins: global.timecoins
	};
	
	var _string = json_stringify(struct);
	var buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, _string);
	buffer_save(buffer, "ok.sav")
	buffer_delete(buffer);
	
}

function Loading(){
	if (file_exists("ok.sav")){
		var buffer = buffer_load("ok.sav");
		var _string = buffer_read(buffer, buffer_string);
		buffer_delete(buffer);
		
		var loadData = json_parse(_string);
		
		global.completedLevels = loadData.completedLevels;
		global.timecoins = loadData.timeCoins
	}
}