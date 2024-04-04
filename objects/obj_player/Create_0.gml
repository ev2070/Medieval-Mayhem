// obj_player create

fallen = false;
can_move = true;
fall_timer = 0;
fall_timer_max = 60;
start_x = x
start_y = y
image_speed = 1;

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

charge_duration = 60;
charge_timer = charge_duration;

// for push amount (knocked back)
regular_push_amount = 20;
large_push_amount = 50;
push_amount = 0;

// for charge bar
charge_width_target = charge_timer;
charge_width_curr = 0;
charge_bar_color = c_red;  // becomes green when charging
charge_slide_spd = (charge_width_curr*1.5)/60;


//save player's sprite to call later
spr_up = 0
spr_down = 0
spr_right = 0
spr_up_right = 0
spr_down_right = 0
spr_up_atk = 0
spr_down_atk = 0
spr_up_right_atk = 0
spr_down_right_atk = 0
spr_right_atk = 0
spr_idle = 0
attacking = false





