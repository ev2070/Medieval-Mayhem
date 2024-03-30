// obj_player create

fallen = false;
can_move = true;
fall_timer = 0;
fall_timer_max = 60;
start_x = x
start_y = y
// speed
spd = 3.25;

// bounds
left_bound = sprite_width/2;
right_bound = room_width-sprite_width/2;
upper_bound = sprite_height/2;
lower_bound = room_height-sprite_height/2;

// for movement
move_up = false
move_down = false
move_left = false
move_right = false
move_dir = 0; //movement angle

// for combat
slap = false;
trip = false;
push = false; // rename to shove EDIT
block = false;

// for health and damage
hp = 100;
slap_damage = 10;
trip_damage = 20;
push_damage = 10;
// no block damage

// for slap, trip, push
hit = false;
hit_duration = 60*0.5;
hit_timer = hit_duration;

// for block
defend = false;
defend_duration = 60*0.5;
defend_timer = defend_duration;

// for player collision (aka pushing)
push_dir = 0;