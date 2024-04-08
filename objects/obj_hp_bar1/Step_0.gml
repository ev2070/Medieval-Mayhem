// Inherit the parent event
event_inherited();
if current_hp = 0 {
	obj_player1.fallen = true
	current_hp = max_hp
	global.score_player2 += 1;
	ScreenShake(7,15)
	if (!audio_is_playing(snd_death)) {
			audio_play_sound(snd_death, 1, false);
		}
}