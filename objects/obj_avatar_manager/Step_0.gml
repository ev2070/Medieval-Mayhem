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
