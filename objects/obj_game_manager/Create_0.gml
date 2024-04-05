// obj_game_manager create

pre_game = false;
pre_game_duration = 2*60;
pre_game_timer = pre_game_duration;

if (room == Room1 && !pre_game) {
	pre_game = true;
}

fight = "FIGHT";
fight_scale_factor = 1;

global.paused = false;