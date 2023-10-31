if (!selected){
	oScrollBar.any_selected++;
	selected = true;
	image_blend = c_green;
	
	oScrollBar.slot++;
	
	if (!selected_once){
		current_slot = oScrollBar.slot;
		selected_once = true;
	}
}
else{
	selected = false;
	image_blend = noone;
	oScrollBar.any_selected -= 1;
}