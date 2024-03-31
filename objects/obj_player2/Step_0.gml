// obj_player2 step

event_inherited();

// Check for player 2's movement
if (keyboard_check(ord("I"))) { move_up    = true; }
if (keyboard_check(ord("J"))) { move_left  = true; }
if (keyboard_check(ord("K"))) { move_down  = true; }
if (keyboard_check(ord("L"))) { move_right = true; }


// Check for player 2's combat move
if (!hit) {
	if (keyboard_check(ord("N"))) { slap  = true;  }
	if (keyboard_check(ord("M"))) { trip  = true;  }
	if (keyboard_check(188))      { push  = true;  } // comma  ,
	if (keyboard_check(ord("H"))) { charge = true; }
}

// Check for player 2's defense move
if (!defend) {
	if (keyboard_check(190))      { block = true; } // period .
}


/*
if (point_distance(x, y, obj_player1.x, obj_player1.y) <= 128 && 
		obj_hp_bar1.current_hp > 0 && !obj_player1.defend) {
	*/
	
//if player collides with an active hitbox - 
if (collision_circle(x,y,sprite_width/2, obj_hitbox_1,true,false) && obj_hitbox_1.activated
	&& obj_hp_bar2.current_hp > 0 && !obj_player2.defend){
		
		hit = true;
		hit_timer = hit_duration;
		
		obj_hp_bar2.current_hp -= obj_hitbox_1.damage
		
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
		var new_x = obj_player2.x;
		var new_y = obj_player2.y;
		
		//knocked back by direction of the enemys attack
		move_dir = obj_player1.move_dir
		
		
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
			obj_player2.x = new_x;
			obj_player2.y = new_y;
		}
		
		obj_player2.stun = true;
		obj_player2.stun_timer = stun_duration;
	}