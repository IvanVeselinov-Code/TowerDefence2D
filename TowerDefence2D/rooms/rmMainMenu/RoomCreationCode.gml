show_debug_overlay(1);

if (!audio_is_playing(MainMenuMusic)){
	audio_play_sound(MainMenuMusic,1,true);
}

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

Loading();
global.levelINF = false;
