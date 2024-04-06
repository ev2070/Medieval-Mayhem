// obj_game_manager create

// For pre-game setup
pre_game = false;
pre_game_duration = 2*60;
pre_game_timer = pre_game_duration;

if (room == Room1 && !pre_game) {
	pre_game = true;
}

fight = "FIGHT";
fight_scale_factor = 1;


// For post-game setup
post_game = false;
post_game_duration = 2*60;
post_game_timer = post_game_duration;

game_over = "GAME OVER";
game_over_scale_factor = 1;


global.paused = false;

