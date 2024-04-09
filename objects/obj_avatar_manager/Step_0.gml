/// @description Insert description here
// You can write your code in this editor

if room == rm_avatar_select{
	if obj_select1.x == 191{
	//if keyboard_check_pressed(ord("A")){
		player1 = "Archer"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
	}
	else if obj_select1.x == 513{
		player1 = "Knight"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
		
	}
	else if obj_select1.x == 832{
		player1 = "Wizard"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
	}
	else if obj_select1.x == 1182{
		player1 = "Jouster"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
	}
	if obj_select2.x == 191 + 10{
		player2 = "Archer"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
		
	}
	else if obj_select2.x == 513 + 10{
		player2 = "Knight"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
		
	}
	else if obj_select2.x == 832 + 10{
		player2 = "Wizard"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
	}
	else if obj_select2.x == 1182 + 10{
		player2 = "Jouster"
		if (!audio_is_playing(snd_select)) {
			audio_play_sound(snd_select, 1, false);
		}
	}
	if keyboard_check_pressed(vk_enter) and player1 != 0 and player2 != 0 {
		room_goto(rm_avatars)
		if (!audio_is_playing(snd_enter)) {
			audio_play_sound(snd_enter, 1, false);
		}
	}
}


if room = Room1 {
	//Set player 1 Sprites
	if (obj_player1.attacking && !obj_player1.sound_played) {
        switch (obj_hitbox_1.attack_type) {
            case "Knight":
               audio_play_sound(snd_huntress, 1, false);
               break;
            case "wizard":
                audio_play_sound(snd_wizard, 1, false);
                break;
            case "archer":
                audio_play_sound(snd_archer, 1, false);
                break;
            case "Jouster":
                audio_play_sound(snd_Jouster, 1, false);
                break;
        }
        obj_player1.sound_played = true; 
	}
		if (!obj_player1.attacking && obj_player1.sound_played) {
        obj_player1.sound_played = false;
    }
	
	if (obj_player2.attacking && !obj_player2.sound_played2) {
        switch (obj_hitbox_2.attack_type) {
            case "Knight":
                audio_play_sound(snd_huntress, 1, false);
                break;
            case "wizard":
                audio_play_sound(snd_wizard, 1, false);
                break;
            case "archer":
                audio_play_sound(snd_archer, 1, false);
                break;
            case "Jouster":
                audio_play_sound(snd_Jouster, 1, false);
                break;
        }
        obj_player2.sound_played2 = true; 
	}
		if (!obj_player2.attacking && obj_player2.sound_played2) {
        obj_player2.sound_played2 = false;
    }
	
    
	if player1 = "Knight" {
		
		
		obj_hitbox_1.attack_type = "Knight";
		sprite_index = spr_huntress
		obj_player1.spd = 4
		obj_player1.spr_idle = spr_huntress_idle
		obj_player1.spr_up = spr_huntress_up
		obj_player1.spr_down = spr_huntress_down
		obj_player1.spr_right = spr_huntress_right
		obj_player1.spr_up_right = spr_huntress_up_right
		obj_player1.spr_down_right = spr_huntress_idle
		obj_player1.spr_up_atk = spr_huntress_up_atk
		obj_player1.spr_down_atk = spr_huntress_down_atk
		obj_player1.spr_up_right_atk = spr_huntress_up_right_atk
		obj_player1.spr_down_right_atk = spr_huntress_down_right_atk
		obj_player1.spr_right_atk = spr_huntress_right_atk
		obj_player1.name = "Knight"
		}
	else if player1 = "Wizard" {
		obj_hitbox_1.attack_type = "wizard";
		sprite_index = spr_wizard
		obj_player1.name = "Wizard"
		obj_player1.spd = 2.5
		
		//set sprites
		obj_player1.spr_idle = spr_wizard_idle
		obj_player1.spr_up = spr_wizard_up
		obj_player1.spr_down = spr_wizard_down
		obj_player1.spr_right = spr_wizard_right
		obj_player1.spr_up_right = spr_wizard_up_right
		obj_player1.spr_down_right = spr_wizard_idle
		obj_player1.spr_up_atk = spr_wizard_up_atk
		obj_player1.spr_down_atk = spr_wizard_down_atk
		obj_player1.spr_up_right_atk = spr_wizard_up_right_atk
		obj_player1.spr_down_right_atk = spr_wizard_down_right_atk
		obj_player1.spr_right_atk = spr_wizard_right_atk
		
		
		}
	else if player1 = "Archer" {
		obj_hitbox_1.attack_type = "archer";
		
		//set sprites
		obj_player1.spr_idle = spr_archer_idle
		obj_player1.spr_up = spr_archer_up
		obj_player1.spr_down = spr_archer_down
		obj_player1.spr_right = spr_archer_right
		obj_player1.spr_up_right = spr_archer_up_right
		obj_player1.spr_down_right = spr_archer_idle
		obj_player1.spr_up_atk = spr_archer_up_atk
		obj_player1.spr_down_atk = spr_archer_down_atk
		obj_player1.spr_up_right_atk = spr_archer_up_right_atk
		obj_player1.spr_down_right_atk = spr_archer_down_right_atk
		obj_player1.spr_right_atk = spr_archer_right_atk
		obj_player1.charge_duration = 90
		obj_player1.charge_width_target = 90;
		obj_player1.name = "Archer"
		obj_player1.spd = 2.25
		}
	else if player1 = "Jouster" {
		obj_hitbox_1.attack_type = "Jouster";
		sprite_index = spr_worm
		
		obj_player1.spr_idle = spr_knight_idle
		obj_player1.spr_up = spr_knight_up
		obj_player1.spr_down = spr_knight_down
		obj_player1.spr_right = spr_knight_right
		obj_player1.spr_up_right = spr_knight_up_right
		obj_player1.spr_down_right = spr_knight_idle
		obj_player1.spr_up_atk = spr_knight_up_atk
		obj_player1.spr_down_atk = spr_knight_down_atk
		obj_player1.spr_up_right_atk = spr_knight_up_right_atk
		obj_player1.spr_down_right_atk = spr_knight_down_right_atk
		obj_player1.spr_right_atk = spr_knight_right_atk
		obj_player1.name = "Jouster"
		obj_player1.spd = 5
	}
	
	//set Player 2 Sprites
	if player2 = "Knight" {
		obj_hitbox_2.attack_type = "Knight";
		obj_player2.name = "Knight"
		sprite_index = spr_huntress
		
		obj_player2.spr_idle = spr_huntress_idle
		obj_player2.spr_up = spr_huntress_up
		obj_player2.spr_down = spr_huntress_down
		obj_player2.spr_right = spr_huntress_right
		obj_player2.spr_up_right = spr_huntress_up_right
		obj_player2.spr_down_right = spr_huntress_idle
		obj_player2.spr_up_atk = spr_huntress_up_atk
		obj_player2.spr_down_atk = spr_huntress_down_atk
		obj_player2.spr_up_right_atk = spr_huntress_up_right_atk
		obj_player2.spr_down_right_atk = spr_huntress_down_right_atk
		obj_player2.spr_right_atk = spr_huntress_right_atk
		
		}
	else if player2 = "Wizard" {
		obj_hitbox_2.attack_type = "wizard";
		sprite_index = spr_wizard
		obj_player2.name = "Wizard"
		obj_player2.spd = 2.5
		
		//set sprites
		obj_player2.spr_idle = spr_wizard_idle
		obj_player2.spr_up = spr_wizard_up
		obj_player2.spr_down = spr_wizard_down
		obj_player2.spr_right = spr_wizard_right
		obj_player2.spr_up_right = spr_wizard_up_right
		obj_player2.spr_down_right = spr_wizard_idle
		obj_player2.spr_up_atk = spr_wizard_up_atk
		obj_player2.spr_down_atk = spr_wizard_down_atk
		obj_player2.spr_up_right_atk = spr_wizard_up_right_atk
		obj_player2.spr_down_right_atk = spr_wizard_down_right_atk
		obj_player2.spr_right_atk = spr_wizard_right_atk
		
		}
	else if player2 = "Archer" {
		obj_hitbox_2.attack_type = "archer";
	
		//set sprites
		obj_player2.spr_idle = spr_archer_idle
		obj_player2.spr_up = spr_archer_up
		obj_player2.spr_down = spr_archer_down
		obj_player2.spr_right = spr_archer_right
		obj_player2.spr_up_right = spr_archer_up_right
		obj_player2.spr_down_right = spr_archer_idle
		obj_player2.spr_up_atk = spr_archer_up_atk
		obj_player2.spr_down_atk = spr_archer_down_atk
		obj_player2.spr_up_right_atk = spr_archer_up_right_atk
		obj_player2.spr_down_right_atk = spr_archer_down_right_atk
		obj_player2.spr_right_atk = spr_archer_right_atk
		obj_player2.charge_duration = 90
		obj_player2.charge_width_target = 90;
		obj_player2.name = "Archer"
		obj_player2.spd = 2.25
		}
	else if player2 = "Jouster" {
		obj_hitbox_2.attack_type = "Jouster";
		sprite_index = spr_worm
		obj_player2.name = "Jouster"
		obj_player2.spd = 4
		obj_player2.spr_idle = spr_knight_idle
		obj_player2.spr_up = spr_knight_up
		obj_player2.spr_down = spr_knight_down
		obj_player2.spr_right = spr_knight_right
		obj_player2.spr_up_right = spr_knight_up_right
		obj_player2.spr_down_right = spr_knight_idle
		obj_player2.spr_up_atk = spr_knight_up_atk
		obj_player2.spr_down_atk = spr_knight_down_atk
		obj_player2.spr_up_right_atk = spr_knight_up_right_atk
		obj_player2.spr_down_right_atk = spr_knight_down_right_atk
		obj_player2.spr_right_atk = spr_knight_right_atk
		
	}
}

