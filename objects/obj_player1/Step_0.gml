// obj_player1 step

// SELECTION OF AVATAR
if player1 = "Huntress" {
	obj_hitbox_1.attack_type = "huntress";
	sprite_index = spr_huntress
	}
else if player1 = "Wizard" {
	obj_hitbox_1.attack_type = "wizard";
	sprite_index = spr_wizard
	}
else if player1 = "Archer" {
	obj_hitbox_1.attack_type = "archer";
	sprite_index = spr_archer
	}
else if player1 = "Worm" {
	obj_hitbox_1.attack_type = "worm";
	sprite_index = spr_worm
	}

event_inherited();

// Check for player 1's movement
if (keyboard_check(ord("W"))) { move_up    = true; }
if (keyboard_check(ord("A"))) { move_left  = true; }
if (keyboard_check(ord("S"))) { move_down  = true; }
if (keyboard_check(ord("D"))) { move_right = true; }

// Check for player 1's combat move
if (!hit) { //change keys
	if (keyboard_check(ord("C"))) { charge = true }
	
}

// Check for player 1's defense move
if (!defend) {
	if (keyboard_check(ord("X"))) { block = true; } //change key
}
//if player collides with an active hitbox - 
if (collision_circle(x,y,sprite_width/2, obj_hitbox_2,true,false) && obj_hitbox_2.activated
	&& obj_hp_bar1.current_hp > 0 && !obj_player1.defend){
	
		hit = true;
		hit_timer = hit_duration;
		
		obj_hp_bar1.current_hp -= obj_hitbox_2.damage
		
		/*
		if (slap) {
			obj_hp_bar1.current_hp -= slap_damage;
		} else if (trip) {
			obj_hp_bar1.current_hp -= trip_damage;
		} else if (push) {
			obj_hp_bar1.current_hp -= push_damage;
		} else if (charge_att) {
			obj_hp_bar1.current_hp -= charge_damage;
			charge_att = false
		}
		*/
		var push_amount = 20;
		if (charge_att){
			push_amount = 50;
		}
		var new_x = obj_player1.x;
		var new_y = obj_player1.y;
		
		//knocked back by direction of the enemys attack ? 
		move_dir = obj_player2.move_dir
		if (move_dir == 0) {
			new_x += push_amount; // move right
		} else if (move_dir == 45) {
			new_x += push_amount; // move up_right
			new_y -= push_amount;
		} else if (move_dir == 90) {
			new_y -= push_amount; // move up
		} else if (move_dir == 135) {
			new_x -= push_amount; // move up-left
			new_y -= push_amount;
		} else if (move_dir == 180) {
			new_x -= push_amount; // move left
		} else if (move_dir == 225) {
			new_x -= push_amount; // move down-left
			new_y += push_amount;
		} else if (move_dir == 270) {
			new_y += push_amount; // move down
		} else if (move_dir == 315) {
			new_x += push_amount; // move down-right
			new_y += push_amount;
		}
		
		// Check if the new position is within bounds
		if (new_x >= left_bound && new_x <= right_bound && new_y >= upper_bound && new_y <= lower_bound) {
			obj_player1.x = new_x;
			obj_player1.y = new_y;
		}
		
		obj_player1.stun = true;
		obj_player1.stun_timer = stun_duration
	}
	

if (charge) {
	if keyboard_check_released(ord("C")) {
		charge_timer = 60
		charge = false
	}else{
		charge_timer--
	}
	if charge_timer <= 0 {
		charge = false
		charge_att = true
		charge_timer = 60
	}
	else {
		if obj_hitbox_1.attack_type != "archer" {
		charge_att = false
		}
	}
}