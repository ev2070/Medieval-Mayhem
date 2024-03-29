// obj_player step

// Player must stay within bounds
x = clamp(x, left_bound, right_bound);
y = clamp(y, upper_bound, lower_bound);

// Move player
	 if (move_up)    { y-=spd; }
else if (move_down)  { y+=spd; } 
	 if (move_left)  { x-=spd; }
else if (move_right) { x+=spd; }

// A defense can be a block
if (block && !block) {
	defend = true;
	defend_timer = defend_duration;
}

// A hit lasts 1.5 seconds
if (hit) {
	hit_timer--;
	if (hit_timer <= 0) {
		hit = false;
		hit_timer = hit_duration;
	}
}

// A defense lasts 1.5 seconds
if (defend) {
	defend_timer--;
	if (defend_timer <= 0) {
		defend = false;
		defend_timer = defend_duration;
	}
}

// Reset movement booleans
move_up = false
move_down = false
move_left = false
move_right = false

// Reset combat booleans
slap = false;
trip = false;
push = false;
block = false;