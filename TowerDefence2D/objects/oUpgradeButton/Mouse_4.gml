event_inherited();

if (global.selected_tower != noone){
	if (oGold.gold > 0 and oGold.gold >= global.selected_tower.upgradePrice){
		global.selected_tower.level++;
		oGold.gold -= global.selected_tower.upgradePrice;
	}
}
instance_create_layer(global.selected_tower.x,global.selected_tower.y,"IndicatersLayer",oUpgradeAnimation);
audio_play_sound(UpgradingSound, 10, false);