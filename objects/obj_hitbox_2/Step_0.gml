/// @description Insert description here
// You can write your code in this editor

//FOR TESTING: pick attack type with 1,2,3,4.
/*
if keyboard_check_pressed(ord("1")) {attack_type = "huntress";}
else if keyboard_check_pressed(ord("2")) {attack_type = "wizard";}
else if keyboard_check_pressed(ord("3")) {attack_type = "archer";}
else if keyboard_check_pressed(ord("4")) {attack_type = "worm";}
*/


//hitbox placed ahead in the direction of the player movement
if !canmove { //hitbox won't move if not a archer
	//hurtbox placement depends on the dir of the player.
	//hitbox assigned to either player 1 or 2
	x = myPlayer.x
	y = myPlayer.y
	
	x = x + lengthdir_x(hitrange, myPlayer.move_dir);
	y = y + lengthdir_y(hitrange, myPlayer.move_dir);
}

//Hitbox is activated when:
// - simple Attack button pressed
// - charge attack is released (Hitbox is active for longer)

if !myPlayer.hit && !myPlayer.stun && myPlayer.charge_att { //attack button pressed 
	shot_dir = myPlayer.move_dir
	//Change attack type for character.
	if attack_type != "archer" {
	//Hitbox activated
	myPlayer.hit = true;
	myPlayer.hit_timer = myPlayer.hit_duration;
	hitbox_timer += 1
		if attack_type = "huntress" { //Long hitbox
			//change hitbox angle according to Move_Dir
			if myPlayer.move_dir % 90 == 0 { image_xscale *= 3;} //moving non-diagonal
			else { image_yscale *= 3; }
			image_angle = myPlayer.move_dir * -1 
		}
		else if attack_type = "wizard" { //Widen hitbox
			image_xscale *= 1.3
			image_yscale *= 1.3
			if myPlayer.move_dir % 90 == 0 { image_yscale *= 3;} //moving non-diagonal
			else { image_xscale *= 3; }
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
	else { //Archer is a traveling hitbox
		canmove = true
		activated = true
		//myPlayer.hit_timer = myPlayer.hit_duration;
		x = x + lengthdir_x(50, myPlayer.move_dir);
		y = y + lengthdir_y(50, myPlayer.move_dir);
		
		//scale damage by distance between players:
		damage = distance_to_object(obj_player2) % 20
		
		if collision_circle(x,y,30,obj_danger_zone,true,false){
			myPlayer.charge_att = false
			activated = false
			canmove = false
		}
		
		if collision_circle(x,y,1,obj_player1,true,false) {
			myPlayer.charge_att = false
			activated = false
			myPlayer.push_amount = 10
			if !obj_player1.defend {
				obj_hp_bar1.current_hp -= damage
				var a_damage_indicator = instance_create_depth(obj_player1.x-sprite_width/3,obj_player1.y-sprite_height,-1,obj_damage_indicator);
				a_damage_indicator.damage = damage;
			}
			canmove = false
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