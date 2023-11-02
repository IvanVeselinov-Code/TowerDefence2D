if (!selected){
	
	for (var i = 0; i < instance_number(oSlot); i++){
		var free_slot = instance_find(oSlot, i);
		
		if (!free_slot.taken){
			selected = true;
			xx = free_slot.x;
			yy = free_slot.y;
			free_slot.tower = button;
			break;
		}
	}
}
else{
	selected = false;
	
	for (var i = 0; i < instance_number(oSlot); i++){
		var taken_slot = instance_find(oSlot, i);
		
		if (taken_slot.taken and taken_slot.tower = button){
			taken_slot. tower = noone;;
		}
	}
}