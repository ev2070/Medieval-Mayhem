/// @description Insert description here
// You can write your code in this editor

//FOR TESTING: pick attack type with 1,2,3,4.
if keyboard_check_pressed(ord("1")) {attack_type = "huntress";}
else if keyboard_check_pressed(ord("2")) {attack_type = "wizard";}
else if keyboard_check_pressed(ord("3")) {attack_type = "archer";}
else if keyboard_check_pressed(ord("4")) {attack_type = "worm";}


//hurtbox placement depends on the dir of the player.
//hitbox assigned to either player 1 or 2
x = myPlayer.x
y = myPlayer.y

//hitbox placed ahead in the direction of the player movement
if !canmove {
x = x + lengthdir_x(hitrange, myPlayer.move_dir);
y = y + lengthdir_y(hitrange, myPlayer.move_dir);
}

//Hitbox is activated when:
// - simple Attack button pressed
// - charge attack is released (Hitbox is active for longer)

if !myPlayer.hit && !myPlayer.stun && myPlayer.charge_att { //attack button pressed 
	
	//Change attack type for character.
	if attack_type != "archer" {
	//Hitbox activated
	myPlayer.hit = true;
	myPlayer.hit_timer = myPlayer.hit_duration;
	hitbox_timer += 1
		if attack_type = "huntress" { //Long hitbox
			damage = huntress_damage
			//slight push ahead so it doesn't extend from behind player
			x = x + lengthdir_x(hitrange, myPlayer.move_dir);
			y = y + lengthdir_y(hitrange, myPlayer.move_dir);
			//change hitbox angle according to Move_Dir
			if myPlayer.move_dir % 90 == 0 { image_xscale *= 3;} //moving non-diagonal
			else { image_yscale *= 4; }
			image_angle = myPlayer.move_dir * -1 
		}
		else if attack_type = "wizard" { //Widen hitbox
			damage = wizard_damage
			image_xscale *= 1.3
			image_yscale *= 1.3
			if myPlayer.move_dir % 90 == 0 { image_yscale *= 3;} //moving non-diagonal
			else { image_xscale *= 4; }
			image_angle = myPlayer.move_dir * -1 
		}
		activated = true
		damage = myPlayer.charge_damage 
		myPlayer.charge_att = false
		if hitbox_timer > 1 {
		//activated = false
		hitbox_timer = 0
		}
	}
	else { //Archer is a traveling hitbox - Still WIP 
		canmove = true
		activated = true
		x = x + lengthdir_x(30, myPlayer.move_dir);
		y = y + lengthdir_y(30, myPlayer.move_dir);
		if collision_circle(x,y,30,obj_danger_zone,true,false) {
			canmove = false
			myPlayer.charge_att = false
			activated = false
		}
	}
}

else {
	activated = false
	damage = 0
	image_xscale = 1
	image_yscale = 1
	image_angle = 0
}

 
if activated = true {
	image_alpha = 1
}
else {
	image_alpha = 0.3
}