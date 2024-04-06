// obj_game_manager step

global.paused = (pre_game || post_game || obj_endScreen.visible); // can add more booleans here

if (pre_game) {
	pre_game_timer--;
	
	if (!audio_is_playing(snd_bell)) {
		audio_play_sound(snd_bell, 1, false);
	}
	
	if (pre_game_timer <= 0) {
		pre_game = false;
		pre_game_timer = pre_game_duration;
	}
	
	fight_scale_factor += 0.25;
}


if (room == Room1 && !post_game && obj_timer.timer < 60 && game_over_scale_factor == 1) {
	post_game = true;
}

if (post_game) {
	post_game_timer--;
	
	if (!audio_is_playing(snd_bell)) {
		audio_play_sound(snd_bell, 1, false);
	}
	
	if (post_game_timer <= 0) {
		post_game = false;
		post_game_timer = post_game_duration;
	}
	
	game_over_scale_factor += 0.25;
}

