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
if (!defend) {
	if (keyboard_check(190))      { block = true; } // period .
}

// A hit can be a slap, trip, or push
if ((slap || trip || push) && !hit) {
	hit = true;
	hit_timer = hit_duration;
	// If Player 1 is nearby and you attack, reduce their HP
	if (point_distance(x, y, obj_player1.x, obj_player1.y) <= 128 && 
		obj_hp_bar1.current_hp > 0) {
		if (slap) {
			obj_hp_bar1.current_hp -= slap_damage;
		} else if (trip) {
			obj_hp_bar1.current_hp -= trip_damage;
		} else if (push) {
			obj_hp_bar1.current_hp -= push_damage;
		}
	}
}