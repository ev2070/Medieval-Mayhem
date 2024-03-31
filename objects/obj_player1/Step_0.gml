// obj_player2 step

event_inherited();

// Check for player 1's movement
if (keyboard_check(ord("W"))) { move_up    = true; }
if (keyboard_check(ord("A"))) { move_left  = true; }
if (keyboard_check(ord("S"))) { move_down  = true; }
if (keyboard_check(ord("D"))) { move_right = true; }

// Check for player 1's combat move
if (!hit) {
	if (keyboard_check(vk_shift)) { slap = true; }
	if (keyboard_check(ord("Z"))) { trip  = true; }
	if (keyboard_check(ord("X"))) { push  = true; }
}
if (!defend) {
	if (keyboard_check(ord("C"))) { block = true; }
}

// A hit can be a slap, trip, or push
if ((slap || trip || push) && !hit) {
	// If Player 2 is nearby & defenseless
	// and you attack, you can reduce their HP
	if (point_distance(x, y, obj_player2.x, obj_player2.y) <= 128 &&
		obj_hp_bar2.current_hp > 0 && !obj_player2.defend) {
		hit = true;
		hit_timer = hit_duration;
		if (slap) {
			obj_hp_bar2.current_hp -= slap_damage;
		} else if (trip) {
			obj_hp_bar2.current_hp -= trip_damage;
		} else if (push) {
			obj_hp_bar2.current_hp -= push_damage;
		}
	}
	
	if keyboard_check_pressed(ord("G")){
		charge = 0;
	}
	if keyboard_check_direct(ord("G")){
		charge+=1;
	}
	if keyboard_check_released(ord("G")) and charge == 10 {
		//hit function
	}
}