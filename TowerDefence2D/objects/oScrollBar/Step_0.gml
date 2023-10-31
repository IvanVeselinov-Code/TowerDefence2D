if (any_selected < array_length(oTowersSelect.towers)){
	for (var i = 0; i < array_length(oTowersSelect.towers); i++){
		oTowersSelect.towers[i].current_slot = 0;
		oTowersSelect.towers[i].selected_once = false;
	}
}