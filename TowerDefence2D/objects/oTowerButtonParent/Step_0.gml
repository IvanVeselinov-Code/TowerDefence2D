

if (mouse_check_button_pressed(mb_left)){
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		if (!instance_exists(oTowerPlacement) and oGold.gold >= placementPrice and oLevelStart.placed_towers < oLevelStart.max_towers){
			instance_create_layer(mouse_x, mouse_y, "Instances", oTowerPlacement);
			oTowerPlacement.sprite_index = sprite;
			oTowerPlacement.tower = tower;
			oTowerPlacement.placementPrice = placementPrice;
			oTowerPlacement.image_speed = 0
			instance_create_layer(0, 0, "Instances", oGridDraw);
		}
		else{
			if (oGold.gold < placementPrice){
				if (!instance_exists(oMessage)){
					instance_create_layer(640, 160, layer, oMessage);
					oMessage.t = "Not enough gold!";
				}
			}
			else if (oLevelStart.placed_towers = oLevelStart.max_towers){
				if (!instance_exists(oMessage)){
					instance_create_layer(640, 160, layer, oMessage);
					oMessage.t = "You can't place more towers!";
				}
			}
			else if (oGold.gold < placementPrice and oLevelStart.placed_towers = oLevelStart.max_towers){
				if (!instance_exists(oMessage)){
					instance_create_layer(640, 160, layer, oMessage);
					oMessage.t = "Not enough gold and you can't place more towers!";
				}
			}
		}
	}
}