var offset = 0;
	for (var i = 0; i < instance_count; i++){
		if (instance_find(all, i).sprite_index != -1){
			oPause.allObjects[i - offset, 0] = instance_find(all, i).sprite_index;
			oPause.allObjects[i - offset, 1] = instance_find(all, i).image_index;
			oPause.allObjects[i - offset, 2] = instance_find(all, i).x;
			oPause.allObjects[i - offset, 3] = instance_find(all, i).y;
			oPause.allObjects[i - offset, 4] = instance_find(all, i).image_xscale;
			oPause.allObjects[i - offset, 5] = instance_find(all, i).image_yscale;
			oPause.allObjects[i - offset, 6] = instance_find(all, i).image_angle;
			oPause.allObjects[i - offset, 7] = instance_find(all, i).image_blend;
			oPause.allObjects[i - offset, 8] = instance_find(all, i).image_alpha;
		}
		else{
			offset++;
		}
	}
	
	oPause.pause = true;
	instance_deactivate_all(true);
	instance_activate_object(oPause)
	instance_activate_object(oTowerRoll)
	
	instance_create_layer(640, 400, "Other", oScrollBar);
	instance_create_layer(0, 0, "Other", oTowersSelect);
	oScrollBar.depth = -1;