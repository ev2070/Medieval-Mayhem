// obj_player2 step

event_inherited();

// Check for player 2's movement
if (keyboard_check(ord("I"))) { move_up    = true; }
if (keyboard_check(ord("J"))) { move_left  = true; }
if (keyboard_check(ord("K"))) { move_down  = true; }
if (keyboard_check(ord("L"))) { move_right = true; }

// Check for player 2's combat move
if (!hit) {
	if (keyboard_check(ord("N"))) { slap  = true; }
	if (keyboard_check(ord("M"))) { trip  = true; }
	if (keyboard_check(188))      { push  = true; } // comma  ,
}

// Check for player 2's defense move
if (!defend) {
	if (keyboard_check(190))      { block = true; } // period .
}

// A hit can be a slap, trip, or push
// Player 2 cannot hit if stunned
if ((slap || trip || push) && !hit && !stun) {
	// If Player 1 is nearby & defenseless
	// and you attack, you can reduce their HP,
	// knock them back, and stun them
	if (point_distance(x, y, obj_player1.x, obj_player1.y) <= 128 && 
		obj_hp_bar1.current_hp > 0 && !obj_player1.defend) {
		
		hit = true;
		hit_timer = hit_duration;
		
		if (slap) {
			obj_hp_bar1.current_hp -= slap_damage;
		} else if (trip) {
			obj_hp_bar1.current_hp -= trip_damage;
		} else if (push) {
			obj_hp_bar1.current_hp -= push_damage;
		}
		
		var push_amount = 20;
        var new_x = obj_player1.x;
        var new_y = obj_player1.y;
            
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
		obj_player1.stun_timer = stun_duration;
	}
}