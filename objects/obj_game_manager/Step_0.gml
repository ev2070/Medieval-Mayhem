// obj_game_manager step

global.paused = (pre_game); // can add more booleans here

if (pre_game) {
	pre_game_timer--;
	
	if (pre_game_timer <= 0) {
		pre_game = false;
		pre_game_timer = pre_game_duration;
	}
	
	fight_scale_factor += 0.25;
}

