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
charge = false;
charge_att = false;

// for health and damage
hp = 100;
slap_damage = 10;
trip_damage = 20;
push_damage = 10;
charge_damage = 25;
// no block damage

// for slap, trip, push
hit = false;
hit_duration = 30;
hit_timer = hit_duration;

// for block
defend = false;
defend_duration = 60*2;
defend_timer = defend_duration;

// for hit stun (post-hit player state)
// cannot hit, defend, or move if stunned
stun = false;
stun_duration = 60*2;
stun_timer = 0;

charge_timer = 60;

// for push amount (knocked back)
regular_push_amount = 20;
large_push_amount = 50;
push_amount = 0;