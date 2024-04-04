/// @description Insert description here
// You can write your code in this editor

if room == rm_avatar_select{
	if keyboard_check_pressed(ord("A")){
		player1 = "Huntress"
	}
	else if keyboard_check_pressed(ord("S")){
		player1 = "Wizard"
		
	}
	else if keyboard_check_pressed(ord("D")){
		player1 = "Archer"
	}
	else if keyboard_check_pressed(ord("W")){
		player1 = "Worm"
	}
	if keyboard_check_pressed(ord("J")){
		player2 = "Huntress"
		
	}
	else if keyboard_check_pressed(ord("K")){
		player2 = "Wizard"
		
	}
	else if keyboard_check_pressed(ord("L")){
		player2 = "Archer"
	}
	else if keyboard_check_pressed(ord("I")){
		player2 = "Worm"
	}
	if keyboard_check_pressed(vk_enter){
		room_goto(rm_avatars)
	}
}


if room = Room1 {
	//Set player 1 Sprites
	if player1 = "Huntress" {
		obj_hitbox_1.attack_type = "huntress";
		sprite_index = spr_huntress
		name = "Huntress"
		}
	else if player1 = "Wizard" {
		obj_hitbox_1.attack_type = "wizard";
		sprite_index = spr_wizard
		name = "Wizard"
		spd = 2.5
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
		name = "Archer"
		spd = 2.25
		}
	else if player1 = "Worm" {
		obj_hitbox_1.attack_type = "worm";
		sprite_index = spr_worm
		name = "Worm"
	}
	
	//set Player 2 Sprites
	if player2 = "Huntress" {
		obj_hitbox_2.attack_type = "huntress";
		sprite_index = spr_huntress
		name = "Huntress"
		}
	else if player2 = "Wizard" {
		obj_hitbox_2.attack_type = "wizard";
		sprite_index = spr_wizard
		name = "Wizard"
		spd = 2.5
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
		name = "Archer"
		spd = 2.25
		}
	else if player2 = "Worm" {
		obj_hitbox_2.attack_type = "worm";
		sprite_index = spr_worm
		name = "Worm"
	}
}
