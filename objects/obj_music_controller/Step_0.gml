/// @description Insert description here
// You can write your code in this editor
switch (room) {
    case rm_title:
        if (!audio_is_playing(snd_start_bgm)) {
            audio_play_sound(snd_start_bgm, 1, true);
        }
        break;
    case rm_avatar_select:
        if (!audio_is_playing(snd_start_bgm)) {
            audio_play_sound(snd_start_bgm, 1, true);
        }
        break;
	case rm_avatars:
        if (!audio_is_playing(snd_start_bgm)) {
            audio_play_sound(snd_start_bgm, 1, true);
        }
        break;
		
    
    default:
        audio_stop_sound(snd_start_bgm)
        break;
}
