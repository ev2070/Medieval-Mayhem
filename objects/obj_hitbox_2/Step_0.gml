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


// A hit can be a slap, trip, or push
// Player 2 cannot hit if stunned
if !myPlayer.hit && !myPlayer.stun && (myPlayer.slap or myPlayer.charge_att or myPlayer.trip) { //attack button pressed 
	// If Player 2 is nearby & defenseless
	// and you attack, you can reduce their HP,
	// knock them back, and stun them
	//Hitbox activated
	myPlayer.hit = true;
	myPlayer.hit_timer = myPlayer.hit_duration;
	activated = true
	hitbox_timer += 1
	if myPlayer.slap { 
		damage = myPlayer.slap_damage 
		slap = false
	}
	else if myPlayer.trip { 
		damage = myPlayer.trip_damage
		trip = false
	}
	else if myPlayer.charge_att { 
		damage = myPlayer.charge_damage 
		myPlayer.charge_att = false
	}
	if hitbox_timer > 1{
	//activated = false
	hitbox_timer = 0
	}
}

else {
	activated = false
	damage = 0
}

 
if activated = true {
	image_alpha = 1
}
else {
	image_alpha = 0.2
}