/// @description Insert description here
// You can write your code in this editor

if room == rm_avatars{
	if keyboard_check_pressed(vk_enter){
		room_goto(Room1)
		if (!audio_is_playing(snd_enter)) {
			audio_play_sound(snd_enter, 1, false);
		}
	}
}

