/// @description Insert description here
// You can write your code in this editor

//right keys
if (keyboard_check_pressed(ord("L")) and x = 191 + 10 and y = 450){
	x = 513 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("L")) and x = 513 + 10 and y = 450){
	x = 832 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("L")) and x = 832 + 10 and y = 450){
	x = 1182 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("L")) and x = 1182 + 10 and y = 450){
	x = 191 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}


//left keys
if (keyboard_check_pressed(ord("J")) and x = 191 + 10 and y = 450){
	x = 1182 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("J")) and x = 513 + 10 and y = 450){
	x = 191 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("J")) and x = 832 + 10 and y = 450){
	x = 513 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}
else if (keyboard_check_pressed(ord("J")) and x = 1182 + 10 and y = 450){
	x = 832 + 10
	y = 450
	if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
}