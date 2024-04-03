// obj_player1 step

if collision_circle(x,y,1, obj_danger_zone, false, false ) and !fallen{ 
		global.score_player2 += 1
	}


// SELECTION OF AVATAR
if player1 = "Huntress" {
	obj_hitbox_1.attack_type = "huntress";
	sprite_index = spr_huntress
	name = "Huntress"
	}
else if player1 = "Wizard" {
	obj_hitbox_1.attack_type = "wizard";
	sprite_index = spr_wizard
	name = "Wizard"
	}
else if player1 = "Archer" {
	obj_hitbox_1.attack_type = "archer";
	sprite_index = spr_archer
	name = "Archer"
	}
else if player1 = "Worm" {
	obj_hitbox_1.attack_type = "worm";
	sprite_index = spr_worm
	name = "Worm"
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

		push_amount = regular_push_amount;
		if (charge_att){
			push_amount = large_push_amount;
		}
		//knocked back by direction of the enemys attack ? 
		move_dir = obj_player2.move_dir
		
		obj_player1.stun = true;
		obj_player1.stun_timer = stun_duration
	}
	
if (push_amount >= 0) {
	var new_x = x;
	var new_y = y;
	var offset = 2;
	
	if (move_dir == 0) {
		new_x += offset; // move right
	} else if (move_dir == 45) {
		new_x += offset; // move up_right
		new_y -= offset;
	} else if (move_dir == 90) {
		new_y -= offset; // move up
	} else if (move_dir == 135) {
		new_x -= offset; // move up-left
		new_y -= offset;
	} else if (move_dir == 180) {
		new_x -= offset; // move left
	} else if (move_dir == 225) {
		new_x -= offset; // move down-left
		new_y += offset;
	} else if (move_dir == 270) {
		new_y += offset; // move down
	} else if (move_dir == 315) {
		new_x += offset; // move down-right
		new_y += offset;
	}
		
	// Check if the new position is within room bounds
	if (new_x >= left_bound && new_x <= right_bound && new_y >= upper_bound && new_y <= lower_bound) {
		x = new_x;
		y = new_y;
	}
	
	push_amount -= offset;
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