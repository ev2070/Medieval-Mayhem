/// @description Insert description here
// You can write your code in this editor

//right keys
if (keyboard_check_pressed(ord("D")) and x = 191 and y = 450){
	x = 513
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("D")) and x = 513 and y = 450){
	x = 832
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("D")) and x = 832 and y = 450){
	x = 1182
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("D")) and x = 1182 and y = 450){
	x = 191
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}


//left keys
if (keyboard_check_pressed(ord("A")) and x = 191 and y = 450){
	x = 1182
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("A")) and x = 513 and y = 450){
	x = 191
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("A")) and x = 832 and y = 450){
	x = 513
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("A")) and x = 1182 and y = 450){
	x = 832
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}