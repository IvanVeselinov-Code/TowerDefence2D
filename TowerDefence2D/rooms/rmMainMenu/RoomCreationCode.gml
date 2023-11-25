//show_debug_overlay(1);

audio_group_load(Music);
audio_group_load(Sounds);

global.selected_tower = noone;
global.moveable = false;
global.wave = 1;
global.progressWaves = true;
global.lastEnemy = noone;
global.spawn_rate = 0;
global.pausePhase = false;
global.progress = 0;
global.maxProgress = 0;
global.level = rmMainMenu;
global.timecoins = 0;

global.towers = [crossbow, catapult];
global.unlock = noone;
global.level = noone;

global.drawingUI = true;

global.tower_slots = 4;

global.completedLevels = [];

global.levelINF = noone;

//Options variables
global.fullscreen = true;
global.master_volume = 100;
global.music_volume = 100;
global.sound_volume = 100;

//Loading options
LoadingOptions();

//Options
if (global.fullscreen){
	window_set_fullscreen(true);
}
else{
	window_set_fullscreen(false);
}

audio_group_set_gain(Music, global.music_volume / 100, 0);
audio_group_set_gain(Sounds, global.sound_volume / 100, 0);
audio_set_master_gain(0, global.master_volume);

//Loading everything else
Loading();