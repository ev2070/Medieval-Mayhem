// Inherit the parent event
event_inherited();

//if (point_distance(obj_player1.x, obj_player1.y, obj_player2.x, obj_player2.y)) {
	
//}
 if current_hp = 0 {
	//ScreenShake(7,15)
	obj_player2.fallen = true
	current_hp = max_hp
	global.score_player1 += 1;
	ScreenShake(7,15)
	if (!audio_is_playing(snd_death)) {
			audio_play_sound(snd_death, 1, false);
		}
}