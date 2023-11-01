/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();
if(armor = 50){
	instance_create_layer(x, y, "Instances", oEnemy2Level);
	audio_play_sound(BreakingShield, 10, false);
	instance_destroy()
}
if(armor = 0){
	instance_create_layer(x, y, "Instances", oEnemy1Level);
	audio_play_sound(BreakingShield, 10, false);
	instance_destroy()
}