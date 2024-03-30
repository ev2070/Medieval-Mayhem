/// @description Insert description here
// You can write your code in this editor

//hurtbox placement depends on the dir of the player.
//hitbox assigned to either player 1 or 2
x = myPlayer.x
y = myPlayer.y

//hitbox placed ahead in the direction of the player movement
x = x + lengthdir_x(hitrange, myPlayer.move_dir);
y = y + lengthdir_y(hitrange, myPlayer.move_dir);


//Hitbox is activated when:
// - simple Attack button pressed
// - charge attack is released (Hitbox is active for longer)
if myPlayer.slap { //attack button pressed 
	hold_length += 1 //check how long the attack button is held
}
else {
	if hold_length > 0 and hold_length < 60 { //quick button press ? 
		hitbox_timer += 1
		activated = true
		if hitbox_timer > hitbox_normalatk_timer {
			activated = false
			hitbox_timer = 0
			hold_length = 0
		}
	}
	else { //long button hold --> Charge attack 
		hold_length = 0 
	}
}




 
if activated = true {
	image_alpha = 1
}
else {
	image_alpha = 0.2
}